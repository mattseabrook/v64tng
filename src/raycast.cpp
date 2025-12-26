// raycast.cpp

#include <cmath>
#include <algorithm>
#include <thread>
#include <vector>
#include <array>
#include <numbers>  // C++20 std::numbers::pi

#include "raycast.h"
#include "window.h"
#include "game.h"
#include "basement.h"
#include "megatexture.h"

// Constants
static constexpr float PI = std::numbers::pi_v<float>;
static constexpr float TWO_PI = 2.0f * PI;

// Local state for raycasting
static std::array<bool, 256> g_keys = {};

// Cached config values - read once per frame, not per pixel
struct RaycastConfig
{
    float visualScale = 3.0f;
    float falloffMul = 0.85f;
    float fovMul = 1.0f;
    int supersample = 1;
    float baseTorchRange = 16.0f;
};
static RaycastConfig g_rayConfig;

// Persistent thread pool to avoid thread creation overhead per frame
struct ThreadPool
{
    std::vector<std::jthread> workers;
    unsigned int threadCount = 0;
    
    void ensureThreadCount(unsigned int count)
    {
        if (threadCount != count)
        {
            workers.clear();
            threadCount = count;
        }
    }
};
static ThreadPool g_threadPool;

// Call once per frame before rendering to cache config values
static void cacheConfigValues()
{
    g_rayConfig.visualScale = config.contains("raycastScale") 
        ? static_cast<float>(config["raycastScale"]) : 3.0f;
    g_rayConfig.falloffMul = config.contains("raycastFalloffMul") 
        ? static_cast<float>(config["raycastFalloffMul"]) : 0.85f;
    g_rayConfig.fovMul = config.contains("raycastFovMul") 
        ? static_cast<float>(config["raycastFovMul"]) : 1.0f;
    g_rayConfig.supersample = config.contains("raycastSupersample")
        ? config["raycastSupersample"].get<int>() : 1;
    g_rayConfig.baseTorchRange = 16.0f;
}

// Normalize angle to [0, 2π) using std::fmod (branchless)
static inline float normalizeAngle(float angle)
{
    angle = std::fmod(angle, TWO_PI);
    return angle < 0.0f ? angle + TWO_PI : angle;
}

//
// Initialize player position and orientation from the map
//
bool initializePlayerFromMap(const std::vector<std::vector<uint8_t>> &tileMap, RaycastPlayer &player)
{
    if (tileMap.empty() || tileMap[0].empty())
        return false;

    int mapH = tileMap.size();
    int mapW = tileMap[0].size();

    // Search for player start position markers (0xF0-0xF3)
    for (int y = 0; y < mapH; ++y)
    {
        for (int x = 0; x < mapW; ++x)
        {
            uint8_t tile = tileMap[y][x];
            if (tile >= 0xF0 && tile <= 0xF3)
            {
                // Set player position to center of the tile
                player.x = static_cast<float>(x) + 0.5f;
                player.y = static_cast<float>(y) + 0.5f;

                // Set player orientation based on the marker
                switch (tile)
                {
                case 0xF0: // North
                    player.angle = deg2rad(270.0f);
                    break;
                case 0xF1: // East
                    player.angle = deg2rad(0.0f);
                    break;
                case 0xF2: // South
                    player.angle = deg2rad(90.0f);
                    break;
                case 0xF3: // West
                    player.angle = deg2rad(180.0f);
                    break;
                }

                return true;
            }
        }
    }

    return false;
}

