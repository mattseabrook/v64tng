// raycast.cpp

#include <cmath>
#include <algorithm>
#include <thread>
#include <vector>
#include <mutex>

#include "raycast.h"
#include "window.h"
#include "game.h"
#include "basement.h"

#ifdef WIN32
#undef min
#undef max
#endif

// Local state for raycasting
bool g_keys[256] = {false};
std::mutex mutex;

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

// Cast ray with DDA algorithm
RaycastHit castRay(const std::vector<std::vector<uint8_t>> &tileMap,
                   float posX,
                   float posY,
                   float rayDirX,
                   float rayDirY)
{
    int mapW = tileMap[0].size(), mapH = tileMap.size();
    int mapX = static_cast<int>(posX), mapY = static_cast<int>(posY);
    float deltaDistX = std::abs(1.0f / rayDirX), deltaDistY = std::abs(1.0f / rayDirY);
    float sideDistX, sideDistY;
    int stepX, stepY, side = 0;

    // Fixed DDA initialization
    if (rayDirX < 0)
    {
        stepX = -1;
        sideDistX = (posX - mapX) * deltaDistX;
    }
    else
    {
        stepX = 1;
        sideDistX = (mapX + 1.0f - posX) * deltaDistX;
    }

    if (rayDirY < 0)
    {
        stepY = -1;
        sideDistY = (posY - mapY) * deltaDistY;
    }
    else
    {
        stepY = 1;
        sideDistY = (mapY + 1.0f - posY) * deltaDistY;
    }

    while (true)
    {
        if (sideDistX < sideDistY)
        {
            sideDistX += deltaDistX;
            mapX += stepX;
            side = 0;
        }
        else
        {
            sideDistY += deltaDistY;
            mapY += stepY;
            side = 1;
        }
        if (mapX < 0 || mapY < 0 || mapX >= mapW || mapY >= mapH)
            return {32.0f, side};

        // Check for walls
        uint8_t tile = tileMap[mapY][mapX];
        if (tile >= 0x01 && (tile < 0xF0 || tile > 0xF3))
            break;
    }
    return {side ? sideDistY - deltaDistY : sideDistX - deltaDistX, side};
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
    // Visual scale: shrink perceived distances to make spaces feel less cavernous
    float visualScale = config.contains("raycastScale") ? static_cast<float>(config["raycastScale"]) : 3.0f;
    float perpWallDist = std::max(hit.distance / visualScale, 0.01f);
    float lineHeight = static_cast<float>(screenH) / perpWallDist;
    float drawStart = halfH - lineHeight / 2.0f;
    float drawEnd = halfH + lineHeight / 2.0f;

    // Wall color based on side
    uint8_t r = hit.side ? 64 : 120;
    uint8_t g = hit.side ? 64 : 120;
    uint8_t b = hit.side ? 64 : 120;

    float lightFactor = std::max(0.0f, 1.0f - hit.distance / torchRange);

    for (int y = 0; y < screenH; ++y)
    {
        float yf = static_cast<float>(y) + 0.5f; // Pixel center
        float dx = static_cast<float>(x) - halfW;
        float dy = yf - halfH;
        float screenDist = std::sqrt(dx * dx + dy * dy);
        // Slightly reduce radial falloff so shrunken spaces still read well
        float falloffScale = config.contains("raycastFalloffMul") ? static_cast<float>(config["raycastFalloffMul"]) : 0.85f;
        float screenFactor = std::max(0.0f, 1.0f - (screenDist / maxRadius) * falloffScale);

        // Ceiling gradient
        float ceilingShade = 120.0f * (1.0f - yf / halfH);
        ceilingShade = std::max(0.0f, std::min(255.0f, ceilingShade));

        // Floor gradient
        float floorRatio = (yf - halfH) / halfH;
        floorRatio = std::min(std::max(floorRatio, 0.0f), 1.0f);
        uint8_t floorR = static_cast<uint8_t>(90.0f * floorRatio);
        uint8_t floorG = static_cast<uint8_t>(70.0f * floorRatio);
        uint8_t floorB = static_cast<uint8_t>(50.0f * floorRatio);

        // Wall color with lighting
        uint8_t wallR = static_cast<uint8_t>(r * lightFactor);
        uint8_t wallG = static_cast<uint8_t>(g * lightFactor);
        uint8_t wallB = static_cast<uint8_t>(b * lightFactor);

        uint8_t rr, gg, bb;

        if (yf < drawStart)
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
            // Wall with edge blending
            float weight = 1.0f;
            if (yf < drawStart + 1.0f)
            {
                weight = (yf - drawStart) / 1.0f; // Blend over 1 pixel
                weight = std::max(0.0f, std::min(weight, 1.0f));
                rr = static_cast<uint8_t>((1.0f - weight) * ceilingShade + weight * wallR);
                gg = static_cast<uint8_t>((1.0f - weight) * ceilingShade + weight * wallG);
                bb = static_cast<uint8_t>((1.0f - weight) * ceilingShade + weight * wallB);
            }
            else if (yf > drawEnd - 1.0f)
            {
                weight = (drawEnd - yf) / 1.0f;
                weight = std::max(0.0f, std::min(weight, 1.0f));
                rr = static_cast<uint8_t>((1.0f - weight) * floorR + weight * wallR);
                gg = static_cast<uint8_t>((1.0f - weight) * floorG + weight * wallG);
                bb = static_cast<uint8_t>((1.0f - weight) * floorB + weight * wallB);
            }
            else
            {
                // Pure wall
                rr = wallR;
                gg = wallG;
                bb = wallB;
            }
        }

        float finalFactor = screenFactor;
        acc_r[y] += rr * finalFactor;
        acc_g[y] += gg * finalFactor;
        acc_b[y] += bb * finalFactor;
    }
}

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
    float halfWidth = screenWidth * 0.5f;
    float halfHeight = screenHeight * 0.5f;
    float maxRadius = std::sqrt(halfWidth * halfWidth + halfHeight * halfHeight);
    // Increase torch range proportionally to visual scale so lighting feels consistent
    float baseTorchRange = 16.0f;
    float visualScale = config.contains("raycastScale") ? static_cast<float>(config["raycastScale"]) : 3.0f;
    float torchRange = baseTorchRange * visualScale;

    for (int x = startX; x < endX; ++x)
    {
        std::vector<float> accumR(screenHeight, 0.0f), accumG(screenHeight, 0.0f), accumB(screenHeight, 0.0f);
        for (int sampleIdx = 0; sampleIdx < supersample; ++sampleIdx)
        {
            float camX = 2.0f * (x + (sampleIdx + 0.5f) / supersample) / screenWidth - 1.0f;
            float fov = state.raycast.player.fov;
            // Optional FOV multiplier for stylistic tuning (defaults to 1.0)
            float fovMul = config.contains("raycastFovMul") ? static_cast<float>(config["raycastFovMul"]) : 1.0f;
            float rayAngle = player.angle + camX * (fov * 0.5f * fovMul);
            float rayDirX = std::cos(rayAngle);
            float rayDirY = std::sin(rayAngle);
            RaycastHit hit = castRay(tileMap, player.x, player.y, rayDirX, rayDirY);
            // hit.distance *= std::cos(rayAngle - player.angle); // Fisheye correction
            accumulateColumn(x, hit, screenHeight, halfWidth, halfHeight, maxRadius, torchRange, accumR, accumG, accumB);
        }
        std::lock_guard lock(mutex);
        for (int y = 0; y < screenHeight; ++y)
        {
            size_t idx = static_cast<size_t>(y) * pitch + static_cast<size_t>(x) * 4;
            framebuffer[idx] = static_cast<uint8_t>(std::min(accumB[y] / supersample, 255.0f));     // Blue
            framebuffer[idx + 1] = static_cast<uint8_t>(std::min(accumG[y] / supersample, 255.0f)); // Green
            framebuffer[idx + 2] = static_cast<uint8_t>(std::min(accumR[y] / supersample, 255.0f)); // Red
            framebuffer[idx + 3] = 255;                                                             // Alpha
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
    int ss = config["raycastSupersample"].get<int>();
    int nThreads = std::thread::hardware_concurrency();
    int chunk = w / nThreads;
    std::vector<std::jthread> threads;
    for (int i = 0; i < nThreads; ++i)
    {
        int s = i * chunk;
        int e = (i + 1 == nThreads) ? w : s + chunk;
        threads.emplace_back([=, &tileMap, &p, &fb]
                             { renderChunk(tileMap, p, fb, pitch, w, h, ss, s, e); });
    }
    // Wait for threads to finish
    threads.clear(); // Joins all threads
    drawCrosshair(fb, pitch, w, h);
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

        // Normalize angle to [0, 2π]
        while (state.raycast.player.angle >= 2.0f * 3.14159265f)
            state.raycast.player.angle -= 2.0f * 3.14159265f;
        while (state.raycast.player.angle < 0.0f)
            state.raycast.player.angle += 2.0f * 3.14159265f;

        // Reset cursor to center immediately
        SetCursorPos(clientCenter.x, clientCenter.y);

        state.dirtyFrame = true;
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
    auto frameDuration = std::chrono::microseconds(static_cast<long long>(1000000.0 / state.currentFPS));

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

        state.dirtyFrame = true;
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
    state.currentFPS = 60.0;
    float fovDeg = config.contains("raycastFov") ? static_cast<float>(config["raycastFov"]) : 90.0f;
    state.raycast.player.fov = deg2rad(fovDeg);

    // Hide the OS cursor in raycast mode to avoid visible system pointer
    // Ensure we decrement until the display count indicates hidden
    while (ShowCursor(FALSE) >= 0)
        ;

    if (!initializePlayerFromMap(*state.raycast.map, state.raycast.player))
    {
#ifdef _WIN32
        MessageBoxA(nullptr, "No player start position found in the map!", "Error", MB_ICONERROR | MB_OK);
#endif
    }

    state.animation.reset();
    state.transient_animation.reset();
}