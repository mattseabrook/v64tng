// raycast.cpp

#include <cmath>
#include <algorithm>

#include "raycast.h"
#include "game.h"
#include "basement.h"

//
// Function to render the raycast view
//
void renderRaycastView(
    const std::vector<std::vector<uint8_t>> &p_map,
    const RaycastPlayer &player,
    uint8_t *framebuffer,
    int screenW, int screenH,
    int supersample)
{
    if (p_map.empty() || p_map[0].empty())
        return;

    const int mapW = static_cast<int>(p_map[0].size());
    const int mapH = static_cast<int>(p_map.size());
    const float fov = player.fov;

    // Pre-calculate screen-space values for radial lighting
    const float halfW = screenW * 0.5f;
    const float halfH = screenH * 0.5f;
    const float maxScreenRadius = std::sqrt(halfW * halfW + halfH * halfH);
    const float torchRange = 16.0f; // World units for torch falloff

    for (int x = 0; x < screenW; ++x)
    {
        // Supersample accumulator per scanline
        std::vector<float> acc_r(screenH, 0.0f), acc_g(screenH, 0.0f), acc_b(screenH, 0.0f);

        for (int ss = 0; ss < supersample; ++ss)
        {
            float camX = 2.0f * (x + (ss + 0.5f) / supersample) / screenW - 1.0f;
            float rayAngle = player.angle + camX * (fov / 2.0f);

            float rayDirX = std::cos(rayAngle);
            float rayDirY = std::sin(rayAngle);

            // DDA setup
            float posX = player.x, posY = player.y;
            int mapX = int(posX + 0.5f);
            int mapY = int(posY + 0.5f);

            float sideDistX, sideDistY;
            float deltaDistX = std::abs(1.0f / rayDirX);
            float deltaDistY = std::abs(1.0f / rayDirY);
            float perpWallDist;

            int stepX, stepY;
            int hit = 0, side = 0;

            // Calculate step and initial sideDist
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

            // DDA
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
                if (p_map[mapY][mapX] > 0)
                    hit = 1;
            }

            // Distance to wall
            if (hit)
            {
                if (side == 0)
                    perpWallDist = (sideDistX - deltaDistX);
                else
                    perpWallDist = (sideDistY - deltaDistY);
            }
            else
            {
                perpWallDist = 32.0f; // Fallback: no wall, max distance
            }

            // Projected wall height
            int lineHeight = static_cast<int>(screenH / (std::max)(perpWallDist, 0.01f));
            int drawStart = (std::max)(0, screenH / 2 - lineHeight / 2);
            int drawEnd = (std::min)(screenH - 1, screenH / 2 + lineHeight / 2);

            // Coloring: simple (grey wall, darken if y-side)
            uint8_t r = side ? 64 : 120;
            uint8_t g = side ? 64 : 120;
            uint8_t b = side ? 64 : 120;

            // Light falloff for walls based on distance
            float lightFactor = (std::max)(0.0f, 1.0f - perpWallDist / torchRange);

            // Draw with radial torch lighting
            for (int y = 0; y < screenH; ++y)
            {
                float dx = static_cast<float>(x) - halfW;
                float dy = static_cast<float>(y) - halfH;
                float screenDist = std::sqrt(dx * dx + dy * dy);
                float screenFactor = (std::max)(0.0f, 1.0f - screenDist / maxScreenRadius);

                uint8_t rr, gg, bb;

                if (y < drawStart)
                {
                    // Ceiling gradient
                    float ratio = static_cast<float>(y) / (screenH * 0.5f);
                    ratio = (std::min)(ratio, 1.0f);
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
                    // Floor gradient
                    float ratio = static_cast<float>(y - screenH * 0.5f) / (screenH * 0.5f);
                    ratio = (std::min)((std::max)(ratio, 0.0f), 1.0f);
                    rr = static_cast<uint8_t>(90.0f * ratio); // Red component for pale dark brown
                    gg = static_cast<uint8_t>(70.0f * ratio); // Green component for pale dark brown
                    bb = static_cast<uint8_t>(50.0f * ratio); // Blue component for pale dark brown
                }

                float finalFactor = screenFactor;
                acc_r[y] += rr * finalFactor;
                acc_g[y] += gg * finalFactor;
                acc_b[y] += bb * finalFactor;
            }
        }
        // Write averaged result to framebuffer
        for (int y = 0; y < screenH; ++y)
        {
            int idx = (y * screenW + x) * 4;
            framebuffer[idx + 0] = static_cast<uint8_t>(acc_r[y] / supersample);
            framebuffer[idx + 1] = static_cast<uint8_t>(acc_g[y] / supersample);
            framebuffer[idx + 2] = static_cast<uint8_t>(acc_b[y] / supersample);
            framebuffer[idx + 3] = 255;
        }
    }

    // Draw a simple red dot crosshair at the center of the framebuffer
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
