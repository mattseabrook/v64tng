// d2d.h

#ifndef D2D_H
#define D2D_H

#include <d2d1.h>
#include <vector>
#include <cstdint>
#include <wrl/client.h>

#include "render.h"

//
// Render target and bitmap for Direct2D rendering
//
extern Microsoft::WRL::ComPtr<ID2D1HwndRenderTarget> renderTarget;

// Function prototypes for Direct2D rendering

void initializeD2D();
void renderFrameD2D();
void renderFrameRaycast();
void resizeBitmap(UINT width, UINT height);
void cleanupD2D();

#endif // D2D_H