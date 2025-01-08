// window.h

#ifndef WINDOW_H
#define WINDOW_H

#include <vector>
#include <Windows.h>

extern HWND hwnd;

LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
LRESULT CALLBACK AboutDialogProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam);

//=============================================================================

void initializeWindow();
void renderFrame(const std::vector<uint8_t>& frameData);
bool processEvents();
void cleanupWindow();

#endif // WINDOW_H