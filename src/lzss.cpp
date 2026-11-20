#include "lzss.h"

std::expected<std::vector<uint8_t>, std::string> lzssDecompressChecked(
    std::span<const uint8_t> input, uint8_t lengthMask, uint8_t lengthBits,
    size_t maximumOutput)
{
    if (lengthBits == 0 || lengthBits > 8)
        return std::unexpected("Invalid LZSS length bit count");

    std::vector<uint8_t> output;
    output.reserve(input.size() > maximumOutput / 4 ? maximumOutput : input.size() * 4);
    size_t pos = 0;
    while (pos < input.size())
    {
        uint8_t flags = input[pos++];
        for (int bit = 0; bit < 8 && pos < input.size(); ++bit, flags >>= 1)
        {
            if (flags & 1)
            {
                if (output.size() == maximumOutput)
                    return std::unexpected("LZSS output exceeds safety limit");
                output.push_back(input[pos++]);
                continue;
            }
            if (input.size() - pos < 2)
                return std::unexpected("Truncated LZSS back-reference");
            const unsigned token = input[pos] | (unsigned(input[pos + 1]) << 8);
            pos += 2;
            if (!token)
                return output;

            const size_t length = (token & lengthMask) + 3u;
            if (length > maximumOutput - output.size())
                return std::unexpected("LZSS output exceeds safety limit");
            size_t distance = token >> lengthBits;
            // A zero-distance nonterminal token read the oldest byte in the
            // former ring buffer. Preserve that fallback and zero-filled history.
            if (!distance)
                distance = size_t{1} << (16 - lengthBits);
            for (size_t i = 0; i < length; ++i)
            {
                const uint8_t value = distance <= output.size() ?
                    output[output.size() - distance] : 0;
                output.push_back(value);
            }
        }
    }
    return std::unexpected("LZSS stream has no end marker");
}
