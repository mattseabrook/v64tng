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

// Tab indices
enum TabIndex {
    TAB_ARCHIVE_INFO = 0,
    TAB_VDX_INFO = 1,
    TAB_EXTRACT_CURSORS = 2,
    TAB_EXTRACT_VDX = 3
};

// Control IDs
enum ControlID {
    IDC_TAB = 1001,
    
    // Archive Info tab
    IDC_ARCHIVE_FILE_EDIT = 1010,
    IDC_ARCHIVE_BROWSE_BTN = 1011,
    IDC_ARCHIVE_LIST = 1012,
    IDC_ARCHIVE_STATUS = 1013,
    
    // VDX Info tab
    IDC_VDX_FILE_EDIT = 1020,
    IDC_VDX_BROWSE_BTN = 1021,
    IDC_VDX_LIST = 1022,
    IDC_VDX_STATUS = 1023,
    
    // Extract Cursors tab
    IDC_CURSOR_FILE_EDIT = 1030,
    IDC_CURSOR_BROWSE_BTN = 1031,
    IDC_CURSOR_EXTRACT_BTN = 1032,
    IDC_CURSOR_STATUS = 1033,
    
    // Extract VDX tab
    IDC_EXVDX_FILE_EDIT = 1040,
    IDC_EXVDX_BROWSE_BTN = 1041,
    IDC_EXVDX_LIST = 1042,
    IDC_EXVDX_SELECT_ALL = 1043,
    IDC_EXVDX_SELECT_NONE = 1044,
    IDC_EXVDX_EXTRACT_BTN = 1045,
    IDC_EXVDX_STATUS = 1046
};

// Tab controls
static HWND g_hTab = nullptr;
static HWND g_archiveControls[4] = {0};  // edit, browse btn, listview, status
static HWND g_vdxControls[4] = {0};       // edit, browse btn, listview, status
static HWND g_cursorControls[4] = {0};    // edit, browse btn, extract btn, status
static HWND g_exvdxControls[7] = {0};     // edit, browse btn, listview, select all, select none, extract, status

// VDX chunk data for sorting
struct VDXChunkData {
    int index;
    std::string type;
    size_t offset;
    size_t size;
    std::string info;
};
static std::vector<VDXChunkData> g_vdxChunks;

