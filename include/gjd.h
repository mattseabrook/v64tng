// gjd.h

#ifndef GJD_H
#define GJD_H

#include <vector>
#include <string>

#include "vdx.h"

/*
===============================================================================

    7th Guest - GJD Parser

    This header file contains the function prototype for parsing a GJD file
    to get the VDX file data.

===============================================================================
*/

// Function prototype for parseGJDFile
std::vector<VDXFile> parseGJDFile(const std::string& rlFilename, const std::string& vdxFilename = "");

#endif // GJD_H