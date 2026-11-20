// bitmap.h

#ifndef BITMAP_H
#define BITMAP_H

#include <cstdint>
#include <span>

struct RGBColor
{
    uint8_t r, g, b;

    bool operator==(const RGBColor &other) const noexcept
    {
        return r == other.r && g == other.g && b == other.b;
    }
};

constexpr uint16_t readLittleEndian16(std::span<const uint8_t> data)
{
    return data[0] | (data[1] << 8);
}

void materializeIndexedFrame(std::span<const uint8_t> indices,
                             std::span<const RGBColor> palette,
                             std::span<uint8_t> frame);

bool readStillPalette(std::span<const uint8_t> data, std::span<RGBColor> palette,
                      std::span<const uint8_t> preservedEntries = {});

// RGB output may be empty when the caller supplies an index buffer.
bool getBitmapDataChecked(
    std::span<const uint8_t> chunkData,
    std::span<RGBColor> palette,
    std::span<uint8_t> outputFrame,
    std::span<uint8_t> outputIndices = {},
    std::span<const uint8_t> preservedPaletteEntries = {});

#endif // BITMAP_H
