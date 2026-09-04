// raycast.cpp

#include <cmath>
#include <algorithm>
#include <thread>
#include <vector>
#include <array>
#include <numbers>  // C++20 std::numbers::pi
#include <functional>
#include <mutex>
#include <condition_variable>
#include <barrier>
#include <exception>
#include <cstdint>
#include <cstdio>

#include "raycast.h"
#include "window.h"
#include "game.h"
#include "basement.h"
#include "megatexture.h"
#include "map_overlay.h"

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
    float baseTorchRange = 20.0f;
    bool megatexture = false; // default OFF: flat-shaded walls; enable via raycastMegatexture=true
};
static RaycastConfig g_rayConfig;

struct RaycastVerticalGradientLut
{
    std::vector<std::array<uint8_t, 3>> ceiling;
    std::vector<std::array<uint8_t, 3>> floor;
};
static RaycastVerticalGradientLut g_verticalGradientLut;

static void updateVerticalGradientLut(int screenHeight)
{
    if (screenHeight <= 0)
        return;

    // Cache by screen height to avoid recomputing every frame.
    static int cachedScreenHeight = 0;
    if (screenHeight == cachedScreenHeight)
        return;
    cachedScreenHeight = screenHeight;

    g_verticalGradientLut.ceiling.resize(
        static_cast<size_t>(screenHeight));
    g_verticalGradientLut.floor.resize(
        static_cast<size_t>(screenHeight));
    const float halfHeight = static_cast<float>(screenHeight) * 0.5f;

    for (int y = 0; y < screenHeight; ++y)
    {
        const float yf = static_cast<float>(y) + 0.5f;
        const float ceilingFactor =
            std::clamp(1.0f - yf / halfHeight, 0.0f, 1.0f);
        const float floorFactor =
            std::clamp((yf - halfHeight) / halfHeight, 0.0f, 1.0f);
        g_verticalGradientLut.ceiling[static_cast<size_t>(y)] = {
            static_cast<uint8_t>(120.0f * ceilingFactor),
            static_cast<uint8_t>(120.0f * ceilingFactor),
            static_cast<uint8_t>(120.0f * ceilingFactor)};
        g_verticalGradientLut.floor[static_cast<size_t>(y)] = {
            static_cast<uint8_t>(90.0f * floorFactor),
            static_cast<uint8_t>(70.0f * floorFactor),
            static_cast<uint8_t>(50.0f * floorFactor)};
    }
}

// Persistent thread pool to avoid thread creation overhead per frame
struct ThreadPool
{
    std::vector<std::jthread> workers;
    std::vector<std::function<void()>> tasks;
    std::vector<std::exception_ptr> exceptions;
    std::mutex mtx;
    std::condition_variable cv_ready;   // workers wait on this for new tasks
    std::barrier<> barrier{1};          // workers + main synchronize on completion
    unsigned int threadCount = 0;
    bool stopping = false;
    std::uint64_t generation = 0;

    void ensureThreadCount(unsigned int count)
    {
        if (threadCount == count)
            return;
        // Tear down old pool
        shutdown();
        // Build new pool
        threadCount = count;
        stopping = false;
        tasks.resize(count);
        generation = 0;
        // Reconstruct barrier for count+1 (workers + main thread)
        barrier.~barrier();
        new (&barrier) std::barrier<>(static_cast<std::ptrdiff_t>(count + 1));
        workers.clear();
        workers.reserve(count);
        for (unsigned int i = 0; i < count; ++i)
        {
            workers.emplace_back([this, i](std::stop_token) {
                std::uint64_t seenGeneration = 0;
                while (true)
                {
                    std::function<void()> localTask;
                    {
                        std::unique_lock lk(mtx);
                        cv_ready.wait(lk, [this, seenGeneration] { return stopping || generation != seenGeneration; });
                        if (stopping)
                            return;
                        localTask = std::move(tasks[i]);
                        tasks[i] = nullptr;
                        seenGeneration = generation;
                    }
                    if (localTask)
                    {
                        try
                        {
                            localTask();
                        }
                        catch (...)
                        {
                            std::lock_guard lk(mtx);
                            if (i < exceptions.size())
                                exceptions[i] = std::current_exception();
                        }
                    }
                    barrier.arrive_and_wait();
                }
            });
        }
    }

