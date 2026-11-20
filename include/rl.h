// rl.h

#ifndef RL_H
#define RL_H

#include <vector>
#include <string>
#include <filesystem>
#include <expected>

struct RLEntry {
    std::string filename;
    size_t offset;
    size_t length;
};

// Playback trims legacy space padding. Archive tools retain the original field.
std::expected<std::vector<RLEntry>, std::string> parseRLFile(
    const std::filesystem::path &rlFilename, bool trimSpacePadding = true);

#endif // RL_H
