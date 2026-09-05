#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <limits>
#include <span>
#include <vector>

#include "pvx_protocol.h"

namespace phantom::pvx_decode
{
class BitReader
{
public:
    BitReader(const uint8_t* data, size_t size) : data_(data), size_(size) {}
    bool read(bool& bit)
    {
        if (byte_ >= size_) return false;
        bit = ((data_[byte_] >> bit_) & 1u) != 0;
        bit_ = (bit_ + 1) & 7;
        if (bit_ == 0) ++byte_;
        return true;
    }
private:
    const uint8_t* data_;
    size_t size_;
    size_t byte_ = 0;
    int bit_ = 0;
};

template<int Channels, int MaxDepth>
bool decode_quadtree_node(BitReader& bits,
                          const uint8_t*& literal,
                          const uint8_t* literal_end,
                          const uint8_t* reference,
                          uint8_t* output,
                          int x, int y, int width, int height,
                          int frame_width, int depth,
                          bool residual_literals)
{
    if (width <= 0 || height <= 0 || depth > MaxDepth) return false;
    bool branch = false;
    if (!bits.read(branch)) return false;
    if (!branch)
    {
        bool changed = false;
        if (!bits.read(changed)) return false;
        if (!changed) return true;
        const size_t row_bytes = static_cast<size_t>(width) * Channels;
        const size_t bytes = row_bytes * static_cast<size_t>(height);
        if (literal > literal_end || bytes > static_cast<size_t>(literal_end - literal)) return false;
        const size_t stride = static_cast<size_t>(frame_width) * Channels;
        for (int py = y; py < y + height; ++py)
        {
            uint8_t* dst = output + static_cast<size_t>(py) * stride +
                static_cast<size_t>(x) * Channels;
            if (residual_literals)
            {
                const uint8_t* ref = reference + static_cast<size_t>(py) * stride +
                    static_cast<size_t>(x) * Channels;
                for (size_t i = 0; i < row_bytes; ++i)
                    dst[i] = static_cast<uint8_t>(ref[i] + literal[i]);
            }
            else
            {
                std::memcpy(dst, literal, row_bytes);
            }
            literal += row_bytes;
        }
        return true;
    }
    if (depth >= MaxDepth || width < 2 || height < 2) return false;
    const int hw = width / 2, hh = height / 2;
    return decode_quadtree_node<Channels, MaxDepth>(bits, literal, literal_end, reference, output, x, y, hw, hh, frame_width, depth + 1, residual_literals) &&
           decode_quadtree_node<Channels, MaxDepth>(bits, literal, literal_end, reference, output, x + hw, y, width - hw, hh, frame_width, depth + 1, residual_literals) &&
           decode_quadtree_node<Channels, MaxDepth>(bits, literal, literal_end, reference, output, x, y + hh, hw, height - hh, frame_width, depth + 1, residual_literals) &&
           decode_quadtree_node<Channels, MaxDepth>(bits, literal, literal_end, reference, output, x + hw, y + hh, width - hw, height - hh, frame_width, depth + 1, residual_literals);
}

template<int Channels, int MaxDepth>
bool decode_quadtree(const uint8_t* data, size_t size, const uint8_t* reference,
                     uint8_t* output, int width, int height,
                     bool residual_literals = false)
{
    if (!data || !reference || !output || width <= 0 || height <= 0 || size < 4) return false;
    const uint32_t tree_size = static_cast<uint32_t>(data[0]) |
        (static_cast<uint32_t>(data[1]) << 8) | (static_cast<uint32_t>(data[2]) << 16) |
        (static_cast<uint32_t>(data[3]) << 24);
    if (static_cast<size_t>(tree_size) > size - 4) return false;
    const size_t frame_size = static_cast<size_t>(width) * height * Channels;
    std::vector<uint8_t> decoded(reference, reference + frame_size);
    const uint8_t* literal = data + 4 + tree_size;
    const uint8_t* literal_end = data + size;
    BitReader bits(data + 4, tree_size);
    if (!decode_quadtree_node<Channels, MaxDepth>(bits, literal, literal_end,
                                                  reference, decoded.data(),
                                                  0, 0, width, height, width, 0,
                                                  residual_literals) ||
        literal != literal_end) return false;
    std::memcpy(output, decoded.data(), frame_size);
    return true;
}

inline bool read_bi_uvar(std::span<const uint8_t> data,
                         size_t& pos,
                         uint32_t& value)
{
    value = 0;
    for (int shift = 0; shift <= 28 && pos < data.size(); shift += 7)
    {
        const uint8_t byte = data[pos++];
        value |= static_cast<uint32_t>(byte & 0x7Fu) << shift;
        if ((byte & 0x80u) == 0u) return true;
    }
    return false;
}

class BiRiceBitReader
{
public:
    explicit BiRiceBitReader(std::span<const uint8_t> data) : data_(data) {}
    bool read_bit(bool& bit)
    {
        if (byte_pos_ >= data_.size()) return false;
        bit = ((data_[byte_pos_] >> (7u - bit_pos_)) & 1u) != 0u;
        if (++bit_pos_ == 8u) { bit_pos_ = 0u; ++byte_pos_; }
        return true;
    }
    bool read_bits(uint8_t count, uint32_t& value)
    {
        value = 0;
        for (uint8_t i = 0; i < count; ++i)
        {
            bool bit = false;
            if (!read_bit(bit)) return false;
            value = (value << 1u) | static_cast<uint32_t>(bit);
        }
        return true;
    }
private:
    std::span<const uint8_t> data_;
    size_t byte_pos_ = 0;
    uint8_t bit_pos_ = 0;
};

inline bool decode_bi_rle_golomb(std::span<const uint8_t> packet,
                                 size_t expected_count,
                                 std::vector<int16_t>& values)
{
    values.assign(expected_count, 0);
    if (expected_count == 0u)
        return packet.empty();
    size_t pos = 0;
    uint32_t nonzero_count = 0;
    if (!read_bi_uvar(packet, pos, nonzero_count) ||
        nonzero_count > expected_count)
        return false;
    if (nonzero_count == 0u)
        return pos == packet.size();
    if (pos >= packet.size()) return false;
    const uint8_t k = packet[pos++];
    if (k > 15u) return false;

    std::vector<uint32_t> runs(nonzero_count);
    for (uint32_t& run : runs)
        if (!read_bi_uvar(packet, pos, run)) return false;

    BiRiceBitReader bits(packet.subspan(pos));
    size_t cursor = 0;
    for (uint32_t i = 0; i < nonzero_count; ++i)
    {
        if (runs[i] > expected_count - cursor) return false;
        cursor += runs[i];
        if (cursor >= expected_count) return false;
        uint32_t quotient = 0;
        bool bit = false;
        do
        {
            if (!bits.read_bit(bit)) return false;
            if (bit && quotient++ >= 65535u) return false;
        } while (bit);
        uint32_t remainder = 0;
        if (k > 0u && !bits.read_bits(k, remainder)) return false;
        const uint32_t zigzag = (quotient << k) | remainder;
        if (zigzag > std::numeric_limits<uint16_t>::max()) return false;
        const int32_t signed_value = (zigzag & 1u)
            ? -static_cast<int32_t>((zigzag >> 1u) + 1u)
            : static_cast<int32_t>(zigzag >> 1u);
        values[cursor++] = static_cast<int16_t>(signed_value);
    }
    return true;
}

struct BiContainerView
{
    uint8_t future_delta_ref = 0;
    uint8_t past_ref = 0;
    std::span<const uint8_t> future_delta;
    std::span<const uint8_t> bi_payload;
};

inline bool parse_bi_container(std::span<const uint8_t> payload,
                               BiContainerView& view)
{
    if (payload.size() < 5u ||
        payload[0] != PVX_BI_PAYLOAD_VERSION)
        return false;
    size_t pos = 1;
    view = {};
    view.future_delta_ref = payload[pos++];
    view.past_ref = payload[pos++];
    uint32_t future_size = 0, bi_size = 0;
    if (!read_bi_uvar(payload, pos, future_size) ||
        future_size > payload.size() - pos)
        return false;
    view.future_delta = payload.subspan(pos, future_size);
    pos += future_size;
    if (!read_bi_uvar(payload, pos, bi_size) ||
        bi_size != payload.size() - pos)
        return false;
    view.bi_payload = payload.subspan(pos, bi_size);
    return !view.future_delta.empty() && !view.bi_payload.empty();
}

inline bool decode_bi_blocks(std::span<const uint8_t> payload,
                             const uint8_t* past,
                             const uint8_t* future,
                             int width,
                             int height,
                             std::vector<uint8_t>& output)
{
    if (!past || !future || width <= 0 || height <= 0 || payload.empty() ||
        payload[0] != PVX_BI_PAYLOAD_VERSION)
        return false;
    size_t pos = 1;
    uint32_t blocks_x_wire = 0, blocks_y_wire = 0;
    if (!read_bi_uvar(payload, pos, blocks_x_wire) ||
        !read_bi_uvar(payload, pos, blocks_y_wire))
        return false;
    const int blocks_x = width / PVX_MOTION_BLOCK_SIZE;
    const int blocks_y = height / PVX_MOTION_BLOCK_SIZE;
    if (blocks_x_wire != static_cast<uint32_t>(blocks_x) ||
        blocks_y_wire != static_cast<uint32_t>(blocks_y))
        return false;

    const size_t frame_size = static_cast<size_t>(width) * height * PVX_CHANNELS;
    output.resize(frame_size);
    std::vector<int16_t> residual;
    constexpr size_t block_values = static_cast<size_t>(PVX_MOTION_BLOCK_SIZE) *
        PVX_MOTION_BLOCK_SIZE * PVX_CHANNELS;
    const size_t stride = static_cast<size_t>(width) * PVX_CHANNELS;

    for (int by = 0; by < blocks_y; ++by)
    {
        for (int bx = 0; bx < blocks_x; ++bx)
        {
            if (pos >= payload.size()) return false;
            const uint8_t command = payload[pos++];
            const uint8_t mode = command & 0x03u;
            const bool has_residual = (command & 0x04u) != 0u;
            if (mode > PVX_BI_MODE_BLEND || (command & 0xF8u) != 0u)
                return false;
            int pdx = 0, pdy = 0, fdx = 0, fdy = 0;
            auto read_mv = [&](int& dx, int& dy) {
                uint32_t dx_zigzag = 0, dy_zigzag = 0;
                if (!read_bi_uvar(payload, pos, dx_zigzag) ||
                    !read_bi_uvar(payload, pos, dy_zigzag))
                    return false;
                const auto decode_zigzag = [](uint32_t value) {
                    const int64_t magnitude = value >> 1u;
                    return (value & 1u) ? -magnitude - 1 : magnitude;
                };
                const int64_t decoded_dx = decode_zigzag(dx_zigzag);
                const int64_t decoded_dy = decode_zigzag(dy_zigzag);
                if (decoded_dx < std::numeric_limits<int16_t>::min() ||
                    decoded_dx > std::numeric_limits<int16_t>::max() ||
                    decoded_dy < std::numeric_limits<int16_t>::min() ||
                    decoded_dy > std::numeric_limits<int16_t>::max())
                    return false;
                dx = static_cast<int>(decoded_dx);
                dy = static_cast<int>(decoded_dy);
                return true;
            };
            if ((mode == PVX_BI_MODE_PAST || mode == PVX_BI_MODE_BLEND) &&
                !read_mv(pdx, pdy)) return false;
            if ((mode == PVX_BI_MODE_FUTURE || mode == PVX_BI_MODE_BLEND) &&
                !read_mv(fdx, fdy)) return false;

            if (has_residual)
            {
                uint32_t packet_size = 0;
                if (!read_bi_uvar(payload, pos, packet_size) ||
                    packet_size > payload.size() - pos ||
                    !decode_bi_rle_golomb(payload.subspan(pos, packet_size),
                                          block_values, residual))
                    return false;
                pos += packet_size;
            }
            else
            {
                residual.assign(block_values, 0);
            }

            const int x0 = bx * PVX_MOTION_BLOCK_SIZE;
            const int y0 = by * PVX_MOTION_BLOCK_SIZE;
            size_t residual_pos = 0;
            for (int y = 0; y < PVX_MOTION_BLOCK_SIZE; ++y)
            {
                for (int x = 0; x < PVX_MOTION_BLOCK_SIZE; ++x)
                {
                    const int px = x0 + x, py = y0 + y;
                    const int psx = px + pdx, psy = py + pdy;
                    const int fsx = px + fdx, fsy = py + fdy;
                    if ((mode != PVX_BI_MODE_FUTURE &&
                         (psx < 0 || psy < 0 || psx >= width || psy >= height)) ||
                        (mode != PVX_BI_MODE_PAST &&
                         (fsx < 0 || fsy < 0 || fsx >= width || fsy >= height)))
                        return false;
                    const size_t dst = static_cast<size_t>(py) * stride +
                        static_cast<size_t>(px) * PVX_CHANNELS;
                    const size_t poff = static_cast<size_t>(psy) * stride +
                        static_cast<size_t>(psx) * PVX_CHANNELS;
                    const size_t foff = static_cast<size_t>(fsy) * stride +
                        static_cast<size_t>(fsx) * PVX_CHANNELS;
                    for (int c = 0; c < PVX_CHANNELS; ++c)
                    {
                        const uint8_t prediction = mode == PVX_BI_MODE_PAST
                            ? past[poff + c]
                            : mode == PVX_BI_MODE_FUTURE
                                ? future[foff + c]
                                : static_cast<uint8_t>((static_cast<unsigned>(past[poff + c]) +
                                                       future[foff + c] + 1u) >> 1u);
                        output[dst + c] = static_cast<uint8_t>(
                            static_cast<int>(prediction) + residual[residual_pos++]);
                    }
                }
            }
        }
    }

    const size_t covered_values = static_cast<size_t>(blocks_x) *
        PVX_MOTION_BLOCK_SIZE * static_cast<size_t>(blocks_y) *
        PVX_MOTION_BLOCK_SIZE * PVX_CHANNELS;
    const size_t expected_edge_count = frame_size - covered_values;
    uint32_t edge_count = 0, edge_packet_size = 0;
    if (!read_bi_uvar(payload, pos, edge_count) ||
        edge_count != expected_edge_count ||
        !read_bi_uvar(payload, pos, edge_packet_size) ||
        edge_packet_size > payload.size() - pos ||
        !decode_bi_rle_golomb(payload.subspan(pos, edge_packet_size),
                              expected_edge_count, residual))
        return false;
    pos += edge_packet_size;
    size_t edge_pos = 0;
    for (int y = 0; y < height; ++y)
        for (int x = 0; x < width; ++x)
            if (x >= blocks_x * PVX_MOTION_BLOCK_SIZE ||
                y >= blocks_y * PVX_MOTION_BLOCK_SIZE)
                for (int c = 0; c < PVX_CHANNELS; ++c)
                {
                    const size_t off = (static_cast<size_t>(y) * width + x) *
                        PVX_CHANNELS + static_cast<size_t>(c);
                    const uint8_t prediction = static_cast<uint8_t>(
                        (static_cast<unsigned>(past[off]) + future[off] + 1u) >> 1u);
                    output[off] = static_cast<uint8_t>(
                        static_cast<int>(prediction) + residual[edge_pos++]);
                }
    return pos == payload.size();
}
} // namespace phantom::pvx_decode
