// raycast.h

#ifndef RAYCAST_H
#define RAYCAST_H

#include <vector>
#include <array>
#include <cstdint>
#include <string>
#include <windows.h>

#ifndef PHANTOM_RAYCAST_MAP_HEADER
#if __has_include("cabin.h")
#define PHANTOM_RAYCAST_MAP_HEADER "cabin.h"
#elif __has_include("dungeon.h")
#define PHANTOM_RAYCAST_MAP_HEADER "dungeon.h"
#else
#define PHANTOM_RAYCAST_MAP_HEADER "basement.h"
#endif
#endif

#include PHANTOM_RAYCAST_MAP_HEADER

//
// Raycast hit information
//
struct RaycastHit
{
    float distance; // Distance to the wall hit (in map units)
    int side;       // Side of the wall hit (0 for vertical, 1 for horizontal)
    bool hitWall;   // true if hit actual wall, false if just reached far distance
    int mapX;       // Map cell X coordinate of hit
    int mapY;       // Map cell Y coordinate of hit
    float wallX;    // Exact hit point on wall (0..1 along wall surface)
    uint8_t tile;   // Tile value hit by the ray, or 0 for no wall
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

struct RaycastModelInstance
{
    std::string path;
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    float yaw = 0.0f;
    float pitch = 0.0f;
    float roll = 0.0f;
    float scale = 0.0f;
    float height = 2.2f;
    bool autoUpright = false;
    uint8_t r = 190;
    uint8_t g = 184;
    uint8_t b = 164;
};

struct RaycastGpuModelVertex
{
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    float nx = 0.0f;
    float ny = 0.0f;
    float nz = 1.0f;
    float r = 1.0f;
    float g = 1.0f;
    float b = 1.0f;
};

struct RaycastFrameConfig
{
    float visualScale;
    float wallHeightUnits;
    float falloffMul;
    float fovMul;
    int supersample;
    float baseTorchRange;
    float ambientLight;
    float modelLightHeight;
    std::array<uint8_t, 3> ceilingColor;
    std::array<uint8_t, 3> floorColor;
    std::array<uint8_t, 3> wallColor;
    std::array<uint8_t, 3> wallLineColor;
    bool flatCeiling;
    bool flatFloor;
    bool blackBoundaryWalls;
    bool modelLight;
};

//
// Utility for degrees to radians
//
constexpr float deg2rad(float deg) { return deg * 3.14159265358979323846f / 180.0f; }

//==============================================================================

//
// Function Prototypes
//
bool initializePlayerFromMap(const TileMap &tileMap, RaycastPlayer &player);
RaycastHit castRay(const TileMap &tileMap,
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
                      float cosCorrection,
                      float halfFovTan,
                      float rayDirX,
                      float rayDirY,
                      const RaycastPlayer& player,
                      const TileMap& tileMap,
                      std::vector<float> &acc_r,
                      std::vector<float> &acc_g,
                      std::vector<float> &acc_b,
                      bool overwrite);
void renderChunk(const TileMap &tileMap,
                 const RaycastPlayer &player,
                 uint8_t *framebuffer,
                 size_t pitch,
                 int screenWidth,
                 int screenHeight,
                 int supersample,
                 int startX,
                 int endX,
                 std::vector<float> *wallDepth);
void renderRaycastView(const TileMap &tileMap,
                       const RaycastPlayer &p,
                       uint8_t *fb,
                       size_t pitch,
                       int w,
                       int h);
void drawMeasuredFpsOverlay(uint8_t* framebuffer, size_t pitch, int width, int height);
void handleRaycastMouseMove();
void handleRaycastMouseDelta(int deltaX, int deltaY);
void raycastKeyDown(WPARAM key);
void raycastKeyUp(WPARAM key);
void resetRaycastInput();
void updateRaycasterMovement();
void initRaycaster();
void updateFogOfWar();
void prepareRaycastFrameConfig();
RaycastFrameConfig getRaycastFrameConfig();
bool raycastHasActiveModels();
void refreshRaycastModelInstances();
bool raycastMapHasArchitecturalFeatures(const TileMap &tileMap);
bool raycastMapHasSolidBlackWalls(const TileMap &tileMap);
bool buildRaycastGpuModelGeometry(std::vector<RaycastGpuModelVertex> &vertices,
                                  std::vector<uint32_t> &indices);
uint64_t getRaycastModelGeometryVersion();

#endif // RAYCAST_H
