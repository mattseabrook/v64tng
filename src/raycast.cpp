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
    int screenW, int screenH)
{
    if (p_map.empty() || p_map[0].empty())
        return;

    const int mapW = static_cast<int>(p_map[0].size());
    const int mapH = static_cast<int>(p_map.size());
    const float fov = player.fov;

    for (int x = 0; x < screenW; ++x)
    {
        float camX = 2.0f * x / screenW - 1.0f; // -1 to 1
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

        // Draw
        for (int y = 0; y < screenH; ++y)
        {
            int idx = (y * screenW + x) * 4;
            if (y < drawStart)
            {
                // Ceiling (blueish)
                framebuffer[idx + 0] = 72;
                framebuffer[idx + 1] = 80;
                framebuffer[idx + 2] = 112;
                framebuffer[idx + 3] = 255;
            }
            else if (y <= drawEnd)
            {
                framebuffer[idx + 0] = r;
                framebuffer[idx + 1] = g;
                framebuffer[idx + 2] = b;
                framebuffer[idx + 3] = 255;
            }
            else
            {
                // Floor (darker)
                framebuffer[idx + 0] = 40;
                framebuffer[idx + 1] = 44;
                framebuffer[idx + 2] = 44;
                framebuffer[idx + 3] = 255;
            }
        }
    }
}