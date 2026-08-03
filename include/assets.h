#ifndef ASSETS_H
#define ASSETS_H

#include <filesystem>

// Shared source root for every native asset tool. It defaults to the working
// directory when that directory contains SCRIPT.GRV, otherwise to ./T7G when
// present. Selecting a folder in the Asset Browser updates this root.
const std::filesystem::path& assetRoot();
void setAssetRoot(const std::filesystem::path& root);
std::filesystem::path assetPath(const std::filesystem::path& relative);

#endif // ASSETS_H
