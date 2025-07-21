// menu.h

#ifndef MENU_H
#define MENU_H

#include <windows.h>

enum class MenuCommands
{
    FILE_OPEN = 1,
    FILE_SAVE,
    FILE_EXIT,
    HELP_ABOUT
};

//=============================================================================

void initMenu(HWND hwnd);
LRESULT HandleMenuCommand(HWND hwnd, WPARAM wParam);

#endif // MENU_H