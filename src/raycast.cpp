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

// Cast ray with DDA algorithm
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
        if (tileMap[mapY][mapX])
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
    float perpWallDist = std::max(hit.distance, 0.01f);
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
        float screenFactor = std::max(0.0f, 1.0f - screenDist / maxRadius);

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
void drawCrosshair(uint8_t *fb, int w, int h)
{
    int cx = w / 2, cy = h / 2;
    for (int dy : {-1, 0})
    {
        for (int dx : {-1, 0})
        {
            int px = cx + dx, py = cy + dy;
            if (px >= 0 && px < w && py >= 0 && py < h)
            {
                int idx = (py * w + px) * 4;
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
                 int screenWidth,
                 int screenHeight,
                 int supersample,
                 int startX,
                 int endX)
{
    float halfWidth = screenWidth * 0.5f;
    float halfHeight = screenHeight * 0.5f;
    float maxRadius = std::sqrt(halfWidth * halfWidth + halfHeight * halfHeight);
    float torchRange = 16.0f;

    for (int x = startX; x < endX; ++x)
    {
        std::vector<float> accumR(screenHeight, 0.0f), accumG(screenHeight, 0.0f), accumB(screenHeight, 0.0f);
        for (int sampleIdx = 0; sampleIdx < supersample; ++sampleIdx)
        {
            float camX = 2.0f * (x + (sampleIdx + 0.5f) / supersample) / screenWidth - 1.0f;
            float rayAngle = player.angle + camX * (state.raycast.player.fov / 2.0f);
            float rayDirX = std::cos(rayAngle);
            float rayDirY = std::sin(rayAngle);
            RaycastHit hit = castRay(tileMap, player.x, player.y, rayDirX, rayDirY);
            // hit.distance *= std::cos(rayAngle - player.angle); // Fisheye correction
            accumulateColumn(x, hit, screenHeight, halfWidth, halfHeight, maxRadius, torchRange, accumR, accumG, accumB);
        }
        std::lock_guard lock(mutex);
        for (int y = 0; y < screenHeight; ++y)
        {
            int idx = (y * screenWidth + x) * 4;
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
                       int w,
                       int h,
                       int ss)
{
    if (tileMap.empty() || tileMap[0].empty())
        return;
    int nThreads = std::thread::hardware_concurrency();
    int chunk = w / nThreads;
    std::vector<std::jthread> threads;
    for (int i = 0; i < nThreads; ++i)
    {
        int s = i * chunk;
        int e = (i + 1 == nThreads) ? w : s + chunk;
        threads.emplace_back([=, &tileMap, &p, &fb]
                             { renderChunk(tileMap, p, fb, w, h, ss, s, e); });
    }
    // Wait for threads to finish
    threads.clear(); // Joins all threads
    drawCrosshair(fb, w, h);
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

    // Calculate mouse delta
    int deltaX = cursorPos.x - clientCenter.x;
    int deltaY = cursorPos.y - clientCenter.y;

    // Only process if there's actual movement
    if (deltaX != 0 || deltaY != 0)
    {
        // ONLY CHANGE: Increased base sensitivity from 0.001f to 0.003f
        float sensitivity = (config["mlookSensitivity"].get<float>() / 100.0f) * 0.003f;

        // Apply mouse delta to player angle
        state.raycast.player.angle += deltaX * sensitivity;

        // Normalize angle to [0, 2π]
        while (state.raycast.player.angle >= 2.0f * 3.14159265f)
            state.raycast.player.angle -= 2.0f * 3.14159265f;
        while (state.raycast.player.angle < 0.0f)
            state.raycast.player.angle += 2.0f * 3.14159265f;

        // Reset cursor to center
        SetCursorPos(clientCenter.x, clientCenter.y);

        // Trigger a render update
        renderFrame();
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

// Update player movement - REVERTED TO ORIGINAL WORKING VERSION
void updateRaycasterMovement()
{
    if (!state.raycast.enabled || !state.raycast.map || state.raycast.map->empty())
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

        // Check X movement with collision buffer
        bool canMoveX = true;
        int checkX = static_cast<int>(newX);
        int checkY = static_cast<int>(y);

        if (dx > 0) // Moving right
        {
            float rightEdge = newX + COLLISION_RADIUS;
            int rightCell = static_cast<int>(rightEdge);
            if (rightCell >= mapW || (rightCell >= 0 && checkY >= 0 && checkY < mapH &&
                                      state.raycast.map->at(checkY)[rightCell]))
                canMoveX = false;
        }
        else if (dx < 0) // Moving left
        {
            float leftEdge = newX - COLLISION_RADIUS;
            int leftCell = static_cast<int>(leftEdge);
            if (leftCell < 0 || (leftCell < mapW && checkY >= 0 && checkY < mapH &&
                                 state.raycast.map->at(checkY)[leftCell]))
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
                                       state.raycast.map->at(bottomCell)[checkX]))
                canMoveY = false;
        }
        else if (dy < 0) // Moving up
        {
            float topEdge = newY - COLLISION_RADIUS;
            int topCell = static_cast<int>(topEdge);
            if (topCell < 0 || (topCell < mapH && checkX >= 0 && checkX < mapW &&
                                state.raycast.map->at(topCell)[checkX]))
                canMoveY = false;
        }

        // Apply movement
        if (canMoveX)
            state.raycast.player.x = newX;
        if (canMoveY)
            state.raycast.player.y = newY;
    }

    renderFrame();
}