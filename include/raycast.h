// raycast.h

#ifndef RAYCAST_H
#define RAYCAST_H

#include <vector>
#include <cstdint>
#include <Windows.h>

//
// Player struct
//
struct RaycastPlayer
{
    float x, y;  // Player position (in map units)
    float angle; // Player view angle (in radians)
    float fov;   // Field of view (in radians)
};

//
// Utility for degrees to radians
//
constexpr float deg2rad(float deg) { return deg * 3.14159265358979323846f / 180.0f; }

//==============================================================================

// Function Prototypes

void renderRaycastView(
    const std::vector<std::vector<uint8_t>> &map,
    const RaycastPlayer &player,
    uint8_t *framebuffer,
    int screenW, int screenH,
    int supersample);
void updateRaycasterMovement();
void handleRaycastMouseMove();
void raycastKeyDown(WPARAM key);
void raycastKeyUp(WPARAM key);

#endif // RAYCAST_H