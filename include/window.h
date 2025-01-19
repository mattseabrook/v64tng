// window.h

#ifndef WINDOW_H
#define WINDOW_H

#include <vector>
#include <string>
#include <windows.h>

#include "config.h"

//=============================================================================

enum MenuCommands {
	CMD_FILE_OPEN = 1,
	CMD_FILE_SAVE,
	CMD_FILE_EXIT,
	CMD_HELP_ABOUT
};

struct DisplayInfo {
	int number;
	RECT bounds;
	bool isPrimary;
};

extern HWND hwnd;

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
void cleanupWindow();

#endif // WINDOW_H