// window.cpp

#include <Windows.h>
#include <windowsx.h>

#include "../resource.h"

#include "window.h"
#include "vulkan.h"
#include "d2d.h"
#include "config.h"
#include "game.h"
#include "menu.h"
#include "map_overlay.h"

//=============================================================================

// Constants
inline constexpr UINT CURSOR_TIMER_ID = 0x7C0A;
inline constexpr UINT CURSOR_TIMER_INTERVAL = static_cast<UINT>(1000.0 / CURSOR_FPS);

//=============================================================================

// Globals
HWND g_hwnd = nullptr;
bool g_menuActive = false;
HHOOK g_mouseHook = NULL;
HCURSOR currentCursor = nullptr;
bool g_userIsResizing = false;
static RendererType renderer;
float scaleFactor = 1.0f;

static bool g_keys[256] = {false}; // Move to raycast.cpp later

//=============================================================================

// Maps
static std::map<RendererType, void (*)()> initializeRenderer;
static std::map<RendererType, void (*)()> renderFrameFuncs;
static std::map<RendererType, void (*)()> cleanupFuncs;

////////////////////////////////////////////////////////////////////////
// Message Handlers
////////////////////////////////////////////////////////////////////////

/*
===============================================================================
Function Name: HandleMove

Description:
	- Handles the WM_MOVE message to update the window position and display settings.

Parameters:
	- hwnd: The handle to the window.
===============================================================================
*/
LRESULT HandleMove(HWND hwnd)
{
	if (!state.ui.enabled)
		return 0;
	RECT windowRect;
	GetWindowRect(hwnd, &windowRect);
	HMONITOR hMonitor = MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST);
	MONITORINFOEX monitorInfo = {};
	monitorInfo.cbSize = sizeof(MONITORINFOEX);
	if (GetMonitorInfo(hMonitor, &monitorInfo))
	{
		state.ui.x = windowRect.left - monitorInfo.rcMonitor.left;
		state.ui.y = windowRect.top - monitorInfo.rcMonitor.top;
		config["x"] = state.ui.x;
		config["y"] = state.ui.y;
		for (const auto &display : state.ui.displays)
			if (EqualRect(&display.bounds, &monitorInfo.rcMonitor))
			{
				config["display"] = display.number;
				break;
			}
	}
	return 0;
}

/*
===============================================================================
Function Name: HandleSizing

Description:
	- Handles the WM_SIZING message to adjust the window size and aspect ratio.

Parameters:
	- wParam: The sizing action (e.g., WMSZ_LEFT, WMSZ_RIGHT).
	- lParam: A pointer to a RECT structure that contains the new size of the window.
===============================================================================
*/
void HandleSizing(WPARAM wParam, LPARAM lParam)
{
	RECT *rect = reinterpret_cast<RECT *>(lParam);
	RECT frameRect{0, 0, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT};
	DWORD style = GetWindowLong(g_hwnd, GWL_STYLE);
	DWORD exStyle = GetWindowLong(g_hwnd, GWL_EXSTYLE);
	AdjustWindowRectEx(&frameRect, style, TRUE, exStyle);
	int minWindowWidth = frameRect.right - frameRect.left;
	if ((rect->right - rect->left) < minWindowWidth)
	{
		if (wParam == WMSZ_LEFT || wParam == WMSZ_TOPLEFT || wParam == WMSZ_BOTTOMLEFT)
			rect->left = rect->right - minWindowWidth;
		else
			rect->right = rect->left + minWindowWidth;
	}
	int clientWidth = rect->right - rect->left - (frameRect.right - frameRect.left - MIN_CLIENT_WIDTH);
	int requiredWindowHeight = clientWidth / 2 + (frameRect.bottom - frameRect.top - MIN_CLIENT_HEIGHT);
	if (wParam == WMSZ_TOP || wParam == WMSZ_TOPLEFT || wParam == WMSZ_TOPRIGHT)
		rect->top = rect->bottom - requiredWindowHeight;
	else
		rect->bottom = rect->top + requiredWindowHeight;
}

