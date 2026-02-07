// cursor.cpp

#include <cassert>
#include <stdexcept>
#include <print>
#include <filesystem>
#include <fstream>
#include <vector>
#include <cstdint>
#include <span>
#include <unordered_set>

#include "cursor.h"
#include "game.h"

//=============================================================================

// Cursor system globals
std::array<LoadedCursor, 9> g_cursors;
CursorType g_activeCursorType = CURSOR_DEFAULT;
uint64_t g_cursorLastFrameTime = 0;
bool g_cursorsInitialized = false;
HCURSOR g_transparentCursor = nullptr;

//=============================================================================

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
    // Cursor blobs decompress to ~4-8KB typically, start smaller than 64KB
    output.reserve(8192);

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
    return robBuffer.subspan(CursorBlobs[blobIndex].offset);
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
CursorImage unpackCursorBlob(std::span<const uint8_t> blobData)
{
    auto decomp = decompressCursorBlob(blobData);

    if (decomp.size() < 5)
        throw std::runtime_error("Decompressed data too small for header");

    uint8_t width = decomp[0];
    uint8_t height = decomp[1];
    uint8_t frames = decomp[2];
    size_t pixelOffset = 5;
    size_t pixelSize = static_cast<size_t>(width) * height * frames;

    if (decomp.size() < pixelOffset + pixelSize)
        throw std::runtime_error("Decompressed data too small for pixels");

    CursorImage img{width, height, frames, {}};
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

//
// Create a Windows cursor from RGBA data
//
HCURSOR createWindowsCursor(const std::vector<uint8_t> &rgbaData, int width, int height)
{
    // Better hotspot positioning
    const int HOTSPOT_X = width / 2;
    const int HOTSPOT_Y = height / 2;

    // Create icon/cursor compatible bitmap structures
    BITMAPV5HEADER bi{};
    bi.bV5Size = sizeof(BITMAPV5HEADER);
    bi.bV5Width = width;
    bi.bV5Height = -height; // Negative height for top-down DIB
    bi.bV5Planes = 1;
    bi.bV5BitCount = 32;
    bi.bV5Compression = BI_BITFIELDS;
    bi.bV5RedMask = 0x00FF0000;
    bi.bV5GreenMask = 0x0000FF00;
    bi.bV5BlueMask = 0x000000FF;
    bi.bV5AlphaMask = 0xFF000000;

    // Create DIB with device context
    HDC hdc = GetDC(NULL);
    void *bits = nullptr;
    HBITMAP color = CreateDIBSection(hdc, reinterpret_cast<BITMAPINFO *>(&bi), DIB_RGB_COLORS, &bits, NULL, 0);

    if (!color || !bits)
    {
        ReleaseDC(NULL, hdc);
        return NULL; // Failed to create bitmap
    }

    // Copy RGBA data into DIB section, converting from RGBA to BGRA
    BYTE *dst = static_cast<BYTE *>(bits);
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            int srcIdx = (y * width + x) * 4;
            int destIdx = (y * width + x) * 4;

            // RGBA to BGRA conversion
            dst[destIdx + 0] = rgbaData[srcIdx + 2]; // B from R
            dst[destIdx + 1] = rgbaData[srcIdx + 1]; // G from G
            dst[destIdx + 2] = rgbaData[srcIdx + 0]; // R from B
            dst[destIdx + 3] = rgbaData[srcIdx + 3]; // A from A
        }
    }

    // Create monochrome mask bitmap (required for cursors)
    // Build mask bits directly instead of using slow SetPixel calls
    // Monochrome bitmap: 1 bit per pixel, rows padded to WORD boundary
    int maskRowBytes = ((width + 15) / 16) * 2;  // WORD-aligned row size
    std::vector<uint8_t> maskBits(maskRowBytes * height, 0);
    
    // Build mask: 1 = transparent, 0 = opaque (inverted from what you'd expect)
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            int idx = (y * width + x) * 4;
            BYTE alpha = rgbaData[idx + 3];
            
            if (alpha < 128)
            {
                // Transparent pixel - set bit to 1
                maskBits[y * maskRowBytes + x / 8] |= (0x80 >> (x % 8));
            }
            // Opaque pixels leave bit as 0
        }
    }
    
    HBITMAP mask = CreateBitmap(width, height, 1, 1, maskBits.data());

    // Create the icon info
    ICONINFO ii{};
    ii.fIcon = FALSE; // This is a cursor
    ii.xHotspot = HOTSPOT_X;
    ii.yHotspot = HOTSPOT_Y;
    ii.hbmMask = mask;
    ii.hbmColor = color;

    // Create the cursor
    HCURSOR hCursor = CreateIconIndirect(&ii);

    // Clean up
    DeleteObject(mask);
    DeleteObject(color);
    ReleaseDC(NULL, hdc);

    return hCursor;
}

