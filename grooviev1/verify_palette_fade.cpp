// Native adapter for verify_retail_palette_fades.py: exercise the actual renderer
// arithmetic against the original machine code, without a Windows graphics API.
#include "../include/grv_palette_fade.h"
#include <cstdio>

int main()
{
    std::array<uint8_t, 768> source{}, output{};
    if (std::fread(source.data(), 1, source.size(), stdin) != source.size())
        return 1;
    for (bool fadeIn : {true, false})
        for (unsigned tick = 0; tick <= grvPaletteFadeTicks; ++tick)
        {
            scaleGrvPaletteFade(source, output, fadeIn, tick);
            if (std::fwrite(output.data(), 1, output.size(), stdout) != output.size())
                return 2;
        }
    return 0;
}
