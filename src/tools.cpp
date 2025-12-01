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

#pragma comment(lib, "comctl32.lib")

// Window class name
static const wchar_t* TOOLS_CLASS_NAME = L"v64tngToolsClass";

// Tools window handle (for cleanup)
static HWND g_toolsWindow = nullptr;

// Current state
static int g_currentTab = 0;
static std::vector<RLEntry> g_currentRLEntries;
static std::string g_currentRLFile;

// Sorting state for Archive Info
static int g_archiveSortColumn = -1;
static bool g_archiveSortAscending = true;

// Sorting state for VDX Info
static int g_vdxSortColumn = -1;
static bool g_vdxSortAscending = true;

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
    
    // VDX Info tab - new multi-section layout
    IDC_VDX_FILE_EDIT = 1020,
    IDC_VDX_BROWSE_BTN = 1021,
    IDC_VDX_EXTRACT_BTN = 1022,
    IDC_VDX_HEADER_INFO = 1023,
    IDC_VDX_0x20_LABEL = 1024,
    IDC_VDX_0x20_INFO = 1025,
    IDC_VDX_0x20_LIST = 1026,
    IDC_VDX_0x25_LABEL = 1027,
    IDC_VDX_0x25_LIST = 1028,
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
// VDX controls: [0]=edit, [1]=browse, [2]=extract btn, [3]=header info, [4]=0x20 label, [5]=0x20 info,
//               [6]=0x20 list, [7]=0x25 label, [8]=0x25 list, [9]=0x80 label, [10]=0x80 info,
//               [11]=0x80 list, [12]=status
static HWND g_vdxControls[13] = {0};
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
static std::wstring FormatOffset(size_t offset);
static std::wstring FormatSize(size_t size);
static int CALLBACK ArchiveListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
static int CALLBACK VDXListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
static void CheckROBFile();
static void ExtractSelectedVDXChunks();

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
    
    const int WINDOW_WIDTH = 900;
    const int WINDOW_HEIGHT = 650;
    
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
Function: ExtractSelectedVDXChunks - Extract VDX frames from current file
===============================================================================
*/
static void ExtractSelectedVDXChunks()
{
    if (g_currentVDXFile.empty()) {
        SetWindowTextA(g_vdxControls[12], "No VDX file loaded.");
        return;
    }
    
    // Get output directory (same as VDX file location)
    std::filesystem::path vdxPath(g_currentVDXFile);
    std::string outputDir = vdxPath.parent_path().string();
    std::string baseName = vdxPath.stem().string();
    
    SetWindowTextA(g_vdxControls[12], "Extracting frames...");
    UpdateWindow(g_vdxControls[12]);
    
    try {
        // Read VDX file
        std::ifstream file(g_currentVDXFile, std::ios::binary);
        if (!file) {
            SetWindowTextA(g_vdxControls[12], "Error: Cannot open VDX file.");
            return;
        }
        
        file.seekg(0, std::ios::end);
        size_t fileSize = static_cast<size_t>(file.tellg());
        file.seekg(0, std::ios::beg);
        
        std::vector<uint8_t> buffer(fileSize);
        file.read(reinterpret_cast<char*>(buffer.data()), fileSize);
        file.close();
        
        // Parse and extract using existing function
        VDXFile vdx = parseVDXFile(g_currentVDXFile, buffer);
        parseVDXChunks(vdx);
        
        // Create output directory
        std::filesystem::path outDir = std::filesystem::path(outputDir) / baseName;
        std::filesystem::create_directories(outDir);
        
        int frameCount = 0;
        for (size_t i = 0; i < vdx.frameData.size(); i++) {
            std::filesystem::path framePath = outDir / (baseName + "_" + std::to_string(i) + ".raw");
            std::ofstream outFile(framePath, std::ios::binary);
            if (outFile) {
                outFile.write(reinterpret_cast<const char*>(vdx.frameData[i].data()), vdx.frameData[i].size());
                frameCount++;
            }
        }
        
        char status[256];
        snprintf(status, sizeof(status), "Extracted %d frames to %s", frameCount, outDir.string().c_str());
        SetWindowTextA(g_vdxControls[12], status);
    }
    catch (const std::exception& e) {
        char error[512];
        snprintf(error, sizeof(error), "Error: %s", e.what());
        SetWindowTextA(g_vdxControls[12], error);
    }
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
        
        case IDC_VDX_EXTRACT_BTN: {
            ExtractSelectedVDXChunks();
            break;
        }
        
        case IDC_CURSOR_EXTRACT_BTN: {
            SetWindowTextA(g_cursorControls[0], "Extracting cursors...");
            UpdateWindow(g_cursorControls[0]);
            extractCursors("ROB.GJD");
            SetWindowTextA(g_cursorControls[0], "Extraction complete!");
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
        g_vdxChunks.clear();
        g_currentVDXFile.clear();
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
Function: CreateVDXInfoTab - Multi-section VDX viewer grouped by chunk type
===============================================================================
*/
static void CreateVDXInfoTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    HFONT hBoldFont = CreateFontW(-14, 0, 0, 0, FW_BOLD, FALSE, FALSE, FALSE,
        DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
        DEFAULT_QUALITY, DEFAULT_PITCH | FF_DONTCARE, L"Segoe UI");
    
    // [0] File path edit
    g_vdxControls[0] = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", L"",
        WS_CHILD | ES_AUTOHSCROLL | ES_READONLY,
        20, 50, 580, 24, hwnd, (HMENU)IDC_VDX_FILE_EDIT, hInst, nullptr);
    SendMessage(g_vdxControls[0], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [1] Browse button
    g_vdxControls[1] = CreateWindowExW(0, L"BUTTON", L"Browse...",
        WS_CHILD | BS_PUSHBUTTON,
        610, 50, 80, 24, hwnd, (HMENU)IDC_VDX_BROWSE_BTN, hInst, nullptr);
    SendMessage(g_vdxControls[1], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [2] Extract button
    g_vdxControls[2] = CreateWindowExW(0, L"BUTTON", L"Extract Frames",
        WS_CHILD | BS_PUSHBUTTON,
        700, 50, 100, 24, hwnd, (HMENU)IDC_VDX_EXTRACT_BTN, hInst, nullptr);
    SendMessage(g_vdxControls[2], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [3] VDX Header info (just identifier + unknown)
    g_vdxControls[3] = CreateWindowExW(0, L"STATIC", L"",
        WS_CHILD | SS_LEFT,
        20, 82, 770, 18, hwnd, (HMENU)IDC_VDX_HEADER_INFO, hInst, nullptr);
    SendMessage(g_vdxControls[3], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [4] 0x20 Bitmap label (bold)
    g_vdxControls[4] = CreateWindowExW(0, L"STATIC", L"0x20 Bitmap",
        WS_CHILD | SS_LEFT,
        20, 105, 200, 18, hwnd, (HMENU)IDC_VDX_0x20_LABEL, hInst, nullptr);
    SendMessage(g_vdxControls[4], WM_SETFONT, (WPARAM)hBoldFont, TRUE);
    
    // [5] 0x20 info (dimensions, palette, etc.)
    g_vdxControls[5] = CreateWindowExW(0, L"STATIC", L"",
        WS_CHILD | SS_LEFT,
        20, 123, 770, 35, hwnd, (HMENU)IDC_VDX_0x20_INFO, hInst, nullptr);
    SendMessage(g_vdxControls[5], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [6] 0x20 ListView (usually just 1 row)
    g_vdxControls[6] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | WS_VISIBLE | LVS_REPORT | LVS_SHOWSELALWAYS | WS_CLIPSIBLINGS,
        20, 160, 770, 50, hwnd, (HMENU)IDC_VDX_0x20_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_vdxControls[6],
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_DOUBLEBUFFER);
    
    // [7] 0x25/0x00 Delta label (bold)
    g_vdxControls[7] = CreateWindowExW(0, L"STATIC", L"0x25 Delta / 0x00 Duplicate",
        WS_CHILD | SS_LEFT,
        20, 218, 300, 18, hwnd, (HMENU)IDC_VDX_0x25_LABEL, hInst, nullptr);
    SendMessage(g_vdxControls[7], WM_SETFONT, (WPARAM)hBoldFont, TRUE);
    
    // [8] 0x25/0x00 ListView
    g_vdxControls[8] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | WS_VISIBLE | LVS_REPORT | LVS_SHOWSELALWAYS | WS_CLIPSIBLINGS,
        20, 238, 770, 130, hwnd, (HMENU)IDC_VDX_0x25_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_vdxControls[8],
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_DOUBLEBUFFER);
    
    // [9] 0x80 Audio label (bold)
    g_vdxControls[9] = CreateWindowExW(0, L"STATIC", L"0x80 Audio",
        WS_CHILD | SS_LEFT,
        20, 375, 200, 18, hwnd, (HMENU)IDC_VDX_0x80_LABEL, hInst, nullptr);
    SendMessage(g_vdxControls[9], WM_SETFONT, (WPARAM)hBoldFont, TRUE);
    
    // [10] 0x80 info (WAV header details)
    g_vdxControls[10] = CreateWindowExW(0, L"STATIC", L"Format: 8-bit PCM Mono @ 22,050 Hz",
        WS_CHILD | SS_LEFT,
        20, 393, 770, 18, hwnd, (HMENU)IDC_VDX_0x80_INFO, hInst, nullptr);
    SendMessage(g_vdxControls[10], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // [11] 0x80 ListView
    g_vdxControls[11] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | WS_VISIBLE | LVS_REPORT | LVS_SHOWSELALWAYS | WS_CLIPSIBLINGS,
        20, 413, 770, 100, hwnd, (HMENU)IDC_VDX_0x80_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_vdxControls[11],
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_DOUBLEBUFFER);
    
    // [12] Status
    g_vdxControls[12] = CreateWindowExW(0, L"STATIC", L"Select a VDX file to view chunk info.",
        WS_CHILD | SS_LEFT,
        20, 520, 600, 20, hwnd, (HMENU)IDC_VDX_STATUS, hInst, nullptr);
    SendMessage(g_vdxControls[12], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Setup columns for all ListViews
    LVCOLUMNW lvc = {};
    lvc.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
    
    // 0x20 ListView columns
    lvc.iSubItem = 0; lvc.pszText = (LPWSTR)L"#"; lvc.cx = 40;
    ListView_InsertColumn(g_vdxControls[6], 0, &lvc);
    lvc.iSubItem = 1; lvc.pszText = (LPWSTR)L"Offset"; lvc.cx = 100;
    ListView_InsertColumn(g_vdxControls[6], 1, &lvc);
    lvc.iSubItem = 2; lvc.pszText = (LPWSTR)L"Size"; lvc.cx = 100;
    ListView_InsertColumn(g_vdxControls[6], 2, &lvc);
    lvc.iSubItem = 3; lvc.pszText = (LPWSTR)L"LZSS"; lvc.cx = 50;
    ListView_InsertColumn(g_vdxControls[6], 3, &lvc);
    
    // 0x25/0x00 ListView columns
    lvc.iSubItem = 0; lvc.pszText = (LPWSTR)L"#"; lvc.cx = 40;
    ListView_InsertColumn(g_vdxControls[8], 0, &lvc);
    lvc.iSubItem = 1; lvc.pszText = (LPWSTR)L"Type"; lvc.cx = 60;
    ListView_InsertColumn(g_vdxControls[8], 1, &lvc);
    lvc.iSubItem = 2; lvc.pszText = (LPWSTR)L"Offset"; lvc.cx = 100;
    ListView_InsertColumn(g_vdxControls[8], 2, &lvc);
    lvc.iSubItem = 3; lvc.pszText = (LPWSTR)L"Size"; lvc.cx = 100;
    ListView_InsertColumn(g_vdxControls[8], 3, &lvc);
    lvc.iSubItem = 4; lvc.pszText = (LPWSTR)L"LZSS"; lvc.cx = 50;
    ListView_InsertColumn(g_vdxControls[8], 4, &lvc);
    
    // 0x80 ListView columns
    lvc.iSubItem = 0; lvc.pszText = (LPWSTR)L"#"; lvc.cx = 40;
    ListView_InsertColumn(g_vdxControls[11], 0, &lvc);
    lvc.iSubItem = 1; lvc.pszText = (LPWSTR)L"Offset"; lvc.cx = 100;
    ListView_InsertColumn(g_vdxControls[11], 1, &lvc);
    lvc.iSubItem = 2; lvc.pszText = (LPWSTR)L"Size"; lvc.cx = 100;
    ListView_InsertColumn(g_vdxControls[11], 2, &lvc);
    lvc.iSubItem = 3; lvc.pszText = (LPWSTR)L"Duration"; lvc.cx = 80;
    ListView_InsertColumn(g_vdxControls[11], 3, &lvc);
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
    for (int i = 0; i < 13; i++) {
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
        for (int i = 0; i < 13; i++) {
            if (g_vdxControls[i]) {
                ShowWindow(g_vdxControls[i], SW_SHOW);
                BringWindowToTop(g_vdxControls[i]);
            }
        }
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
    HWND hList0x20 = g_vdxControls[6];   // 0x20 Bitmap ListView
    HWND hList0x25 = g_vdxControls[8];   // 0x25 Delta / 0x00 Duplicate ListView
    HWND hList0x80 = g_vdxControls[11];  // 0x80 Audio ListView
    
    ListView_DeleteAllItems(hList0x20);
    ListView_DeleteAllItems(hList0x25);
    ListView_DeleteAllItems(hList0x80);
    g_vdxChunks.clear();
    g_currentVDXFile = filename;
    
    // Clear info texts
    SetWindowTextA(g_vdxControls[3], "");   // VDX header info
    SetWindowTextA(g_vdxControls[5], "");   // 0x20 info
    SetWindowTextA(g_vdxControls[10], "");  // 0x80 info
    SetWindowTextA(g_vdxControls[12], "");  // Status
    
    try {
        std::ifstream file(filename, std::ios::binary);
        if (!file) {
            SetWindowTextA(g_vdxControls[12], "Error: Cannot open file.");
            return;
        }
        
        file.seekg(0, std::ios::end);
        size_t fileSize = static_cast<size_t>(file.tellg());
        file.seekg(0, std::ios::beg);
        
        std::vector<uint8_t> buffer(fileSize);
        file.read(reinterpret_cast<char*>(buffer.data()), fileSize);
        file.close();
        
        // Parse VDX
        VDXFile vdx = parseVDXFile(filename, buffer);
        
        // Display VDX Header information (only identifier + unknown bytes)
        char headerInfo[256];
        snprintf(headerInfo, sizeof(headerInfo),
            "Identifier: 0x%04X   Unknown: {0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X}",
            vdx.identifier,
            vdx.unknown[0], vdx.unknown[1], vdx.unknown[2],
            vdx.unknown[3], vdx.unknown[4], vdx.unknown[5]);
        SetWindowTextA(g_vdxControls[3], headerInfo);
        
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
                if (!foundBitmapHeader && !chunk.data.empty()) {
                    foundBitmapHeader = true;
                    if (chunk.data.size() >= 4) {
                        // Bitmap header: numXTiles (1), numYTiles (1), colorDepth (2)
                        uint8_t numXTiles = chunk.data[0];
                        uint8_t numYTiles = chunk.data[1];
                        colorDepth = chunk.data[2] | (chunk.data[3] << 8);
                        // Each tile is 4x4 pixels
                        bitmapWidth = numXTiles * 4;
                        bitmapHeight = numYTiles * 4;
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
                    // 0x20 columns: #, Offset, Size, LZSS (no type - always 0x20)
                    ListView_SetItemText(targetList, itemIdx, 1, const_cast<LPWSTR>(wOffset.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 2, const_cast<LPWSTR>(wSize.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 3, data.lzssCompressed ? (LPWSTR)L"\u2713" : (LPWSTR)L"");
                }
                else if (targetList == hList0x25) {
                    // 0x25/0x00 columns: #, Type, Offset, Size, LZSS (needs type since both 0x25 and 0x00)
                    wchar_t typeHex[16];
                    swprintf(typeHex, 16, L"0x%02X", chunk.chunkType);
                    ListView_SetItemText(targetList, itemIdx, 1, typeHex);
                    ListView_SetItemText(targetList, itemIdx, 2, const_cast<LPWSTR>(wOffset.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 3, const_cast<LPWSTR>(wSize.c_str()));
                    ListView_SetItemText(targetList, itemIdx, 4, data.lzssCompressed ? (LPWSTR)L"\u2713" : (LPWSTR)L"");
                }
                else if (targetList == hList0x80) {
                    // 0x80 columns: #, Offset, Size, Duration (no LZSS - audio is never compressed)
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
                "Dimensions: %d x %d pixels   Color Depth: %d-bit",
                bitmapWidth, bitmapHeight, colorDepth);
            SetWindowTextA(g_vdxControls[5], bitmapInfo);
        }
        
        // Display 0x80 audio info
        if (count0x80 > 0) {
            double duration = static_cast<double>(totalAudioBytes) / 22050.0;
            char audioInfo[256];
            snprintf(audioInfo, sizeof(audioInfo),
                "Sample Rate: 22,050 Hz   Bit Depth: 8-bit   Channels: Mono   Duration: %.2f seconds",
                duration);
            SetWindowTextA(g_vdxControls[10], audioInfo);
        }
        
        char status[256];
        snprintf(status, sizeof(status), 
            "Loaded %zu chunks: %d bitmap, %d delta/dup, %d audio",
            vdx.chunks.size(), count0x20, count0x25, count0x80);
        SetWindowTextA(g_vdxControls[12], status);
    }
    catch (const std::exception& e) {
        char error[512];
        snprintf(error, sizeof(error), "Error: %s", e.what());
        SetWindowTextA(g_vdxControls[12], error);
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
