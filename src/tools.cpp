// tools.cpp

#include <sstream>
#include <iomanip>
#include <array>
#include <filesystem>
#include <fstream>
#include <vector>
#include <string>
#include <algorithm>
#include <cwctype>
#include <set>
#include <map>
#include <cstdlib>
#include <stdexcept>

#include <windows.h>
#include <commctrl.h>
#include <commdlg.h>
#include <shlobj.h>

#include "tools.h"
#include "assets.h"
#include "audio.h"
#include "window.h"
#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "extract.h"
#include "cursor.h"
#include "lzss.h"
#include "bitmap.h"
#include "delta.h"
#include "vdx_alpha.h"
#include "vdx_mask_project.h"

#pragma comment(lib, "comctl32.lib")

// Window class name
static const wchar_t* TOOLS_CLASS_NAME = L"v64tngToolsClass";

// Tools window handle (for cleanup)
static HWND g_toolsWindow = nullptr;

// Current state
static int g_currentTab = 0;
static std::string g_currentGJDFile;  // Track current GJD for VDX loading

// Whole-install asset browser state. This is deliberately T7G-only: it
// catalogs ordinary RL/GJD pairs and hands VDX entries to the existing T7G
// decoder. No Groovie 2 resource or video behavior is used here.
struct AssetCatalogEntry {
    std::string name;
    std::string archive;
    std::filesystem::path gjdPath;
    RLEntry entry;
};
static std::vector<AssetCatalogEntry> g_assetCatalog;
static std::filesystem::path g_assetFolder;

// Sorting state for Archive Info

// Sorting state for VDX Info
static int g_vdxSortColumn = -1;
static bool g_vdxSortAscending = true;

// Palette data for 0x20 visualization
static uint8_t g_palette[768] = {0};  // 256 colors * 3 bytes (RGB)
static bool g_hasPalette = false;

// Bitmap data for 0x20 display
static std::vector<uint8_t> g_bitmapData;  // RGB pixel data (current frame for display)
static int g_bitmapWidth = 0;
static int g_bitmapHeight = 0;

static std::vector<RGBColor> g_currentPalette(256);

// Current VDX for delta processing
static VDXFile g_currentVDX;
static VDXFile g_playbackVDX;
static size_t g_playbackFrame = 0;
static bool g_vdxPlaying = false;
static ULONGLONG g_playbackStartTick = 0;
static size_t g_playbackStartFrame = 0;
static constexpr UINT_PTR VDX_PLAYBACK_TIMER = 0x564458;
static std::vector<size_t> g_frameChunks;
static bool g_alphaMode = false;
static int g_alphaBackground = 0;
static bool g_alphaBrush = false;
static int g_alphaBrushSize = 8;
// Per-frame overrides: 0 inherits the write mask, 1 excludes, 255 includes.
static std::map<size_t, std::vector<uint8_t>> g_alphaRestored;
static bool g_alphaStroke = false;
static bool g_alphaErase = false;
static bool g_alphaRevert = false;
static vdxmask::Project g_maskProject;
static std::set<size_t> g_maskDirty;
static bool g_maskSaveErrorShown = false;
static constexpr UINT_PTR VDX_MASK_SAVE_TIMER = 0x4d41534b;
static POINT g_alphaLastPoint{-1, -1};
static size_t g_alphaStrokeFrame = 0;

static std::span<const uint8_t> RestoredVDXPixels(size_t frame)
{
    const auto it = g_alphaRestored.find(frame);
    return it == g_alphaRestored.end() ? std::span<const uint8_t>{}
        : std::span<const uint8_t>(it->second);
}

// Tab indices
enum TabIndex {
    TAB_ASSET_BROWSER = 0,
    TAB_VDX_INFO = 1,
    TAB_CURSORS = 2
};

// Control IDs
enum ControlID {
    IDC_TAB = 1001,

    // Asset Browser tab
    IDC_ASSET_FOLDER_EDIT = 1002,
    IDC_ASSET_BROWSE_BTN = 1003,
    IDC_ASSET_FILTER_EDIT = 1004,
    IDC_ASSET_LIST = 1005,
    IDC_ASSET_STATUS = 1006,
    IDC_ASSET_TREE = 1007, IDC_ASSET_PREVIEW = 1008,
    
    // VDX Info tab - redesigned compact layout with palette
    IDC_VDX_FILE_EDIT = 1020,
    IDC_VDX_BROWSE_BTN = 1021,
    IDC_VDX_HEADER_INFO = 1023,
    IDC_VDX_0x20_LABEL = 1024,
    IDC_VDX_0x20_INFO = 1025,
    IDC_VDX_0x20_LIST = 1026,
    IDC_VDX_PALETTE_LABEL = 1033,
    IDC_VDX_PALETTE = 1034,
    IDC_VDX_BITMAP_LABEL = 1035,
    IDC_VDX_BITMAP = 1036,
    IDC_VDX_0x25_LABEL = 1027,
    IDC_VDX_0x25_LIST = 1028,
    IDC_VDX_DELTA_VIS_CHECK = 1037,
    IDC_VDX_0x80_LABEL = 1029,
    IDC_VDX_0x80_INFO = 1030,
    IDC_VDX_0x80_LIST = 1031,
    IDC_VDX_STATUS = 1032,
    IDC_VDX_PREVIOUS = 1038,
    IDC_VDX_PLAY_PAUSE = 1039,
    IDC_VDX_STOP = 1042,
    IDC_VDX_NEXT = 1043,
    IDC_VDX_FRAME_STATUS = 1044,
    IDC_VDX_ALPHA, IDC_VDX_COLOR, IDC_VDX_SAVE_FRAME, IDC_VDX_DUMP,
    IDC_VDX_BRUSH, IDC_VDX_BRUSH_SIZE, IDC_VDX_BRUSH_RESET,
    
    // Cursors tab
    IDC_CURSOR_STATUS = 1040,
    IDC_CURSOR_EXTRACT_BTN = 1041
};

// Tab controls
static HWND g_hTab = nullptr;
static HWND g_assetControls[8] = {0};  // folder, browse, filter label/edit, values, status, tree, preview
// VDX controls: [0]=edit, [1]=browse, [2]=header info, [3]=0x20 label, [4]=0x20 info,
//               [5]=0x20 list, [6]=palette label, [7]=palette, [8]=0x25 label, [9]=0x25 list, 
//               [10]=0x80 label, [11]=0x80 info, [12]=0x80 list, [13]=status,
//               [14]=bitmap label, [15]=bitmap display, [16]=delta vis checkbox
static HWND g_vdxControls[17] = {0};
static HWND g_vdxPlaybackControls[12] = {nullptr};
static HWND g_cursorControls[2] = {0};    // status, extract btn
static HWND g_currentVDXSortList = nullptr;  // Track which VDX list is being sorted

// VDX chunk data for sorting
struct VDXChunkData {
    int index;
    uint8_t chunkType;
    size_t offset;
    size_t size;
    bool lzssCompressed;
};
static std::vector<VDXChunkData> g_vdxChunks;
static std::string g_currentVDXFile;

// Forward declarations
static LRESULT CALLBACK ToolsWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);
static LRESULT CALLBACK PaletteWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);
static LRESULT CALLBACK BitmapWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);
static void CreateTabs(HWND hwnd);
static void SwitchTab(int tabIndex);
static void CreateAssetBrowserTab(HWND hwnd);
static void CreateVDXInfoTab(HWND hwnd);
static void CreateCursorsTab(HWND hwnd);
static void HideAllTabs();
static void ShowTab(int tabIndex);
static std::string OpenFileDialog(HWND hwnd, const wchar_t* filter, const wchar_t* title);
static std::filesystem::path OpenFolderDialog(HWND hwnd);
static void LoadAssetCatalog(const std::filesystem::path& folder);
static void PopulateAssetList();
static void OpenCatalogAsset(size_t index);
static void SaveCatalogAsset(HWND owner, size_t index);
static void PopulateVDXInfoList(const std::string& filename);
static void PopulateVDXFromArchive(const RLEntry& entry);
static std::wstring FormatOffset(size_t offset);
static std::wstring FormatSize(size_t size);
static int CALLBACK VDXListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
static void CheckROBFile();
static void PrepareVDXPlayback(std::string_view filename, std::span<const uint8_t> bytes);
static void ShowVDXPlaybackFrame();
static void StopVDXPlayback(bool resetFrame);

// All dimensions are logical pixels; split ratios survive window/DPI changes.
static UINT g_toolsDpi = 96;
static HFONT g_toolsFont = nullptr, g_toolsBoldFont = nullptr;
static bool g_toolsFullscreen = false;
static WINDOWPLACEMENT g_toolsPlacement{};
static LONG_PTR g_toolsWindowStyle = 0;
static constexpr int IDC_TOOLS_FULLSCREEN = 1090;
struct ToolSplit {
    RECT hit{}, area{};
    bool vertical = false;
    float ratio = 0.5f;
};
static std::array<ToolSplit, 5> g_toolSplits{{
    {{}, {}, true, .43f}, {{}, {}, false, .24f},
    {{}, {}, false, .76f}, {{}, {}, true, .40f}, {{}, {}, true, .30f}
}};
static int g_dragSplit = -1;
static int ToolPx(int value) { return MulDiv(value, g_toolsDpi, 96); }
static void LayoutTools(HWND hwnd);

static void ToggleToolsFullscreen(HWND hwnd)
{
    if (!g_toolsFullscreen) {
        g_toolsPlacement.length = sizeof(g_toolsPlacement);
        GetWindowPlacement(hwnd, &g_toolsPlacement);
        g_toolsWindowStyle = GetWindowLongPtrW(hwnd, GWL_STYLE);
        MONITORINFO monitor{};
        monitor.cbSize = sizeof(monitor);
        if (!GetMonitorInfoW(MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST), &monitor))
            return;
        g_toolsFullscreen = true;
        SetWindowLongPtrW(hwnd, GWL_STYLE, g_toolsWindowStyle & ~WS_OVERLAPPEDWINDOW);
        SetWindowPos(hwnd, nullptr, monitor.rcMonitor.left, monitor.rcMonitor.top,
            monitor.rcMonitor.right - monitor.rcMonitor.left,
            monitor.rcMonitor.bottom - monitor.rcMonitor.top,
            SWP_NOZORDER | SWP_FRAMECHANGED);
    } else {
        g_toolsFullscreen = false;
        SetWindowLongPtrW(hwnd, GWL_STYLE, g_toolsWindowStyle);
        SetWindowPlacement(hwnd, &g_toolsPlacement);
        SetWindowPos(hwnd, nullptr, 0, 0, 0, 0,
            SWP_NOMOVE | SWP_NOSIZE | SWP_NOZORDER | SWP_FRAMECHANGED);
    }
}

static void ApplyToolsFont(HWND hwnd)
{
    HFONT oldFont = g_toolsFont, oldBold = g_toolsBoldFont;
    static UINT previousDpi = 96;
    const UINT columnDpi = oldFont ? previousDpi : 96;
    for (HWND list : {g_assetControls[4],
            g_vdxControls[5], g_vdxControls[9], g_vdxControls[12]}) {
        const int count = Header_GetItemCount(ListView_GetHeader(list));
        for (int i = 0; i < count; ++i) {
            int width = ListView_GetColumnWidth(list, i);
            if (!oldFont) width = (std::max)(width, i == 0 ? 42 : 62);
            ListView_SetColumnWidth(list, i, MulDiv(width, g_toolsDpi, columnDpi));
        }
    }
    previousDpi = g_toolsDpi;
    g_toolsFont = CreateFontW(-MulDiv(9, g_toolsDpi, 72), 0, 0, 0, FW_NORMAL,
        FALSE, FALSE, FALSE, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS,
        CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY, DEFAULT_PITCH, L"Segoe UI");
    LOGFONTW bold{};
    GetObjectW(g_toolsFont, sizeof(bold), &bold);
    bold.lfWeight = FW_SEMIBOLD;
    g_toolsBoldFont = CreateFontIndirectW(&bold);
    EnumChildWindows(hwnd, [](HWND child, LPARAM) -> BOOL {
        SendMessageW(child, WM_SETFONT, reinterpret_cast<WPARAM>(g_toolsFont), TRUE);
        wchar_t name[32]{};
        GetClassNameW(child, name, 32);
        if (wcscmp(name, L"Button") == 0 || wcscmp(name, L"Edit") == 0 ||
            wcscmp(name, WC_LISTVIEWW) == 0 || wcscmp(name, WC_TABCONTROLW) == 0)
            SetWindowLongPtrW(child, GWL_STYLE, GetWindowLongPtrW(child, GWL_STYLE) | WS_TABSTOP);
        return TRUE;
    }, 0);
    for (int index : {3, 6, 8, 10, 14})
        SendMessageW(g_vdxControls[index], WM_SETFONT,
            reinterpret_cast<WPARAM>(g_toolsBoldFont), TRUE);
    if (oldFont) DeleteObject(oldFont);
    if (oldBold) DeleteObject(oldBold);
}

