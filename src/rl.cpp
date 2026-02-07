// rl.cpp

#include <fstream>
#include <vector>
#include <string>
#include <expected>

#include "rl.h"

//
// Parse RL file to get the VDX file locations
//
std::expected<std::vector<RLEntry>, std::string> parseRLFile(std::string_view rlFilename)
{
    std::vector<RLEntry> rlEntries;

    std::ifstream rlFile(rlFilename.data(), std::ios::binary);
    if (!rlFile)
    {
        return std::unexpected("Failed to open RL file: " + std::string(rlFilename));
    }

    rlFile.seekg(0, std::ios::end);
    size_t fileSize = static_cast<size_t>(rlFile.tellg());
    rlFile.seekg(0, std::ios::beg);
    rlEntries.reserve(fileSize / 20);

    char block[20];
    while (rlFile.read(block, sizeof(block)))
    {
        RLEntry entry;
        entry.filename.assign(block, block + 12);
        entry.offset = *reinterpret_cast<const uint32_t *>(block + 12);
        entry.length = *reinterpret_cast<const uint32_t *>(block + 16);
        rlEntries.push_back(std::move(entry));
    }
    return rlEntries;
}