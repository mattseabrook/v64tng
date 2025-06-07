// system.cpp

#include <windows.h>
#include <intrin.h>
#include <string>
#include <cstdio>

#include <png.h>

#include "../resource.h"
#include "system.h"
#include "config.h"
#include "window.h"
#include "game.h"

// Forward declaration of window procedure
LRESULT CALLBACK SystemInfoWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);

//
// Helper function to generate CPU/GPU info text
//
std::string GenerateSystemInfoText()
{
    int cpuInfo[4] = {0};
    __cpuid(cpuInfo, 1);
    std::string text = "  SSE: " + std::string((cpuInfo[3] & (1 << 25)) ? "Yes" : "No") + "\n";
    text += "  SSE2: " + std::string((cpuInfo[3] & (1 << 26)) ? "Yes" : "No") + "\n";
    text += "  SSE3: " + std::string((cpuInfo[2] & (1 << 0)) ? "Yes" : "No") + "\n";
    text += "  SSSE3: " + std::string((cpuInfo[2] & (1 << 9)) ? "Yes" : "No") + "\n";
    text += "  SSE4.1: " + std::string((cpuInfo[2] & (1 << 19)) ? "Yes" : "No") + "\n";
    text += "  SSE4.2: " + std::string((cpuInfo[2] & (1 << 20)) ? "Yes" : "No") + "\n";
    text += "  AVX: " + std::string((cpuInfo[2] & (1 << 28)) ? "Yes" : "No") + "\n";

    // Check for AVX2 (requires leaf 7)
    __cpuid(cpuInfo, 7);
    text += "  AVX2: " + std::string((cpuInfo[1] & (1 << 5)) ? "Yes" : "No") + "\n";

    // Check for AVX-512 (basic check)
    text += "  AVX-512: " + std::string((cpuInfo[1] & (1 << 16)) ? "Yes" : "No") + "\n";

    return text;
}

//
// Load the PNG from resource to a memory buffer
//
bool LoadPNGResourceToMemory(int resourceId, std::vector<unsigned char> &outBuffer)
{
    HRSRC res = FindResource(nullptr, MAKEINTRESOURCE(resourceId), RT_RCDATA);
    if (!res)
        return false;
    HGLOBAL hRes = LoadResource(nullptr, res);
    if (!hRes)
        return false;
    void *pData = LockResource(hRes);
    DWORD dataSize = SizeofResource(nullptr, res);
    outBuffer.assign((unsigned char *)pData, (unsigned char *)pData + dataSize);
    return true;
}

//
// Decode PNG with libpng to RGB (24-bit, row-major)
//
bool DecodePNGToRGB(const std::vector<unsigned char> &pngData, std::vector<unsigned char> &rgb, int &width, int &height)
{
    png_image image;
    memset(&image, 0, sizeof(image));
    image.version = PNG_IMAGE_VERSION;
    if (!png_image_begin_read_from_memory(&image, pngData.data(), pngData.size()))
        return false;
    image.format = PNG_FORMAT_RGB;
    width = image.width;
    height = image.height;
    rgb.resize(PNG_IMAGE_SIZE(image));
    if (!png_image_finish_read(&image, nullptr, rgb.data(), 0, nullptr))
    {
        return false;
    }
    return true;
}

