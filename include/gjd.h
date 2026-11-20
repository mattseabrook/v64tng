#ifndef GJD_H
#define GJD_H

#include "vdx.h"

#include <filesystem>
#include <utility>

// The shared owner unmaps the file when the last borrower releases it.
std::expected<std::pair<std::shared_ptr<const uint8_t>, size_t>, std::string>
mapFileReadOnly(const std::filesystem::path &path);
std::vector<VDXFile> parseGJDFile(std::string_view rlFilename);

#endif // GJD_H
