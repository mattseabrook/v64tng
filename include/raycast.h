// raycast.h

#ifndef RAYCAST_H
#define RAYCAST_H

#include <vector>
#include <cstdint>

// Simple player struct
struct RaycastPlayer
{
    float x, y;  // Player position (in map units)
    float angle; // Player view angle (in radians)
    float fov;   // Field of view (in radians)
};

// Function Prototypes

void renderRaycastView(
    const std::vector<std::vector<uint8_t>> &map,
    const RaycastPlayer &player,
    uint8_t *framebuffer, // BGRA/RGBA output
    int screenW, int screenH,
    int supersample = 1);

//
// Utility for degrees to radians
//
constexpr float deg2rad(float deg) { return deg * 3.14159265358979323846f / 180.0f; }

#endif // RAYCAST_H