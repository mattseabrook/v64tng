// d2d.h

#ifndef D2D_H
#define D2D_H

#include <d2d1.h>
#include <vector>
#include <cstdint>
#include <wrl/client.h>

extern Microsoft::WRL::ComPtr<ID2D1HwndRenderTarget> renderTarget;

void initializeD2D();
void renderFrameD2D();
void resizeBitmap(UINT width, UINT height);
void convertRGBtoBGRA_SSE(const uint8_t* rgbData, uint8_t* bgraData, size_t pixelCount);
void cleanupD2D();

#endif // D2D_H