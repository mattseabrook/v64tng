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
RaycastHit castRay(const auto &map, float posX, float posY, float rayDirX, float rayDirY)
{
    int mapW = map[0].size(), mapH = map.size();
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
        if (map[mapY][mapX])
            break;
    }
    return {side ? sideDistY - deltaDistY : sideDistX - deltaDistX, side};
}

// Render a column with vertical smoothing
void accumulateColumn(int x,
                      const RaycastHit &hit,
                      int screenW,
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
void renderChunk(const auto &map, const RaycastPlayer &p, uint8_t *fb, int w, int h, int ss, int startX, int endX)
{
    float halfW = w * 0.5f, halfH = h * 0.5f;
    float maxRadius = std::sqrt(halfW * halfW + halfH * halfH);
    float torchRange = 16.0f;

    for (int x = startX; x < endX; ++x)
    {
        std::vector<float> acc_r(h, 0.0f), acc_g(h, 0.0f), acc_b(h, 0.0f);
        for (int s = 0; s < ss; ++s)
        {
            float camX = 2.0f * (x + (s + 0.5f) / ss) / w - 1.0f;
            float angle = p.angle + camX * (p.fov / 2.0f);
            float rayDirX = std::cos(angle), rayDirY = std::sin(angle);
            RaycastHit hit = castRay(map, p.x, p.y, rayDirX, rayDirY);
            hit.distance *= std::cos(angle - p.angle); // Fisheye correction
            accumulateColumn(x, hit, w, h, halfW, halfH, maxRadius, torchRange, acc_r, acc_g, acc_b);
        }
        std::lock_guard lock(mutex);
        for (int y = 0; y < h; ++y)
        {
            int idx = (y * w + x) * 4;
            fb[idx] = static_cast<uint8_t>(std::min(acc_b[y] / ss, 255.0f));     // B
            fb[idx + 1] = static_cast<uint8_t>(std::min(acc_g[y] / ss, 255.0f)); // G
            fb[idx + 2] = static_cast<uint8_t>(std::min(acc_r[y] / ss, 255.0f)); // R
            fb[idx + 3] = 255;                                                   // A
        }
    }
}

// Main raycast rendering function
void renderRaycastView(const auto &map,
                       const RaycastPlayer &p,
                       uint8_t *fb,
                       int w,
                       int h,
                       int ss)
{
    if (map.empty() || map[0].empty())
        return;
    int nThreads = std::thread::hardware_concurrency();
    int chunk = w / nThreads;
    std::vector<std::jthread> threads;
    for (int i = 0; i < nThreads; ++i)
    {
        int s = i * chunk;
        int e = (i + 1 == nThreads) ? w : s + chunk;
        threads.emplace_back([=, &map, &p, &fb]
                             { renderChunk(map, p, fb, w, h, ss, s, e); });
    }
    // Wait for threads to finish
    threads.clear(); // Joins all threads
    drawCrosshair(fb, w, h);
}

// Mouse handling for raycast mode
void handleRaycastMouseMove()
{
    static POINT last{0, 0};
    static bool first = true;
    POINT pt;
    GetCursorPos(&pt);
    ScreenToClient(g_hwnd, &pt);
    if (first)
    {
        last = pt;
        first = false;
        return;
    }
    float sens = 0.005f * (config.contains("mlookSensitivity") ? static_cast<int>(config["mlookSensitivity"]) : 50) / 50.0f;
    state.raycast.player.angle = std::fmodf(state.raycast.player.angle + (pt.x - last.x) * sens + 2.0f * 3.14159265f, 2.0f * 3.14159265f);
    POINT center{state.ui.width / 2, state.ui.height / 2};
    ClientToScreen(g_hwnd, &center);
    SetCursorPos(center.x, center.y);
    last = center;
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