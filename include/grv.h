#ifndef GRV_H
#define GRV_H

#include <cstdint>
#include <filesystem>
#include <optional>
#include <span>
#include <string>
#include <unordered_map>
#include <vector>

struct GrvHotspot
{
    uint16_t left = 0;
    uint16_t top = 0;
    uint16_t right = 0;
    uint16_t bottom = 0;
    uint16_t target = 0;
    uint8_t cursor = 0;
    uint16_t instructionOffset = 0;
    std::string kind;
};

struct GrvInstruction
{
    uint16_t offset = 0;
    uint8_t rawOpcode = 0;
    uint8_t opcode = 0;
    std::vector<uint8_t> bytes;
    std::string mnemonic;
    std::string operands;
    std::optional<uint16_t> videoRef;
    std::string videoName;
    std::vector<uint16_t> branchTargets;
    bool fallsThrough = true;
    std::optional<GrvHotspot> hotspot;
};

struct GrvVideoCandidate
{
    uint16_t instructionOffset = 0;
    std::optional<uint16_t> ref;
    std::string name;
    std::string mnemonic;
};

struct GrvInputLoop
{
    uint16_t start = 0;
    uint16_t end = 0;
    std::optional<uint16_t> videoRef;
    std::string videoName;
    std::vector<GrvVideoCandidate> videoCandidates;
    std::vector<GrvHotspot> hotspots;
};

struct GrvProgram
{
    std::filesystem::path sourcePath;
    std::vector<uint8_t> bytes;
    std::vector<GrvInstruction> instructions;
    std::vector<GrvInputLoop> inputLoops;
};

using GrvResourceNames = std::unordered_map<uint16_t, std::string>;

GrvResourceNames loadGrvResourceNames(const std::filesystem::path& root);
GrvProgram decodeGrv(const std::filesystem::path& path, const GrvResourceNames& names);
std::string decompileGrv(const GrvProgram& program);
std::vector<uint8_t> rebuildGrvAssembly(std::string_view assembly);
void saveGrvAssembly(const GrvProgram& program, const std::filesystem::path& output);

#endif // GRV_H
