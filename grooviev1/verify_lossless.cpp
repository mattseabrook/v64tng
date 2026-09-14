// Targeted cross-check: grooviev1 output versus v64tng's separate tile decoders
// and production PNG writer. Does not launch the game or run visual tests.
#define main groovieEncoderMain
#define lzssCompress encoderLzssCompress
#include "main.cpp"
#undef main
#undef lzssCompress
#include "../include/bitmap.h"
#include "../include/delta.h"
#include "../include/extract.h"
#include "../include/lzss.h"

static void checkFinalRowAdvance()
{
    std::vector<uint8_t> indices(640 * 4, 0);
    std::vector<RGB> palette(256);
    EncodeStats stats;
    auto ops = encodeDeltaImageOps(indices, indices, 640, 4, stats);
    std::vector<uint8_t> payload{0, 0};
    payload.insert(payload.end(), ops.begin(), ops.end());
    applyDelta0x25(payload, palette, indices, 640, 4, true);
    payload.pop_back();
    bool rejected = false;
    try { applyDelta0x25(payload, palette, indices, 640, 4, true); }
    catch (const std::runtime_error &) { rejected = true; }
    if (!rejected) throw std::runtime_error("Missing final row advance was accepted");
}

int main(int argc, char **argv)
{
    try {
        checkFinalRowAdvance();
        if (argc != 4) throw std::runtime_error("Usage: verify_lossless INPUT.vdx EXPECTED_RAW_DIR PNG_OUT_DIR");
        const auto bytes = readBinaryFile(argv[1]);
        const fs::path expected = argv[2], output = argv[3];
        if (fs::exists(output)) throw std::runtime_error("Output directory exists");
        fs::create_directories(output);
        std::array<RGBColor, 256> palette{};
        std::vector<uint8_t> rgb, indices;
        int width = 0, height = 0;
        size_t frame = 0;
        for (size_t pos = 8; pos < bytes.size();) {
            if (bytes.size() - pos < 8) throw std::runtime_error("Truncated chunk");
            const auto type = bytes[pos], coding = bytes[pos + 1];
            const size_t size = readLE32At(bytes, pos + 2);
            const auto mask = bytes[pos + 6], bits = bytes[pos + 7];
            if (size > bytes.size() - pos - 8) throw std::runtime_error("Truncated payload");
            std::vector<uint8_t> data(bytes.begin() + pos + 8, bytes.begin() + pos + 8 + size);
            pos += 8 + size;
            if (type != 0x20 && type != 0x25 && type != 0x00) continue;
            if (coding == 0x77) {
                auto unpacked = lzssDecompressChecked(data, mask, bits);
                if (!unpacked) throw std::runtime_error(unpacked.error());
                data = std::move(*unpacked);
            }
            if (type == 0x20) {
                width = readLE16(data.data()) * 4; height = readLE16(data.data() + 2) * 4;
                indices.resize(size_t(width) * height); rgb.resize(indices.size() * 3);
                if (!getBitmapDataChecked(data, palette, rgb, indices)) throw std::runtime_error("Core still rejected");
            } else if (type == 0x25) {
                if (!getDeltaBitmapDataChecked(data, palette, rgb, width, indices)) throw std::runtime_error("Core delta rejected");
            }
            // Same final palette materialization as parseVDXChunks.
            for (size_t p = 0; p < indices.size(); ++p) {
                const auto c = palette[indices[p]];
                rgb[p*3] = c.r; rgb[p*3+1] = c.g; rgb[p*3+2] = c.b;
            }
            const auto name = indexedName(frame++);
            std::vector<uint8_t> pal;
            for (auto c : palette) { pal.push_back(c.r); pal.push_back(c.g); pal.push_back(c.b); }
            if (indices != readBinaryFile((expected / (name + ".idx")).string()) ||
                pal != readBinaryFile((expected / (name + ".pal")).string()) ||
                rgb != readBinaryFile((expected / (name + ".rgb")).string()))
                throw std::runtime_error("Independent core mismatch at " + name);
            savePNG((output / (name + ".png")).string(), indices, width, height, false, palette);
            savePNG((output / (name + "_rgb.png")).string(), rgb, width, height);
            std::vector<uint8_t> rgba(indices.size() * 4);
            for (size_t p = 0; p < indices.size(); ++p) {
                std::copy_n(rgb.data() + p*3, 3, rgba.data() + p*4);
                rgba[p*4+3] = p % 2 ? 255 : 0;
            }
            savePNG((output / (name + "_rgba.png")).string(), rgba, width, height, true);
        }
        std::ifstream meta(expected / "sequence.txt");
        size_t w, h, fps, count;
        if (!(meta >> w >> h >> fps >> count) || count != frame) throw std::runtime_error("Frame count mismatch");
        std::cout << "PASS: independent v64tng decoder matched " << frame << " raw frames and palettes; production PNG exports written\n";
        return 0;
    } catch (const std::exception &e) {
        std::cerr << e.what() << '\n'; return 1;
    }
}
