// lzss.h

#ifndef LZSS_H
#define LZSS_H

#include <vector>
#include <cstdint>
#include <string>

#include "vdx.h"

/*
===============================================================================

    7th Guest - LZSS Decompression

    This header file contains the function prototype for LZSS decompression
    used for decompressing VDX data.

===============================================================================
*/

// Function prototype for lzssDecompress
std::vector<uint8_t> lzssDecompress(const std::vector<uint8_t>& compressedData, uint8_t lengthMask, uint8_t lengthBits);

#endif // LZSS_H