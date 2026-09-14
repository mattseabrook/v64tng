#pragma once

#include <algorithm>
#include <array>
#include <cstdint>
#include <span>

// Retail Win32 0040AA45/0040A84B. One tick is the requested 66 ms
// multimedia timer period. Always scale the fixed source, not the last frame.
inline constexpr unsigned grvPaletteFadeTickMs = 66;
inline constexpr unsigned grvPaletteFadeTicks = 16;

inline constexpr std::array<unsigned, 3> grvPaletteFadeGains(
    bool fadeIn, unsigned tick)
{
    tick = (std::min)(tick, grvPaletteFadeTicks);
    if (fadeIn)
        return {(std::min)(256u, tick * 64u),
                (std::min)(256u, tick * 32u), tick * 16u};
    return {256u - tick * 16u, 256u - (std::min)(256u, tick * 32u),
            256u - (std::min)(256u, tick * 32u)};
}

// Packed RGB, including every palette entry if the input is a 768-byte palette.
// Caller provides equally sized source and destination spans.
inline void scaleGrvPaletteFade(std::span<const uint8_t> source,
    std::span<uint8_t> destination, bool fadeIn, unsigned tick)
{
    const auto gains = grvPaletteFadeGains(fadeIn, tick);
    for (size_t i = 0; i < source.size(); ++i)
        destination[i] = static_cast<uint8_t>(source[i] * gains[i % 3] / 256u);
}
