// render.cpp

#include <immintrin.h>
#include <cstring>
#include <numeric>

#include "render.h"

//
// Function to convert RGB data to BGRA format using SSE instructions
//
void convertRGBtoBGRA_SSE(const uint8_t *rgbData, uint8_t *bgraData, size_t pixelCount)
{
    static const __m128i shuffleMask = _mm_set_epi8(
        static_cast<char>(0x80), 9, 10, 11,
        static_cast<char>(0x80), 6, 7, 8,
        static_cast<char>(0x80), 3, 4, 5,
        static_cast<char>(0x80), 0, 1, 2);

    static const __m128i alphaMask = _mm_set_epi8(
        static_cast<char>(255), 0, 0, 0,
        static_cast<char>(255), 0, 0, 0,
        static_cast<char>(255), 0, 0, 0,
        static_cast<char>(255), 0, 0, 0);

    for (size_t i = 0; i < pixelCount; i += 4)
    {
        __m128i rgb = _mm_loadu_si128(reinterpret_cast<const __m128i *>(rgbData + i * 3));
        __m128i shuffled = _mm_shuffle_epi8(rgb, shuffleMask);
        __m128i bgra = _mm_or_si128(shuffled, alphaMask);
        _mm_storeu_si128(reinterpret_cast<__m128i *>(bgraData + i * 4), bgra);
    }
}

//
// Function to resize the frame buffers for BGRA and previous frame data
//
void resizeFrameBuffers(std::vector<uint8_t> &bgraBuffer,
                        std::vector<uint8_t> &previousFrameData,
                        bool &forceFullUpdate,
                        uint32_t width,
                        uint32_t height)
{
    bgraBuffer.resize(static_cast<size_t>(width) * height * 4);
    previousFrameData.resize(static_cast<size_t>(width) * height * 3);
    forceFullUpdate = true;
}

//
// Function to prepare the BGRA buffer from RGB data, detecting changed rows
//
std::vector<size_t> prepareBGRABuffer(std::span<const uint8_t> rgbData,
                                      int width,
                                      int height,
                                      std::vector<uint8_t> &bgraBuffer,
                                      std::vector<uint8_t> &previousFrameData,
                                      bool &forceFullUpdate)
{
    const size_t rowSize = static_cast<size_t>(width) * 3;
    std::vector<size_t> changedRows;

    if (forceFullUpdate)
    {
        convertRGBtoBGRA_SSE(rgbData.data(), bgraBuffer.data(), static_cast<size_t>(width) * height);
        previousFrameData.assign(rgbData.begin(), rgbData.end());
        changedRows.resize(height);
        std::iota(changedRows.begin(), changedRows.end(), 0);
        forceFullUpdate = false;
        return changedRows;
    }

    for (size_t y = 0; y < static_cast<size_t>(height); ++y)
    {
        const uint8_t *srcRow = rgbData.data() + y * rowSize;
        uint8_t *prevRow = previousFrameData.data() + y * rowSize;
        if (std::memcmp(srcRow, prevRow, rowSize) != 0)
        {
            convertRGBtoBGRA_SSE(srcRow, &bgraBuffer[y * width * 4], width);
            std::memcpy(prevRow, srcRow, rowSize);
            changedRows.push_back(y);
        }
    }
    return changedRows;
}