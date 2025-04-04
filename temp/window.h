// window.h

#ifndef WINDOW_H
#define WINDOW_H

#include <vector>
#include <string_view>
#include <windows.h>

#include "config.h"

//=============================================================================

enum class MenuCommands {
    FILE_OPEN = 1,
    FILE_SAVE,
    FILE_EXIT,
    HELP_ABOUT
};

enum class RendererType {
    VULKAN,
    DIRECT2D
};

struct DisplayInfo {
    int number;
    RECT bounds;
    bool isPrimary;
};

extern HWND g_hwnd;
extern float scaleFactor;
extern HCURSOR currentCursor;

//=============================================================================

LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
LRESULT CALLBACK AboutDialogProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam);
BOOL CALLBACK MonitorEnumProc(HMONITOR hMonitor, HDC hdcMonitor, LPRECT lprcMonitor, LPARAM dwData);

//=============================================================================

void initHandlers();
void initWindow();
void initMenu();
void renderFrame();
bool processEvents();
void updateCursorBasedOnPosition(POINT clientPos);
void cleanupWindow();

#endif // WINDOW_H