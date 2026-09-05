// pvx_protocol.h - Shared PVX wire-format constants
#pragma once

#include <cstddef>
#include <array>
#include <cstdint>

constexpr uint8_t PVX_KEYFRAME     = 0xA0;
constexpr uint8_t PVX_KEYFRAME_HAD = 0xA1;
constexpr uint8_t PVX_KEYFRAME_PAL = 0xA2;
constexpr uint8_t PVX_KEYFRAME_RAW = 0xA3;
constexpr uint8_t PVX_KEYFRAME_HAD_RAW = 0xA4;
constexpr uint8_t PVX_DELTA        = 0xA5;
constexpr uint8_t PVX_DELTA_RAW    = 0xA6;
constexpr uint8_t PVX_KEYFRAME_PAL_RAW = 0xA7;
constexpr uint8_t PVX_KEYFRAME_HAD8 = 0xA8;
constexpr uint8_t PVX_KEYFRAME_HAD16 = 0xA9;
constexpr uint8_t PVX_REPEAT       = 0xAA;
constexpr uint8_t PVX_KEYFRAME_HAD8_RAW = 0xAB;
constexpr uint8_t PVX_KEYFRAME_HAD16_RAW = 0xAC;
constexpr uint8_t PVX_REPEAT_DELTA = 0xAD;
constexpr uint8_t PVX_DELTA_BI     = 0xAE;
constexpr uint8_t PVX_DELTA_BI_RAW = 0xAF;

constexpr uint8_t PVX_PALETTE_MODE_LOCAL  = 0x00;
constexpr uint8_t PVX_PALETTE_MODE_GLOBAL = 0x01;

// Version 1 establishes the project-palette contract: global-palette PVX
// streams contain palette indices only. The authoritative palette.bin lives
// at the project root and is baked into the finished game executable.
constexpr uint8_t PVX_FORMAT_VERSION = 1;

// PVX_DELTA_BI payload version and per-block predictor modes.
// The shipping syntax uses zigzag-encoded ULEB128 motion vectors.
constexpr uint8_t PVX_BI_PAYLOAD_VERSION = 2;
constexpr uint8_t PVX_BI_MODE_PAST   = 0;
constexpr uint8_t PVX_BI_MODE_FUTURE = 1;
constexpr uint8_t PVX_BI_MODE_BLEND  = 2;

constexpr uint8_t PVX_ENCODE_BACKEND_CPU = 0x00;
constexpr uint8_t PVX_ENCODE_BACKEND_GPU = 0x01;

constexpr uint8_t PVX_FLAG_YCOCG_R = 0x01;
constexpr uint8_t PVX_FLAG_PLANAR  = 0x02;

constexpr int PVX_CHANNELS = 3;
constexpr int PVX_MOTION_BLOCK_SIZE = 8;

constexpr uint8_t DELTA_FLAG_MOTION        = 0x01;
constexpr uint8_t DELTA_FLAG_GLOBAL_MOTION = 0x02;
constexpr uint8_t DELTA_FLAG_PALETTE       = 0x04;
constexpr uint8_t DELTA_FLAG_QUADTREE      = 0x08;
constexpr uint8_t DELTA_FLAG_HALFPEL       = 0x10;
constexpr uint8_t DELTA_FLAG_TILE_V2       = 0x20;
constexpr uint8_t DELTA_FLAG_TILE_V2_PALETTE = 0x40;
constexpr uint8_t DELTA_FLAG_QUADTREE_RESIDUAL = 0x80;

constexpr uint32_t PVX_MAGIC = 0x30585650u;  // 'PVX0'

constexpr bool pvx_is_valid_palette_bits(uint8_t bits)
{
    return bits == 1u || bits == 2u || bits == 4u || bits == 8u ||
           bits == 12u || bits == 16u || bits == 24u;
}

constexpr uint32_t pvx_palette_index_mask(uint8_t bits)
{
    switch (bits)
    {
        case 1u:  return 0x1u;
        case 2u:  return 0x3u;
        case 4u:  return 0xFu;
        case 8u:  return 0xFFu;
        case 12u: return 0xFFFu;
        case 16u: return 0xFFFFu;
        case 24u: return 0xFFFFFFu;
        default:  return 0u;
    }
}

