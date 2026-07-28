// lzss.h

#ifndef LZSS_H
#define LZSS_H

#include <vector>
#include <cstdint>
#include <string>
#include <span>
#include <expected>

#include "vdx.h"

/*
===============================================================================

    7th Guest - LZSS Decompression

    This header file contains the function prototype for LZSS decompression
    used for decompressing VDX data.

===============================================================================
*/

// Function prototypes
std::vector<uint8_t> lzssCompress(const std::vector<uint8_t> &inputData, uint8_t lengthMask, uint8_t lengthBits);
size_t lzssDecompress(std::span<const uint8_t> compressedData, std::span<uint8_t> outputBuffer, uint8_t lengthMask, uint8_t lengthBits);
std::expected<std::vector<uint8_t>, std::string> lzssDecompressChecked(
    std::span<const uint8_t> compressedData, uint8_t lengthMask, uint8_t lengthBits,
    size_t maximumOutput = 256u * 1024u * 1024u);

#endif // LZSS_H
