// gjd.cpp

#include <Windows.h>
#include <fstream>
#include <string>
#include <vector>
#include <iostream>

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
std::vector<VDXFile> parseGJDFile(const std::string& rlFilename)
{
    std::vector<RLEntry> rlEntries = parseRLFile(rlFilename);

    std::string gjdFilename = rlFilename.substr(0, rlFilename.size() - 3) + ".GJD";
    std::ifstream gjdFile(gjdFilename, std::ios::binary | std::ios::ate);

    if (!gjdFile)
    {
        MessageBoxA(NULL, ("Error opening GJD file: " + gjdFilename).c_str(), "Error", MB_OK | MB_ICONERROR);
        exit(1);
    }

    std::vector<VDXFile> GJDData;

    for (const auto& entry : rlEntries) {
        std::vector<uint8_t> vdxData(entry.length);
        gjdFile.seekg(entry.offset, std::ios::beg);
        gjdFile.read(reinterpret_cast<char*>(vdxData.data()), entry.length);

        GJDData.push_back(parseVDXFile(entry.filename, vdxData));
    }

    return GJDData;
}