/*
===============================================================================
Function Name: getTransparentCursor

Description:
    - Returns a singleton transparent 1x1 cursor used for hiding the cursor
      during animations. Created only once.
===============================================================================
*/
HCURSOR getTransparentCursor()
{
    if (g_transparentCursor)
        return g_transparentCursor;
    // RGBA for transparent 1x1 pixel
    std::vector<uint8_t> transparent = {0, 0, 0, 0};
    g_transparentCursor = createWindowsCursor(transparent, 1, 1);
    return g_transparentCursor;
}

//
// Scale RGBA data to a new size
//
std::vector<uint8_t> scaleRGBA(const std::vector<uint8_t> &src, int srcW, int srcH, int dstW, int dstH)
{
    const size_t dstSize = static_cast<size_t>(dstW) * dstH * 4;
    std::vector<uint8_t> dst(dstSize);
    size_t dstIdx = 0;
    for (int y = 0; y < dstH; ++y)
    {
        const int srcY = y * srcH / dstH;
        const int srcRowBase = srcY * srcW;
        for (int x = 0; x < dstW; ++x)
        {
            const int srcX = x * srcW / dstW;
            const size_t srcIdx = static_cast<size_t>(srcRowBase + srcX) * 4;
            dst[dstIdx++] = src[srcIdx + 0];
            dst[dstIdx++] = src[srcIdx + 1];
            dst[dstIdx++] = src[srcIdx + 2];
            dst[dstIdx++] = src[srcIdx + 3];
        }
    }
    return dst;
}

//
// Initialize cursors from ROB.GJD file
//
bool initCursors(const std::string_view &robPath, float scale)
{
    if (g_cursorsInitialized)
        return true;
    std::ifstream file(robPath.data(), std::ios::binary | std::ios::ate);
    if (!file)
    {
        std::println(stderr, "Failed to open {}", robPath);
        return false;
    }
    size_t fileSize = file.tellg();
    file.seekg(0);
    std::vector<uint8_t> robData(fileSize);
    file.read(reinterpret_cast<char *>(robData.data()), fileSize);
    const size_t paletteBlockOffset = fileSize - (CursorPaletteSizeBytes * NumCursorPalettes);
    for (size_t i = 0; i < CursorBlobs.size(); i++)
    {
        auto blob = getCursorBlob(robData, i);
        CursorImage img = unpackCursorBlob(blob);
        const auto &meta = CursorBlobs[i];
        const size_t palOff = paletteBlockOffset + meta.paletteIdx * CursorPaletteSizeBytes;
        std::span<const uint8_t> pal(&robData[palOff], CursorPaletteSizeBytes);
        g_cursors[i].image = img;
        g_cursors[i].currentFrame = 0;
        g_cursors[i].rgbaFrames.resize(img.frames);
        g_cursors[i].winHandles.resize(img.frames);
        int origW = img.width, origH = img.height;
        int scaledW = origW * scale > 1 ? static_cast<int>(origW * scale) : 1;
        int scaledH = origH * scale > 1 ? static_cast<int>(origH * scale) : 1;
        for (size_t f = 0; f < img.frames; f++)
        {
            g_cursors[i].rgbaFrames[f] = cursorFrameToRGBA(img, f, pal);
            std::vector<uint8_t> scaled;
            if (scale == 1.0f)
            {
                scaled = g_cursors[i].rgbaFrames[f];
            }
            else
            {
                scaled = scaleRGBA(g_cursors[i].rgbaFrames[f], origW, origH, scaledW, scaledH);
            }
            g_cursors[i].winHandles[f] = createWindowsCursor(scaled, scaledW, scaledH);
            if (!g_cursors[i].winHandles[f])
            {
                throw std::runtime_error("Failed to create Windows cursor");
            }
        }
    }
    g_cursorLastFrameTime = GetTickCount64();
    g_cursorsInitialized = true;
    return true;
}

