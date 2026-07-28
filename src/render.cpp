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
    static const __m128i shuffleMask = _mm_set_epi8((char)0x80, 9, 10, 11, (char)0x80, 6, 7, 8, (char)0x80, 3, 4, 5, (char)0x80, 0, 1, 2);
    static const __m128i alphaMask = _mm_set_epi8((char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0);

    size_t i = 0;
    // A 16-byte SIMD load over 4 RGB pixels (12 bytes) requires 4 bytes of lookahead.
    // Keep direct loads only when at least 6 pixels remain to avoid overread.
    for (; i + 6 <= pixelCount; i += 4)
    {
        __m128i rgb = _mm_loadu_si128(reinterpret_cast<const __m128i *>(rgbData + i * 3));
        __m128i shuffled = _mm_shuffle_epi8(rgb, shuffleMask);
        __m128i bgra = _mm_or_si128(shuffled, alphaMask);
        _mm_storeu_si128(reinterpret_cast<__m128i *>(bgraData + i * 4), bgra);
    }

    // Handle one 4-pixel block safely without reading past the RGB row.
    if (i + 4 <= pixelCount)
    {
        alignas(16) uint8_t rgbTail[16] = {};
        std::memcpy(rgbTail, rgbData + i * 3, 12);
        __m128i rgb = _mm_load_si128(reinterpret_cast<const __m128i *>(rgbTail));
        __m128i shuffled = _mm_shuffle_epi8(rgb, shuffleMask);
        __m128i bgra = _mm_or_si128(shuffled, alphaMask);
        _mm_storeu_si128(reinterpret_cast<__m128i *>(bgraData + i * 4), bgra);
        i += 4;
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
#if defined(__clang__) || defined(__GNUC__)
    const __m128i shuffleMask = _mm_set_epi8((char)0x80, 9, 10, 11, (char)0x80, 6, 7, 8, (char)0x80, 3, 4, 5, (char)0x80, 0, 1, 2);
    const __m128i alphaMask = _mm_set_epi8((char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0);

    size_t i = 0;
    // Two 16-byte loads are used per 8-pixel chunk; require enough lookahead for both.
    for (; i + 10 <= pixelCount; i += 8)
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

    if (i + 6 <= pixelCount)
    {
        __m128i rgb = _mm_loadu_si128(reinterpret_cast<const __m128i *>(rgbData + i * 3));
        __m128i shuf = _mm_shuffle_epi8(rgb, shuffleMask);
        __m128i bgra = _mm_or_si128(shuf, alphaMask);
        _mm_storeu_si128(reinterpret_cast<__m128i *>(bgraData + i * 4), bgra);
        i += 4;
    }

    // Final 4-pixel tail block without overread.
    if (i + 4 <= pixelCount)
    {
        alignas(16) uint8_t rgbTail[16] = {};
        std::memcpy(rgbTail, rgbData + i * 3, 12);
        __m128i rgb = _mm_load_si128(reinterpret_cast<const __m128i *>(rgbTail));
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
    // Non-clang/gcc toolchains: use SSSE3/scalar fallback.
    convertRGBtoBGRA_SSE(rgbData, bgraData, pixelCount);
#endif
}

/*
===============================================================================
Function Name: convertRGBRowToBGRA

Description:
    - Converts a row of RGB pixels to BGRA format using the best available
      SIMD instruction set. Uses cached function pointer for zero-overhead
      dispatch after initialization.

Parameters:
    - rgbRow: Source RGB pixel data.
    - bgraRow: Destination BGRA pixel data.
    - width: Number of pixels to convert.
===============================================================================
*/

// Function pointer type for SIMD converters
using ConvertFunc = void(*)(const uint8_t*, uint8_t*, size_t);

void convertRGBRowToBGRA(const uint8_t *rgbRow, uint8_t *bgraRow, size_t width)
{
    static SimdDispatchCache<ConvertFunc> dispatch;
    ConvertFunc fn = dispatch.get(state.simd, [](GameState::SIMDLevel level) -> ConvertFunc {
        switch (level)
        {
        case GameState::SIMDLevel::AVX2:
            return convertRGBtoBGRA_AVX2;
        case GameState::SIMDLevel::SSSE3:
            return convertRGBtoBGRA_SSE;
        default:
            return convertRGBtoBGRA_Scalar;
        }
    });
    fn(rgbRow, bgraRow, width);
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
std::span<const size_t> getChangedRowsAndUpdatePrevious(std::span<const uint8_t> rgbData, std::vector<uint8_t> &previousFrameData, int width, int height, bool forceFull)
{
    // Persistent across calls (cleared, not reallocated) so the steady-state
    // frame loop does zero heap allocations here after warm-up. Caller must
    // consume the returned span before the next call on this thread.
    static thread_local std::vector<size_t> changed;
    changed.clear();
    const size_t rowSize = static_cast<size_t>(width) * 3;
    const size_t expectedSize = static_cast<size_t>(width) * height * 3;

    // Ensure previous buffer matches the expected full frame size
    if (previousFrameData.size() != expectedSize)
        previousFrameData.assign(expectedSize, 0);

    if (forceFull)
    {
        changed.resize(height);
        std::iota(changed.begin(), changed.end(), 0);
        // Full-frame fast path: copy all available data in one shot, then pad if needed
        const size_t copyBytes = std::min(expectedSize, rgbData.size());
        if (copyBytes > 0)
            std::memcpy(previousFrameData.data(), rgbData.data(), copyBytes);
        if (copyBytes < expectedSize)
            std::memset(previousFrameData.data() + copyBytes, 0, expectedSize - copyBytes);
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