/*
===============================================================================
Function Name: HandleSize

Description:
	- Handles the WM_SIZE message to adjust the window size and scale factor.

Parameters:
	- hwnd: The handle to the window.
	- wParam: The size action (e.g., SIZE_MINIMIZED, SIZE_MAXIMIZED).
===============================================================================
*/
LRESULT HandleSize(HWND hwnd, WPARAM wParam)
{
	if (!state.ui.enabled || wParam == SIZE_MINIMIZED)
		return 0;
	RECT clientRect;
	GetClientRect(hwnd, &clientRect);
	int newWidth = clientRect.right - clientRect.left;
	int newHeight = clientRect.bottom - clientRect.top;
	scaleFactor = static_cast<float>(newWidth) / MIN_CLIENT_WIDTH;
	if (!g_userIsResizing)
	{
		if (g_cursorsInitialized)
		{
			recreateScaledCursors(scaleFactor); // Scale all cursors
			forceUpdateCursor();
		}
	}
	if (renderTarget)
		renderTarget->Resize(D2D1::SizeU(newWidth, newHeight));
	if (state.ui.width != newWidth || state.ui.height != newHeight)
	{
		state.ui.width = newWidth;
		config["width"] = newWidth;
		state.ui.height = newHeight;
		InvalidateRect(hwnd, NULL, FALSE);
	}
	return 0;
}

/*
===============================================================================
Function Name: HandleTimer

Description:
	- Handles the WM_TIMER message to update the cursor animation and menu state.
	- If the timer ID is CURSOR_TIMER_ID, it updates the cursor animation.

Parameters:
	- hwnd: The handle to the window.
	- wParam: The timer ID.
===============================================================================
*/
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
		updateCursorAnimation();
		if (!g_menuActive)
		{
			POINT pt;
			GetCursorPos(&pt);
			ScreenToClient(hwnd, &pt);
			RECT rc;
			GetClientRect(hwnd, &rc);
			if (PtInRect(&rc, pt))
				SetCursor(getCurrentCursor());
		}
	}
	return 0;
}

/*
===============================================================================
Function Name: HandlePaint

Description:
	- Handles the WM_PAINT message to render the current frame.

Parameters:
	- hwnd: The handle to the window.
===============================================================================
*/
LRESULT HandlePaint(HWND hwnd)
{
	PAINTSTRUCT ps;
	BeginPaint(hwnd, &ps);
	renderFrame();
	EndPaint(hwnd, &ps);
	return 0;
}

/*
===============================================================================
Function Name: HandleSetCursor

Description:
	- Handles the WM_SETCURSOR message to set the cursor based on the current state.

Parameters:
	- lParam: The cursor position.
===============================================================================
*/
LRESULT HandleSetCursor(LPARAM lParam)
{
	WORD hitTest = LOWORD(lParam);

	// If menu active, always use default arrow
	if (g_menuActive)
	{
		SetCursor(LoadCursor(nullptr, IDC_ARROW));
		return TRUE;
	}

	// For client area, use our custom cursor
	if (hitTest == HTCLIENT)
	{
		SetCursor(getCurrentCursor());
		return TRUE;
	}

	// For non-client areas (resize handles, etc.), let Windows handle it
	return DefWindowProc(g_hwnd, WM_SETCURSOR, (WPARAM)g_hwnd, lParam);
}

