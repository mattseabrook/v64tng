// raycast.cpp

#include <cmath>
#include <algorithm>

#include "raycast.h"
#include "window.h"
#undef min
#undef max
#include "game.h"
#include "basement.h"

// Local Data
struct RaycastHit
{
    float distance;
    int side;
};

static bool g_keys[256] = {false};

//
// Cast a single ray into the map using DDA algorithm
//
static RaycastHit castRay(const std::vector<std::vector<uint8_t>> &map,
                          float posX,
                          float posY,
                          float rayDirX,
                          float rayDirY)
{
    int mapW = static_cast<int>(map[0].size());
    int mapH = static_cast<int>(map.size());

    int mapX = static_cast<int>(posX + 0.5f);
    int mapY = static_cast<int>(posY + 0.5f);

    float deltaDistX = std::abs(1.0f / rayDirX);
    float deltaDistY = std::abs(1.0f / rayDirY);

    float sideDistX;
    float sideDistY;
    int stepX;
    int stepY;
    int side = 0;

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

    bool hit = false;
    while (!hit)
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
            break;
        if (map[mapY][mapX] > 0)
            hit = true;
    }

    float dist;
    if (hit)
        dist = (side == 0) ? (sideDistX - deltaDistX) : (sideDistY - deltaDistY);
    else
        dist = 32.0f; // Fallback distance

    return {dist, side};
}

//
// Accumulate lighting for a single column
//
static void accumulateColumn(int x,
                             const RaycastHit &hit,
                             int screenW,
                             int screenH,
                             float halfW,
                             float halfH,
                             float maxScreenRadius,
                             float torchRange,
                             std::vector<float> &acc_r,
                             std::vector<float> &acc_g,
                             std::vector<float> &acc_b)
{
    int lineHeight = static_cast<int>(screenH / std::max(hit.distance, 0.01f));
    int drawStart = std::max(0, screenH / 2 - lineHeight / 2);
    int drawEnd = std::min(screenH - 1, screenH / 2 + lineHeight / 2);

    uint8_t r = hit.side ? 64 : 120;
    uint8_t g = hit.side ? 64 : 120;
    uint8_t b = hit.side ? 64 : 120;

    float lightFactor = std::max(0.0f, 1.0f - hit.distance / torchRange);

    for (int y = 0; y < screenH; ++y)
    {
        float dx = static_cast<float>(x) - halfW;
        float dy = static_cast<float>(y) - halfH;
        float screenDist = std::sqrt(dx * dx + dy * dy);
        float screenFactor = std::max(0.0f, 1.0f - screenDist / maxScreenRadius);

        uint8_t rr, gg, bb;
        if (y < drawStart)
        {
            float ratio = static_cast<float>(y) / (screenH * 0.5f);
            ratio = std::min(ratio, 1.0f);
            uint8_t shade = static_cast<uint8_t>(120.0f * (1.0f - ratio));
            rr = shade;
            gg = shade;
            bb = shade;
        }
        else if (y <= drawEnd)
        {
            rr = static_cast<uint8_t>(r * lightFactor);
            gg = static_cast<uint8_t>(g * lightFactor);
            bb = static_cast<uint8_t>(b * lightFactor);
        }
        else
        {
            float ratio = static_cast<float>(y - screenH * 0.5f) / (screenH * 0.5f);
            ratio = (std::min)((std::max)(ratio, 0.0f), 1.0f);
            rr = static_cast<uint8_t>(50.0f * ratio);
            gg = static_cast<uint8_t>(70.0f * ratio);
            bb = static_cast<uint8_t>(90.0f * ratio);
        }

        float finalFactor = screenFactor;
        acc_r[y] += rr * finalFactor;
        acc_g[y] += gg * finalFactor;
        acc_b[y] += bb * finalFactor;
    }
}

//
// Crosshair drawing function
//
static void drawCrosshair(uint8_t *framebuffer, int screenW, int screenH)
{
    int cx = screenW / 2;
    int cy = screenH / 2;
    for (int dy = -1; dy <= 0; ++dy)
    {
        for (int dx = -1; dx <= 0; ++dx)
        {
            int px = cx + dx;
            int py = cy + dy;
            if (px < 0 || py < 0 || px >= screenW || py >= screenH)
                continue;
            int index = (py * screenW + px) * 4;
            framebuffer[index + 0] = 0;   // B
            framebuffer[index + 1] = 0;   // G
            framebuffer[index + 2] = 255; // R
            framebuffer[index + 3] = 255; // A
        }
    }
}