static void LayoutTools(HWND hwnd)
{
    if (!g_hTab) return;
    RECT rc{};
    GetClientRect(hwnd, &rc);
    if (rc.right <= 0 || rc.bottom <= 0) return;
    const int pad = ToolPx(8), gap = ToolPx(6), row = ToolPx(24), label = ToolPx(18);
    const int width = (std::max)(1, static_cast<int>(rc.right) - 2 * pad);
    const int top = pad + row + gap, bottom = (std::max)(top + row, static_cast<int>(rc.bottom) - pad - label);
    HDWP batch = BeginDeferWindowPos(40);
    auto move = [&](HWND control, int x, int y, int w, int h) {
        if (!control) return;
        w = (std::max)(1, w); h = (std::max)(1, h);
        if (batch) batch = DeferWindowPos(batch, control, nullptr, x, y, w, h,
            SWP_NOZORDER | SWP_NOACTIVATE);
        else SetWindowPos(control, nullptr, x, y, w, h, SWP_NOZORDER | SWP_NOACTIVATE);
    };
    move(g_hTab, pad, pad, width, row);
    auto fileRow = [&](HWND edit, HWND button, int buttonWidth) {
        move(edit, pad, top, width - buttonWidth - gap, row);
        move(button, rc.right - pad - buttonWidth, top, buttonWidth, row);
    };
    fileRow(g_assetControls[0], g_assetControls[1], ToolPx(112));
    move(g_assetControls[2], pad, top + row + gap, ToolPx(42), row);
    move(g_assetControls[3], pad + ToolPx(46), top + row + gap, width - ToolPx(206), row);
    move(g_assetControls[7], rc.right - pad - ToolPx(154), top + row + gap, ToolPx(154), row);

    move(g_assetControls[5], pad, bottom, width, label);
    move(g_cursorControls[0], pad, top, width, 2 * row);
    move(g_cursorControls[1], pad, top + 2 * row + gap, ToolPx(132), row);
    fileRow(g_vdxControls[0], g_vdxControls[1], ToolPx(80));
    move(g_vdxControls[2], pad, top + row + gap, width, label);
    move(g_vdxControls[13], pad, bottom, width, label);
    const int y = top + row + gap + label + gap, end = bottom - gap;
    auto split = [&](int index, RECT area, int minFirst, int minLast) {
        auto& s = g_toolSplits[index];
        s.area = area;
        int start = s.vertical ? area.left : area.top;
        int length = (s.vertical ? area.right - area.left : area.bottom - area.top) - gap;
        length = (std::max)(0, length);
        int low = (std::min)(minFirst, length / 2);
        int high = (std::max)(low, length - (std::min)(minLast, length / 2));
        int position = start + std::clamp(static_cast<int>(length * s.ratio), low, high);
        s.hit = area;
        if (s.vertical) { s.hit.left = position; s.hit.right = position + gap; }
        else { s.hit.top = position; s.hit.bottom = position + gap; }
        return position;
    };
    const int assetTop = top + 2 * (row + gap);
    const int assetDivider = split(4, {pad, assetTop, rc.right - pad, bottom - gap}, ToolPx(180), ToolPx(320));
    move(g_assetControls[6], pad, assetTop, assetDivider - pad, bottom - gap - assetTop);
    move(g_assetControls[4], assetDivider + gap, assetTop, rc.right - pad - assetDivider - gap, bottom - gap - assetTop);
    const int divider = split(0, {pad, y, rc.right - pad, end}, ToolPx(320), ToolPx(280));
    const int leftWidth = divider - pad, rightX = divider + gap;
    const int rightWidth = rc.right - pad - rightX;
    const int upper = split(1, {pad, y, divider, end - ToolPx(160)}, ToolPx(90), ToolPx(80));
    const int lower = split(2, {pad, upper + gap, divider, end}, ToolPx(115), ToolPx(85));
    move(g_vdxControls[3], pad, y, leftWidth, label);
    move(g_vdxControls[4], pad, y + label, leftWidth, label);
    move(g_vdxControls[5], pad, y + 2 * label, leftWidth, upper - y - 2 * label);
    const int middle = upper + gap;
    const int paletteEdge = split(3, {pad, middle, divider, lower}, ToolPx(124), ToolPx(150));
    const int paletteWidth = paletteEdge - pad, deltaX = paletteEdge + gap;
    move(g_vdxControls[6], pad, middle, paletteWidth, label);
    move(g_vdxControls[7], pad, middle + label, paletteWidth, lower - middle - label);
    move(g_vdxControls[8], deltaX, middle, divider - deltaX, label);
    move(g_vdxControls[9], deltaX, middle + label, divider - deltaX, lower - middle - label);
    move(g_vdxControls[10], pad, lower + gap, leftWidth, label);
    move(g_vdxControls[11], pad, lower + gap + label, leftWidth, label);
    move(g_vdxControls[12], pad, lower + gap + 2 * label, leftWidth, end - lower - gap - 2 * label);
    move(g_vdxControls[14], rightX, y, ToolPx(58), row);
    move(g_vdxPlaybackControls[5], rightX + ToolPx(60), y, ToolPx(108), row);
    move(g_vdxPlaybackControls[6], rightX + ToolPx(170), y, row, row);
    const int brushX = rightX + ToolPx(170) + row + gap;
    move(g_vdxPlaybackControls[9], brushX, y, ToolPx(58), row);
    move(g_vdxPlaybackControls[10], brushX + ToolPx(62), y, ToolPx(62), row);
    move(g_vdxPlaybackControls[11], brushX + ToolPx(128), y, ToolPx(90), row);
    move(g_vdxControls[15], rightX, y + row + gap, rightWidth, end - y - label - 3 * row - 3 * gap);
    const int buttonWidth = (std::min)(ToolPx(78), (rightWidth - 3 * gap) / 4);
    for (int i = 0; i < 4; ++i)
        move(g_vdxPlaybackControls[i], rightX + i * (buttonWidth + gap), end - label - 2 * row - gap, buttonWidth, row);
    move(g_vdxPlaybackControls[7], rightX, end - label - row, (rightWidth - gap) / 2, row);
    move(g_vdxPlaybackControls[8], rightX + (rightWidth + gap) / 2, end - label - row, (rightWidth - gap) / 2, row);
    move(g_vdxPlaybackControls[4], rightX, end - label, rightWidth, label);
    if (batch) EndDeferWindowPos(batch);
    InvalidateRect(hwnd, nullptr, FALSE);
    InvalidateRect(g_vdxControls[7], nullptr, FALSE);
    InvalidateRect(g_vdxControls[15], nullptr, FALSE);
}

static int HitToolSplit(HWND hwnd)
{
    if (g_currentTab != TAB_VDX_INFO && g_currentTab != TAB_ASSET_BROWSER) return -1;
    POINT point{};
    GetCursorPos(&point);
    ScreenToClient(hwnd, &point);
    for (int i = 0; i < static_cast<int>(g_toolSplits.size()); ++i)
        if ((g_currentTab == TAB_ASSET_BROWSER ? i == 4 : i < 4) &&
            PtInRect(&g_toolSplits[i].hit, point)) return i;
    return -1;
}

static bool SaveVDXMaskProject()
{
    if (g_maskDirty.empty()) return true;
    try {
        while (!g_maskDirty.empty()) {
            const size_t frame = *g_maskDirty.begin();
            auto edits = RestoredVDXPixels(frame);
            std::vector<uint8_t> empty;
            if (edits.empty()) {
                empty.resize(size_t(g_playbackVDX.width) * g_playbackVDX.height);
                edits = empty;
            }
            const auto rgba = vdxFrameRGBA(g_playbackVDX, frame,
                g_currentVDX.chunks.at(g_frameChunks.at(frame)), true, 0, edits);
            std::vector<uint8_t> support(rgba.size() / 4);
            for (size_t p = 0; p < support.size(); ++p) support[p] = rgba[p * 4 + 3];
            g_maskProject.save(frame, g_frameChunks.at(frame), edits, support);
            g_maskDirty.erase(frame);
        }
        g_maskSaveErrorShown = false;
        const auto message = L"Mask autosaved: " + g_maskProject.folder.wstring();
        SetWindowTextW(g_vdxControls[13], message.c_str());
        return true;
    } catch (const std::exception &error) {
        SetWindowTextW(g_vdxControls[13], L"MASK NOT SAVED. Edits remain in memory; fix the save error before changing clips or closing.");
        if (!g_maskSaveErrorShown) {
            g_maskSaveErrorShown = true;
            MessageBoxA(g_toolsWindow, error.what(), "Mask autosave failed", MB_OK | MB_ICONERROR);
        }
        return false;
    }
}

static void ShowVDXPlaybackFrame()
{
    if (g_playbackFrame >= g_playbackVDX.frameData.size())
        return;
    const auto& frame = g_playbackVDX.frameData[g_playbackFrame];
    if (!frame || frame->empty())
        return;
    const auto rgba = vdxFrameRGBA(g_playbackVDX, g_playbackFrame,
        g_currentVDX.chunks.at(g_frameChunks.at(g_playbackFrame)), g_alphaMode, g_alphaBackground, RestoredVDXPixels(g_playbackFrame));
    g_bitmapData.resize(frame->size());
    for (size_t p = 0; p < rgba.size() / 4; ++p) {
        const size_t x = p % g_playbackVDX.width, y = p / g_playbackVDX.width;
        const uint8_t checker = ((x / 8 + y / 8) % 2) ? 192 : 240;
        for (size_t c = 0; c < 3; ++c)
            g_bitmapData[p * 3 + c] = rgba[p * 4 + 3] ? rgba[p * 4 + c] : checker;
    }
    g_bitmapWidth = g_playbackVDX.width;
    g_bitmapHeight = g_playbackVDX.height;
    if (g_vdxControls[15])
        InvalidateRect(g_vdxControls[15], nullptr, FALSE);
    const std::wstring label = std::format(L"Frame {} / {}{}",
        g_playbackFrame + 1, g_playbackVDX.frameData.size(),
        g_alphaRestored.contains(g_playbackFrame) ? L" - edited mask" : L"");
    SetWindowTextW(g_vdxPlaybackControls[4], label.c_str());
}

static void StopVDXPlayback(bool resetFrame)
{
    g_vdxPlaying = false;
    if (g_toolsWindow)
        KillTimer(g_toolsWindow, VDX_PLAYBACK_TIMER);
    wavStop();
    SetWindowTextW(g_vdxPlaybackControls[1], L"Play");
    if (resetFrame && !g_playbackVDX.frameData.empty()) {
        g_playbackFrame = 0;
        ShowVDXPlaybackFrame();
    }
}

static void PrepareVDXPlayback(std::string_view filename, std::span<const uint8_t> bytes)
{
    StopVDXPlayback(false);
    g_frameChunks.clear();
    g_bitmapData.clear();
    g_alphaRestored.clear();
    g_maskProject = {};
    g_maskDirty.clear();
    g_maskSaveErrorShown = false;
    g_alphaStroke = false;
    g_playbackVDX = {};
    g_playbackVDX = parseVDXFile(filename, bytes);
    parseVDXChunks(g_playbackVDX);
    g_frameChunks.clear();
    // parseVDXChunks releases its source chunks and bytes after decoding.
    // The inspector retains the original VDX separately for row selection
    // and alpha extraction; its chunk spans remain backed by owned rawData.
    for (size_t i = 0; i < g_currentVDX.chunks.size(); ++i) {
        const auto type = g_currentVDX.chunks[i].chunkType;
        if (type == 0x20 || type == 0x25 ||
            (type == 0x00 && !g_frameChunks.empty()))
            g_frameChunks.push_back(i);
    }
    if (g_frameChunks.size() != g_playbackVDX.frameData.size())
        throw std::runtime_error("VDX frame/chunk count mismatch");
    g_playbackFrame = 0;
    try {
        g_maskProject.open(filename, bytes, g_playbackVDX.width,
            g_playbackVDX.height, g_playbackVDX.frameData.size());
        g_maskProject.load(g_alphaRestored);
    } catch (const std::exception &error) {
        g_maskProject.initialized = false;
        MessageBoxA(g_toolsWindow, error.what(), "Cannot load mask project; painting disabled", MB_OK | MB_ICONERROR);
    }
    SetTimer(g_toolsWindow, VDX_MASK_SAVE_TIMER, 1000, nullptr);
    ShowVDXPlaybackFrame();
}

/*
===============================================================================
Function: FormatOffset - Format offset with commas (e.g., 1,234,567)
===============================================================================
*/
static std::wstring FormatOffset(size_t offset)
{
    std::wstring result = std::to_wstring(offset);
    int insertPos = static_cast<int>(result.length()) - 3;
    while (insertPos > 0) {
        result.insert(insertPos, L",");
        insertPos -= 3;
    }
    return result;
}

/*
===============================================================================
Function: FormatSize - Format size as KB or MB
===============================================================================
*/
static std::wstring FormatSize(size_t size)
{
    wchar_t buf[64];
    if (size >= 1024 * 1024) {
        double mb = static_cast<double>(size) / (1024.0 * 1024.0);
        swprintf(buf, 64, L"%.2f MB", mb);
    } else {
        double kb = static_cast<double>(size) / 1024.0;
        swprintf(buf, 64, L"%.2f KB", kb);
    }
    return buf;
}

/*
===============================================================================
Function: RegisterToolsWindowClass
===============================================================================
*/
void RegisterToolsWindowClass(HINSTANCE hInstance)
{
    WNDCLASSEXW wc = {};
    wc.cbSize = sizeof(WNDCLASSEXW);
    wc.lpfnWndProc = ToolsWndProc;
    wc.hInstance = hInstance;
    wc.lpszClassName = TOOLS_CLASS_NAME;
    wc.hCursor = LoadCursor(nullptr, IDC_ARROW);
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
    wc.style = CS_DBLCLKS;
    
    RegisterClassExW(&wc);
}