/*
===============================================================================
Function Name: HandleNCHitTest

Description:
	- Handles the WM_NCHITTEST message to determine the hit test result for resizing.
	- It checks the cursor position and returns the appropriate hit test value.

Parameters:
	- hwnd: The handle to the window.
	- lParam: The cursor position.
===============================================================================
*/
LRESULT HandleNCHitTest(HWND hwnd, LPARAM lParam)
{
	LRESULT hit = DefWindowProc(hwnd, WM_NCHITTEST, 0, lParam);
	if (hit != HTCLIENT)
		return hit;
	POINT pt{LOWORD(lParam), HIWORD(lParam)};
	RECT rcWindow;
	GetWindowRect(hwnd, &rcWindow);
	pt.x -= rcWindow.left;
	pt.y -= rcWindow.top;
	const int resizeBorder = GetSystemMetrics(SM_CXSIZEFRAME) * 3;
	const int width = rcWindow.right - rcWindow.left;
	const int height = rcWindow.bottom - rcWindow.top;
	if (pt.x < resizeBorder && pt.y < resizeBorder)
		return HTTOPLEFT;
	if (pt.x >= width - resizeBorder && pt.y < resizeBorder)
		return HTTOPRIGHT;
	if (pt.x < resizeBorder && pt.y >= height - resizeBorder)
		return HTBOTTOMLEFT;
	if (pt.x >= width - resizeBorder && pt.y >= height - resizeBorder)
		return HTBOTTOMRIGHT;
	if (pt.x < resizeBorder)
		return HTLEFT;
	if (pt.x >= width - resizeBorder)
		return HTRIGHT;
	if (pt.y < resizeBorder)
		return HTTOP;
	if (pt.y >= height - resizeBorder)
		return HTBOTTOM;
	return HTCLIENT;
}

/*
===============================================================================
Function Name: HandleMouseMove

Description:
	- Handles the WM_MOUSEMOVE message to update the cursor position and state.

Parameters:
	- lParam: The cursor position.
===============================================================================
*/
LRESULT HandleMouseMove(LPARAM lParam)
{
	if (state.raycast.enabled)
	{
		static POINT lastPos = {0, 0};
		static bool firstMove = true;

		POINT pt;
		GetCursorPos(&pt);
		ScreenToClient(g_hwnd, &pt);

		if (firstMove)
		{
			lastPos = pt;
			firstMove = false;
			return 0;
		}

		int dx = pt.x - lastPos.x;

		float sensitivity = 0.005f;
		state.raycast.player.angle += dx * sensitivity;
		state.raycast.player.angle = fmodf(state.raycast.player.angle, 2.0f * 3.14159265f);
		if (state.raycast.player.angle < 0)
			state.raycast.player.angle += 2.0f * 3.14159265f;

		POINT center = {state.ui.width / 2, state.ui.height / 2};
		ClientToScreen(g_hwnd, &center);
		SetCursorPos(center.x, center.y);

		ScreenToClient(g_hwnd, &center);
		lastPos = center;

		// No rendering here - FPS control handles it
	}
	else
	{
		POINT clientPos = {GET_X_LPARAM(lParam), GET_Y_LPARAM(lParam)};
		updateCursorBasedOnPosition(clientPos);
	}
	return 0;
}

