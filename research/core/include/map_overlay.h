// map_overlay.h

#ifndef MAP_OVERLAY_H
#define MAP_OVERLAY_H

#include <windows.h>
#include <vector>
#include <string>

#ifndef PHANTOM_RAYCAST_MAP_HEADER
#if __has_include("cabin.h")
#define PHANTOM_RAYCAST_MAP_HEADER "cabin.h"
#elif __has_include("dungeon.h")
#define PHANTOM_RAYCAST_MAP_HEADER "dungeon.h"
#else
#define PHANTOM_RAYCAST_MAP_HEADER "basement.h"
#endif
#endif
#include PHANTOM_RAYCAST_MAP_HEADER
#include "game.h"

extern HWND g_hwndMapOverlay;
extern bool g_mapOverlayVisible;

//====================================================================

// Function Prototypes

void OpenMapOverlay(HWND parent);
void UpdateMapOverlay();
void CloseMapOverlay();

#endif // MAP_OVERLAY_H