/*
===============================================================================
Function: ShowToolsWindow
===============================================================================
*/
void ShowToolsWindow(HWND hParent)
{
    // If already open, just bring to front
    if (g_toolsWindow && IsWindow(g_toolsWindow)) {
        SetForegroundWindow(g_toolsWindow);
        return;
    }
    
    // Initialize common controls
    INITCOMMONCONTROLSEX icc = {};
    icc.dwSize = sizeof(icc);
    icc.dwICC = ICC_TAB_CLASSES | ICC_TREEVIEW_CLASSES | ICC_LISTVIEW_CLASSES | ICC_STANDARD_CLASSES;
    InitCommonControlsEx(&icc);
    
    HINSTANCE hInstance = GetModuleHandle(nullptr);
    RegisterToolsWindowClass(hInstance);
    
    // Window size to accommodate 640px bitmap + left panel + margins
    const int WINDOW_WIDTH = 1050;
    const int WINDOW_HEIGHT = 580;
    
    int x = CW_USEDEFAULT;
    int y = CW_USEDEFAULT;
    
    if (hParent) {
        RECT parentRect;
        GetWindowRect(hParent, &parentRect);
        x = parentRect.left + ((parentRect.right - parentRect.left) - WINDOW_WIDTH) / 2;
        y = parentRect.top + ((parentRect.bottom - parentRect.top) - WINDOW_HEIGHT) / 2;
    }
    
    g_toolsWindow = CreateWindowExW(
        WS_EX_OVERLAPPEDWINDOW,
        TOOLS_CLASS_NAME,
        L"Tools",
        WS_OVERLAPPEDWINDOW | WS_VISIBLE | WS_CLIPCHILDREN,
        x, y, WINDOW_WIDTH, WINDOW_HEIGHT,
        hParent,
        nullptr,
        hInstance,
        nullptr
    );
    
    if (g_toolsWindow) {
        ShowWindow(g_toolsWindow, SW_SHOW);
        UpdateWindow(g_toolsWindow);
    }
}

/*
===============================================================================
Function: CloseToolsWindow - Called when main app closes
===============================================================================
*/
bool ToolsTranslateMessage(MSG* message)
{
    if (!g_toolsWindow || (message->hwnd != g_toolsWindow && !IsChild(g_toolsWindow, message->hwnd)))
        return false;
    if (message->message == WM_KEYDOWN && (message->wParam == VK_F11 ||
        (message->wParam == VK_ESCAPE && g_toolsFullscreen))) {
        if (!(message->lParam & (1LL << 30))) ToggleToolsFullscreen(g_toolsWindow);
        return true;
    }
    return IsDialogMessageW(g_toolsWindow, message) != FALSE;
}

void CloseToolsWindow()
{
    if (g_toolsWindow && IsWindow(g_toolsWindow)) {
        DestroyWindow(g_toolsWindow);
        g_toolsWindow = nullptr;
    }
}

/*
===============================================================================
Function: OpenFileDialog
===============================================================================
*/
static std::string OpenFileDialog(HWND hwnd, const wchar_t* filter, const wchar_t* title)
{
    wchar_t filename[MAX_PATH] = {0};
    
    OPENFILENAMEW ofn = {};
    ofn.lStructSize = sizeof(ofn);
    ofn.hwndOwner = hwnd;
    ofn.lpstrFilter = filter;
    ofn.lpstrFile = filename;
    ofn.nMaxFile = MAX_PATH;
    ofn.lpstrTitle = title;
    ofn.Flags = OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_NOCHANGEDIR;
    
    if (GetOpenFileNameW(&ofn)) {
        int size = WideCharToMultiByte(CP_UTF8, 0, filename, -1, nullptr, 0, nullptr, nullptr);
        std::string result(size - 1, 0);
        WideCharToMultiByte(CP_UTF8, 0, filename, -1, &result[0], size, nullptr, nullptr);
        return result;
    }
    return "";
}

/*
===============================================================================
Function: OpenFolderDialog
===============================================================================
*/
static std::filesystem::path OpenFolderDialog(HWND hwnd)
{
    BROWSEINFOW browse = {};
    browse.hwndOwner = hwnd;
    browse.lpszTitle = L"Select a folder";
    browse.ulFlags = BIF_RETURNONLYFSDIRS | BIF_NEWDIALOGSTYLE;

    PIDLIST_ABSOLUTE item = SHBrowseForFolderW(&browse);
    if (!item)
        return {};

    wchar_t folder[MAX_PATH] = {};
    const bool resolved = SHGetPathFromIDListW(item, folder) != FALSE;
    CoTaskMemFree(item);
    return resolved ? std::filesystem::path(folder) : std::filesystem::path{};
}

static void SaveVDXFrame(const std::filesystem::path &path, size_t frame)
{
    if (!g_alphaMode && g_playbackVDX.frameIndices.at(frame) &&
        !g_playbackVDX.frameIndices.at(frame)->empty()) {
        savePNG(path.string(), *g_playbackVDX.frameIndices.at(frame),
            g_playbackVDX.width, g_playbackVDX.height, false, g_playbackVDX.framePalettes.at(frame));
        return;
    }
    const auto rgba = vdxFrameRGBA(g_playbackVDX, frame,
        g_currentVDX.chunks.at(g_frameChunks.at(frame)), g_alphaMode, g_alphaBackground, RestoredVDXPixels(frame));
    savePNG(path.string(), rgba, g_playbackVDX.width, g_playbackVDX.height, true);
}

static void ExportVDX(HWND hwnd, bool sequence)
{
    if (g_playbackVDX.frameData.empty()) return;
    StopVDXPlayback(false);
    try {
        if (!sequence) {
            wchar_t filename[MAX_PATH]{};
            const auto name = std::format(L"{:05}.png", g_playbackFrame);
            wcscpy_s(filename, name.c_str());
            OPENFILENAMEW dialog{};
            dialog.lStructSize = sizeof(dialog);
            dialog.hwndOwner = hwnd;
            dialog.lpstrFilter = L"PNG files\0*.png\0\0";
            dialog.lpstrFile = filename;
            dialog.nMaxFile = MAX_PATH;
            dialog.lpstrDefExt = L"png";
            dialog.Flags = OFN_OVERWRITEPROMPT | OFN_PATHMUSTEXIST;
            if (!GetSaveFileNameW(&dialog)) return;
            SaveVDXFrame(filename, g_playbackFrame);
            SetWindowTextW(g_vdxControls[13], L"Frame saved.");
        } else {
            const auto parent = OpenFolderDialog(hwnd);
            if (parent.empty()) return;
            const auto folder = parent / std::filesystem::path(g_playbackVDX.filename).stem();
            if (!std::filesystem::create_directory(folder))
                throw std::runtime_error("Output folder already exists. Choose another parent folder or rename the existing output.");
            SetCursor(LoadCursor(nullptr, IDC_WAIT));
            for (size_t frame = 0; frame < g_playbackVDX.frameData.size(); ++frame) {
                SaveVDXFrame(folder / std::format("{:05}.png", frame), frame);
                const auto progress = std::format(L"Exporting PNGs: {} / {}", frame + 1, g_playbackVDX.frameData.size());
                SetWindowTextW(g_vdxControls[13], progress.c_str());
                UpdateWindow(g_vdxControls[13]);
            }
            const auto message = L"PNG sequence saved to " + folder.wstring();
            SetWindowTextW(g_vdxControls[13], message.c_str());
            SetCursor(LoadCursor(nullptr, IDC_ARROW));
        }
    } catch (const std::exception &error) {
        SetCursor(LoadCursor(nullptr, IDC_ARROW));
        SetWindowTextW(g_vdxControls[13], L"PNG export failed; any completed frames remain in the destination.");
        MessageBoxA(hwnd, error.what(), "PNG export failed", MB_OK | MB_ICONERROR);
    }
}

static std::string TrimResourceName(const std::string& name)
{
    const size_t end = name.find('\0');
    return name.substr(0, end);
}

static std::string LowerAscii(std::string value)
{
    std::transform(value.begin(), value.end(), value.begin(),
        [](unsigned char ch) { return static_cast<char>(std::tolower(ch)); });
    return value;
}

static std::filesystem::path FindSiblingWithExtension(
    const std::filesystem::path& source, std::string_view extension)
{
    const std::string wantedStem = LowerAscii(source.stem().string());
    const std::string wantedExtension = LowerAscii(std::string(extension));
    for (const auto& item : std::filesystem::directory_iterator(source.parent_path())) {
        if (!item.is_regular_file())
            continue;
        const std::filesystem::path candidate = item.path();
        if (LowerAscii(candidate.stem().string()) == wantedStem &&
            LowerAscii(candidate.extension().string()) == wantedExtension)
            return candidate;
    }
    return {};
}

/*
===============================================================================
Function: PopulateAssetList
===============================================================================
*/


/*
===============================================================================
Function: LoadAssetCatalog
===============================================================================
*/
#include "tools_asset_tree.inl"

static void LoadAssetCatalog(const std::filesystem::path& folder)
{
    ClearAssetTree();
    g_assetCatalog.clear();
    g_assetFolder.clear();

    try {
        if (folder.empty() || !std::filesystem::is_directory(folder))
            throw std::runtime_error("The selected asset folder does not exist.");

        std::vector<std::filesystem::path> rlFiles;
        for (const auto& item : std::filesystem::directory_iterator(folder)) {
            if (item.is_regular_file() &&
                LowerAscii(item.path().extension().string()) == ".rl")
                rlFiles.push_back(item.path());
        }
        std::sort(rlFiles.begin(), rlFiles.end(),
            [](const auto& a, const auto& b) {
                return LowerAscii(a.filename().string()) < LowerAscii(b.filename().string());
            });

        for (const std::filesystem::path& rlPath : rlFiles) {
            const std::filesystem::path gjdPath = FindSiblingWithExtension(rlPath, ".gjd");
            if (gjdPath.empty())
                continue;

            auto parsed = parseRLFile(rlPath.string());
            if (!parsed)
                continue;

            const size_t gjdSize = std::filesystem::file_size(gjdPath);
            const std::string archive = rlPath.stem().string();
            for (const RLEntry& entry : *parsed) {
                if (entry.offset > gjdSize || entry.length > gjdSize - entry.offset)
                    continue;
                g_assetCatalog.push_back({
                    TrimResourceName(entry.filename), archive, gjdPath, entry
                });
            }
        }

        if (g_assetCatalog.empty())
            throw std::runtime_error("No matching RL/GJD archive pairs were found.");

        setAssetRoot(folder);
        g_assetFolder = assetRoot();
        SetWindowTextW(g_assetControls[0], g_assetFolder.wstring().c_str());
        std::stable_sort(g_assetCatalog.begin(), g_assetCatalog.end(),
            [](const AssetCatalogEntry& a, const AssetCatalogEntry& b) {
                const std::string aName = LowerAscii(a.name);
                const std::string bName = LowerAscii(b.name);
                if (aName != bName)
                    return aName < bName;
                return LowerAscii(a.archive) < LowerAscii(b.archive);
            });
        PopulateAssetList();
    }
    catch (const std::exception& e) {
        g_assetCatalog.clear();
        const std::string message = std::string("Error: ") + e.what();
        SetWindowTextA(g_assetControls[5], message.c_str());
    }
}

/*
===============================================================================
Function: OpenCatalogAsset
===============================================================================
*/
static void OpenCatalogAsset(size_t index)
{
    if (index >= g_assetCatalog.size())
        return;

    const AssetCatalogEntry& asset = g_assetCatalog[index];
    if (LowerAscii(std::filesystem::path(asset.name).extension().string()) != ".vdx") {
        const std::string message = asset.name + " is not a VDX resource. "
            "The browser lists every T7G asset; bitmap preview uses the existing VDX decoder.";
        SetWindowTextA(g_assetControls[5], message.c_str());
        return;
    }

    g_currentGJDFile = asset.gjdPath.string();
    PopulateVDXFromArchive(asset.entry);
    TabCtrl_SetCurSel(g_hTab, TAB_VDX_INFO);
    SwitchTab(TAB_VDX_INFO);
}

/*
===============================================================================
Function: SaveCatalogAsset

Copies one RL-indexed resource out of its GJD without decoding or rewriting it.
For VDX files this preserves the original archive bytes exactly.
===============================================================================
*/
static void SaveCatalogAsset(HWND owner, size_t index)
{
    if (index >= g_assetCatalog.size())
        return;

    const AssetCatalogEntry& asset = g_assetCatalog[index];
    std::array<wchar_t, MAX_PATH> destination{};
    const std::wstring suggested(asset.name.begin(), asset.name.end());
    std::copy_n(suggested.c_str(),
        std::min(suggested.size(), destination.size() - 1), destination.begin());

    const bool isVDX =
        LowerAscii(std::filesystem::path(asset.name).extension().string()) == ".vdx";
    OPENFILENAMEW dialog = {};
    dialog.lStructSize = sizeof(dialog);
    dialog.hwndOwner = owner;
    dialog.lpstrFilter = isVDX
        ? L"VDX files (*.vdx)\0*.vdx\0All files (*.*)\0*.*\0\0"
        : L"All files (*.*)\0*.*\0\0";
    dialog.lpstrFile = destination.data();
    dialog.nMaxFile = static_cast<DWORD>(destination.size());
    dialog.lpstrTitle = isVDX ? L"Save VDX As" : L"Save Resource As";
    dialog.lpstrDefExt = isVDX ? L"vdx" : nullptr;
    dialog.Flags = OFN_OVERWRITEPROMPT | OFN_PATHMUSTEXIST;
    if (!GetSaveFileNameW(&dialog))
        return;

    try {
        std::ifstream source(asset.gjdPath, std::ios::binary);
        if (!source)
            throw std::runtime_error("Cannot open " + asset.gjdPath.string());
        source.seekg(static_cast<std::streamoff>(asset.entry.offset));

        std::ofstream output(destination.data(), std::ios::binary);
        if (!output)
            throw std::runtime_error("Cannot create the selected output file.");

        std::array<char, 64 * 1024> buffer{};
        size_t remaining = asset.entry.length;
        while (remaining != 0) {
            const size_t count = std::min(remaining, buffer.size());
            source.read(buffer.data(), static_cast<std::streamsize>(count));
            if (source.gcount() != static_cast<std::streamsize>(count))
                throw std::runtime_error("The GJD resource ended unexpectedly.");
            output.write(buffer.data(), static_cast<std::streamsize>(count));
            if (!output)
                throw std::runtime_error("Writing the selected output file failed.");
            remaining -= count;
        }
        SetWindowTextA(g_assetControls[5],
            ("Saved original " + asset.name + " bytes.").c_str());
    }
    catch (const std::exception& error) {
        MessageBoxA(owner, error.what(), "Save resource failed", MB_ICONERROR);
    }
}

