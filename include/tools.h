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

    GUI-based extraction and information tools replacing CLI switches.
    Provides file pickers, list views with sortable columns for:
    - Archive Info (RL/GJD) - combined view of archive contents
    - VDX Info - chunk-level view of VDX files
    - Extract Cursors (-c)
    - Extract VDX (-g) with selective extraction

===============================================================================
*/

// Function prototypes
void ShowToolsWindow(HWND hParent);
void CloseToolsWindow();
void RegisterToolsWindowClass(HINSTANCE hInstance);

// Selective extraction function
bool extractSingleVDX(const std::string& rlFilename, const std::string& vdxName, const std::string& outputDir);

#endif // TOOLS_H

