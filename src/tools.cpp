// tools.cpp

#include <sstream>
#include <iomanip>
#include <filesystem>
#include <fstream>
#include <vector>
#include <string>
#include <algorithm>

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <commctrl.h>
#include <commdlg.h>

#include "tools.h"
#include "window.h"
#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "extract.h"
#include "cursor.h"
#include "lzss.h"
#include "bitmap.h"
#include "delta.h"

#pragma comment(lib, "comctl32.lib")

// Window class name
static const wchar_t* TOOLS_CLASS_NAME = L"v64tngToolsClass";

// Tools window handle (for cleanup)
static HWND g_toolsWindow = nullptr;

// Current state
static int g_currentTab = 0;
static std::vector<RLEntry> g_currentRLEntries;
static std::string g_currentRLFile;
static std::string g_currentGJDFile;  // Track current GJD for VDX loading

// Sorting state for Archive Info
static int g_archiveSortColumn = -1;
static bool g_archiveSortAscending = true;

// Sorting state for VDX Info
static int g_vdxSortColumn = -1;
static bool g_vdxSortAscending = true;

// Palette data for 0x20 visualization
static uint8_t g_palette[768] = {0};  // 256 colors * 3 bytes (RGB)
static bool g_hasPalette = false;

// Bitmap data for 0x20 display
static std::vector<uint8_t> g_bitmapData;  // RGB pixel data (current frame for display)
static std::vector<uint8_t> g_baseFrame;   // Base 0x20 frame for delta application
static int g_bitmapWidth = 0;
static int g_bitmapHeight = 0;
static HBITMAP g_hBitmap = nullptr;

// Delta visualization
static bool g_deltaVisualization = false;
static std::vector<RGBColor> g_basePalette(256);     // Original palette from 0x20 (never modified)
static std::vector<RGBColor> g_currentPalette(256);  // Working palette for delta frames (gets modified)

// Store decompressed chunk data for delta frame rendering
struct DecompressedChunk {
    std::vector<uint8_t> data;
    uint8_t chunkType;
    int chunkIndex;  // Original chunk index
};
static std::vector<DecompressedChunk> g_decompressedChunks;

// Current VDX for delta processing
static VDXFile g_currentVDX;

// Tab indices (only 3 tabs now - removed Extract VDX)
enum TabIndex {
    TAB_ARCHIVE_INFO = 0,
    TAB_VDX_INFO = 1,
    TAB_CURSORS = 2
};

// Control IDs
enum ControlID {
    IDC_TAB = 1001,
    
    // Archive Info tab
    IDC_ARCHIVE_FILE_EDIT = 1010,
    IDC_ARCHIVE_BROWSE_BTN = 1011,
    IDC_ARCHIVE_LIST = 1012,
    IDC_ARCHIVE_STATUS = 1013,
    
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
    
    // Cursors tab
    IDC_CURSOR_STATUS = 1040,
    IDC_CURSOR_EXTRACT_BTN = 1041
};

