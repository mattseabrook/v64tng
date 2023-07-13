// extract.h

#ifndef EXTRACT_H
#define EXTRACT_H

#include <string>

/*
===============================================================================

    7th Guest - Command-line extraction functions

    Extracts *.VDX and *.PNG/*.RAW files from *.GJD files

===============================================================================
*/

void GJDInfo(const std::string_view& filename);
void extractVDX(const std::string_view& filename);
void extractPNG(const std::string_view& filename, bool raw);

#endif // EXTRACT_H