// d2d.h

#ifndef D2D_H
#define D2D_H

#include <vector>
#include <cstdint>

void initializeD2D();
void renderFrameD2D(const std::vector<uint8_t>& pixelData, uint32_t width, uint32_t height);
void processD2DMessageLoop();
void cleanupD2D();

#endif // D2D_H