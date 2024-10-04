// bitmap.h

#ifndef BITMAP_H
#define BITMAP_H

#include <vector>
#include <tuple>
#include <cstdint>
#include <string>

/*
===============================================================================

    7th Guest - Bitmap

    This header file contains x

===============================================================================
*/

struct RGBColor
{
    uint8_t r, g, b;

    bool operator==(const RGBColor& other) const {
        return r == other.r && g == other.g && b == other.b;
    }
};

template <typename T>
T readLittleEndian(const uint8_t* data)
{
    T result = 0;
    for (size_t i = 0; i < sizeof(T); ++i)
    {
        result |= static_cast<T>(data[i]) << (i * 8);
    }
    return result;
}

void savePNG(const std::string& filename, const std::vector<uint8_t>& imageData, int width, int height);
std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> getBitmapData(const std::vector<uint8_t>& chunkData);
std::vector<uint8_t> packBitmapData(const std::vector<uint8_t>& rawImageData, const std::vector<RGBColor>& palette, int width, int height);

#endif // BITMAP_H