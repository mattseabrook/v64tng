// extract.cpp

#include <iostream>
#include <string>
#include <vector>
#include <filesystem>
#include <fstream>
#include <sstream>

#include "extract.h"

#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "bitmap.h"

// Output the information for a GJD file
void GJDInfo(const std::string_view& filename)
{
    auto vdxFiles = parseRLFile(filename.data());

    for (const auto& vdxFile : vdxFiles)
    {
        std::cout << vdxFile.filename << " | " << vdxFile.offset << " | " << vdxFile.length << std::endl;
    }

    std::cout << "Number of VDX Files: " << vdxFiles.size() << std::endl;
}

// Extracts all of the *.VDX files from the user-specifed *.GJD file
void extractVDX(const std::string_view& filename)
{
    std::string dirName(filename.data());
    dirName.erase(dirName.find_last_of('.'));
    std::filesystem::create_directory(dirName);

    std::cout << "Extracting GJD..." << std::endl;

    std::vector<VDXFile> VDXFiles = parseGJDFile(filename.data());

    for (const auto& vdxFile : VDXFiles)
    {
        writeVDXFile(vdxFile, dirName);
    }
}

// Writes out a *.PNG or *.RAW of every 0x20 and 0x25 chunk in the user-specified *.VDX file
// as a full 640x320 bitmap
void extractPNG(const std::string_view& filename, bool raw)
{
    std::ifstream vdxFile(filename.data(), std::ios::binary | std::ios::ate);
    if (!vdxFile)
    {
        std::cerr << "Failed to open the VDX file: " << filename << std::endl;
        return;
    }

    auto fileSize = static_cast<std::size_t>(vdxFile.tellg());
    vdxFile.seekg(0, std::ios::beg);

    std::vector<uint8_t> vdxData(fileSize);
    vdxFile.read(reinterpret_cast<char*>(vdxData.data()), fileSize);

    VDXFile parsedVDXFile = parseVDXFile(filename.data(), vdxData);

    std::string dirName(filename.data());
    std::replace(dirName.begin(), dirName.end(), '.', '_');
    std::filesystem::create_directory(dirName);

    std::vector<processedVDXChunk> parsedChunks = parseVDXChunks(parsedVDXFile);

    int frame = 1;
    for (const auto& parsedChunk : parsedChunks)
    {
        if (parsedChunk.chunkType != 0x80)
        {
            std::ostringstream frameString;
            frameString << std::setfill('0') << std::setw(4) << frame;

            if (raw)
            {
                // Write the raw bitmap data to a file in the dirName directory, with an index number as well
                std::ofstream rawBitmapFile(dirName + "/" + parsedVDXFile.filename + "_" + frameString.str() + ".raw", std::ios::binary);
                rawBitmapFile.write(reinterpret_cast<const char*>(parsedChunk.data.data()), parsedChunk.data.size());
                rawBitmapFile.close();
            }
            else
            {
                // Call savePNG to convert the raw bitmap data to a PNG file and save it in the dirName directory
                savePNG(dirName + "/" + parsedVDXFile.filename + "_" + frameString.str() + ".png", parsedChunk.data, 640, 320);
            }
        }

        frame++;
    }
}