// Tab controls
static HWND g_hTab = nullptr;
static HWND g_archiveControls[4] = {0};  // edit, browse btn, listview, status
// VDX controls: [0]=edit, [1]=browse, [2]=header info, [3]=0x20 label, [4]=0x20 info,
//               [5]=0x20 list, [6]=palette label, [7]=palette, [8]=0x25 label, [9]=0x25 list, 
//               [10]=0x80 label, [11]=0x80 info, [12]=0x80 list, [13]=status,
//               [14]=bitmap label, [15]=bitmap display, [16]=delta vis checkbox
static HWND g_vdxControls[17] = {0};
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
static void CreateArchiveInfoTab(HWND hwnd);
static void CreateVDXInfoTab(HWND hwnd);
static void CreateCursorsTab(HWND hwnd);
static void HideAllTabs();
static void ShowTab(int tabIndex);
static std::string OpenFileDialog(HWND hwnd, const wchar_t* filter, const wchar_t* title);
static void PopulateArchiveList(const std::string& filename);
static void PopulateVDXInfoList(const std::string& filename);
static void PopulateVDXFromArchive(const RLEntry& entry);
static std::wstring FormatOffset(size_t offset);
static std::wstring FormatSize(size_t size);
static int CALLBACK ArchiveListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
static int CALLBACK VDXListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
static void CheckROBFile();

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
    wc.style = CS_HREDRAW | CS_VREDRAW;
    
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
    icc.dwICC = ICC_TAB_CLASSES | ICC_LISTVIEW_CLASSES | ICC_STANDARD_CLASSES;
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
Function: CheckROBFile - Check if ROB.GJD exists in current directory
===============================================================================
*/
static void CheckROBFile()
{
    if (std::filesystem::exists("ROB.GJD")) {
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
            int cellWidth = rc.right / 16;
            int cellHeight = rc.bottom / 16;
            
            for (int y = 0; y < 16; y++) {
                for (int x = 0; x < 16; x++) {
                    int idx = y * 16 + x;
                    uint8_t r = g_palette[idx * 3 + 0];
                    uint8_t g = g_palette[idx * 3 + 1];
                    uint8_t b = g_palette[idx * 3 + 2];
                    
                    RECT cellRc = {
                        x * cellWidth,
                        y * cellHeight,
                        (x + 1) * cellWidth,
                        (y + 1) * cellHeight
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

/*
===============================================================================
Function: BitmapWndProc - Custom control to display 0x20 bitmap at 1:1 scale
===============================================================================
*/
static LRESULT CALLBACK BitmapWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg) {
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
            
            // Draw 1:1 at origin
            SetDIBitsToDevice(hdc, 0, 0, g_bitmapWidth, g_bitmapHeight,
                0, 0, 0, g_bitmapHeight, bgrData.data(), &bmi, DIB_RGB_COLORS);
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
        CreateArchiveInfoTab(hwnd);
        CreateVDXInfoTab(hwnd);
        CreateCursorsTab(hwnd);
        SwitchTab(TAB_ARCHIVE_INFO);
        return 0;
    
    case WM_CTLCOLORSTATIC: {
        HDC hdcStatic = (HDC)wParam;
        SetBkMode(hdcStatic, TRANSPARENT);
        SetBkColor(hdcStatic, GetSysColor(COLOR_3DFACE));
        return (LRESULT)GetSysColorBrush(COLOR_3DFACE);
    }
    
    case WM_SETCURSOR:
        SetCursor(LoadCursor(nullptr, IDC_ARROW));
        return TRUE;
        
    case WM_SIZE: {
        RECT rc;
        GetClientRect(hwnd, &rc);
        
        // Tab control - header only (about 30 pixels tall)
        if (g_hTab) {
            SetWindowPos(g_hTab, nullptr, 5, 5, rc.right - 10, 30, SWP_NOZORDER);
        }
        
        int listWidth = rc.right - 50;
        int listHeight = rc.bottom - 150;
        
        if (g_archiveControls[2]) {
            SetWindowPos(g_archiveControls[2], nullptr, 20, 90, listWidth, listHeight, SWP_NOZORDER);
        }
        // VDX tab uses fixed layout with multiple sections - no resize needed
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
        
        // Double-click on Archive list to open VDX in VDX Info tab
        if (nmhdr->code == NM_DBLCLK && nmhdr->idFrom == IDC_ARCHIVE_LIST) {
            int selIdx = ListView_GetNextItem(g_archiveControls[2], -1, LVNI_SELECTED);
            if (selIdx >= 0) {
                LVITEMW lvi = {};
                lvi.mask = LVIF_PARAM;
                lvi.iItem = selIdx;
                ListView_GetItem(g_archiveControls[2], &lvi);
                size_t entryIdx = static_cast<size_t>(lvi.lParam);
                if (entryIdx < g_currentRLEntries.size()) {
                    PopulateVDXFromArchive(g_currentRLEntries[entryIdx]);
                    TabCtrl_SetCurSel(g_hTab, TAB_VDX_INFO);
                    SwitchTab(TAB_VDX_INFO);
                }
            }
            return 0;
        }
        
        // Right-click on Archive list shows context menu
        if (nmhdr->code == NM_RCLICK && nmhdr->idFrom == IDC_ARCHIVE_LIST) {
            int selIdx = ListView_GetNextItem(g_archiveControls[2], -1, LVNI_SELECTED);
            if (selIdx >= 0) {
                POINT pt;
                GetCursorPos(&pt);
                
                HMENU hMenu = CreatePopupMenu();
                AppendMenuW(hMenu, MF_STRING, 1, L"Open in VDX Info...");
                
                int cmd = TrackPopupMenu(hMenu, TPM_RETURNCMD | TPM_LEFTALIGN | TPM_TOPALIGN,
                    pt.x, pt.y, 0, hwnd, nullptr);
                DestroyMenu(hMenu);
                
                if (cmd == 1) {
                    LVITEMW lvi = {};
                    lvi.mask = LVIF_PARAM;
                    lvi.iItem = selIdx;
                    ListView_GetItem(g_archiveControls[2], &lvi);
                    size_t entryIdx = static_cast<size_t>(lvi.lParam);
                    if (entryIdx < g_currentRLEntries.size()) {
                        PopulateVDXFromArchive(g_currentRLEntries[entryIdx]);
                        TabCtrl_SetCurSel(g_hTab, TAB_VDX_INFO);
                        SwitchTab(TAB_VDX_INFO);
                    }
                }
            }
            return 0;
        }
        
        // Handle delta frame selection
        if (nmhdr->code == LVN_ITEMCHANGED && nmhdr->idFrom == IDC_VDX_0x25_LIST) {
            NMLISTVIEW* pnmv = (NMLISTVIEW*)lParam;
            if ((pnmv->uNewState & LVIS_SELECTED) && !(pnmv->uOldState & LVIS_SELECTED)) {
                // Item was selected
                int selIdx = pnmv->iItem;
                if (selIdx >= 0 && selIdx < (int)g_decompressedChunks.size() && g_baseFrame.size() > 0) {
                    // Reset to base frame AND base palette
                    g_bitmapData = g_baseFrame;
                    g_currentPalette = g_basePalette;
                    
                    // Apply all delta frames up to and including selected one
                    for (int i = 0; i <= selIdx; i++) {
                        const auto& dc = g_decompressedChunks[i];
                        if (dc.chunkType == 0x25 && !dc.data.empty()) {
                            // First apply the delta normally
                            getDeltaBitmapData(std::span<const uint8_t>(dc.data), 
                                std::span<RGBColor>(g_currentPalette), 
                                std::span<uint8_t>(g_bitmapData), 
                                g_bitmapWidth);
                            
                            // If visualization enabled and this is the selected frame, highlight skipped tiles
                            if (g_deltaVisualization && i == selIdx) {
                                std::span<const uint8_t> buffer(dc.data);
                                const uint16_t localPaletteSize = buffer[0] | (buffer[1] << 8);
                                
                                int tilesPerRow = g_bitmapWidth / 4;
                                int numRows = g_bitmapHeight / 4;
                                
                                // Helper to paint a tile pink
                                auto paintTilePink = [&](int tileX, int tileY) {
                                    for (int ty = 0; ty < 4; ty++) {
                                        for (int tx = 0; tx < 4; tx++) {
                                            int px = tileX * 4 + tx;
                                            int py = tileY * 4 + ty;
                                            size_t pixelIndex = (py * g_bitmapWidth + px) * 3;
                                            if (pixelIndex + 2 < g_bitmapData.size()) {
                                                g_bitmapData[pixelIndex] = 255;     // R
                                                g_bitmapData[pixelIndex + 1] = 0;   // G
                                                g_bitmapData[pixelIndex + 2] = 255; // B (fuchsia)
                                            }
                                        }
                                    }
                                };
                                
                                int xTile = 0, yTile = 0;  // Track in tile coordinates
                                for (size_t bufferIndex = localPaletteSize + 2; bufferIndex < buffer.size();) {
                                    const uint8_t opcode = buffer[bufferIndex++];
                                    
                                    if (opcode >= 0x62 && opcode <= 0x6B) {
                                        // Skip N tiles - these are unchanged, paint pink
                                        int skipCount = opcode - 0x62;
                                        for (int s = 0; s < skipCount; s++) {
                                            if (xTile < tilesPerRow && yTile < numRows) {
                                                paintTilePink(xTile, yTile);
                                            }
                                            xTile++;
                                        }
                                    } else if (opcode == 0x61) {
                                        // New row - all remaining tiles on current row are unchanged
                                        while (xTile < tilesPerRow) {
                                            if (yTile < numRows) {
                                                paintTilePink(xTile, yTile);
                                            }
                                            xTile++;
                                        }
                                        yTile++;
                                        xTile = 0;
                                    } else {
                                        // Other opcodes - tile was changed, just advance position
                                        if (opcode <= 0x5F) {
                                            xTile++;
                                            bufferIndex += 2;
                                        } else if (opcode == 0x60) {
                                            xTile++;
                                            bufferIndex += 16;
                                        } else if (opcode >= 0x6C && opcode <= 0x75) {
                                            int repeatCount = opcode - 0x6B;
                                            xTile += repeatCount;
                                            bufferIndex += 1;
                                        } else if (opcode >= 0x76 && opcode <= 0x7F) {
                                            int colorCount = opcode - 0x75;
                                            xTile += colorCount;
                                            bufferIndex += colorCount;
                                        } else {
                                            // Default case (0x80+)
                                            xTile++;
                                            bufferIndex += 3;
                                        }
                                    }
                                }
                                
                                // After processing, fill remaining tiles on current row
                                while (xTile < tilesPerRow && yTile < numRows) {
                                    paintTilePink(xTile, yTile);
                                    xTile++;
                                }
                                // Fill all remaining rows
                                yTile++;
                                while (yTile < numRows) {
                                    for (xTile = 0; xTile < tilesPerRow; xTile++) {
                                        paintTilePink(xTile, yTile);
                                    }
                                    yTile++;
                                }
                            }
                        }
                        // 0x00 chunks are duplicates - no change needed
                    }
                    
                    // Refresh bitmap display
                    if (g_vdxControls[15]) {
                        InvalidateRect(g_vdxControls[15], nullptr, TRUE);
                    }
                }
            }
            return 0;
        }
        
        // Handle 0x20 bitmap selection - reset to base frame
        if (nmhdr->code == LVN_ITEMCHANGED && nmhdr->idFrom == IDC_VDX_0x20_LIST) {
            NMLISTVIEW* pnmv = (NMLISTVIEW*)lParam;
            if ((pnmv->uNewState & LVIS_SELECTED) && !(pnmv->uOldState & LVIS_SELECTED)) {
                if (g_baseFrame.size() > 0) {
                    // Reset to base frame and base palette
                    g_bitmapData = g_baseFrame;
                    g_currentPalette = g_basePalette;
                    
                    // Deselect any delta frame
                    ListView_SetItemState(g_vdxControls[9], -1, 0, LVIS_SELECTED);
                    
                    // Refresh bitmap display
                    if (g_vdxControls[15]) {
                        InvalidateRect(g_vdxControls[15], nullptr, TRUE);
                    }
                }
            }
            return 0;
        }
        
        if (nmhdr->code == LVN_COLUMNCLICK) {
            NMLISTVIEW* pnmv = (NMLISTVIEW*)lParam;
            
            if (nmhdr->idFrom == IDC_ARCHIVE_LIST) {
                if (g_archiveSortColumn == pnmv->iSubItem) {
                    g_archiveSortAscending = !g_archiveSortAscending;
                } else {
                    g_archiveSortColumn = pnmv->iSubItem;
                    g_archiveSortAscending = true;
                }
                ListView_SortItemsEx(g_archiveControls[2], ArchiveListCompare, 
                    (LPARAM)(g_archiveSortColumn | (g_archiveSortAscending ? 0 : 0x1000)));
            }
            else if (nmhdr->idFrom == IDC_VDX_0x20_LIST || 
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
        case IDC_ARCHIVE_BROWSE_BTN: {
            std::string file = OpenFileDialog(hwnd, 
                L"Archive Files (*.RL;*.GJD)\0*.RL;*.GJD\0All Files (*.*)\0*.*\0",
                L"Select RL or GJD File");
            if (!file.empty()) {
                SetWindowTextA(g_archiveControls[0], file.c_str());
                PopulateArchiveList(file);
            }
            break;
        }
        
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
        
        case IDC_CURSOR_EXTRACT_BTN: {
            SetWindowTextA(g_cursorControls[0], "Extracting cursors...");
            UpdateWindow(g_cursorControls[0]);
            extractCursors("ROB.GJD");
            SetWindowTextA(g_cursorControls[0], "Extraction complete!");
            break;
        }
        
        case IDC_VDX_DELTA_VIS_CHECK: {
            // Toggle delta visualization
            g_deltaVisualization = (SendMessage(g_vdxControls[16], BM_GETCHECK, 0, 0) == BST_CHECKED);
            
            // Re-render current selection if any
            int selIdx = ListView_GetNextItem(g_vdxControls[9], -1, LVNI_SELECTED);
            if (selIdx >= 0 && selIdx < (int)g_decompressedChunks.size() && g_baseFrame.size() > 0) {
                // Reset to base frame AND base palette
                g_bitmapData = g_baseFrame;
                g_currentPalette = g_basePalette;
                
                // Apply all delta frames up to and including selected one
                for (int i = 0; i <= selIdx; i++) {
                    const auto& dc = g_decompressedChunks[i];
                    if (dc.chunkType == 0x25 && !dc.data.empty()) {
                        // First apply the delta normally
                        getDeltaBitmapData(std::span<const uint8_t>(dc.data), 
                            std::span<RGBColor>(g_currentPalette), 
                            std::span<uint8_t>(g_bitmapData), 
                            g_bitmapWidth);
                        
                        // If visualization enabled and this is the selected frame, highlight skipped tiles
                        if (g_deltaVisualization && i == selIdx) {
                            std::span<const uint8_t> buffer(dc.data);
                            const uint16_t localPaletteSize = buffer[0] | (buffer[1] << 8);
                            
                            int tilesPerRow = g_bitmapWidth / 4;
                            int numRows = g_bitmapHeight / 4;
                            
                            // Helper to paint a tile pink
                            auto paintTilePink = [&](int tileX, int tileY) {
                                for (int ty = 0; ty < 4; ty++) {
                                    for (int tx = 0; tx < 4; tx++) {
                                        int px = tileX * 4 + tx;
                                        int py = tileY * 4 + ty;
                                        size_t pixelIndex = (py * g_bitmapWidth + px) * 3;
                                        if (pixelIndex + 2 < g_bitmapData.size()) {
                                            g_bitmapData[pixelIndex] = 255;
                                            g_bitmapData[pixelIndex + 1] = 0;
                                            g_bitmapData[pixelIndex + 2] = 255;
                                        }
                                    }
                                }
                            };
                            
                            int xTile = 0, yTile = 0;
                            for (size_t bufferIndex = localPaletteSize + 2; bufferIndex < buffer.size();) {
                                const uint8_t opcode = buffer[bufferIndex++];
                                
                                if (opcode >= 0x62 && opcode <= 0x6B) {
                                    int skipCount = opcode - 0x62;
                                    for (int s = 0; s < skipCount; s++) {
                                        if (xTile < tilesPerRow && yTile < numRows) {
                                            paintTilePink(xTile, yTile);
                                        }
                                        xTile++;
                                    }
                                } else if (opcode == 0x61) {
                                    // Fill remaining tiles on current row
                                    while (xTile < tilesPerRow) {
                                        if (yTile < numRows) {
                                            paintTilePink(xTile, yTile);
                                        }
                                        xTile++;
                                    }
                                    yTile++;
                                    xTile = 0;
                                } else {
                                    if (opcode <= 0x5F) {
                                        xTile++;
                                        bufferIndex += 2;
                                    } else if (opcode == 0x60) {
                                        xTile++;
                                        bufferIndex += 16;
                                    } else if (opcode >= 0x6C && opcode <= 0x75) {
                                        int repeatCount = opcode - 0x6B;
                                        xTile += repeatCount;
                                        bufferIndex += 1;
                                    } else if (opcode >= 0x76 && opcode <= 0x7F) {
                                        int colorCount = opcode - 0x75;
                                        xTile += colorCount;
                                        bufferIndex += colorCount;
                                    } else {
                                        xTile++;
                                        bufferIndex += 3;
                                    }
                                }
                            }
                            
                            // Fill remaining tiles on current row
                            while (xTile < tilesPerRow && yTile < numRows) {
                                paintTilePink(xTile, yTile);
                                xTile++;
                            }
                            // Fill all remaining rows
                            yTile++;
                            while (yTile < numRows) {
                                for (xTile = 0; xTile < tilesPerRow; xTile++) {
                                    paintTilePink(xTile, yTile);
                                }
                                yTile++;
                            }
                        }
                    }
                }
                
                if (g_vdxControls[15]) {
                    InvalidateRect(g_vdxControls[15], nullptr, TRUE);
                }
            }
            break;
        }
        }
        return 0;
    }
    
    case WM_CLOSE:
        DestroyWindow(hwnd);
        return 0;
        
    case WM_DESTROY:
        g_menuActive = false;
        resumeCursorTimer();
        g_toolsWindow = nullptr;
        g_hTab = nullptr;
        memset(g_archiveControls, 0, sizeof(g_archiveControls));
        memset(g_vdxControls, 0, sizeof(g_vdxControls));
        memset(g_cursorControls, 0, sizeof(g_cursorControls));
        g_currentRLEntries.clear();
        g_currentRLFile.clear();
        g_currentGJDFile.clear();
        g_vdxChunks.clear();
        g_currentVDXFile.clear();
        g_hasPalette = false;
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
    
    tie.pszText = (LPWSTR)L"Archive Info";
    TabCtrl_InsertItem(g_hTab, TAB_ARCHIVE_INFO, &tie);
    
    tie.pszText = (LPWSTR)L"VDX Info";
    TabCtrl_InsertItem(g_hTab, TAB_VDX_INFO, &tie);
    
    tie.pszText = (LPWSTR)L"Cursors";
    TabCtrl_InsertItem(g_hTab, TAB_CURSORS, &tie);
}

/*
===============================================================================
Function: CreateArchiveInfoTab - ListView for RL/GJD contents
===============================================================================
*/
static void CreateArchiveInfoTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    
    // File path edit (with proper border)
    g_archiveControls[0] = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", L"",
        WS_CHILD | ES_AUTOHSCROLL | ES_READONLY,
        20, 50, 680, 24, hwnd, (HMENU)IDC_ARCHIVE_FILE_EDIT, hInst, nullptr);
    SendMessage(g_archiveControls[0], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Browse button
    g_archiveControls[1] = CreateWindowExW(0, L"BUTTON", L"Browse...",
        WS_CHILD | BS_PUSHBUTTON,
        710, 50, 80, 24, hwnd, (HMENU)IDC_ARCHIVE_BROWSE_BTN, hInst, nullptr);
    SendMessage(g_archiveControls[1], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // ListView
    g_archiveControls[2] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | WS_VISIBLE | LVS_REPORT | LVS_SHOWSELALWAYS | WS_CLIPSIBLINGS,
        20, 90, 770, 450, hwnd, (HMENU)IDC_ARCHIVE_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_archiveControls[2], 
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_HEADERDRAGDROP | LVS_EX_DOUBLEBUFFER);
    
    // Add columns
    LVCOLUMNW lvc = {};
    lvc.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
    
    lvc.iSubItem = 0;
    lvc.pszText = (LPWSTR)L"Filename";
    lvc.cx = 200;
    ListView_InsertColumn(g_archiveControls[2], 0, &lvc);
    
    lvc.iSubItem = 1;
    lvc.pszText = (LPWSTR)L"Offset";
    lvc.cx = 150;
    ListView_InsertColumn(g_archiveControls[2], 1, &lvc);
    
    lvc.iSubItem = 2;
    lvc.pszText = (LPWSTR)L"Size";
    lvc.cx = 120;
    ListView_InsertColumn(g_archiveControls[2], 2, &lvc);
    
    lvc.iSubItem = 3;
    lvc.pszText = (LPWSTR)L"RL Offset";
    lvc.cx = 120;
    ListView_InsertColumn(g_archiveControls[2], 3, &lvc);
    
    // Status
    g_archiveControls[3] = CreateWindowExW(0, L"STATIC", L"Select an RL or GJD file to view contents.",
        WS_CHILD | SS_LEFT,
        20, 550, 600, 20, hwnd, (HMENU)IDC_ARCHIVE_STATUS, hInst, nullptr);
    SendMessage(g_archiveControls[3], WM_SETFONT, (WPARAM)hFont, TRUE);
}

/*
===============================================================================
Function: CreateVDXInfoTab - VDX viewer with palette and bitmap display
===============================================================================
*/
static void CreateVDXInfoTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    HFONT hBoldFont = CreateFontW(-14, 0, 0, 0, FW_BOLD, FALSE, FALSE, FALSE,
        DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
        DEFAULT_QUALITY, DEFAULT_PITCH | FF_DONTCARE, L"Segoe UI");
    
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
    g_vdxControls[16] = CreateWindowExW(0, L"BUTTON", L"Show unchanged",
        WS_CHILD | BS_AUTOCHECKBOX,
        10, 310, 128, 20, hwnd, (HMENU)IDC_VDX_DELTA_VIS_CHECK, hInst, nullptr);
    SendMessage(g_vdxControls[16], WM_SETFONT, (WPARAM)hFont, TRUE);
    
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
    for (int i = 0; i < 4; i++) {
        if (g_archiveControls[i]) ShowWindow(g_archiveControls[i], SW_HIDE);
    }
    for (int i = 0; i < 17; i++) {
        if (g_vdxControls[i]) ShowWindow(g_vdxControls[i], SW_HIDE);
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
    case TAB_ARCHIVE_INFO:
        for (int i = 0; i < 4; i++) {
            if (g_archiveControls[i]) {
                ShowWindow(g_archiveControls[i], SW_SHOW);
                BringWindowToTop(g_archiveControls[i]);
            }
        }
        break;
    case TAB_VDX_INFO:
        for (int i = 0; i < 17; i++) {
            if (g_vdxControls[i]) {
                ShowWindow(g_vdxControls[i], SW_SHOW);
                BringWindowToTop(g_vdxControls[i]);
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
}

/*
===============================================================================
Function: PopulateArchiveList - Load RL file and populate ListView
===============================================================================
*/
static void PopulateArchiveList(const std::string& filename)
{
    HWND hList = g_archiveControls[2];
    ListView_DeleteAllItems(hList);
    
    try {
        // If user selected a GJD file, try to find corresponding RL file
        std::string rlFilename = filename;
        std::filesystem::path filePath(filename);
        std::string ext = filePath.extension().string();
        std::transform(ext.begin(), ext.end(), ext.begin(), ::tolower);
        
        if (ext == ".gjd") {
            // Try to find RL file with same base name
            std::filesystem::path rlPath = filePath;
            rlPath.replace_extension(".RL");
            if (std::filesystem::exists(rlPath)) {
                rlFilename = rlPath.string();
            } else {
                rlPath.replace_extension(".rl");
                if (std::filesystem::exists(rlPath)) {
                    rlFilename = rlPath.string();
                } else {
                    SetWindowTextA(g_archiveControls[3], "Error: Corresponding RL file not found.");
                    return;
                }
            }
            // Update the text box to show the RL file we're actually using
            SetWindowTextA(g_archiveControls[0], rlFilename.c_str());
        }
        
        auto entries = parseRLFile(rlFilename);
        
        int rlOffset = 0;
        for (size_t i = 0; i < entries.size(); i++) {
            const auto& entry = entries[i];
            
            std::wstring wFilename(entry.filename.begin(), entry.filename.end());
            
            LVITEMW lvi = {};
            lvi.mask = LVIF_TEXT | LVIF_PARAM;
            lvi.iItem = static_cast<int>(i);
            lvi.lParam = static_cast<LPARAM>(i);
            lvi.pszText = const_cast<LPWSTR>(wFilename.c_str());
            ListView_InsertItem(hList, &lvi);
            
            std::wstring wOffset = FormatOffset(entry.offset);
            ListView_SetItemText(hList, static_cast<int>(i), 1, const_cast<LPWSTR>(wOffset.c_str()));
            
            std::wstring wSize = FormatSize(entry.length);
            ListView_SetItemText(hList, static_cast<int>(i), 2, const_cast<LPWSTR>(wSize.c_str()));
            
            std::wstring wRLOffset = FormatOffset(rlOffset);
            ListView_SetItemText(hList, static_cast<int>(i), 3, const_cast<LPWSTR>(wRLOffset.c_str()));
            
            rlOffset += 20;
        }
        
        char status[256];
        snprintf(status, sizeof(status), "Loaded %zu entries from archive.", entries.size());
        SetWindowTextA(g_archiveControls[3], status);
        
        g_currentRLEntries = entries;
        g_currentRLFile = rlFilename;
        
        // Store GJD path for VDX loading
        std::filesystem::path gjdPath(rlFilename);
        gjdPath.replace_extension(".GJD");
        if (std::filesystem::exists(gjdPath)) {
            g_currentGJDFile = gjdPath.string();
        } else {
            gjdPath.replace_extension(".gjd");
            if (std::filesystem::exists(gjdPath)) {
                g_currentGJDFile = gjdPath.string();
            }
        }
    }
    catch (const std::exception& e) {
        char error[512];
        snprintf(error, sizeof(error), "Error: %s", e.what());
        SetWindowTextA(g_archiveControls[3], error);
    }
}

/*
===============================================================================
Function: PopulateVDXInfoList - Load VDX and show header + chunk info
===============================================================================
*/
static void PopulateVDXInfoList(const std::string& filename)
{
    // New control indices:
    // [5]=0x20 list, [9]=0x25 list, [12]=0x80 list
    HWND hList0x20 = g_vdxControls[5];   // 0x20 Bitmap ListView
    HWND hList0x25 = g_vdxControls[9];   // 0x25 Delta / 0x00 Duplicate ListView
    HWND hList0x80 = g_vdxControls[12];  // 0x80 Audio ListView
    
    ListView_DeleteAllItems(hList0x20);
    ListView_DeleteAllItems(hList0x25);
    ListView_DeleteAllItems(hList0x80);
    g_vdxChunks.clear();
    g_decompressedChunks.clear();
    g_currentVDXFile = filename;
    g_hasPalette = false;
    memset(g_palette, 0, sizeof(g_palette));
    g_bitmapData.clear();
    g_baseFrame.clear();
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
        VDXFile& vdx = g_currentVDX;
        
        // Display VDX Header information (only identifier + unknown bytes)
        char headerInfo[256];
        snprintf(headerInfo, sizeof(headerInfo),
            "Identifier: 0x%04X   Unknown: {0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X}",
            vdx.identifier,
            vdx.unknown[0], vdx.unknown[1], vdx.unknown[2],
            vdx.unknown[3], vdx.unknown[4], vdx.unknown[5]);
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
            data.lzssCompressed = (chunk.lengthMask != 0 && chunk.lengthBits != 0);
            
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
                    
                    if (chunk.lengthBits != 0 && chunk.lengthMask != 0) {
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
                        g_basePalette = g_currentPalette;
                        
                        // Decode the full bitmap using getBitmapData
                        g_bitmapWidth = bitmapWidth;
                        g_bitmapHeight = bitmapHeight;
                        g_bitmapData.resize(static_cast<size_t>(bitmapWidth) * bitmapHeight * 3);
                        g_baseFrame.resize(static_cast<size_t>(bitmapWidth) * bitmapHeight * 3);
                        getBitmapData(dataToRead, g_currentPalette, g_bitmapData);
                        // Copy base frame for delta application
                        g_baseFrame = g_bitmapData;
                    }
                }
            } else if (chunk.chunkType == 0x25 || chunk.chunkType == 0x00) {
                // 0x25 = delta, 0x00 = duplicate previous
                targetList = hList0x25;
                targetCount = &count0x25;
                
                // Store decompressed chunk data for later delta rendering
                DecompressedChunk dc;
                dc.chunkType = chunk.chunkType;
                dc.chunkIndex = idx;
                if (chunk.chunkType == 0x25 && chunk.data.size() > 0) {
                    if (chunk.lengthBits != 0 && chunk.lengthMask != 0) {
                        dc.data.resize(chunk.dataSize * 20);
                        size_t decompSize = lzssDecompress(chunk.data, dc.data, chunk.lengthMask, chunk.lengthBits);
                        dc.data.resize(decompSize);
                    } else {
                        dc.data = std::vector<uint8_t>(chunk.data.begin(), chunk.data.end());
                    }
                }
                g_decompressedChunks.push_back(std::move(dc));
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
        g_decompressedChunks.clear();
        g_currentVDXFile = entry.filename;
        g_hasPalette = false;
        memset(g_palette, 0, sizeof(g_palette));
        g_bitmapData.clear();
        g_baseFrame.clear();
        g_bitmapWidth = 0;
        g_bitmapHeight = 0;
        
        // Clear info texts
        SetWindowTextA(g_vdxControls[2], "");   // VDX header
        SetWindowTextA(g_vdxControls[4], "");   // 0x20 info
        SetWindowTextA(g_vdxControls[11], "");  // 0x80 info
        
        // Parse VDX and store for delta processing
        g_currentVDX = parseVDXFile(entry.filename, buffer);
        VDXFile& vdx = g_currentVDX;
        
        // Display VDX Header
        char headerInfo[256];
        snprintf(headerInfo, sizeof(headerInfo),
            "Identifier: 0x%04X   Unknown: {0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X}",
            vdx.identifier,
            vdx.unknown[0], vdx.unknown[1], vdx.unknown[2],
            vdx.unknown[3], vdx.unknown[4], vdx.unknown[5]);
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
            data.lzssCompressed = (chunk.lengthMask != 0 && chunk.lengthBits != 0);
            
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
                    
                    if (chunk.lengthBits != 0 && chunk.lengthMask != 0) {
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
                        g_basePalette = g_currentPalette;
                        
                        // Decode the full bitmap using getBitmapData
                        g_bitmapWidth = bitmapWidth;
                        g_bitmapHeight = bitmapHeight;
                        g_bitmapData.resize(static_cast<size_t>(bitmapWidth) * bitmapHeight * 3);
                        g_baseFrame.resize(static_cast<size_t>(bitmapWidth) * bitmapHeight * 3);
                        getBitmapData(dataToRead, g_currentPalette, g_bitmapData);
                        // Copy base frame for delta application
                        g_baseFrame = g_bitmapData;
                    }
                }
            } else if (chunk.chunkType == 0x25 || chunk.chunkType == 0x00) {
                targetList = hList0x25;
                targetCount = &count0x25;
                
                // Store decompressed chunk data for later delta rendering
                DecompressedChunk dc;
                dc.chunkType = chunk.chunkType;
                dc.chunkIndex = idx;
                if (chunk.chunkType == 0x25 && chunk.data.size() > 0) {
                    if (chunk.lengthBits != 0 && chunk.lengthMask != 0) {
                        dc.data.resize(chunk.dataSize * 20);
                        size_t decompSize = lzssDecompress(chunk.data, dc.data, chunk.lengthMask, chunk.lengthBits);
                        dc.data.resize(decompSize);
                    } else {
                        dc.data = std::vector<uint8_t>(chunk.data.begin(), chunk.data.end());
                    }
                }
                g_decompressedChunks.push_back(std::move(dc));
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
static int CALLBACK ArchiveListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort)
{
    HWND hList = g_archiveControls[2];
    int col = lParamSort & 0xFFF;
    bool ascending = (lParamSort & 0x1000) == 0;
    
    wchar_t buf1[256] = {0}, buf2[256] = {0};
    ListView_GetItemText(hList, static_cast<int>(lParam1), col, buf1, 256);
    ListView_GetItemText(hList, static_cast<int>(lParam2), col, buf2, 256);
    
    int result = 0;
    
    if (col == 0) {
        result = wcscmp(buf1, buf2);
    } else {
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
