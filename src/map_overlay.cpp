// map_overlay.cpp

#include <windowsx.h>

#include "map_overlay.h"

// Variables
HWND g_hwndMapOverlay = nullptr;
bool g_mapOverlayVisible = false;
static std::vector<std::vector<uint8_t>> *g_map = nullptr;
static RaycastPlayer *g_player = nullptr;

//=====================================================================

//
// Player orientation as character
//
char orientationChar(float angle)
{
    // North = ^, East = >, South = v, West = <
    angle = fmodf(angle, 2.0f * 3.14159265f);
    if (angle < 0)
        angle += 2.0f * 3.14159265f;
    if (angle > 5.5f || angle < 0.8f)
        return '>'; // 0 deg = East
    if (angle > 0.8f && angle < 2.4f)
        return '^'; // 90 deg = North
    if (angle > 2.4f && angle < 4.0f)
        return '<'; // 180 deg = West
    return 'v';     // 270 deg = South
}

//
// Render the map as a string
//
std::string RenderMapString()
{
    const int W = static_cast<int>(state.raycast.map->at(0).size());
    const int H = static_cast<int>(state.raycast.map->size());
    std::string s;
    int px = int(g_player->x + 0.5f), py = int(g_player->y + 0.5f);

    for (int y = 0; y < H; ++y)
    {
        for (int x = 0; x < W; ++x)
        {
            if (x == px && y == py)
            {
                s += orientationChar(g_player->angle);
            }
            else if ((*g_map)[y][x])
                s += '#';
            else
                s += '.';
        }
        s += '\n';
    }
    return s;
}

//
// Window procedure for the map overlay
//
LRESULT CALLBACK MapWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg)
    {
    case WM_PAINT:
    {
        PAINTSTRUCT ps;
        HDC hdc = BeginPaint(hwnd, &ps);
        SetBkMode(hdc, TRANSPARENT);
        SetTextColor(hdc, RGB(0, 0, 0)); // Black text
        SelectObject(hdc, GetStockObject(ANSI_FIXED_FONT));
        auto str = RenderMapString();
        TextOutA(hdc, 0, 0, str.c_str(), (int)str.length());
        EndPaint(hwnd, &ps);
        break;
    }
    case WM_CLOSE:
        DestroyWindow(hwnd);
        g_hwndMapOverlay = nullptr;
        g_mapOverlayVisible = false;
        break;
    default:
        return DefWindowProc(hwnd, msg, wParam, lParam);
    }
    return 0;
}

//=====================================================================

//
// Open the map overlay window
//
void OpenMapOverlay(HWND parent)
{
    if (g_hwndMapOverlay)
        return;
    g_map = state.raycast.map;
    g_player = &state.raycast.player;

    WNDCLASSA wc = {};
    wc.lpfnWndProc = MapWndProc;
    wc.hInstance = GetModuleHandle(nullptr);
    wc.lpszClassName = "BasementMapOverlay";
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
    wc.hCursor = LoadCursor(nullptr, IDC_ARROW);
    // wc.style = CS_HREDRAW | CS_VREDRAW; // Optional: redraw if size changes

    if (!RegisterClassA(&wc))
    {
        DWORD err = GetLastError();
        if (err != ERROR_CLASS_ALREADY_EXISTS) // It's okay if it's already registered
        {
            char buf[256];
            sprintf_s(buf, "RegisterClassA failed with error: %lu", err);
            MessageBoxA(nullptr, buf, "Error", MB_OK | MB_ICONERROR);
            return;
        }
    }

    g_hwndMapOverlay = CreateWindowA(
        "BasementMapOverlay", "ASCII Map Overlay",
        WS_OVERLAPPEDWINDOW,
        100, 100, 900, 1200, parent, nullptr, GetModuleHandle(nullptr), nullptr);

    if (!g_hwndMapOverlay)
    {
        DWORD err = GetLastError();
        char buf[256];
        sprintf_s(buf, "CreateWindowA failed with error: %lu", err);
        MessageBoxA(nullptr, buf, "Error", MB_OK | MB_ICONERROR);
        return;
    }

    ShowWindow(g_hwndMapOverlay, SW_SHOW);
    UpdateWindow(g_hwndMapOverlay);
    SetForegroundWindow(g_hwndMapOverlay);
}

//
// Update the map overlay window
//
void UpdateMapOverlay()
{
    if (g_hwndMapOverlay)
        InvalidateRect(g_hwndMapOverlay, nullptr, FALSE);
}

//
// Close the map overlay window
//
void CloseMapOverlay()
{
    if (g_hwndMapOverlay)
        SendMessageA(g_hwndMapOverlay, WM_CLOSE, 0, 0);
}