/*
===============================================================================
Function: CheckROBFile - Check if ROB.GJD exists in current directory
===============================================================================
*/
static void CheckROBFile()
{
    if (std::filesystem::exists(assetPath("ROB.GJD"))) {
        SetWindowTextA(g_cursorControls[0], "ROB.GJD found. Click Extract to export cursor images.");
        EnableWindow(g_cursorControls[1], TRUE);
    } else {
        SetWindowTextA(g_cursorControls[0], "ROB.GJD not found!");
        EnableWindow(g_cursorControls[1], FALSE);
    }
}

/*
===============================================================================
Function: PaletteWndProc - Custom control to draw 16x16 color palette grid
===============================================================================
*/
static LRESULT CALLBACK PaletteWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg) {
    case WM_PAINT: {
        PAINTSTRUCT ps;
        HDC hdc = BeginPaint(hwnd, &ps);
        
        RECT rc;
        GetClientRect(hwnd, &rc);
        
        // Fill background
        HBRUSH bgBrush = CreateSolidBrush(GetSysColor(COLOR_3DFACE));
        FillRect(hdc, &rc, bgBrush);
        DeleteObject(bgBrush);
        
        if (g_hasPalette) {
            
            for (int y = 0; y < 16; y++) {
                for (int x = 0; x < 16; x++) {
                    int idx = y * 16 + x;
                    uint8_t r = g_palette[idx * 3 + 0];
                    uint8_t g = g_palette[idx * 3 + 1];
                    uint8_t b = g_palette[idx * 3 + 2];
                    
                    RECT cellRc = {
                        x * rc.right / 16,
                        y * rc.bottom / 16,
                        (x + 1) * rc.right / 16,
                        (y + 1) * rc.bottom / 16
                    };
                    
                    HBRUSH brush = CreateSolidBrush(RGB(r, g, b));
                    FillRect(hdc, &cellRc, brush);
                    DeleteObject(brush);
                }
            }
        }
        
        EndPaint(hwnd, &ps);
        return 0;
    }
    }
    return DefWindowProcW(hwnd, msg, wParam, lParam);
}

// Map through the same centered, aspect-preserving rectangle used for drawing.
static bool VDXBrushPoint(HWND hwnd, LPARAM lParam, POINT &point)
{
    if (g_bitmapWidth <= 0 || g_bitmapHeight <= 0) return false;
    RECT rc{};
    GetClientRect(hwnd, &rc);
    const double scale = (std::min)(double(rc.right) / g_bitmapWidth,
        double(rc.bottom) / g_bitmapHeight);
    const int width = (std::max)(1, int(g_bitmapWidth * scale));
    const int height = (std::max)(1, int(g_bitmapHeight * scale));
    const int x = static_cast<short>(LOWORD(lParam)) - (rc.right - width) / 2;
    const int y = static_cast<short>(HIWORD(lParam)) - (rc.bottom - height) / 2;
    if (x < 0 || y < 0 || x >= width || y >= height) return false;
    point = {x * g_bitmapWidth / width, y * g_bitmapHeight / height};
    return true;
}

static void PaintVDXBrush(POINT point)
{
    auto &mask = g_alphaRestored[g_playbackFrame];
    if (mask.empty()) mask.resize(size_t(g_bitmapWidth) * g_bitmapHeight);
    if (g_alphaLastPoint.x < 0) g_alphaLastPoint = point;
    const int dx = point.x - g_alphaLastPoint.x, dy = point.y - g_alphaLastPoint.y;
    const int steps = (std::max)(1, (std::max)(std::abs(dx), std::abs(dy)));
    // Interpolate in source pixels so fast mouse movements leave no gaps.
    for (int step = 0; step <= steps; ++step) {
        const int cx = g_alphaLastPoint.x + dx * step / steps;
        const int cy = g_alphaLastPoint.y + dy * step / steps;
        const int radius = g_alphaBrushSize / 2;
        for (int y = cy - radius; y < cy - radius + g_alphaBrushSize; ++y)
            for (int x = cx - radius; x < cx - radius + g_alphaBrushSize; ++x)
                if (x >= 0 && y >= 0 && x < g_bitmapWidth && y < g_bitmapHeight)
                    mask[size_t(y) * g_bitmapWidth + x] = g_alphaRevert ? 0 : (g_alphaErase ? 1 : 255);
    }
    g_alphaLastPoint = point;
    g_maskDirty.insert(g_playbackFrame);
    ShowVDXPlaybackFrame();
}

/*
===============================================================================
Function: BitmapWndProc - Custom control to display 0x20 bitmap at 1:1 scale
===============================================================================
*/
static LRESULT CALLBACK BitmapWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg) {
    case WM_SETCURSOR:
        if (g_alphaBrush && g_alphaMode) {
            SetCursor(LoadCursor(nullptr, IDC_CROSS));
            return TRUE;
        }
        break;
    case WM_LBUTTONDOWN:
    case WM_RBUTTONDOWN: {
        POINT point{};
        if (!g_alphaBrush || !g_alphaMode || !g_maskProject.initialized || g_playbackVDX.frameData.empty() ||
            !VDXBrushPoint(hwnd, lParam, point)) break;
        StopVDXPlayback(false);
        g_alphaStroke = true;
        g_alphaErase = msg == WM_RBUTTONDOWN;
        g_alphaRevert = g_alphaErase && (wParam & MK_SHIFT);
        g_alphaStrokeFrame = g_playbackFrame;
        g_alphaLastPoint = {-1, -1};
        SetCapture(hwnd);
        PaintVDXBrush(point);
        return 0;
    }
    case WM_MOUSEMOVE:
        if (g_alphaStroke && GetCapture() == hwnd) {
            POINT point{};
            if (g_alphaMode && g_alphaBrush && g_alphaStrokeFrame == g_playbackFrame &&
                VDXBrushPoint(hwnd, lParam, point))
                PaintVDXBrush(point);
            else
                g_alphaLastPoint = {-1, -1};
            return 0;
        }
        break;
    case WM_LBUTTONUP:
    case WM_RBUTTONUP:
        if (g_alphaStroke) {
            g_alphaStroke = false;
            if (GetCapture() == hwnd) ReleaseCapture();
            SaveVDXMaskProject();
            return 0;
        }
        break;
    case WM_CANCELMODE:
        if (GetCapture() == hwnd) ReleaseCapture();
        [[fallthrough]];
    case WM_CAPTURECHANGED:
        g_alphaStroke = false;
        g_alphaLastPoint = {-1, -1};
        SaveVDXMaskProject();
        return 0;
    case WM_PAINT: {
        PAINTSTRUCT ps;
        HDC hdc = BeginPaint(hwnd, &ps);
        
        RECT rc;
        GetClientRect(hwnd, &rc);
        
        // Fill background
        HBRUSH bgBrush = CreateSolidBrush(RGB(0, 0, 0));
        FillRect(hdc, &rc, bgBrush);
        DeleteObject(bgBrush);
        
        if (!g_bitmapData.empty() && g_bitmapWidth > 0 && g_bitmapHeight > 0) {
            // Create DIB section for display
            BITMAPINFO bmi = {};
            bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
            bmi.bmiHeader.biWidth = g_bitmapWidth;
            bmi.bmiHeader.biHeight = -g_bitmapHeight;  // Negative for top-down
            bmi.bmiHeader.biPlanes = 1;
            bmi.bmiHeader.biBitCount = 24;
            bmi.bmiHeader.biCompression = BI_RGB;
            
            // Convert RGB to BGR for Windows
            std::vector<uint8_t> bgrData(g_bitmapData.size());
            for (size_t i = 0; i < g_bitmapData.size(); i += 3) {
                bgrData[i + 0] = g_bitmapData[i + 2];  // B
                bgrData[i + 1] = g_bitmapData[i + 1];  // G
                bgrData[i + 2] = g_bitmapData[i + 0];  // R
            }
            
            const double scale = (std::min)(double(rc.right) / g_bitmapWidth,
                double(rc.bottom) / g_bitmapHeight);
            const int width = (std::max)(1, int(g_bitmapWidth * scale));
            const int height = (std::max)(1, int(g_bitmapHeight * scale));
            SetStretchBltMode(hdc, COLORONCOLOR);
            StretchDIBits(hdc, (rc.right - width) / 2, (rc.bottom - height) / 2,
                width, height, 0, 0, g_bitmapWidth, g_bitmapHeight,
                bgrData.data(), &bmi, DIB_RGB_COLORS, SRCCOPY);
        }
        
        EndPaint(hwnd, &ps);
        return 0;
    }
    }
    return DefWindowProcW(hwnd, msg, wParam, lParam);
}

