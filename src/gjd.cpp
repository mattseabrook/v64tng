// gjd.cpp

#include <fstream>
#include <vector>
#include <string>
#include <stdexcept>

#include "rl.h"
#include "gjd.h"
#include "vdx.h"

/*
===============================================================================
Function Name: parseGJDFile

Description:
    - TBD

Parameters:
    - rlFilename: the 7th Guest RL file to parse

Return:
    - TBD

Notes:
    - None.
===============================================================================
*/
std::vector<VDXFile> parseGJDFile(std::string_view rlFilename) {
    std::vector<RLEntry> rlEntries = parseRLFile(rlFilename);
    if (rlEntries.empty()) {
        return {};
    }

	std::string gjdFilename = std::string(rlFilename.substr(0, rlFilename.find_last_of('.'))) + ".GJD";
    std::ifstream gjdFile(gjdFilename, std::ios::binary);
    if (!gjdFile) {
        throw std::runtime_error("Failed to open GJD file: " + gjdFilename);
    }

    std::vector<VDXFile> gjdData;
    gjdData.reserve(rlEntries.size());
    for (const auto& entry : rlEntries) {
        std::vector<uint8_t> vdxData(entry.length);
        gjdFile.seekg(entry.offset, std::ios::beg);
        gjdFile.read(reinterpret_cast<char*>(vdxData.data()), entry.length);
        if (gjdFile.gcount() != static_cast<std::streamsize>(entry.length)) {
            throw std::runtime_error("Incomplete read from GJD file for: " + entry.filename);
        }
        gjdData.push_back(parseVDXFile(entry.filename, std::move(vdxData)));
    }
    return gjdData;
}