// render.cpp

#include <immintrin.h>
#include <cstring>
#include <numeric>

#include "render.h"
#include "game.h"

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

// Optional AVX2-targeted variant; compiled with AVX2 when supported by the compiler
#if defined(__clang__) || defined(__GNUC__)
#define TARGET_AVX2 __attribute__((target("avx2")))
#else
#define TARGET_AVX2
#endif

static inline void convertRGBtoBGRA_Scalar(const uint8_t *rgbData, uint8_t *bgraData, size_t pixelCount)
{
    for (size_t i = 0; i < pixelCount; ++i)
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

// Process 8 pixels per iteration by doing two SSSE3 shuffles and combining into one AVX2 store
static TARGET_AVX2 void convertRGBtoBGRA_AVX2(const uint8_t *rgbData, uint8_t *bgraData, size_t pixelCount)
{
#if defined(__AVX2__)
    const __m128i shuffleMask = _mm_set_epi8(0x80, 9, 10, 11, 0x80, 6, 7, 8, 0x80, 3, 4, 5, 0x80, 0, 1, 2);
    const __m128i alphaMask = _mm_set_epi8(255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0);

    size_t i = 0;
    for (; i + 8 <= pixelCount; i += 8)
    {
        // First 4 pixels
        __m128i rgb0 = _mm_loadu_si128(reinterpret_cast<const __m128i *>(rgbData + i * 3));
        __m128i shuf0 = _mm_shuffle_epi8(rgb0, shuffleMask);
        __m128i bgra0 = _mm_or_si128(shuf0, alphaMask);

        // Next 4 pixels (offset by 12 bytes)
        __m128i rgb1 = _mm_loadu_si128(reinterpret_cast<const __m128i *>(rgbData + (i + 4) * 3));
        __m128i shuf1 = _mm_shuffle_epi8(rgb1, shuffleMask);
        __m128i bgra1 = _mm_or_si128(shuf1, alphaMask);

        // Combine into one 256-bit store
        __m256i out = _mm256_set_m128i(bgra1, bgra0);
        _mm256_storeu_si256(reinterpret_cast<__m256i *>(bgraData + i * 4), out);
    }

    // Tail: handle remaining 4-pixel block with SSSE3 and any leftover scalars
    if (i + 4 <= pixelCount)
    {
        __m128i rgb = _mm_loadu_si128(reinterpret_cast<const __m128i *>(rgbData + i * 3));
        __m128i shuf = _mm_shuffle_epi8(rgb, shuffleMask);
        __m128i bgra = _mm_or_si128(shuf, alphaMask);
        _mm_storeu_si128(reinterpret_cast<__m128i *>(bgraData + i * 4), bgra);
        i += 4;
    }
    if (i < pixelCount)
    {
        convertRGBtoBGRA_Scalar(rgbData + i * 3, bgraData + i * 4, pixelCount - i);
    }
#else
    // If compiled without AVX2, fall back to SSSE3/scalar
    convertRGBtoBGRA_SSE(rgbData, bgraData, pixelCount);
#endif
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
void convertRGBRowToBGRA(const uint8_t *rgbRow, uint8_t *bgraRow, size_t width)
{
    switch (state.simd)
    {
    case GameState::SIMDLevel::AVX2:
        convertRGBtoBGRA_AVX2(rgbRow, bgraRow, width);
        break;
    case GameState::SIMDLevel::SSSE3:
        convertRGBtoBGRA_SSE(rgbRow, bgraRow, width);
        break;
    default:
        convertRGBtoBGRA_Scalar(rgbRow, bgraRow, width);
        break;
    }
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
    changed.reserve(static_cast<size_t>(height));
    const size_t rowSize = static_cast<size_t>(width) * 3;
    const size_t expectedSize = static_cast<size_t>(width) * height * 3;

    // Ensure previous buffer matches the expected full frame size
    if (previousFrameData.size() != expectedSize)
        previousFrameData.assign(expectedSize, 0);

    if (forceFull)
    {
        changed.resize(height);
        std::iota(changed.begin(), changed.end(), 0);
        // Copy row-by-row; if rgbData is smaller (e.g., cropped intros), pad missing rows with zeros
        for (int y = 0; y < height; ++y)
        {
            const size_t srcOffset = static_cast<size_t>(y) * rowSize;
            uint8_t *dstRow = previousFrameData.data() + static_cast<size_t>(y) * rowSize;
            if (srcOffset + rowSize <= rgbData.size())
            {
                std::memcpy(dstRow, rgbData.data() + srcOffset, rowSize);
            }
            else
            {
                std::memset(dstRow, 0, rowSize);
            }
        }
        return changed;
    }

    for (size_t y = 0; y < static_cast<size_t>(height); ++y)
    {
        const size_t srcOffset = y * rowSize;
        const bool srcAvailable = srcOffset + rowSize <= rgbData.size();
        const uint8_t *srcRow = srcAvailable ? (rgbData.data() + srcOffset) : nullptr;
        uint8_t *prevRow = previousFrameData.data() + y * rowSize;
        if (!srcAvailable || std::memcmp(srcRow, prevRow, rowSize) != 0)
        {
            if (srcAvailable)
                std::memcpy(prevRow, srcRow, rowSize);
            else
                std::memset(prevRow, 0, rowSize);
            changed.push_back(y);
        }
    }
    return changed;
}