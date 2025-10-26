#ifndef RENDER_H
#define RENDER_H

#include <vector>
#include <cstdint>
#include <span>

//================================================================================

// Function prototypes
void convertRGBtoBGRA_SSE(const uint8_t *rgbData, uint8_t *bgraData, size_t pixelCount);
void convertRGBRowToBGRA(const uint8_t *rgbRow, uint8_t *bgraRow, size_t width);
void resizeFrameBuffers(std::vector<uint8_t> &previousFrameData, bool &forceFullUpdate, uint32_t width, uint32_t height);
std::vector<size_t> getChangedRowsAndUpdatePrevious(std::span<const uint8_t> rgbData, std::vector<uint8_t> &previousFrameData, int width, int height, bool forceFull);

#endif // RENDER_H