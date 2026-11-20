#include "delta.h"

#include <algorithm>

namespace {

template<class WritePixel>
bool decodeDelta(std::span<const uint8_t> data, std::span<RGBColor> palette,
                 size_t width, size_t height, bool strict, bool requireFinalRow,
                 WritePixel writePixel)
{
    if (data.size() < 2 || palette.size() < 256)
        return false;

    const size_t paletteSize = readLittleEndian16(data);
    if (paletteSize > data.size() - 2)
        return false;
    if (paletteSize)
    {
        constexpr size_t mapSize = 32;
        if (paletteSize < mapSize)
            return false;
        size_t color = 2 + mapSize;
        const size_t end = 2 + paletteSize;
        for (size_t group = 0; group < 16; ++group)
        {
            const auto mask = readLittleEndian16(data.subspan(2 + group * 2));
            for (size_t bit = 0; bit < 16; ++bit)
            {
                if (!(mask & (0x8000u >> bit)))
                    continue;
                if (end - color < 3)
                    return false;
                palette[group * 16 + bit] = {data[color], data[color + 1], data[color + 2]};
                color += 3;
            }
        }
        if (strict && color != end)
            return false;
    }

    data = data.subspan(2 + paletteSize);
    size_t x = 0, y = 0;
    const auto writeTile = [&](auto indexAt) {
        if (strict && (x >= width || y >= height))
            return false;
        // The runtime follows the native linear destination cursor.
        // The indexed tool also rejects tiles that cross the declared geometry.
        for (size_t i = 0; i < 16; ++i)
        {
            const size_t row = y + i / 4;
            if (row >= height)
                break;
            const size_t column = x + i % 4;
            if (column < (height - row) * width)
                writePixel(row * width + column, indexAt(i));
        }
        x += 4;
        return true;
    };
    const auto writeMap = [&](uint16_t map, uint8_t one, uint8_t zero) {
        return writeTile([&](size_t i) { return (map & (0x8000u >> i)) ? one : zero; });
    };

    while (!data.empty())
    {
        const uint8_t opcode = data.front();
        data = data.subspan(1);
        if (opcode < 0x60)
        {
            if (data.size() < 2 || !writeMap(vdxTileMap(opcode), data[0], data[1]))
                return false;
            data = data.subspan(2);
        }
        else if (opcode == 0x60)
        {
            if (data.size() < 16 || !writeTile([&](size_t i) { return data[i]; }))
                return false;
            data = data.subspan(16);
        }
        else if (opcode == 0x61)
        {
            if (strict && y >= height)
                return false;
            x = 0;
            y += 4;
        }
        else if (opcode <= 0x6b)
        {
            x += (opcode - 0x62) * 4;
            if (strict && (x > width || y >= height))
                return false;
        }
        else if (opcode <= 0x7f)
        {
            const bool repeat = opcode <= 0x75;
            const int count = opcode - (repeat ? 0x6b : 0x75);
            const size_t colors = repeat ? 1 : count;
            if (data.size() < colors)
                return false;
            for (int i = 0; i < count; ++i)
            {
                const auto color = data[repeat ? 0 : i];
                if (!writeMap(0, color, color))
                    return false;
            }
            data = data.subspan(colors);
        }
        else
        {
            if (data.size() < 3 ||
                !writeMap(opcode | (uint16_t(data[0]) << 8), data[1], data[2]))
                return false;
            data = data.subspan(3);
        }
    }

    // The DOS decoder uses row advances to detect the end of the picture.
    return !requireFinalRow || (y == height && x == 0);
}

} // namespace

bool getDeltaBitmapDataChecked(
    std::span<const uint8_t> buffer, std::span<RGBColor> palette,
    std::span<uint8_t> frameBuffer, int width, std::span<uint8_t> indexBuffer,
    std::span<const uint8_t> foregroundMask, std::span<uint8_t> writtenPixels)
{
    if (width <= 0 || frameBuffer.size() % (size_t(width) * 3) != 0)
        return false;
    const size_t pixels = frameBuffer.size() / 3;
    if ((!indexBuffer.empty() && indexBuffer.size() != pixels) ||
        (!foregroundMask.empty() && foregroundMask.size() != pixels) ||
        (!writtenPixels.empty() && writtenPixels.size() != pixels))
        return false;
    std::fill(writtenPixels.begin(), writtenPixels.end(), 0);

    return decodeDelta(buffer, palette, width, pixels / width, false, false,
        [&](size_t pixel, uint8_t index) {
            // GRV video flag 7 composites delta writes through the foreground matte.
            if (!foregroundMask.empty())
            {
                const auto matte = foregroundMask[pixel];
                if (matte == 0xff)
                    return;
                if (index == 0xff)
                    index = matte;
            }
            if (!writtenPixels.empty())
                writtenPixels[pixel] = 255;
            if (!indexBuffer.empty())
                indexBuffer[pixel] = index;
            const auto &color = palette[index];
            frameBuffer[pixel * 3] = color.r;
            frameBuffer[pixel * 3 + 1] = color.g;
            frameBuffer[pixel * 3 + 2] = color.b;
        });
}

bool decodeIndexedVdxDelta(std::span<const uint8_t> data, std::span<RGBColor> palette,
                           std::span<uint8_t> frame, int width, int height,
                           bool requireFinalRow)
{
    if (width <= 0 || height <= 0 || width % 4 || height % 4 ||
        frame.size() != size_t(width) * height)
        return false;
    return decodeDelta(data, palette, width, height, true, requireFinalRow,
        [&](size_t pixel, uint8_t index) { frame[pixel] = index; });
}
