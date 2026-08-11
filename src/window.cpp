// window.cpp

#include <Windows.h>
#include <windowsx.h>
#include <algorithm>
#include <cctype>
#include <string>

#include "../resource.h"

#include "window.h"
#include "vulkan.h"
#include "d2d.h"
#include "config.h"
#include "game.h"
#include "audio.h"
#include "menu.h"
#include "map_overlay.h"
#include "raycast.h"
#include "tools.h"
#include "grv_editor.h"

constexpr UINT CURSOR_TIMER_ID = 0x7C0A;
constexpr UINT CURSOR_TIMER_INTERVAL = static_cast<UINT>(1000.0 / CURSOR_FPS);

HWND g_hwnd = nullptr;
bool g_menuActive = false;
HHOOK g_mouseHook = NULL;
HCURSOR currentCursor = nullptr;
bool g_userIsResizing = false;
static bool g_rawMouseInput = false;
static bool g_rendererInitialized = false;
static int g_startupFullscreenDisplay = 0;

static RendererType configuredRenderer()
{
	std::string configured =
		config.value("renderer", std::string("Vulkan"));
	std::transform(
		configured.begin(), configured.end(), configured.begin(),
		[](unsigned char ch) {
			return static_cast<char>(std::toupper(ch));
		});
	return configured == "DIRECTX"
		? RendererType::DIRECTX
		: RendererType::VULKAN;
}
RendererType renderer;
float scaleFactor = 1.0f;
DWORD g_windowedStyle = WS_OVERLAPPEDWINDOW;
WINDOWPLACEMENT g_windowedPlacement = {sizeof(WINDOWPLACEMENT)};

// Use arrays indexed by enum for O(1) lookup instead of std::map O(log n)
// RendererType::VULKAN = 0, RendererType::DIRECTX = 1
using RenderFunc = void(*)();
static constexpr RenderFunc initializeRendererFuncs[] = { initializeVulkan, initializeD2D };
static constexpr RenderFunc renderFrameFuncsArr[] = { renderFrameVk, renderFrameD2D };
static constexpr RenderFunc renderRaycastFuncsArr[] = { renderFrameRaycastVkGPU, renderFrameRaycastGPU };
static constexpr RenderFunc cleanupFuncsArr[] = { cleanupVulkan, cleanupD2D };

LRESULT HandleMove(HWND hwnd)
{
	if (!state.ui.enabled)
		return 0;
	RECT rect;
	GetWindowRect(hwnd, &rect);
	HMONITOR mon = MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST);
	MONITORINFOEX info = {sizeof(MONITORINFOEX)};
	if (GetMonitorInfo(mon, &info))
	{
		state.ui.x = rect.left - info.rcMonitor.left;
		state.ui.y = rect.top - info.rcMonitor.top;
		if (!config["fullscreen"].get<bool>())
		{
			config["x"] = state.ui.x;
			config["y"] = state.ui.y;
		}
		for (const auto &disp : state.ui.displays)
		{
			if (EqualRect(&disp.bounds, &info.rcMonitor))
				config["display"] = disp.number;
		}
	}
	return 0;
}

void HandleSizing(WPARAM wParam, LPARAM lParam)
{
	RECT *rect = reinterpret_cast<RECT *>(lParam);
	RECT frame = {0, 0, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT};
	AdjustWindowRectEx(&frame, GetWindowLong(g_hwnd, GWL_STYLE), TRUE, GetWindowLong(g_hwnd, GWL_EXSTYLE));
	int minW = frame.right - frame.left;
	if (rect->right - rect->left < minW)
	{
		(wParam == WMSZ_LEFT || wParam == WMSZ_TOPLEFT || wParam == WMSZ_BOTTOMLEFT) ? rect->left = rect->right - minW : rect->right = rect->left + minW;
	}
	int clientW = rect->right - rect->left - (frame.right - frame.left - MIN_CLIENT_WIDTH);
	int reqH = clientW / 2 + (frame.bottom - frame.top - MIN_CLIENT_HEIGHT);
	(wParam == WMSZ_TOP || wParam == WMSZ_TOPLEFT || wParam == WMSZ_TOPRIGHT) ? rect->top = rect->bottom - reqH : rect->bottom = rect->top + reqH;
}