/*
===============================================================================
Function Name: HandleLButtonDown

Description:
	- Handles the WM_LBUTTONDOWN message to detect mouse clicks on navigations and hotspots.

Parameters:
	- lParam: The cursor position.
===============================================================================
*/
LRESULT HandleLButtonDown(LPARAM lParam)
{
	POINT cursorPos{LOWORD(lParam), HIWORD(lParam)};
	float normalizedX = static_cast<float>(cursorPos.x) / state.ui.width * 100.0f;
	float normalizedY = static_cast<float>(cursorPos.y) / state.ui.height * 100.0f;
	if (state.animation.isPlaying || !state.currentVDX)
		return 0;
	int highestZIndex = -1;
	size_t targetIndex = 0;
	enum class TargetType
	{
		None,
		Navigation,
		Hotspot
	} targetType = TargetType::None;
	for (size_t i = 0; i < state.view.navigations.size(); ++i)
	{
		const auto &nav = state.view.navigations[i];
		const auto &area = nav.area;
		if (normalizedX >= area.x && normalizedX <= (area.x + area.width) &&
			normalizedY >= area.y && normalizedY <= (area.y + area.height) &&
			area.z_index > highestZIndex)
		{
			highestZIndex = area.z_index;
			targetIndex = i;
			targetType = TargetType::Navigation;
		}
	}
	for (size_t i = 0; i < state.view.hotspots.size(); ++i)
	{
		const auto &hotspot = state.view.hotspots[i];
		const auto &area = hotspot.area;
		if (normalizedX >= area.x && normalizedX <= (area.x + area.width) &&
			normalizedY >= area.y && normalizedY <= (area.y + area.height) &&
			area.z_index > highestZIndex)
		{
			highestZIndex = area.z_index;
			targetIndex = i;
			targetType = TargetType::Hotspot;
		}
	}
	if (targetType == TargetType::Navigation)
	{
		state.current_view = state.view.navigations[targetIndex].next_view;
		state.animation_sequence.clear();
	}
	else if (targetType == TargetType::Hotspot && state.view.hotspots[targetIndex].action)
	{
		state.view.hotspots[targetIndex].action();
	}
	return 0;
}

/*
===============================================================================
Function Name: updateRaycasterMovement

Description:
	- Updates the player's position based on keyboard input in raycasting mode.
	- Moves the player in the direction of the pressed keys (W, A, S, D or arrow keys).
===============================================================================
*/
void updateRaycasterMovement()
{
	if (!state.raycast.enabled || state.raycast.map == nullptr || state.raycast.map->empty())
		return;

	int mapH = static_cast<int>(state.raycast.map->size());
	int mapW = static_cast<int>(state.raycast.map->at(0).size());

	float speed = 0.3f;
	float x = state.raycast.player.x;
	float y = state.raycast.player.y;
	float angle = state.raycast.player.angle;

	float dx = 0.0f, dy = 0.0f;

	if (g_keys['W'] || g_keys[VK_UP])
	{
		dx += std::cos(angle) * speed;
		dy += std::sin(angle) * speed;
	}
	if (g_keys['S'] || g_keys[VK_DOWN])
	{
		dx -= std::cos(angle) * speed;
		dy -= std::sin(angle) * speed;
	}
	if (g_keys['A'] || g_keys[VK_LEFT])
	{
		dx += std::cos(angle - 1.5708f) * speed;
		dy += std::sin(angle - 1.5708f) * speed;
	}
	if (g_keys['D'] || g_keys[VK_RIGHT])
	{
		dx += std::cos(angle + 1.5708f) * speed;
		dy += std::sin(angle + 1.5708f) * speed;
	}

	if (dx != 0.0f || dy != 0.0f)
	{
		// Try movement in X direction first - use same rounding as raycaster
		float new_x = x + dx;
		int mapX = static_cast<int>(new_x + 0.5f);
		int mapY = static_cast<int>(y + 0.5f);

		if (mapX >= 0 && mapX < mapW && mapY >= 0 && mapY < mapH &&
			(*state.raycast.map)[mapY][mapX] == 0)
		{
			state.raycast.player.x = new_x;
		}

		// Try movement in Y direction - use same rounding as raycaster
		float new_y = y + dy;
		mapX = static_cast<int>(state.raycast.player.x + 0.5f);
		mapY = static_cast<int>(new_y + 0.5f);

		if (mapX >= 0 && mapX < mapW && mapY >= 0 && mapY < mapH &&
			(*state.raycast.map)[mapY][mapX] == 0)
		{
			state.raycast.player.y = new_y;
		}
	}

	renderFrameRaycast();
}

