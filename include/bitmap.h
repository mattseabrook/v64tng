// bitmap.h

#ifndef BITMAP_H
#define BITMAP_H

#include <vector>
#include <tuple>
#include <cstdint>
#include <string_view>
#include <span>

/*
===============================================================================

    7th Guest - Bitmap

    This header file also contains an RGBColor structure that is used to
    represent an 8-bit RGB color. As well as the readLittleEndian16 function
    that reads a 16-bit little-endian value from a byte array, used by both
    the getBitmapData and getDeltaBitmapData functions in delta.cpp

===============================================================================
*/

//
// RGBColor
//
struct RGBColor
{
    uint8_t r, g, b;

    bool operator==(const RGBColor &other) const noexcept
    {
        return r == other.r && g == other.g && b == other.b;
    }
};

//
// readLittleEndian16
//
constexpr uint16_t readLittleEndian16(std::span<const uint8_t> data)
{
    return data[0] | (data[1] << 8);
}

//=============================================================================

// Function prototypes
std::pair<std::span<RGBColor>, std::span<uint8_t>> getBitmapData(std::span<const uint8_t> chunkData);
std::vector<uint8_t> packBitmapData(std::span<const uint8_t> rawImageData, std::span<const RGBColor> palette, int width, int height);

#endif // BITMAP_H