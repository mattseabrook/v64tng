// vdx.h

#ifndef VDX_H
#define VDX_H

#include <cstdint>
#include <vector>
#include <array>
#include <string>

#include "bitmap.h"

/*
===============================================================================

    7th Guest - VDX Parser

    This header file contains the structs and function prototypes for parsing
    VDX headers and chunks.

===============================================================================
*/

// God Mode
extern bool devMode;

// VDXChunk struct
struct VDXChunk
{
    uint8_t chunkType;
    uint8_t unknown;
    uint32_t dataSize;
    uint8_t lengthMask;
    uint8_t lengthBits;
    std::vector<uint8_t> data;
};

// VDXFile struct
struct VDXFile
{
    std::string filename;
    uint16_t identifier;
    std::array<uint8_t, 6> unknown;
    std::vector<VDXChunk> chunks;
};

VDXFile parseVDXFile(const std::string& filename, const std::vector<uint8_t>& buffer);
void parseVDXChunks(VDXFile& vdxFile);
void writeVDXFile(const VDXFile& vdxFile, const std::string& outputDir);

#endif // VDX_H