/*
===============================================================================
Function Name: HandleMenuLoop

Description:
	- Handles the WM_ENTERMENULOOP and WM_INITMENU messages to manage the menu state.

Parameters:
	- hwnd: The handle to the window.
	- uMsg: The message identifier.
	- wParam: Additional message-specific information.
	- lParam: Additional message-specific information.
===============================================================================
*/
LRESULT HandleMenuLoop(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	g_menuActive = true;
	SetCursor(LoadCursor(nullptr, IDC_ARROW));
	return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

/*
===============================================================================
Function Name: HandleExitMenuLoop

Description:
	- Handles the WM_EXITMENULOOP message to reset the menu state and set a timer.

Parameters:
	- hwnd: The handle to the window.
===============================================================================
*/
LRESULT HandleExitMenuLoop(HWND hwnd)
{
	SetTimer(hwnd, 0x7C0B, 50, NULL);
	return DefWindowProc(hwnd, WM_EXITMENULOOP, 0, 0);
}

/*
===============================================================================
Function Name: HandleDestroy

Description:
	- Handles the WM_DESTROY message to clean up resources and exit the application.
===============================================================================
*/
LRESULT HandleDestroy()
{
	if (g_mouseHook)
		UnhookWindowsHookEx(g_mouseHook), g_mouseHook = NULL;
	KillTimer(g_hwnd, CURSOR_TIMER_ID);
	::PostQuitMessage(0);
	return 0;
}

////////////////////////////////////////////////////////////////////////
// Window Procedure
////////////////////////////////////////////////////////////////////////
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
	case WM_LBUTTONDOWN:
		return HandleLButtonDown(lParam);
	case WM_KEYDOWN:
		if (state.raycast.enabled)
		{
			if (wParam == 'M' || wParam == 'm')
			{
				OpenMapOverlay(hwnd);
			}
			else
			{
				g_keys[wParam] = true;
			}
		}
		return 0;
	case WM_KEYUP:
		if (state.raycast.enabled)
		{
			g_keys[wParam] = false;
		}
		return 0;
	case WM_ENTERSIZEMOVE:
		g_userIsResizing = true;
		break;
	case WM_EXITSIZEMOVE:
		g_userIsResizing = false;
		{
			RECT clientRect;
			GetClientRect(hwnd, &clientRect);
			float scale = static_cast<float>(clientRect.right - clientRect.left) / MIN_CLIENT_WIDTH;
			if (g_cursorsInitialized)
			{
				recreateScaledCursors(scale);
				forceUpdateCursor();
			}
		}
		break;
	case WM_ENTERMENULOOP:
	case WM_INITMENU:
	case WM_INITMENUPOPUP:
		return HandleMenuLoop(hwnd, uMsg, wParam, lParam);
	case WM_EXITMENULOOP:
		return HandleExitMenuLoop(hwnd);
	case WM_DESTROY:
		return HandleDestroy();
	}
	return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

/*
===============================================================================
Function Name: MouseHookProc

Description:
	- Handles mouse events to set the cursor to the default arrow cursor when the menu is active.
	- This function is called by the system when a mouse event occurs.

Parameters:
	- nCode: The hook code.
	- wParam: Additional message-specific information.
	- lParam: Additional message-specific information.
===============================================================================
*/
LRESULT CALLBACK MouseHookProc(int nCode, WPARAM wParam, LPARAM lParam)
{
	if (nCode >= 0 && g_menuActive && wParam == WM_MOUSEMOVE)
		SetCursor(LoadCursor(NULL, IDC_ARROW));
	return CallNextHookEx(g_mouseHook, nCode, wParam, lParam);
}

//
// Helper Functions
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

