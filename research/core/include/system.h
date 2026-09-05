// system.h

#ifndef SYSTEM_H
#define SYSTEM_H

#include <windows.h>
#include <cstdint>

unsigned char* LoadImageFromResource(int resourceID, int* width, int* height, int* channels);
unsigned char* LoadImageFromNamedResource(const char* resourceName, int* width, int* height, int* channels);
unsigned char* RenderTextImageFromTTF(const char* ttfPath,
                                      const char* text,
                                      int fontPixelHeight,
                                      uint8_t red,
                                      uint8_t green,
                                      uint8_t blue,
                                      int* width,
                                      int* height,
                                      int* channels);
unsigned char* RenderTextImageFromTTFResource(int resourceID,
                                              const char* text,
                                              int fontPixelHeight,
                                              uint8_t red,
                                              uint8_t green,
                                              uint8_t blue,
                                              int* width,
                                              int* height,
                                              int* channels);
void FreeImage(unsigned char* data);

/*
===============================================================================

    Phantom Engine - System Information Window

    This header file contains the function prototypes for cross-platform
    system information window functionality. It is used to display system
    information such as CPU features, and GPU capabilities.

===============================================================================
*/
struct CPUFeatures
{
    bool sse = false;
    bool sse2 = false;
    bool sse3 = false;
    bool ssse3 = false;
    bool sse41 = false;
    bool sse42 = false;
    bool avx = false;
    bool avx2 = false;
    bool avx512 = false;
};

extern CPUFeatures cpuFeatures;

// Function prototypes
void ShowSystemInfoWindow();
void DetectCPUFeatures();
void SetBestSIMDLevel();

#endif // SYSTEM_H
