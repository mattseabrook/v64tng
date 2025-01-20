// d2d.h

#ifndef D2D_H
#define D2D_H

#include <d2d1.h>
#include <vector>
#include <cstdint>

extern ID2D1HwndRenderTarget* renderTarget;

void initializeD2D();
void renderFrameD2D();
void ensureBitmapSize(UINT width, UINT height);
void cleanupD2D();

#endif // D2D_H