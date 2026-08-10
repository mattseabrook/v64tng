// vdx.h

#ifndef VDX_H
#define VDX_H

#include <cstdint>
#include <vector>
#include <array>
#include <string>
#include <span>
#include <expected>
#include <memory>

#include "bitmap.h"

/*
===============================================================================

    7th Guest - VDX Parser

    This header file contains the structs and function prototypes for parsing
    VDX headers and chunks.

===============================================================================
*/

//
// VDXChunk struct
//
struct VDXChunk
{
    uint8_t chunkType;
    uint8_t coding;
    uint32_t dataSize;
    uint8_t lengthMask;
    uint8_t lengthBits;
    std::span<const uint8_t> data;
};

//
// VDXFile struct
//
struct VDXFile
{
    std::string filename;
    uint16_t identifier;
    std::array<uint8_t, 4> unknown;
    uint16_t frameRate = 0;
    uint8_t rateOverride = 0;
    uint16_t playbackFlags = 0;
    int width = 0;
    int height = 0;
    // Owning local storage for copied input bytes (standalone file path).
    std::vector<uint8_t> rawData;
    // Non-owning view over source bytes (points to rawData or mapped archive memory).
    std::span<const uint8_t> rawView;
    // Keeps mapped archive memory alive when rawView points outside rawData.
    std::shared_ptr<const uint8_t> externalDataOwner;
    std::vector<VDXChunk> chunks;
    // Frames are shared_ptr so duplicate frames can share the same pixel buffer
    // instead of copying the whole image (common VDX chunk type 0x00).
    std::vector<std::shared_ptr<std::vector<uint8_t>>> frameData;
    // Native VDX decoding remains palette-indexed.  Preserve that parallel
    // representation so GRV opcode 49h can identify exactly which palette
    // entries the current background uses before decoding the next still.
    std::vector<std::shared_ptr<std::vector<uint8_t>>> frameIndices;
    // Palette active when each corresponding indexed frame is presented.
    // This is required for FIRSTFRAME_NEXT_VIDEO: decoding may continue for
    // caching, but the persistent room plate is frame zero with its palette.
    std::vector<std::array<RGBColor, 256>> framePalettes;
    std::array<RGBColor, 256> palette{};
    bool paletteMergeConsumed = false;
    std::vector<uint8_t> audioData;
    bool parsed = false;
};

struct VDXDecodeContext
{
    std::span<const uint8_t> background;
    std::span<const uint8_t> backgroundIndices;
    std::span<const uint8_t> foregroundIndices;
    std::span<const RGBColor> palette;
    bool mergePaletteOnce = false;
};

[[nodiscard]] constexpr bool vdxChunkIsCompressed(const VDXChunk &chunk)
{
    return chunk.coding == 0x77;
}

[[nodiscard]] constexpr bool vdxSkipStill(uint16_t grvVideoFlags)
{
    return (grvVideoFlags & (1u << 5)) != 0;
}

VDXFile parseVDXFile(std::string_view filename, std::span<const uint8_t> buffer);
VDXFile parseVDXFile(std::string_view filename, std::vector<uint8_t> &&buffer);
VDXFile parseVDXFileBorrowed(std::string_view filename, std::span<const uint8_t> buffer, std::shared_ptr<const uint8_t> owner);
void parseVDXChunks(VDXFile &vdxFile);
void parseVDXChunks(
    VDXFile &vdxFile,
    std::span<const uint8_t> background,
    uint16_t grvVideoFlags);
void parseVDXChunks(
    VDXFile &vdxFile,
    const VDXDecodeContext &context,
    uint16_t grvVideoFlags);
[[nodiscard]] double vdxPlaybackRate(const VDXFile &vdxFile);
void vdxPlay(const std::string &filename, VDXFile *preloadedVdx = nullptr);
std::expected<VDXFile, std::string> loadSingleVDX(const std::string &room, const std::string &vdxName);
VDXFile &getOrLoadVDX(const std::string &name);
void unloadVDX(const std::string &name);

#endif // VDX_H
