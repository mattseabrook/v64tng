// Included after the codec implementations: these commands preserve indices
// and every palette entry, bypassing RGB quantization completely.
static std::string indexedName(size_t frame)
{
    auto name = std::to_string(frame);
    return std::string(name.size() < 5 ? 5 - name.size() : 0, '0') + name;
}

static std::vector<uint8_t> paletteBytes(const std::vector<RGB> &palette)
{
    std::vector<uint8_t> bytes;
    for (const auto &c : palette) {
        bytes.push_back(c.r); bytes.push_back(c.g); bytes.push_back(c.b);
    }
    return bytes;
}

static void extractIndexed(const std::string &input, const std::string &directory)
{
    const auto bytes = readBinaryFile(input);
    if (bytes.size() < 8 || readLE16(bytes.data()) != 0x9267)
        throw std::runtime_error("Invalid VDX header");
    if (fs::exists(directory)) throw std::runtime_error("Extraction directory already exists");
    fs::create_directories(directory);
    int width = 0, height = 0;
    size_t count = 0;
    std::vector<uint8_t> frame;
    std::vector<RGB> palette;
    std::vector<uint8_t> audio;
    std::ostringstream audioMap;
    for (size_t pos = 8; pos < bytes.size();) {
        if (bytes.size() - pos < 8) throw std::runtime_error("Truncated chunk header");
        const uint8_t type = bytes[pos], coding = bytes[pos + 1];
        const size_t size = readLE32At(bytes, pos + 2);
        const uint8_t mask = bytes[pos + 6], bits = bytes[pos + 7];
        if (size > bytes.size() - pos - 8) throw std::runtime_error("Truncated chunk payload");
        std::vector<uint8_t> payload(bytes.begin() + pos + 8, bytes.begin() + pos + 8 + size);
        pos += 8 + size;
        if (type != 0x20 && type != 0x25 && type != 0x00 && type != 0x80) continue;
        if (coding == 0x77) {
            if (!bits || bits > 8 || mask != (1u << bits) - 1)
                throw std::runtime_error("Unsupported LZSS parameters");
            payload = lzssDecompressForValidation(payload, mask, bits);
        } // The original stream decoder treats every other coding byte as raw.
        if (type == 0x80) {
            audioMap << count << ' ' << audio.size() << ' ' << payload.size() << '\n';
            audio.insert(audio.end(), payload.begin(), payload.end());
            continue;
        }
        if (type == 0x20) {
            if (payload.size() < 6) throw std::runtime_error("Truncated still");
            const int w = readLE16(payload.data()) * 4, h = readLE16(payload.data() + 2) * 4;
            if (!isValidGroovieGeometry(w, h) || (width && (w != width || h != height)))
                throw std::runtime_error("Invalid or changing geometry");
            width = w; height = h;
            decodeStill0x20(payload, palette, frame, width, height);
        } else {
            if (frame.empty()) throw std::runtime_error("Delta/duplicate before still");
            if (type == 0x25) applyDelta0x25(payload, palette, frame, width, height);
        }
        const auto base = fs::path(directory) / indexedName(count++);
        writeBinaryFile(base.string() + ".idx", frame);
        writeBinaryFile(base.string() + ".pal", paletteBytes(palette));
    }
    if (!count) throw std::runtime_error("No frames");
    std::ofstream meta(fs::path(directory) / "sequence.txt");
    meta.exceptions(std::ios::badbit | std::ios::failbit);
    meta << width << ' ' << height << ' ' << readLE16(bytes.data() + 6) << ' ' << count << '\n';
    if (!audioMap.str().empty()) {
        writeBinaryFile((fs::path(directory) / "audio.pcm").string(), audio);
        std::ofstream map(fs::path(directory) / "audio.txt");
        map.exceptions(std::ios::badbit | std::ios::failbit);
        map << audioMap.str();
    }
    std::cout << "Extracted " << count << " indexed frames, " << width << 'x' << height << "\n";
}

