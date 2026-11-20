// lzss.h

#ifndef LZSS_H
#define LZSS_H

#include <vector>
#include <cstdint>
#include <string>
#include <span>
#include <expected>

std::expected<std::vector<uint8_t>, std::string> lzssDecompressChecked(
    std::span<const uint8_t> compressedData, uint8_t lengthMask, uint8_t lengthBits,
    size_t maximumOutput = 256u * 1024u * 1024u);

#endif // LZSS_H
