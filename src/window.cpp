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

//=============================================================================

inline constexpr UINT CURSOR_TIMER_ID = 0x7C0A;
inline constexpr UINT CURSOR_TIMER_INTERVAL = static_cast<UINT>(1000.0 / CURSOR_FPS);

// Globals
HWND g_hwnd = nullptr;
bool g_menuActive = false;
HHOOK g_mouseHook = NULL;
HCURSOR currentCursor = nullptr;
static RendererType renderer;
float scaleFactor = 1.0f;

//=============================================================================

// Maps
static std::map<RendererType, void (*)()> initializeRenderer;
static std::map<RendererType, void (*)()> renderFrameFuncs;
static std::map<RendererType, void (*)()> cleanupFuncs;

//=============================================================================

//
// Window procedure
//
LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	switch (uMsg)
	{
	case WM_COMMAND:
	{
		switch (static_cast<int>(LOWORD(wParam)))
		{
		case static_cast<int>(MenuCommands::FILE_OPEN):
			MessageBox(hwnd, L"Open selected", L"File Menu", MB_OK);
			break;
		case static_cast<int>(MenuCommands::FILE_SAVE):
			MessageBox(hwnd, L"Save selected", L"File Menu", MB_OK);
			break;
		case static_cast<int>(MenuCommands::FILE_EXIT):
			::PostQuitMessage(0);
			break;
		case static_cast<int>(MenuCommands::HELP_ABOUT):
			DialogBox(GetModuleHandle(nullptr), MAKEINTRESOURCE(IDD_ABOUT_DIALOG), hwnd, AboutDialogProc);
			break;
		}
		return 0;
	}
	case WM_MOVE:
	{
		if (state.ui.enabled)
		{
			RECT windowRect;
			GetWindowRect(hwnd, &windowRect);

			HMONITOR hMonitor = MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST);
			MONITORINFOEX monitorInfo;
			monitorInfo.cbSize = sizeof(MONITORINFOEX);

			if (GetMonitorInfo(hMonitor, &monitorInfo))
			{
				state.ui.x = windowRect.left - monitorInfo.rcMonitor.left;
				state.ui.y = windowRect.top - monitorInfo.rcMonitor.top;

				config["x"] = state.ui.x;
				config["y"] = state.ui.y;

				for (const auto &display : state.ui.displays)
				{
					if (EqualRect(&display.bounds, &monitorInfo.rcMonitor))
					{
						config["display"] = display.number;
						break;
					}
				}
			}
		}
		return 0;
	}
	case WM_SIZING:
	{
		RECT *rect = reinterpret_cast<RECT *>(lParam);

		// Get window frame dimensions
		RECT frameRect = {0, 0, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT};
		DWORD style = GetWindowLong(hwnd, GWL_STYLE);
		DWORD exStyle = GetWindowLong(hwnd, GWL_EXSTYLE);
		AdjustWindowRectEx(&frameRect, style, TRUE, exStyle);

		// Calculate total window size needed for minimum client area
		int minWindowWidth = frameRect.right - frameRect.left;
		// int minWindowHeight = frameRect.bottom - frameRect.top;

		// Enforce minimum window size
		if ((rect->right - rect->left) < minWindowWidth)
		{
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
	case WM_SIZE:
	{
		if (state.ui.enabled && wParam != SIZE_MINIMIZED)
		{
			RECT clientRect;
			GetClientRect(hwnd, &clientRect);

			int newWidth = clientRect.right - clientRect.left;
			int newHeight = clientRect.bottom - clientRect.top;

			scaleFactor = static_cast<float>(newWidth) / MIN_CLIENT_WIDTH;

			if (renderTarget)
			{
				renderTarget->Resize(D2D1::SizeU(newWidth, newHeight));
			}

			if (state.ui.width != newWidth || state.ui.height != newHeight)
			{
				state.ui.width = newWidth;
				config["width"] = newWidth;
				state.ui.height = newHeight;
				InvalidateRect(hwnd, NULL, FALSE);
			}
		}
		return 0;
	}
	case WM_TIMER:
	{
		if (wParam == 0x7C0B)
		{
			// Reset menu state after a delay
			KillTimer(hwnd, 0x7C0B);
			g_menuActive = false;
			return 0;
		}

		if (wParam == CURSOR_TIMER_ID && g_cursorsInitialized)
		{
			updateCursorAnimation();

			// Only update cursor display if not in a menu
			if (!g_menuActive)
			{
				// Force cursor update if in client area
				POINT pt;
				GetCursorPos(&pt);
				ScreenToClient(hwnd, &pt);
				RECT rc;
				GetClientRect(hwnd, &rc);
				if (PtInRect(&rc, pt))
				{
					SetCursor(getCurrentCursor());
				}
			}
		}
		return 0;
	}
	case WM_PAINT:
	{
		PAINTSTRUCT ps;
		BeginPaint(hwnd, &ps);
		renderFrame(); // Always render on paint
		EndPaint(hwnd, &ps);
		return 0;
	}
	case WM_SETCURSOR:
	{
		// Always use system arrow when any menu is active
		if (g_menuActive)
		{
			SetCursor(LoadCursor(nullptr, IDC_ARROW));
			return TRUE;
		}

		// For non-client area, use system cursor
		if (LOWORD(lParam) != HTCLIENT)
		{
			SetCursor(LoadCursor(nullptr, IDC_ARROW));
			return TRUE;
		}

		// For client area, use custom cursor
		SetCursor(getCurrentCursor());
		return TRUE;
	}
	case WM_NCHITTEST:
	{
		LRESULT hit = DefWindowProc(hwnd, uMsg, wParam, lParam);
		if (hit != HTCLIENT)
			return hit;

		POINT pt = {LOWORD(lParam), HIWORD(lParam)};
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
		if (pt.x < resizeBorder && pt.y < resizeBorder)
			return HTTOPLEFT;
		if (pt.x >= width - resizeBorder && pt.y < resizeBorder)
			return HTTOPRIGHT;
		if (pt.x < resizeBorder && pt.y >= height - resizeBorder)
			return HTBOTTOMLEFT;
		if (pt.x >= width - resizeBorder && pt.y >= height - resizeBorder)
			return HTBOTTOMRIGHT;

		// Then check edges
		if (pt.x < resizeBorder)
			return HTLEFT;
		if (pt.x >= width - resizeBorder)
			return HTRIGHT;
		if (pt.y < resizeBorder)
			return HTTOP;
		if (pt.y >= height - resizeBorder)
			return HTBOTTOM;

		// Everything else is client area
		return HTCLIENT;
	}
	case WM_MOUSEMOVE:
	{
		POINT clientPos = {LOWORD(lParam), HIWORD(lParam)};
		updateCursorBasedOnPosition(clientPos);
		return 0;
	}
	case WM_LBUTTONDOWN:
	{
		POINT cursorPos;
		GetCursorPos(&cursorPos);
		ScreenToClient(g_hwnd, &cursorPos);

		float normalizedX = static_cast<float>(cursorPos.x) / state.ui.width * 100.0f;
		float normalizedY = static_cast<float>(cursorPos.y) / state.ui.height * 100.0f;

		if (!state.animation.isPlaying && state.currentVDX)
		{
			int highestZIndex = -1;
			size_t targetIndex = 0;
			enum class TargetType
			{
				None,
				Navigation,
				Hotspot
			} targetType = TargetType::None;

			// Check navigations
			for (size_t i = 0; i < state.view.navigations.size(); ++i)
			{
				const auto &nav = state.view.navigations[i];
				if (normalizedX >= nav.hotspot.x && normalizedX <= (nav.hotspot.x + nav.hotspot.width) &&
					normalizedY >= nav.hotspot.y && normalizedY <= (nav.hotspot.y + nav.hotspot.height))
				{
					if (nav.z_index > highestZIndex)
					{
						highestZIndex = nav.z_index;
						targetIndex = i;
						targetType = TargetType::Navigation;
					}
				}
			}

			// Check hotspots
			for (size_t i = 0; i < state.view.hotspots.size(); ++i)
			{
				const auto &hotspot = state.view.hotspots[i];
				if (normalizedX >= hotspot.x && normalizedX <= (hotspot.x + hotspot.width) &&
					normalizedY >= hotspot.y && normalizedY <= (hotspot.y + hotspot.height))
				{
					if (hotspot.z_index > highestZIndex)
					{
						highestZIndex = hotspot.z_index;
						targetIndex = i;
						targetType = TargetType::Hotspot;
					}
				}
			}

			if (targetType == TargetType::Navigation)
			{
				state.current_view = state.view.navigations[targetIndex].next_view;
				state.animation_sequence.clear();
			}
			else if (targetType == TargetType::Hotspot)
			{
				const auto &hotspot = state.view.hotspots[targetIndex];
				if (hotspot.action)
				{
					hotspot.action();
				}
			}
		}
		return 0;
	}
	case WM_ENTERMENULOOP:
	{
		g_menuActive = true;
		SetCursor(LoadCursor(nullptr, IDC_ARROW));
		return DefWindowProc(hwnd, uMsg, wParam, lParam); // Call default window proc
	}
	case WM_EXITMENULOOP:
	{
		SetTimer(hwnd, 0x7C0B, 50, NULL); // One-shot timer
		return DefWindowProc(hwnd, uMsg, wParam, lParam);
	}
	case WM_INITMENU:
	case WM_INITMENUPOPUP:
	{
		g_menuActive = true;
		SetCursor(LoadCursor(nullptr, IDC_ARROW));
		return DefWindowProc(hwnd, uMsg, wParam, lParam);
	}
	case WM_DESTROY:
	{
		if (g_mouseHook)
		{
			UnhookWindowsHookEx(g_mouseHook);
			g_mouseHook = NULL;
		}
		KillTimer(g_hwnd, CURSOR_TIMER_ID);
		::PostQuitMessage(0);
		return 0;
	}
	}
	return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

//
// Mouse Hook procedure
//
LRESULT CALLBACK MouseHookProc(int nCode, WPARAM wParam, LPARAM lParam)
{
	if (nCode >= 0)
	{
		// Check if a menu is active
		if (g_menuActive)
		{
			// For mouse move, force arrow cursor
			if (wParam == WM_MOUSEMOVE)
			{
				SetCursor(LoadCursor(NULL, IDC_ARROW));
			}
		}
	}
	// Always call next hook
	return CallNextHookEx(g_mouseHook, nCode, wParam, lParam);
}

//
// About Dialog Procedure
//
LRESULT CALLBACK AboutDialogProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	(void)lParam;
	switch (message)
	{
	case WM_INITDIALOG:
		return TRUE;

	case WM_COMMAND:
		if (LOWORD(wParam) == IDOK || LOWORD(wParam) == IDCANCEL)
		{
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
void initHandlers()
{
	initializeRenderer[RendererType::VULKAN] = initializeVulkan;
	initializeRenderer[RendererType::DIRECT2D] = initializeD2D;

	renderFrameFuncs[RendererType::VULKAN] = renderFrameVk;
	renderFrameFuncs[RendererType::DIRECT2D] = renderFrameD2D;

	cleanupFuncs[RendererType::VULKAN] = cleanupVulkan;
	cleanupFuncs[RendererType::DIRECT2D] = cleanupD2D;
}

//
// Initialize the menu
//
void initMenu()
{
	HMENU hMenu = CreateMenu();
	HMENU hFileMenu = CreatePopupMenu();
	HMENU hHelpMenu = CreatePopupMenu();

	AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::FILE_OPEN), L"Open");
	AppendMenu(hFileMenu, MF_SEPARATOR, 0, nullptr);
	AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::FILE_SAVE), L"Save");
	AppendMenu(hFileMenu, MF_SEPARATOR, 0, nullptr);
	AppendMenu(hFileMenu, MF_STRING, static_cast<UINT>(MenuCommands::FILE_EXIT), L"Exit");

	AppendMenu(hHelpMenu, MF_STRING, static_cast<UINT>(MenuCommands::HELP_ABOUT), L"About");

	AppendMenu(hMenu, MF_POPUP, reinterpret_cast<UINT_PTR>(hFileMenu), L"File");
	AppendMenu(hMenu, MF_POPUP, reinterpret_cast<UINT_PTR>(hHelpMenu), L"Help");

	SetMenu(g_hwnd, hMenu);
}

