// extract.h

#ifndef EXTRACT_H
#define EXTRACT_H

#include <string>

#include <png.h>

#include "music.h"

/*
===============================================================================

    7th Guest - Command-line extraction functions

    Extracts *.VDX , *.XMI, and *.PNG or *.RAW files from *.GJD files

===============================================================================
*/

void GJDInfo(const std::string_view &filename);
void VDXInfo(const std::string &filename);
void extractXMI(const std::vector<uint8_t> &midiData, std::string name);
void extractVDX(const std::string_view &filename);
void extractCursors(const std::string_view &robFilename, const std::string &format);
void extractPNG(std::string_view filename, bool raw);
void savePNG(const std::string &filename, const std::vector<uint8_t> &imageData, int width, int height, bool hasAlpha = false);
void createVideoFromImages(const std::string &filenameParam);

#endif // EXTRACT_H