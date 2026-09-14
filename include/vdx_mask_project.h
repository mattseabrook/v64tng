#pragma once

#include <windows.h>
#include <shlobj.h>
#include <cstdint>
#include <format>
#include <stdexcept>
#include <string>
#include <string_view>
#include <filesystem>
#include <fstream>
#include <map>
#include <span>
#include <vector>
#include <nlohmann/json.hpp>

// Versioned native-resolution mask projects. The source snapshot makes the
// content-key lookup verifiable and keeps recovery independent of game paths.
namespace vdxmask {
using Json = nlohmann::json;
inline Json runs(std::span<const uint8_t> pixels)
{
    Json result = Json::array();
    for (size_t first = 0; first < pixels.size();) {
        size_t end = first + 1;
        while (end < pixels.size() && pixels[end] == pixels[first]) ++end;
        result.push_back({end - first, pixels[first]});
        first = end;
    }
    return result;
}

inline std::vector<uint8_t> unpack(const Json &encoded, size_t count, bool edits)
{
    if (!encoded.is_array()) throw std::runtime_error("Invalid mask runs");
    std::vector<uint8_t> pixels;
    pixels.reserve(count);
    for (const auto &run : encoded) {
        if (!run.is_array() || run.size() != 2 ||
            !run[0].is_number_unsigned() || !run[1].is_number_unsigned())
            throw std::runtime_error("Invalid mask run");
        const auto length = run[0].get<uint64_t>();
        const auto value = run[1].get<uint64_t>();
        if (!length || length > count - pixels.size() ||
            (value != 0 && value != 255 && !(edits && value == 1)))
            throw std::runtime_error("Invalid mask run length or value");
        pixels.insert(pixels.end(), size_t(length), uint8_t(value));
    }
    if (pixels.size() != count) throw std::runtime_error("Incomplete mask");
    return pixels;
}

inline void atomicWrite(const std::filesystem::path &path, std::string_view bytes)
{
    auto temporary = path;
    temporary += L".tmp";
    {
        std::ofstream file(temporary, std::ios::binary | std::ios::trunc);
        file.exceptions(std::ios::badbit | std::ios::failbit);
        file.write(bytes.data(), std::streamsize(bytes.size()));
        file.close();
    }
    if (!MoveFileExW(temporary.c_str(), path.c_str(),
            MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH))
        throw std::runtime_error("Cannot replace mask project file (Windows error " +
            std::to_string(GetLastError()) + ")");
}

struct Project {
    std::filesystem::path folder;
    std::vector<uint8_t> source;
    std::string name, key;
    size_t width = 0, height = 0, frames = 0;
    bool initialized = false;

    void open(std::string_view filename, std::span<const uint8_t> bytes,
        size_t w, size_t h, size_t count)
    {
        *this = {};
        uint64_t hash = 14695981039346656037ULL;
        for (uint8_t byte : bytes) { hash ^= byte; hash *= 1099511628211ULL; }
        key = std::format("{:016x}-{}", hash, bytes.size());
        folder = std::filesystem::current_path() / L"ActorMasks" / key;
        source.assign(bytes.begin(), bytes.end());
        name = filename;
        width = w; height = h; frames = count;
        if (std::filesystem::exists(folder / L"source.vdx")) {
            if (std::filesystem::file_size(folder / L"source.vdx") != source.size())
                throw std::runtime_error("Mask project source mismatch");
            std::ifstream input(folder / L"source.vdx", std::ios::binary);
            std::vector<uint8_t> existing(source.size());
            if (!input.read(reinterpret_cast<char*>(existing.data()), std::streamsize(existing.size())) || existing != source)
                throw std::runtime_error("Mask project source mismatch");
        } else if (std::filesystem::exists(folder)) {
            // A previous interrupted first save may have left only temp files.
            for (const auto &file : std::filesystem::directory_iterator(folder))
                if (file.path().extension() == L".vdxmask")
                    throw std::runtime_error("Mask project is missing its source snapshot");
        }
        initialized = true;
    }

    std::filesystem::path framePath(size_t frame) const
    {
        return folder / std::format("{:05}.vdxmask", frame);
    }

    void load(std::map<size_t, std::vector<uint8_t>> &edits) const
    {
        std::map<size_t, std::vector<uint8_t>> loaded;
        if (std::filesystem::exists(folder))
            for (const auto &file : std::filesystem::directory_iterator(folder)) {
                if (file.path().extension() != L".vdxmask") continue;
                std::ifstream input(file.path(), std::ios::binary);
                Json data;
                input >> data;
                if (data.at("format") != "v64tng.actor-mask" || data.at("version") != 1 ||
                    data.at("source_key") != key || data.at("width") != width ||
                    data.at("height") != height || data.at("frame_count") != frames ||
                    !data.at("frame").is_number_unsigned())
                    throw std::runtime_error("Unsupported or mismatched mask project");
                const auto frame = data.at("frame").get<size_t>();
                if (frame >= frames || loaded.contains(frame) || file.path().filename() != framePath(frame).filename())
                    throw std::runtime_error("Invalid mask frame number");
                auto mask = unpack(data.at("support_rle"), width * height, false);
                auto overrides = unpack(data.at("edits_rle"), width * height, true);
                for (size_t p = 0; p < mask.size(); ++p)
                    if ((overrides[p] == 255 && mask[p] != 255) || (overrides[p] == 1 && mask[p] != 0))
                        throw std::runtime_error("Inconsistent mask edits");
                loaded.emplace(frame, std::move(overrides));
            }
        edits = std::move(loaded);
    }

    void save(size_t frame, size_t chunk, std::span<const uint8_t> edits,
        std::span<const uint8_t> support) const
    {
        if (!initialized) throw std::runtime_error("Mask project storage is unavailable");
        std::filesystem::create_directories(folder);
        if (!std::filesystem::exists(folder / L"source.vdx"))
            atomicWrite(folder / L"source.vdx", std::string_view(
                reinterpret_cast<const char*>(source.data()), source.size()));
        Json data = {{"format", "v64tng.actor-mask"}, {"version", 1},
            {"source_name", name}, {"source_key", key}, {"source_bytes", source.size()},
            {"width", width}, {"height", height}, {"frame_count", frames},
            {"frame", frame}, {"chunk", chunk}, {"seed", "vdx-delta-writes-v1"},
            {"mask_kind", "binary-actor-support"}, {"review_status", "in-progress"},
            {"edits_rle", runs(edits)}, {"support_rle", runs(support)}};
        atomicWrite(framePath(frame), data.dump(2));
    }
};
} // namespace vdxmask
