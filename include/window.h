// window.h
#ifndef WINDOW_H
#define WINDOW_H

#include <windows.h>

enum class RendererType
{
    VULKAN,
    DIRECT2D
};

struct DisplayInfo
{
    int number;
    RECT bounds;
    bool isPrimary;
};

extern HWND g_hwnd;
extern float scaleFactor;
extern HCURSOR currentCursor;

//=============================================================================

// Function declarations
LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
LRESULT CALLBACK MouseHookProc(int nCode, WPARAM wParam, LPARAM lParam);
BOOL CALLBACK MonitorEnumProc(HMONITOR hMonitor, HDC hdcMonitor, LPRECT lprcMonitor, LPARAM dwData);

//=============================================================================

void initHandlers();
void initWindow();
void renderFrame();
bool processEvents();
void forceUpdateCursor();
void updateRaycasterMovement();
void updateCursorBasedOnPosition(POINT clientPos);
void cleanupWindow();

#endif // WINDOW_H