//
// Get monitor information
//
BOOL CALLBACK MonitorEnumProc(HMONITOR hMonitor, HDC hdcMonitor, LPRECT lprcMonitor, LPARAM dwData)
{
	(void)hdcMonitor;
	(void)lprcMonitor;
	(void)dwData;
	static int displayCount = 0;
	MONITORINFOEX monitorInfo;
	monitorInfo.cbSize = sizeof(MONITORINFOEX);

	if (GetMonitorInfo(hMonitor, &monitorInfo))
	{
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
void initWindow()
{
	initHandlers();

	//
	// Display
	//
	state.ui.displays.clear();
	EnumDisplayMonitors(NULL, NULL, MonitorEnumProc, 0);
	int targetDisplay = config["display"];
	const DisplayInfo *selectedDisplay = nullptr;

	for (const auto &display : state.ui.displays)
	{
		if (display.number == targetDisplay)
		{
			selectedDisplay = &display;
			break;
		}
	}

	if (!selectedDisplay)
	{
		for (const auto &display : state.ui.displays)
		{
			if (display.isPrimary)
			{
				selectedDisplay = &display;
				break;
			}
		}
	}

	if (config["fullscreen"])
	{
		state.ui.width = GetSystemMetrics(SM_CXSCREEN);
		state.ui.height = GetSystemMetrics(SM_CYSCREEN);
	}
	else
	{
		if (static_cast<int>(config["width"]) & 1)
		{
			config["width"] = static_cast<int>(config["width"]) + 1;
		}
		state.ui.width = config["width"];
		state.ui.height = config["width"].get<int>() / 2;
	}

	state.ui.x = config["x"];
	state.ui.y = config["y"];

	POINT position;
	if (selectedDisplay)
	{
		position.x = selectedDisplay->bounds.left + state.ui.x;
		position.y = selectedDisplay->bounds.top + state.ui.y;
	}
	else
	{
		position.x = CW_USEDEFAULT;
		position.y = CW_USEDEFAULT;
	}

	//
	// Window win32 API
	//
	HICON hIcon = static_cast<HICON>(LoadImage(
		GetModuleHandle(nullptr),
		MAKEINTRESOURCE(IDI_ICON1),
		IMAGE_ICON,
		0, 0, // Use icon's default size
		LR_DEFAULTCOLOR));

	WNDCLASSEX wc = {};
	wc.cbSize = sizeof(WNDCLASSEX);
	wc.hIcon = hIcon;
	wc.hIconSm = hIcon;
	wc.lpfnWndProc = WindowProc;
	wc.hInstance = GetModuleHandle(nullptr);
	wc.lpszClassName = L"D2DRenderWindowClass";
	wc.hbrBackground = reinterpret_cast<HBRUSH>(GetStockObject(BLACK_BRUSH));

	if (!RegisterClassEx(&wc))
	{
		throw std::runtime_error("Failed to register window class");
	}

	RECT rect = {0, 0, state.ui.width, state.ui.height};
	if (!config["fullscreen"])
		AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, TRUE);

	g_hwnd = CreateWindowEx(
		0,
		wc.lpszClassName,
		std::wstring(windowTitle.begin(), windowTitle.end()).c_str(),
		WS_OVERLAPPEDWINDOW,
		position.x, position.y,
		rect.right - rect.left, rect.bottom - rect.top,
		nullptr, nullptr, GetModuleHandle(nullptr), nullptr);

	if (!g_hwnd)
	{
		throw std::runtime_error("Failed to create window");
	}

	if (hIcon)
	{
		SendMessage(g_hwnd, WM_SETICON, ICON_BIG, (LPARAM)hIcon);	// Taskbar and Alt-Tab
		SendMessage(g_hwnd, WM_SETICON, ICON_SMALL, (LPARAM)hIcon); // Title bar
	}

	if (!config["fullscreen"])
	{
		initMenu();
	}

	renderer = (config["renderer"] == "VULKAN") ? RendererType::VULKAN : RendererType::DIRECT2D;
	initializeRenderer[renderer]();

	ShowWindow(g_hwnd, SW_SHOW);

	g_mouseHook = SetWindowsHookEx(WH_MOUSE, MouseHookProc,
								   NULL, GetCurrentThreadId());

	SetTimer(g_hwnd, CURSOR_TIMER_ID, CURSOR_TIMER_INTERVAL, NULL);
}

//
// Process events
//
bool processEvents()
{
	MSG msg = {};
	while (PeekMessage(&msg, nullptr, 0, 0, PM_REMOVE))
	{
		if (msg.message == WM_QUIT)
		{
			return false;
		}
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
	return true;
}

//
// Force the cursor to display
//
void forceUpdateCursor()
{
	POINT pt;
	GetCursorPos(&pt);
	ScreenToClient(g_hwnd, &pt);
	updateCursorBasedOnPosition(pt);
	SetCursor(currentCursor);
	PostMessage(g_hwnd, WM_SETCURSOR, reinterpret_cast<WPARAM>(g_hwnd), MAKELPARAM(HTCLIENT, 0));
	PostMessage(g_hwnd, WM_MOUSEMOVE, 0, MAKELPARAM(pt.x, pt.y));
}

//
// Update cursor based on position
//
void updateCursorBasedOnPosition(POINT clientPos)
{
	// Don't change cursor if menu is active
	if (g_menuActive)
	{
		SetCursor(LoadCursor(nullptr, IDC_ARROW));
		return;
	}

	float normalizedX = static_cast<float>(clientPos.x) / state.ui.width * 100.0f;
	float normalizedY = static_cast<float>(clientPos.y) / state.ui.height * 100.0f;

	int highestZIndex = -1;
	uint8_t newCursorType = CURSOR_DEFAULT;

	// Check navigations
	for (size_t i = 0; i < state.view.navigations.size(); ++i)
	{
		const auto &nav = state.view.navigations[i];
		if (normalizedX >= nav.hotspot.x && normalizedX <= (nav.hotspot.x + nav.hotspot.width) &&
			normalizedY >= nav.hotspot.y && normalizedY <= (nav.hotspot.y + nav.hotspot.height))
		{
			if (nav.hotspot.z_index > highestZIndex)
			{
				highestZIndex = nav.hotspot.z_index;
				newCursorType = nav.cursorType;
			}
		}
	}

	// Check hotspots
	for (size_t i = 0; i < state.view.hotspots.size(); ++i)
	{
		const auto &hotspot = state.view.hotspots[i];
		if (normalizedX >= hotspot.x && normalizedX <= (hotspot.x + hotspot.width) &&
			normalizedY >= hotspot.y && normalizedY <= (hotspot.y + hotspot.height))
		{
			if (hotspot.z_index > highestZIndex)
			{
				highestZIndex = hotspot.z_index;
				newCursorType = hotspot.cursorType;
			}
		}
	}

	// Update active cursor
	g_activeCursorType = static_cast<CursorType>(newCursorType);
	currentCursor = getCurrentCursor();
	SetCursor(currentCursor);
}

//
// Abstractions
//
void renderFrame() { renderFrameFuncs[renderer](); }
void cleanupWindow() { cleanupFuncs[renderer](); }