// Cached cursor scale to avoid redundant cursor recreation
static float s_lastCursorScale = -1.0f;

LRESULT HandleSize(HWND hwnd, WPARAM wParam)
{
	// Allow resizing even before UI is fully enabled so intros scale correctly
	if (wParam == SIZE_MINIMIZED)
		return 0;
	RECT client;
	GetClientRect(hwnd, &client);
	int newW = client.right, newH = client.bottom;
	scaleFactor = state.raycast.enabled ? 1.0f : static_cast<float>(newW) / MIN_CLIENT_WIDTH;
	// Only recreate cursors if scale actually changed (expensive operation)
	if (!g_userIsResizing && g_cursorsInitialized && scaleFactor != s_lastCursorScale)
	{
		recreateScaledCursors(scaleFactor);
		s_lastCursorScale = scaleFactor;
		forceUpdateCursor();
	}
	if (renderer == RendererType::DIRECTX)
		handleResizeD2D(newW, newH);
	else
		handleResizeVulkan(newW, newH);
	if (state.ui.width != newW || state.ui.height != newH)
	{
		state.ui.width = newW;
		state.ui.height = newH;
		if (!config["fullscreen"].get<bool>())
			config["width"] = newW;
		maybeRenderFrame(true); // Direct render instead of invalidate
	}
	return 0;
}

// Cached cursor position for timer optimization
static POINT s_lastCursorPt = {LONG_MIN, LONG_MIN};
static bool s_cursorInClient = false;

LRESULT HandleTimer(HWND hwnd, WPARAM wParam)
{
	if (wParam == 0x7C0B)
	{
		KillTimer(hwnd, 0x7C0B);
		g_menuActive = false;
		return 0;
	}
	if (wParam == CURSOR_TIMER_ID && g_cursorsInitialized)
	{
		// Update cursor animation frame
		updateCursorAnimation();
		
		// Force Windows to send WM_SETCURSOR to update the displayed cursor
		// This is needed for animated cursors to update their frames
		if (!g_menuActive && !state.raycast.enabled)
		{
			POINT pt;
			GetCursorPos(&pt);
			
			// Only recalculate client rect if cursor position changed
			if (pt.x != s_lastCursorPt.x || pt.y != s_lastCursorPt.y)
			{
				s_lastCursorPt = pt;
				ScreenToClient(hwnd, &pt);
				RECT rc;
				GetClientRect(hwnd, &rc);
				s_cursorInClient = PtInRect(&rc, pt) != 0;
			}
			
			if (s_cursorInClient)
			{
				// Use PostMessage for non-blocking cursor update
				PostMessage(hwnd, WM_SETCURSOR, (WPARAM)hwnd, MAKELPARAM(HTCLIENT, WM_MOUSEMOVE));
			}
		}
	}
	return 0;
}

LRESULT HandlePaint(HWND hwnd)
{
	PAINTSTRUCT ps;
	BeginPaint(hwnd, &ps);
	maybeRenderFrame(true);
	EndPaint(hwnd, &ps);
	return 0;
}

LRESULT HandleSetCursor(LPARAM lParam)
{
	if (g_menuActive || LOWORD(lParam) != HTCLIENT)
		return g_menuActive ? (SetCursor(LoadCursor(nullptr, IDC_ARROW)), TRUE) : DefWindowProc(g_hwnd, WM_SETCURSOR, WPARAM(g_hwnd), lParam);
	
	// Always set the cursor based on current state - Windows expects this in WM_SETCURSOR
	HCURSOR desiredCursor = getCurrentCursor();
	SetCursor(desiredCursor);
	currentCursor = desiredCursor;
	return TRUE;
}

LRESULT HandleNCHitTest(HWND hwnd, LPARAM lParam)
{
	// Rely on the default system hit-testing to avoid misclassifying client area as resize borders.
	// This prevents stray resize cursors flickering inside the client region.
	return DefWindowProc(hwnd, WM_NCHITTEST, 0, lParam);
}

LRESULT HandleMouseMove(LPARAM lParam)
{
	if (state.raycast.enabled)
	{
		if (!g_rawMouseInput)
			handleRaycastMouseMove();
		return 0;
	}
	POINT pt = {GET_X_LPARAM(lParam), GET_Y_LPARAM(lParam)};
	updateCursorBasedOnPosition(pt);
	return 0;
}

