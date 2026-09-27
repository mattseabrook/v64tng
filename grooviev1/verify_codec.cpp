// Independent codec checks against v64tng's production implementations.
// Build with src/bitmap.cpp src/delta.cpp src/lzss.cpp, -Iinclude -std=c++23.
#define main groovieEncoderMain
#define lzssCompress encoderLzssCompress
#include "main.cpp"
#undef main
#undef lzssCompress
#include "../include/bitmap.h"
#include "../include/delta.h"
#include "../include/lzss.h"
#include <chrono>
#include <random>

// Historical exhaustive match search, retained only as an optimization oracle.
static std::vector<uint8_t> exhaustive(const std::vector<uint8_t> &data, uint8_t mask, uint8_t bits)
{
    std::vector<uint8_t> out;
    size_t pos = 0;
    bool done = false;
    while (!done) {
        const size_t flag = out.size();
        out.push_back(0);
        for (int bit = 0; bit < 8; ++bit) {
            if (pos == data.size()) {
                out.insert(out.end(), {0, 0}); done = true; break;
            }
            size_t best = 0, distance = 0;
            for (size_t d = 1; d <= std::min(pos, size_t(0xFFFF >> bits)); ++d) {
                size_t length = 0;
                while (length < size_t(mask) + 3 && pos + length < data.size() &&
                       data[pos + length - d] == data[pos + length]) ++length;
                if (length > best) { best = length; distance = d; }
                if (best == size_t(mask) + 3) break;
            }
            if (best >= 3) {
                writeLE16(out, uint16_t((distance << bits) | (best - 3)));
                pos += best;
            } else {
                out[flag] |= 1 << bit;
                out.push_back(data[pos++]);
            }
        }
    }
    return out;
}

static void require(bool value, const std::string &message)
{
    if (!value) throw std::runtime_error(message);
}

static size_t compressionChecks()
{
    std::mt19937 rng(0x7C0DEC);
    size_t cases = 0;
    for (uint8_t bits = 1; bits <= 8; ++bits) {
        const auto mask = uint8_t((1u << bits) - 1);
        for (size_t length : {0, 1, 7, 8, 9, 63, 128, 774, 4096}) {
            for (int style = 0; style < 3; ++style) {
                std::vector<uint8_t> data(length);
                for (size_t i = 0; i < length; ++i)
                    data[i] = style == 0 ? uint8_t(rng()) : style == 1 ? 0 : uint8_t(i % 17);
                const auto encoded = encoderLzssCompress(data, mask, bits);
                require(encoded == exhaustive(data, mask, bits), "Compression token selection changed");
                auto core = lzssDecompressChecked(encoded, mask, bits);
                require(bool(core) && *core == data, "Production LZSS decoder mismatch");
                require(lzssDecompressForValidation(encoded, mask, bits) == data, "Toolkit LZSS decoder mismatch");
                ++cases;
            }
        }
    }
    const std::vector<uint8_t> zeroHistory{0, 0x20, 0, 0, 0};
    auto core = lzssDecompressChecked(zeroHistory, 31, 5);
    require(bool(core) && *core == std::vector<uint8_t>(3), "Production zero-history reference mismatch");
    require(lzssDecompressForValidation(zeroHistory, 31, 5) == *core, "Toolkit zero-history reference mismatch");

    std::vector<uint8_t> noise(131072);
    for (auto &value : noise) value = uint8_t(rng());
    const auto start = std::chrono::steady_clock::now();
    const auto old = exhaustive(noise, 31, 5);
    const auto middle = std::chrono::steady_clock::now();
    const auto fast = encoderLzssCompress(noise, 31, 5);
    const auto end = std::chrono::steady_clock::now();
    require(old == fast, "Compression benchmark token mismatch");
    std::cout << "LZSS high-entropy 128 KiB benchmark, identical tokens: exhaustive "
              << std::chrono::duration<double, std::milli>(middle - start).count()
              << " ms, indexed " << std::chrono::duration<double, std::milli>(end - middle).count() << " ms\n";
    return cases + 1;
}

