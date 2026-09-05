// extract.h

#ifndef EXTRACT_H
#define EXTRACT_H

#include <string>
#include <vector>

// Minimal extract utilities used by megatexture generation/packing
void savePNG(const std::string &filename, const std::vector<uint8_t> &imageData, int width, int height, bool hasAlpha = false);
std::vector<uint8_t> loadPNG(const std::string &filename, int &width, int &height);

#endif // EXTRACT_H