// Cast ray with DDA algorithm (branchless inner loop)
RaycastHit castRay(const std::vector<std::vector<uint8_t>> &tileMap,
                   float posX,
                   float posY,
                   float rayDirX,
                   float rayDirY)
{
    const int mapW = static_cast<int>(tileMap[0].size());
    const int mapH = static_cast<int>(tileMap.size());
    int mapX = static_cast<int>(posX);
    int mapY = static_cast<int>(posY);
    
    // Avoid division by zero with small epsilon
    const float epsX = (rayDirX == 0.0f) ? 1e-10f : rayDirX;
    const float epsY = (rayDirY == 0.0f) ? 1e-10f : rayDirY;
    const float deltaDistX = std::abs(1.0f / epsX);
    const float deltaDistY = std::abs(1.0f / epsY);
    
    // Branchless step calculation using sign
    const int stepX = (rayDirX >= 0.0f) ? 1 : -1;
    const int stepY = (rayDirY >= 0.0f) ? 1 : -1;
    
    // Branchless initial side distance calculation
    float sideDistX = (stepX > 0) 
        ? (mapX + 1.0f - posX) * deltaDistX 
        : (posX - mapX) * deltaDistX;
    float sideDistY = (stepY > 0) 
        ? (mapY + 1.0f - posY) * deltaDistY 
        : (posY - mapY) * deltaDistY;
    
    int side = 0;
    
    // DDA loop with branchless step selection
    constexpr int MAX_STEPS = 64;
    for (int i = 0; i < MAX_STEPS; ++i)
    {
        // Branchless: select which axis to step based on comparison
        const bool stepInX = (sideDistX < sideDistY);
        
        // Conditional updates (compiler optimizes to cmov)
        sideDistX += stepInX ? deltaDistX : 0.0f;
        sideDistY += stepInX ? 0.0f : deltaDistY;
        mapX += stepInX ? stepX : 0;
        mapY += stepInX ? 0 : stepY;
        side = stepInX ? 0 : 1;
        
        // Bounds check
        if (mapX < 0 || mapY < 0 || mapX >= mapW || mapY >= mapH)
        {
            const float dist = side ? (sideDistY - deltaDistY) : (sideDistX - deltaDistX);
            return {dist, side, false, mapX, mapY, 0.0f};
        }

        // Wall check
        const uint8_t tile = tileMap[mapY][mapX];
        if (tile >= 0x01 && (tile < 0xF0 || tile > 0xF3))
            break;
    }
    
    const float dist = side ? (sideDistY - deltaDistY) : (sideDistX - deltaDistX);
    
    // Calculate exact hit position on wall for texture U coordinate
    float wallX;
    if (side == 0) // Vertical wall (hit on X side)
        wallX = posY + dist * rayDirY;
    else // Horizontal wall (hit on Y side)
        wallX = posX + dist * rayDirX;
    wallX -= std::floor(wallX); // Get fractional part [0..1]
    
    // Determine cardinal direction for megatexture lookup
    // side 0 = North/South walls (Y-aligned), side 1 = East/West walls (X-aligned)
    // Megatexture sides: 0=North, 1=East, 2=South, 3=West
    int cardinalSide;
    if (side == 0) // Vertical wall (stepped in X)
    {
        cardinalSide = (stepX > 0) ? 3 : 1; // Stepped right = hit west wall, stepped left = hit east wall
    }
    else // Horizontal wall (stepped in Y)
    {
        cardinalSide = (stepY > 0) ? 0 : 2; // Stepped down = hit north wall, stepped up = hit south wall
    }
    
    return {dist, cardinalSide, true, mapX, mapY, wallX};
}