/*
===============================================================================
Function: ToolsWndProc
===============================================================================
*/
static LRESULT CALLBACK ToolsWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg) {
    case WM_CREATE:
        g_menuActive = true;
        pauseCursorTimer();
        CreateTabs(hwnd);
        CreateAssetBrowserTab(hwnd);
        CreateVDXInfoTab(hwnd);
        CreateCursorsTab(hwnd);
        g_toolsDpi = GetDpiForWindow(hwnd);
        ApplyToolsFont(hwnd);
        LayoutTools(hwnd);
        SwitchTab(TAB_ASSET_BROWSER);
        LoadAssetCatalog(assetRoot());
        return 0;
    
    case WM_DRAWITEM: {
        const auto *draw = reinterpret_cast<DRAWITEMSTRUCT*>(lParam);
        if (draw->CtlID != IDC_VDX_COLOR) break;
        const COLORREF colors[] = {RGB(240,240,240), RGB(255,0,255), RGB(0,0,255), RGB(0,255,0)};
        RECT r = draw->rcItem;
        HBRUSH brush = CreateSolidBrush(colors[g_alphaBackground]);
        FillRect(draw->hDC, &r, brush);
        DeleteObject(brush);
        if (g_alphaBackground == 0) {
            const int tile = (std::max)(1, ToolPx(6));
            brush = CreateSolidBrush(RGB(160,160,160));
            for (int y = r.top; y < r.bottom; y += tile)
                for (int x = r.left; x < r.right; x += tile)
                    if (((x / tile) + (y / tile)) % 2) {
                        RECT cell{x,y,(std::min)(static_cast<LONG>(x+tile),r.right),(std::min)(static_cast<LONG>(y+tile),r.bottom)};
                        FillRect(draw->hDC, &cell, brush);
                    }
            DeleteObject(brush);
        }
        DrawEdge(draw->hDC, &r, EDGE_RAISED, BF_RECT);
        if (draw->itemState & ODS_FOCUS) { InflateRect(&r, -3, -3); DrawFocusRect(draw->hDC, &r); }
        return TRUE;
    }
    case WM_CTLCOLORSTATIC: {
        HDC hdcStatic = (HDC)wParam;
        SetBkMode(hdcStatic, TRANSPARENT);
        SetBkColor(hdcStatic, GetSysColor(COLOR_3DFACE));
        return (LRESULT)GetSysColorBrush(COLOR_3DFACE);
    }
    
    case WM_SETCURSOR: {
        const int hit = HitToolSplit(hwnd);
        if (LOWORD(lParam) == HTCLIENT && hit >= 0) {
            SetCursor(LoadCursor(nullptr, g_toolSplits[hit].vertical ? IDC_SIZEWE : IDC_SIZENS));
            return TRUE;
        }
        break;
    }
    case WM_LBUTTONDBLCLK: {
        const int hit = HitToolSplit(hwnd);
        if (hit >= 0) {
            constexpr float defaults[] = {.43f, .24f, .76f, .40f, .30f};
            g_toolSplits[hit].ratio = defaults[hit];
            LayoutTools(hwnd);
        }
        return 0;
    }
    case WM_LBUTTONDOWN:
        g_dragSplit = HitToolSplit(hwnd);
        if (g_dragSplit >= 0) SetCapture(hwnd);
        return 0;
    case WM_MOUSEMOVE:
        if (g_dragSplit >= 0 && GetCapture() == hwnd) {
            auto& split = g_toolSplits[g_dragSplit];
            POINT point{};
            GetCursorPos(&point);
            ScreenToClient(hwnd, &point);
            const int start = split.vertical ? split.area.left : split.area.top;
            const int length = (split.vertical ? split.area.right - split.area.left :
                split.area.bottom - split.area.top) - ToolPx(6);
            if (length > 0)
                split.ratio = std::clamp(float((split.vertical ? point.x : point.y) - start) / length, 0.0f, 1.0f);
            LayoutTools(hwnd);
        }
        return 0;
    case WM_LBUTTONUP:
    case WM_CANCELMODE:
        if (GetCapture() == hwnd) ReleaseCapture();
        g_dragSplit = -1;
        return 0;
    case WM_CAPTURECHANGED:
        g_dragSplit = -1;
        return 0;
    case WM_KEYDOWN:
        if (wParam == VK_F11 || (wParam == VK_ESCAPE && g_toolsFullscreen)) {
            if (!(lParam & (1LL << 30))) ToggleToolsFullscreen(hwnd);
            return 0;
        }
        break;
    case WM_GETMINMAXINFO: {
        auto* info = reinterpret_cast<MINMAXINFO*>(lParam);
        info->ptMinTrackSize = {ToolPx(760), ToolPx(560)};
        return 0;
    }
    case WM_DPICHANGED: {
        g_toolsDpi = HIWORD(wParam);
        ApplyToolsFont(hwnd);
        const auto* bounds = reinterpret_cast<RECT*>(lParam);
        SetWindowPos(hwnd, nullptr, bounds->left, bounds->top,
            bounds->right - bounds->left, bounds->bottom - bounds->top,
            SWP_NOZORDER | SWP_NOACTIVATE);
        LayoutTools(hwnd);
        return 0;
    }
    case WM_SIZE:
        if (wParam != SIZE_MINIMIZED) LayoutTools(hwnd);
        return 0;
    case WM_PAINT: {
        PAINTSTRUCT paint{};
        HDC dc = BeginPaint(hwnd, &paint);
        FillRect(dc, &paint.rcPaint, GetSysColorBrush(COLOR_3DFACE));
        if (g_currentTab == TAB_VDX_INFO) {
            for (const auto& split : g_toolSplits) {
                RECT line = split.hit;
                if (split.vertical) { line.left += ToolPx(2); line.right = line.left + ToolPx(2); }
                else { line.top += ToolPx(2); line.bottom = line.top + ToolPx(2); }
                FillRect(dc, &line, GetSysColorBrush(COLOR_3DSHADOW));
            }
        }
        EndPaint(hwnd, &paint);
        return 0;
    }

    case WM_NOTIFY: {
        NMHDR* nmhdr = (NMHDR*)lParam;
        
        if (nmhdr->idFrom == IDC_TAB && nmhdr->code == TCN_SELCHANGE) {
            int sel = TabCtrl_GetCurSel(g_hTab);
            SwitchTab(sel);
            
            // Check for ROB.GJD when switching to Cursors tab
            if (sel == TAB_CURSORS) {
                CheckROBFile();
            }
            return 0;
        }

        if (nmhdr->idFrom == IDC_ASSET_TREE) {
            return HandleAssetTreeNotify(hwnd, nmhdr);
        }
        if (nmhdr->idFrom == IDC_ASSET_LIST && nmhdr->code == NM_RCLICK) {
            CopyAssetValue(hwnd);
            return 0;
        }

        if (nmhdr->code == LVN_ITEMCHANGED &&
            (nmhdr->idFrom == IDC_VDX_0x25_LIST || nmhdr->idFrom == IDC_VDX_0x20_LIST)) {
            const auto *change = reinterpret_cast<NMLISTVIEW*>(lParam);
            if ((change->uNewState & LVIS_SELECTED) && !(change->uOldState & LVIS_SELECTED)) {
                LVITEMW item{};
                item.mask = LVIF_PARAM;
                item.iItem = change->iItem;
                if (ListView_GetItem(nmhdr->hwndFrom, &item)) {
                    auto found = std::find(g_frameChunks.begin(), g_frameChunks.end(), static_cast<size_t>(item.lParam));
                    if (found != g_frameChunks.end()) {
                        StopVDXPlayback(false);
                        g_playbackFrame = static_cast<size_t>(found - g_frameChunks.begin());
                        ShowVDXPlaybackFrame();
                    }
                }
            }
            return 0;
        }

        if (nmhdr->code == LVN_COLUMNCLICK) {
            NMLISTVIEW* pnmv = (NMLISTVIEW*)lParam;
            
            if (nmhdr->idFrom == IDC_VDX_0x20_LIST || 
                     nmhdr->idFrom == IDC_VDX_0x25_LIST || 
                     nmhdr->idFrom == IDC_VDX_0x80_LIST) {
                if (g_vdxSortColumn == pnmv->iSubItem) {
                    g_vdxSortAscending = !g_vdxSortAscending;
                } else {
                    g_vdxSortColumn = pnmv->iSubItem;
                    g_vdxSortAscending = true;
                }
                HWND hList = (HWND)nmhdr->hwndFrom;
                g_currentVDXSortList = hList;
                ListView_SortItemsEx(hList, VDXListCompare,
                    (LPARAM)(g_vdxSortColumn | (g_vdxSortAscending ? 0 : 0x1000)));
            }
            return 0;
        }
        break;
    }
    
    case WM_COMMAND: {
        int id = LOWORD(wParam);
        
        switch (id) {
        case IDC_TOOLS_FULLSCREEN:
            ToggleToolsFullscreen(hwnd);
            break;
        case IDC_ASSET_BROWSE_BTN: {
            const std::filesystem::path folder = OpenFolderDialog(hwnd);
            if (!folder.empty())
                LoadAssetCatalog(folder);
            break;
        }

        case IDC_ASSET_FILTER_EDIT:
            if (HIWORD(wParam) == EN_CHANGE)
                PopulateAssetList();
            break;

        case IDC_ASSET_PREVIEW:
            OpenSelectedBrowserAsset();
            break;

        case IDC_VDX_BROWSE_BTN: {
            std::string file = OpenFileDialog(hwnd,
                L"VDX Files (*.VDX)\0*.VDX\0All Files (*.*)\0*.*\0",
                L"Select VDX File");
            if (!file.empty()) {
                SetWindowTextA(g_vdxControls[0], file.c_str());
                PopulateVDXInfoList(file);
            }
            break;
        }

        case IDC_VDX_BRUSH:
            g_alphaBrush = SendMessage(g_vdxPlaybackControls[9], BM_GETCHECK, 0, 0) == BST_CHECKED;
            if (g_alphaBrush) {
                StopVDXPlayback(false);
                g_alphaMode = true;
                SendMessage(g_vdxPlaybackControls[5], BM_SETCHECK, BST_CHECKED, 0);
                SetWindowTextW(g_vdxControls[13], L"Brush: left-drag includes actor; right-drag excludes background; Shift-right-drag undoes edits. Masks autosave.");
            }
            ShowVDXPlaybackFrame();
            break;
        case IDC_VDX_BRUSH_SIZE: {
            HMENU menu = CreatePopupMenu();
            for (int size : {1, 4, 8, 16, 32}) {
                const auto name = std::format(L"{} px", size);
                AppendMenuW(menu, MF_STRING | (size == g_alphaBrushSize ? MF_CHECKED : 0), size, name.c_str());
            }
            RECT rect{};
            GetWindowRect(g_vdxPlaybackControls[10], &rect);
            const int size = TrackPopupMenu(menu, TPM_RETURNCMD | TPM_RIGHTBUTTON,
                rect.left, rect.bottom, 0, hwnd, nullptr);
            DestroyMenu(menu);
            if (size) {
                g_alphaBrushSize = size;
                SetWindowTextW(g_vdxPlaybackControls[10], std::format(L"{} px", size).c_str());
            }
            break;
        }
        case IDC_VDX_BRUSH_RESET:
            if (g_maskProject.initialized && !g_playbackVDX.frameData.empty()) {
                g_alphaRestored.erase(g_playbackFrame);
                g_maskDirty.insert(g_playbackFrame);
                SaveVDXMaskProject();
                ShowVDXPlaybackFrame();
            }
            break;
        case IDC_VDX_ALPHA:
            g_alphaMode = SendMessage(g_vdxPlaybackControls[5], BM_GETCHECK, 0, 0) == BST_CHECKED;
            ShowVDXPlaybackFrame();
            break;
        case IDC_VDX_COLOR: {
            HMENU menu = CreatePopupMenu();
            const wchar_t *names[] = {L"Transparent", L"Magenta (#FF00FF)", L"Blue (#0000FF)", L"Green (#00FF00)"};
            for (int i = 0; i < 4; ++i)
                AppendMenuW(menu, MF_STRING | (i == g_alphaBackground ? MF_CHECKED : 0), i + 1, names[i]);
            RECT rect{};
            GetWindowRect(g_vdxPlaybackControls[6], &rect);
            const int selected = TrackPopupMenu(menu, TPM_RETURNCMD | TPM_RIGHTBUTTON,
                rect.left, rect.bottom, 0, hwnd, nullptr);
            DestroyMenu(menu);
            if (selected) {
                g_alphaBackground = selected - 1;
                SetWindowTextW(g_vdxPlaybackControls[6], names[g_alphaBackground]);
                InvalidateRect(g_vdxPlaybackControls[6], nullptr, TRUE);
                ShowVDXPlaybackFrame();
            }
            break;
        }
        case IDC_VDX_SAVE_FRAME:
            ExportVDX(hwnd, false);
            break;
        case IDC_VDX_DUMP:
            ExportVDX(hwnd, true);
            break;
        case IDC_VDX_PREVIOUS:
            StopVDXPlayback(false);
            if (!g_playbackVDX.frameData.empty()) {
                g_playbackFrame = g_playbackFrame == 0
                    ? g_playbackVDX.frameData.size() - 1 : g_playbackFrame - 1;
                ShowVDXPlaybackFrame();
            }
            break;

        case IDC_VDX_NEXT:
            StopVDXPlayback(false);
            if (!g_playbackVDX.frameData.empty()) {
                g_playbackFrame = (g_playbackFrame + 1) % g_playbackVDX.frameData.size();
                ShowVDXPlaybackFrame();
            }
            break;

        case IDC_VDX_PLAY_PAUSE:
            if (g_playbackVDX.frameData.empty())
                break;
            if (g_vdxPlaying) {
                g_vdxPlaying = false;
                KillTimer(hwnd, VDX_PLAYBACK_TIMER);
                wavPause();
                SetWindowTextW(g_vdxPlaybackControls[1], L"Play");
            } else {
                if (g_playbackFrame + 1 >= g_playbackVDX.frameData.size())
                    g_playbackFrame = 0;
                g_vdxPlaying = true;
                wavStop();
                const auto &audio = g_playbackVDX.audioData;
                const size_t offset = (std::min)(audio.size(), static_cast<size_t>(
                    g_playbackFrame * 22050.0 / vdxPlaybackRate(g_playbackVDX)));
                if (offset < audio.size()) {
                    auto samples = std::make_shared<const std::vector<uint8_t>>(audio.begin() + offset, audio.end());
                    wavPlay(samples, AudioPlaybackFormat{});
                }
                ShowVDXPlaybackFrame();
                g_playbackStartFrame = g_playbackFrame;
                g_playbackStartTick = GetTickCount64();
                SetTimer(hwnd, VDX_PLAYBACK_TIMER, 10, nullptr);
                SetWindowTextW(g_vdxPlaybackControls[1], L"Pause");
            }
            break;

        case IDC_VDX_STOP:
            StopVDXPlayback(true);
            break;
        
        case IDC_CURSOR_EXTRACT_BTN: {
            SetWindowTextA(g_cursorControls[0], "Extracting cursors...");
            UpdateWindow(g_cursorControls[0]);
            extractCursors(assetPath("ROB.GJD").string());
            SetWindowTextA(g_cursorControls[0], "Extraction complete!");
            break;
        }
        

        }
        return 0;
    }

    case WM_TIMER:
        if (wParam == VDX_MASK_SAVE_TIMER) {
            SaveVDXMaskProject();
            return 0;
        }
        if (wParam == VDX_PLAYBACK_TIMER && g_vdxPlaying
            && !g_playbackVDX.frameData.empty()) {
            const size_t frame = g_playbackStartFrame + static_cast<size_t>(
                (GetTickCount64() - g_playbackStartTick) * vdxPlaybackRate(g_playbackVDX) / 1000.0);
            if (frame >= g_playbackVDX.frameData.size()) {
                g_playbackFrame = g_playbackVDX.frameData.size() - 1;
                StopVDXPlayback(false);
                ShowVDXPlaybackFrame();
            } else if (frame != g_playbackFrame) {
                g_playbackFrame = frame;
                ShowVDXPlaybackFrame();
            }
            return 0;
        }
        break;
    
    case WM_CLOSE:
        if (!SaveVDXMaskProject()) return 0;
        DestroyWindow(hwnd);
        return 0;
        
    case WM_DESTROY:
        KillTimer(hwnd, VDX_MASK_SAVE_TIMER);
        SaveVDXMaskProject();
        StopVDXPlayback(false);
        g_menuActive = false;
        resumeCursorTimer();
        g_toolsWindow = nullptr;
        g_hTab = nullptr;
        memset(g_assetControls, 0, sizeof(g_assetControls));
        memset(g_vdxControls, 0, sizeof(g_vdxControls));
        memset(g_vdxPlaybackControls, 0, sizeof(g_vdxPlaybackControls));
        memset(g_cursorControls, 0, sizeof(g_cursorControls));
        ClearAssetTree();
        g_assetCatalog.clear();
        g_assetFolder.clear();
        g_currentGJDFile.clear();
        g_vdxChunks.clear();
        g_currentVDXFile.clear();
        g_playbackVDX = {};
        g_currentVDX = {};
        g_frameChunks.clear();
        g_bitmapData.clear();
        g_hasPalette = false;
        if (g_toolsFont) DeleteObject(g_toolsFont);
        if (g_toolsBoldFont) DeleteObject(g_toolsBoldFont);
        g_toolsFont = g_toolsBoldFont = nullptr;
        g_toolsFullscreen = false;
        g_dragSplit = -1;
        return 0;
    }
    
    return DefWindowProc(hwnd, msg, wParam, lParam);
}

/*
===============================================================================
Function: CreateTabs
===============================================================================
*/
static void CreateTabs(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    RECT rc;
    GetClientRect(hwnd, &rc);
    
    // Tab control only needs to be tall enough for the tab headers (about 25 pixels)
    g_hTab = CreateWindowExW(0, WC_TABCONTROLW, L"",
        WS_CHILD | WS_VISIBLE,
        5, 5, rc.right - 10, 30,
        hwnd, (HMENU)IDC_TAB, hInst, nullptr);
    
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    SendMessage(g_hTab, WM_SETFONT, (WPARAM)hFont, TRUE);
    
    TCITEMW tie = {};
    tie.mask = TCIF_TEXT;
    
    tie.pszText = (LPWSTR)L"Asset Browser";
    TabCtrl_InsertItem(g_hTab, TAB_ASSET_BROWSER, &tie);

    
    tie.pszText = (LPWSTR)L"VDX Info";
    TabCtrl_InsertItem(g_hTab, TAB_VDX_INFO, &tie);
    
    tie.pszText = (LPWSTR)L"Cursors";
    TabCtrl_InsertItem(g_hTab, TAB_CURSORS, &tie);
}

