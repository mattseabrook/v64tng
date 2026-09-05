// pvx_entropy.h - Shared PVX payload entropy coding
#pragma once

#include <algorithm>
#include <array>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <limits>
#include <span>
#include <vector>

namespace phantom::pvx_entropy {

enum class PayloadType : uint8_t
{
    Generic,
    CtxResiduals,
    PaletteLocalRemap,
    PaletteMix,
    MotionTileResiduals,
    Quadtree,
    KeyframePalette,
    KeyframeTransform
};

enum class Codec : uint8_t
{
    Raw = 0,
    PackBits = 1,
    Lz = 2,
    Arithmetic = 3,
    LzArithmetic = 4,
    PackBitsArithmetic = 5,
    DeltaArithmetic = 6,
    DeltaLzArithmetic = 7,
    BytePlaneArithmetic = 8,
    DeltaLz = 9
};

namespace detail {

inline void write_uvar(std::vector<uint8_t>& out, size_t value)
{
    while (value >= 0x80u)
    {
        out.push_back(static_cast<uint8_t>(value) | 0x80u);
        value >>= 7u;
    }
    out.push_back(static_cast<uint8_t>(value));
}

inline size_t uvar_size(size_t value)
{
    size_t size = 1;
    while (value >= 0x80u)
    {
        value >>= 7u;
        ++size;
    }
    return size;
}

inline bool read_uvar(const uint8_t* data, size_t size, size_t& pos, size_t& value)
{
    value = 0;
    unsigned shift = 0;
    while (pos < size && shift < sizeof(size_t) * 8u)
    {
        const uint8_t byte = data[pos++];
        const size_t chunk = static_cast<size_t>(byte & 0x7Fu);
        if (chunk > (std::numeric_limits<size_t>::max() >> shift))
            return false;
        value |= chunk << shift;
        if ((byte & 0x80u) == 0)
            return true;
        shift += 7u;
    }
    return false;
}

class ArithmeticBitWriter
{
public:
    explicit ArithmeticBitWriter(std::vector<uint8_t>& data) : data_(data)
    {
        data_.clear();
    }

    void write(bool bit)
    {
        current_ |= static_cast<uint8_t>(bit ? (0x80u >> used_) : 0u);
        if (++used_ == 8u)
        {
            data_.push_back(current_);
            current_ = 0;
            used_ = 0;
        }
    }

    void finish()
    {
        if (used_ != 0)
            data_.push_back(current_);
        while (data_.size() < 4u)
            data_.push_back(0);
    }

private:
    std::vector<uint8_t>& data_;
    uint8_t current_ = 0;
    uint8_t used_ = 0;
};

class ArithmeticBitReader
{
public:
    ArithmeticBitReader(const uint8_t* data, size_t size) : data_(data), size_(size) {}

    bool read()
    {
        bool bit = false;
        if (byte_ < size_)
            bit = (data_[byte_] & (0x80u >> used_)) != 0;
        if (++used_ == 8u)
        {
            used_ = 0;
            ++byte_;
        }
        return bit;
    }

private:
    const uint8_t* data_ = nullptr;
    size_t size_ = 0;
    size_t byte_ = 0;
    uint8_t used_ = 0;
};

class AdaptiveByteModel
{
public:
    AdaptiveByteModel()
    {
        frequencies_.fill(1u);
        rebuild();
    }

    uint32_t total() const { return total_; }
    uint32_t frequency(uint8_t symbol) const { return frequencies_[symbol]; }

    uint32_t cumulative(uint8_t symbol) const
    {
        uint32_t sum = 0;
        size_t index = symbol;
        while (index != 0)
        {
            sum += tree_[index];
            index &= index - 1u;
        }
        return sum;
    }

    uint8_t symbol_for(uint32_t target) const
    {
        size_t index = 0;
        for (size_t step = 256u; step != 0; step >>= 1u)
        {
            const size_t next = index + step;
            if (next <= 256u && tree_[next] <= target)
            {
                index = next;
                target -= tree_[next];
            }
        }
        return static_cast<uint8_t>(std::min<size_t>(index, 255u));
    }