// Render a column with vertical smoothing
void accumulateColumn(int x,
                      const RaycastHit &hit,
                      int screenH,
                      float halfW,
                      float halfH,
                      float maxRadius,
                      float torchRange,
                      std::vector<float> &acc_r,
                      std::vector<float> &acc_g,
                      std::vector<float> &acc_b)
{
    // Use cached config values (read once per frame, not per pixel)
    const float visualScale = g_rayConfig.visualScale;
    const float falloffMul = g_rayConfig.falloffMul;
    
    // Wall rendering parameters (only used if hitWall is true)
    float perpWallDist = 0.0f;
    float drawStart = 0.0f;
    float drawEnd = 0.0f;
    uint8_t wallR = 0, wallG = 0, wallB = 0;
    float lightFactor = 1.0f;
    
    if (hit.hitWall)
    {
        perpWallDist = std::max(hit.distance / visualScale, 0.01f);
        float lineHeight = static_cast<float>(screenH) / perpWallDist;
        drawStart = halfH - lineHeight / 2.0f;
        drawEnd = halfH + lineHeight / 2.0f;

        lightFactor = std::max(0.0f, 1.0f - hit.distance / torchRange);

    // Initialize fallback wall color (used when sampling fails per-pixel)
    // Uniform base color across all orientations; lighting varies by distance only.
    wallR = static_cast<uint8_t>(120 * lightFactor);
    wallG = static_cast<uint8_t>(120 * lightFactor);
    wallB = static_cast<uint8_t>(120 * lightFactor);
    }

    for (int y = 0; y < screenH; ++y)
    {
        float yf = static_cast<float>(y) + 0.5f; // Pixel center
        float dx = static_cast<float>(x) - halfW;
        float dy = yf - halfH;
        float screenDist = std::sqrt(dx * dx + dy * dy);
        // Use cached falloff value (was previously shadowed and read from config per-pixel)
        float screenFactor = std::max(0.0f, 1.0f - (screenDist / maxRadius) * falloffMul);

        // Ceiling gradient
        float ceilingShade = 120.0f * (1.0f - yf / halfH);
        ceilingShade = std::max(0.0f, std::min(255.0f, ceilingShade));

        // Floor gradient
        float floorRatio = (yf - halfH) / halfH;
        floorRatio = std::min(std::max(floorRatio, 0.0f), 1.0f);
        uint8_t floorR = static_cast<uint8_t>(90.0f * floorRatio);
        uint8_t floorG = static_cast<uint8_t>(70.0f * floorRatio);
        uint8_t floorB = static_cast<uint8_t>(50.0f * floorRatio);

        uint8_t rr, gg, bb;

        // If no wall hit, just render floor/ceiling
        if (!hit.hitWall)
        {
            if (yf < halfH)
            {
                // Ceiling
                rr = static_cast<uint8_t>(ceilingShade);
                gg = rr;
                bb = rr;
            }
            else
            {
                // Floor
                rr = floorR;
                gg = floorG;
                bb = floorB;
            }
        }
        else if (yf < drawStart)
        {
            // Pure ceiling
            rr = static_cast<uint8_t>(ceilingShade);
            gg = rr;
            bb = rr;
        }
        else if (yf > drawEnd)
        {
            // Pure floor
            rr = floorR;
            gg = floorG;
            bb = floorB;
        }
        else
        {
            // Wall with per-pixel megatexture sampling and edge blending
            float weight = 1.0f;
            
            // Compute per-pixel wall color from megatexture
            // Map screen y to [0..1] along the wall segment
            float v = (yf - drawStart) / std::max(1.0f, (drawEnd - drawStart));
            v = std::max(0.0f, std::min(1.0f, v));

            uint8_t wallR_px = wallR, wallG_px = wallG, wallB_px = wallB; // defaults
            {
                uint32_t texSample = sampleMegatexture(hit.mapX, hit.mapY, hit.side, hit.wallX, v);
                uint8_t texR = (texSample >> 0) & 0xFF;
                uint8_t texG = (texSample >> 8) & 0xFF;
                uint8_t texB = (texSample >> 16) & 0xFF;
                uint8_t texA = (texSample >> 24) & 0xFF;

                if (texA > 0)
                {
                    float alpha = texA / 255.0f;
                    const uint8_t base = 120; // same base tone for all walls
                    wallR_px = static_cast<uint8_t>((texR * alpha + base * (1.0f - alpha)) * lightFactor);
                    wallG_px = static_cast<uint8_t>((texG * alpha + base * (1.0f - alpha)) * lightFactor);
                    wallB_px = static_cast<uint8_t>((texB * alpha + base * (1.0f - alpha)) * lightFactor);
                }
                else
                {
                    const uint8_t base = 120;
                    wallR_px = static_cast<uint8_t>(base * lightFactor);
                    wallG_px = static_cast<uint8_t>(base * lightFactor);
                    wallB_px = static_cast<uint8_t>(base * lightFactor);
                }
            }
            if (yf < drawStart + 1.0f)
            {
                weight = (yf - drawStart) / 1.0f; // Blend over 1 pixel
                weight = std::max(0.0f, std::min(weight, 1.0f));
                rr = static_cast<uint8_t>((1.0f - weight) * ceilingShade + weight * wallR_px);
                gg = static_cast<uint8_t>((1.0f - weight) * ceilingShade + weight * wallG_px);
                bb = static_cast<uint8_t>((1.0f - weight) * ceilingShade + weight * wallB_px);
            }
            else if (yf > drawEnd - 1.0f)
            {
                weight = (drawEnd - yf) / 1.0f;
                weight = std::max(0.0f, std::min(weight, 1.0f));
                rr = static_cast<uint8_t>((1.0f - weight) * floorR + weight * wallR_px);
                gg = static_cast<uint8_t>((1.0f - weight) * floorG + weight * wallG_px);
                bb = static_cast<uint8_t>((1.0f - weight) * floorB + weight * wallB_px);
            }
            else
            {
                // Pure wall
                rr = wallR_px;
                gg = wallG_px;
                bb = wallB_px;
            }
        }

        float finalFactor = screenFactor;
        acc_r[y] += rr * finalFactor;
        acc_g[y] += gg * finalFactor;
        acc_b[y] += bb * finalFactor;
    }
}

