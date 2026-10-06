#ifndef GRV_RANDOM_H
#define GRV_RANDOM_H

#include <cstdint>

// V.EXE advance_grv_random_state / cell_random_byte: sixteen feedback shifts
// of CL:DH:DL, returning DL. Startup seeding is supplied by the host.
class GrvRandom
{
public:
    explicit GrvRandom(uint32_t seed) : state_(seed & 0x00ffffffu) {}
    uint8_t nextByte()
    {
        for (int shift = 0; shift < 16; ++shift)
        {
            const uint32_t feedback = ((state_ >> 19) ^ (state_ >> 8)) & 1u;
            state_ = ((state_ << 1) | feedback) & 0x00ffffffu;
        }
        return static_cast<uint8_t>(state_);
    }
private:
    uint32_t state_;
};

#endif