    void update(uint8_t symbol)
    {
        ++frequencies_[symbol];
        ++total_;
        for (size_t index = static_cast<size_t>(symbol) + 1u; index <= 256u; index += index & (~index + 1u))
            ++tree_[index];

        if (total_ >= 32768u)
        {
            for (uint32_t& frequency : frequencies_)
                frequency = std::max<uint32_t>(1u, (frequency + 1u) >> 1u);
            rebuild();
        }
    }

private:
    void rebuild()
    {
        tree_[0] = 0;
        for (size_t i = 1; i <= 256u; ++i)
            tree_[i] = frequencies_[i - 1u];
        for (size_t i = 1; i <= 256u; ++i)
        {
            const size_t parent = i + (i & (~i + 1u));
            if (parent <= 256u)
                tree_[parent] += tree_[i];
        }
        total_ = tree_[256];
    }

    std::array<uint32_t, 256> frequencies_{};
    std::array<uint32_t, 257> tree_{};
    uint32_t total_ = 0;
};

inline void emit_arithmetic_bit(ArithmeticBitWriter& writer, bool bit, uint32_t& pending)
{
    writer.write(bit);
    while (pending != 0)
    {
        writer.write(!bit);
        --pending;
    }
}

// A candidate cannot win once its emitted bytes reach the strict size limit.
// Return false on pruning; callers must not use the unfinished stream.
inline bool arithmetic_encode_into(std::span<const uint8_t> input,
                                   std::vector<uint8_t>& output,
                                   size_t size_limit = std::numeric_limits<size_t>::max())
{
    constexpr uint32_t kHalf = 0x80000000u;
    constexpr uint32_t kQuarter = 0x40000000u;
    constexpr uint32_t kThreeQuarter = 0xC0000000u;

    AdaptiveByteModel model;
    ArithmeticBitWriter writer(output);
    output.reserve(std::max<size_t>(output.capacity(), input.size()));
    uint32_t low = 0;
    uint32_t high = 0xFFFFFFFFu;
    uint32_t pending = 0;

    for (uint8_t symbol : input)
    {
        const uint64_t range = static_cast<uint64_t>(high) - low + 1u;
        const uint32_t total = model.total();
        const uint32_t cumulative = model.cumulative(symbol);
        const uint32_t frequency = model.frequency(symbol);

        high = low + static_cast<uint32_t>((range * (cumulative + frequency)) / total - 1u);
        low = low + static_cast<uint32_t>((range * cumulative) / total);

        for (;;)
        {
            if (high < kHalf)
            {
                emit_arithmetic_bit(writer, false, pending);
            }
            else if (low >= kHalf)
            {
                emit_arithmetic_bit(writer, true, pending);
                low -= kHalf;
                high -= kHalf;
            }
            else if (low >= kQuarter && high < kThreeQuarter)
            {
                ++pending;
                low -= kQuarter;
                high -= kQuarter;
            }
            else
            {
                break;
            }
            low <<= 1u;
            high = (high << 1u) | 1u;
        }
        model.update(symbol);
        if (output.size() >= size_limit)
            return false;
    }

    ++pending;
    emit_arithmetic_bit(writer, low < kQuarter ? false : true, pending);
    writer.finish();
    return output.size() < size_limit;
}

inline bool arithmetic_decode(const uint8_t* data,
                              size_t size,
                              size_t output_size,
                              std::vector<uint8_t>& output)
{
    constexpr uint32_t kHalf = 0x80000000u;
    constexpr uint32_t kQuarter = 0x40000000u;
    constexpr uint32_t kThreeQuarter = 0xC0000000u;

    if ((!data && size != 0) || (output_size != 0 && size < 4u))
        return false;

    AdaptiveByteModel model;
    ArithmeticBitReader reader(data, size);
    uint32_t low = 0;
    uint32_t high = 0xFFFFFFFFu;
    uint32_t code = 0;
    for (int i = 0; i < 32; ++i)
        code = (code << 1u) | static_cast<uint32_t>(reader.read());

    output.clear();
    output.reserve(output_size);
    for (size_t i = 0; i < output_size; ++i)
    {
        const uint64_t range = static_cast<uint64_t>(high) - low + 1u;
        const uint32_t total = model.total();
        const uint64_t scaled =
            ((static_cast<uint64_t>(code - low) + 1u) * total - 1u) / range;
        if (scaled >= total)
            return false;

        const uint8_t symbol = model.symbol_for(static_cast<uint32_t>(scaled));
        const uint32_t cumulative = model.cumulative(symbol);
        const uint32_t frequency = model.frequency(symbol);
        high = low + static_cast<uint32_t>((range * (cumulative + frequency)) / total - 1u);
        low = low + static_cast<uint32_t>((range * cumulative) / total);

        for (;;)
        {
            if (high < kHalf)
            {
            }
            else if (low >= kHalf)
            {
                code -= kHalf;
                low -= kHalf;
                high -= kHalf;
            }
            else if (low >= kQuarter && high < kThreeQuarter)
            {
                code -= kQuarter;
                low -= kQuarter;
                high -= kQuarter;
            }
            else
            {
                break;
            }
            low <<= 1u;
            high = (high << 1u) | 1u;
            code = (code << 1u) | static_cast<uint32_t>(reader.read());
        }

        output.push_back(symbol);
        model.update(symbol);
    }
    return true;
}

inline void packbits_encode_into(std::span<const uint8_t> input,
                                 std::vector<uint8_t>& output)
{
    output.clear();
    output.reserve(input.size());
    size_t pos = 0;
    while (pos < input.size())
    {
        size_t run = 1;
        while (pos + run < input.size() && input[pos + run] == input[pos] && run < 130u)
            ++run;
        if (run >= 3u)
        {
            output.push_back(static_cast<uint8_t>(0x80u | (run - 3u)));
            output.push_back(input[pos]);
            pos += run;
            continue;
        }

        const size_t literal_start = pos;
        pos += run;
        while (pos < input.size() && pos - literal_start < 128u)
        {
            run = 1;
            while (pos + run < input.size() && input[pos + run] == input[pos] && run < 3u)
                ++run;
            if (run >= 3u)
                break;
            if (pos - literal_start + run > 128u)
                break;
            pos += run;
        }
        const size_t literal_size = pos - literal_start;
        output.push_back(static_cast<uint8_t>(literal_size - 1u));
        output.insert(output.end(),
                      input.begin() + static_cast<std::ptrdiff_t>(literal_start),
                      input.begin() + static_cast<std::ptrdiff_t>(pos));
    }
}

inline bool packbits_decode(const uint8_t* data,
                            size_t size,
                            size_t output_size,
                            std::vector<uint8_t>& output)
{
    output.clear();
    output.reserve(output_size);
    size_t pos = 0;
    while (pos < size && output.size() < output_size)
    {
        const uint8_t command = data[pos++];
        if ((command & 0x80u) != 0)
        {
            const size_t run = static_cast<size_t>(command & 0x7Fu) + 3u;
            if (pos >= size || run > output_size - output.size())
                return false;
            output.insert(output.end(), run, data[pos++]);
        }
        else
        {
            const size_t literal = static_cast<size_t>(command) + 1u;
            if (literal > size - pos || literal > output_size - output.size())
                return false;
            output.insert(output.end(), data + pos, data + pos + literal);
            pos += literal;
        }
    }
    return pos == size && output.size() == output_size;
}

inline uint32_t read_u32(const uint8_t* data)
{
    uint32_t value = 0;
    std::memcpy(&value, data, sizeof(value));
    return value;
}

inline void write_lz_length(std::vector<uint8_t>& output, size_t length)
{
    while (length >= 255u)
    {
        output.push_back(255u);
        length -= 255u;
    }
    output.push_back(static_cast<uint8_t>(length));
}

inline void lz_encode_into(std::span<const uint8_t> input,
                           std::vector<uint8_t>& output,
                           std::vector<int32_t>& table)
{
    constexpr size_t kHashSize = 1u << 16u;
    table.assign(kHashSize, -1);
    output.clear();
    output.reserve(input.size());

    auto hash_at = [&](size_t pos) -> size_t {
        return (static_cast<uint64_t>(read_u32(input.data() + pos)) * 2654435761u) >> 16u;
    };

    size_t anchor = 0;
    size_t pos = 0;
    while (pos + 4u <= input.size())
    {
        const size_t hash = hash_at(pos) & (kHashSize - 1u);
        const int32_t previous = table[hash];
        table[hash] = static_cast<int32_t>(pos);

        size_t match = 0;
        if (previous >= 0)
        {
            const size_t candidate = static_cast<size_t>(previous);
            const size_t offset = pos - candidate;
            if (offset != 0 && offset <= 65535u &&
                std::memcmp(input.data() + candidate, input.data() + pos, 4u) == 0)
            {
                match = 4u;
                // Wide equality probes preserve the exact greedy match length.
                while (input.size() - pos - match >= sizeof(uint64_t))
                {
                    uint64_t a, b;
                    std::memcpy(&a, input.data() + candidate + match, sizeof(a));
                    std::memcpy(&b, input.data() + pos + match, sizeof(b));
                    if (a != b) break;
                    match += sizeof(uint64_t);
                }
                while (pos + match < input.size() &&
                       input[candidate + match] == input[pos + match])
                    ++match;
            }
        }

        if (match < 4u)
        {
            ++pos;
            continue;
        }

        const size_t literal = pos - anchor;
        const size_t match_code = match - 4u;
        const size_t token_pos = output.size();
        output.push_back(0);
        output[token_pos] = static_cast<uint8_t>(
            (std::min<size_t>(literal, 15u) << 4u) |
            std::min<size_t>(match_code, 15u));
        if (literal >= 15u)
            write_lz_length(output, literal - 15u);
        output.insert(output.end(),
                      input.begin() + static_cast<std::ptrdiff_t>(anchor),
                      input.begin() + static_cast<std::ptrdiff_t>(pos));

        const size_t offset = pos - static_cast<size_t>(previous);
        output.push_back(static_cast<uint8_t>(offset));
        output.push_back(static_cast<uint8_t>(offset >> 8u));
        if (match_code >= 15u)
            write_lz_length(output, match_code - 15u);

        const size_t match_end = pos + match;
        for (size_t update = pos + 1u; update + 4u <= match_end; ++update)
            table[hash_at(update) & (kHashSize - 1u)] = static_cast<int32_t>(update);
        pos = match_end;
        anchor = pos;
    }

    const size_t literal = input.size() - anchor;
    output.push_back(static_cast<uint8_t>(std::min<size_t>(literal, 15u) << 4u));
    if (literal >= 15u)
        write_lz_length(output, literal - 15u);
    output.insert(output.end(),
                  input.begin() + static_cast<std::ptrdiff_t>(anchor),
                  input.end());
}

inline bool read_lz_length(const uint8_t* data, size_t size, size_t& pos, size_t& length)
{
    for (;;)
    {
        if (pos >= size)
            return false;
        const uint8_t value = data[pos++];
        if (length > std::numeric_limits<size_t>::max() - value)
            return false;
        length += value;
        if (value != 255u)
            return true;
    }
}

inline bool lz_decode(const uint8_t* data,
                      size_t size,
                      size_t output_size,
                      std::vector<uint8_t>& output)
{
    output.clear();
    output.reserve(output_size);
    size_t pos = 0;
    while (pos < size)
    {
        const uint8_t token = data[pos++];
        size_t literal = token >> 4u;
        if (literal == 15u && !read_lz_length(data, size, pos, literal))
            return false;
        if (literal > size - pos || literal > output_size - output.size())
            return false;
        output.insert(output.end(), data + pos, data + pos + literal);
        pos += literal;
        if (pos == size)
            break;
        if (size - pos < 2u)
            return false;

        const size_t offset = static_cast<size_t>(data[pos]) |
                              (static_cast<size_t>(data[pos + 1u]) << 8u);
        pos += 2u;
        if (offset == 0 || offset > output.size())
            return false;

        size_t match = static_cast<size_t>(token & 0x0Fu) + 4u;
        if ((token & 0x0Fu) == 15u && !read_lz_length(data, size, pos, match))
            return false;
        if (match > output_size - output.size())
            return false;
        const size_t source = output.size() - offset;
        for (size_t i = 0; i < match; ++i)
            output.push_back(output[source + i]);
    }
    return pos == size && output.size() == output_size;
}

inline void delta_encode_into(std::span<const uint8_t> input,
                              std::vector<uint8_t>& output)
{
    output.resize(input.size());
    if (input.empty())
        return;
    output[0] = input[0];
    for (size_t i = 1; i < input.size(); ++i)
        output[i] = static_cast<uint8_t>(input[i] - input[i - 1u]);
}

inline void byte_plane_encode_into(std::span<const uint8_t> input,
                                   std::vector<uint8_t>& output)
{
    output.clear();
    output.reserve(input.size());
    for (size_t i = 0; i < input.size(); i += 2u)
        output.push_back(input[i]);
    for (size_t i = 1; i < input.size(); i += 2u)
        output.push_back(input[i]);
}

inline void byte_plane_decode_in_place(std::vector<uint8_t>& data)
{
    thread_local std::vector<uint8_t> output;
    output.resize(data.size());
    const size_t even_count = (data.size() + 1u) / 2u;
    for (size_t i = 0; i < even_count; ++i)
        output[i * 2u] = data[i];
    for (size_t i = 0; i < data.size() / 2u; ++i)
        output[i * 2u + 1u] = data[even_count + i];
    data.swap(output);
}

inline void delta_decode_in_place(std::vector<uint8_t>& data)
{
    for (size_t i = 1; i < data.size(); ++i)
        data[i] = static_cast<uint8_t>(data[i] + data[i - 1u]);
}

inline void consider(std::vector<uint8_t>& best, Codec codec, std::vector<uint8_t>&& body)
{
    if (body.size() + 1u >= best.size())
        return;
    std::vector<uint8_t> candidate;
    candidate.reserve(body.size() + 1u);
    candidate.push_back(static_cast<uint8_t>(codec));
    candidate.insert(candidate.end(), body.begin(), body.end());
    best = std::move(candidate);
}

inline void consider(std::vector<uint8_t>& best,
                     Codec codec,
                     std::span<const uint8_t> body)
{
    if (body.size() + 1u >= best.size())
        return;
    best.clear();
    best.reserve(body.size() + 1u);
    best.push_back(static_cast<uint8_t>(codec));
    best.insert(best.end(), body.begin(), body.end());
}

inline void consider_nested(std::vector<uint8_t>& best,
                            Codec codec,
                            size_t intermediate_size,
                            std::vector<uint8_t>&& body)
{
    std::vector<uint8_t> candidate;
    candidate.reserve(body.size() + 12u);
    candidate.push_back(static_cast<uint8_t>(codec));
    write_uvar(candidate, intermediate_size);
    candidate.insert(candidate.end(), body.begin(), body.end());
    if (candidate.size() < best.size())
        best = std::move(candidate);
}

inline void consider_nested(std::vector<uint8_t>& best,
                            Codec codec,
                            size_t intermediate_size,
                            std::span<const uint8_t> body)
{
    const size_t candidate_size = 1u + uvar_size(intermediate_size) + body.size();
    if (candidate_size >= best.size())
        return;
    best.clear();
    best.reserve(candidate_size);
    best.push_back(static_cast<uint8_t>(codec));
    write_uvar(best, intermediate_size);
    best.insert(best.end(), body.begin(), body.end());
}

} // namespace detail

struct EncodeWorkspace
{
    std::vector<uint8_t> packed;
    std::vector<uint8_t> lz;
    std::vector<uint8_t> arithmetic;
    std::vector<uint8_t> delta;
    std::vector<uint8_t> delta_lz;
    std::vector<uint8_t> byte_planes;
    std::vector<int32_t> lz_table;
};

inline void encode_into(std::span<const uint8_t> input,
                        PayloadType type,
                        int effort,
                        std::vector<uint8_t>& output,
                        EncodeWorkspace& workspace)
{
    effort = std::clamp(effort, 1, 22);
    output.clear();
    output.reserve(input.size() + 1u);
    output.push_back(static_cast<uint8_t>(Codec::Raw));
    output.insert(output.end(), input.begin(), input.end());
    if (input.empty())
        return;

    detail::packbits_encode_into(input, workspace.packed);
    detail::consider(output, Codec::PackBits, workspace.packed);

    detail::lz_encode_into(input, workspace.lz, workspace.lz_table);
    detail::consider(output, Codec::Lz, workspace.lz);
    auto race_arithmetic = [&](std::span<const uint8_t> source, Codec codec, bool nested = false) {
        const size_t overhead = 1u + (nested ? detail::uvar_size(source.size()) : 0u);
        if (output.size() <= overhead) return;
        if (!detail::arithmetic_encode_into(source, workspace.arithmetic,
                                            output.size() - overhead)) return;
        if (nested)
            detail::consider_nested(output, codec, source.size(), workspace.arithmetic);
        else
            detail::consider(output, codec, workspace.arithmetic);
    };
    if (effort >= 4)
    {
        race_arithmetic(input, Codec::Arithmetic);
    }
    if (effort >= 10)
    {
        race_arithmetic(workspace.lz, Codec::LzArithmetic, true);
        race_arithmetic(workspace.packed, Codec::PackBitsArithmetic, true);
    }

    const bool use_delta =
        type == PayloadType::Generic ||
        type == PayloadType::CtxResiduals ||
        type == PayloadType::PaletteLocalRemap ||
        type == PayloadType::PaletteMix ||
        type == PayloadType::MotionTileResiduals ||
        type == PayloadType::Quadtree ||
        type == PayloadType::KeyframePalette;
    if (use_delta && effort >= 6)
    {
        detail::delta_encode_into(input, workspace.delta);
        race_arithmetic(workspace.delta, Codec::DeltaArithmetic);
        if (effort >= 14)
        {
            detail::lz_encode_into(workspace.delta, workspace.delta_lz, workspace.lz_table);
            // The delta LZ stream is already built. Store it directly when
            // another arithmetic pass costs more bytes than it saves.
            detail::consider(output, Codec::DeltaLz, workspace.delta_lz);
            race_arithmetic(workspace.delta_lz, Codec::DeltaLzArithmetic, true);
        }
    }

    const bool use_byte_planes =
        type == PayloadType::PaletteLocalRemap ||
        type == PayloadType::PaletteMix ||
        type == PayloadType::MotionTileResiduals ||
        type == PayloadType::KeyframePalette;
    if (use_byte_planes && effort >= 8 && input.size() >= 64u)
    {
        detail::byte_plane_encode_into(input, workspace.byte_planes);
        race_arithmetic(workspace.byte_planes, Codec::BytePlaneArithmetic);
    }
}

inline bool decode(const uint8_t* data,
                   size_t size,
                   size_t output_size,
                   std::vector<uint8_t>& output)
{
    if (!data || size == 0)
        return output_size == 0;

    const Codec codec = static_cast<Codec>(data[0]);
    const uint8_t* body = data + 1u;
    const size_t body_size = size - 1u;
    switch (codec)
    {
        case Codec::Raw:
            if (body_size != output_size)
                return false;
            output.assign(body, body + body_size);
            return true;
        case Codec::PackBits:
            return detail::packbits_decode(body, body_size, output_size, output);
        case Codec::Lz:
            return detail::lz_decode(body, body_size, output_size, output);
        case Codec::Arithmetic:
            return detail::arithmetic_decode(body, body_size, output_size, output);
        case Codec::DeltaLz:
            if (!detail::lz_decode(body, body_size, output_size, output))
                return false;
            detail::delta_decode_in_place(output);
            return true;
        case Codec::DeltaArithmetic:
            if (!detail::arithmetic_decode(body, body_size, output_size, output))
                return false;
            detail::delta_decode_in_place(output);
            return true;
        case Codec::BytePlaneArithmetic:
            if (!detail::arithmetic_decode(body, body_size, output_size, output))
                return false;
            detail::byte_plane_decode_in_place(output);
            return true;
        case Codec::LzArithmetic:
        case Codec::PackBitsArithmetic:
        case Codec::DeltaLzArithmetic:
        {
            size_t pos = 0;
            size_t intermediate_size = 0;
            if (!detail::read_uvar(body, body_size, pos, intermediate_size) ||
                intermediate_size > output_size * 4u + 65536u)
                return false;
            thread_local std::vector<uint8_t> intermediate;
            if (!detail::arithmetic_decode(body + pos,
                                           body_size - pos,
                                           intermediate_size,
                                           intermediate))
                return false;
            if (codec == Codec::PackBitsArithmetic)
                return detail::packbits_decode(intermediate.data(),
                                               intermediate.size(),
                                               output_size,
                                               output);

            if (!detail::lz_decode(intermediate.data(),
                                   intermediate.size(),
                                   output_size,
                                   output))
                return false;
            if (codec == Codec::DeltaLzArithmetic)
                detail::delta_decode_in_place(output);
            return true;
        }
        default:
            return false;
    }
}

inline bool decode(const std::vector<uint8_t>& input,
                   size_t output_size,
                   std::vector<uint8_t>& output)
{
    return decode(input.data(), input.size(), output_size, output);
}

inline bool decode(std::span<const uint8_t> input,
                   size_t output_size,
                   std::vector<uint8_t>& output)
{
    return decode(input.data(), input.size(), output_size, output);
}

} // namespace phantom::pvx_entropy