// Forward declarations
static LRESULT CALLBACK ToolsWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);
static void CreateTabs(HWND hwnd);
static void SwitchTab(int tabIndex);
static void CreateArchiveInfoTab(HWND hwnd);
static void CreateVDXInfoTab(HWND hwnd);
static void CreateExtractCursorsTab(HWND hwnd);
static void CreateExtractVDXTab(HWND hwnd);
static void HideAllTabs();
static void ShowTab(int tabIndex);
static std::string OpenFileDialog(HWND hwnd, const wchar_t* filter, const wchar_t* title);
static void PopulateArchiveList(const std::string& filename);
static void PopulateVDXInfoList(const std::string& filename);
static void PopulateExtractVDXList(const std::string& rlFilename);
static std::wstring FormatOffset(size_t offset);
static std::wstring FormatSize(size_t size);
static int CALLBACK ArchiveListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
static int CALLBACK VDXListCompare(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);

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
        L"v64tng Tools",
        WS_OVERLAPPEDWINDOW | WS_VISIBLE,
        x, y, WINDOW_WIDTH, WINDOW_HEIGHT,
        hParent,  // Set parent so it closes with main window
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
Function: ToolsWndProc
===============================================================================
*/
static LRESULT CALLBACK ToolsWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg) {
    case WM_CREATE:
        g_menuActive = true;  // Use normal Windows cursors while Tools window is open
        CreateTabs(hwnd);
        CreateArchiveInfoTab(hwnd);
        CreateVDXInfoTab(hwnd);
        CreateExtractCursorsTab(hwnd);
        CreateExtractVDXTab(hwnd);
        SwitchTab(TAB_ARCHIVE_INFO);
        return 0;
        
    case WM_SIZE: {
        RECT rc;
        GetClientRect(hwnd, &rc);
        
        // Resize tab control
        if (g_hTab) {
            SetWindowPos(g_hTab, nullptr, 5, 5, rc.right - 10, rc.bottom - 10, SWP_NOZORDER);
        }
        
        // Resize list views in each tab
        int listWidth = rc.right - 50;
        int listHeight = rc.bottom - 140;
        
        if (g_archiveControls[2]) {
            SetWindowPos(g_archiveControls[2], nullptr, 20, 90, listWidth, listHeight, SWP_NOZORDER);
        }
        if (g_vdxControls[2]) {
            SetWindowPos(g_vdxControls[2], nullptr, 20, 90, listWidth, listHeight, SWP_NOZORDER);
        }
        if (g_exvdxControls[2]) {
            SetWindowPos(g_exvdxControls[2], nullptr, 20, 90, listWidth, listHeight - 40, SWP_NOZORDER);
        }
        return 0;
    }
    
    case WM_NOTIFY: {
        NMHDR* nmhdr = (NMHDR*)lParam;
        
        // Tab change
        if (nmhdr->idFrom == IDC_TAB && nmhdr->code == TCN_SELCHANGE) {
            int sel = TabCtrl_GetCurSel(g_hTab);
            SwitchTab(sel);
            return 0;
        }
        
        // List view column click for sorting
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
            else if (nmhdr->idFrom == IDC_VDX_LIST) {
                if (g_vdxSortColumn == pnmv->iSubItem) {
                    g_vdxSortAscending = !g_vdxSortAscending;
                } else {
                    g_vdxSortColumn = pnmv->iSubItem;
                    g_vdxSortAscending = true;
                }
                ListView_SortItemsEx(g_vdxControls[2], VDXListCompare,
                    (LPARAM)(g_vdxSortColumn | (g_vdxSortAscending ? 0 : 0x1000)));
            }
            return 0;
        }
        break;
    }
    
    case WM_COMMAND: {
        int id = LOWORD(wParam);
        
        switch (id) {
        // Archive Info
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
        
        // VDX Info
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
        
        // Extract Cursors
        case IDC_CURSOR_BROWSE_BTN: {
            std::string file = OpenFileDialog(hwnd,
                L"GJD Files (*.GJD)\0*.GJD\0All Files (*.*)\0*.*\0",
                L"Select ROB.GJD");
            if (!file.empty()) {
                SetWindowTextA(g_cursorControls[0], file.c_str());
            }
            break;
        }
        case IDC_CURSOR_EXTRACT_BTN: {
            char path[MAX_PATH] = {0};
            GetWindowTextA(g_cursorControls[0], path, MAX_PATH);
            if (strlen(path) > 0) {
                SetWindowTextA(g_cursorControls[3], "Extracting cursors...");
                UpdateWindow(g_cursorControls[3]);
                extractCursors(path);
                SetWindowTextA(g_cursorControls[3], "Extraction complete!");
            }
            break;
        }
        
        // Extract VDX
        case IDC_EXVDX_BROWSE_BTN: {
            std::string file = OpenFileDialog(hwnd,
                L"RL Files (*.RL)\0*.RL\0All Files (*.*)\0*.*\0",
                L"Select RL File");
            if (!file.empty()) {
                SetWindowTextA(g_exvdxControls[0], file.c_str());
                PopulateExtractVDXList(file);
            }
            break;
        }
        case IDC_EXVDX_SELECT_ALL: {
            HWND hList = g_exvdxControls[2];
            int count = ListView_GetItemCount(hList);
            for (int i = 0; i < count; i++) {
                ListView_SetItemState(hList, i, LVIS_SELECTED, LVIS_SELECTED);
            }
            break;
        }
        case IDC_EXVDX_SELECT_NONE: {
            HWND hList = g_exvdxControls[2];
            int count = ListView_GetItemCount(hList);
            for (int i = 0; i < count; i++) {
                ListView_SetItemState(hList, i, 0, LVIS_SELECTED);
            }
            break;
        }
        case IDC_EXVDX_EXTRACT_BTN: {
            if (g_currentRLFile.empty() || g_currentRLEntries.empty()) {
                SetWindowTextA(g_exvdxControls[6], "No RL file loaded.");
                break;
            }
            
            HWND hList = g_exvdxControls[2];
            int selectedCount = ListView_GetSelectedCount(hList);
            if (selectedCount == 0) {
                SetWindowTextA(g_exvdxControls[6], "No files selected.");
                break;
            }
            
            // Get output directory (same as RL file location)
            std::filesystem::path rlPath(g_currentRLFile);
            std::string outputDir = rlPath.parent_path().string();
            
            int extracted = 0;
            int pos = -1;
            while ((pos = ListView_GetNextItem(hList, pos, LVNI_SELECTED)) != -1) {
                if (pos < static_cast<int>(g_currentRLEntries.size())) {
                    if (extractSingleVDX(g_currentRLFile, g_currentRLEntries[pos].filename, outputDir)) {
                        extracted++;
                    }
                }
            }
            
            char status[256];
            snprintf(status, sizeof(status), "Extracted %d of %d selected files.", extracted, selectedCount);
            SetWindowTextA(g_exvdxControls[6], status);
            break;
        }
        }
        return 0;
    }
    
    case WM_CLOSE:
        DestroyWindow(hwnd);
        return 0;
        
    case WM_DESTROY:
        g_menuActive = false;  // Restore animated cursors
        g_toolsWindow = nullptr;
        g_hTab = nullptr;
        memset(g_archiveControls, 0, sizeof(g_archiveControls));
        memset(g_vdxControls, 0, sizeof(g_vdxControls));
        memset(g_cursorControls, 0, sizeof(g_cursorControls));
        memset(g_exvdxControls, 0, sizeof(g_exvdxControls));
        g_currentRLEntries.clear();
        g_currentRLFile.clear();
        g_vdxChunks.clear();
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
    
    g_hTab = CreateWindowExW(0, WC_TABCONTROLW, L"",
        WS_CHILD | WS_VISIBLE | WS_CLIPSIBLINGS,
        5, 5, rc.right - 10, rc.bottom - 10,
        hwnd, (HMENU)IDC_TAB, hInst, nullptr);
    
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    SendMessage(g_hTab, WM_SETFONT, (WPARAM)hFont, TRUE);
    
    TCITEMW tie = {};
    tie.mask = TCIF_TEXT;
    
    tie.pszText = (LPWSTR)L"Archive Info (RL/GJD)";
    TabCtrl_InsertItem(g_hTab, TAB_ARCHIVE_INFO, &tie);
    
    tie.pszText = (LPWSTR)L"VDX Info";
    TabCtrl_InsertItem(g_hTab, TAB_VDX_INFO, &tie);
    
    tie.pszText = (LPWSTR)L"Extract Cursors";
    TabCtrl_InsertItem(g_hTab, TAB_EXTRACT_CURSORS, &tie);
    
    tie.pszText = (LPWSTR)L"Extract VDX";
    TabCtrl_InsertItem(g_hTab, TAB_EXTRACT_VDX, &tie);
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
    
    // File path edit
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
        WS_CHILD | LVS_REPORT | LVS_SHOWSELALWAYS,
        20, 90, 770, 450, hwnd, (HMENU)IDC_ARCHIVE_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_archiveControls[2], 
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_HEADERDRAGDROP);
    
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
Function: CreateVDXInfoTab - ListView for VDX chunk info
===============================================================================
*/
static void CreateVDXInfoTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    
    // File path edit
    g_vdxControls[0] = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", L"",
        WS_CHILD | ES_AUTOHSCROLL | ES_READONLY,
        20, 50, 680, 24, hwnd, (HMENU)IDC_VDX_FILE_EDIT, hInst, nullptr);
    SendMessage(g_vdxControls[0], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Browse button
    g_vdxControls[1] = CreateWindowExW(0, L"BUTTON", L"Browse...",
        WS_CHILD | BS_PUSHBUTTON,
        710, 50, 80, 24, hwnd, (HMENU)IDC_VDX_BROWSE_BTN, hInst, nullptr);
    SendMessage(g_vdxControls[1], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // ListView
    g_vdxControls[2] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | LVS_REPORT | LVS_SHOWSELALWAYS,
        20, 90, 770, 450, hwnd, (HMENU)IDC_VDX_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_vdxControls[2],
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_HEADERDRAGDROP);
    
    // Add columns
    LVCOLUMNW lvc = {};
    lvc.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
    
    lvc.iSubItem = 0;
    lvc.pszText = (LPWSTR)L"#";
    lvc.cx = 50;
    ListView_InsertColumn(g_vdxControls[2], 0, &lvc);
    
    lvc.iSubItem = 1;
    lvc.pszText = (LPWSTR)L"Type";
    lvc.cx = 120;
    ListView_InsertColumn(g_vdxControls[2], 1, &lvc);
    
    lvc.iSubItem = 2;
    lvc.pszText = (LPWSTR)L"Offset";
    lvc.cx = 130;
    ListView_InsertColumn(g_vdxControls[2], 2, &lvc);
    
    lvc.iSubItem = 3;
    lvc.pszText = (LPWSTR)L"Size";
    lvc.cx = 100;
    ListView_InsertColumn(g_vdxControls[2], 3, &lvc);
    
    lvc.iSubItem = 4;
    lvc.pszText = (LPWSTR)L"Info";
    lvc.cx = 300;
    ListView_InsertColumn(g_vdxControls[2], 4, &lvc);
    
    // Status
    g_vdxControls[3] = CreateWindowExW(0, L"STATIC", L"Select a VDX file to view chunk info.",
        WS_CHILD | SS_LEFT,
        20, 550, 600, 20, hwnd, (HMENU)IDC_VDX_STATUS, hInst, nullptr);
    SendMessage(g_vdxControls[3], WM_SETFONT, (WPARAM)hFont, TRUE);
}

