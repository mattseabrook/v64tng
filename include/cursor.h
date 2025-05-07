// cursor.h

#ifndef CURSOR_H
#define CURSOR_H

#include <cstdint>
#include <array>
#include <vector>
#include <string_view>
#include <span>

/*
===============================================================================

    The 7th Guest – Cursor resources

    This header defines the minimal metadata needed to locate and unpack
    the nine cursor image blobs and their seven palettes that live
    inside ROB.GJD

===============================================================================
*/

//
// CursorBlobInfo
//
struct CursorBlobInfo
{
    uint32_t offset;
    uint32_t size;
    uint8_t paletteIdx;
    uint8_t frames;
};

//
// CursorImage
//
struct CursorImage
{
    uint8_t width;
    uint8_t height;
    uint8_t frames;
    std::vector<uint8_t> pixels;
};

//
// CursorBlobInfo array
//
inline constexpr std::array<CursorBlobInfo, 9> CursorBlobs{{
    /*0*/ {0x00000, 0x0182F, 0, 8},  // open hand (frames 0‑7 = RRRR‑LLLL)
    /*1*/ {0x0182F, 0x0233E, 2, 8},  // closed hand
    /*2*/ {0x03B6D, 0x0155F, 1, 4},  // compass
    /*3*/ {0x050CC, 0x01CAD, 0, 4},  // arrow
    /*4*/ {0x06E79, 0x013E4, 0, 6},  // skull
    /*5*/ {0x0825D, 0x0147A, 0, 4},  // "NO" sign
    /*6*/ {0x096D7, 0x00CE0, 3, 4},  // text‑beam
    /*7*/ {0x0A455, 0x00221, 5, 11}, // pyramid
    /*8*/ {0x0A776, 0x00FBE, 4, 12}  // eye
}};

// Metadata for the 7 palettes
inline constexpr uint32_t CursorPaletteSizeBytes = 0x60;
inline constexpr uint8_t NumCursorPalettes = 7;

//=============================================================================

// Function prototypes
std::vector<uint8_t> decompressCursorBlob(std::span<const uint8_t> compressed);
std::span<const uint8_t> getCursorBlob(std::span<const uint8_t> robBuffer, size_t blobIndex);
CursorImage unpackCursorBlob(std::span<const uint8_t> compressed, uint8_t expectedFrames);
std::vector<uint8_t> cursorFrameToRGBA(const CursorImage &img, size_t frameIdx, std::span<const uint8_t> palette);

#endif // CURSOR_H