LRESULT HandleLButtonDown(LPARAM lParam)
{
	// Use GET_X/Y_LPARAM for proper signed coordinate handling (multi-monitor support)
	POINT pt = {GET_X_LPARAM(lParam), GET_Y_LPARAM(lParam)};
	if (grvInputActive())
	{
		if (!state.animation.isPlaying && !state.transient_animation.isPlaying)
			grvPointerClick(pt.x, pt.y);
		return 0;
	}
	if (state.animation.isPlaying || state.transient_animation.isPlaying || !state.currentVDX)
		return 0;
	return 0;
}

LRESULT HandleMenuLoop(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	g_menuActive = true;
	wavPause();
	SetCursor(LoadCursor(nullptr, IDC_ARROW));
	return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

LRESULT HandleExitMenuLoop(HWND hwnd)
{
	SetTimer(hwnd, 0x7C0B, 50, NULL);
	wavResume();
	return DefWindowProc(hwnd, WM_EXITMENULOOP, 0, 0);
}

LRESULT HandleDestroy()
{
	CloseToolsWindow();  // Close tools window if open
	CloseGrvEditor();
	if (g_mouseHook)
		UnhookWindowsHookEx(g_mouseHook), g_mouseHook = NULL;
	KillTimer(g_hwnd, CURSOR_TIMER_ID);
	PostQuitMessage(0);
	return 0;
}

void pauseCursorTimer()
{
	KillTimer(g_hwnd, CURSOR_TIMER_ID);
	KillTimer(g_hwnd, 0x7C0B);  // Kill the menu delay timer too
}

void resumeCursorTimer()
{
	SetTimer(g_hwnd, CURSOR_TIMER_ID, CURSOR_TIMER_INTERVAL, NULL);
}

LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	switch (uMsg)
	{
	case WM_COMMAND:
		return HandleMenuCommand(hwnd, wParam);
	case WM_MOVE:
		return HandleMove(hwnd);
	case WM_SIZING:
		HandleSizing(wParam, lParam);
		return TRUE;
	case WM_SIZE:
		return HandleSize(hwnd, wParam);
	case WM_TIMER:
		return HandleTimer(hwnd, wParam);
	case WM_PAINT:
		return HandlePaint(hwnd);
	case WM_SETCURSOR:
		return HandleSetCursor(lParam);
	case WM_NCHITTEST:
		return HandleNCHitTest(hwnd, lParam);
	case WM_MOUSEMOVE:
		return HandleMouseMove(lParam);
	case WM_INPUT:
		if (state.raycast.enabled && g_rawMouseInput)
		{
			RAWINPUT raw{};
			UINT rawSize = sizeof(raw);
			if (GetRawInputData(reinterpret_cast<HRAWINPUT>(lParam), RID_INPUT,
				&raw, &rawSize, sizeof(RAWINPUTHEADER)) != static_cast<UINT>(-1) &&
				raw.header.dwType == RIM_TYPEMOUSE)
			{
				handleRaycastMouseDelta(
					raw.data.mouse.lLastX, raw.data.mouse.lLastY);
			}
			return 0;
		}
		break;
	case WM_KILLFOCUS:
		resetRaycastInput();
		return 0;
	case WM_LBUTTONDOWN:
		return HandleLButtonDown(lParam);
	case WM_KEYDOWN:
		if (wParam == VK_ESCAPE && grvEscapeAction())
			return 0;
		if (state.raycast.enabled)
		{
			if (wParam == 'M' || wParam == 'm')
				g_mapOverlayVisible ? CloseMapOverlay() : OpenMapOverlay(hwnd);
			else
				raycastKeyDown(wParam);
		}
		return 0;
	case WM_CHAR:
		if (state.mainMenu.active && wParam <= 0xff)
			mainMenuKeyDown(static_cast<char>(wParam));
		return 0;
	case WM_KEYUP:
		if (state.raycast.enabled)
			raycastKeyUp(wParam);
		return 0;
	case WM_SYSKEYDOWN:
		if (wParam == VK_RETURN)
		{
			toggleFullscreen();
			return 0;
		}
		break;
	case WM_SYSCHAR:
		if (wParam == VK_RETURN)
			return 0;
		break;
	case WM_ENTERSIZEMOVE:
		g_userIsResizing = true;
		wavPause();
		break;
	case WM_EXITSIZEMOVE:
	{
		g_userIsResizing = false;
		wavResume();
		RECT client;
		GetClientRect(hwnd, &client);
		float scale = state.raycast.enabled ? 1.0f : static_cast<float>(client.right - client.left) / MIN_CLIENT_WIDTH;
		// Only recreate cursors if scale actually changed
		if (g_cursorsInitialized && scale != s_lastCursorScale)
		{
			recreateScaledCursors(scale);
			s_lastCursorScale = scale;
			forceUpdateCursor();
		}
		break;
	}
	case WM_ENTERMENULOOP:
	case WM_INITMENU:
	case WM_INITMENUPOPUP:
		return HandleMenuLoop(hwnd, uMsg, wParam, lParam);
	case WM_EXITMENULOOP:
		return HandleExitMenuLoop(hwnd);
	case WM_CLOSE:
		save_config("config.json");
		wavStop();
		return DefWindowProc(hwnd, uMsg, wParam, lParam);
	case WM_DESTROY:
		wavStop();
		return HandleDestroy();
	}
	return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

LRESULT CALLBACK MouseHookProc(int nCode, WPARAM wParam, LPARAM lParam)
{
	if (nCode >= 0 && g_menuActive && wParam == WM_MOUSEMOVE)
		SetCursor(LoadCursor(NULL, IDC_ARROW));
	return CallNextHookEx(g_mouseHook, nCode, wParam, lParam);
}

void initHandlers() {}

BOOL CALLBACK MonitorEnumProc(HMONITOR hMonitor, HDC, LPRECT, LPARAM)
{
	static int count = 0;
	MONITORINFOEX info = {sizeof(MONITORINFOEX)};
	if (GetMonitorInfo(hMonitor, &info))
		state.ui.displays.push_back({++count, info.rcMonitor, (info.dwFlags & MONITORINFOF_PRIMARY) != 0});
	return TRUE;
}

void toggleFullscreen()
{
	bool entering = !config["fullscreen"].get<bool>();
	config["fullscreen"] = entering;
	if (entering)
	{
		g_windowedStyle = GetWindowLong(g_hwnd, GWL_STYLE);
		g_windowedPlacement.length = sizeof(WINDOWPLACEMENT);
		GetWindowPlacement(g_hwnd, &g_windowedPlacement);

		const DisplayInfo *sel = nullptr;
		if (g_startupFullscreenDisplay != 0)
		{
			for (const auto &disp : state.ui.displays)
				if (disp.number == g_startupFullscreenDisplay)
				{
					sel = &disp;
					break;
				}
			g_startupFullscreenDisplay = 0;
		}

		// Normal Alt+Enter follows the monitor containing the window.
		HMONITOR currentMonitor = MonitorFromWindow(g_hwnd, MONITOR_DEFAULTTONEAREST);
		MONITORINFOEX monitorInfo = {sizeof(MONITORINFOEX)};
		if (!sel && GetMonitorInfo(currentMonitor, &monitorInfo))
		{
			// Find the matching display info
			for (const auto &disp : state.ui.displays)
			{
				if (EqualRect(&disp.bounds, &monitorInfo.rcMonitor))
				{
					sel = &disp;
					break;
				}
			}
		}

		// Fallback to config display if current monitor not found
		if (!sel)
		{
			int tgt = config["display"];
			for (const auto &disp : state.ui.displays)
			{
				if (disp.number == tgt || (!sel && disp.isPrimary))
					sel = &disp;
			}
		}

		if (!sel && !state.ui.displays.empty())
			sel = &state.ui.displays.front();

		SetWindowLong(g_hwnd, GWL_STYLE, g_windowedStyle & ~WS_OVERLAPPEDWINDOW);
		SetWindowPos(g_hwnd, HWND_TOP, sel->bounds.left, sel->bounds.top, sel->bounds.right - sel->bounds.left, sel->bounds.bottom - sel->bounds.top, SWP_FRAMECHANGED);
		ShowWindow(g_hwnd, SW_SHOW);
		SetMenu(g_hwnd, NULL);
	}
	else
	{
		SetWindowLong(g_hwnd, GWL_STYLE, g_windowedStyle);
		SetWindowPos(g_hwnd, NULL, g_windowedPlacement.rcNormalPosition.left, g_windowedPlacement.rcNormalPosition.top,
					 g_windowedPlacement.rcNormalPosition.right - g_windowedPlacement.rcNormalPosition.left,
					 g_windowedPlacement.rcNormalPosition.bottom - g_windowedPlacement.rcNormalPosition.top, SWP_FRAMECHANGED);
		ShowWindow(g_hwnd, SW_SHOWNORMAL);
		initMenu(g_hwnd);
	}
}

void initWindow()
{
	SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2); // DPI opt
	initHandlers();
	const bool startFullscreen = config.value("fullscreen", false);
	state.ui.displays.clear();
	EnumDisplayMonitors(NULL, NULL, MonitorEnumProc, 0);
	int tgtDisp = config["display"];
	const DisplayInfo *sel = nullptr;
	for (const auto &disp : state.ui.displays)
	{
		if (disp.number == tgtDisp || (!sel && disp.isPrimary))
			sel = &disp;
	}
	if (config["width"].get<int>() & 1)
		config["width"] = config["width"].get<int>() + 1;
	state.ui.width = config["width"];
	state.ui.height = state.ui.width / 2;
	state.ui.x = config["x"];
	state.ui.y = config["y"];
	POINT pos = sel ? POINT{sel->bounds.left + state.ui.x, sel->bounds.top + state.ui.y} : POINT{CW_USEDEFAULT, CW_USEDEFAULT};
	if (startFullscreen && sel)
	{
		// Ensure MonitorFromWindow resolves to the remembered display before the
		// regular Alt+Enter path expands the window to that monitor.
		const int monitorWidth = sel->bounds.right - sel->bounds.left;
		const int monitorHeight = sel->bounds.bottom - sel->bounds.top;
		pos.x = sel->bounds.left + std::clamp(state.ui.x, 0, (std::max)(0, monitorWidth - 100));
		pos.y = sel->bounds.top + std::clamp(state.ui.y, 0, (std::max)(0, monitorHeight - 100));
	}
	HICON icon = static_cast<HICON>(LoadImage(GetModuleHandle(nullptr), MAKEINTRESOURCE(IDI_ICON1), IMAGE_ICON, 0, 0, LR_DEFAULTCOLOR));
	WNDCLASSEX wc = {sizeof(WNDCLASSEX), 0, WindowProc, 0, 0, GetModuleHandle(nullptr), icon, nullptr, reinterpret_cast<HBRUSH>(GetStockObject(BLACK_BRUSH)), nullptr, L"v64tngClass", icon};
	if (!RegisterClassEx(&wc))
		throw std::runtime_error("Failed register class");
	RECT rect = {0, 0, state.ui.width, state.ui.height};
	DWORD style = WS_OVERLAPPEDWINDOW;
	AdjustWindowRect(&rect, style, TRUE);
	g_hwnd = CreateWindowEx(0, wc.lpszClassName, std::wstring(windowTitle.begin(), windowTitle.end()).c_str(), style, pos.x, pos.y, rect.right - rect.left, rect.bottom - rect.top, nullptr, nullptr, GetModuleHandle(nullptr), nullptr);
	if (!g_hwnd)
		throw std::runtime_error("Failed create window");
	if (icon)
	{
		SendMessage(g_hwnd, WM_SETICON, ICON_BIG, reinterpret_cast<LPARAM>(icon));
		SendMessage(g_hwnd, WM_SETICON, ICON_SMALL, reinterpret_cast<LPARAM>(icon));
	}
	initMenu(g_hwnd);
	renderer = configuredRenderer();
	initializeRendererFuncs[static_cast<int>(renderer)]();
	g_rendererInitialized = true;
	ShowWindow(g_hwnd, SW_SHOW);
	if (startFullscreen)
	{
		// A persisted fullscreen launch must use the exact same tested transition
		// as Alt+Enter, including placement capture, monitor sizing and menu removal.
		config["display"] = tgtDisp;
		g_startupFullscreenDisplay = tgtDisp;
		config["fullscreen"] = false;
		toggleFullscreen();
	}
	g_mouseHook = SetWindowsHookEx(WH_MOUSE, MouseHookProc, NULL, GetCurrentThreadId());
	SetTimer(g_hwnd, CURSOR_TIMER_ID, CURSOR_TIMER_INTERVAL, NULL);
	RAWINPUTDEVICE rid = {0x01, 0x02, 0, g_hwnd};
	g_rawMouseInput =
		RegisterRawInputDevices(&rid, 1, sizeof(rid)) == TRUE;
	if (state.raycast.enabled)
	{
		// Hide the OS cursor for raycast mode (single call)
		ShowCursor(FALSE);
	}
}

