// window.cpp

#include <stdexcept>
#include <string>
#include <functional>
#include <map>
#include <vector>

#include "window.h"
#include "../resource.h"
#include "vulkan.h"
#include "d2d.h"
#include "config.h"
#include "game.h"

// Globals
HWND hwnd = nullptr;

//=============================================================================

// Menu command IDs
enum MenuCommands {
	CMD_FILE_OPEN = 1,
	CMD_FILE_SAVE,
	CMD_FILE_EXIT,
	CMD_HELP_ABOUT
};

//=============================================================================

// Maps
static std::map<std::string, void(*)()> initializeFuncs;
static std::map<std::string, void(*)(const std::vector<uint8_t>&)> renderFrameFuncs;
static std::map<std::string, bool(*)()> processEventsFuncs;
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
// Initialize the window
//
void initializeWindow() {
	if (cfg_fullscreen) {
		state.ui.width = GetSystemMetrics(SM_CXSCREEN);
		state.ui.height = GetSystemMetrics(SM_CYSCREEN);
	}
	else {
		if (cfg_width % 2 != 0) {
			cfg_width += 1;
		}
		state.ui.width = cfg_width;
		state.ui.height = cfg_width / 2;
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
	AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, FALSE);

	hwnd = CreateWindowEx(
		0,
		wc.lpszClassName,
		std::wstring(cfg_windowTitle.begin(), cfg_windowTitle.end()).c_str(),
		WS_OVERLAPPEDWINDOW,
		CW_USEDEFAULT, CW_USEDEFAULT,
		rect.right - rect.left, rect.bottom - rect.top,
		nullptr, nullptr, GetModuleHandle(nullptr), nullptr
	);

	if (!hwnd) {
		throw std::runtime_error("Failed to create window");
	}

	// Menu
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
	
	ShowWindow(hwnd, SW_SHOW);
	
	static bool initialized = false;
	if (!initialized) {
		initializeFuncs["VULKAN"] = initializeVulkan;
		initializeFuncs["Direct2D"] = initializeD2D;

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

		cleanupFuncs["VULKAN"] = cleanupVulkan;
		cleanupFuncs["Direct2D"] = cleanupD2D;

		initialized = true;
	}

	if (initializeFuncs.count(cfg_renderer)) {
		initializeFuncs[cfg_renderer]();
	}
	else {
		throw std::runtime_error("Unsupported renderer type: " + cfg_renderer);
	}
}

//
// Abstract the rendering of a frame
//
void renderFrame(const std::vector<uint8_t>& frameData) {
	if (renderFrameFuncs.count(cfg_renderer)) {
		renderFrameFuncs[cfg_renderer](frameData);
	}
}

//
// Process window events
//
bool processEvents() {
	if (processEventsFuncs.count(cfg_renderer)) {
		return processEventsFuncs[cfg_renderer]();
	}
	return false;
}

//
// Cleanup the window and renderer
//
void cleanupWindow() {
	if (cleanupFuncs.count(cfg_renderer)) {
		cleanupFuncs[cfg_renderer]();
	}
}