#include <vector>
#include <cstdint>

#include "lzss.h"

//
// LZSS Compression
//
std::vector<uint8_t> lzssCompress(const std::vector<uint8_t> &inputData, uint8_t lengthMask, uint8_t lengthBits)
{
    (void)lengthMask; // Not known yet if this is actually used anywhere in the 7th Guest VDX chunks
    const uint16_t N = 1 << (16 - lengthBits);
    const uint16_t F = 1 << lengthBits;
    const uint8_t threshold = 3;

    std::vector<uint8_t> compressedData;
    compressedData.reserve(inputData.size() / 2); // Heuristic for compression size
    std::vector<uint8_t> his_buf(N);
    size_t his_buf_pos = N - F;
    size_t pos = 0;

    while (pos < inputData.size())
    {
        uint8_t flags = 0;
        size_t flags_pos = compressedData.size();
        compressedData.push_back(0); // Placeholder for flags

        for (int i = 0; i < 8 && pos < inputData.size(); ++i)
        {
            size_t max_match_length = 0;
            size_t match_offset = 0;

            // Look-back search for matches
            for (size_t j = 1; j <= N && pos >= j; ++j)
            {
                size_t k = (his_buf_pos - j) & (N - 1);
                size_t match_length = 0;
                while (match_length < F && pos + match_length < inputData.size() &&
                       his_buf[(k + match_length) & (N - 1)] == inputData[pos + match_length])
                {
                    ++match_length;
                }
                if (match_length > max_match_length)
                {
                    max_match_length = match_length;
                    match_offset = j; // Distance from current position
                }
                if (max_match_length == F)
                    break; // Max length reached
            }

            if (max_match_length >= threshold)
            {
                uint16_t length = static_cast<uint16_t>(max_match_length - threshold);
                uint16_t ofs_len = static_cast<uint16_t>((match_offset << lengthBits) | length);
                compressedData.push_back(ofs_len & 0xFF);
                compressedData.push_back((ofs_len >> 8) & 0xFF);
                flags &= ~(1 << i); // 0 for reference

                for (size_t j = 0; j < max_match_length; ++j)
                {
                    his_buf[his_buf_pos] = inputData[pos++];
                    his_buf_pos = (his_buf_pos + 1) & (N - 1);
                }
            }
            else
            {
                uint8_t b = inputData[pos++];
                compressedData.push_back(b);
                his_buf[his_buf_pos] = b;
                his_buf_pos = (his_buf_pos + 1) & (N - 1);
                flags |= (1 << i); // 1 for literal
            }
        }
        compressedData[flags_pos] = flags;
    }

    // End marker (same as decompression expects)
    compressedData.push_back(0);
    compressedData.push_back(0);

    return compressedData;
}

//
// LZSS Decompression
//
size_t lzssDecompress(std::span<const uint8_t> compressedData, std::span<uint8_t> outputBuffer, uint8_t lengthMask, uint8_t lengthBits)
{
    const uint16_t N = 1 << (16 - lengthBits);
    const uint16_t F = 1 << lengthBits;
    const uint8_t THRESHOLD = 3;

    std::vector<uint8_t> his_buf(N);
    size_t his_buf_pos = N - F;
    size_t in_buf_pos = 0;
    size_t out_pos = 0;

    while (in_buf_pos < compressedData.size() && out_pos < outputBuffer.size())
    {
        uint8_t flags = compressedData[in_buf_pos++];
        for (int i = 0; i < 8 && in_buf_pos < compressedData.size(); ++i, flags >>= 1)
        {
            if (flags & 1)
            {
                const uint8_t b = compressedData[in_buf_pos++];
                if (out_pos < outputBuffer.size())
                    outputBuffer[out_pos++] = b;
                his_buf[his_buf_pos] = b;
                his_buf_pos = (his_buf_pos + 1) & (N - 1);
            }
            else
            {
                if (in_buf_pos + 1 >= compressedData.size())
                    break;
                const uint16_t low_byte = compressedData[in_buf_pos++];
                const uint16_t high_byte = compressedData[in_buf_pos++];
                const uint16_t ofs_len = low_byte | (high_byte << 8);
                if (ofs_len == 0)
                    return out_pos;  // End marker - terminate decompression
                const uint16_t offset = (his_buf_pos - (ofs_len >> lengthBits)) & (N - 1);
                const uint16_t length = (ofs_len & lengthMask) + THRESHOLD;
                for (uint16_t j = 0; j < length; ++j)
                {
                    const uint8_t b = his_buf[(offset + j) & (N - 1)];
                    if (out_pos < outputBuffer.size())
                        outputBuffer[out_pos++] = b;
                    his_buf[his_buf_pos] = b;
                    his_buf_pos = (his_buf_pos + 1) & (N - 1);
                }
            }
        }
    }
    return out_pos; // Return decompressed size.
}

/*
std::vector<uint8_t> lzssDecompress(std::span<const uint8_t> compressedData, uint8_t lengthMask, uint8_t lengthBits)
{
    const uint16_t N = 1 << (16 - lengthBits);
    const uint16_t F = 1 << lengthBits;
    const uint8_t threshold = 3;

    std::vector<uint8_t> decompressedData;
    decompressedData.reserve(compressedData.size() * 2);
    std::vector<uint8_t> his_buf(N);
    size_t his_buf_pos = N - F;
    size_t in_buf_pos = 0;

    while (in_buf_pos < compressedData.size())
    {
        uint8_t flags = compressedData[in_buf_pos++];
        for (int i = 0; i < 8 && in_buf_pos < compressedData.size(); ++i, flags >>= 1)
        {
            if (flags & 1)
            {
                uint8_t b = compressedData[in_buf_pos++];
                decompressedData.push_back(b);
                his_buf[his_buf_pos] = b;
                his_buf_pos = (his_buf_pos + 1) & (N - 1);
            }
            else
            {
                if (in_buf_pos + 1 >= compressedData.size())
                    break;
                uint16_t low_byte = compressedData[in_buf_pos++];
                uint16_t high_byte = compressedData[in_buf_pos++];
                uint16_t ofs_len = low_byte | (high_byte << 8);
                if (ofs_len == 0)
                    return decompressedData;
                uint16_t offset = (his_buf_pos - (ofs_len >> lengthBits)) & (N - 1);
                uint16_t length = (ofs_len & lengthMask) + threshold;
                for (uint16_t j = 0; j < length; ++j)
                {
                    uint8_t b = his_buf[(offset + j) & (N - 1)];
                    decompressedData.push_back(b);
                    his_buf[his_buf_pos] = b;
                    his_buf_pos = (his_buf_pos + 1) & (N - 1);
                }
            }
        }
    }
    return decompressedData;
}
*/