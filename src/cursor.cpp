// cursor.cpp

#include <cassert>
#include <stdexcept>
#include <iostream>
#include <filesystem>
#include <fstream>
#include <vector>
#include <cstdint>
#include <span>

#include "cursor.h"

/*
===============================================================================
Function Name: decompressCursorBlob

Description:
    - Decompresses a cursor blob from the ROB.GJD file.
    - The function reads the compressed data and decompresses it using a custom
      algorithm. The decompressed data is stored in a vector of uint8_t.

Parameters:
    - compressed: A span of uint8_t representing the compressed data.
===============================================================================
*/
std::vector<uint8_t> decompressCursorBlob(std::span<const uint8_t> compressed)
{
    std::vector<uint8_t> output;
    output.reserve(65536);

    size_t inPos = 0;
    bool finished = false;
    while (!finished && inPos < compressed.size())
    {
        if (inPos >= compressed.size())
            break; // Just in case
        uint8_t flagByte = compressed[inPos++];
        for (int i = 0; i < 8 && !finished && inPos <= compressed.size(); ++i)
        {
            if (flagByte & 1)
            {
                if (inPos < compressed.size())
                    output.push_back(compressed[inPos++]);
                else
                    finished = true; // End mid-literal
            }
            else
            {
                if (inPos + 1 < compressed.size())
                {
                    uint8_t var_8 = compressed[inPos++];
                    uint8_t offsetLen = compressed[inPos++];
                    if (var_8 == 0 && offsetLen == 0)
                    {
                        finished = true;
                    }
                    else
                    {
                        uint8_t length = (offsetLen & 0x0F) + 3;
                        uint16_t offset = (static_cast<uint16_t>(offsetLen >> 4) << 8) + var_8;
                        if (output.size() < offset)
                            throw std::runtime_error("Invalid offset: " + std::to_string(offset));
                        for (uint8_t j = 0; j < length; ++j)
                            output.push_back(output[output.size() - offset]);
                    }
                }
                else
                {
                    finished = true; // End mid-reference
                }
            }
            flagByte >>= 1;
        }
    }
    return output;
}

/*
===============================================================================
Function Name: getCursorBlob

Description:
    - Retrieves a specific cursor blob from the ROB.GJD file.
    - The function takes a span of uint8_t representing the compressed data and
      an index to identify which cursor blob to retrieve.

Parameters:
    - robBuffer: A span of uint8_t representing the compressed data.
    - blobIndex: The index of the cursor blob to retrieve.
===============================================================================
*/
std::span<const uint8_t> getCursorBlob(std::span<const uint8_t> robBuffer, size_t blobIndex)
{
    assert(blobIndex < CursorBlobs.size());
    const auto &meta = CursorBlobs[blobIndex];
    return robBuffer.subspan(meta.offset); // No size limit
}

/*
===============================================================================
Function Name: unpackCursorBlob

Description:
    - Unpacks a cursor blob from the ROB.GJD file.
    - The function decompresses the blob and extracts the pixel data for each
      frame. The pixel data is then saved as RGB .RAW files in the specified
      directory.

Parameters:
    - compressed: A span of uint8_t representing the compressed data.
    - rawDir: The directory where the RGB .RAW files will be saved.
    - palette: A span of uint8_t representing the color palette.
===============================================================================
*/
CursorImage unpackCursorBlob(std::span<const uint8_t> blobData, size_t blobIndex)
{
    auto decomp = decompressCursorBlob(blobData);
    std::cout << "  Decompressed size: " << decomp.size() << " bytes\n";
    if (decomp.size() < 5)
        throw std::runtime_error("Decompressed data too small for header");

    uint8_t width = decomp[0];
    uint8_t height = decomp[1];
    uint8_t frames = decomp[2];
    std::cout << "  Header: width=" << static_cast<int>(width)
              << ", height=" << static_cast<int>(height)
              << ", frames=" << static_cast<int>(frames) << '\n';
    size_t pixelOffset = 5;
    size_t pixelSize = static_cast<size_t>(width) * height * frames;

    if (decomp.size() < pixelOffset + pixelSize)
        throw std::runtime_error("Decompressed data too small for pixels");

    CursorImage img{width, height, frames};
    img.pixels.assign(decomp.begin() + pixelOffset, decomp.begin() + pixelOffset + pixelSize);
    return img;
}

/*
===============================================================================
Function Name: cursorFrameToRGBA

Description:
    - Converts a specific frame of a cursor image to RGBA format.
    - The function takes a CursorImage object, the frame index, and a palette
      to convert the pixel data to RGBA format. The resulting RGBA data is
      returned as a vector of uint8_t.

Parameters:
    - img: A CursorImage object representing the cursor image.
    - frameIdx: The index of the frame to convert.
    - palette: A span of uint8_t representing the color palette.
===============================================================================
*/
std::vector<uint8_t> cursorFrameToRGBA(const CursorImage &img, size_t frameIdx, std::span<const uint8_t> palette)
{
    if (frameIdx >= img.frames)
    {
        throw std::runtime_error("Frame index out of bounds");
    }

    size_t frameSize = img.width * img.height;
    size_t frameStart = frameIdx * frameSize;
    std::vector<uint8_t> rgba;
    rgba.reserve(frameSize * 4); // RGBA = 4 bytes per pixel

    for (size_t p = 0; p < frameSize; ++p)
    {
        uint8_t idx = img.pixels[frameStart + p] & 31; // Mask to 5-bit index (0-31)
        if (idx * 3 + 2 >= palette.size())
        {
            throw std::runtime_error("Palette index out of bounds: " + std::to_string(idx));
        }
        // RGB from palette
        rgba.push_back(palette[idx * 3 + 0]); // R
        rgba.push_back(palette[idx * 3 + 1]); // G
        rgba.push_back(palette[idx * 3 + 2]); // B
        // Alpha: 0xFF (opaque) unless index is 0 (transparent)
        rgba.push_back(idx == 0 ? 0x00 : 0xFF);
    }
    return rgba;
}