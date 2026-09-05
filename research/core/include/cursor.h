#ifndef CURSOR_H
#define CURSOR_H

#include <cstdint>
#include <string_view>
#include <vector>

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>

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

extern CursorType g_activeCursorType;
extern uint64_t g_cursorLastFrameTime;
extern bool g_cursorsInitialized;
extern double g_cursorAnimationFps;

std::vector<uint8_t> scaleRGBA(const std::vector<uint8_t>& src, int srcW, int srcH, int dstW, int dstH);
bool initCursors(const std::string_view& cursorAsset, float scale);
void recreateScaledCursors(float scale);
void updateCursorAnimation();
HCURSOR getCurrentCursor();
HCURSOR getTransparentCursor();
HCURSOR createWindowsCursor(const std::vector<uint8_t>& rgbaData, int width, int height);
void cleanupCursors();

#endif // CURSOR_H