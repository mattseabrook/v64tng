// cursor.h

#ifndef CURSOR_H
#define CURSOR_H

#include <cstdint>
#include <array>
#include <vector>
#include <string_view>
#include <span>
#include <stdexcept>
#include <unordered_set>
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>

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
    uint8_t paletteIdx;
};

//
// CursorBlobInfo array
//
inline constexpr std::array<CursorBlobInfo, 9> CursorBlobs{{
    /*0*/ {0x00000, 0}, // Skeleton Hand - Waving No   *default cursor
    /*1*/ {0x0182F, 2}, // Theatre Mask - Indicates an FMV     *first image used for icon.ico
    /*2*/ {0x03B6D, 1}, // Brain Puzzle
    /*3*/ {0x050CC, 0}, // Skeleton Hand - Pointing Forward
    /*4*/ {0x06E79, 0}, // Skeleton Hand - Turn Right
    /*5*/ {0x0825D, 0}, // Skeleton Hand - Turn Left
    /*6*/ {0x096D7, 3}, // Chattering Teeth - Indicates an Easter Egg
    /*7*/ {0x0A455, 5}, // Pyramid
    /*8*/ {0x0A776, 4}  // Eyeball - Puzzle Action
}};

//
// Cursor Type Enum
//
enum CursorType
{
    CURSOR_DEFAULT = 0,
    CURSOR_FMV = 1,
    CURSOR_PUZZLE = 2,
    CURSOR_FORWARD = 3,
    CURSOR_RIGHT = 4,
    CURSOR_LEFT = 5,
    CURSOR_EASTER_EGG = 6,
    CURSOR_PYRAMID = 7,
    CURSOR_ACTION = 8
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
// LoadedCursor structure
//
struct LoadedCursor
{
    CursorImage image;
    std::vector<HCURSOR> winHandles;
    std::vector<std::vector<uint8_t>> rgbaFrames;
    uint8_t currentFrame = 0;
};

// Metadata for the 7 palettes
inline constexpr uint32_t CursorPaletteSizeBytes = 0x60;
inline constexpr uint8_t NumCursorPalettes = 7;

// Cursor system globals
extern std::array<LoadedCursor, 9> g_cursors;
extern CursorType g_activeCursorType;
extern uint64_t g_cursorLastFrameTime;
extern bool g_cursorsInitialized;
inline constexpr double CURSOR_FPS = 15.0;

//=============================================================================

// Function prototypes
std::vector<uint8_t> decompressCursorBlob(std::span<const uint8_t> compressed);
std::span<const uint8_t> getCursorBlob(std::span<const uint8_t> robBuffer, size_t blobIndex);
CursorImage unpackCursorBlob(std::span<const uint8_t> blobData);
std::vector<uint8_t> cursorFrameToRGBA(const CursorImage &img, size_t frameIdx, std::span<const uint8_t> palette);
std::vector<uint8_t> scaleRGBA(const std::vector<uint8_t> &src, int srcW, int srcH, int dstW, int dstH);
bool initCursors(const std::string_view &robPath, float scale);
void recreateScaledCursors(float scale);
void updateCursorAnimation();
HCURSOR getCurrentCursor();
HCURSOR getTransparentCursor();
HCURSOR createWindowsCursor(const std::vector<uint8_t> &rgbaData, int width, int height);
void cleanupCursors();

#endif // CURSOR_H