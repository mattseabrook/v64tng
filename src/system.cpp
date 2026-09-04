// system.cpp

#include <windows.h>
#include <intrin.h>
#include <algorithm>
#include <array>
#include <string>
#include <cstdio>
#include <vector>

#include <commctrl.h>

#include <png.h>

#include "../resource.h"
#include "system.h"
#include "config.h"
#include "version.h"
#include "window.h"
#include "game.h"

// Forward declaration of window procedure
LRESULT CALLBACK SystemInfoWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);

// CPU feature detection structure
CPUFeatures cpuFeatures;

//
// Detect CPU features using CPUID instruction
//
void DetectCPUFeatures()
{
    int cpuInfo[4] = {0};

    // Check features with function 1
    __cpuid(cpuInfo, 1);
    cpuFeatures.sse = (cpuInfo[3] & (1 << 25)) != 0;    // EDX bit 25
    cpuFeatures.sse2 = (cpuInfo[3] & (1 << 26)) != 0;   // EDX bit 26
    cpuFeatures.sse3 = (cpuInfo[2] & (1 << 0)) != 0;    // ECX bit 0
    cpuFeatures.ssse3 = (cpuInfo[2] & (1 << 9)) != 0;   // ECX bit 9
    cpuFeatures.sse41 = (cpuInfo[2] & (1 << 19)) != 0;  // ECX bit 19
    cpuFeatures.sse42 = (cpuInfo[2] & (1 << 20)) != 0;  // ECX bit 20
    bool avxCpu = (cpuInfo[2] & (1 << 28)) != 0;        // ECX bit 28 AVX
    bool osxsave = (cpuInfo[2] & (1 << 27)) != 0;       // ECX bit 27 OSXSAVE

    // Check features with function 7
    __cpuid(cpuInfo, 7);
    bool avx2Cpu = (cpuInfo[1] & (1 << 5)) != 0;        // EBX bit 5
    cpuFeatures.avx512 = (cpuInfo[1] & (1 << 16)) != 0; // EBX bit 16 (broad brush)

    // OS support check for AVX state (XCR0: XMM bit1 and YMM bit2 must be set)
    bool avxOs = false;
#ifdef _XCR_XFEATURE_ENABLED_MASK
    if (osxsave)
    {
        unsigned long long xcr0 = _xgetbv(_XCR_XFEATURE_ENABLED_MASK);
        avxOs = (xcr0 & 0x6) == 0x6; // XMM (bit1) and YMM (bit2)
    }
#endif
    cpuFeatures.avx = avxCpu && avxOs;
    cpuFeatures.avx2 = avx2Cpu && avxOs;
}

//
// Choose the highest supported SIMD level for hot-path conversions
//
void SetBestSIMDLevel()
{
    using SIMD = GameState::SIMDLevel;
    // Prefer AVX2 when available; else SSSE3; else Scalar
    if (cpuFeatures.avx2)
    {
        state.simd = SIMD::AVX2;
    }
    else if (cpuFeatures.ssse3)
    {
        state.simd = SIMD::SSSE3;
    }
    else
    {
        state.simd = SIMD::Scalar;
    }
}