static std::pair<size_t, size_t> checkBytes(const std::vector<uint8_t> &bytes)
{
    require(bytes.size() >= 8 && readLE16(bytes.data()) == 0x9267, "Invalid VDX header");
    std::vector<RGB> palette;
    std::vector<uint8_t> indices;
    std::array<RGBColor, 256> corePalette{};
    std::vector<uint8_t> coreIndices, rgb;
    int width = 0, height = 0;
    size_t chunks = 0, frames = 0;
    for (size_t pos = 8; pos < bytes.size();) {
        require(bytes.size() - pos >= 8, "Truncated chunk header");
        const auto type = bytes[pos], coding = bytes[pos + 1];
        const auto mask = bytes[pos + 6], bits = bytes[pos + 7];
        const size_t size = readLE32At(bytes, pos + 2);
        require(size <= bytes.size() - pos - 8, "Truncated payload");
        std::vector<uint8_t> data(bytes.begin() + pos + 8, bytes.begin() + pos + 8 + size);
        pos += size + 8;
        ++chunks;
        if (coding == 0x77) {
            auto core = lzssDecompressChecked(data, mask, bits);
            require(bool(core), "Production decompression rejected payload");
            const auto ours = lzssDecompressForValidation(data, mask, bits);
            require(ours == *core, "Decoded chunk bytes differ");
            data = ours;
        }
        if (type == 0x20) {
            require(data.size() >= 774, "Truncated still");
            width = readLE16(data.data()) * 4; height = readLE16(data.data() + 2) * 4;
            require(isValidGroovieGeometry(width, height), "Unsupported geometry");
            decodeStill0x20(data, palette, indices, width, height);
            coreIndices.resize(indices.size()); rgb.resize(indices.size() * 3);
            require(getBitmapDataChecked(data, corePalette, rgb, coreIndices), "Production still rejected");
        } else if (type == 0x25) {
            require(!indices.empty(), "Delta before still");
            applyDelta0x25(data, palette, indices, width, height);
            require(getDeltaBitmapDataChecked(data, corePalette, rgb, width, coreIndices), "Production delta rejected");
        } else if (type != 0x00) continue;
        require(!indices.empty(), "Duplicate before still");
        require(indices == coreIndices, "Pixel indexes differ");
        for (size_t i = 0; i < 256; ++i)
            require(palette[i].r == corePalette[i].r && palette[i].g == corePalette[i].g &&
                    palette[i].b == corePalette[i].b, "Palette differs");
        ++frames;
    }
    return {chunks, frames};
}

int main(int argc, char **argv)
{
    try {
        std::cout << "Compression: " << compressionChecks() << " parameter/pattern cases passed\n";
        size_t chunks = 0, frames = 0, files = 0;
        for (int i = 1; i < argc; ++i) {
            const fs::path path(argv[i]);
            if (path.extension() == ".RL") {
                for (const auto &[name, bytes] : parseRlGjd(path.string(), defaultGjdPathFromRl(path.string()))) {
                    auto extension = fs::path(name).extension().string();
                    std::transform(extension.begin(), extension.end(), extension.begin(),
                                   [](unsigned char c) { return char(std::tolower(c)); });
                    if (extension != ".vdx") continue;
                    try {
                        const auto result = checkBytes(bytes);
                        chunks += result.first; frames += result.second; ++files;
                    } catch (const std::exception &error) {
                        throw std::runtime_error(path.string() + "/" + name + ": " + error.what());
                    }
                }
                std::cout << "Checked " << path.filename().string() << ", cumulative " << files << " VDXs\n" << std::flush;
            } else {
                const auto result = checkBytes(readBinaryFile(path.string()));
                chunks += result.first; frames += result.second; ++files;
            }
        }
        std::cout << "Independent production decoders: " << files << " VDX files, "
                  << chunks << " chunks, " << frames << " visual frames matched\n";
        return 0;
    } catch (const std::exception &error) {
        std::cerr << "FAIL: " << error.what() << '\n'; return 1;
    }
}
