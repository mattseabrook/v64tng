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
std::expected<std::vector<RLEntry>, std::string> parseRLFile(const std::filesystem::path &rlFilename, bool trimSpacePadding)
{
    std::vector<RLEntry> rlEntries;

    std::ifstream rlFile(rlFilename, std::ios::binary);
    if (!rlFile)
    {
        return std::unexpected("Failed to open RL file: " + rlFilename.string());
    }

    rlFile.seekg(0, std::ios::end);
    const auto end = rlFile.tellg();
    if (end < 0 || end % 20 != 0)
        return std::unexpected("RL file size is not divisible by 20 bytes: " + rlFilename.string());
    const size_t entryCount = static_cast<size_t>(end) / 20;
    rlFile.seekg(0, std::ios::beg);
    rlEntries.reserve(entryCount);

    char block[20];
    for (size_t i = 0; i < entryCount; ++i)
    {
        if (!rlFile.read(block, sizeof(block)))
            return std::unexpected("Failed to read RL file: " + rlFilename.string());
        RLEntry entry;
        entry.filename.assign(block, std::find(block, block + 12, '\0'));
        if (trimSpacePadding)
            entry.filename.erase(entry.filename.find_last_not_of(' ') + 1);
        const auto read32 = [](const char *p) {
            const auto *b = reinterpret_cast<const uint8_t *>(p);
            return uint32_t(b[0]) | (uint32_t(b[1]) << 8) | (uint32_t(b[2]) << 16) | (uint32_t(b[3]) << 24);
        };
        entry.offset = read32(block + 12);
        entry.length = read32(block + 16);
        rlEntries.push_back(std::move(entry));
    }
    return rlEntries;
}
