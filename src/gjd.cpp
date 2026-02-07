// gjd.cpp

#include <fstream>
#include <vector>
#include <string>
#include <stdexcept>
#include <filesystem>

#ifdef _WIN32
#include <windows.h>
#else
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#endif

#include "rl.h"
#include "gjd.h"
#include "vdx.h"

/*
===============================================================================
Function Name: parseGJDFile

Description:
    - Parses a GJD file using memory mapping for zero-copy access

Parameters:
    - rlFilename: the 7th Guest RL file to parse

Return:
    - Vector of VDXFile objects parsed from the GJD data

Notes:
    - Uses memory mapping to avoid copying large chunks of data
===============================================================================
*/
std::vector<VDXFile> parseGJDFile(std::string_view rlFilename)
{
    auto rlResult = parseRLFile(rlFilename);
    if (!rlResult)
    {
        throw std::runtime_error(rlResult.error());
    }
    std::vector<RLEntry> rlEntries = std::move(*rlResult);
    if (rlEntries.empty())
    {
        return {};
    }

    std::string gjdFilename = std::string(rlFilename.substr(0, rlFilename.find_last_of('.'))) + ".GJD";

    auto fileSize = std::filesystem::file_size(gjdFilename);
    if (fileSize == 0 || !std::filesystem::exists(gjdFilename))
    {
        throw std::runtime_error("GJD file not found or is empty: " + gjdFilename);
    }

#ifdef _WIN32
    // Windows memory mapping
    HANDLE hFile = CreateFileA(gjdFilename.c_str(), GENERIC_READ, FILE_SHARE_READ, nullptr,
                               OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
    HANDLE hMapFile = CreateFileMapping(hFile, nullptr, PAGE_READONLY, 0, 0, nullptr);
    if (hMapFile == nullptr)
    {
        CloseHandle(hFile);
        throw std::runtime_error("Failed to create file mapping for: " + gjdFilename);
    }

    const uint8_t *fileData = static_cast<const uint8_t *>(
        MapViewOfFile(hMapFile, FILE_MAP_READ, 0, 0, 0));
    if (fileData == nullptr)
    {
        CloseHandle(hMapFile);
        CloseHandle(hFile);
        throw std::runtime_error("Failed to map view of file: " + gjdFilename);
    }

    std::vector<VDXFile> gjdData;
    gjdData.reserve(rlEntries.size());

    for (const auto &entry : rlEntries)
    {
        if (entry.offset + entry.length > fileSize)
        {
            throw std::runtime_error("Entry extends beyond file size for: " + entry.filename);
        }
        std::span<const uint8_t> vdxSpan{fileData + entry.offset, entry.length};
        gjdData.push_back(parseVDXFile(entry.filename, vdxSpan));
    }

    UnmapViewOfFile(fileData);
    CloseHandle(hMapFile);
    CloseHandle(hFile);

#else
    // Unix memory mapping
    int fd = open(gjdFilename.c_str(), O_RDONLY);
    if (fd == -1)
    {
        throw std::runtime_error("Failed to open GJD file: " + gjdFilename);
    }

    const uint8_t *fileData = static_cast<const uint8_t *>(
        mmap(nullptr, fileSize, PROT_READ, MAP_PRIVATE, fd, 0));
    if (fileData == MAP_FAILED)
    {
        close(fd);
        throw std::runtime_error("Failed to memory map file: " + gjdFilename);
    }

    std::vector<VDXFile> gjdData;
    gjdData.reserve(rlEntries.size());

    try
    {
        for (const auto &entry : rlEntries)
        {
            if (entry.offset + entry.length > fileSize)
            {
                throw std::runtime_error("Entry extends beyond file size for: " + entry.filename);
            }
            // Zero-copy: create span directly from memory mapped data
            std::span<const uint8_t> vdxSpan{fileData + entry.offset, entry.length};
            gjdData.push_back(parseVDXFile(entry.filename, vdxSpan));
        }
    }
    catch (...)
    {
        munmap(const_cast<uint8_t *>(fileData), fileSize);
        close(fd);
        throw;
    }

    munmap(const_cast<uint8_t *>(fileData), fileSize);
    close(fd);
#endif

    return gjdData;
}