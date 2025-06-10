#ifndef RENDER_H
#define RENDER_H

#include <vector>
#include <cstdint>
#include <span>

// Function prototypes for rendering and buffer management

void convertRGBtoBGRA_SSE(const uint8_t *rgbData, uint8_t *bgraData, size_t pixelCount);
void resizeFrameBuffers(std::vector<uint8_t> &bgraBuffer,
                        std::vector<uint8_t> &previousFrameData,
                        bool &forceFullUpdate,
                        uint32_t width,
                        uint32_t height);
std::vector<size_t> prepareBGRABuffer(std::span<const uint8_t> rgbData,
                                      int width,
                                      int height,
                                      std::vector<uint8_t> &bgraBuffer,
                                      std::vector<uint8_t> &previousFrameData,
                                      bool &forceFullUpdate);

#endif // RENDER_H