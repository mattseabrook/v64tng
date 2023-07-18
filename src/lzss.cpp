#include <vector>
#include <iostream>

#include "lzss.h"

std::vector<uint8_t> lzssDecompress(const std::vector<uint8_t>& compressedData, uint8_t lengthMask, uint8_t lengthBits)
{
    const uint16_t N = 1 << (16 - lengthBits);
    const uint16_t F = 1 << lengthBits;
    const int threshold = 3;

    std::vector<uint8_t> decompressedData;
    std::vector<uint8_t> his_buf(N, 0);
    int32_t his_buf_pos = N - F;

    int32_t in_buf_pos = 0;

    std::string input;

    while (in_buf_pos < compressedData.size())
    {
        uint8_t flags = compressedData[in_buf_pos++];

        for (int32_t i = 1; i <= 8; ++i)
        {
            if (in_buf_pos >= compressedData.size())
                break;

            if ((flags & 1) == 0)
            {
                uint16_t ofs_len = compressedData[in_buf_pos] | (compressedData[in_buf_pos + 1] << 8);
                in_buf_pos += 2;

                if (ofs_len == 0)
                {
                    break;
                }

                int32_t length = (ofs_len & lengthMask) + threshold;
                int32_t offset = (his_buf_pos - (ofs_len >> lengthBits)) & (N - 1);

                if (length < 0 || offset < 0) {
                    std::cout << "Error: Negative length or offset calculated.\n";
                    return {}; // Return an empty vector to indicate the error
                }

                decompressedData.reserve(decompressedData.size() + length);
                for (uint16_t j = 0; j < length; ++j)
                {
                    uint8_t b = his_buf[(offset + j) & (N - 1)];
                    decompressedData.push_back(b);
                    his_buf[his_buf_pos] = b;
                    his_buf_pos = (his_buf_pos + 1) & (N - 1);
                }
            }
            else
            {
                uint8_t b = compressedData[in_buf_pos++];
                decompressedData.reserve(decompressedData.size() + 1);
                decompressedData.push_back(b);
                his_buf[his_buf_pos] = b;
                his_buf_pos = (his_buf_pos + 1) & (N - 1);
            }
            flags >>= 1;
        }
    }

    return decompressedData;
}