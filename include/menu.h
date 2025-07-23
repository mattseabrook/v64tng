// menu.h

#ifndef MENU_H
#define MENU_H

#include <windows.h>

enum class MenuCommands
{
    MC_FILE_OPEN = 1,
    MC_FILE_SAVE,
    MC_FILE_EXIT,
    MC_HELP_ABOUT
};

//=============================================================================

void initMenu(HWND hwnd);
LRESULT HandleMenuCommand(HWND hwnd, WPARAM wParam);

#endif // MENU_H