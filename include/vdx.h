// vdx.h

#ifndef VDX_H
#define VDX_H

#include <cstdint>
#include <vector>
#include <array>
#include <string>
#include <span>

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
    uint8_t unknown;
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
    std::array<uint8_t, 6> unknown;
    int width = 0;
    int height = 0;
    std::vector<uint8_t> rawData;
    std::vector<VDXChunk> chunks;
    std::vector<std::vector<uint8_t>> frameData;
    std::vector<uint8_t> audioData;
    bool parsed = false;
};

VDXFile parseVDXFile(std::string_view filename, std::span<const uint8_t> buffer);
void parseVDXChunks(VDXFile &vdxFile);
void vdxPlay(const std::string &filename, VDXFile *preloadedVdx = nullptr);
VDXFile loadSingleVDX(const std::string &room, const std::string &vdxName);
VDXFile &getOrLoadVDX(const std::string &name);
void unloadVDX(const std::string &name);

#endif // VDX_H