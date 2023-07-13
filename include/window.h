// window.h

#ifndef WINDOW_H
#define WINDOW_H

#include <windows.h>
#include <d2d1.h>
#include <string>

/*
===============================================================================

    7th Guest - Window

    Uses Direct2D to create a window and render the graphics

===============================================================================
*/

// Define window class name
const std::wstring CLASS_NAME = L"v64tng Window Class";

// Declare forward references to functions
HRESULT InitWindow(HINSTANCE hInstance, int nCmdShow);
HRESULT InitDevice();
void DiscardDeviceResources();
LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);

#endif // WINDOW_H