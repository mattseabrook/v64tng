// window.h
#ifndef WINDOW_H
#define WINDOW_H

#include <windows.h>

enum class RendererType
{
    VULKAN,
    DIRECTX
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
extern bool g_menuActive;

LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
LRESULT CALLBACK MouseHookProc(int nCode, WPARAM wParam, LPARAM lParam);
BOOL CALLBACK MonitorEnumProc(HMONITOR hMonitor, HDC hdcMonitor, LPRECT lprcMonitor, LPARAM dwData);

void initHandlers();
void initWindow();
void renderFrame();
bool processEvents();
void forceUpdateCursor();
void updateCursorBasedOnPosition(POINT clientPos);
void toggleFullscreen();
void cleanupWindow();

#endif // WINDOW_H