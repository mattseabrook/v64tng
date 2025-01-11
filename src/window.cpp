// window.cpp

#include <stdexcept>
#include <string>
#include <functional>
#include <map>
#include <vector>

#include "../resource.h"

#include "window.h"
#include "vulkan.h"
#include "d2d.h"
#include "config.h"
#include "game.h"

HWND hwnd = nullptr;

//=============================================================================

// Maps
static std::map<std::string, void(*)()> initializeRenderer;
static std::map<std::string, void(*)(const std::vector<uint8_t>&)> renderFrameFuncs;
static std::map<std::string, bool(*)()> processEventsFuncs;
static std::map<std::string, void(*)(int, int)> resizeHandlers;
static std::map<std::string, void(*)()> cleanupFuncs;

//=============================================================================

//
// Window procedure
//
LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
	switch (uMsg) {
	case WM_COMMAND: {
		switch (LOWORD(wParam)) {
		case CMD_FILE_OPEN:
			MessageBox(hwnd, L"Open selected", L"File Menu", MB_OK);
			break;
		case CMD_FILE_SAVE:
			MessageBox(hwnd, L"Save selected", L"File Menu", MB_OK);
			break;
		case CMD_FILE_EXIT:
			::PostQuitMessage(0);
			break;
		case CMD_HELP_ABOUT:
			DialogBox(GetModuleHandle(nullptr), MAKEINTRESOURCE(IDD_ABOUT_DIALOG), hwnd, AboutDialogProc);
			break;
		}
		return 0;
	}
	case WM_SIZING: {
		RECT* rect = (RECT*)lParam;

		// Static minimum client dimensions
		const int MIN_CLIENT_WIDTH = 640;
		const int MIN_CLIENT_HEIGHT = 320;

		// Get window frame dimensions
		RECT frameRect = { 0, 0, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT };
		DWORD style = GetWindowLong(hwnd, GWL_STYLE);
		DWORD exStyle = GetWindowLong(hwnd, GWL_EXSTYLE);
		AdjustWindowRectEx(&frameRect, style, TRUE, exStyle);

		// Calculate total window size needed for minimum client area
		int minWindowWidth = frameRect.right - frameRect.left;
		int minWindowHeight = frameRect.bottom - frameRect.top;

		// Enforce minimum window size
		if ((rect->right - rect->left) < minWindowWidth) {
			if (wParam == WMSZ_LEFT || wParam == WMSZ_TOPLEFT || wParam == WMSZ_BOTTOMLEFT)
				rect->left = rect->right - minWindowWidth;
			else
				rect->right = rect->left + minWindowWidth;
		}

		// Maintain 2:1 aspect ratio
		int clientWidth = rect->right - rect->left - (frameRect.right - frameRect.left - MIN_CLIENT_WIDTH);
		int requiredClientHeight = clientWidth / 2;

		// Calculate total window height including non-client areas
		int nonClientHeight = (frameRect.bottom - frameRect.top) - MIN_CLIENT_HEIGHT;
		int requiredWindowHeight = requiredClientHeight + nonClientHeight;

		// Adjust height to enforce aspect ratio
		if (wParam == WMSZ_TOP || wParam == WMSZ_TOPLEFT || wParam == WMSZ_TOPRIGHT)
			rect->top = rect->bottom - requiredWindowHeight;
		else
			rect->bottom = rect->top + requiredWindowHeight;

		return TRUE;
	}
	case WM_SIZE: {
		if (state.ui.enabled && wParam != SIZE_MINIMIZED) {
			RECT clientRect;
			GetClientRect(hwnd, &clientRect);

			int newWidth = clientRect.right - clientRect.left;
			int newHeight = clientRect.bottom - clientRect.top;

			if (state.ui.width != newWidth || state.ui.height != newHeight) {
				state.ui.width = newWidth;
				state.ui.height = newHeight;

				resizeHandlers[config["renderer"]](newWidth, newHeight);

				// Invalidate window to force re-rendering
				InvalidateRect(hwnd, nullptr, FALSE);
			}
		}
		return 0;
	}
	case WM_DESTROY:
		::PostQuitMessage(0);
		return 0;
	}
	return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

