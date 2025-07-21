// map_overlay.h

#ifndef MAP_OVERLAY_H
#define MAP_OVERLAY_H

#include <windows.h>
#include <vector>
#include <string>

#include "basement.h"
#include "game.h"

extern HWND g_hwndMapOverlay;
extern bool g_mapOverlayVisible;

//====================================================================

// Function Prototypes

void OpenMapOverlay(HWND parent);
void UpdateMapOverlay();
void CloseMapOverlay();

#endif // MAP_OVERLAY_H