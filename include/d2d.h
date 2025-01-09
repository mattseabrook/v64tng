// d2d.h

#ifndef D2D_H
#define D2D_H

#include <vector>
#include <cstdint>

void initializeD2D();
void renderFrameD2D(const std::vector<uint8_t>& pixelData);
void handleD2DResize(int width, int height);
void processD2DMessageLoop();
void cleanupD2D();

#endif // D2D_H