#ifndef GRV_HOTSPOT_H
#define GRV_HOTSPOT_H

#include <cstdint>
#include <optional>

// Independent of save-file and microscope policies. Explicit rectangles use
// inclusive bounds in both engines; built-in Windows regions mix strict and
// inclusive comparisons. Store their actual accepted pixel extents below.
enum class GrvHotspotConvention { Dos, Windows };

struct GrvBuiltinHotspot
{
    uint16_t left, top, right, bottom;
    uint8_t cursor;
};

inline constexpr std::optional<GrvBuiltinHotspot> grvBuiltinHotspot(
    uint8_t opcode, GrvHotspotConvention convention)
{
    // V.EXE DS:E057..E0C4; v32tng 00402A90..00402D80.
    if (convention == GrvHotspotConvention::Dos) {
        switch (opcode) {
        case 0x0e: case 0x45: return GrvBuiltinHotspot{0, 80, 63, 399, 2};
        case 0x0f: case 0x44: return GrvBuiltinHotspot{576, 80, 639, 399, 1};
        case 0x10: return GrvBuiltinHotspot{156, 80, 483, 399, 3};
        case 0x11: return GrvBuiltinHotspot{156, 80, 483, 399, 0};
        case 0x12: return GrvBuiltinHotspot{0, 80, 639, 399, 0};
        case 0x2c: return GrvBuiltinHotspot{0, 0, 639, 79, 0};
        case 0x2d: return GrvBuiltinHotspot{0, 400, 639, 479, 0};
        case 0x30: return GrvBuiltinHotspot{0, 400, 639, 479, 4};
        default: return std::nullopt;
        }
    }
    switch (opcode) {
    case 0x0e: return GrvBuiltinHotspot{0, 80, 99, 400, 1};
    case 0x0f: return GrvBuiltinHotspot{541, 80, 639, 400, 2};
    case 0x10: case 0x11: return GrvBuiltinHotspot{201, 80, 439, 400, 0};
    case 0x12: return GrvBuiltinHotspot{0, 0, 639, 479, 0};
    case 0x2c: return GrvBuiltinHotspot{0, 0, 639, 79, 0};
    case 0x2d: return GrvBuiltinHotspot{0, 401, 639, 479, 0};
    case 0x30: return GrvBuiltinHotspot{0, 401, 639, 479, 4};
    case 0x44: return GrvBuiltinHotspot{561, 0, 639, 479, 2};
    case 0x45: return GrvBuiltinHotspot{0, 0, 79, 479, 1};
    default: return std::nullopt;
    }
}

// The native DOS cursor table numbers the turn images opposite to v32tng
// and v64tng's CursorStyles. Keep native VM metadata and translate for display.
inline constexpr uint8_t grvDisplayCursor(uint8_t cursor, GrvHotspotConvention convention)
{
    if (convention == GrvHotspotConvention::Dos && (cursor == 1 || cursor == 2))
        return static_cast<uint8_t>(3 - cursor);
    return cursor;
}

#endif
