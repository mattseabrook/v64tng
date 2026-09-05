// c++ -std=c++23 -Iinclude research/debug/test_vdx_alpha.cpp src/delta.cpp src/lzss.cpp -o /tmp/test_vdx_alpha
#include "vdx_alpha.h"
#include <cassert>
#include <cstdio>

int main()
{
    VDXFile video{};
    video.width = 8; video.height = 4;
    // Identical RGB everywhere: a frame comparison cannot identify the writes.
    video.frameData.push_back(std::make_shared<std::vector<uint8_t>>(8 * 4 * 3, 42));
    video.framePalettes.emplace_back();
    for (auto &color : video.framePalettes[0]) color = {42,42,42};
    const std::vector<std::vector<uint8_t>> payloads = {
        {0,0,0x63,0x6c,1}, // skip left tile, solid right tile
        {0,0,0x63,0,1,2}, // map-table two-color tile
        {0,0,0x63,0x80,0,1,2}, // explicit two-color map
        {0,0,0x63,0x76,1}, // run of solid tiles
        {0,0,0x63,0x60,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}, // literal
    };
    for (const auto &payload : payloads) {
        VDXChunk chunk{};
        chunk.chunkType = 0x25; chunk.data = payload;
        auto rgba = vdxFrameRGBA(video, 0, chunk, true, 0);
        for (size_t p = 0; p < 32; ++p) {
            const bool written = p % 8 >= 4;
            assert(rgba[p*4+3] == (written ? 255 : 0));
            assert(rgba[p*4] == (written ? 42 : 0));
        }
        // Same alpha result through the compressed path.
        const auto packed = lzssCompress(payload, 15, 4);
        chunk.coding = 0x77; chunk.lengthMask = 15; chunk.lengthBits = 4; chunk.data = packed;
        assert(vdxFrameRGBA(video, 0, chunk, true, 0) == rgba);
        chunk.coding = 0; chunk.data = payload;
        for (int background = 1; background <= 3; ++background) {
            auto chroma = vdxFrameRGBA(video, 0, chunk, true, background);
            assert(chroma[0] == (background == 1 ? 255 : 0));
            assert(chroma[1] == (background == 3 ? 255 : 0));
            assert(chroma[2] == (background != 3 ? 255 : 0));
            for (size_t p = 0; p < 32; ++p) assert(chroma[p*4+3] == 255);
        }
        auto normal = vdxFrameRGBA(video, 0, chunk, false, 0);
        for (size_t p = 0; p < 32; ++p) assert(normal[p*4] == 42 && normal[p*4+3] == 255);
    }
    VDXChunk chunk{};
    chunk.chunkType = 0x00;
    auto duplicate = vdxFrameRGBA(video, 0, chunk, true, 0);
    for (auto byte : duplicate) assert(byte == 0);
    chunk.chunkType = 0x20;
    auto still = vdxFrameRGBA(video, 0, chunk, true, 0);
    for (size_t p = 0; p < 32; ++p) assert(still[p*4] == 42 && still[p*4+3] == 255);
    // Palette-only delta has no foreground writes.
    std::vector<uint8_t> paletteOnly(37);
    paletteOnly[0] = 35; paletteOnly[3] = 128;
    paletteOnly[34] = 63;
    chunk.chunkType = 0x25; chunk.data = paletteOnly;
    assert(vdxFrameRGBA(video, 0, chunk, true, 0) == duplicate);
    // A fresh frame must never inherit the previous frame's mask.
    std::vector<uint8_t> rgb(96), mask(32, 255);
    std::array<RGBColor, 256> palette{};
    const std::vector<uint8_t> skipped{0,0,0x61};
    assert(getDeltaBitmapDataChecked(skipped, palette, rgb, 8, {}, {}, mask));
    for (auto byte : mask) assert(byte == 0);
    const std::vector<uint8_t> invalid{0,0,0x60,1};
    assert(!getDeltaBitmapDataChecked(invalid, palette, rgb, 8, {}, {}, mask));
    std::puts("PASS: delta write masks, same-color writes, compression, all backgrounds, stills, duplicates, palette-only frames, and invalid data");
}