//
// Function to render the raycast view
//
void renderRaycastView(const std::vector<std::vector<uint8_t>> &p_map,
                       const RaycastPlayer &player,
                       uint8_t *framebuffer,
                       int screenW,
                       int screenH,
                       int supersample)
{
    if (p_map.empty() || p_map[0].empty())
        return;

    const float halfW = screenW * 0.5f;
    const float halfH = screenH * 0.5f;
    const float maxScreenRadius = std::sqrt(halfW * halfW + halfH * halfH);
    const float torchRange = 16.0f;

    for (int x = 0; x < screenW; ++x)
    {
        std::vector<float> acc_r(screenH, 0.0f), acc_g(screenH, 0.0f), acc_b(screenH, 0.0f);

        for (int ss = 0; ss < supersample; ++ss)
        {
            float camX = 2.0f * (x + (ss + 0.5f) / supersample) / screenW - 1.0f;
            float rayAngle = player.angle + camX * (player.fov / 2.0f);
            float rayDirX = std::cos(rayAngle);
            float rayDirY = std::sin(rayAngle);

            RaycastHit hit = castRay(p_map, player.x, player.y, rayDirX, rayDirY);
            accumulateColumn(x, hit, screenW, screenH, halfW, halfH, maxScreenRadius,
                             torchRange, acc_r, acc_g, acc_b);
        }

        for (int y = 0; y < screenH; ++y)
        {
            int idx = (y * screenW + x) * 4;
            framebuffer[idx + 0] = static_cast<uint8_t>(acc_r[y] / supersample);
            framebuffer[idx + 1] = static_cast<uint8_t>(acc_g[y] / supersample);
            framebuffer[idx + 2] = static_cast<uint8_t>(acc_b[y] / supersample);
            framebuffer[idx + 3] = 255;
        }
    }

    drawCrosshair(framebuffer, screenW, screenH);
}

//
// Handle mouse movement for raycast mode
//
void handleRaycastMouseMove()
{
    static POINT lastPos{0, 0};
    static bool firstMove = true;

    POINT pt;
    GetCursorPos(&pt);
    ScreenToClient(g_hwnd, &pt);

    if (firstMove)
    {
        lastPos = pt;
        firstMove = false;
        return;
    }

    int dx = pt.x - lastPos.x;
    int mlook = config.contains("mlookSensitivity") ? static_cast<int>(config["mlookSensitivity"]) : 50;
    float sensitivity = 0.005f * mlook / 50.0f;
    state.raycast.player.angle += dx * sensitivity;
    state.raycast.player.angle = fmodf(state.raycast.player.angle, 2.0f * 3.14159265f);
    if (state.raycast.player.angle < 0)
        state.raycast.player.angle += 2.0f * 3.14159265f;

    POINT center{state.ui.width / 2, state.ui.height / 2};
    ClientToScreen(g_hwnd, &center);
    SetCursorPos(center.x, center.y);
    ScreenToClient(g_hwnd, &center);
    lastPos = center;
}

//
// Key State
//
void raycastKeyDown(WPARAM key)
{
    if (key < 256)
        g_keys[key] = true;
}

void raycastKeyUp(WPARAM key)
{
    if (key < 256)
        g_keys[key] = false;
}

//
// Update raycaster movement based on keyboard input
//
void updateRaycasterMovement()
{
    if (!state.raycast.enabled || state.raycast.map == nullptr || state.raycast.map->empty())
        return;

    int mapH = static_cast<int>(state.raycast.map->size());
    int mapW = static_cast<int>(state.raycast.map->at(0).size());

    constexpr float RUN_SPEED = 0.3f;
    constexpr float WALK_SPEED = RUN_SPEED * 0.7f;

    static bool runToggle = false;
    static bool prevShift = false;

    float x = state.raycast.player.x;
    float y = state.raycast.player.y;
    float angle = state.raycast.player.angle;

    float dx = 0.0f, dy = 0.0f;
    bool moving = false;

    if (g_keys['W'] || g_keys[VK_UP])
        moving = true;
    if (g_keys['S'] || g_keys[VK_DOWN])
        moving = true;
    if (g_keys['A'] || g_keys[VK_LEFT])
        moving = true;
    if (g_keys['D'] || g_keys[VK_RIGHT])
        moving = true;

    bool shift = g_keys[VK_SHIFT];
    if (shift && !prevShift && moving)
        runToggle = !runToggle;
    prevShift = shift;

    float speed = (shift || runToggle) ? RUN_SPEED : WALK_SPEED;

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

    if (dx != 0.0f || dy != 0.0f)
    {
        float new_x = x + dx;
        int mapX = static_cast<int>(new_x + 0.5f);
        int mapY = static_cast<int>(y + 0.5f);
        if (mapX >= 0 && mapX < mapW && mapY >= 0 && mapY < mapH && (*state.raycast.map)[mapY][mapX] == 0)
            state.raycast.player.x = new_x;

        float new_y = y + dy;
        mapX = static_cast<int>(state.raycast.player.x + 0.5f);
        mapY = static_cast<int>(new_y + 0.5f);
        if (mapX >= 0 && mapX < mapW && mapY >= 0 && mapY < mapH && (*state.raycast.map)[mapY][mapX] == 0)
            state.raycast.player.y = new_y;
    }

    renderFrame();
}