constexpr uint8_t pvx_palette_bits_for_size(size_t palette_size)
{
    if (palette_size <= 2u) return 1u;
    if (palette_size <= 4u) return 2u;
    if (palette_size <= 16u) return 4u;
    if (palette_size <= 256u) return 8u;
    if (palette_size <= 4096u) return 12u;
    if (palette_size <= 65536u) return 16u;
    return 24u;
}

inline bool pvx_read_packed_indices(const uint8_t* data,
                                    size_t size,
                                    size_t& pos,
                                    uint32_t* dst,
                                    size_t count,
                                    uint8_t bits)
{
    if (count == 0u) return true;
    if (!data || !dst || !pvx_is_valid_palette_bits(bits)) return false;

    uint64_t bitbuf = 0u;
    int bitcount = 0;
    const uint32_t mask = pvx_palette_index_mask(bits);
    for (size_t i = 0; i < count; ++i)
    {
        while (bitcount < bits)
        {
            if (pos >= size) return false;
            bitbuf |= static_cast<uint64_t>(data[pos++]) << bitcount;
            bitcount += 8;
        }
        dst[i] = static_cast<uint32_t>(bitbuf & mask);
        bitbuf >>= bits;
        bitcount -= bits;
    }
    return true;
}

static_assert(pvx_palette_index_mask(1u) == 0x1u);
static_assert(pvx_palette_index_mask(2u) == 0x3u);
static_assert(pvx_palette_index_mask(4u) == 0xFu);
static_assert(pvx_palette_bits_for_size(2u) == 1u);
static_assert(pvx_palette_bits_for_size(16u) == 4u);

#pragma pack(push, 1)
struct PVXHeader
{
    uint32_t magic;
    uint8_t  channels;
    uint8_t  bit_depth;
    uint8_t  fps;
    uint8_t  palette_mode;
    uint8_t  version;
    uint8_t  reserved[3];
    uint32_t width;
    uint32_t height;
};
#pragma pack(pop)
static_assert(sizeof(PVXHeader) == 20, "PVXHeader must be exactly 20 bytes on disk");

inline constexpr size_t PVX_HEADER_WIRE_SIZE = 20;

inline std::array<uint8_t, PVX_HEADER_WIRE_SIZE> pvx_serialize_header(const PVXHeader& h)
{
    return {{
        static_cast<uint8_t>(h.magic), static_cast<uint8_t>(h.magic >> 8),
        static_cast<uint8_t>(h.magic >> 16), static_cast<uint8_t>(h.magic >> 24),
        h.channels, h.bit_depth, h.fps, h.palette_mode, h.version,
        h.reserved[0], h.reserved[1], h.reserved[2],
        static_cast<uint8_t>(h.width), static_cast<uint8_t>(h.width >> 8),
        static_cast<uint8_t>(h.width >> 16), static_cast<uint8_t>(h.width >> 24),
        static_cast<uint8_t>(h.height), static_cast<uint8_t>(h.height >> 8),
        static_cast<uint8_t>(h.height >> 16), static_cast<uint8_t>(h.height >> 24)
    }};
}

inline bool pvx_parse_header(const uint8_t* bytes, size_t size, PVXHeader& h)
{
    if (!bytes || size < PVX_HEADER_WIRE_SIZE) return false;
    auto u32le = [&](size_t p) {
        return static_cast<uint32_t>(bytes[p]) |
               (static_cast<uint32_t>(bytes[p + 1]) << 8) |
               (static_cast<uint32_t>(bytes[p + 2]) << 16) |
               (static_cast<uint32_t>(bytes[p + 3]) << 24);
    };
    h = {};
    h.magic = u32le(0);
    h.channels = bytes[4]; h.bit_depth = bytes[5]; h.fps = bytes[6];
    h.palette_mode = bytes[7]; h.version = bytes[8];
    h.reserved[0] = bytes[9]; h.reserved[1] = bytes[10]; h.reserved[2] = bytes[11];
    h.width = u32le(12); h.height = u32le(16);
    return true;
}
