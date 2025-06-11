// menu.cpp

#include "../resource.h" // For resource IDs

#include "menu.h"
#include "window.h"

/*
===============================================================================
Function Name: initMenu

Description:
    - Initializes the menu for the main window.
    - Creates the File and Help menus with their respective items.

Parameters:
    - hwnd: Handle to the main window.
===============================================================================
*/
void initMenu(HWND hwnd)
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

    SetMenu(hwnd, hMenu);
}

/*
===============================================================================
Function Name: AboutDialogProc

Description:
    - Handles the About dialog box messages.
    - Displays information about the application.

Parameters:
    - hDlg: Handle to the dialog box.
    - message: Message identifier.
    - wParam: Additional message information.
    - lParam: Additional message information.
===============================================================================
*/
LRESULT CALLBACK AboutDialogProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
    (void)lParam;
    switch (message)
    {
    case WM_INITDIALOG:
    {
        g_menuActive = true;
        HWND hParent = GetParent(hDlg);
        if (hParent)
        {
            RECT dlgRect, parentClient;
            GetWindowRect(hDlg, &dlgRect);
            GetClientRect(hParent, &parentClient);
            POINT pt = {parentClient.left, parentClient.top};
            ClientToScreen(hParent, &pt);
            OffsetRect(&parentClient, pt.x, pt.y);
            int x = parentClient.left + ((parentClient.right - parentClient.left) - (dlgRect.right - dlgRect.left)) / 2;
            int y = parentClient.top + ((parentClient.bottom - parentClient.top) - (dlgRect.bottom - dlgRect.top)) / 2;
            SetWindowPos(hDlg, HWND_TOP, x, y, 0, 0, SWP_NOSIZE | SWP_NOZORDER);
        }
        HICON hIcon = static_cast<HICON>(LoadImage(GetModuleHandle(nullptr), MAKEINTRESOURCE(IDI_ICON1), IMAGE_ICON, 0, 0, LR_DEFAULTSIZE));
        SendDlgItemMessage(hDlg, IDC_ABOUT_ICON, STM_SETICON, reinterpret_cast<WPARAM>(hIcon), 0);
        return TRUE;
    }
    case WM_COMMAND:
        if (LOWORD(wParam) == IDOK || LOWORD(wParam) == IDCANCEL)
        {
            g_menuActive = false;
            EndDialog(hDlg, LOWORD(wParam));
            return TRUE;
        }
        break;
    case WM_CLOSE:
        g_menuActive = false;
        EndDialog(hDlg, IDCANCEL);
        return TRUE;
    }
    return FALSE;
}

/*
===============================================================================
Function Name: HandleMenuCommand

Description:
    - Handles menu commands from the main window.
    - Processes commands for File and Help menus.

Parameters:
    - hwnd: Handle to the main window.
    - wParam: Command identifier from the menu selection.
===============================================================================
*/
LRESULT HandleMenuCommand(HWND hwnd, WPARAM wParam)
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