/*
===============================================================================
Function Name: MonitorEnumProc

Description:
	- Enumerates the monitors and retrieves their information.
	- This function is called by EnumDisplayMonitors for each monitor found.

Parameters:
	- hMonitor: Handle to the monitor.
	- hdcMonitor: Handle to the device context for the monitor.
	- lprcMonitor: Pointer to a RECT structure that receives the monitor's bounding rectangle.
	- dwData: Application-defined data passed to the callback function.
===============================================================================
*/
BOOL CALLBACK MonitorEnumProc(HMONITOR hMonitor, HDC hdcMonitor, LPRECT lprcMonitor, LPARAM dwData)
{
	(void)hdcMonitor;
	(void)lprcMonitor;
	(void)dwData;
	static int displayCount = 0;
	MONITORINFOEX monitorInfo = {};
	monitorInfo.cbSize = sizeof(MONITORINFOEX);
	if (GetMonitorInfo(hMonitor, &monitorInfo))
	{
		state.ui.displays.push_back({++displayCount, monitorInfo.rcMonitor, (monitorInfo.dwFlags & MONITORINFOF_PRIMARY) != 0});
	}
	return TRUE;
}

/*
===============================================================================
Function Name: initWindow

Description:
	- Initializes the window and its properties.
	- Sets the window size, position, and display settings based on the configuration.
	- Registers the window class and creates the window.
	- Initializes the renderer based on the selected type (VULKAN or DIRECT2D).
===============================================================================
*/
void initWindow()
{
	initHandlers();
	state.ui.displays.clear();
	EnumDisplayMonitors(NULL, NULL, MonitorEnumProc, 0);
	int targetDisplay = config["display"];
	const DisplayInfo *selectedDisplay = nullptr;
	for (const auto &display : state.ui.displays)
		if (display.number == targetDisplay || (!selectedDisplay && display.isPrimary))
		{
			selectedDisplay = &display;
			if (display.number == targetDisplay)
				break;
		}
	if (config["fullscreen"])
	{
		state.ui.width = GetSystemMetrics(SM_CXSCREEN);
		state.ui.height = GetSystemMetrics(SM_CYSCREEN);
	}
	else
	{
		if (static_cast<int>(config["width"]) & 1)
			config["width"] = static_cast<int>(config["width"]) + 1;
		state.ui.width = config["width"];
		state.ui.height = config["width"].get<int>() / 2;
	}
	state.ui.x = config["x"];
	state.ui.y = config["y"];
	POINT position = selectedDisplay ? POINT{selectedDisplay->bounds.left + state.ui.x, selectedDisplay->bounds.top + state.ui.y} : POINT{CW_USEDEFAULT, CW_USEDEFAULT};
	HICON hIcon = static_cast<HICON>(LoadImage(GetModuleHandle(nullptr), MAKEINTRESOURCE(IDI_ICON1), IMAGE_ICON, 0, 0, LR_DEFAULTCOLOR));
	WNDCLASSEX wc = {
		sizeof(WNDCLASSEX),									   // cbSize
		0,													   // style
		WindowProc,											   // lpfnWndProc
		0,													   // cbClsExtra
		0,													   // cbWndExtra
		GetModuleHandle(nullptr),							   // hInstance
		hIcon,												   // hIcon
		nullptr,											   // hCursor
		reinterpret_cast<HBRUSH>(GetStockObject(BLACK_BRUSH)), // hbrBackground
		nullptr,											   // lpszMenuName
		L"v64tngClass",										   // lpszClassName
		hIcon												   // hIconSm
	};
	if (!RegisterClassEx(&wc))
		throw std::runtime_error("Failed to register window class");
	RECT rect{0, 0, state.ui.width, state.ui.height};
	if (!config["fullscreen"])
		AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, TRUE);
	g_hwnd = CreateWindowEx(0, wc.lpszClassName, std::wstring(windowTitle.begin(), windowTitle.end()).c_str(),
							WS_OVERLAPPEDWINDOW, position.x, position.y, rect.right - rect.left, rect.bottom - rect.top,
							nullptr, nullptr, GetModuleHandle(nullptr), nullptr);
	if (!g_hwnd)
		throw std::runtime_error("Failed to create window");
	if (hIcon)
	{
		SendMessage(g_hwnd, WM_SETICON, ICON_BIG, reinterpret_cast<LPARAM>(hIcon));
		SendMessage(g_hwnd, WM_SETICON, ICON_SMALL, reinterpret_cast<LPARAM>(hIcon));
	}
	if (!config["fullscreen"])
		initMenu(g_hwnd);
	renderer = (config["renderer"] == "VULKAN") ? RendererType::VULKAN : RendererType::DIRECT2D;
	initializeRenderer[renderer]();
	ShowWindow(g_hwnd, SW_SHOW);
	g_mouseHook = SetWindowsHookEx(WH_MOUSE, MouseHookProc, NULL, GetCurrentThreadId());
	SetTimer(g_hwnd, CURSOR_TIMER_ID, CURSOR_TIMER_INTERVAL, NULL);
}