// No on-framebuffer font: use window title for lightweight overlay info

// Draw a 2x2 square crosshair
void drawCrosshair(uint8_t *fb, size_t pitch, int w, int h)
{
    int cx = w / 2, cy = h / 2;
    for (int dy : {-1, 0})
    {
        for (int dx : {-1, 0})
        {
            int px = cx + dx, py = cy + dy;
            if (px >= 0 && px < w && py >= 0 && py < h)
            {
                size_t idx = static_cast<size_t>(py) * pitch + static_cast<size_t>(px) * 4;
                fb[idx] = 255;     // B
                fb[idx + 1] = 255; // G
                fb[idx + 2] = 255; // R
                fb[idx + 3] = 128; // A
            }
        }
    }
}

// Render a chunk of the screen with threading
// Uses thread-local accumulators to avoid per-column allocations
void renderChunk(const std::vector<std::vector<uint8_t>> &tileMap,
                 const RaycastPlayer &player,
                 uint8_t *framebuffer,
                 size_t pitch,
                 int screenWidth,
                 int screenHeight,
                 int supersample,
                 int startX,
                 int endX)
{
    const float halfWidth = screenWidth * 0.5f;
    const float halfHeight = screenHeight * 0.5f;
    const float maxRadius = std::sqrt(halfWidth * halfWidth + halfHeight * halfHeight);
    // Use cached config values
    const float torchRange = g_rayConfig.baseTorchRange * g_rayConfig.visualScale;
    const float fovMul = g_rayConfig.fovMul;
    const float fov = state.raycast.player.fov;

    // Thread-local accumulators - reuse across columns to avoid allocations
    thread_local std::vector<float> accumR, accumG, accumB;
    if (accumR.size() < static_cast<size_t>(screenHeight))
    {
        accumR.resize(screenHeight);
        accumG.resize(screenHeight);
        accumB.resize(screenHeight);
    }

    for (int x = startX; x < endX; ++x)
    {
        // Clear accumulators (faster than reallocating)
        std::fill_n(accumR.begin(), screenHeight, 0.0f);
        std::fill_n(accumG.begin(), screenHeight, 0.0f);
        std::fill_n(accumB.begin(), screenHeight, 0.0f);
        
        for (int sampleIdx = 0; sampleIdx < supersample; ++sampleIdx)
        {
            float camX = 2.0f * (x + (sampleIdx + 0.5f) / supersample) / screenWidth - 1.0f;
            float rayAngle = player.angle + camX * (fov * 0.5f * fovMul);
            float rayDirX = std::cos(rayAngle);
            float rayDirY = std::sin(rayAngle);
            RaycastHit hit = castRay(tileMap, player.x, player.y, rayDirX, rayDirY);
            accumulateColumn(x, hit, screenHeight, halfWidth, halfHeight, maxRadius, torchRange, accumR, accumG, accumB);
        }
        // No mutex needed - each thread writes to distinct columns, no overlap
        const float invSS = 1.0f / supersample;
        for (int y = 0; y < screenHeight; ++y)
        {
            size_t idx = static_cast<size_t>(y) * pitch + static_cast<size_t>(x) * 4;
            framebuffer[idx] = static_cast<uint8_t>(std::min(accumB[y] * invSS, 255.0f));     // Blue
            framebuffer[idx + 1] = static_cast<uint8_t>(std::min(accumG[y] * invSS, 255.0f)); // Green
            framebuffer[idx + 2] = static_cast<uint8_t>(std::min(accumR[y] * invSS, 255.0f)); // Red
            framebuffer[idx + 3] = 255;                                                       // Alpha
        }
    }
}