//
// Generate CPU feature text for system information
//
std::string GenerateSystemInfoText()
{
    std::string text;
    text.reserve(160);
    text += "  SSE: " + std::string(cpuFeatures.sse ? "Yes" : "No") + "\n";
    text += "  SSE2: " + std::string(cpuFeatures.sse2 ? "Yes" : "No") + "\n";
    text += "  SSE3: " + std::string(cpuFeatures.sse3 ? "Yes" : "No") + "\n";
    text += "  SSSE3: " + std::string(cpuFeatures.ssse3 ? "Yes" : "No") + "\n";
    text += "  SSE4.1: " + std::string(cpuFeatures.sse41 ? "Yes" : "No") + "\n";
    text += "  SSE4.2: " + std::string(cpuFeatures.sse42 ? "Yes" : "No") + "\n";
    text += "  AVX: " + std::string(cpuFeatures.avx ? "Yes" : "No") + "\n";
    text += "  AVX2: " + std::string(cpuFeatures.avx2 ? "Yes" : "No") + "\n";
    text += "  AVX-512: " + std::string(cpuFeatures.avx512 ? "Yes" : "No") + "\n";
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
    outBuffer.assign(static_cast<unsigned char *>(pData), static_cast<unsigned char *>(pData) + dataSize);
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

namespace
{
constexpr int kLauncherWidth = 1280;
constexpr int kLauncherHeight = 720;
constexpr COLORREF kBackgroundColor = RGB(135, 112, 202);
constexpr COLORREF kPanelColor = RGB(43, 31, 76);
constexpr COLORREF kPanelBorderColor = RGB(112, 91, 164);
constexpr COLORREF kHeadingColor = RGB(245, 204, 103);
constexpr COLORREF kTextColor = RGB(255, 255, 255);
constexpr COLORREF kMutedTextColor = RGB(206, 197, 229);

enum LauncherControlId : int
{
    IdRenderer = 2001,
    IdDisplay,
    IdWindowSize,
    IdFullscreen,
    IdMusicEnabled,
    IdMusicMode,
    IdMusicVolume,
    IdPcmEnabled,
    IdPcmVolume,
    IdPlay = IDOK,
    IdExit = IDCANCEL
};

struct LauncherState
{
    bool playRequested = false;
    HBITMAP background = nullptr;
    int backgroundWidth = 0;
    int backgroundHeight = 0;
    HFONT headingFont = nullptr;
    HFONT bodyFont = nullptr;
    HFONT buttonFont = nullptr;
    HBRUSH panelBrush = nullptr;
    HWND renderer = nullptr;
    HWND display = nullptr;
    HWND windowSize = nullptr;
    HWND fullscreen = nullptr;
    HWND musicEnabled = nullptr;
    HWND musicMode = nullptr;
    HWND musicVolume = nullptr;
    HWND musicVolumeValue = nullptr;
    HWND pcmEnabled = nullptr;
    HWND pcmVolume = nullptr;
    HWND pcmVolumeValue = nullptr;
};

LauncherState launcher;

void setControlFont(HWND control, HFONT font)
{
    SendMessage(control, WM_SETFONT, reinterpret_cast<WPARAM>(font), TRUE);
}

HWND createLauncherControl(
    HWND parent,
    DWORD extendedStyle,
    const char *className,
    const char *text,
    DWORD style,
    int x,
    int y,
    int width,
    int height,
    LauncherControlId id)
{
    return CreateWindowExA(
        extendedStyle, className, text, WS_CHILD | WS_VISIBLE | style,
        x, y, width, height, parent,
        reinterpret_cast<HMENU>(static_cast<INT_PTR>(id)),
        GetModuleHandle(nullptr), nullptr);
}

void addComboItem(HWND combo, const std::string &label, int value, bool selected)
{
    const LRESULT index = SendMessageA(
        combo, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(label.c_str()));
    if (index == CB_ERR || index == CB_ERRSPACE)
        return;
    SendMessage(combo, CB_SETITEMDATA, static_cast<WPARAM>(index), value);
    if (selected)
        SendMessage(combo, CB_SETCURSEL, static_cast<WPARAM>(index), 0);
}

void setVolumeText(HWND label, int value)
{
    const std::string text = std::to_string(value) + "%";
    SetWindowTextA(label, text.c_str());
}

void updateLauncherControlAvailability()
{
    const bool fullscreen =
        SendMessage(launcher.fullscreen, BM_GETCHECK, 0, 0) == BST_CHECKED;
    const bool musicEnabled =
        SendMessage(launcher.musicEnabled, BM_GETCHECK, 0, 0) == BST_CHECKED;
    const bool pcmEnabled =
        SendMessage(launcher.pcmEnabled, BM_GETCHECK, 0, 0) == BST_CHECKED;
    EnableWindow(launcher.windowSize, !fullscreen);
    EnableWindow(launcher.musicMode, musicEnabled);
    EnableWindow(launcher.musicVolume, musicEnabled);
    EnableWindow(launcher.musicVolumeValue, musicEnabled);
    EnableWindow(launcher.pcmVolume, pcmEnabled);
    EnableWindow(launcher.pcmVolumeValue, pcmEnabled);
}

void populateLauncherControls(HWND hwnd)
{
    launcher.renderer = createLauncherControl(
        hwnd, 0, WC_COMBOBOXA, "", CBS_DROPDOWNLIST | WS_TABSTOP,
        300, 233, 340, 160, IdRenderer);
    const std::string renderer = config.value("renderer", std::string{"Vulkan"});
    addComboItem(launcher.renderer, "Vulkan", 0, renderer != "DirectX");
    addComboItem(launcher.renderer, "DirectX 11", 1, renderer == "DirectX");

    launcher.display = createLauncherControl(
        hwnd, 0, WC_COMBOBOXA, "", CBS_DROPDOWNLIST | WS_TABSTOP,
        300, 277, 340, 240, IdDisplay);
    const int configuredDisplay = config.value("display", 1);
    bool selectedDisplay = false;
    for (const auto &display : state.ui.displays)
    {
        const int width = display.bounds.right - display.bounds.left;
        const int height = display.bounds.bottom - display.bounds.top;
        std::string label = "Display " + std::to_string(display.number) +
            " - " + std::to_string(width) + " x " + std::to_string(height);
        if (display.isPrimary)
            label += " (Primary)";
        const bool selected = display.number == configuredDisplay;
        selectedDisplay = selectedDisplay || selected;
        addComboItem(launcher.display, label, display.number, selected);
    }
    if (!selectedDisplay && !state.ui.displays.empty())
        SendMessage(launcher.display, CB_SETCURSEL, 0, 0);

    launcher.windowSize = createLauncherControl(
        hwnd, 0, WC_COMBOBOXA, "", CBS_DROPDOWNLIST | WS_TABSTOP,
        300, 321, 340, 240, IdWindowSize);
    const int configuredWidth = std::clamp(config.value("width", 640), 640, 3840);
    std::vector<int> widths{640, 960, 1280, 1600, 1920};
    if (std::ranges::find(widths, configuredWidth) == widths.end())
    {
        widths.push_back(configuredWidth);
        std::ranges::sort(widths);
    }
    for (const int width : widths)
    {
        const std::string label = std::to_string(width) + " x " +
            std::to_string(width / 2);
        addComboItem(launcher.windowSize, label, width, width == configuredWidth);
    }

    launcher.fullscreen = createLauncherControl(
        hwnd, 0, WC_BUTTONA, "Fullscreen", BS_AUTOCHECKBOX | WS_TABSTOP,
        296, 365, 344, 28, IdFullscreen);
    SendMessage(launcher.fullscreen, BM_SETCHECK,
        config.value("fullscreen", false) ? BST_CHECKED : BST_UNCHECKED, 0);

    launcher.musicEnabled = createLauncherControl(
        hwnd, 0, WC_BUTTONA, "Enable music", BS_AUTOCHECKBOX | WS_TABSTOP,
        296, 445, 344, 28, IdMusicEnabled);
    SendMessage(launcher.musicEnabled, BM_SETCHECK,
        config.value("midiEnabled", true) ? BST_CHECKED : BST_UNCHECKED, 0);

    launcher.musicMode = createLauncherControl(
        hwnd, 0, WC_COMBOBOXA, "", CBS_DROPDOWNLIST | WS_TABSTOP,
        300, 485, 340, 180, IdMusicMode);
    const std::string musicMode = config.value("midiMode", std::string{"opl3"});
    addComboItem(launcher.musicMode, "OPL3 FM synthesis", 0,
        musicMode != "general" && musicMode != "wavetable");
    addComboItem(launcher.musicMode, "General MIDI device", 1,
        musicMode == "general");
    addComboItem(launcher.musicMode, "SoundFont / Wavetable", 2,
        musicMode == "wavetable");

    launcher.musicVolume = createLauncherControl(
        hwnd, 0, TRACKBAR_CLASSA, "", TBS_HORZ | TBS_NOTICKS | WS_TABSTOP,
        292, 524, 290, 34, IdMusicVolume);
    SendMessage(launcher.musicVolume, TBM_SETRANGE, TRUE, MAKELPARAM(0, 100));
    const int musicVolume = std::clamp(config.value("midiVolume", 100), 0, 100);
    SendMessage(launcher.musicVolume, TBM_SETPOS, TRUE, musicVolume);
    launcher.musicVolumeValue = createLauncherControl(
        hwnd, 0, WC_STATICA, "", SS_RIGHT,
        582, 530, 58, 24, IdMusicVolume);
    setVolumeText(launcher.musicVolumeValue, musicVolume);

    launcher.pcmEnabled = createLauncherControl(
        hwnd, 0, WC_BUTTONA, "Enable sound effects and speech",
        BS_AUTOCHECKBOX | WS_TABSTOP, 296, 570, 344, 28, IdPcmEnabled);
    SendMessage(launcher.pcmEnabled, BM_SETCHECK,
        config.value("pcmEnabled", true) ? BST_CHECKED : BST_UNCHECKED, 0);

    launcher.pcmVolume = createLauncherControl(
        hwnd, 0, TRACKBAR_CLASSA, "", TBS_HORZ | TBS_NOTICKS | WS_TABSTOP,
        292, 608, 290, 34, IdPcmVolume);
    SendMessage(launcher.pcmVolume, TBM_SETRANGE, TRUE, MAKELPARAM(0, 100));
    const int pcmVolume = std::clamp(config.value("pcmVolume", 100), 0, 100);
    SendMessage(launcher.pcmVolume, TBM_SETPOS, TRUE, pcmVolume);
    launcher.pcmVolumeValue = createLauncherControl(
        hwnd, 0, WC_STATICA, "", SS_RIGHT,
        582, 614, 58, 24, IdPcmVolume);
    setVolumeText(launcher.pcmVolumeValue, pcmVolume);

    const HWND play = createLauncherControl(
        hwnd, 0, WC_BUTTONA, "PLAY", BS_OWNERDRAW | BS_DEFPUSHBUTTON | WS_TABSTOP,
        846, 614, 230, 72, IdPlay);
    const HWND exit = createLauncherControl(
        hwnd, 0, WC_BUTTONA, "EXIT", BS_OWNERDRAW | WS_TABSTOP,
        1092, 614, 156, 72, IdExit);

    for (const HWND control : std::array{
        launcher.renderer, launcher.display, launcher.windowSize,
        launcher.fullscreen, launcher.musicEnabled, launcher.musicMode,
        launcher.musicVolumeValue, launcher.pcmEnabled,
        launcher.pcmVolumeValue})
    {
        setControlFont(control, launcher.bodyFont);
    }
    setControlFont(play, launcher.buttonFont);
    setControlFont(exit, launcher.buttonFont);
    updateLauncherControlAvailability();
    SetFocus(play);
}

bool saveLauncherSettings(HWND hwnd)
{
    const auto selectedData = [](HWND combo) -> int
    {
        const LRESULT selection = SendMessage(combo, CB_GETCURSEL, 0, 0);
        if (selection == CB_ERR)
            return -1;
        return static_cast<int>(SendMessage(
            combo, CB_GETITEMDATA, static_cast<WPARAM>(selection), 0));
    };

    const int renderer = selectedData(launcher.renderer);
    const int display = selectedData(launcher.display);
    const int width = selectedData(launcher.windowSize);
    const int musicMode = selectedData(launcher.musicMode);
    if (renderer < 0 || display < 0 || width < 0 || musicMode < 0)
    {
        MessageBoxA(hwnd, "Please select each video and audio option.",
            "Launcher", MB_OK | MB_ICONWARNING);
        return false;
    }

    config["renderer"] = renderer == 0 ? "Vulkan" : "DirectX";
    config["display"] = display;
    config["width"] = width;
    config["fullscreen"] =
        SendMessage(launcher.fullscreen, BM_GETCHECK, 0, 0) == BST_CHECKED;
    config["midiEnabled"] =
        SendMessage(launcher.musicEnabled, BM_GETCHECK, 0, 0) == BST_CHECKED;
    config["midiMode"] = musicMode == 1
        ? "general" : musicMode == 2 ? "wavetable" : "opl3";
    config["midiVolume"] = static_cast<int>(
        SendMessage(launcher.musicVolume, TBM_GETPOS, 0, 0));
    config["pcmEnabled"] =
        SendMessage(launcher.pcmEnabled, BM_GETCHECK, 0, 0) == BST_CHECKED;
    config["pcmVolume"] = static_cast<int>(
        SendMessage(launcher.pcmVolume, TBM_GETPOS, 0, 0));

    try
    {
        save_config("config.json");
        return true;
    }
    catch (const std::exception &error)
    {
        MessageBoxA(hwnd, error.what(), "Cannot save launcher settings",
            MB_OK | MB_ICONERROR);
        return false;
    }
}

void drawLauncherButton(const DRAWITEMSTRUCT &item)
{
    const bool play = item.CtlID == IdPlay;
    const bool pressed = (item.itemState & ODS_SELECTED) != 0;
    const bool focused = (item.itemState & ODS_FOCUS) != 0;
    const COLORREF fill = play
        ? (pressed ? RGB(64, 119, 66) : RGB(82, 151, 84))
        : (pressed ? RGB(104, 45, 58) : RGB(137, 57, 73));

    HBRUSH brush = CreateSolidBrush(fill);
    FillRect(item.hDC, &item.rcItem, brush);
    DeleteObject(brush);
    FrameRect(item.hDC, &item.rcItem, GetSysColorBrush(COLOR_WINDOWFRAME));

    char caption[32]{};
    GetWindowTextA(item.hwndItem, caption, static_cast<int>(std::size(caption)));
    SetBkMode(item.hDC, TRANSPARENT);
    SetTextColor(item.hDC, kTextColor);
    SelectObject(item.hDC, launcher.buttonFont);
    RECT textRect = item.rcItem;
    DrawTextA(item.hDC, caption, -1, &textRect,
        DT_CENTER | DT_VCENTER | DT_SINGLELINE);
    if (focused)
    {
        RECT focus = item.rcItem;
        InflateRect(&focus, -5, -5);
        DrawFocusRect(item.hDC, &focus);
    }
}

void drawLauncherText(HDC hdc)
{
    RECT panel{32, 180, 688, 674};
    FillRect(hdc, &panel, launcher.panelBrush);
    HBRUSH borderBrush = CreateSolidBrush(kPanelBorderColor);
    FrameRect(hdc, &panel, borderBrush);
    DeleteObject(borderBrush);

    SetBkMode(hdc, TRANSPARENT);
    SelectObject(hdc, launcher.headingFont);
    SetTextColor(hdc, kHeadingColor);
    TextOutA(hdc, 62, 197, "VIDEO", 5);
    TextOutA(hdc, 62, 409, "AUDIO", 5);

    SelectObject(hdc, launcher.bodyFont);
    SetTextColor(hdc, kTextColor);
    TextOutA(hdc, 62, 238, "Renderer", 8);
    TextOutA(hdc, 62, 282, "Display", 7);
    TextOutA(hdc, 62, 326, "Window size", 11);
    TextOutA(hdc, 62, 490, "Music output", 12);
    TextOutA(hdc, 62, 532, "Music volume", 12);
    TextOutA(hdc, 62, 616, "SFX volume", 10);

    SelectObject(hdc, launcher.headingFont);
    SetTextColor(hdc, kTextColor);
    const std::string title = "v64tng " V64TNG_VERSION_STRING;
    TextOutA(hdc, 846, 548, title.c_str(), static_cast<int>(title.size()));
    SelectObject(hdc, launcher.bodyFont);
    SetTextColor(hdc, kMutedTextColor);
    TextOutA(hdc, 846, 579, "The 7th Guest engine", 20);
}
}

//
// Show the no-argument launcher and return whether PLAY was selected.
//
bool ShowSystemInfoWindow()
{
    HINSTANCE hInstance = GetModuleHandle(nullptr);
    const char *className = "v64tngLauncherClass";

    INITCOMMONCONTROLSEX controls{};
    controls.dwSize = sizeof(controls);
    controls.dwICC = ICC_BAR_CLASSES | ICC_STANDARD_CLASSES;
    InitCommonControlsEx(&controls);

    launcher = {};
    launcher.headingFont = CreateFontA(
        -24, 0, 0, 0, FW_BOLD, FALSE, FALSE, FALSE, DEFAULT_CHARSET,
        OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY,
        DEFAULT_PITCH | FF_DONTCARE, "Segoe UI");
    launcher.bodyFont = CreateFontA(
        -20, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE, DEFAULT_CHARSET,
        OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY,
        DEFAULT_PITCH | FF_DONTCARE, "Segoe UI");
    launcher.buttonFont = CreateFontA(
        -30, 0, 0, 0, FW_BOLD, FALSE, FALSE, FALSE, DEFAULT_CHARSET,
        OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY,
        DEFAULT_PITCH | FF_DONTCARE, "Segoe UI");
    launcher.panelBrush = CreateSolidBrush(kPanelColor);

    WNDCLASSEXA wc{};
    wc.cbSize = sizeof(wc);
    wc.lpfnWndProc = SystemInfoWndProc;
    wc.hInstance = hInstance;
    wc.lpszClassName = className;
    wc.hCursor = LoadCursor(nullptr, IDC_ARROW);
    wc.hIcon = LoadIcon(hInstance, MAKEINTRESOURCE(IDI_ICON1));
    wc.hbrBackground = GetSysColorBrush(COLOR_WINDOW);
    wc.style = CS_HREDRAW | CS_VREDRAW;

    if (!RegisterClassExA(&wc) && GetLastError() != ERROR_CLASS_ALREADY_EXISTS)
    {
        const DWORD error = GetLastError();
        char buffer[256]{};
        snprintf(buffer, sizeof(buffer),
            "Failed to register launcher class. Error: 0x%lX", error);
        MessageBoxA(nullptr, buffer, "Launcher Error", MB_OK | MB_ICONERROR);
        DeleteObject(launcher.headingFont);
        DeleteObject(launcher.bodyFont);
        DeleteObject(launcher.buttonFont);
        DeleteObject(launcher.panelBrush);
        return false;
    }

    state.ui.displays.clear();
    EnumDisplayMonitors(nullptr, nullptr, MonitorEnumProc, 0);
    const int configuredDisplay = config.value("display", 1);
    const DisplayInfo *selectedDisplay = nullptr;
    for (const auto &display : state.ui.displays)
    {
        if (display.number == configuredDisplay || (!selectedDisplay && display.isPrimary))
            selectedDisplay = &display;
    }

    int x = (GetSystemMetrics(SM_CXSCREEN) - kLauncherWidth) / 2;
    int y = (GetSystemMetrics(SM_CYSCREEN) - kLauncherHeight) / 2;
    if (selectedDisplay)
    {
        const RECT bounds = selectedDisplay->bounds;
        x = bounds.left + (bounds.right - bounds.left - kLauncherWidth) / 2;
        y = bounds.top + (bounds.bottom - bounds.top - kLauncherHeight) / 2;
    }

    HWND hwnd = CreateWindowExA(
        WS_EX_APPWINDOW, className,
        "v64tng " V64TNG_VERSION_STRING " Launcher",
        WS_POPUP, x, y, kLauncherWidth, kLauncherHeight,
        nullptr, nullptr, hInstance, nullptr);
    if (!hwnd)
    {
        const DWORD error = GetLastError();
        char buffer[256]{};
        snprintf(buffer, sizeof(buffer),
            "Failed to create launcher. Error: 0x%lX", error);
        MessageBoxA(nullptr, buffer, "Launcher Error", MB_OK | MB_ICONERROR);
        DeleteObject(launcher.headingFont);
        DeleteObject(launcher.bodyFont);
        DeleteObject(launcher.buttonFont);
        DeleteObject(launcher.panelBrush);
        return false;
    }

    ShowWindow(hwnd, SW_SHOW);
    UpdateWindow(hwnd);

    MSG msg{};
    while (GetMessage(&msg, nullptr, 0, 0) > 0)
    {
        if (msg.message == WM_KEYDOWN && msg.wParam == VK_ESCAPE)
        {
            SendMessage(hwnd, WM_COMMAND, IdExit, 0);
            continue;
        }
        if (msg.message == WM_KEYDOWN && msg.wParam == VK_RETURN)
        {
            SendMessage(hwnd, WM_COMMAND, IdPlay, 0);
            continue;
        }
        if (!IsDialogMessage(hwnd, &msg))
        {
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }
    }
    return launcher.playRequested;
}

////////////////////////////////////////////////////////////////////////
// Window Procedure
////////////////////////////////////////////////////////////////////////
LRESULT CALLBACK SystemInfoWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg)
    {
    case WM_CREATE:
        populateLauncherControls(hwnd);
        return 0;

    case WM_PAINT:
    {
        PAINTSTRUCT ps{};
        HDC hdc = BeginPaint(hwnd, &ps);

        if (!launcher.background)
        {
            std::vector<unsigned char> pngBuffer;
            if (LoadPNGResourceToMemory(IDB_SYSINFO_BG, pngBuffer))
            {
                std::vector<unsigned char> rgb;
                if (DecodePNGToRGB(pngBuffer, rgb,
                    launcher.backgroundWidth, launcher.backgroundHeight))
                {
                    BITMAPINFO bitmapInfo{};
                    bitmapInfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
                    bitmapInfo.bmiHeader.biWidth = launcher.backgroundWidth;
                    bitmapInfo.bmiHeader.biHeight = -launcher.backgroundHeight;
                    bitmapInfo.bmiHeader.biPlanes = 1;
                    bitmapInfo.bmiHeader.biBitCount = 24;
                    bitmapInfo.bmiHeader.biCompression = BI_RGB;
                    void *bits = nullptr;
                    launcher.background = CreateDIBSection(
                        hdc, &bitmapInfo, DIB_RGB_COLORS, &bits, nullptr, 0);
                    if (launcher.background && bits)
                    {
                        auto *destination = static_cast<unsigned char *>(bits);
                        for (size_t i = 0; i < rgb.size(); i += 3)
                        {
                            destination[i] = rgb[i + 2];
                            destination[i + 1] = rgb[i + 1];
                            destination[i + 2] = rgb[i];
                        }
                    }
                }
            }
        }

        RECT client{};
        GetClientRect(hwnd, &client);
        HBRUSH backgroundBrush = CreateSolidBrush(kBackgroundColor);
        FillRect(hdc, &client, backgroundBrush);
        DeleteObject(backgroundBrush);
        if (launcher.background)
        {
            HDC memoryDc = CreateCompatibleDC(hdc);
            HGDIOBJ oldBitmap = SelectObject(memoryDc, launcher.background);
            StretchBlt(hdc, 0, 0, client.right, client.bottom,
                memoryDc, 0, 0, launcher.backgroundWidth,
                launcher.backgroundHeight, SRCCOPY);
            SelectObject(memoryDc, oldBitmap);
            DeleteDC(memoryDc);
        }
        drawLauncherText(hdc);

        EndPaint(hwnd, &ps);
        return 0;
    }

    case WM_DRAWITEM:
    {
        const auto *item = reinterpret_cast<const DRAWITEMSTRUCT *>(lParam);
        if (item && (item->CtlID == IdPlay || item->CtlID == IdExit))
        {
            drawLauncherButton(*item);
            return TRUE;
        }
        break;
    }

    case WM_HSCROLL:
        if (reinterpret_cast<HWND>(lParam) == launcher.musicVolume)
            setVolumeText(launcher.musicVolumeValue, static_cast<int>(
                SendMessage(launcher.musicVolume, TBM_GETPOS, 0, 0)));
        else if (reinterpret_cast<HWND>(lParam) == launcher.pcmVolume)
            setVolumeText(launcher.pcmVolumeValue, static_cast<int>(
                SendMessage(launcher.pcmVolume, TBM_GETPOS, 0, 0)));
        return 0;

    case WM_CTLCOLORBTN:
    case WM_CTLCOLORSTATIC:
        SetBkMode(reinterpret_cast<HDC>(wParam), TRANSPARENT);
        SetTextColor(reinterpret_cast<HDC>(wParam), kTextColor);
        return reinterpret_cast<LRESULT>(launcher.panelBrush);

    case WM_COMMAND:
        switch (LOWORD(wParam))
        {
        case IdPlay:
            if (saveLauncherSettings(hwnd))
            {
                launcher.playRequested = true;
                DestroyWindow(hwnd);
            }
            return 0;
        case IdExit:
            DestroyWindow(hwnd);
            return 0;
        case IdFullscreen:
        case IdMusicEnabled:
        case IdPcmEnabled:
            if (HIWORD(wParam) == BN_CLICKED)
                updateLauncherControlAvailability();
            return 0;
        default:
            break;
        }
        break;

    case WM_KEYDOWN:
        if (wParam == VK_ESCAPE)
        {
            DestroyWindow(hwnd);
            return 0;
        }
        if (wParam == VK_RETURN && saveLauncherSettings(hwnd))
        {
            launcher.playRequested = true;
            DestroyWindow(hwnd);
            return 0;
        }
        break;

    case WM_ERASEBKGND:
        return 1;

    case WM_DESTROY:
        if (launcher.background)
            DeleteObject(launcher.background);
        DeleteObject(launcher.headingFont);
        DeleteObject(launcher.bodyFont);
        DeleteObject(launcher.buttonFont);
        DeleteObject(launcher.panelBrush);
        launcher.background = nullptr;
        launcher.headingFont = nullptr;
        launcher.bodyFont = nullptr;
        launcher.buttonFont = nullptr;
        launcher.panelBrush = nullptr;
        PostQuitMessage(0);
        return 0;

    default:
        break;
    }
    return DefWindowProcA(hwnd, msg, wParam, lParam);
}