/*
===============================================================================
Function: CreateAssetBrowserTab - Catalog every T7G RL/GJD pair in a folder
===============================================================================
*/
static void CreateAssetBrowserTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);

    g_assetControls[0] = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", L"",
        WS_CHILD | ES_AUTOHSCROLL | ES_READONLY,
        20, 50, 780, 24, hwnd, (HMENU)IDC_ASSET_FOLDER_EDIT, hInst, nullptr);
    g_assetControls[1] = CreateWindowExW(0, L"BUTTON", L"Browse folder...",
        WS_CHILD | BS_PUSHBUTTON,
        810, 50, 120, 24, hwnd, (HMENU)IDC_ASSET_BROWSE_BTN, hInst, nullptr);
    g_assetControls[2] = CreateWindowExW(0, L"STATIC", L"Filter:",
        WS_CHILD | SS_LEFT,
        20, 88, 42, 20, hwnd, nullptr, hInst, nullptr);
    g_assetControls[3] = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", L"",
        WS_CHILD | ES_AUTOHSCROLL,
        68, 84, 300, 24, hwnd, (HMENU)IDC_ASSET_FILTER_EDIT, hInst, nullptr);
    g_assetControls[4] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | WS_TABSTOP | LVS_REPORT | LVS_SHOWSELALWAYS | LVS_SINGLESEL | WS_CLIPSIBLINGS,
        20, 120, 980, 400, hwnd, (HMENU)IDC_ASSET_LIST, hInst, nullptr);
    g_assetControls[5] = CreateWindowExW(0, L"STATIC",
        L"Select a T7G data folder. Double-click a VDX asset to inspect its frames.",
        WS_CHILD | SS_LEFT,
        20, 530, 980, 22, hwnd, (HMENU)IDC_ASSET_STATUS, hInst, nullptr);

    g_assetControls[6] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_TREEVIEWW, L"",
        WS_CHILD | WS_TABSTOP | TVS_HASBUTTONS | TVS_HASLINES | TVS_LINESATROOT | TVS_SHOWSELALWAYS,
        0, 0, 0, 0, hwnd, (HMENU)IDC_ASSET_TREE, hInst, nullptr);
    g_assetControls[7] = CreateWindowExW(0, L"BUTTON", L"Open in VDX Info...",
        WS_CHILD | WS_TABSTOP | WS_DISABLED, 0, 0, 0, 0, hwnd, (HMENU)IDC_ASSET_PREVIEW, hInst, nullptr);
    InitializeAssetTreeIcons();
    for (HWND control : g_assetControls)
        SendMessage(control, WM_SETFONT, (WPARAM)hFont, TRUE);
    ListView_SetExtendedListViewStyle(g_assetControls[4], LVS_EX_FULLROWSELECT | LVS_EX_DOUBLEBUFFER);
    LVCOLUMNW column{};
    column.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
    const wchar_t *names[] = {L"Name", L"Type", L"Data"};
    const int widths[] = {200, 110, 520};
    for (int i = 0; i < 3; ++i) {
        column.iSubItem = i; column.pszText = const_cast<wchar_t*>(names[i]); column.cx = widths[i];
        ListView_InsertColumn(g_assetControls[4], i, &column);
    }
}

/*
===============================================================================
Function: CreateArchiveInfoTab - ListView for RL/GJD contents
===============================================================================
*/


