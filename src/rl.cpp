// rl.cpp

#include <iostream>
#include <fstream>
#include <vector>
#include <string>

#include "rl.h"

//
// Parse RL file to get the VDX file locations
//
std::vector<RLEntry> parseRLFile(const std::string& rlFilename)
{
    std::vector<RLEntry> rlEntries;

    std::ifstream rlFile(rlFilename, std::ios::binary);

    if (!rlFile)
    {
        std::cerr << "Error opening RL file: " << rlFilename << std::endl;
        return rlEntries;
    }

    // Read the VDX file entries
    while (!rlFile.eof())
    {
        RLEntry entry;
        char block[20] = { 0 };

        rlFile.read(block, sizeof(block));

        if (rlFile.gcount() < sizeof(block))
            break;

        entry.filename.assign(block, block + 12);
        entry.offset = *reinterpret_cast<uint32_t*>(block + 12);
        entry.length = *reinterpret_cast<uint32_t*>(block + 16);

        rlEntries.push_back(entry);
    }

    return rlEntries;
}