#pragma once

#include <algorithm>
#include "delta.h"
#include "lzss.h"
#include <stdexcept>

// Background 0 is RGBA transparency; 1..3 are opaque chroma colors.
// A still writes every pixel. A duplicate writes none. Palette-only changes
// do not turn inherited background pixels into foreground pixels.
inline std::vector<uint8_t> vdxFrameRGBA(const VDXFile &vdx, size_t frame,
    const VDXChunk &chunk, bool alphaMode, int background)
{
    const auto &rgb = *vdx.frameData.at(frame);
    std::vector<uint8_t> mask(rgb.size() / 3, 255);
    if (alphaMode && chunk.chunkType != 0x20) {
        std::fill(mask.begin(), mask.end(), 0);
        if (chunk.chunkType == 0x25) {
            std::vector<uint8_t> unpacked;
            auto payload = chunk.data;
            if (vdxChunkIsCompressed(chunk)) {
                auto result = lzssDecompressChecked(payload, chunk.lengthMask, chunk.lengthBits);
                if (!result) throw std::runtime_error(result.error());
                unpacked = std::move(*result);
                payload = unpacked;
            }
            auto scratch = rgb;
            auto palette = vdx.framePalettes.at(frame);
            if (!getDeltaBitmapDataChecked(payload, palette, scratch, vdx.width, {}, {}, mask))
                throw std::runtime_error("Invalid delta while extracting alpha");
        }
    }
    constexpr uint8_t colors[4][3] = {{0,0,0}, {255,0,255}, {0,0,255}, {0,255,0}};
    background = std::clamp(background, 0, 3);
    std::vector<uint8_t> rgba(mask.size() * 4);
    for (size_t p = 0; p < mask.size(); ++p) {
        for (size_t c = 0; c < 3; ++c)
            rgba[p * 4 + c] = mask[p] ? rgb[p * 3 + c] : colors[background][c];
        rgba[p * 4 + 3] = mask[p] || background != 0 ? 255 : 0;
    }
    return rgba;
}