//
// Show the system information window
//
void ShowSystemInfoWindow()
{
    HINSTANCE hInstance = GetModuleHandle(NULL);
    const char *className = "v64tngSystemInfoClass";

    // Initialize window class structure
    WNDCLASSEXA wc = {};
    wc.cbSize = sizeof(WNDCLASSEXA);
    wc.lpfnWndProc = SystemInfoWndProc;
    wc.hInstance = hInstance;
    wc.lpszClassName = className;
    wc.hCursor = LoadCursor(NULL, IDC_ARROW);
    wc.hbrBackground = GetSysColorBrush(COLOR_WINDOW);
    wc.style = CS_HREDRAW | CS_VREDRAW;

    // Register window class
    if (!RegisterClassExA(&wc))
    {
        DWORD error = GetLastError();
        char buffer[256];
        snprintf(buffer, sizeof(buffer),
                 "Failed to register window class. Error: 0x%lX", error);
        MessageBoxA(NULL, buffer, "Error", MB_OK | MB_ICONERROR);
        return;
    }

    // Get display info using existing code from window.cpp
    state.ui.displays.clear();
    EnumDisplayMonitors(NULL, NULL, MonitorEnumProc, 0);

    // Find target display
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

    // Fallback to primary display if not found
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

    // Fallback to first display if still not found
    if (!selectedDisplay && !state.ui.displays.empty())
    {
        selectedDisplay = &state.ui.displays[0];
    }

    // Set window size to 1280x720 (DVD resolution)
    const int WINDOW_WIDTH = 1280;
    const int WINDOW_HEIGHT = 720;

    // Calculate centered position
    int x = 0, y = 0;
    if (selectedDisplay)
    {
        RECT bounds = selectedDisplay->bounds;
        x = bounds.left + (bounds.right - bounds.left - WINDOW_WIDTH) / 2;
        y = bounds.top + (bounds.bottom - bounds.top - WINDOW_HEIGHT) / 2;
    }
    else
    {
        // Fallback to screen center
        x = (GetSystemMetrics(SM_CXSCREEN) - WINDOW_WIDTH) / 2;
        y = (GetSystemMetrics(SM_CYSCREEN) - WINDOW_HEIGHT) / 2;
    }

    // Create borderless window
    HWND hwnd = CreateWindowExA(
        0, // No extended styles
        className,
        "v64tng System Info",
        WS_POPUP, // Borderless window
        x, y,
        WINDOW_WIDTH, WINDOW_HEIGHT,
        NULL, NULL, hInstance, NULL);

    if (!hwnd)
    {
        DWORD error = GetLastError();
        char buffer[256];
        snprintf(buffer, sizeof(buffer),
                 "Failed to create window. Error: 0x%lX", error);
        MessageBoxA(NULL, buffer, "Error", MB_OK | MB_ICONERROR);
        return;
    }

    // Show and update window
    ShowWindow(hwnd, SW_SHOW);
    UpdateWindow(hwnd);

    // Message loop
    MSG msg;
    while (GetMessage(&msg, NULL, 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
}

////////////////////////////////////////////////////////////////////////
// Window Procedure
////////////////////////////////////////////////////////////////////////
LRESULT CALLBACK SystemInfoWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg)
    {
    case WM_PAINT:
    {
        PAINTSTRUCT ps;
        HDC hdc = BeginPaint(hwnd, &ps);

        static HBITMAP hBmp = nullptr;
        static int bmpW = 0, bmpH = 0;
        if (!hBmp)
        {
            std::vector<unsigned char> pngBuf;
            if (LoadPNGResourceToMemory(IDB_SYSINFO_BG, pngBuf))
            {
                std::vector<unsigned char> rgb;
                int width = 0, height = 0;
                if (DecodePNGToRGB(pngBuf, rgb, width, height))
                {
                    bmpW = width;
                    bmpH = height;
                    BITMAPINFO bmi = {};
                    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
                    bmi.bmiHeader.biWidth = width;
                    bmi.bmiHeader.biHeight = -height;
                    bmi.bmiHeader.biPlanes = 1;
                    bmi.bmiHeader.biBitCount = 24;
                    bmi.bmiHeader.biCompression = BI_RGB;
                    void *bits = nullptr;
                    hBmp = CreateDIBSection(hdc, &bmi, DIB_RGB_COLORS, &bits, nullptr, 0);
                    if (hBmp && bits)
                    {
                        // RGB to BGR fix
                        unsigned char *dst = (unsigned char *)bits;
                        for (size_t i = 0; i < rgb.size(); i += 3)
                        {
                            dst[i + 0] = rgb[i + 2]; // B
                            dst[i + 1] = rgb[i + 1]; // G
                            dst[i + 2] = rgb[i + 0]; // R
                        }
                    }
                }
            }
        }

        if (hBmp)
        {
            HDC memDC = CreateCompatibleDC(hdc);
            HGDIOBJ oldBmp = SelectObject(memDC, hBmp);
            BitBlt(hdc, 0, 0, bmpW, bmpH, memDC, 0, 0, SRCCOPY);
            SelectObject(memDC, oldBmp);
            DeleteDC(memDC);
        }

        // Draw text in bottom-left corner, with padding
        const int pad_x = 32;
        const int pad_y = 32;
        RECT clientRect;
        GetClientRect(hwnd, &clientRect);

        RECT textRect;
        textRect.left = pad_x;
        textRect.right = clientRect.right - pad_x;
        textRect.bottom = clientRect.bottom - pad_y;
        textRect.top = textRect.bottom - 200; // Height for text

        SetBkMode(hdc, TRANSPARENT);
        SetTextColor(hdc, RGB(255, 255, 255));
        std::string text = GenerateSystemInfoText();
        DrawTextA(hdc, text.c_str(), -1, &textRect, DT_LEFT | DT_BOTTOM | DT_WORDBREAK | DT_NOCLIP);

        EndPaint(hwnd, &ps);
        return 0;
    }
    case WM_KEYDOWN:
        // Close on ESC, Enter, or Space
        if (wParam == VK_ESCAPE || wParam == VK_RETURN || wParam == VK_SPACE)
        {
            DestroyWindow(hwnd);
        }
        break;

    case WM_DESTROY:
        PostQuitMessage(0);
        return 0;

    default:
        return DefWindowProcA(hwnd, msg, wParam, lParam);
    }
    return 0;
}