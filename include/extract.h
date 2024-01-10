// extract.h

#ifndef EXTRACT_H
#define EXTRACT_H

#include <string>

#include "xmi.h"

/*
===============================================================================

    7th Guest - Command-line extraction functions

    Extracts *.VDX , *.XMI, and *.PNG/*.RAW files from *.GJD files

===============================================================================
*/

void GJDInfo(const std::string_view& filename);
void extractXMI(const std::vector<uint8_t>& midiData, std::string name);
void extractVDX(const std::string_view& filename);
void extractPNG(const std::string_view& filename, bool raw);
void createVideoFromImages(const std::string& directory);

#endif // EXTRACT_H