// raycast.h

#ifndef RAYCAST_H
#define RAYCAST_H

#include <vector>
#include <cstdint>
#include <windows.h>

//
// Raycast hit information
//
struct RaycastHit
{
    float distance; // Distance to the wall hit (in map units)
    int side;       // Side of the wall hit (0 for vertical, 1 for horizontal)
};

//
// Player struct
//
struct RaycastPlayer
{
    float x, y;      // Player position (in map units)
    float angle;     // Player view angle (in radians)
    float fov;       // Field of view (in radians)
    float walkSpeed; // Walking speed
    float runSpeed;  // Running speed
};

//
// Utility for degrees to radians
//
constexpr float deg2rad(float deg) { return deg * 3.14159265358979323846f / 180.0f; }

//==============================================================================

//
// Function Prototypes
//
bool initializePlayerFromMap(const std::vector<std::vector<uint8_t>> &tileMap, RaycastPlayer &player);
RaycastHit castRay(const std::vector<std::vector<uint8_t>> &tileMap,
                   float posX,
                   float posY,
                   float rayDirX,
                   float rayDirY);
void accumulateColumn(int x,
                      const RaycastHit &hit,
                      int screenH,
                      float halfW,
                      float halfH,
                      float maxRadius,
                      float torchRange,
                      std::vector<float> &acc_r,
                      std::vector<float> &acc_g,
                      std::vector<float> &acc_b);
void drawCrosshair(uint8_t *fb, int w, int h);
void renderChunk(const std::vector<std::vector<uint8_t>> &tileMap,
                 const RaycastPlayer &player,
                 uint8_t *framebuffer,
                 int screenWidth,
                 int screenHeight,
                 int supersample,
                 int startX,
                 int endX);
void renderRaycastView(const std::vector<std::vector<uint8_t>> &tileMap,
                       const RaycastPlayer &p,
                       uint8_t *fb,
                       int w,
                       int h,
                       int ss);
void handleRaycastMouseMove();
void raycastKeyDown(WPARAM key);
void raycastKeyUp(WPARAM key);
void updateRaycasterMovement();
void initRaycaster();

#endif // RAYCAST_H