    void dispatch(unsigned int count, std::function<void(int)> work)
    {
        ensureThreadCount(count);
        {
            std::lock_guard lk(mtx);
            exceptions.assign(count, nullptr);
            for (unsigned int i = 0; i < count; ++i)
            {
                int idx = static_cast<int>(i);
                tasks[i] = [idx, &work] { work(idx); };
            }
            ++generation;
        }
        cv_ready.notify_all();
        barrier.arrive_and_wait(); // wait for all workers to finish

        // Propagate the first worker exception to the caller.
        for (const auto &ep : exceptions)
        {
            if (ep)
                std::rethrow_exception(ep);
        }
    }

    void shutdown()
    {
        if (threadCount == 0)
            return;
        {
            std::lock_guard lk(mtx);
            stopping = true;
        }
        cv_ready.notify_all();
        workers.clear(); // joins all jthreads
        threadCount = 0;
    }

    ~ThreadPool() { shutdown(); }
};
static ThreadPool g_threadPool;

void drawMeasuredFpsOverlay(
    uint8_t *framebuffer, size_t pitch, int width, int height)
{
    if (!framebuffer || width <= 0 || height <= 0)
        return;

    static constexpr std::array<uint16_t, 13> glyphs = {
        0x7b6f, 0x749a, 0x73e7, 0x79e7, 0x49ed,
        0x79cf, 0x7bcf, 0x4927, 0x7bef, 0x79ef,
        0x12cf, 0x12eb, 0x79cf
    };
    const int fps = std::clamp(
        static_cast<int>(std::lround(state.frameTiming.measuredFPS)), 0, 999);
    const std::array<int, 7> text = {
        10, 11, 12, -1,
        fps >= 100 ? fps / 100 : -1,
        fps >= 10 ? (fps / 10) % 10 : -1,
        fps % 10
    };
    const int scale = width >= 1200 ? 3 : 2;
    const int advance = 4 * scale;
    const int textWidth = static_cast<int>(text.size()) * advance - scale;
    const int textHeight = 5 * scale;
    const int startX = std::max(4, width - textWidth - 10);
    const int startY = 8;

    for (int y = std::max(0, startY - 3);
         y < std::min(height, startY + textHeight + 3); ++y)
    {
        uint8_t *row = framebuffer + static_cast<size_t>(y) * pitch;
        for (int x = std::max(0, startX - 4);
             x < std::min(width, startX + textWidth + 4); ++x)
        {
            row[static_cast<size_t>(x) * 4u + 0u] /= 4u;
            row[static_cast<size_t>(x) * 4u + 1u] /= 4u;
            row[static_cast<size_t>(x) * 4u + 2u] /= 4u;
        }
    }

    for (size_t character = 0; character < text.size(); ++character)
    {
        const int glyph = text[character];
        if (glyph < 0)
            continue;
        const uint16_t bits = glyphs[static_cast<size_t>(glyph)];
        for (int gy = 0; gy < 5; ++gy)
        {
            for (int gx = 0; gx < 3; ++gx)
            {
                if ((bits & (1u << (gy * 3 + gx))) == 0)
                    continue;
                for (int sy = 0; sy < scale; ++sy)
                {
                    const int y = startY + gy * scale + sy;
                    if (y < 0 || y >= height)
                        continue;
                    uint8_t *row =
                        framebuffer + static_cast<size_t>(y) * pitch;
                    for (int sx = 0; sx < scale; ++sx)
                    {
                        const int x = startX +
                            static_cast<int>(character) * advance +
                            gx * scale + sx;
                        if (x < 0 || x >= width)
                            continue;
                        row[static_cast<size_t>(x) * 4u + 0u] = 255;
                        row[static_cast<size_t>(x) * 4u + 1u] = 255;
                        row[static_cast<size_t>(x) * 4u + 2u] = 255;
                        row[static_cast<size_t>(x) * 4u + 3u] = 255;
                    }
                }
            }
        }
    }
}

