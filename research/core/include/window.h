// window.h
#ifndef WINDOW_H
#define WINDOW_H

#include <windows.h>
#include <cstdint>

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
extern bool g_menuActive;

LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
LRESULT CALLBACK MouseHookProc(int nCode, WPARAM wParam, LPARAM lParam);
BOOL CALLBACK MonitorEnumProc(HMONITOR hMonitor, HDC hdcMonitor, LPRECT lprcMonitor, LPARAM dwData);

void initWindow();
void renderFrame();
bool processEvents();
void toggleFullscreen();
int getDisplayRefreshRate();
void cleanupWindow();
void setMinimumClientSize(int minClientWidth, int minClientHeight);
void resumeCursorTimer();
void pauseCursorTimer();
void forceUpdateCursor();
void resizeContentTexture(uint32_t width, uint32_t height);
void applyConfiguredRenderer();
int getDisplayRefreshRate();

#endif // WINDOW_H
