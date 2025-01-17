// d2d.h

#ifndef D2D_H
#define D2D_H

#include <vector>
#include <cstdint>

void initializeD2D();
void renderFrameD2D();
void ensureBitmapSize(UINT width, UINT height);
void cleanupD2D();

#endif // D2D_H