//
// Recreate scaled cursors
//
void recreateScaledCursors(float scale)
{
    for (size_t i = 0; i < g_cursors.size(); ++i)
    {
        auto &cursor = g_cursors[i];
        for (HCURSOR handle : cursor.winHandles)
        {
            if (handle)
            {
                DestroyCursor(handle);
            }
        }
        cursor.winHandles.clear();
        int origW = cursor.image.width, origH = cursor.image.height;
        int scaledW = origW * scale > 1 ? static_cast<int>(origW * scale) : 1;
        int scaledH = origH * scale > 1 ? static_cast<int>(origH * scale) : 1;
        cursor.winHandles.resize(cursor.rgbaFrames.size());
        for (size_t f = 0; f < cursor.rgbaFrames.size(); ++f)
        {
            std::vector<uint8_t> scaled;
            if (scale == 1.0f)
            {
                scaled = cursor.rgbaFrames[f];
            }
            else
            {
                scaled = scaleRGBA(cursor.rgbaFrames[f], origW, origH, scaledW, scaledH);
            }
            cursor.winHandles[f] = createWindowsCursor(scaled, scaledW, scaledH);
        }
    }
}

//
// Update the current cursor animation frame based on elapsed time
//
void updateCursorAnimation()
{
    if (!g_cursorsInitialized)
        return;

    uint64_t currentTime = GetTickCount64();
    uint64_t frameTime = static_cast<uint64_t>(1000.0 / CURSOR_FPS);

    if ((currentTime - g_cursorLastFrameTime) >= frameTime)
    {
        // Get current cursor
        LoadedCursor &cursor = g_cursors[g_activeCursorType];

        // Only animate if more than one frame
        if (cursor.image.frames > 1)
        {
            cursor.currentFrame = (cursor.currentFrame + 1) % cursor.image.frames;
            // IMPORTANT: Don't call SetCursor() here - let the WM_TIMER handler do it
        }

        g_cursorLastFrameTime = currentTime;
    }
}

//
// Get the current cursor handle
//
HCURSOR getCurrentCursor()
{
    if (!g_cursorsInitialized)
    {
        return LoadCursor(NULL, IDC_ARROW); // Fallback cursor
    }

    // Check both animation states
    if (state.raycast.enabled || state.animation.isPlaying || state.transient_animation.isPlaying)
    {
        return getTransparentCursor(); // Hide cursor during any animation
    }

    const LoadedCursor &cursor = g_cursors[g_activeCursorType];
    if (cursor.winHandles.empty() || cursor.currentFrame >= cursor.winHandles.size())
    {
        return LoadCursor(NULL, IDC_ARROW); // Fallback if cursor data is invalid
    }

    return cursor.winHandles[cursor.currentFrame]; // Default cursor (teeth/waving hand)
}

//
// Clean up all loaded cursors
//
void cleanupCursors()
{
    for (auto &cursor : g_cursors)
    {
        for (HCURSOR handle : cursor.winHandles)
        {
            if (handle)
            {
                DestroyCursor(handle);
            }
        }
        cursor.winHandles.clear();
        cursor.rgbaFrames.clear();
    }
    if (g_transparentCursor)
    {
        DestroyCursor(g_transparentCursor);
        g_transparentCursor = nullptr;
    }
    g_cursorsInitialized = false;
}