/*
===============================================================================
Function Name: processEvents

Description:
	- Processes the window messages in the message queue.
	- This function is called in a loop to handle events such as mouse movements, clicks, etc.
===============================================================================
*/
bool processEvents()
{
	MSG msg{};
	while (PeekMessage(&msg, nullptr, 0, 0, PM_REMOVE))
	{
		if (msg.message == WM_QUIT)
			return false;
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
	return true;
}

/*
===============================================================================
Function Name: forceUpdateCursor

Description:
	- Forces the cursor to update its position and appearance based on the current state.
	- This function is called when the cursor needs to be updated, such as during mouse movements.
===============================================================================
*/
void forceUpdateCursor()
{
	POINT pt;
	GetCursorPos(&pt);
	ScreenToClient(g_hwnd, &pt);
	updateCursorBasedOnPosition(pt);
	// Rely on updateCursorBasedOnPosition to set the cursor
}

/*
===============================================================================
Function Name: updateCursorBasedOnPosition

Description:
	- Updates the cursor appearance based on the current mouse position.
	- It checks the position against the defined hotspots and navigations
	to determine the appropriate cursor type.

Parameters:
	- clientPos: The current mouse position in client coordinates.
===============================================================================
*/
void updateCursorBasedOnPosition(POINT clientPos)
{
	if (g_menuActive)
	{
		SetCursor(LoadCursor(nullptr, IDC_ARROW));
		return;
	}

	// Check both animation states
	if (state.raycast.enabled || state.animation.isPlaying || state.transient_animation.isPlaying)
	{
		currentCursor = getCurrentCursor(); // Returns transparent cursor
		SetCursor(currentCursor);
		return; // Skip hotspot checks during animation
	}
	// Only calculate cursor type when no animation is playing
	float normalizedX = static_cast<float>(clientPos.x) / state.ui.width * 100.0f;
	float normalizedY = static_cast<float>(clientPos.y) / state.ui.height * 100.0f;
	int highestZIndex = -1;
	uint8_t newCursorType = CURSOR_DEFAULT;
	for (const auto &nav : state.view.navigations)
	{
		const auto &area = nav.area;
		if (normalizedX >= area.x && normalizedX <= (area.x + area.width) &&
			normalizedY >= area.y && normalizedY <= (area.y + area.height) &&
			area.z_index > highestZIndex)
		{
			highestZIndex = area.z_index;
			newCursorType = area.cursorType;
		}
	}
	for (const auto &hotspot : state.view.hotspots)
	{
		const auto &area = hotspot.area;
		if (normalizedX >= area.x && normalizedX <= (area.x + area.width) &&
			normalizedY >= area.y && normalizedY <= (area.y + area.height) &&
			area.z_index > highestZIndex)
		{
			highestZIndex = area.z_index;
			newCursorType = area.cursorType;
		}
	}
	g_activeCursorType = static_cast<CursorType>(newCursorType);
	currentCursor = getCurrentCursor();
	SetCursor(currentCursor);
}

//
// Abstractions
//
void renderFrame()
{
	if (state.raycast.enabled)
	{
		renderFrameRaycast();
	}
	else
	{
		renderFrameFuncs[renderer]();
	}
}
void cleanupWindow() { cleanupFuncs[renderer](); }