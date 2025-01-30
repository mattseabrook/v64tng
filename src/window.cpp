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

HCURSOR defaultCursor = nullptr;
HCURSOR handCursor = nullptr;

//=============================================================================

// Maps
static std::map<std::string, void(*)()> initializeRenderer;
static std::map<std::string, void(*)()> renderFrameFuncs;
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
	case WM_MOVE: {
		if (state.ui.enabled) {
			RECT windowRect;
			GetWindowRect(hwnd, &windowRect);

			HMONITOR hMonitor = MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST);
			MONITORINFOEX monitorInfo;
			monitorInfo.cbSize = sizeof(MONITORINFOEX);

			if (GetMonitorInfo(hMonitor, &monitorInfo)) {
				state.ui.x = windowRect.left - monitorInfo.rcMonitor.left;
				state.ui.y = windowRect.top - monitorInfo.rcMonitor.top;

				config["x"] = state.ui.x;
				config["y"] = state.ui.y;

				for (const auto& display : state.ui.displays) {
					if (EqualRect(&display.bounds, &monitorInfo.rcMonitor)) {
						config["display"] = display.number;
						break;
					}
				}
			}
		}
		return 0;
	}
	case WM_SIZING: {
		RECT* rect = (RECT*)lParam;

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

			if (renderTarget) {
				renderTarget->Resize(D2D1::SizeU(newWidth, newHeight));
			}

			if (state.ui.width != newWidth || state.ui.height != newHeight) {
				state.ui.width = newWidth;
				config["width"] = newWidth;

				state.ui.height = newHeight;
				InvalidateRect(hwnd, NULL, FALSE);
			}
		}
		return 0;
	}
	case WM_PAINT: {
		PAINTSTRUCT ps;
		BeginPaint(hwnd, &ps);
		renderFrame();  // Always render on paint
		EndPaint(hwnd, &ps);
		return 0;
	}
	case WM_SETCURSOR: {
		if (LOWORD(lParam) != HTCLIENT)
			return DefWindowProc(hwnd, uMsg, wParam, lParam);

		SetCursor(LoadCursor(NULL, IDC_ARROW));
		return TRUE;
	}
	case WM_NCHITTEST: {
		LRESULT hit = DefWindowProc(hwnd, uMsg, wParam, lParam);
		if (hit != HTCLIENT)
			return hit;

		POINT pt = { LOWORD(lParam), HIWORD(lParam) };
		RECT rcWindow;
		GetWindowRect(hwnd, &rcWindow);

		// Convert cursor position to window-relative coordinates
		pt.x -= rcWindow.left;
		pt.y -= rcWindow.top;

		// Define a wider resize border that extends inward
		const int resizeBorder = GetSystemMetrics(SM_CXSIZEFRAME) * 3;
		const int width = rcWindow.right - rcWindow.left;
		const int height = rcWindow.bottom - rcWindow.top;

		// Check corners first - we need to detect these before edges
		if (pt.x < resizeBorder && pt.y < resizeBorder) return HTTOPLEFT;
		if (pt.x >= width - resizeBorder && pt.y < resizeBorder) return HTTOPRIGHT;
		if (pt.x < resizeBorder && pt.y >= height - resizeBorder) return HTBOTTOMLEFT;
		if (pt.x >= width - resizeBorder && pt.y >= height - resizeBorder) return HTBOTTOMRIGHT;

		// Then check edges
		if (pt.x < resizeBorder) return HTLEFT;
		if (pt.x >= width - resizeBorder) return HTRIGHT;
		if (pt.y < resizeBorder) return HTTOP;
		if (pt.y >= height - resizeBorder) return HTBOTTOM;

		// Everything else is client area
		return HTCLIENT;
	}
	case WM_MOUSEMOVE: {
		POINT cursorPos;
		GetCursorPos(&cursorPos);
		ScreenToClient(hwnd, &cursorPos);

		float normalizedX = static_cast<float>(cursorPos.x) / state.ui.width * 100.0f;
		float normalizedY = static_cast<float>(cursorPos.y) / state.ui.height * 100.0f;

		bool isCursorOver = false;

		// Navigation
		for (const auto& nav : state.view.navigations) {
			if (normalizedX >= nav.hotspot.x &&
				normalizedX <= (nav.hotspot.x + nav.hotspot.width) &&
				normalizedY >= nav.hotspot.y &&
				normalizedY <= (nav.hotspot.y + nav.hotspot.height)) {

				SetCursor(handCursor);
				isCursorOver = true;
				break;
			}
		}

		// Hotspots
		if (!isCursorOver) {
			for (const auto& hotspot : state.view.hotspots) {
				if (normalizedX >= hotspot.x &&
					normalizedX <= (hotspot.x + hotspot.width) &&
					normalizedY >= hotspot.y &&
					normalizedY <= (hotspot.y + hotspot.height)) {

					SetCursor(handCursor);
					isCursorOver = true;
					break;
				}
			}
		}

		if (!isCursorOver) {
			SetCursor(defaultCursor);
		}

		return 0;
	}
	case WM_LBUTTONDOWN: {
		handleClick();
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
// Get monitor information
//
BOOL CALLBACK MonitorEnumProc(HMONITOR hMonitor, HDC hdcMonitor, LPRECT lprcMonitor, LPARAM dwData) {
	static int displayCount = 0;
	MONITORINFOEX monitorInfo;
	monitorInfo.cbSize = sizeof(MONITORINFOEX);

	if (GetMonitorInfo(hMonitor, &monitorInfo)) {
		DisplayInfo display;
		display.number = ++displayCount;
		display.bounds = monitorInfo.rcMonitor;
		display.isPrimary = (monitorInfo.dwFlags & MONITORINFOF_PRIMARY) != 0;
		state.ui.displays.push_back(display);
	}

	return TRUE;
}

/*
===============================================================================
Function Name: initWindow();

Description:
	- Initialize the window and renderer based on configuration settings

===============================================================================
*/
void initWindow() {
	initHandlers();

	//
	// Display
	//
	state.ui.displays.clear();
	EnumDisplayMonitors(NULL, NULL, MonitorEnumProc, 0);
	int targetDisplay = config["display"];
	const DisplayInfo* selectedDisplay = nullptr;

	for (const auto& display : state.ui.displays) {
		if (display.number == targetDisplay) {
			selectedDisplay = &display;
			break;
		}
	}

	if (!selectedDisplay) {
		for (const auto& display : state.ui.displays) {
			if (display.isPrimary) {
				selectedDisplay = &display;
				break;
			}
		}
	}

	if (config["fullscreen"]) {
		state.ui.width = GetSystemMetrics(SM_CXSCREEN);
		state.ui.height = GetSystemMetrics(SM_CYSCREEN);
	}
	else {
		if ((int)config["width"] & 1) {
			config["width"] = (int)config["width"] + 1;
		}
		state.ui.width = config["width"];
		state.ui.height = config["width"] / 2;
	}

	state.ui.x = config["x"];
	state.ui.y = config["y"];

	POINT position;
	if (selectedDisplay) {
		position.x = selectedDisplay->bounds.left + state.ui.x;
		position.y = selectedDisplay->bounds.top + state.ui.y;
	}
	else {
		position.x = CW_USEDEFAULT;
		position.y = CW_USEDEFAULT;
	}

	//
	// Window win32 API
	//
	defaultCursor = LoadCursor(NULL, IDC_ARROW);
	handCursor = LoadCursor(NULL, IDC_HAND);

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
		position.x, position.y,
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
// Process events
//
bool processEvents() {
	MSG msg = {};
	while (PeekMessage(&msg, nullptr, 0, 0, PM_REMOVE)) {
		if (msg.message == WM_QUIT) {
			return false;
		}
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
	return true;
}

//
// Abstractions
//
void renderFrame() { renderFrameFuncs[config["renderer"]](); }
void cleanupWindow() { cleanupFuncs[config["renderer"]](); }