bool g_quitRequested = false;

bool processEvents()
{
	MSG msg;
	while (PeekMessage(&msg, nullptr, 0, 0, PM_REMOVE))
	{
		if (msg.message == WM_QUIT)
		{
			g_quitRequested = true;
			return false;
		}
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
	return true;
}

void forceUpdateCursor()
{
	POINT pt;
	GetCursorPos(&pt);
	ScreenToClient(g_hwnd, &pt);
	updateCursorBasedOnPosition(pt);
}

void updateCursorBasedOnPosition(POINT clientPos)
{
	if (g_menuActive)
	{
		g_activeCursorType = CURSOR_DEFAULT; // Will use system arrow
		return;
	}
	if (grvInputActive())
	{
		const uint8_t style = grvPointerCursor(clientPos.x, clientPos.y);
		g_activeCursorType = state.animation.isPlaying || state.transient_animation.isPlaying ||
			style >= CursorStyles.size()
			? CURSOR_DEFAULT
			: static_cast<CursorType>(style);
		return;
	}
	if (state.raycast.enabled || state.animation.isPlaying || state.transient_animation.isPlaying)
	{
		g_activeCursorType = CURSOR_DEFAULT; // Will show transparent or default
		return;
	}
	g_activeCursorType = CURSOR_DEFAULT;
	// DO NOT call SetCursor() here - let WM_SETCURSOR handle it
}

void renderFrame()
{
	const int idx = static_cast<int>(renderer);
	state.raycast.enabled ? renderRaycastFuncsArr[idx]() : renderFrameFuncsArr[idx]();
}

void applyConfiguredRenderer()
{
	const RendererType requested = configuredRenderer();
	if (!g_rendererInitialized || requested == renderer)
		return;

	cleanupFuncsArr[static_cast<int>(renderer)]();
	g_rendererInitialized = false;
	renderer = requested;
	initializeRendererFuncs[static_cast<int>(renderer)]();
	g_rendererInitialized = true;
	state.frameTiming.dirtyFrame = true;
}

void cleanupWindow()
{
	// Restore the OS cursor visibility
	if (state.raycast.enabled)
		ShowCursor(TRUE);
	if (g_rendererInitialized)
	{
		cleanupFuncsArr[static_cast<int>(renderer)]();
		g_rendererInitialized = false;
	}
	if (g_hwnd)
	{
		DestroyWindow(g_hwnd);
		g_hwnd = nullptr;
	}
}

int getDisplayRefreshRate()
{
	if (!g_hwnd)
		return 60;
	const HMONITOR monitor =
		MonitorFromWindow(g_hwnd, MONITOR_DEFAULTTONEAREST);
	if (!monitor)
		return 60;

	static HMONITOR cachedMonitor = nullptr;
	static int cachedRefreshRate = 60;
	if (monitor == cachedMonitor)
		return cachedRefreshRate;

	MONITORINFOEXA monitorInfo{};
	monitorInfo.cbSize = sizeof(monitorInfo);
	if (GetMonitorInfoA(monitor, &monitorInfo))
	{
		DEVMODEA mode{};
		mode.dmSize = sizeof(mode);
		if (EnumDisplaySettingsA(
				monitorInfo.szDevice, ENUM_CURRENT_SETTINGS, &mode) &&
			mode.dmDisplayFrequency > 1)
		{
			cachedMonitor = monitor;
			cachedRefreshRate =
				static_cast<int>(mode.dmDisplayFrequency);
			return cachedRefreshRate;
		}
	}
	cachedMonitor = monitor;
	cachedRefreshRate = 60;
	return cachedRefreshRate;
}
