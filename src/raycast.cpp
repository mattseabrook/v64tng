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
RaycastHit castRay(const std::vector<std::vector<uint8_t>> &tileMap,
                   float posX,
                   float posY,
                   float rayDirX,
                   float rayDirY)
{
    int mapW = tileMap[0].size(), mapH = tileMap.size();
    int mapX = static_cast<int>(posX + 0.5f), mapY = static_cast<int>(posY + 0.5f);
    float deltaDistX = std::abs(1.0f / rayDirX), deltaDistY = std::abs(1.0f / rayDirY);
    float sideDistX, sideDistY;
    int stepX, stepY, side = 0;

    stepX = rayDirX < 0 ? (sideDistX = (posX - mapX) * deltaDistX, -1) : (sideDistX = (mapX + 1.0f - posX) * deltaDistX, 1);
    stepY = rayDirY < 0 ? (sideDistY = (posY - mapY) * deltaDistY, -1) : (sideDistY = (mapY + 1.0f - posY) * deltaDistY, 1);

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
                fb[idx] = 0;       // B
                fb[idx + 1] = 0;   // G
                fb[idx + 2] = 255; // R
                fb[idx + 3] = 255; // A
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
    static POINT lastPos{0, 0};
    static bool firstMove = true;
    POINT currentPos;
    GetCursorPos(&currentPos);
    ScreenToClient(g_hwnd, &currentPos);

    if (firstMove)
    {
        lastPos = currentPos;
        firstMove = false;
        return;
    }

    int deltaX = currentPos.x - lastPos.x;
    float mlookSensitivity = config.contains("mlookSensitivity") ? static_cast<float>(config["mlookSensitivity"]) : 50.0f;
    float sensitivity = 0.001f * (mlookSensitivity / 50.0f); // Reduced sensitivity
    state.raycast.player.angle += deltaX * sensitivity;
    state.raycast.player.angle = std::fmodf(state.raycast.player.angle, 2.0f * 3.14159265f);
    if (state.raycast.player.angle < 0) // Keep angle positive
        state.raycast.player.angle += 2.0f * 3.14159265f;

    // Reset cursor to center
    POINT center{state.ui.width / 2, state.ui.height / 2};
    ClientToScreen(g_hwnd, &center);
    SetCursorPos(center.x, center.y);
    ScreenToClient(g_hwnd, &center); // Convert back to client coords
    lastPos = center;
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

// Update player movement
void updateRaycasterMovement()
{
    if (!state.raycast.enabled || !state.raycast.map || state.raycast.map->empty())
        return;
    int mapW = state.raycast.map->at(0).size(), mapH = state.raycast.map->size();
    float x = state.raycast.player.x, y = state.raycast.player.y, angle = state.raycast.player.angle;
    float speed = g_keys[VK_SHIFT] ? 0.3f : 0.21f;
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
        dx += std::cos(angle - 1.5708f) * speed;
        dy += std::sin(angle - 1.5708f) * speed;
    }
    if (g_keys['D'] || g_keys[VK_RIGHT])
    {
        dx += std::cos(angle + 1.5708f) * speed;
        dy += std::sin(angle + 1.5708f) * speed;
    }
    if (dx || dy)
    {
        float nx = x + dx;
        int mx = static_cast<int>(nx + 0.5f), my = static_cast<int>(y + 0.5f);
        if (mx >= 0 && mx < mapW && my >= 0 && my < mapH && !(*state.raycast.map)[my][mx])
            state.raycast.player.x = nx;
        float ny = y + dy;
        mx = static_cast<int>(state.raycast.player.x + 0.5f);
        my = static_cast<int>(ny + 0.5f);
        if (mx >= 0 && mx < mapW && my >= 0 && my < mapH && !(*state.raycast.map)[my][mx])
            state.raycast.player.y = ny;
    }
    renderFrame();
}