#pragma once

#include <cstdint>

// Shared 8x8 bitmap font used by both Vulkan and D2D renderers.
// Indices: 0 = space, 1-26 = A-Z, 27-36 = 0-9.
extern const uint8_t g_font8x8[37][8];
