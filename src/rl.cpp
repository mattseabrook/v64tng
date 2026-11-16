// rl.cpp

#include <fstream>
#include <vector>
#include <string>
#include <expected>
#include <cstdint>
#include <algorithm>

#include "rl.h"

//
// Parse RL file to get the VDX file locations
//
std::expected<std::vector<RLEntry>, std::string> parseRLFile(std::string_view rlFilename)
{
    std::vector<RLEntry> rlEntries;

    std::ifstream rlFile(std::string(rlFilename), std::ios::binary);
    if (!rlFile)
    {
        return std::unexpected("Failed to open RL file: " + std::string(rlFilename));
    }

    rlFile.seekg(0, std::ios::end);
    const auto end = rlFile.tellg();
    if (end < 0 || end % 20 != 0)
        return std::unexpected("RL file size is not divisible by 20 bytes: " + std::string(rlFilename));
    size_t fileSize = static_cast<size_t>(end);
    rlFile.seekg(0, std::ios::beg);
    rlEntries.reserve(fileSize / 20);

    char block[20];
    while (rlFile.read(block, sizeof(block)))
    {
        RLEntry entry;
        entry.filename.assign(block, std::find(block, block + 12, '\0'));
        while (!entry.filename.empty() && entry.filename.back() == ' ') entry.filename.pop_back();
        const auto read32 = [](const char *p) {
            const auto *b = reinterpret_cast<const uint8_t *>(p);
            return uint32_t(b[0]) | (uint32_t(b[1]) << 8) | (uint32_t(b[2]) << 16) | (uint32_t(b[3]) << 24);
        };
        entry.offset = read32(block + 12);
        entry.length = read32(block + 16);
        rlEntries.push_back(std::move(entry));
    }
    if (!rlFile.eof())
        return std::unexpected("Failed to read RL file: " + std::string(rlFilename));
    return rlEntries;
}