//
// About Dialog Procedure
//
LRESULT CALLBACK AboutDialogProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam) {
	switch (message) {
	case WM_INITDIALOG:
		return TRUE;

	case WM_COMMAND:
		if (LOWORD(wParam) == IDOK || LOWORD(wParam) == IDCANCEL) {
			EndDialog(hDlg, LOWORD(wParam));
			return TRUE;
		}
		break;
	}
	return FALSE;
}

//
// Initialize handlers
//
void initHandlers() {
	initializeRenderer["VULKAN"] = initializeVulkan;
	initializeRenderer["Direct2D"] = initializeD2D;

	renderFrameFuncs["VULKAN"] = renderFrameVk;
	renderFrameFuncs["Direct2D"] = renderFrameD2D;

	processEventsFuncs["VULKAN"] = []() {
		glfwPollEvents();
		return !glfwWindowShouldClose(window);
		};
	processEventsFuncs["Direct2D"] = []() {
		MSG msg = {};
		while (PeekMessage(&msg, nullptr, 0, 0, PM_REMOVE)) {
			if (msg.message == WM_QUIT) {
				return false;
			}
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
		return true;
		};

	resizeHandlers["VULKAN"] = [](int, int) { /* Placeholder for Vulkan resize */ };
	resizeHandlers["Direct2D"] = handleD2DResize;

	cleanupFuncs["VULKAN"] = cleanupVulkan;
	cleanupFuncs["Direct2D"] = cleanupD2D;
}

//
// Initialize the menu
//
void initMenu() {
	HMENU hMenu = CreateMenu();
	HMENU hFileMenu = CreatePopupMenu();
	HMENU hHelpMenu = CreatePopupMenu();

	AppendMenu(hFileMenu, MF_STRING, CMD_FILE_OPEN, L"Open");
	AppendMenu(hFileMenu, MF_SEPARATOR, 0, nullptr);
	AppendMenu(hFileMenu, MF_STRING, CMD_FILE_SAVE, L"Save");
	AppendMenu(hFileMenu, MF_SEPARATOR, 0, nullptr);
	AppendMenu(hFileMenu, MF_STRING, CMD_FILE_EXIT, L"Exit");

	AppendMenu(hHelpMenu, MF_STRING, CMD_HELP_ABOUT, L"About");

	AppendMenu(hMenu, MF_POPUP, (UINT_PTR)hFileMenu, L"File");
	AppendMenu(hMenu, MF_POPUP, (UINT_PTR)hHelpMenu, L"Help");

	SetMenu(hwnd, hMenu);
}

//
// Initialize the window
//
void initWindow() {
	initHandlers();

	if (config["fullscreen"]) {
		state.ui.width = GetSystemMetrics(SM_CXSCREEN);
		state.ui.height = GetSystemMetrics(SM_CYSCREEN);
	}
	else {
		if (config["width"] % 2 != 0) {
			config["width"] += 1;
		}
		state.ui.width = config["width"];
		state.ui.height = config["width"] / 2;
	}

	WNDCLASS wc = {};
	wc.lpfnWndProc = WindowProc;
	wc.hInstance = GetModuleHandle(nullptr);
	wc.lpszClassName = L"D2DRenderWindowClass";
	wc.hbrBackground = (HBRUSH)GetStockObject(BLACK_BRUSH);

	if (!RegisterClass(&wc)) {
		throw std::runtime_error("Failed to register window class");
	}

	RECT rect = { 0, 0, state.ui.width, state.ui.height };

	if (!config["fullscreen"]) AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, TRUE);

	hwnd = CreateWindowEx(
		0,
		wc.lpszClassName,
		std::wstring(windowTitle.begin(), windowTitle.end()).c_str(),
		WS_OVERLAPPEDWINDOW,
		CW_USEDEFAULT, CW_USEDEFAULT,
		rect.right - rect.left, rect.bottom - rect.top,
		nullptr, nullptr, GetModuleHandle(nullptr), nullptr
	);

	if (!hwnd) {
		throw std::runtime_error("Failed to create window");
	}

	if (!config["fullscreen"]) { initMenu(); }

	initializeRenderer[config["renderer"]]();

	ShowWindow(hwnd, SW_SHOW);
}

//
// Abstractions
//
void renderFrame(const std::vector<uint8_t>& frameData) { renderFrameFuncs[config["renderer"]](frameData); }
bool processEvents() { return processEventsFuncs[config["renderer"]](); }
void cleanupWindow() { cleanupFuncs[config["renderer"]](); }