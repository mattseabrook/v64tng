// map_overlay.h

#ifndef MAP_OVERLAY_H
#define MAP_OVERLAY_H

#ifndef NOMINMAX
#define NOMINMAX
#endif
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
void CloseMapOverlay();
// Composite the transparent map into the raycast framebuffer each frame.
void renderMapOverlay(uint8_t *fb, size_t pitch, int w, int h);

#endif // MAP_OVERLAY_H