/*
===============================================================================
Function: CreateVDXInfoTab - VDX viewer with palette and bitmap display
===============================================================================
*/
static void CreateVDXInfoTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    HFONT hBoldFont = hFont; // Replaced by the owned, DPI-scaled font after creation.
    
    // Register palette window class
    WNDCLASSW wc = {};
    wc.lpfnWndProc = PaletteWndProc;
    wc.hInstance = hInst;
    wc.lpszClassName = L"VDXPaletteClass";
    wc.hbrBackground = (HBRUSH)(COLOR_3DFACE + 1);
    RegisterClassW(&wc);
    
    // Register bitmap window class
    WNDCLASSW wcBmp = {};
    wcBmp.lpfnWndProc = BitmapWndProc;
    wcBmp.hInstance = hInst;
    wcBmp.lpszClassName = L"VDXBitmapClass";
    wcBmp.hbrBackground = (HBRUSH)GetStockObject(BLACK_BRUSH);
    RegisterClassW(&wcBmp);
    
    // Layout: Left side = controls/lists, Right side = bitmap (640x320)
    // Left column width ~320, gap 10, bitmap starts at 340
    
    // [0] File path edit
    g_vdxControls[0] = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", L"",
        WS_CHILD | ES_AUTOHSCROLL | ES_READONLY,
        10, 45, 900, 22, hwnd, (HMENU)IDC_VDX_FILE_EDIT, hInst, nullptr);
    SendMessage(g_vdxControls[0], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [1] Browse button
    g_vdxControls[1] = CreateWindowExW(0, L"BUTTON", L"Browse...",
        WS_CHILD | BS_PUSHBUTTON,
        920, 45, 80, 22, hwnd, (HMENU)IDC_VDX_BROWSE_BTN, hInst, nullptr);
    SendMessage(g_vdxControls[1], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [2] VDX Header info (identifier + unknown)
    g_vdxControls[2] = CreateWindowExW(0, L"STATIC", L"",
        WS_CHILD | SS_LEFT,
        10, 72, 500, 16, hwnd, (HMENU)IDC_VDX_HEADER_INFO, hInst, nullptr);
    SendMessage(g_vdxControls[2], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // LEFT COLUMN - Bitmap info, Palette, Delta list
    
    // [3] 0x20 Bitmap label (bold)
    g_vdxControls[3] = CreateWindowExW(0, L"STATIC", L"0x20 Bitmap",
        WS_CHILD | SS_LEFT,
        10, 92, 80, 16, hwnd, (HMENU)IDC_VDX_0x20_LABEL, hInst, nullptr);
    SendMessage(g_vdxControls[3], WM_SETFONT, (WPARAM)hBoldFont, TRUE);
    
    // [4] 0x20 info (dimensions, color depth) - on same line
    g_vdxControls[4] = CreateWindowExW(0, L"STATIC", L"",
        WS_CHILD | SS_LEFT,
        90, 92, 250, 16, hwnd, (HMENU)IDC_VDX_0x20_INFO, hInst, nullptr);
    SendMessage(g_vdxControls[4], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [5] 0x20 ListView (with column headers) - single row height
    g_vdxControls[5] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | LVS_REPORT | LVS_SHOWSELALWAYS | LVS_SINGLESEL,
        10, 110, 340, 42, hwnd, (HMENU)IDC_VDX_0x20_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_vdxControls[5],
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_DOUBLEBUFFER);
    
    // [6] Palette label
    g_vdxControls[6] = CreateWindowExW(0, L"STATIC", L"Palette",
        WS_CHILD | SS_LEFT,
        10, 158, 60, 16, hwnd, (HMENU)IDC_VDX_PALETTE_LABEL, hInst, nullptr);
    SendMessage(g_vdxControls[6], WM_SETFONT, (WPARAM)hBoldFont, TRUE);
    
    // [7] Palette grid (128x128 = 8px per cell, no extra border)
    g_vdxControls[7] = CreateWindowExW(WS_EX_CLIENTEDGE, L"VDXPaletteClass", L"",
        WS_CHILD,
        10, 176, 128, 128, hwnd, (HMENU)IDC_VDX_PALETTE, hInst, nullptr);
    
    // [8] 0x25/0x00 Delta label (bold)
    g_vdxControls[8] = CreateWindowExW(0, L"STATIC", L"0x25 Delta / 0x00 Dup",
        WS_CHILD | SS_LEFT,
        150, 158, 200, 16, hwnd, (HMENU)IDC_VDX_0x25_LABEL, hInst, nullptr);
    SendMessage(g_vdxControls[8], WM_SETFONT, (WPARAM)hBoldFont, TRUE);
    
    // [9] 0x25/0x00 ListView - next to palette, extends down
    g_vdxControls[9] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | LVS_REPORT | LVS_SHOWSELALWAYS | LVS_SINGLESEL | WS_VSCROLL,
        150, 176, 200, 258, hwnd, (HMENU)IDC_VDX_0x25_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_vdxControls[9],
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_DOUBLEBUFFER);
    
    // [16] Delta Visualization checkbox - below palette

    
    // [13] Status - at bottom of window
    g_vdxControls[13] = CreateWindowExW(0, L"STATIC", L"Select a VDX file or double-click an entry in Archive Info.",
        WS_CHILD | SS_LEFT,
        10, 500, 990, 18, hwnd, (HMENU)IDC_VDX_STATUS, hInst, nullptr);
    SendMessage(g_vdxControls[13], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [10] 0x80 Audio label (bold) - at bottom, spanning full width
    g_vdxControls[10] = CreateWindowExW(0, L"STATIC", L"0x80 Audio",
        WS_CHILD | SS_LEFT,
        10, 440, 80, 16, hwnd, (HMENU)IDC_VDX_0x80_LABEL, hInst, nullptr);
    SendMessage(g_vdxControls[10], WM_SETFONT, (WPARAM)hBoldFont, TRUE);
    
    // [11] 0x80 info (format details) - next to label
    g_vdxControls[11] = CreateWindowExW(0, L"STATIC", L"",
        WS_CHILD | SS_LEFT,
        100, 440, 250, 16, hwnd, (HMENU)IDC_VDX_0x80_INFO, hInst, nullptr);
    SendMessage(g_vdxControls[11], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [12] 0x80 ListView - wide at bottom
    g_vdxControls[12] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | LVS_REPORT | LVS_SHOWSELALWAYS | WS_HSCROLL,
        10, 458, 340, 38, hwnd, (HMENU)IDC_VDX_0x80_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_vdxControls[12],
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_DOUBLEBUFFER);
    
    // RIGHT COLUMN - Bitmap display (1:1)
    
    // [14] Bitmap label - renamed to just "Preview"
    g_vdxControls[14] = CreateWindowExW(0, L"STATIC", L"Preview",
        WS_CHILD | SS_LEFT,
        360, 92, 200, 16, hwnd, (HMENU)IDC_VDX_BITMAP_LABEL, hInst, nullptr);
    SendMessage(g_vdxControls[14], WM_SETFONT, (WPARAM)hBoldFont, TRUE);
    
    // [15] Bitmap display (640x320 for standard VDX)
    g_vdxControls[15] = CreateWindowExW(WS_EX_CLIENTEDGE, L"VDXBitmapClass", L"",
        WS_CHILD,
        360, 110, 644, 324, hwnd, (HMENU)IDC_VDX_BITMAP, hInst, nullptr);

    // Native T7G VDX playback controls. These operate on the same decoded
    // frame/audio stream shown above; no Groovie 2 player is involved.
    g_vdxPlaybackControls[0] = CreateWindowExW(0, L"BUTTON", L"Previous",
        WS_CHILD | BS_PUSHBUTTON, 360, 440, 78, 25, hwnd,
        (HMENU)IDC_VDX_PREVIOUS, hInst, nullptr);
    g_vdxPlaybackControls[1] = CreateWindowExW(0, L"BUTTON", L"Play",
        WS_CHILD | BS_PUSHBUTTON, 444, 440, 78, 25, hwnd,
        (HMENU)IDC_VDX_PLAY_PAUSE, hInst, nullptr);
    g_vdxPlaybackControls[2] = CreateWindowExW(0, L"BUTTON", L"Stop",
        WS_CHILD | BS_PUSHBUTTON, 528, 440, 78, 25, hwnd,
        (HMENU)IDC_VDX_STOP, hInst, nullptr);
    g_vdxPlaybackControls[3] = CreateWindowExW(0, L"BUTTON", L"Next",
        WS_CHILD | BS_PUSHBUTTON, 612, 440, 78, 25, hwnd,
        (HMENU)IDC_VDX_NEXT, hInst, nullptr);
    g_vdxPlaybackControls[4] = CreateWindowExW(0, L"STATIC", L"No decoded frames",
        WS_CHILD | SS_LEFT, 704, 445, 290, 18, hwnd,
        (HMENU)IDC_VDX_FRAME_STATUS, hInst, nullptr);
    g_vdxPlaybackControls[5] = CreateWindowExW(0, L"BUTTON", L"Alpha Mode",
        WS_CHILD | WS_TABSTOP | BS_AUTOCHECKBOX, 0,0,0,0, hwnd, (HMENU)IDC_VDX_ALPHA, hInst, nullptr);
    g_vdxPlaybackControls[6] = CreateWindowExW(0, L"BUTTON", L"Alpha background",
        WS_CHILD | WS_TABSTOP | BS_OWNERDRAW, 0,0,0,0, hwnd, (HMENU)IDC_VDX_COLOR, hInst, nullptr);
    g_vdxPlaybackControls[7] = CreateWindowExW(0, L"BUTTON", L"Save Frame...",
        WS_CHILD | WS_TABSTOP, 0,0,0,0, hwnd, (HMENU)IDC_VDX_SAVE_FRAME, hInst, nullptr);
    g_vdxPlaybackControls[8] = CreateWindowExW(0, L"BUTTON", L"Dump PNGs...",
        WS_CHILD | WS_TABSTOP, 0,0,0,0, hwnd, (HMENU)IDC_VDX_DUMP, hInst, nullptr);
    g_vdxPlaybackControls[9] = CreateWindowExW(0, L"BUTTON", L"Brush",
        WS_CHILD | WS_TABSTOP | BS_AUTOCHECKBOX | BS_PUSHLIKE, 0,0,0,0, hwnd, (HMENU)IDC_VDX_BRUSH, hInst, nullptr);
    g_vdxPlaybackControls[10] = CreateWindowExW(0, L"BUTTON", std::format(L"{} px", g_alphaBrushSize).c_str(),
        WS_CHILD | WS_TABSTOP, 0,0,0,0, hwnd, (HMENU)IDC_VDX_BRUSH_SIZE, hInst, nullptr);
    g_vdxPlaybackControls[11] = CreateWindowExW(0, L"BUTTON", L"Reset Brush",
        WS_CHILD | WS_TABSTOP, 0,0,0,0, hwnd, (HMENU)IDC_VDX_BRUSH_RESET, hInst, nullptr);
    SendMessage(g_vdxPlaybackControls[9], BM_SETCHECK, g_alphaBrush ? BST_CHECKED : BST_UNCHECKED, 0);
    for (HWND control : g_vdxPlaybackControls)
        SendMessage(control, WM_SETFONT, (WPARAM)hFont, TRUE);
    
    SendMessage(g_vdxPlaybackControls[5], BM_SETCHECK, g_alphaMode ? BST_CHECKED : BST_UNCHECKED, 0);

    // Setup columns for all ListViews
    LVCOLUMNW lvc = {};
    lvc.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
    
    // 0x20 ListView columns: #, Offset, Size, LZSS
    lvc.iSubItem = 0; lvc.pszText = (LPWSTR)L"#"; lvc.cx = 30;
    ListView_InsertColumn(g_vdxControls[5], 0, &lvc);
    lvc.iSubItem = 1; lvc.pszText = (LPWSTR)L"Offset"; lvc.cx = 80;
    ListView_InsertColumn(g_vdxControls[5], 1, &lvc);
    lvc.iSubItem = 2; lvc.pszText = (LPWSTR)L"Size"; lvc.cx = 80;
    ListView_InsertColumn(g_vdxControls[5], 2, &lvc);
    lvc.iSubItem = 3; lvc.pszText = (LPWSTR)L"LZSS"; lvc.cx = 40;
    ListView_InsertColumn(g_vdxControls[5], 3, &lvc);
    
    // 0x25/0x00 ListView columns: #, Type, Size (compact)
    lvc.iSubItem = 0; lvc.pszText = (LPWSTR)L"#"; lvc.cx = 35;
    ListView_InsertColumn(g_vdxControls[9], 0, &lvc);
    lvc.iSubItem = 1; lvc.pszText = (LPWSTR)L"Type"; lvc.cx = 45;
    ListView_InsertColumn(g_vdxControls[9], 1, &lvc);
    lvc.iSubItem = 2; lvc.pszText = (LPWSTR)L"Size"; lvc.cx = 70;
    ListView_InsertColumn(g_vdxControls[9], 2, &lvc);
    lvc.iSubItem = 3; lvc.pszText = (LPWSTR)L"LZSS"; lvc.cx = 35;
    ListView_InsertColumn(g_vdxControls[9], 3, &lvc);
    
    // 0x80 ListView columns: #, Offset, Size, Duration (now wider)
    lvc.iSubItem = 0; lvc.pszText = (LPWSTR)L"#"; lvc.cx = 35;
    ListView_InsertColumn(g_vdxControls[12], 0, &lvc);
    lvc.iSubItem = 1; lvc.pszText = (LPWSTR)L"Offset"; lvc.cx = 80;
    ListView_InsertColumn(g_vdxControls[12], 1, &lvc);
    lvc.iSubItem = 2; lvc.pszText = (LPWSTR)L"Size"; lvc.cx = 80;
    ListView_InsertColumn(g_vdxControls[12], 2, &lvc);
    lvc.iSubItem = 3; lvc.pszText = (LPWSTR)L"Duration"; lvc.cx = 70;
    ListView_InsertColumn(g_vdxControls[12], 3, &lvc);
}

/*
===============================================================================
Function: CreateCursorsTab - Simple cursor extraction tab
===============================================================================
*/
static void CreateCursorsTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    
    // Status label
    g_cursorControls[0] = CreateWindowExW(0, L"STATIC", L"Checking for ROB.GJD...",
        WS_CHILD | SS_LEFT,
        20, 60, 600, 24, hwnd, (HMENU)IDC_CURSOR_STATUS, hInst, nullptr);
    SendMessage(g_cursorControls[0], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Extract button (starts disabled)
    g_cursorControls[1] = CreateWindowExW(0, L"BUTTON", L"Extract Cursors",
        WS_CHILD | BS_PUSHBUTTON | WS_DISABLED,
        20, 100, 120, 28, hwnd, (HMENU)IDC_CURSOR_EXTRACT_BTN, hInst, nullptr);
    SendMessage(g_cursorControls[1], WM_SETFONT, (WPARAM)hFont, TRUE);
}

/*
===============================================================================
Function: HideAllTabs
===============================================================================
*/
static void HideAllTabs()
{
    for (int i = 0; i < 8; i++) {
        if (g_assetControls[i]) ShowWindow(g_assetControls[i], SW_HIDE);
    }
    for (int i = 0; i < 17; i++) {
        if (g_vdxControls[i]) ShowWindow(g_vdxControls[i], SW_HIDE);
    }
    for (HWND control : g_vdxPlaybackControls) {
        if (control) ShowWindow(control, SW_HIDE);
    }
    for (int i = 0; i < 2; i++) {
        if (g_cursorControls[i]) ShowWindow(g_cursorControls[i], SW_HIDE);
    }
}

/*
===============================================================================
Function: ShowTab
===============================================================================
*/
static void ShowTab(int tabIndex)
{
    switch (tabIndex) {
    case TAB_ASSET_BROWSER:
        for (int i = 0; i < 8; i++) {
            if (g_assetControls[i]) {
                ShowWindow(g_assetControls[i], SW_SHOW);
                BringWindowToTop(g_assetControls[i]);
            }
        }
        break;
    case TAB_VDX_INFO:
        for (int i = 0; i < 17; i++) {
            if (g_vdxControls[i]) {
                ShowWindow(g_vdxControls[i], i == 16 ? SW_HIDE : SW_SHOW);
                BringWindowToTop(g_vdxControls[i]);
            }
        }
        for (HWND control : g_vdxPlaybackControls) {
            if (control) {
                ShowWindow(control, SW_SHOW);
                BringWindowToTop(control);
            }
        }
        // Refresh palette and bitmap
        if (g_vdxControls[7]) InvalidateRect(g_vdxControls[7], nullptr, TRUE);
        if (g_vdxControls[15]) InvalidateRect(g_vdxControls[15], nullptr, TRUE);
        break;
    case TAB_CURSORS:
        for (int i = 0; i < 2; i++) {
            if (g_cursorControls[i]) {
                ShowWindow(g_cursorControls[i], SW_SHOW);
                BringWindowToTop(g_cursorControls[i]);
            }
        }
        break;
    }
}

/*
===============================================================================
Function: SwitchTab
===============================================================================
*/
static void SwitchTab(int tabIndex)
{
    HideAllTabs();
    ShowTab(tabIndex);
    g_currentTab = tabIndex;
    if (g_hTab) LayoutTools(GetParent(g_hTab));
}

/*
===============================================================================
Function: PopulateArchiveList - Load RL file and populate ListView
===============================================================================
*/


/*
===============================================================================
Function: PopulateVDXInfoList - Load VDX and show header + chunk info
===============================================================================
*/
static void PopulateVDXInfoList(const std::string& filename)
{
    if (!SaveVDXMaskProject()) return;
    // New control indices:
    // [5]=0x20 list, [9]=0x25 list, [12]=0x80 list
    HWND hList0x20 = g_vdxControls[5];   // 0x20 Bitmap ListView
    HWND hList0x25 = g_vdxControls[9];   // 0x25 Delta / 0x00 Duplicate ListView
    HWND hList0x80 = g_vdxControls[12];  // 0x80 Audio ListView
    
    ListView_DeleteAllItems(hList0x20);
    ListView_DeleteAllItems(hList0x25);
    ListView_DeleteAllItems(hList0x80);
    g_vdxChunks.clear();
    g_currentVDXFile = filename;
    g_hasPalette = false;
    memset(g_palette, 0, sizeof(g_palette));
    g_bitmapData.clear();
    g_bitmapWidth = 0;
    g_bitmapHeight = 0;
    
    // Clear info texts
    SetWindowTextA(g_vdxControls[2], "");   // VDX header info
    SetWindowTextA(g_vdxControls[4], "");   // 0x20 info
    SetWindowTextA(g_vdxControls[11], "");  // 0x80 info
    SetWindowTextA(g_vdxControls[13], "");  // Status
    
    try {
        std::ifstream file(filename, std::ios::binary);
        if (!file) {
            SetWindowTextA(g_vdxControls[13], "Error: Cannot open file.");
            return;
        }
        
        file.seekg(0, std::ios::end);
        size_t fileSize = static_cast<size_t>(file.tellg());
        file.seekg(0, std::ios::beg);
        
        std::vector<uint8_t> buffer(fileSize);
        file.read(reinterpret_cast<char*>(buffer.data()), fileSize);
        file.close();
        
        // Parse VDX and store for delta processing
        g_currentVDX = parseVDXFile(filename, buffer);
        PrepareVDXPlayback(filename, buffer);
        VDXFile& vdx = g_currentVDX;
        
        // Display the semantically decoded VDX header.
        char headerInfo[256];
        snprintf(headerInfo, sizeof(headerInfo),
            "Identifier: 0x%04X   Unknown: {0x%02X, 0x%02X, 0x%02X, 0x%02X}   FPS: %u",
            vdx.identifier,
            vdx.unknown[0], vdx.unknown[1], vdx.unknown[2],
            vdx.unknown[3], static_cast<unsigned>(vdx.frameRate));
        SetWindowTextA(g_vdxControls[2], headerInfo);
        
        // Track counts for each type
        int count0x20 = 0, count0x25 = 0, count0x80 = 0;
        bool foundBitmapHeader = false;
        int bitmapWidth = 0, bitmapHeight = 0, colorDepth = 0;
        size_t totalAudioBytes = 0;
        
        int idx = 0;
        size_t currentOffset = 8;  // VDX header is 8 bytes
        for (const auto& chunk : vdx.chunks) {
            VDXChunkData data;
            data.index = idx;
            data.chunkType = chunk.chunkType;
            data.offset = currentOffset;
            data.size = chunk.dataSize;
            data.lzssCompressed = vdxChunkIsCompressed(chunk);
            
            // VDX chunk header is 8 bytes
            currentOffset += 8 + chunk.dataSize;
            
            g_vdxChunks.push_back(data);
            
            // Determine which ListView to add to
            HWND targetList = nullptr;
            int* targetCount = nullptr;
            
            if (chunk.chunkType == 0x20) {
                targetList = hList0x20;
                targetCount = &count0x20;
                
                // Extract bitmap header from first 0x20 chunk
                // Data may be LZSS compressed - decompress first if needed
                if (!foundBitmapHeader && chunk.data.size() > 0) {
                    std::vector<uint8_t> decompData;
                    std::span<const uint8_t> dataToRead;
                    
                    if (vdxChunkIsCompressed(chunk)) {
                        // LZSS compressed - decompress
                        decompData.resize(chunk.dataSize * 20);
                        size_t decompSize = lzssDecompress(chunk.data, decompData, chunk.lengthMask, chunk.lengthBits);
                        decompData.resize(decompSize);
                        dataToRead = std::span<const uint8_t>(decompData);
                    } else {
                        dataToRead = chunk.data;
                    }
                    
                    if (dataToRead.size() >= 6 + 768) {
                        foundBitmapHeader = true;
                        uint16_t numXTiles = dataToRead[0] | (dataToRead[1] << 8);
                        uint16_t numYTiles = dataToRead[2] | (dataToRead[3] << 8);
                        colorDepth = dataToRead[4] | (dataToRead[5] << 8);
                        bitmapWidth = numXTiles * 4;
                        bitmapHeight = numYTiles * 4;
                        
                        // Copy palette (raw 8-bit RGB values)
                        memcpy(g_palette, dataToRead.data() + 6, 768);
                        g_hasPalette = true;
                        
                        // Build palette for delta processing
                        for (int i = 0; i < 256; i++) {
                            g_currentPalette[i] = {g_palette[i*3], g_palette[i*3+1], g_palette[i*3+2]};
                        }
                        // Save base palette (never modified)
                        
                        // Decode the full bitmap using getBitmapData
                        g_bitmapWidth = bitmapWidth;
                        g_bitmapHeight = bitmapHeight;
                        g_bitmapData.resize(static_cast<size_t>(bitmapWidth) * bitmapHeight * 3);
                        getBitmapData(dataToRead, g_currentPalette, g_bitmapData);
                    }
                }
            } else if (chunk.chunkType == 0x25 || chunk.chunkType == 0x00) {
                // 0x25 = delta, 0x00 = duplicate previous
                targetList = hList0x25;
                targetCount = &count0x25;
                

            } else if (chunk.chunkType == 0x80) {
                targetList = hList0x80;
                targetCount = &count0x80;
                totalAudioBytes += chunk.dataSize;
            }
            
            if (targetList && targetCount) {
                int itemIdx = *targetCount;
                
                // Add to ListView - Index column (column 0 for all)
                std::wstring wIndex = std::to_wstring(idx);
                LVITEMW lvi = {};
                lvi.mask = LVIF_TEXT | LVIF_PARAM;
                lvi.iItem = itemIdx;
                lvi.lParam = static_cast<LPARAM>(idx);
                lvi.pszText = const_cast<LPWSTR>(wIndex.c_str());
                ListView_InsertItem(targetList, &lvi);
                
                std::wstring wOffset = FormatOffset(data.offset);
                std::wstring wSize = FormatSize(data.size);
                
                if (targetList == hList0x20) {
                    // 0x20 columns: #, Offset, Size, LZSS
                    ListView_SetItemText(targetList, itemIdx, 1, const_cast<LPWSTR>(wOffset.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 2, const_cast<LPWSTR>(wSize.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 3, data.lzssCompressed ? (LPWSTR)L"\u2713" : (LPWSTR)L"");
                }
                else if (targetList == hList0x25) {
                    // 0x25/0x00 columns: #, Type, Size, LZSS (4 columns)
                    wchar_t typeHex[16];
                    swprintf(typeHex, 16, L"0x%02X", chunk.chunkType);
                    ListView_SetItemText(targetList, itemIdx, 1, typeHex);
                    ListView_SetItemText(targetList, itemIdx, 2, const_cast<LPWSTR>(wSize.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 3, data.lzssCompressed ? (LPWSTR)L"\u2713" : (LPWSTR)L"");
                }
                else if (targetList == hList0x80) {
                    // 0x80 columns: #, Offset, Size, Duration (4 columns)
                    double chunkDuration = static_cast<double>(data.size) / 22050.0;
                    wchar_t durationStr[32];
                    swprintf(durationStr, 32, L"%.2fs", chunkDuration);
                    ListView_SetItemText(targetList, itemIdx, 1, const_cast<LPWSTR>(wOffset.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 2, const_cast<LPWSTR>(wSize.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 3, durationStr);
                }
                
                (*targetCount)++;
            }
            
            idx++;
        }
        
        // Display 0x20 bitmap info
        if (foundBitmapHeader) {
            char bitmapInfo[256];
            snprintf(bitmapInfo, sizeof(bitmapInfo),
                "Dimensions: %d x %d   Color Depth: %d-bit",
                bitmapWidth, bitmapHeight, colorDepth);
            SetWindowTextA(g_vdxControls[4], bitmapInfo);
            
            // Redraw palette and bitmap
            if (g_vdxControls[7]) {
                InvalidateRect(g_vdxControls[7], nullptr, TRUE);
            }
            if (g_vdxControls[15]) {
                InvalidateRect(g_vdxControls[15], nullptr, TRUE);
            }
        }
        
        // Display 0x80 audio info
        if (count0x80 > 0) {
            double duration = static_cast<double>(totalAudioBytes) / 22050.0;
            char audioInfo[256];
            snprintf(audioInfo, sizeof(audioInfo),
                "22,050 Hz / 8-bit / Mono   Total: %.2fs",
                duration);
            SetWindowTextA(g_vdxControls[11], audioInfo);
        }
        
        char status[256];
        snprintf(status, sizeof(status), 
            "Loaded %zu chunks: %d bitmap, %d delta/dup, %d audio",
            vdx.chunks.size(), count0x20, count0x25, count0x80);
        SetWindowTextA(g_vdxControls[13], status);
        ShowVDXPlaybackFrame();
    }
    catch (const std::exception& e) {
        char error[512];
        snprintf(error, sizeof(error), "Error: %s", e.what());
        SetWindowTextA(g_vdxControls[13], error);
    }
}

/*
===============================================================================
Function: PopulateVDXFromArchive - Load VDX from GJD archive (in RAM)
===============================================================================
*/
static void PopulateVDXFromArchive(const RLEntry& entry)
{
    if (!SaveVDXMaskProject()) return;
    if (g_currentGJDFile.empty()) {
        SetWindowTextA(g_vdxControls[13], "Error: No GJD file available.");
        return;
    }
    
    try {
        std::ifstream gjdFile(g_currentGJDFile, std::ios::binary);
        if (!gjdFile) {
            SetWindowTextA(g_vdxControls[13], "Error: Cannot open GJD file.");
            return;
        }
        
        // Seek to VDX position in GJD
        gjdFile.seekg(static_cast<std::streamoff>(entry.offset));
        
        // Read VDX data
        std::vector<uint8_t> buffer(entry.length);
        gjdFile.read(reinterpret_cast<char*>(buffer.data()), entry.length);
        gjdFile.close();
        
        // Update file path display
        std::string displayName = g_currentGJDFile + " -> " + entry.filename;
        SetWindowTextA(g_vdxControls[0], displayName.c_str());
        
        // Clear lists
        HWND hList0x20 = g_vdxControls[5];
        HWND hList0x25 = g_vdxControls[9];
        HWND hList0x80 = g_vdxControls[12];
        
        ListView_DeleteAllItems(hList0x20);
        ListView_DeleteAllItems(hList0x25);
        ListView_DeleteAllItems(hList0x80);
        g_vdxChunks.clear();
        g_currentVDXFile = entry.filename;
        g_hasPalette = false;
        memset(g_palette, 0, sizeof(g_palette));
        g_bitmapData.clear();
        g_bitmapWidth = 0;
        g_bitmapHeight = 0;
        
        // Clear info texts
        SetWindowTextA(g_vdxControls[2], "");   // VDX header
        SetWindowTextA(g_vdxControls[4], "");   // 0x20 info
        SetWindowTextA(g_vdxControls[11], "");  // 0x80 info
        
        // Parse VDX and store for delta processing
        g_currentVDX = parseVDXFile(entry.filename, buffer);
        PrepareVDXPlayback(entry.filename, buffer);
        VDXFile& vdx = g_currentVDX;
        
        // Display VDX Header
        char headerInfo[256];
        snprintf(headerInfo, sizeof(headerInfo),
            "Identifier: 0x%04X   Unknown: {0x%02X, 0x%02X, 0x%02X, 0x%02X}   FPS: %u",
            vdx.identifier,
            vdx.unknown[0], vdx.unknown[1], vdx.unknown[2],
            vdx.unknown[3], static_cast<unsigned>(vdx.frameRate));
        SetWindowTextA(g_vdxControls[2], headerInfo);
        
        int count0x20 = 0, count0x25 = 0, count0x80 = 0;
        bool foundBitmapHeader = false;
        int bitmapWidth = 0, bitmapHeight = 0, colorDepth = 0;
        size_t totalAudioBytes = 0;
        
        int idx = 0;
        size_t currentOffset = 8;
        for (const auto& chunk : vdx.chunks) {
            VDXChunkData data;
            data.index = idx;
            data.chunkType = chunk.chunkType;
            data.offset = currentOffset;
            data.size = chunk.dataSize;
            data.lzssCompressed = vdxChunkIsCompressed(chunk);
            
            currentOffset += 8 + chunk.dataSize;
            g_vdxChunks.push_back(data);
            
            HWND targetList = nullptr;
            int* targetCount = nullptr;
            
            if (chunk.chunkType == 0x20) {
                targetList = hList0x20;
                targetCount = &count0x20;
                
                if (!foundBitmapHeader && chunk.data.size() > 0) {
                    std::vector<uint8_t> decompData;
                    std::span<const uint8_t> dataToRead;
                    
                    if (vdxChunkIsCompressed(chunk)) {
                        decompData.resize(chunk.dataSize * 20);
                        size_t decompSize = lzssDecompress(chunk.data, decompData, chunk.lengthMask, chunk.lengthBits);
                        decompData.resize(decompSize);
                        dataToRead = std::span<const uint8_t>(decompData);
                    } else {
                        dataToRead = chunk.data;
                    }
                    
                    if (dataToRead.size() >= 6 + 768) {
                        foundBitmapHeader = true;
                        uint16_t numXTiles = dataToRead[0] | (dataToRead[1] << 8);
                        uint16_t numYTiles = dataToRead[2] | (dataToRead[3] << 8);
                        colorDepth = dataToRead[4] | (dataToRead[5] << 8);
                        bitmapWidth = numXTiles * 4;
                        bitmapHeight = numYTiles * 4;
                        
                        // Copy palette (raw 8-bit RGB values)
                        memcpy(g_palette, dataToRead.data() + 6, 768);
                        g_hasPalette = true;
                        
                        // Build palette for delta processing
                        for (int i = 0; i < 256; i++) {
                            g_currentPalette[i] = {g_palette[i*3], g_palette[i*3+1], g_palette[i*3+2]};
                        }
                        // Save base palette (never modified)
                        
                        // Decode the full bitmap using getBitmapData
                        g_bitmapWidth = bitmapWidth;
                        g_bitmapHeight = bitmapHeight;
                        g_bitmapData.resize(static_cast<size_t>(bitmapWidth) * bitmapHeight * 3);
                        getBitmapData(dataToRead, g_currentPalette, g_bitmapData);
                    }
                }
            } else if (chunk.chunkType == 0x25 || chunk.chunkType == 0x00) {
                targetList = hList0x25;
                targetCount = &count0x25;
                

            } else if (chunk.chunkType == 0x80) {
                targetList = hList0x80;
                targetCount = &count0x80;
                totalAudioBytes += chunk.dataSize;
            }
            
            if (targetList && targetCount) {
                int itemIdx = *targetCount;
                
                std::wstring wIndex = std::to_wstring(idx);
                LVITEMW lvi = {};
                lvi.mask = LVIF_TEXT | LVIF_PARAM;
                lvi.iItem = itemIdx;
                lvi.lParam = static_cast<LPARAM>(idx);
                lvi.pszText = const_cast<LPWSTR>(wIndex.c_str());
                ListView_InsertItem(targetList, &lvi);
                
                std::wstring wOffset = FormatOffset(data.offset);
                std::wstring wSize = FormatSize(data.size);
                
                if (targetList == hList0x20) {
                    ListView_SetItemText(targetList, itemIdx, 1, const_cast<LPWSTR>(wOffset.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 2, const_cast<LPWSTR>(wSize.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 3, data.lzssCompressed ? (LPWSTR)L"\u2713" : (LPWSTR)L"");
                }
                else if (targetList == hList0x25) {
                    // 0x25/0x00 columns: #, Type, Size, LZSS (4 columns)
                    wchar_t typeHex[16];
                    swprintf(typeHex, 16, L"0x%02X", chunk.chunkType);
                    ListView_SetItemText(targetList, itemIdx, 1, typeHex);
                    ListView_SetItemText(targetList, itemIdx, 2, const_cast<LPWSTR>(wSize.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 3, data.lzssCompressed ? (LPWSTR)L"\u2713" : (LPWSTR)L"");
                }
                else if (targetList == hList0x80) {
                    // 0x80 columns: #, Offset, Size, Duration (4 columns)
                    double chunkDuration = static_cast<double>(data.size) / 22050.0;
                    wchar_t durationStr[32];
                    swprintf(durationStr, 32, L"%.2fs", chunkDuration);
                    ListView_SetItemText(targetList, itemIdx, 1, const_cast<LPWSTR>(wOffset.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 2, const_cast<LPWSTR>(wSize.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 3, durationStr);
                }
                
                (*targetCount)++;
            }
            idx++;
        }
        
        if (foundBitmapHeader) {
            char bitmapInfo[256];
            snprintf(bitmapInfo, sizeof(bitmapInfo),
                "Dimensions: %d x %d   Color Depth: %d-bit",
                bitmapWidth, bitmapHeight, colorDepth);
            SetWindowTextA(g_vdxControls[4], bitmapInfo);
            if (g_vdxControls[7]) InvalidateRect(g_vdxControls[7], nullptr, TRUE);
            if (g_vdxControls[15]) InvalidateRect(g_vdxControls[15], nullptr, TRUE);
        }
        
        if (count0x80 > 0) {
            double duration = static_cast<double>(totalAudioBytes) / 22050.0;
            char audioInfo[256];
            snprintf(audioInfo, sizeof(audioInfo), "22,050 Hz / 8-bit / Mono   Total: %.2fs", duration);
            SetWindowTextA(g_vdxControls[11], audioInfo);
        }
        
        char status[256];
        snprintf(status, sizeof(status), 
            "Loaded %zu chunks from archive: %d bitmap, %d delta/dup, %d audio",
            vdx.chunks.size(), count0x20, count0x25, count0x80);
        SetWindowTextA(g_vdxControls[13], status);
        ShowVDXPlaybackFrame();
    }
    catch (const std::exception& e) {
        char error[512];
        snprintf(error, sizeof(error), "Error: %s", e.what());
        SetWindowTextA(g_vdxControls[13], error);
    }
}

/*
===============================================================================
Function: ArchiveListCompare - Sort callback for Archive ListView
===============================================================================
*/


/*
===============================================================================
Function: VDXListCompare - Sort callback for VDX ListView
===============================================================================
*/
static int CALLBACK VDXListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort)
{
    if (!g_currentVDXSortList) return 0;
    HWND hList = g_currentVDXSortList;
    int col = lParamSort & 0xFFF;
    bool ascending = (lParamSort & 0x1000) == 0;
    
    wchar_t buf1[256] = {0}, buf2[256] = {0};
    ListView_GetItemText(hList, static_cast<int>(lParam1), col, buf1, 256);
    ListView_GetItemText(hList, static_cast<int>(lParam2), col, buf2, 256);
    
    int result = 0;
    
    if (col == 1 || col == 4) {
        // Type or LZSS - alphabetical
        result = wcscmp(buf1, buf2);
    } else {
        // Numeric columns
        std::wstring s1(buf1), s2(buf2);
        s1.erase(std::remove(s1.begin(), s1.end(), L','), s1.end());
        s2.erase(std::remove(s2.begin(), s2.end(), L','), s2.end());
        
        double v1 = 0, v2 = 0;
        if (s1.find(L"MB") != std::wstring::npos) {
            v1 = _wtof(s1.c_str()) * 1024 * 1024;
        } else if (s1.find(L"KB") != std::wstring::npos) {
            v1 = _wtof(s1.c_str()) * 1024;
        } else {
            v1 = _wtof(s1.c_str());
        }
        
        if (s2.find(L"MB") != std::wstring::npos) {
            v2 = _wtof(s2.c_str()) * 1024 * 1024;
        } else if (s2.find(L"KB") != std::wstring::npos) {
            v2 = _wtof(s2.c_str()) * 1024;
        } else {
            v2 = _wtof(s2.c_str());
        }
        
        if (v1 < v2) result = -1;
        else if (v1 > v2) result = 1;
        else result = 0;
    }
    
    return ascending ? result : -result;
}