// Main raycast rendering function
void renderRaycastView(const std::vector<std::vector<uint8_t>> &tileMap,
                       const RaycastPlayer &p,
                       uint8_t *fb,
                       size_t pitch,
                       int w,
                       int h)
{
    if (tileMap.empty() || tileMap[0].empty())
        return;
    
    // Cache config values once per frame (not per pixel)
    cacheConfigValues();
    
    const int ss = g_rayConfig.supersample;
    const int nThreads = static_cast<int>(std::thread::hardware_concurrency());
    const int chunk = w / nThreads;
    std::vector<std::jthread> threads;
    threads.reserve(nThreads);
    
    for (int i = 0; i < nThreads; ++i)
    {
        int s = i * chunk;
        int e = (i + 1 == nThreads) ? w : s + chunk;
        threads.emplace_back([&tileMap, &p, fb, pitch, w, h, ss, s, e]
                             { renderChunk(tileMap, p, fb, pitch, w, h, ss, s, e); });
    }
    // Wait for threads to finish
    threads.clear(); // Joins all threads
    drawCrosshair(fb, pitch, w, h);

    // Lightweight overlay via window title (avoids console/files)
#ifdef _WIN32
    {
        // Use cached config values
        const float fov = state.raycast.player.fov * g_rayConfig.fovMul;
        // Center ray cast
        RaycastHit centerHit = castRay(*state.raycast.map, state.raycast.player.x, state.raycast.player.y,
                                       std::cos(state.raycast.player.angle), std::sin(state.raycast.player.angle));
        float dist = std::max(centerHit.distance, 0.001f);
        float lineHeight = static_cast<float>(h) / std::max(dist / g_rayConfig.visualScale, 0.01f);
        // Small-angle approx for projected width of a 1-unit wall centered at distance dist
        float angularWidth = 2.0f * std::atan(0.5f / dist);
        float widthPixels = static_cast<float>(w) * (angularWidth / std::max(fov, 0.001f));
        float recommendedUnits = (widthPixels > 0.0f) ? (lineHeight / widthPixels) : 1.0f;

        std::string title = "v64tng  |  Edges: " + std::to_string(static_cast<int>(megatex.edges.size())) +
                            "  Tiles: " + std::to_string(static_cast<int>(megatex.tileCount)) +
                            (megatex.loaded ? " loaded" : " not loaded") +
                            "  WH: 3.0  RecWH: " + std::to_string(recommendedUnits);
        SetWindowTextA(g_hwnd, title.c_str());
    }
#endif
}

// Mouse handling for raycast mode
void handleRaycastMouseMove()
{
    if (!state.raycast.enabled)
        return;

    POINT cursorPos;
    if (!GetCursorPos(&cursorPos))
        return;

    RECT clientRect;
    if (!GetClientRect(g_hwnd, &clientRect))
        return;

    POINT clientCenter = {
        (clientRect.right - clientRect.left) / 2,
        (clientRect.bottom - clientRect.top) / 2};

    if (!ClientToScreen(g_hwnd, &clientCenter))
        return;

    // Calculate mouse delta from the center
    int deltaX = cursorPos.x - clientCenter.x;
    int deltaY = cursorPos.y - clientCenter.y;

    if (deltaX != 0 || deltaY != 0)
    {
        float sensitivity = (config["mlookSensitivity"].get<float>() / 50.0f) * 0.005f;
        state.raycast.player.angle += deltaX * sensitivity;

        // Normalize angle to [0, 2π) using branchless std::fmod
        state.raycast.player.angle = normalizeAngle(state.raycast.player.angle);

        // Reset cursor to center immediately
        SetCursorPos(clientCenter.x, clientCenter.y);

        state.frameTiming.dirtyFrame = true;
    }
}

// Keyboard input handling
void raycastKeyDown(WPARAM k)
{
    if (k < 256)
        g_keys[k] = true;
}
void raycastKeyUp(WPARAM k)
{
    if (k < 256)
        g_keys[k] = false;
}

