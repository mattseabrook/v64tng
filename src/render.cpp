// render.cpp

#include <immintrin.h>
#include <cstring>
#include <numeric>

#include "render.h"

/*
===============================================================================
Function Name: convertRGBtoBGRA_SSE

Description:
    - Converts RGB pixel data to BGRA format using SSE instructions.
    - This function processes 4 pixels at a time for efficiency.

Parameters:
    - rgbData: Pointer to the input RGB pixel data.
    - bgraData: Pointer to the output BGRA pixel data.
    - pixelCount: Number of pixels to convert.
===============================================================================
*/
void convertRGBtoBGRA_SSE(const uint8_t *rgbData, uint8_t *bgraData, size_t pixelCount)
{
    static const __m128i shuffleMask = _mm_set_epi8(0x80, 9, 10, 11, 0x80, 6, 7, 8, 0x80, 3, 4, 5, 0x80, 0, 1, 2);
    static const __m128i alphaMask = _mm_set_epi8(255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0);

    size_t i = 0;
    for (; i + 4 <= pixelCount; i += 4)
    {
        __m128i rgb = _mm_loadu_si128(reinterpret_cast<const __m128i *>(rgbData + i * 3));
        __m128i shuffled = _mm_shuffle_epi8(rgb, shuffleMask);
        __m128i bgra = _mm_or_si128(shuffled, alphaMask);
        _mm_storeu_si128(reinterpret_cast<__m128i *>(bgraData + i * 4), bgra);
    }

    for (; i < pixelCount; ++i)
    {
        const uint8_t r = rgbData[i * 3 + 0];
        const uint8_t g = rgbData[i * 3 + 1];
        const uint8_t b = rgbData[i * 3 + 2];
        bgraData[i * 4 + 0] = b;
        bgraData[i * 4 + 1] = g;
        bgraData[i * 4 + 2] = r;
        bgraData[i * 4 + 3] = 255;
    }
}

/*
===============================================================================
Function Name: resizeTexture

Description:
    - Resizes the Direct2D texture and related resources.
    - This is called when the window size changes or when initializing.

Parameters:
    - width: New width of the texture.
    - height: New height of the texture.
===============================================================================
*/
void convertRGBRowToBGRA_SSE(const uint8_t *rgbRow, uint8_t *bgraRow, size_t width)
{
    convertRGBtoBGRA_SSE(rgbRow, bgraRow, width);
}

/*
===============================================================================
Function Name: resizeFrameBuffers

Description:
    - Resizes the frame buffers used for rendering.
    - This is called when the window size changes or when initializing.

Parameters:
    - previousFrameData: Vector to hold the previous frame data.
    - forceFullUpdate: Reference to a boolean indicating if a full update is needed.
    - width: New width of the frame.
    - height: New height of the frame.
===============================================================================
*/
void resizeFrameBuffers(std::vector<uint8_t> &previousFrameData, bool &forceFullUpdate, uint32_t width, uint32_t height)
{
    previousFrameData.resize(static_cast<size_t>(width) * height * 3);
    forceFullUpdate = true;
}

/*
===============================================================================
Function Name: getChangedRowsAndUpdatePrevious

Description:
    - Compares the current RGB data with the previous frame data and returns a list of changed rows.
    - Updates the previous frame data with the current RGB data.

Parameters:
    - rgbData: Span containing the current RGB pixel data.
    - previousFrameData: Vector to hold the previous frame data.
    - width: Width of the frame.
    - height: Height of the frame.
    - forceFull: Boolean indicating if a full update is required.
===============================================================================
*/
std::vector<size_t> getChangedRowsAndUpdatePrevious(std::span<const uint8_t> rgbData, std::vector<uint8_t> &previousFrameData, int width, int height, bool forceFull)
{
    std::vector<size_t> changed;
    const size_t rowSize = static_cast<size_t>(width) * 3;

    if (forceFull)
    {
        changed.resize(height);
        std::iota(changed.begin(), changed.end(), 0);
        previousFrameData.assign(rgbData.begin(), rgbData.end());
        return changed;
    }

    for (size_t y = 0; y < static_cast<size_t>(height); ++y)
    {
        const uint8_t *srcRow = rgbData.data() + y * rowSize;
        uint8_t *prevRow = previousFrameData.data() + y * rowSize;
        if (std::memcmp(srcRow, prevRow, rowSize) != 0)
        {
            std::memcpy(prevRow, srcRow, rowSize);
            changed.push_back(y);
        }
    }
    return changed;
}