// system.h

#ifndef SYSTEM_H
#define SYSTEM_H

#include <windows.h>

/*
===============================================================================

    7th Guest - System Information Window

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