// Call once per frame before rendering to cache config values
static void cacheConfigValues()
{
    g_rayConfig.visualScale = config.contains("raycastScale") 
        ? static_cast<float>(config["raycastScale"]) : 3.0f;
    g_rayConfig.falloffMul = config.contains("raycastFalloffMul") 
        ? static_cast<float>(config["raycastFalloffMul"]) : 0.85f;
    g_rayConfig.fovMul = config.contains("raycastFovMul") 
        ? static_cast<float>(config["raycastFovMul"]) : 1.0f;
    g_rayConfig.supersample = std::clamp(config.contains("raycastSupersample")
        ? config["raycastSupersample"].get<int>() : 1, 1, 8);
    g_rayConfig.baseTorchRange = 20.0f;
    // Megatexture is opt-in and defaults OFF (classic flat-shaded walls).
    g_rayConfig.megatexture = config.contains("raycastMegatexture")
        ? config["raycastMegatexture"].get<bool>() : false;
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
bool initializePlayerFromMap(const TileMap &tileMap, RaycastPlayer &player)
{
	if (tileMap.empty() || tileMap.front().empty())
		return false;
    int mapH = static_cast<int>(tileMap.size());
    int mapW = static_cast<int>(tileMap[0].size());

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
RaycastHit castRay(const TileMap &tileMap,
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
    bool hitWall = false;
    
    // DDA loop with branchless step selection
    const int MAX_STEPS = std::clamp(mapW + mapH + 64, 64, 4096);
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
            return {dist, side, false, mapX, mapY, 0.0f, 1.0f};
        }

        // Wall check
        const uint8_t tile = tileMap[mapY][mapX];
        if (tile >= 0x01 && (tile < 0xF0 || tile > 0xF3))
        {
			hitWall = true;
            break;
		}
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
    
    return {dist, cardinalSide, hitWall, mapX, mapY, wallX, 1.0f};
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
    const WallEdge* wallEdge = nullptr;
    
    if (hit.hitWall)
    {
        perpWallDist = std::max(
            hit.distance * hit.cosCorr / visualScale, 0.01f);
        const float halfFovTan = std::max(
            std::tan(state.raycast.player.fov * 0.5f * g_rayConfig.fovMul),
            0.001f);
        float lineHeight =
            static_cast<float>(screenH) / (perpWallDist * halfFovTan);
        drawStart = halfH - lineHeight / 2.0f;
        drawEnd = halfH + lineHeight / 2.0f;

        lightFactor = std::max(0.0f, 1.0f - hit.distance / torchRange);
        wallEdge = findWallEdge(hit.mapX, hit.mapY, hit.side);

    // Initialize fallback wall color
    wallR = static_cast<uint8_t>(120.0f * lightFactor);
    wallG = static_cast<uint8_t>(120.0f * lightFactor);
    wallB = static_cast<uint8_t>(120.0f * lightFactor);
    }

    for (int y = 0; y < screenH; ++y)
    {
        float yf = static_cast<float>(y) + 0.5f; // Pixel center
        float dx = static_cast<float>(x) - halfW;
        float dy = yf - halfH;
        float screenDist = std::sqrt(dx * dx + dy * dy);
        // Use cached falloff value (was previously shadowed and read from config per-pixel)
        float screenFactor = std::max(0.0f, 1.0f - (screenDist / maxRadius) * falloffMul);

        const auto &ceiling =
            g_verticalGradientLut.ceiling[static_cast<size_t>(y)];
        const auto &floor =
            g_verticalGradientLut.floor[static_cast<size_t>(y)];
        const float ceilingShade = static_cast<float>(ceiling[0]);
        const uint8_t floorR = floor[0];
        const uint8_t floorG = floor[1];
        const uint8_t floorB = floor[2];

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
            const float baseColor = 120.0f;

            if (g_rayConfig.megatexture)
            {
                uint32_t texSample = sampleMegatextureEdge(wallEdge, hit.wallX, v);
                uint8_t texR = (texSample >> 0) & 0xFF;
                uint8_t texG = (texSample >> 8) & 0xFF;
                uint8_t texB = (texSample >> 16) & 0xFF;
                uint8_t texA = (texSample >> 24) & 0xFF;

                if (texA > 0)
                {
                    float alpha = texA / 255.0f;
                    wallR_px = static_cast<uint8_t>((texR * alpha + baseColor * (1.0f - alpha)) * lightFactor);
                    wallG_px = static_cast<uint8_t>((texG * alpha + baseColor * (1.0f - alpha)) * lightFactor);
                    wallB_px = static_cast<uint8_t>((texB * alpha + baseColor * (1.0f - alpha)) * lightFactor);
                }
                else
                {
                    wallR_px = static_cast<uint8_t>(baseColor * lightFactor);
                    wallG_px = static_cast<uint8_t>(baseColor * lightFactor);
                    wallB_px = static_cast<uint8_t>(baseColor * lightFactor);
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
void renderChunk(const TileMap &tileMap,
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
            const float halfFovTan = std::tan(fov * 0.5f * fovMul);
            const float viewX = camX * halfFovTan;
            float rayAngle = player.angle + std::atan(viewX);
            float rayDirX = std::cos(rayAngle);
            float rayDirY = std::sin(rayAngle);
            RaycastHit hit = castRay(tileMap, player.x, player.y, rayDirX, rayDirY);
            hit.cosCorr = 1.0f / std::sqrt(1.0f + viewX * viewX);
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
void renderRaycastView(const TileMap &tileMap,
                       const RaycastPlayer &p,
                       uint8_t *fb,
                       size_t pitch,
                       int w,
                       int h)
{
    // Cache config values once per frame (not per pixel)
    cacheConfigValues();
    updateVerticalGradientLut(h);
    
    int ss = g_rayConfig.supersample;
    const uint64_t pixelCount =
        static_cast<uint64_t>(std::max(0, w)) *
        static_cast<uint64_t>(std::max(0, h));
    if (pixelCount >= kPixelCount1080p)
        ss = std::min(ss, 1);
    else if (pixelCount >= kPixelCount720p)
        ss = std::min(ss, 2);
    const unsigned int hwThreads = std::max(1u, std::thread::hardware_concurrency());
    const int nThreads = std::min(static_cast<int>(hwThreads), std::max(1, w));
    const int chunk = (w + nThreads - 1) / nThreads;
    
    g_threadPool.dispatch(static_cast<unsigned int>(nThreads), [&](int i) {
        int s = i * chunk;
        int e = std::min(w, s + chunk);
        if (s >= e)
            return;
        renderChunk(tileMap, p, fb, pitch, w, h, ss, s, e);
    });
    
    drawCrosshair(fb, pitch, w, h);
    drawMeasuredFpsOverlay(fb, pitch, w, h);
    renderMapOverlay(fb, pitch, w, h);

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

        std::array<char, 256> title{};
        std::snprintf(title.data(), title.size(),
                      "v64tng  |  Edges: %d  Tiles: %d %s  WH: 3.0  RecWH: %.2f",
                      static_cast<int>(megatex.edges.size()),
                      static_cast<int>(megatex.tileCount),
                      megatex.loaded ? "loaded" : "not loaded",
                      recommendedUnits);
        SetWindowTextA(g_hwnd, title.data());
    }
#endif
}

// Mouse handling for raycast mode
void handleRaycastMouseDelta(int deltaX, int)
{
    if (!state.raycast.enabled || deltaX == 0)
        return;

    float sensitivitySetting = 50.0f;
    if (config.contains("mlookSensitivity") &&
        config["mlookSensitivity"].is_number())
    {
        sensitivitySetting = std::clamp(
            config["mlookSensitivity"].get<float>(), 1.0f, 200.0f);
    }
    constexpr float kRadiansPerRawCountAtDefault = 0.0025f;
    const float sensitivity =
        (sensitivitySetting / 50.0f) * kRadiansPerRawCountAtDefault;
    state.raycast.player.angle = normalizeAngle(
        state.raycast.player.angle + static_cast<float>(deltaX) * sensitivity);
    state.frameTiming.dirtyFrame = true;
}

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
        handleRaycastMouseDelta(deltaX, deltaY);

        // Reset cursor to center immediately
        SetCursorPos(clientCenter.x, clientCenter.y);
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

void resetRaycastInput()
{
    g_keys.fill(false);
}

//
// Update raycaster movement based on keyboard input
//
void updateRaycasterMovement()
{
    if (!state.raycast.enabled)
        return;

    static std::chrono::steady_clock::time_point lastRaycastUpdate = std::chrono::steady_clock::now();
    const auto currentTime = std::chrono::steady_clock::now();
    float deltaSeconds = std::chrono::duration<float>(currentTime - lastRaycastUpdate).count();
    lastRaycastUpdate = currentTime;

    // Keep movement stable after stalls, breakpoints, or a lost-focus pause.
    deltaSeconds = std::clamp(deltaSeconds, 0.0f, 0.1f);
    if (deltaSeconds <= 0.0f)
        return;

    if (!state.raycast.map || state.raycast.map->empty())
        return;

    int mapW = static_cast<int>(state.raycast.map->at(0).size());
    int mapH = static_cast<int>(state.raycast.map->size());
    float x = state.raycast.player.x, y = state.raycast.player.y, angle = state.raycast.player.angle;
    float speed = g_keys[VK_SHIFT] ? state.raycast.player.runSpeed : state.raycast.player.walkSpeed;
    // Existing walk/run tuning was authored as a per-frame amount at 60 Hz.
    constexpr float kLegacyMovementHz = 60.0f;
    const float speedPerSecond = speed * kLegacyMovementHz;
    float dx = 0, dy = 0;

    if (g_keys['W'] || g_keys[VK_UP])
    {
        dx += std::cos(angle) * speedPerSecond;
        dy += std::sin(angle) * speedPerSecond;
    }
    if (g_keys['S'] || g_keys[VK_DOWN])
    {
        dx -= std::cos(angle) * speedPerSecond;
        dy -= std::sin(angle) * speedPerSecond;
    }
    if (g_keys['A'] || g_keys[VK_LEFT])
    {
        dx += std::sin(angle) * speedPerSecond;
        dy -= std::cos(angle) * speedPerSecond;
    }
    if (g_keys['D'] || g_keys[VK_RIGHT])
    {
        dx -= std::sin(angle) * speedPerSecond;
        dy += std::cos(angle) * speedPerSecond;
    }

    // Combined input must not make diagonal movement faster.
    const float moveLenSq = dx * dx + dy * dy;
    if (moveLenSq > speedPerSecond * speedPerSecond)
    {
        const float invLen = 1.0f / std::sqrt(moveLenSq);
        dx *= invLen * speedPerSecond;
        dy *= invLen * speedPerSecond;
    }

    dx *= deltaSeconds;
    dy *= deltaSeconds;

    if (dx != 0.0f || dy != 0.0f)
    {
        constexpr float COLLISION_RADIUS = 0.3f;
        constexpr float MAX_MOVE_STEP = 0.15f;

        // Keep the native 7th Guest rule: 0xF0-0xF3 are non-blocking tiles.
        auto isWallAt = [&](int cx, int cy) -> bool {
            if (cx < 0 || cy < 0 || cx >= mapW || cy >= mapH)
                return true;
            const uint8_t t = (*state.raycast.map)[static_cast<size_t>(cy)][static_cast<size_t>(cx)];
            return (t >= 0x01 && (t < 0xF0 || t > 0xF3));
        };

        auto blockedAt = [&](float px, float py) -> bool {
            const int minX = static_cast<int>(std::floor(px - COLLISION_RADIUS));
            const int maxX = static_cast<int>(std::floor(px + COLLISION_RADIUS));
            const int minY = static_cast<int>(std::floor(py - COLLISION_RADIUS));
            const int maxY = static_cast<int>(std::floor(py + COLLISION_RADIUS));
            for (int cy = minY; cy <= maxY; ++cy)
            {
                for (int cx = minX; cx <= maxX; ++cx)
                {
                    if (!isWallAt(cx, cy))
                        continue;
                    const float nearestX = std::clamp(px, static_cast<float>(cx), static_cast<float>(cx + 1));
                    const float nearestY = std::clamp(py, static_cast<float>(cy), static_cast<float>(cy + 1));
                    const float ox = px - nearestX;
                    const float oy = py - nearestY;
                    if (ox * ox + oy * oy < COLLISION_RADIUS * COLLISION_RADIUS)
                        return true;
                }
            }
            return false;
        };

        // Substeps prevent sprinting through a wall after a long frame. Resolving
        // each axis independently retains the engine's wall-sliding behavior.
        const int moveSteps = std::max(1, static_cast<int>(std::ceil(
            std::max(std::abs(dx), std::abs(dy)) / MAX_MOVE_STEP)));
        const float stepDx = dx / static_cast<float>(moveSteps);
        const float stepDy = dy / static_cast<float>(moveSteps);
        float newX = x;
        float newY = y;
        for (int step = 0; step < moveSteps; ++step)
        {
            if (!blockedAt(newX + stepDx, newY))
                newX += stepDx;
            if (!blockedAt(newX, newY + stepDy))
                newY += stepDy;
        }

        state.raycast.player.x = newX;
        state.raycast.player.y = newY;

        state.frameTiming.dirtyFrame = true;
    }
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
    state.raycast.map = &basementMap;
    state.frameTiming.currentFPS =
        static_cast<double>(std::max(1, getDisplayRefreshRate()));
    float fovDeg = config.contains("raycastFov") ? static_cast<float>(config["raycastFov"]) : 90.0f;
    state.raycast.player.fov = deg2rad(fovDeg);

    // Hide the OS cursor in raycast mode to avoid visible system pointer
    ShowCursor(FALSE);

    // Megatexture is opt-in (raycastMegatexture=true). Edges are needed by the
    // GPU renderers regardless; the heavy .mtx tile set only loads when the
    // CPU renderer will actually sample it.
    if (megatex.edges.empty())
    {
        analyzeMapEdges(basementMap);
    }
    if (g_rayConfig.megatexture && !megatex.loaded)
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
    resetRaycastInput();
    refreshRendererForCurrentMode();
}