static void encodeIndexed(const std::string &directory, const std::string &output)
{
    if (fs::exists(output)) throw std::runtime_error("Output already exists");
    int width = 0, height = 0, fps = 0;
    size_t count = 0;
    std::ifstream meta(fs::path(directory) / "sequence.txt");
    if (!(meta >> width >> height >> fps >> count) || !isValidGroovieGeometry(width, height) ||
        fps < 1 || fps > 65535 || !count || count > 1000000)
        throw std::runtime_error("Invalid indexed sequence metadata");
    std::vector<uint8_t> previous, previousPalette;
    std::vector<uint8_t> decoded;
    std::vector<RGB> decodedPalette;
    std::vector<Block> blocks;
    EncodeStats stats;
    std::vector<Block> audioBlocks;
    std::vector<size_t> audioPositions;
    const auto audioPath = fs::path(directory) / "audio.pcm";
    const auto audioMapPath = fs::path(directory) / "audio.txt";
    if (fs::exists(audioPath) != fs::exists(audioMapPath))
        throw std::runtime_error("Indexed audio requires both audio.pcm and audio.txt");
    if (fs::exists(audioPath)) {
        const auto audio = readBinaryFile(audioPath.string());
        std::ifstream map(audioMapPath);
        size_t position, offset, size, consumed = 0;
        while (map >> position) {
            if (!(map >> offset >> size) || position > count || offset != consumed ||
                offset > audio.size() || size > audio.size() - offset ||
                (!audioPositions.empty() && position < audioPositions.back()))
                throw std::runtime_error("Invalid indexed audio chunk map");
            audioPositions.push_back(position);
            audioBlocks.push_back({0x80, std::vector<uint8_t>(audio.begin() + offset, audio.begin() + offset + size)});
            consumed += size;
        }
        if (!map.eof() || consumed != audio.size())
            throw std::runtime_error("Incomplete indexed audio chunk map");
    }
    for (size_t i = 0; i < count; ++i) {
        const auto base = fs::path(directory) / indexedName(i);
        const auto frame = readBinaryFile(base.string() + ".idx");
        const auto pal = readBinaryFile(base.string() + ".pal");
        if (frame.size() != size_t(width) * height || pal.size() != 768)
            throw std::runtime_error("Invalid indexed frame or palette: " + base.string());
        Block block;
        if (!i) {
            std::vector<RGB> palette;
            for (size_t p = 0; p < pal.size(); p += 3) palette.push_back({pal[p], pal[p+1], pal[p+2]});
            block = {0x20, encodeStill0x20(frame, palette, width, height)};
            decodeStill0x20(block.data, decodedPalette, decoded, width, height);
        } else if (frame == previous && pal == previousPalette) {
            block = {0x00, {}};
        } else {
            std::vector<uint8_t> map(32), colors, section;
            for (int group = 0; group < 16; ++group) {
                uint16_t bits = 0;
                for (int bit = 0; bit < 16; ++bit) {
                    const size_t offset = size_t(group * 16 + bit) * 3;
                    if (!std::equal(pal.begin() + offset, pal.begin() + offset + 3, previousPalette.begin() + offset)) {
                        bits |= 0x8000u >> bit;
                        colors.insert(colors.end(), pal.begin() + offset, pal.begin() + offset + 3);
                    }
                }
                map[group * 2] = uint8_t(bits); map[group * 2 + 1] = uint8_t(bits >> 8);
            }
            writeLE16(section, colors.empty() ? 0 : uint16_t(32 + colors.size()));
            if (!colors.empty()) {
                section.insert(section.end(), map.begin(), map.end());
                section.insert(section.end(), colors.begin(), colors.end());
            }
            block = {0x25, encodeDelta0x25WithLocalPalette(previous, frame, width, height, section, stats)};
            applyDelta0x25(block.data, decodedPalette, decoded, width, height, true);
        }
        // Hard failure instead of silently approximating a >2-colour still tile.
        if (decoded != frame || paletteBytes(decodedPalette) != pal)
            throw std::runtime_error("Lossless validation failed at frame " + std::to_string(i) +
                "; first-frame tiles must contain at most two palette indices");
        blocks.push_back(std::move(block));
        previous = frame; previousPalette = pal;
    }
    std::vector<Block> interleaved;
    interleaved.reserve(blocks.size() + audioBlocks.size());
    size_t audioIndex = 0;
    for (size_t i = 0; i <= blocks.size(); ++i) {
        while (audioIndex < audioBlocks.size() && audioPositions[audioIndex] == i)
            interleaved.push_back(std::move(audioBlocks[audioIndex++]));
        if (i < blocks.size()) interleaved.push_back(std::move(blocks[i]));
    }
    writeVDX(output, fps, interleaved, true, 31, 5);
    std::cout << "Encoded and validated " << count << " frames and complete palettes\n";
    std::cout << "Preserved " << audioBlocks.size() << " PCM chunks at original visual boundaries\n";
}
