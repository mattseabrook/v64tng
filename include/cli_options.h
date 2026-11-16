#ifndef V64TNG_CLI_OPTIONS_H
#define V64TNG_CLI_OPTIONS_H

#include <string_view>

namespace cli
{
// Match option names only; file paths and option values must remain untouched.
inline constexpr bool matches(std::string_view argument, std::string_view shortName,
                              std::string_view longName)
{
    if (argument.starts_with("--")) argument.remove_prefix(2);
    else if (argument.starts_with('-')) argument.remove_prefix(1);
    else return false;
    return argument == shortName || argument == longName;
}

inline constexpr bool isHelp(std::string_view argument)
{
    return matches(argument, "h", "help");
}

inline constexpr std::string_view engineCommand(std::string_view argument)
{
    struct Alias { std::string_view shortName, longName, canonical; };
    constexpr Alias aliases[] = {
        {"h", "help", "-h"}, {"c", "cursor", "-c"},
        {"g", "gjd", "-g"}, {"r", "rl", "-r"},
        {"v", "vdx", "-v"},
        {"p", "png", "-p"}, {"x", "xmi", "-x"}
    };
    for (const auto &alias : aliases)
        if (matches(argument, alias.shortName, alias.longName)) return alias.canonical;
    return argument;
}

inline constexpr std::string_view exportMode(std::string_view argument)
{
    if (matches(argument, "r", "raw")) return "raw";
    if (matches(argument, "v", "video")) return "video";
    return argument;
}

inline constexpr std::string_view musicAction(std::string_view argument)
{
    if (matches(argument, "e", "extract")) return "extract";
    if (matches(argument, "p", "play")) return "play";
    return argument;
}

struct CommandAlias { std::string_view shortName, longName; };
inline constexpr CommandAlias groovieCommands[] = {
    {"e", "encode"}, {"xi", "extract-indexed"}, {"ei", "encode-indexed"},
    {"ap", "archive-pack"}, {"al", "archive-list"}, {"au", "archive-unpack"},
    {"fl", "fnt-list"}, {"fe", "fnt-extract"}, {"fp", "fnt-pack"},
    {"gd", "grv-disassemble"}, {"ga", "grv-assemble"}
};

inline constexpr std::string_view groovieCommand(std::string_view argument)
{
    for (const auto &alias : groovieCommands)
        if (argument == alias.longName || matches(argument, alias.shortName, alias.longName))
            return alias.longName;
    return argument;
}

inline constexpr bool isGroovieCommand(std::string_view argument)
{
    for (const auto &alias : groovieCommands)
        if (argument == alias.longName) return true;
    return false;
}

struct GroovieOption
{
    std::string_view shortName, longName, canonical;
    bool takesValue;
};
inline constexpr GroovieOption groovieOptions[] = {
    {"o", "output", "--output", true}, {"i", "input-dir", "--input-dir", true},
    {"a", "wav", "--wav", true}, {"w", "width", "--width", true},
    {"ht", "height", "--height", true}, {"rs", "resize", "--resize", true},
    {"dc", "dos-canonical", "--dos-canonical", false}, {"f", "fps", "--fps", true},
    {"q", "lower-intermediate-quality", "--lower-intermediate-quality", true},
    {"ac", "audio-chunk-bytes", "--audio-chunk-bytes", true},
    {"hf", "hold-frames", "--hold-frames", true},
    {"pu", "max-local-palette-updates", "--max-local-palette-updates", true},
    {"rw", "raw", "--raw", false}, {"c", "compress", "--compress", false},
    {"nc", "no-compress", "--no-compress", false},
    {"lm", "length-mask", "--length-mask", true}, {"lb", "length-bits", "--length-bits", true},
    {"nv", "no-validate", "--no-validate", false}, {"r", "rl", "--rl", true},
    {"g", "gjd", "--gjd", true}, {"m", "manifest", "--manifest", true},
    {"od", "out-dir", "--out-dir", true}, {"mb", "macbinary", "--macbinary", false},
    {"mt", "mac-t7gdata", "--mac-t7gdata", false}, {"fn", "fnt", "--fnt", true},
    {"cm", "charmap", "--charmap", true}, {"gl", "glyphs", "--glyphs", true},
    {"res", "resources", "--resources", true}, {"hs", "hotspots", "--hotspots", true}
};
}

#endif