//
// Update raycaster movement based on keyboard input
//
void updateRaycasterMovement()
{
    if (!state.raycast.enabled)
        return;

    static std::chrono::steady_clock::time_point lastRaycastUpdate = std::chrono::steady_clock::now();
    auto currentTime = std::chrono::steady_clock::now();
    auto elapsedTime = currentTime - lastRaycastUpdate;
    auto frameDuration = std::chrono::microseconds(static_cast<long long>(1000000.0 / state.frameTiming.currentFPS));

    if (elapsedTime < frameDuration)
        return; // Not enough time has passed

    if (!state.raycast.map || state.raycast.map->empty())
        return;

    int mapW = state.raycast.map->at(0).size(), mapH = state.raycast.map->size();
    float x = state.raycast.player.x, y = state.raycast.player.y, angle = state.raycast.player.angle;
    float speed = g_keys[VK_SHIFT] ? state.raycast.player.runSpeed : state.raycast.player.walkSpeed;
    float dx = 0, dy = 0;

    if (g_keys['W'] || g_keys[VK_UP])
    {
        dx += std::cos(angle) * speed;
        dy += std::sin(angle) * speed;
    }
    if (g_keys['S'] || g_keys[VK_DOWN])
    {
        dx -= std::cos(angle) * speed;
        dy -= std::sin(angle) * speed;
    }
    if (g_keys['A'] || g_keys[VK_LEFT])
    {
        dx += std::sin(angle) * speed;
        dy -= std::cos(angle) * speed;
    }
    if (g_keys['D'] || g_keys[VK_RIGHT])
    {
        dx -= std::sin(angle) * speed;
        dy += std::cos(angle) * speed;
    }

    if (dx || dy)
    {
        // Player collision radius to prevent getting too close to walls
        const float COLLISION_RADIUS = 0.3f;

        float newX = x + dx;
        float newY = y + dy;

        // Consistent wall test with raycaster: treat 0xF0-0xF3 as non-blocking
        auto isWallAt = [&](int cx, int cy) -> bool
        {
            if (cx < 0 || cy < 0 || cx >= mapW || cy >= mapH)
                return true; // Out of bounds is solid
            uint8_t t = state.raycast.map->at(cy)[cx];
            return (t >= 0x01 && (t < 0xF0 || t > 0xF3));
        };

        // Check X movement with collision buffer
        bool canMoveX = true;
        int checkX = static_cast<int>(newX);
        int checkY = static_cast<int>(y);

        if (dx > 0) // Moving right
        {
            float rightEdge = newX + COLLISION_RADIUS;
            int rightCell = static_cast<int>(rightEdge);
            if (rightCell >= mapW || (rightCell >= 0 && checkY >= 0 && checkY < mapH &&
                                      isWallAt(rightCell, checkY)))
                canMoveX = false;
        }
        else if (dx < 0) // Moving left
        {
            float leftEdge = newX - COLLISION_RADIUS;
            int leftCell = static_cast<int>(leftEdge);
            if (leftCell < 0 || (leftCell < mapW && checkY >= 0 && checkY < mapH &&
                                 isWallAt(leftCell, checkY)))
                canMoveX = false;
        }

        // Check Y movement with collision buffer
        bool canMoveY = true;
        checkX = static_cast<int>(x);
        checkY = static_cast<int>(newY);

        if (dy > 0) // Moving down
        {
            float bottomEdge = newY + COLLISION_RADIUS;
            int bottomCell = static_cast<int>(bottomEdge);
            if (bottomCell >= mapH || (bottomCell >= 0 && checkX >= 0 && checkX < mapW &&
                                       isWallAt(checkX, bottomCell)))
                canMoveY = false;
        }
        else if (dy < 0) // Moving up
        {
            float topEdge = newY - COLLISION_RADIUS;
            int topCell = static_cast<int>(topEdge);
            if (topCell < 0 || (topCell < mapH && checkX >= 0 && checkX < mapW &&
                                isWallAt(checkX, topCell)))
                canMoveY = false;
        }

        // Apply movement
        if (canMoveX)
            state.raycast.player.x = newX;
        if (canMoveY)
            state.raycast.player.y = newY;

        state.frameTiming.dirtyFrame = true;
    }

    lastRaycastUpdate = currentTime;
}

/*
===============================================================================
Function Name: initRaycaster

Description:
        - Initializes the raycaster with default player position and settings.
        - Sets the field of view based on configuration.
===============================================================================
*/
void initRaycaster()
{
    state.raycast.enabled = true;
    state.raycast.map = &map;
    state.frameTiming.currentFPS = 60.0;
    float fovDeg = config.contains("raycastFov") ? static_cast<float>(config["raycastFov"]) : 90.0f;
    state.raycast.player.fov = deg2rad(fovDeg);

    // Hide the OS cursor in raycast mode to avoid visible system pointer
    ShowCursor(FALSE);

    // Ensure megatexture is ready (avoid duplicate heavy work if main already did it)
    if (megatex.edges.empty())
    {
        analyzeMapEdges(map);
    }
    if (!megatex.loaded)
    {
        // Try current working dir MTX as a generic fallback
        loadMTX("megatexture.mtx");
    }

    if (!initializePlayerFromMap(*state.raycast.map, state.raycast.player))
    {
#ifdef _WIN32
        MessageBoxA(nullptr, "No player start position found in the map!", "Error", MB_ICONERROR | MB_OK);
#endif
    }

    state.animation.reset();
    state.transient_animation.reset();
}