/*
===============================================================================
Function: CreateExtractCursorsTab
===============================================================================
*/
static void CreateExtractCursorsTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    
    // File path edit
    g_cursorControls[0] = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", L"",
        WS_CHILD | ES_AUTOHSCROLL | ES_READONLY,
        20, 50, 580, 24, hwnd, (HMENU)IDC_CURSOR_FILE_EDIT, hInst, nullptr);
    SendMessage(g_cursorControls[0], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Browse button
    g_cursorControls[1] = CreateWindowExW(0, L"BUTTON", L"Browse...",
        WS_CHILD | BS_PUSHBUTTON,
        610, 50, 80, 24, hwnd, (HMENU)IDC_CURSOR_BROWSE_BTN, hInst, nullptr);
    SendMessage(g_cursorControls[1], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Extract button
    g_cursorControls[2] = CreateWindowExW(0, L"BUTTON", L"Extract",
        WS_CHILD | BS_PUSHBUTTON,
        700, 50, 80, 24, hwnd, (HMENU)IDC_CURSOR_EXTRACT_BTN, hInst, nullptr);
    SendMessage(g_cursorControls[2], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Status
    g_cursorControls[3] = CreateWindowExW(0, L"STATIC", L"Select ROB.GJD to extract cursor images.",
        WS_CHILD | SS_LEFT,
        20, 100, 600, 20, hwnd, (HMENU)IDC_CURSOR_STATUS, hInst, nullptr);
    SendMessage(g_cursorControls[3], WM_SETFONT, (WPARAM)hFont, TRUE);
}

/*
===============================================================================
Function: CreateExtractVDXTab
===============================================================================
*/
static void CreateExtractVDXTab(HWND hwnd)
{
    HINSTANCE hInst = GetModuleHandle(nullptr);
    HFONT hFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    
    // File path edit
    g_exvdxControls[0] = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", L"",
        WS_CHILD | ES_AUTOHSCROLL | ES_READONLY,
        20, 50, 680, 24, hwnd, (HMENU)IDC_EXVDX_FILE_EDIT, hInst, nullptr);
    SendMessage(g_exvdxControls[0], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Browse button
    g_exvdxControls[1] = CreateWindowExW(0, L"BUTTON", L"Browse...",
        WS_CHILD | BS_PUSHBUTTON,
        710, 50, 80, 24, hwnd, (HMENU)IDC_EXVDX_BROWSE_BTN, hInst, nullptr);
    SendMessage(g_exvdxControls[1], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // ListView with checkboxes
    g_exvdxControls[2] = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW, L"",
        WS_CHILD | LVS_REPORT | LVS_SHOWSELALWAYS,
        20, 90, 770, 400, hwnd, (HMENU)IDC_EXVDX_LIST, hInst, nullptr);
    ListView_SetExtendedListViewStyle(g_exvdxControls[2],
        LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES);
    
    // Add columns
    LVCOLUMNW lvc = {};
    lvc.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
    
    lvc.iSubItem = 0;
    lvc.pszText = (LPWSTR)L"Filename";
    lvc.cx = 250;
    ListView_InsertColumn(g_exvdxControls[2], 0, &lvc);
    
    lvc.iSubItem = 1;
    lvc.pszText = (LPWSTR)L"Offset";
    lvc.cx = 150;
    ListView_InsertColumn(g_exvdxControls[2], 1, &lvc);
    
    lvc.iSubItem = 2;
    lvc.pszText = (LPWSTR)L"Size";
    lvc.cx = 120;
    ListView_InsertColumn(g_exvdxControls[2], 2, &lvc);
    
    // Select All button
    g_exvdxControls[3] = CreateWindowExW(0, L"BUTTON", L"Select All",
        WS_CHILD | BS_PUSHBUTTON,
        20, 500, 100, 24, hwnd, (HMENU)IDC_EXVDX_SELECT_ALL, hInst, nullptr);
    SendMessage(g_exvdxControls[3], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Select None button
    g_exvdxControls[4] = CreateWindowExW(0, L"BUTTON", L"Select None",
        WS_CHILD | BS_PUSHBUTTON,
        130, 500, 100, 24, hwnd, (HMENU)IDC_EXVDX_SELECT_NONE, hInst, nullptr);
    SendMessage(g_exvdxControls[4], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Extract button
    g_exvdxControls[5] = CreateWindowExW(0, L"BUTTON", L"Extract Selected",
        WS_CHILD | BS_PUSHBUTTON,
        680, 500, 110, 24, hwnd, (HMENU)IDC_EXVDX_EXTRACT_BTN, hInst, nullptr);
    SendMessage(g_exvdxControls[5], WM_SETFONT, (WPARAM)hFont, TRUE);
    
    // Status
    g_exvdxControls[6] = CreateWindowExW(0, L"STATIC", L"Select an RL file, then choose VDX files to extract.",
        WS_CHILD | SS_LEFT,
        20, 535, 600, 20, hwnd, (HMENU)IDC_EXVDX_STATUS, hInst, nullptr);
    SendMessage(g_exvdxControls[6], WM_SETFONT, (WPARAM)hFont, TRUE);
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
        if (g_vdxControls[i]) ShowWindow(g_vdxControls[i], SW_HIDE);
        if (g_cursorControls[i]) ShowWindow(g_cursorControls[i], SW_HIDE);
    }
    for (int i = 0; i < 7; i++) {
        if (g_exvdxControls[i]) ShowWindow(g_exvdxControls[i], SW_HIDE);
    }
}

/*
===============================================================================
Function: ShowTab
===============================================================================
*/
static void ShowTab(int tabIndex)
{
    HWND* controls = nullptr;
    int count = 0;
    
    switch (tabIndex) {
    case TAB_ARCHIVE_INFO:
        controls = g_archiveControls;
        count = 4;
        break;
    case TAB_VDX_INFO:
        controls = g_vdxControls;
        count = 4;
        break;
    case TAB_EXTRACT_CURSORS:
        controls = g_cursorControls;
        count = 4;
        break;
    case TAB_EXTRACT_VDX:
        controls = g_exvdxControls;
        count = 7;
        break;
    }
    
    if (controls) {
        for (int i = 0; i < count; i++) {
            if (controls[i]) ShowWindow(controls[i], SW_SHOW);
        }
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
        auto entries = parseRLFile(filename);
        
        int rlOffset = 0;
        for (size_t i = 0; i < entries.size(); i++) {
            const auto& entry = entries[i];
            
            // Convert filename to wide string
            std::wstring wFilename(entry.filename.begin(), entry.filename.end());
            
            LVITEMW lvi = {};
            lvi.mask = LVIF_TEXT | LVIF_PARAM;
            lvi.iItem = static_cast<int>(i);
            lvi.lParam = static_cast<LPARAM>(i);  // Store index for sorting
            lvi.pszText = const_cast<LPWSTR>(wFilename.c_str());
            ListView_InsertItem(hList, &lvi);
            
            // Offset (with commas)
            std::wstring wOffset = FormatOffset(entry.offset);
            ListView_SetItemText(hList, static_cast<int>(i), 1, const_cast<LPWSTR>(wOffset.c_str()));
            
            // Size (KB/MB)
            std::wstring wSize = FormatSize(entry.length);
            ListView_SetItemText(hList, static_cast<int>(i), 2, const_cast<LPWSTR>(wSize.c_str()));
            
            // RL Offset
            std::wstring wRLOffset = FormatOffset(rlOffset);
            ListView_SetItemText(hList, static_cast<int>(i), 3, const_cast<LPWSTR>(wRLOffset.c_str()));
            
            rlOffset += 20;
        }
        
        char status[256];
        snprintf(status, sizeof(status), "Loaded %zu entries from archive.", entries.size());
        SetWindowTextA(g_archiveControls[3], status);
        
        // Store for later use
        g_currentRLEntries = entries;
        g_currentRLFile = filename;
    }
    catch (const std::exception& e) {
        char error[512];
        snprintf(error, sizeof(error), "Error: %s", e.what());
        SetWindowTextA(g_archiveControls[3], error);
    }
}

/*
===============================================================================
Function: PopulateVDXInfoList - Load VDX and show chunk info
===============================================================================
*/
static void PopulateVDXInfoList(const std::string& filename)
{
    HWND hList = g_vdxControls[2];
    ListView_DeleteAllItems(hList);
    g_vdxChunks.clear();
    
    try {
        std::ifstream file(filename, std::ios::binary);
        if (!file) {
            SetWindowTextA(g_vdxControls[3], "Error: Cannot open file.");
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
        
        int idx = 0;
        size_t currentOffset = 8;  // VDX header is 8 bytes
        for (const auto& chunk : vdx.chunks) {
            VDXChunkData data;
            data.index = idx;
            data.offset = currentOffset;
            data.size = chunk.dataSize;
            
            // Move to next chunk (header is 4 bytes: type, unknown, 2-byte size... but dataSize is the payload)
            // VDX chunk header: 1 byte type + 1 byte unknown + 4 byte dataSize + 1 byte lengthMask + 1 byte lengthBits = 8 bytes
            currentOffset += 8 + chunk.dataSize;
            
            // Determine chunk type
            switch (chunk.chunkType) {
                case 0x00: data.type = "End/Duplicate"; break;
                case 0x20: data.type = "Video (Still)"; break;
                case 0x25: data.type = "Video (Delta)"; break;
                case 0x80: data.type = "Audio (Raw)"; break;
                default: {
                    char hexBuf[16];
                    snprintf(hexBuf, sizeof(hexBuf), "Unknown (0x%02X)", chunk.chunkType);
                    data.type = hexBuf;
                    break;
                }
            }
            
            // Build info string
            std::ostringstream info;
            if (chunk.chunkType == 0x20) {
                info << "Static frame (keyframe)";
            } else if (chunk.chunkType == 0x25) {
                info << "Delta from previous frame";
            } else if (chunk.chunkType == 0x80) {
                info << "8-bit PCM audio data";
            } else if (chunk.chunkType == 0x00) {
                info << "Duplicate previous frame";
            }
            data.info = info.str();
            
            g_vdxChunks.push_back(data);
            
            // Add to ListView
            std::wstring wIndex = std::to_wstring(idx);
            LVITEMW lvi = {};
            lvi.mask = LVIF_TEXT | LVIF_PARAM;
            lvi.iItem = idx;
            lvi.lParam = static_cast<LPARAM>(idx);
            lvi.pszText = const_cast<LPWSTR>(wIndex.c_str());
            ListView_InsertItem(hList, &lvi);
            
            std::wstring wType(data.type.begin(), data.type.end());
            ListView_SetItemText(hList, idx, 1, const_cast<LPWSTR>(wType.c_str()));
            
            std::wstring wOffset = FormatOffset(data.offset);
            ListView_SetItemText(hList, idx, 2, const_cast<LPWSTR>(wOffset.c_str()));
            
            std::wstring wSize = FormatSize(data.size);
            ListView_SetItemText(hList, idx, 3, const_cast<LPWSTR>(wSize.c_str()));
            
            std::wstring wInfo(data.info.begin(), data.info.end());
            ListView_SetItemText(hList, idx, 4, const_cast<LPWSTR>(wInfo.c_str()));
            
            idx++;
        }
        
        char status[256];
        snprintf(status, sizeof(status), "VDX: %d x %d, %zu chunks", vdx.width, vdx.height, vdx.chunks.size());
        SetWindowTextA(g_vdxControls[3], status);
    }
    catch (const std::exception& e) {
        char error[512];
        snprintf(error, sizeof(error), "Error: %s", e.what());
        SetWindowTextA(g_vdxControls[3], error);
    }
}

/*
===============================================================================
Function: PopulateExtractVDXList
===============================================================================
*/
static void PopulateExtractVDXList(const std::string& rlFilename)
{
    HWND hList = g_exvdxControls[2];
    ListView_DeleteAllItems(hList);
    g_currentRLEntries.clear();
    g_currentRLFile.clear();
    
    try {
        auto entries = parseRLFile(rlFilename);
        g_currentRLEntries = entries;
        g_currentRLFile = rlFilename;
        
        for (size_t i = 0; i < entries.size(); i++) {
            const auto& entry = entries[i];
            
            std::wstring wFilename(entry.filename.begin(), entry.filename.end());
            
            LVITEMW lvi = {};
            lvi.mask = LVIF_TEXT;
            lvi.iItem = static_cast<int>(i);
            lvi.pszText = const_cast<LPWSTR>(wFilename.c_str());
            ListView_InsertItem(hList, &lvi);
            
            std::wstring wOffset = FormatOffset(entry.offset);
            ListView_SetItemText(hList, static_cast<int>(i), 1, const_cast<LPWSTR>(wOffset.c_str()));
            
            std::wstring wSize = FormatSize(entry.length);
            ListView_SetItemText(hList, static_cast<int>(i), 2, const_cast<LPWSTR>(wSize.c_str()));
        }
        
        char status[256];
        snprintf(status, sizeof(status), "Found %zu VDX files. Use Ctrl+Click or Shift+Click to select multiple.", entries.size());
        SetWindowTextA(g_exvdxControls[6], status);
    }
    catch (const std::exception& e) {
        char error[512];
        snprintf(error, sizeof(error), "Error: %s", e.what());
        SetWindowTextA(g_exvdxControls[6], error);
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
        // Filename - alphabetical
        result = wcscmp(buf1, buf2);
    } else {
        // Numeric columns - parse and compare
        // Remove commas, KB, MB for comparison
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
    HWND hList = g_vdxControls[2];
    int col = lParamSort & 0xFFF;
    bool ascending = (lParamSort & 0x1000) == 0;
    
    wchar_t buf1[256] = {0}, buf2[256] = {0};
    ListView_GetItemText(hList, static_cast<int>(lParam1), col, buf1, 256);
    ListView_GetItemText(hList, static_cast<int>(lParam2), col, buf2, 256);
    
    int result = 0;
    
    if (col == 1 || col == 4) {
        // Type or Info - alphabetical
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

/*
===============================================================================
Function: extractSingleVDX - Extract one VDX from archive
===============================================================================
*/
bool extractSingleVDX(const std::string& rlFilename, const std::string& vdxName, const std::string& outputDir)
{
    try {
        // Find the GJD file (same name as RL but .GJD extension)
        std::filesystem::path rlPath(rlFilename);
        std::filesystem::path gjdPath = rlPath;
        gjdPath.replace_extension(".GJD");
        
        if (!std::filesystem::exists(gjdPath)) {
            // Try lowercase
            gjdPath.replace_extension(".gjd");
            if (!std::filesystem::exists(gjdPath)) {
                return false;
            }
        }
        
        // Find the entry
        auto entries = parseRLFile(rlFilename);
        for (const auto& entry : entries) {
            if (entry.filename == vdxName) {
                // Read from GJD
                std::ifstream gjdFile(gjdPath, std::ios::binary);
                if (!gjdFile) return false;
                
                gjdFile.seekg(entry.offset);
                std::vector<uint8_t> data(entry.length);
                gjdFile.read(reinterpret_cast<char*>(data.data()), entry.length);
                gjdFile.close();
                
                // Write to output
                std::filesystem::path outPath = std::filesystem::path(outputDir) / vdxName;
                std::ofstream outFile(outPath, std::ios::binary);
                if (!outFile) return false;
                
                outFile.write(reinterpret_cast<const char*>(data.data()), data.size());
                outFile.close();
                
                return true;
            }
        }
    }
    catch (...) {
        return false;
    }
    return false;
}
