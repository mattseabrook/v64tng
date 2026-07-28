// tools.h

#ifndef TOOLS_H
#define TOOLS_H

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <commctrl.h>
#include <string>
#include <vector>

/*
===============================================================================

    7th Guest - Tools Window

    GUI-based extraction and information tools.
    Provides file pickers, list views with sortable columns for:
    - Archive Info (RL/GJD) - view archive contents
    - VDX Info - chunk-level view of VDX files with extraction
    - Cursors - extract cursor images from ROB.GJD

===============================================================================
*/

// Function prototypes
void ShowToolsWindow(HWND hParent);
void CloseToolsWindow();
void RegisterToolsWindowClass(HINSTANCE hInstance);

#endif // TOOLS_H