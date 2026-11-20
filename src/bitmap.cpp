// bitmap.cpp

#include "bitmap.h"

bool readStillPalette(std::span<const uint8_t> data, std::span<RGBColor> palette,
                      std::span<const uint8_t> preservedEntries)
{
    if (data.size() < 6 || palette.size() < 256)
        return false;
    const auto depth = readLittleEndian16(data.subspan(4));
    if (depth > 8 || (!preservedEntries.empty() && preservedEntries.size() < 256))
        return false;
    const size_t count = size_t{1} << depth;
    if (data.size() < 6 + count * 3)
        return false;
    for (size_t i = 0; i < count; ++i)
        if (preservedEntries.empty() || !preservedEntries[i])
            palette[i] = {data[6 + i * 3], data[7 + i * 3], data[8 + i * 3]};
    return true;
}

bool getBitmapDataChecked(
    std::span<const uint8_t> chunkData,
    std::span<RGBColor> palette,
    std::span<uint8_t> outputFrame,
    std::span<uint8_t> outputIndices,
    std::span<const uint8_t> preservedPaletteEntries)
{
    if (chunkData.size() < 6)
        return false;
    const auto numXTiles = readLittleEndian16(chunkData);
    const auto numYTiles = readLittleEndian16(chunkData.subspan(2));
    const auto colourDepth = readLittleEndian16(chunkData.subspan(4));
    const size_t width = numXTiles * 4u;
    const size_t tiles = size_t(numXTiles) * numYTiles;
    const size_t pixels = tiles * 16;
    if (((!outputFrame.empty() || outputIndices.empty()) && outputFrame.size() != pixels * 3) ||
        (!outputIndices.empty() && outputIndices.size() != pixels) ||
        !readStillPalette(chunkData, palette, preservedPaletteEntries))
        return false;
    const auto imageData = chunkData.subspan(6 + (size_t{1} << colourDepth) * 3);
    if (tiles > imageData.size() / 4)
        return false;
    size_t imgOffset = 0;

    for (int tileY = 0; tileY < numYTiles; ++tileY)
    {
        for (int tileX = 0; tileX < numXTiles; ++tileX)
        {
            const uint8_t colour1 = imageData[imgOffset++];
            const uint8_t colour0 = imageData[imgOffset++];
            const uint16_t colourMap = readLittleEndian16(imageData.subspan(imgOffset, 2));
            imgOffset += 2;

            for (int i = 0; i < 16; ++i)
            {
                const int x = tileX * 4 + (i % 4);
                const int y = tileY * 4 + (i / 4);
                const size_t pixel = size_t(y) * width + x;
                const uint8_t index = (colourMap & (0x8000u >> i)) ? colour1 : colour0;
                if (!outputIndices.empty())
                    outputIndices[pixel] = index;
                if (!outputFrame.empty())
                {
                    const auto &color = palette[index];
                    outputFrame[pixel * 3] = color.r;
                    outputFrame[pixel * 3 + 1] = color.g;
                    outputFrame[pixel * 3 + 2] = color.b;
                }
            }
        }
    }
    return true;
}

void materializeIndexedFrame(
    std::span<const uint8_t> indices,
    std::span<const RGBColor> palette,
    std::span<uint8_t> frame)
{
    if (palette.size() < 256 || frame.size() != indices.size() * 3)
        return;
    for (size_t pixel = 0; pixel < indices.size(); ++pixel)
    {
        const RGBColor colour = palette[indices[pixel]];
        frame[pixel * 3] = colour.r;
        frame[pixel * 3 + 1] = colour.g;
        frame[pixel * 3 + 2] = colour.b;
    }
}
