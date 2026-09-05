#include "megatexture.h"
#include "extract.h"
#include "config.h"
#include <algorithm>
#include <cmath>
#include <iostream>
#include <sstream>
#include <iomanip>
#include <fstream>
#include <filesystem>
#include <omp.h>
#include <cstring>
#include <zlib.h>
#include <unordered_map>
#include <atomic>
#include <limits>
#include <system_error>
#include <utility>
#include <zstd.h>

#ifdef _WIN32
#include <windows.h>
#define MTX_LOG(msg) { std::ostringstream _ss; _ss << "PhantomMTX: " << msg << "\n"; OutputDebugStringA(_ss.str().c_str()); std::cerr << "PhantomMTX: " << msg << "\n"; }
#else
#define MTX_LOG(msg) { std::cerr << "PhantomMTX: " << msg << "\n"; }
#endif

// Undefine Windows min/max macros that conflict with std::min/std::max
#ifdef _WIN32
#ifdef min
#undef min
#endif
#ifdef max
#undef max
#endif
#endif

/*
===============================================================================

    Procedural Megatexture Generation

    Pure functional/procedural implementation.
    Streaming tile-based generation with no full-strip allocation.
    
    NOTE: Megatexture is conceptually one seamless 1024×W strip.
    We generate and write 3072×1024 tiles (3× longer than taller), streaming,
    to avoid huge memory.
    Seamlessness is guaranteed because generatePixelVeins(u,v) uses global (u,v).
    No preview/combined PNG by design.

===============================================================================
*/

// Global megatexture state
MegatextureState megatex = { {}, {}, 0, 0, 0, 0, 0, 0, {}, false, 0 };

//
// Internal helpers
//

static uint32_t hash32(uint32_t x, uint32_t y, uint32_t seed)
{
    uint32_t h = seed;
    h ^= x * 0x1B873593;
    h ^= y * 0xCC9E2D51;
    h = (h ^ (h >> 16)) * 0x85EBCA6B;
    h = (h ^ (h >> 13)) * 0xC2B2AE35;
    h = h ^ (h >> 16);
    return h;
}

static float smoothstep(float edge0, float edge1, float x)
{
    float t = std::clamp((x - edge0) / (edge1 - edge0), 0.0f, 1.0f);
    return t * t * (3.0f - 2.0f * t);
}

static float perlinNoise(float x, float y, uint32_t seed)
{
    int x0 = (int)std::floor(x);
    int y0 = (int)std::floor(y);
    int x1 = x0 + 1;
    int y1 = y0 + 1;
    
    float sx = x - x0;
    float sy = y - y0;
    
    float u = smoothstep(0, 1, sx);
    float v = smoothstep(0, 1, sy);
    
    auto grad = [&](int ix, int iy, float dx, float dy) -> float
    {
        uint32_t h = hash32(ix, iy, seed);
        float angle = (h / (float)0xFFFFFFFF) * 6.28318530718f;
        return std::cos(angle) * dx + std::sin(angle) * dy;
    };
    
    float n00 = grad(x0, y0, sx, sy);
    float n10 = grad(x1, y0, sx - 1, sy);
    float n01 = grad(x0, y1, sx, sy - 1);
    float n11 = grad(x1, y1, sx - 1, sy - 1);
    
    float nx0 = n00 * (1 - u) + n10 * u;
    float nx1 = n01 * (1 - u) + n11 * u;
    return nx0 * (1 - v) + nx1 * v;
}

static float fbm(float x, float y, int octaves, uint32_t seed)
{
    float total = 0.0f;
    float frequency = 1.0f;
    float amplitude = 1.0f;
    float maxValue = 0.0f;
    
    for (int i = 0; i < octaves; i++)
    {
        total += perlinNoise(x * frequency, y * frequency, seed + i) * amplitude;
        maxValue += amplitude;
        amplitude *= 0.5f;
        frequency *= 2.0f;
    }
    
    return total / maxValue;
}

// Compute Worley F1 and F2 distances (Euclidean) with jittered feature points per cell
static void worleyF1F2(float x, float y, float density, uint32_t seed, float &f1, float &f2)
{
    // Scale coordinates by density (cells per unit)
    float X = x * density;
    float Y = y * density;
    int xi = (int)std::floor(X);
    int yi = (int)std::floor(Y);
    f1 = 1e9f;
    f2 = 1e9f;

    for (int dy = -1; dy <= 1; ++dy)
    for (int dx = -1; dx <= 1; ++dx)
    {
        int cx = xi + dx;
        int cy = yi + dy;
        uint32_t h = hash32((uint32_t)cx, (uint32_t)cy, seed);
        float jx = ((h & 0xFFFF) / 65535.0f);
        float jy = (((h >> 16) & 0xFFFF) / 65535.0f);
        float fx = (float)cx + jx;
        float fy = (float)cy + jy;
        float dxp = X - fx;
        float dyp = Y - fy;
        float d2 = dxp*dxp + dyp*dyp;
        if (d2 < f1) { f2 = f1; f1 = d2; }
        else if (d2 < f2) { f2 = d2; }
    }
    f1 = std::sqrt(f1);
    f2 = std::sqrt(f2);
}

// Generate a single pixel with mortar veins using global coordinates (u, v)
// u = horizontal pixel coordinate in the entire strip (0..textureWidth-1)
// v = vertical pixel coordinate (0..1023)
// Returns RGBA8 packed as uint32_t (R,G,B,A in bytes 0,1,2,3)
// Return mortar coverage in [0,1] at world coords (x,y)
static float mortarShapeAt(float x, float y, const MegatextureParams &params)
{
    // Domain warp for organic feel
    float warpAmp = std::max(0.0f, params.worleyStrength);
    float ws = std::max(0.001f, params.perlinScale);
    if (warpAmp > 0.0f)
    {
        float nx = fbm(x * ws + 31.1f, y * ws + 17.3f, std::max(1, params.perlinOctaves), params.seed);
        float ny = fbm(x * ws + 101.7f, y * ws + 47.9f, std::max(1, params.perlinOctaves), params.seed ^ 0x9E3779B9u);
        nx = nx * 2.0f - 1.0f;
        ny = ny * 2.0f - 1.0f;
        x += nx * warpAmp * 0.25f;
        y += ny * warpAmp * 0.25f;
    }

    float density = std::max(0.001f, params.worleyScale); // cells per unit
    float f1, f2;
    worleyF1F2(x, y, density, params.seed * 59167u + 123u, f1, f2);
    float ridge = (f2 - f1); // small near edges

    // Desired line thickness in world units
    float target = std::max(0.0005f, params.mortarWidth);
    float th0 = target * 0.25f;
    float th1 = target * 0.85f; // slightly wider transition than before for stability
    float m = 1.0f - smoothstep(th0, th1, ridge); // 1 on vein center, 0 outside
    m = std::clamp(m, 0.0f, 1.0f);
    // Keep lines rounded and avoid razor-thin segments
    float shape = std::pow(m, 0.8f);
    return shape;
}

static uint32_t generatePixelVeins(int u, int v, const MegatextureParams &params)
{
    // Convert pixel coordinates to world units with anisotropy:
    // 1024 px width = 3 world units (horizontal), 1024 px height = 1 world unit (vertical)
    const float pixelsPerUnitY = 1024.0f;
    float unitsPerTileX = 3.0f; // world units per 1024 px horizontally
    if (config.contains("raycastMegatextureUnitsPerTileX"))
        unitsPerTileX = std::clamp(config["raycastMegatextureUnitsPerTileX"].get<float>(), 1.0f, 4.0f);
    else if (config.contains("megatextureUnitsPerTileX"))
        unitsPerTileX = std::clamp(config["megatextureUnitsPerTileX"].get<float>(), 1.0f, 4.0f);

    // 2x2 supersampling at sub-pixel offsets to eliminate dotted/aliased gaps
    const float ox[2] = {0.25f, 0.75f};
    const float oy[2] = {0.25f, 0.75f};
    float acc = 0.0f;
    for (int yi = 0; yi < 2; ++yi)
    {
        for (int xi = 0; xi < 2; ++xi)
        {
            float x = (((float)u + ox[xi]) / 1024.0f) * unitsPerTileX;
            float y = (((float)v + oy[yi]) / pixelsPerUnitY);
            acc += mortarShapeAt(x, y, params);
        }
    }
    float coverage = acc * 0.25f; // average

    // Convert to alpha; enforce a tiny floor to keep lines continuous at 4K/2K
    float aFloat = std::clamp(coverage, 0.0f, 1.0f);
    const float minVisible = 8.0f / 255.0f; // ensures faint segments don't disappear entirely
    if (aFloat > 0.0f && aFloat < minVisible) aFloat = minVisible;
    uint8_t a = (uint8_t)std::round(aFloat * 255.0f);
    if (a == 0) return 0u;

    uint8_t g = (uint8_t)std::round(std::clamp(params.mortarGray, 0.0f, 1.0f) * 255.0f);
    return ((uint32_t)g << 0) | ((uint32_t)g << 8) | ((uint32_t)g << 16) | ((uint32_t)a << 24);
}

//
// Map analysis helpers
//

static bool isWall(const TileMap& tileMap, int x, int y)
{
    int h = static_cast<int>(tileMap.size());
    if (h == 0) return true;
    int w = static_cast<int>(tileMap[0].size());
    
    // Out of bounds = wall
    if (y < 0 || y >= h) return true;
    if (x < 0 || x >= w) return true;
    
    uint8_t cell = tileMap[y][x];
    
    // Consistent with raycaster: any non-zero tile is a wall, except player spawn markers 0xF0-0xF3
    return (cell >= 0x01 && (cell < 0xF0 || cell > 0xF3));
}

static void enumerateExposedEdges(const TileMap& tileMap)
{
    std::vector<WallEdge> tempEdges;
    
    // Scan every cell
    for (int y = 0; y < megatex.mapHeight; y++)
    {
        for (int x = 0; x < megatex.mapWidth; x++)
        {
            if (!isWall(tileMap, x, y)) continue;
            
            // Check all 4 sides (0=North, 1=East, 2=South, 3=West)
            
            // NORTH: neighbor is (x, y-1)
            if (!isWall(tileMap, x, y - 1))
            {
                WallEdge edge;
                edge.cellX = x;
                edge.cellY = y;
                edge.side = 0;
                edge.xOffsetPixels = 0;
                edge.direction = 1; // No flip needed
                tempEdges.push_back(edge);
            }
            
            // EAST: neighbor is (x+1, y)
            if (!isWall(tileMap, x + 1, y))
            {
                WallEdge edge;
                edge.cellX = x;
                edge.cellY = y;
                edge.side = 1;
                edge.xOffsetPixels = 0;
                edge.direction = 1; // No flip needed
                tempEdges.push_back(edge);
            }
            
            // SOUTH: neighbor is (x, y+1)
            if (!isWall(tileMap, x, y + 1))
            {
                WallEdge edge;
                edge.cellX = x;
                edge.cellY = y;
                edge.side = 2;
                edge.xOffsetPixels = 0;
                edge.direction = 1;
                tempEdges.push_back(edge);
            }
            
            // WEST: neighbor is (x-1, y)
            if (!isWall(tileMap, x - 1, y))
            {
                WallEdge edge;
                edge.cellX = x;
                edge.cellY = y;
                edge.side = 3;
                edge.xOffsetPixels = 0;
                edge.direction = 1;
                tempEdges.push_back(edge);
            }
        }
    }
    
    megatex.edges = tempEdges;
}

static void orderEdgesSpatially()
{
    // Simple spatial ordering: (y, x, side)
    std::sort(megatex.edges.begin(), megatex.edges.end(), 
        [](const WallEdge& a, const WallEdge& b)
        {
            if (a.cellY != b.cellY) return a.cellY < b.cellY;
            if (a.cellX != b.cellX) return a.cellX < b.cellX;
            return a.side < b.side;
        });
}

// Pack a 2D grid point into a 64-bit key
static inline uint64_t packKey(int x, int y)
{
    return (static_cast<uint64_t>(static_cast<uint32_t>(x)) << 32) | static_cast<uint32_t>(y);
}

static void edgeEndpoints(const WallEdge &e, int &x0, int &y0, int &x1, int &y1)
{
    switch (e.side & 3)
    {
        case 0: // North: (x,y) -> (x+1,y)  — left to right
            x0 = e.cellX;     y0 = e.cellY;
            x1 = e.cellX + 1; y1 = e.cellY;
            break;
        case 1: // East: (x+1,y) -> (x+1,y+1)  — top to bottom
            x0 = e.cellX + 1; y0 = e.cellY;
            x1 = e.cellX + 1; y1 = e.cellY + 1;
            break;
        case 2: // South: (x,y+1) -> (x+1,y+1)  — left to right (matches sorted X order)
            x0 = e.cellX;     y0 = e.cellY + 1;
            x1 = e.cellX + 1; y1 = e.cellY + 1;
            break;
        default: // West: (x,y) -> (x,y+1)  — top to bottom (matches sorted Y order)
            x0 = e.cellX;     y0 = e.cellY;
            x1 = e.cellX;     y1 = e.cellY + 1;
            break;
    }
}

static void computeEdgeOffsets(int pixelsPerUnit)
{
    if (megatex.mapWidth <= 0 || megatex.mapHeight <= 0) return;

    // Build adjacency from endpoints to edges
    std::unordered_map<uint64_t, std::vector<int>> adj; adj.reserve(megatex.edges.size()*2);
    for (size_t i = 0; i < megatex.edges.size(); ++i)
    {
        int x0,y0,x1,y1; edgeEndpoints(megatex.edges[i], x0,y0,x1,y1);
        adj[packKey(x0,y0)].push_back(static_cast<int>(i));
        adj[packKey(x1,y1)].push_back(static_cast<int>(i));
    }

    std::vector<uint8_t> visited(megatex.edges.size(), 0);
    int currentOffset = 0;
    float unitsPerTileX = 3.0f;  // Must match generatePixelVeins default (3 world units per 1024px tile)
    if (config.contains("raycastMegatextureUnitsPerTileX"))
        unitsPerTileX = std::clamp(config["raycastMegatextureUnitsPerTileX"].get<float>(), 0.5f, 4.0f);
    else if (config.contains("megatextureUnitsPerTileX"))
        unitsPerTileX = std::clamp(config["megatextureUnitsPerTileX"].get<float>(), 0.5f, 4.0f);

    const double step = 1024.0 / static_cast<double>(unitsPerTileX); // pixels per world unit horizontally

    auto otherEndpoint = [&](const WallEdge &e, int px, int py, int &nx, int &ny)
    {
        int x0,y0,x1,y1; edgeEndpoints(e,x0,y0,x1,y1);
        if (x0==px && y0==py) { nx=x1; ny=y1; }
        else { nx=x0; ny=y0; }
    };

    for (size_t si = 0; si < megatex.edges.size(); ++si)
    {
        if (visited[si]) continue;

        // Start a new loop from this edge
        std::vector<int> loop;
        std::vector<int> loopDirs; // final flip flag per edge: -1 = flip u, +1 = no flip
        int sx0, sy0, sx1, sy1; edgeEndpoints(megatex.edges[si], sx0, sy0, sx1, sy1);
        int startKeyX = sx0, startKeyY = sy0;
        int curEdge = static_cast<int>(si);
        int prevX = sx0, prevY = sy0;
        int curX = sx1, curY = sy1; // move from first edge's start to its end
        loop.push_back(curEdge);

        // First edge traversed in natural direction (x0→x1).
        // All sides now have endpoints ordered so wallX increases
        // in the same direction as the endpoint traversal, so no
        // natural flip is needed.
        loopDirs.push_back(1);
        visited[curEdge] = 1;

        // Walk until we return to start point or cannot continue
        while (true)
        {
            auto it = adj.find(packKey(curX, curY));
            if (it == adj.end()) break;
            // Choose next edge by geometric continuity to avoid branch jumps
            // that create discontinuous strip offsets (visible seams).
            int nextEdge = -1;
            int bestScore = -1;
            const int curSide = megatex.edges[curEdge].side;
            const int inDx = curX - prevX;
            const int inDy = curY - prevY;
            for (int eidx : it->second)
            {
                if (eidx == curEdge || visited[eidx])
                    continue;

                int ex0, ey0, ex1, ey1;
                edgeEndpoints(megatex.edges[eidx], ex0, ey0, ex1, ey1);
                const bool startsHere = (ex0 == curX && ey0 == curY);
                const bool sameSide = (megatex.edges[eidx].side == curSide);
                int nx = 0, ny = 0;
                otherEndpoint(megatex.edges[eidx], curX, curY, nx, ny);
                const int outDx = nx - curX;
                const int outDy = ny - curY;
                const int dot = inDx * outDx + inDy * outDy; // 1 straight, 0 turn, -1 reverse

                // Priority:
                // 1) continue straight
                // 2) same side
                // 3) natural orientation
                const int score = (dot + 1) * 4 + (sameSide ? 2 : 0) + (startsHere ? 1 : 0);
                if (score > bestScore)
                {
                    bestScore = score;
                    nextEdge = eidx;
                }
            }
            if (nextEdge < 0) break;

            // Determine traversal direction: did we enter from (x0,y0) or (x1,y1)?
            int ex0, ey0, ex1, ey1;
            edgeEndpoints(megatex.edges[nextEdge], ex0, ey0, ex1, ey1);
            bool reversedTraversal = !(curX == ex0 && curY == ey0);
            // Flip only when we enter the edge from its x1/y1 end
            // (reversed traversal relative to the endpoint ordering).
            loopDirs.push_back(reversedTraversal ? -1 : 1);

            loop.push_back(nextEdge);
            visited[nextEdge] = 1;
            int nx, ny; otherEndpoint(megatex.edges[nextEdge], curX, curY, nx, ny);
            curEdge = nextEdge;
            prevX = curX; prevY = curY;
            curX = nx; curY = ny;
            if (curX == startKeyX && curY == startKeyY) break; // closed loop
        }

        if (loop.empty()) continue;

        // Assign offsets across the loop
        double acc = 0.0;
        std::vector<int> widths(loop.size(), 0);
        for (size_t k = 0; k < loop.size(); ++k)
        {
            int start = static_cast<int>(std::floor(acc));
            acc += step;
            int next = static_cast<int>(std::floor(acc));
            widths[k] = std::max(1, next - start);
        }

        // Optional: if there exists a straight segment of exactly 3 edges, align it to tile boundary
        // Find first run of exactly 3 consecutive edges with same side value
        int alignShift = 0;
        for (size_t k = 0; k + 2 < loop.size(); ++k)
        {
            const auto &e0 = megatex.edges[loop[k+0]];
            const auto &e1 = megatex.edges[loop[k+1]];
            const auto &e2 = megatex.edges[loop[k+2]];
            if ((e0.side == e1.side) && (e1.side == e2.side))
            {
                // compute offset at start of this triple within the loop
                int localOff = 0;
                for (size_t t = 0; t < k; ++t) localOff += widths[t];
                int absoluteOff = currentOffset + localOff;
                int mod = absoluteOff % 1024;
                if (mod != 0) alignShift = 1024 - mod;
                break;
            }
        }

        currentOffset += alignShift;
        int loopOffset = currentOffset;

        int accumulated = 0;
        for (size_t k = 0; k < loop.size(); ++k)
        {
            int ei = loop[k];
            megatex.edges[ei].xOffsetPixels = loopOffset + accumulated;
            megatex.edges[ei].pixelWidth = widths[k];
            megatex.edges[ei].direction = loopDirs[k];
            accumulated += widths[k];
        }
        currentOffset += accumulated;
    }

    megatex.textureHeight = pixelsPerUnit; // 1024 px = full wall height
    megatex.textureWidth = currentOffset;  // sum of per-edge widths
}

static void buildEdgeLookup()
{
    if (megatex.mapWidth <= 0 || megatex.mapHeight <= 0)
    {
        megatex.edgeLookup.clear();
        return;
    }

    const size_t totalSlots = static_cast<size_t>(megatex.mapWidth) * static_cast<size_t>(megatex.mapHeight) * 4ull;
    megatex.edgeLookup.assign(totalSlots, -1);
    for (size_t i = 0; i < megatex.edges.size(); ++i)
    {
        const WallEdge& edge = megatex.edges[i];
        if (edge.cellX < 0 || edge.cellY < 0 || edge.side < 0 || edge.side > 3)
            continue;
        if (edge.cellX >= megatex.mapWidth || edge.cellY >= megatex.mapHeight)
            continue;
        const size_t idx = (static_cast<size_t>(edge.cellY) * static_cast<size_t>(megatex.mapWidth) + static_cast<size_t>(edge.cellX)) * 4ull + static_cast<size_t>(edge.side);
        if (idx < megatex.edgeLookup.size())
            megatex.edgeLookup[idx] = static_cast<int>(i);
    }
}

//
// Public API
//

bool analyzeMapEdges(const TileMap& tileMap)
{
    if (tileMap.empty() || tileMap[0].empty())
        return false;
    
    megatex.mapHeight = static_cast<int>(tileMap.size());
    megatex.mapWidth = static_cast<int>(tileMap[0].size());
    megatex.edges.clear();
    
    enumerateExposedEdges(tileMap);
    orderEdgesSpatially();
    computeEdgeOffsets(1024);  // 1024 pixels per unit
    buildEdgeLookup();
    ++megatex.version;

    const int estimatedTileWidth = (megatex.tileWidth > 0) ? megatex.tileWidth : 1024;
    int neededTiles = (megatex.textureWidth > 0 && estimatedTileWidth > 0)
        ? (megatex.textureWidth + estimatedTileWidth - 1) / estimatedTileWidth
        : 0;
    MTX_LOG("INFO: Map " << megatex.mapWidth << "x" << megatex.mapHeight
            << ", edges=" << megatex.edges.size()
            << ", stripWidth=" << megatex.textureWidth << "px"
            << ", neededTiles=" << neededTiles);
    
    return !megatex.edges.empty();
}

bool loadRaycastWallTexture(const TileMap& tileMap,
                            const uint8_t* rgba,
                            int sourceWidth,
                            int sourceHeight,
                            int targetWidth,
                            uint8_t wallTile,
                            int side,
                            bool nearestNeighbor)
{
    if (!rgba || sourceWidth <= 0 || sourceHeight <= 0 || targetWidth <= 0 ||
        side < 0 || side > 3 || tileMap.empty() || tileMap[0].empty())
        return false;

    std::vector<std::pair<int, int>> cells;
    for (int y = 0; y < static_cast<int>(tileMap.size()); ++y)
    {
        for (int x = 0; x < static_cast<int>(tileMap[0].size()); ++x)
        {
            if (tileMap[static_cast<size_t>(y)][static_cast<size_t>(x)] == wallTile)
                cells.emplace_back(x, y);
        }
    }
    if (cells.empty())
        return false;

    targetWidth = std::clamp(targetWidth, static_cast<int>(cells.size()), 4096);
    const int targetHeight = std::clamp(static_cast<int>(std::lround(
                                            static_cast<double>(targetWidth) * sourceHeight / sourceWidth)),
                                        1, 4096);
    std::vector<uint8_t> texture(static_cast<size_t>(targetWidth) * targetHeight * 4u);
    for (int y = 0; y < targetHeight; ++y)
    {
        for (int x = 0; x < targetWidth; ++x)
        {
            const size_t targetIndex = (static_cast<size_t>(y) * targetWidth + x) * 4u;
            if (nearestNeighbor)
            {
                const int sourceY = std::min(sourceHeight - 1,
                    static_cast<int>((static_cast<int64_t>(y) * sourceHeight) / targetHeight));
                const int sourceX = std::min(sourceWidth - 1,
                    static_cast<int>((static_cast<int64_t>(x) * sourceWidth) / targetWidth));
                const size_t sourceIndex =
                    (static_cast<size_t>(sourceY) * sourceWidth + sourceX) * 4u;
                std::memcpy(texture.data() + targetIndex, rgba + sourceIndex, 4u);
                continue;
            }

            const double sourceX = ((static_cast<double>(x) + 0.5) * sourceWidth /
                                    targetWidth) - 0.5;
            const double sourceY = ((static_cast<double>(y) + 0.5) * sourceHeight /
                                    targetHeight) - 0.5;
            const int x0 = std::clamp(static_cast<int>(std::floor(sourceX)), 0, sourceWidth - 1);
            const int y0 = std::clamp(static_cast<int>(std::floor(sourceY)), 0, sourceHeight - 1);
            const int x1 = std::min(sourceWidth - 1, x0 + 1);
            const int y1 = std::min(sourceHeight - 1, y0 + 1);
            const double fx = std::clamp(sourceX - std::floor(sourceX), 0.0, 1.0);
            const double fy = std::clamp(sourceY - std::floor(sourceY), 0.0, 1.0);
            for (size_t channel = 0; channel < 4; ++channel)
            {
                const double top =
                    rgba[(static_cast<size_t>(y0) * sourceWidth + x0) * 4u + channel] * (1.0 - fx) +
                    rgba[(static_cast<size_t>(y0) * sourceWidth + x1) * 4u + channel] * fx;
                const double bottom =
                    rgba[(static_cast<size_t>(y1) * sourceWidth + x0) * 4u + channel] * (1.0 - fx) +
                    rgba[(static_cast<size_t>(y1) * sourceWidth + x1) * 4u + channel] * fx;
                texture[targetIndex + channel] = static_cast<uint8_t>(
                    std::clamp(std::lround(top * (1.0 - fy) + bottom * fy), 0l, 255l));
            }
        }
    }

    megatex.mapWidth = static_cast<int>(tileMap[0].size());
    megatex.mapHeight = static_cast<int>(tileMap.size());
    megatex.textureWidth = targetWidth;
    megatex.textureHeight = targetHeight;
    megatex.tileWidth = targetWidth;
    megatex.tileHeight = targetHeight;
    megatex.edges.clear();
    megatex.edges.reserve(cells.size());

    for (size_t i = 0; i < cells.size(); ++i)
    {
        const int begin = static_cast<int>((static_cast<int64_t>(i) * targetWidth) / cells.size());
        const int end = static_cast<int>((static_cast<int64_t>(i + 1u) * targetWidth) / cells.size());
        megatex.edges.push_back({cells[i].first, cells[i].second, side,
                                begin, std::max(1, end - begin), 1});
    }
    buildEdgeLookup();
    megatex.tileCache.clear();
    megatex.tileCache.emplace_back(std::move(texture));
    megatex.loaded = true;
    ++megatex.version;

    MTX_LOG("INFO: Installed wall image " << sourceWidth << "x" << sourceHeight
            << " as " << targetWidth << "x" << targetHeight
            << " (" << (nearestNeighbor ? "nearest" : "bilinear") << ", resampled once)"
            << " across " << cells.size() << " wall cells");
    return true;
}

bool generateMegatextureTilesOnly(const MegatextureParams& params, const std::string& outDir)
{
    if (megatex.edges.empty() || megatex.textureWidth == 0 || megatex.textureHeight == 0)
    {
        std::cerr << "ERROR: No edges found. Call analyzeMapEdges() first.\n";
        return false;
    }

    // Tiles remain 1024×1024, but each tile spans 3 world units horizontally.
    const int tileWidth = 1024;
    const int tileHeight = 1024;
    const int W_px = megatex.textureWidth;     // multiples of 1024
    const int H_px = megatex.textureHeight;    // 1024
    const int numTiles = (W_px + tileWidth - 1) / tileWidth;

    std::cout << "\n=== Megatexture Tile Generation ===\n";
    std::cout << "Strip dimensions: " << W_px << " × " << H_px << " px\n";
    std::cout << "Exposed edges: " << megatex.edges.size() << "\n";
    std::cout << "Tile size: " << tileWidth << " × " << tileHeight << "\n";
    std::cout << "Number of tiles: " << numTiles << "\n";
    std::cout << "Output directory: " << outDir << "/\n";
    std::cout << "Using " << omp_get_max_threads() << " threads per tile...\n\n";

    // Create output directory
    try {
        std::filesystem::create_directories(outDir);
    }
    catch (const std::exception& e) {
        std::cerr << "ERROR: Failed to create directory: " << e.what() << "\n";
        return false;
    }

    // Generate and write tiles one at a time (streaming)
    for (int tileIdx = 0; tileIdx < numTiles; ++tileIdx)
    {
    const int tileU0 = tileIdx * tileWidth;  // Global U start
    const int tileW = std::min(tileWidth, W_px - tileU0);  // Actual width of this tile

        std::cout << "Tile #" << tileIdx << ": u=[" << tileU0 << ".." << (tileU0 + tileW - 1) 
                  << "] (" << tileW << " px wide)...";
        std::cout.flush();

    // Allocate tile buffer (3072×1024 RGBA8)
    std::vector<uint8_t> tile(static_cast<size_t>(tileWidth) * tileHeight * 4, 0);

        // Fill tile in parallel using global coordinates
        #pragma omp parallel for schedule(static) num_threads(omp_get_max_threads())
        for (int y = 0; y < H_px; ++y)
        {
            for (int x = 0; x < tileW; ++x)
            {
                const int u = tileU0 + x;  // Global U coordinate
                const int v = y;           // Global V coordinate
                
                uint32_t rgba = generatePixelVeins(u, v, params);
                
                const size_t idx = (static_cast<size_t>(y) * tileWidth + x) * 4;
                tile[idx + 0] = (rgba >> 0) & 0xFF;   // R
                tile[idx + 1] = (rgba >> 8) & 0xFF;   // G
                tile[idx + 2] = (rgba >> 16) & 0xFF;  // B
                tile[idx + 3] = (rgba >> 24) & 0xFF;  // A
            }
        }

        // Write PNG with zero-padded filename
        std::ostringstream filename;
        filename << outDir << "/tile_" << std::setw(5) << std::setfill('0') << tileIdx << ".png";
        
        try {
            savePNG(filename.str(), tile, tileWidth, tileHeight, true);
            std::cout << " Written.\n";
        }
        catch (const std::exception& e) {
            std::cerr << "\nERROR: Failed to write " << filename.str() << ": " << e.what() << "\n";
            return false;
        }
    }

    std::cout << "\nDone! " << numTiles << " tiles written to " << outDir << "/\n";
    return true;
}

const WallEdge* findWallEdge(int cellX, int cellY, int side)
{
    if (side >= 0 && side <= 3 &&
        cellX >= 0 && cellY >= 0 &&
        cellX < megatex.mapWidth && cellY < megatex.mapHeight &&
        !megatex.edgeLookup.empty())
    {
        const size_t idx = (static_cast<size_t>(cellY) * static_cast<size_t>(megatex.mapWidth) + static_cast<size_t>(cellX)) * 4ull + static_cast<size_t>(side);
        if (idx < megatex.edgeLookup.size())
        {
            const int edgeIdx = megatex.edgeLookup[idx];
            if (edgeIdx >= 0 && static_cast<size_t>(edgeIdx) < megatex.edges.size())
                return &megatex.edges[static_cast<size_t>(edgeIdx)];
        }
    }

    // Fallback linear lookup for safety in edge cases where lookup isn't initialized.
    for (const auto& edge : megatex.edges)
    {
        if (edge.cellX == cellX && edge.cellY == cellY && edge.side == side)
            return &edge;
    }
    return nullptr;
}

MegatextureParams getDefaultMegatextureParams()
{
    MegatextureParams params;
    params.seed = 12345;
    params.mortarWidth = 0.005f;      // Vein thickness in world units
    params.mortarGray = 0.30f;        // Dark gray mortar
    params.wallHeightUnits = 1.0f;    // Default: 1 unit tall per 1 unit wide (square)
    params.perlinOctaves = 2;         // Domain warp octaves
    params.perlinScale = 1.7f;        // Domain warp frequency
    params.worleyScale = 2.0f;        // Vein network density (cells per unit)
    params.worleyStrength = 0.4f;     // Domain warp strength
    return params;
}

/*
===============================================================================

    MTX Format - Custom Megatexture Archive

    Efficient storage for monochrome alpha tiles.
    Uses DEFLATE (zlib) compression on raw RGBA data.
    
    No PNG dependency at runtime - just decompress to raw RGBA for GPU upload.

===============================================================================
*/

#pragma pack(push, 1)
struct MTXHeader
{
    char magic[4];          // "MTX1"
    uint32_t version;       // Format version (2)
    uint32_t tileWidth;     // Tile width in pixels (3072)
    uint32_t tileHeight;    // Tile height in pixels (1024)
    uint32_t tileCount;     // Number of tiles in archive
    uint8_t mortarRGB[3];   // Constant mortar color (R, G, B)
    uint32_t seed;          // Generation seed (for validation)
    uint8_t reserved[40];   // Reserved for future use
};
#pragma pack(pop)

static bool validateMTXHeader(const MTXHeader& header,
                              uint64_t fileSize,
                              bool allowVersion3,
                              int& tileWidth,
                              int& tileHeight,
                              uint64_t& offsetTableBytes)
{
    if (fileSize > static_cast<uint64_t>(std::numeric_limits<std::streamoff>::max()))
        return false;

    if (std::strncmp(header.magic, "MTX1", 4) != 0)
        return false;

    if (header.version != 1 && header.version != 2 && !(allowVersion3 && header.version == 3))
        return false;

    if (header.tileCount == 0 || header.tileCount > 1000000u)
        return false;

    tileWidth = (header.version == 1) ? 1024 : static_cast<int>(header.tileWidth);
    tileHeight = (header.version == 1) ? 1024 : static_cast<int>(header.tileHeight);
    if (tileWidth <= 0 || tileHeight <= 0 || tileWidth > 8192 || tileHeight > 8192)
        return false;

    const uint64_t tileBytes = static_cast<uint64_t>(tileWidth) *
                               static_cast<uint64_t>(tileHeight) * 4ull;
    if (tileBytes == 0 || tileBytes > 512ull * 1024ull * 1024ull)
        return false;

    offsetTableBytes = static_cast<uint64_t>(header.tileCount) * sizeof(uint64_t);
    if (offsetTableBytes / sizeof(uint64_t) != header.tileCount)
        return false;

    const uint64_t minimumSize = static_cast<uint64_t>(sizeof(MTXHeader)) + offsetTableBytes;
    return fileSize >= minimumSize;
}

static bool validateMTXTileChunk(uint64_t tileOffset,
                                 uint32_t compressedSize,
                                 uint64_t fileSize,
                                 size_t expectedTileBytes)
{
    if (compressedSize == 0)
        return false;
    if (tileOffset > fileSize || fileSize - tileOffset < sizeof(uint32_t))
        return false;
    const uint64_t payloadStart = tileOffset + sizeof(uint32_t);
    if (payloadStart > fileSize || fileSize - payloadStart < compressedSize)
        return false;
    const uint64_t maxCompressedBytes = static_cast<uint64_t>(expectedTileBytes) +
                                        static_cast<uint64_t>(expectedTileBytes) / 8ull +
                                        4096ull;
    return compressedSize <= maxCompressedBytes;
}

// DEFLATE-compress raw RGBA data using zlib
// Returns compressed size in bytes, or 0 on error
static size_t compressRGBA(const std::vector<uint8_t>& rgba, std::vector<uint8_t>& outCompressed)
{
    outCompressed.clear();
    if (rgba.empty()) return 0;

    // Allocate worst-case output buffer
    uLongf compressedSize = compressBound(static_cast<uLong>(rgba.size()));
    outCompressed.resize(compressedSize);

    // Compress with zlib (DEFLATE) - level 6 is good balance of speed/size
    int result = compress2(
        outCompressed.data(),
        &compressedSize,
        rgba.data(),
        static_cast<uLong>(rgba.size()),
        6  // Compression level (1=fast, 9=best, 6=default)
    );

    if (result != Z_OK)
    {
        std::cerr << "ERROR: zlib compression failed with code " << result << "\n";
        return 0;
    }

    outCompressed.resize(compressedSize);
    return compressedSize;
}

// Decompress DEFLATE data back to raw RGBA
static bool decompressRGBA(const uint8_t* compressedData, size_t compressedSize,
                          std::vector<uint8_t>& outRGBA, int width, int height)
{
    const size_t expectedSize = static_cast<size_t>(width) * height * 4;
    outRGBA.resize(expectedSize);

    uLongf uncompressedSize = static_cast<uLong>(expectedSize);
    int result = uncompress(
        outRGBA.data(),
        &uncompressedSize,
        compressedData,
        static_cast<uLong>(compressedSize)
    );

    if (result != Z_OK)
    {
        MTX_LOG("ERROR: zlib decompression failed with code " << result);
        return false;
    }

    if (uncompressedSize != expectedSize)
    {
        MTX_LOG("ERROR: Decompressed size mismatch - expected " << expectedSize
                  << " bytes, got " << uncompressedSize);
        return false;
    }

    return true;
}

bool saveMTX(const std::string& mtxPath, const std::string& tilesDir, const MegatextureParams& params)
{
    std::cout << "\n=== Packing MTX Archive ===\n";
    std::cout << "Reading tiles from: " << tilesDir << "/\n";

    // Scan directory for tile PNGs
    std::vector<std::string> tilePaths;
    try {
        for (const auto& entry : std::filesystem::directory_iterator(tilesDir))
        {
            if (entry.is_regular_file())
            {
                std::string filename = entry.path().filename().string();
                if (filename.find("tile_") == 0 && filename.ends_with(".png"))
                {
                    tilePaths.push_back(entry.path().string());
                }
            }
        }
    }
    catch (const std::exception& e) {
        std::cerr << "ERROR: Failed to read tiles directory: " << e.what() << "\n";
        return false;
    }

    if (tilePaths.empty())
    {
        std::cerr << "ERROR: No tile PNGs found in " << tilesDir << "/\n";
        return false;
    }

    // Sort tiles by name to ensure correct order
    std::sort(tilePaths.begin(), tilePaths.end());

    std::cout << "Found " << tilePaths.size() << " tiles.\n";

    // Prepare header
    // Peek first tile to determine dimensions
    int firstW = 0, firstH = 0;
    {
        try {
            std::vector<uint8_t> tmp = loadPNG(tilePaths[0], firstW, firstH);
            (void)tmp;
        } catch (...) {
            std::cerr << "ERROR: Failed to read first tile to determine dimensions.\n";
            return false;
        }
    }

    MTXHeader header = {};
    header.magic[0] = 'M'; header.magic[1] = 'T'; header.magic[2] = 'X'; header.magic[3] = '1';
    header.version = 2;
    header.tileWidth = static_cast<uint32_t>(firstW);
    header.tileHeight = static_cast<uint32_t>(firstH);
    header.tileCount = static_cast<uint32_t>(tilePaths.size());
    
    // Store constant mortar color from params
    const uint8_t grayByte = static_cast<uint8_t>(std::clamp(params.mortarGray, 0.0f, 1.0f) * 255.0f);
    header.mortarRGB[0] = grayByte;
    header.mortarRGB[1] = grayByte;
    header.mortarRGB[2] = grayByte;
    header.seed = params.seed;

    // Open output file
    std::ofstream mtxFile(mtxPath, std::ios::binary);
    if (!mtxFile)
    {
        std::cerr << "ERROR: Failed to create MTX file: " << mtxPath << "\n";
        return false;
    }

    // Write header
    mtxFile.write(reinterpret_cast<const char*>(&header), sizeof(MTXHeader));

    // Allocate offset table (write placeholder, update later)
    const size_t offsetTablePos = mtxFile.tellp();
    std::vector<uint64_t> tileOffsets(header.tileCount, 0);
    mtxFile.write(reinterpret_cast<const char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);

    // Compress and write each tile
    size_t totalOriginalBytes = 0;
    (void)totalOriginalBytes;  // used in final stats

    for (uint32_t i = 0; i < header.tileCount; ++i)
    {
        // Record this tile's offset
        tileOffsets[i] = static_cast<uint64_t>(mtxFile.tellp());

        // Load PNG
        int width = 0, height = 0;
        std::vector<uint8_t> rgba;
        
        try {
            rgba = loadPNG(tilePaths[i], width, height);
        }
        catch (const std::exception& e) {
            std::cerr << "ERROR: Failed to load tile " << i << ": " << e.what() << "\n";
            return false;
        }

        if (width != (int)header.tileWidth || height != (int)header.tileHeight || rgba.size() != (size_t)header.tileWidth * header.tileHeight * 4)
        {
            std::cerr << "ERROR: Tile " << i << " has invalid dimensions (" << width << "×" << height << ")\n";
            return false;
        }

        // DEFLATE-compress raw RGBA
        std::vector<uint8_t> compressedData;
        const size_t compressedSize = compressRGBA(rgba, compressedData);
        
        if (compressedSize == 0)
        {
            std::cerr << "ERROR: Failed to compress tile " << i << "\n";
            return false;
        }

        // Write compressed tile: size (4 bytes) + DEFLATE data
        if (compressedSize > std::numeric_limits<uint32_t>::max())
        {
            std::cerr << "ERROR: Compressed tile " << i << " exceeds MTX chunk size limit\n";
            return false;
        }
        const uint32_t chunkSize = static_cast<uint32_t>(compressedSize);
        mtxFile.write(reinterpret_cast<const char*>(&chunkSize), sizeof(uint32_t));
        mtxFile.write(reinterpret_cast<const char*>(compressedData.data()), compressedSize);

        totalOriginalBytes += rgba.size();

        if ((i + 1) % 100 == 0 || i == header.tileCount - 1)
        {
            std::cout << "  Compressed tile " << (i + 1) << "/" << header.tileCount 
                      << " (" << compressedSize << " bytes)\n";
        }
    }

    // Update offset table
    mtxFile.seekp(offsetTablePos);
    mtxFile.write(reinterpret_cast<const char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);

    mtxFile.close();

    // Report compression stats
    const size_t finalSize = std::filesystem::file_size(mtxPath);
    const float ratio = (totalOriginalBytes > 0) ? (100.0f * finalSize / totalOriginalBytes) : 0.0f;

    std::cout << "\n=== MTX Archive Complete ===\n";
    std::cout << "Output: " << mtxPath << "\n";
    std::cout << "Tiles: " << header.tileCount << "\n";
    std::cout << "Original size: " << (totalOriginalBytes / 1024 / 1024) << " MB (raw RGBA)\n";
    std::cout << "Compressed size: " << (finalSize / 1024) << " KB\n";
    std::cout << "Compression ratio: " << std::fixed << std::setprecision(1) << ratio << "%\n";

    return true;
}

bool decodeMTX(const std::string& mtxPath, const std::string& outDir)
{
    std::cout << "\n=== Decoding MTX Archive ===\n";
    std::cout << "Input: " << mtxPath << "\n";
    std::cout << "Output: " << outDir << "/\n";

    // Open MTX file
    std::ifstream mtxFile(mtxPath, std::ios::binary);
    if (!mtxFile)
    {
        std::cerr << "ERROR: Failed to open MTX file: " << mtxPath << "\n";
        return false;
    }

    // Read header
    MTXHeader header;
    mtxFile.read(reinterpret_cast<char*>(&header), sizeof(MTXHeader));
    if (!mtxFile)
    {
        std::cerr << "ERROR: Failed to read MTX header\n";
        return false;
    }

    // Validate header
    std::error_code sizeError;
    const uint64_t fileSize = std::filesystem::file_size(mtxPath, sizeError);
    int archiveTileWidth = 0;
    int archiveTileHeight = 0;
    uint64_t offsetTableBytes = 0;
    if (sizeError || !validateMTXHeader(header, fileSize, false, archiveTileWidth, archiveTileHeight, offsetTableBytes))
    {
        std::cerr << "ERROR: Invalid or unsupported MTX file\n";
        return false;
    }

    std::cout << "Tiles: " << header.tileCount << "\n";
    std::cout << "Tile size: " << archiveTileWidth << "×" << archiveTileHeight << "\n";
    std::cout << "Mortar RGB: (" << (int)header.mortarRGB[0] << ", " 
              << (int)header.mortarRGB[1] << ", " << (int)header.mortarRGB[2] << ")\n";
    std::cout << "Seed: " << header.seed << "\n\n";

    // Read offset table
    std::vector<uint64_t> tileOffsets(header.tileCount);
    mtxFile.read(reinterpret_cast<char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);
    if (!mtxFile)
    {
        std::cerr << "ERROR: MTX offset table is truncated\n";
        return false;
    }

    // Create output directory
    try {
        std::filesystem::create_directories(outDir);
    }
    catch (const std::exception& e) {
        std::cerr << "ERROR: Failed to create output directory: " << e.what() << "\n";
        return false;
    }

    // Decode each tile
    for (uint32_t i = 0; i < header.tileCount; ++i)
    {
        // Seek to tile data
        if (tileOffsets[i] < sizeof(MTXHeader) + offsetTableBytes || tileOffsets[i] >= fileSize)
        {
            std::cerr << "ERROR: Tile " << i << " has invalid offset\n";
            return false;
        }
        mtxFile.seekg(static_cast<std::streamoff>(tileOffsets[i]));

        // Read compressed size
        uint32_t compressedSize = 0;
        mtxFile.read(reinterpret_cast<char*>(&compressedSize), sizeof(uint32_t));
        const size_t expectedTileBytes = static_cast<size_t>(archiveTileWidth) * static_cast<size_t>(archiveTileHeight) * 4ull;
        if (!mtxFile || !validateMTXTileChunk(tileOffsets[i], compressedSize, fileSize, expectedTileBytes))
        {
            std::cerr << "ERROR: Tile " << i << " has invalid compressed chunk\n";
            return false;
        }

        // Read DEFLATE-compressed data
        std::vector<uint8_t> compressedData(compressedSize);
        mtxFile.read(reinterpret_cast<char*>(compressedData.data()), compressedSize);
        if (!mtxFile)
        {
            std::cerr << "ERROR: Tile " << i << " payload is truncated\n";
            return false;
        }

        // Decompress to RGBA
        std::vector<uint8_t> rgba;
        const int w = archiveTileWidth;
        const int h = archiveTileHeight;
        if (!decompressRGBA(compressedData.data(), compressedData.size(), rgba, w, h))
        {
            std::cerr << "ERROR: Failed to decompress tile " << i << "\n";
            return false;
        }

        // Write PNG
        std::ostringstream filename;
        filename << outDir << "/tile_" << std::setw(5) << std::setfill('0') << i << ".png";

        try {
            savePNG(filename.str(), rgba, archiveTileWidth, archiveTileHeight, true);
        }
        catch (const std::exception& e) {
            std::cerr << "ERROR: Failed to write tile " << i << ": " << e.what() << "\n";
            return false;
        }

        if ((i + 1) % 100 == 0 || i == header.tileCount - 1)
        {
            std::cout << "  Decoded tile " << (i + 1) << "/" << header.tileCount << "\n";
        }
    }

    mtxFile.close();

    std::cout << "\nDone! " << header.tileCount << " tiles written to " << outDir << "/\n";
    return true;
}

bool loadMTX(const std::string& mtxPath)
{
    MTX_LOG("INFO: \n=== Loading MTX Megatexture ===");
    MTX_LOG("INFO: Reading: " << mtxPath);

    // Open MTX file
    std::ifstream mtxFile(mtxPath, std::ios::binary);
    if (!mtxFile)
    {
        MTX_LOG("ERROR: Failed to open MTX file: " << mtxPath);
        return false;
    }

    // Read header
    MTXHeader header;
    mtxFile.read(reinterpret_cast<char*>(&header), sizeof(MTXHeader));
    if (!mtxFile)
    {
        MTX_LOG("ERROR: Failed to read MTX header");
        return false;
    }

    // Validate
    std::error_code sizeError;
    const uint64_t fileSize = std::filesystem::file_size(mtxPath, sizeError);
    int archiveTileWidth = 0;
    int archiveTileHeight = 0;
    uint64_t offsetTableBytes = 0;
    if (sizeError || !validateMTXHeader(header, fileSize, true, archiveTileWidth, archiveTileHeight, offsetTableBytes))
    {
        MTX_LOG("ERROR: Invalid or unsupported MTX file");
        return false;
    }

    // MTX archives are authored at generation resolution.  Keeping every
    // decoded 1024px-high tile resident made large maps consume several GB
    // (and forced the GPU backends to upload the same amount).  Raycast walls
    // cannot use that density at normal display resolutions, so retain a
    // smaller, aspect-correct runtime representation.  The archive remains
    // lossless and unchanged on disk.
    int residentHeight = 256;
    if (config.contains("raycastMegatextureResidentHeight"))
        residentHeight = std::clamp(config["raycastMegatextureResidentHeight"].get<int>(), 128, 1024);
    residentHeight = std::min(residentHeight, archiveTileHeight);
    const double residentScale = static_cast<double>(residentHeight) /
                                 static_cast<double>(archiveTileHeight);
    const int residentWidth = std::max(1, static_cast<int>(
        std::llround(static_cast<double>(archiveTileWidth) * residentScale)));

    // Keep archive-space edge coordinates local until the entire load has
    // succeeded. This makes reloads idempotent and leaves the currently usable
    // cache completely untouched if a retry fails partway through.
    const double toArchiveScale = (megatex.loaded && megatex.tileWidth > 0)
        ? static_cast<double>(archiveTileWidth) / static_cast<double>(megatex.tileWidth)
        : 1.0;
    const int archiveTextureWidth = std::max(0, static_cast<int>(
        std::llround(static_cast<double>(megatex.textureWidth) * toArchiveScale)));
    std::vector<std::pair<int, int>> archiveEdgeRanges;
    archiveEdgeRanges.reserve(megatex.edges.size());
    for (const WallEdge& edge : megatex.edges)
    {
        const int start = static_cast<int>(std::llround(edge.xOffsetPixels * toArchiveScale));
        const int end = static_cast<int>(std::llround(
            (edge.xOffsetPixels + std::max(1, edge.pixelWidth)) * toArchiveScale));
        archiveEdgeRanges.emplace_back(start, std::max(start + 1, end));
    }

    // Determine how many tiles the runtime strip actually needs.
    // computeEdgeOffsets() already set megatex.textureWidth based on the
    // current unitsPerTileX config.  Any tile beyond that range will never
    // be sampled, so we can skip loading it entirely.
    uint32_t tilesToLoad = header.tileCount;
    if (archiveTextureWidth > 0 && archiveTileWidth > 0)
    {
        uint32_t needed = static_cast<uint32_t>(
            (archiveTextureWidth + archiveTileWidth - 1) / archiveTileWidth);
        if (needed < tilesToLoad)
        {
            MTX_LOG("INFO: Strip needs " << needed << " of " << header.tileCount
                      << " tiles (trimming " << (header.tileCount - needed) << ")");
            tilesToLoad = needed;
        }
    }

    MTX_LOG("INFO: Tiles: " << tilesToLoad << " / " << header.tileCount << " (archive)");
    MTX_LOG("INFO: Loading into memory...");

    // Read offset table (full table so we can seek, but only load tilesToLoad)
    std::vector<uint64_t> tileOffsets(header.tileCount);
    mtxFile.read(reinterpret_cast<char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);
    if (!mtxFile)
    {
        MTX_LOG("ERROR: MTX offset table is truncated");
        return false;
    }

    // Decode directly into the final cache. Each worker owns one file handle and
    // one reusable compressed buffer, avoiding a second archive-sized collection
    // of compressed tile vectors at peak load.
    const size_t expectedTileBytes = static_cast<size_t>(archiveTileWidth) *
                                     static_cast<size_t>(archiveTileHeight) * 4ull;
    const size_t residentTileBytes = static_cast<size_t>(residentWidth) *
                                     static_cast<size_t>(residentHeight) * 4ull;
    std::vector<std::vector<uint8_t>> newTileCache(tilesToLoad);
    std::atomic<bool> failed{false};
    constexpr size_t kScratchBudget = 512ull * 1024ull * 1024ull;
    const int scratchLimitedThreads = static_cast<int>(std::max<size_t>(
        1, kScratchBudget / std::max<size_t>(1, expectedTileBytes)));
    const int workerCount = std::max(1, std::min({omp_get_max_threads(),
                                                  scratchLimitedThreads,
                                                  static_cast<int>(tilesToLoad)}));

    // Validate offsets before workers seek independently.
    for (uint32_t i = 0; i < tilesToLoad; ++i)
    {
        if (tileOffsets[i] < sizeof(MTXHeader) + offsetTableBytes || tileOffsets[i] >= fileSize)
        {
            MTX_LOG("ERROR: Tile " << i << " has invalid offset");
            return false;
        }
    }
    mtxFile.close();

#pragma omp parallel num_threads(workerCount)
    {
        std::ifstream workerFile(mtxPath, std::ios::binary);
        std::vector<uint8_t> compressedData;
        std::vector<uint8_t> decodedTile;
        if (!workerFile)
            failed.store(true, std::memory_order_relaxed);

#pragma omp for schedule(static)
        for (int i = 0; i < static_cast<int>(tilesToLoad); ++i)
        {
            if (failed.load(std::memory_order_relaxed))
                continue;

            workerFile.clear();
            workerFile.seekg(static_cast<std::streamoff>(tileOffsets[static_cast<size_t>(i)]));
            uint32_t compressedSize = 0;
            workerFile.read(reinterpret_cast<char*>(&compressedSize), sizeof(compressedSize));
            if (!workerFile || !validateMTXTileChunk(tileOffsets[static_cast<size_t>(i)],
                                                     compressedSize, fileSize, expectedTileBytes))
            {
                failed.store(true, std::memory_order_relaxed);
                continue;
            }
            compressedData.resize(compressedSize);
            workerFile.read(reinterpret_cast<char*>(compressedData.data()), compressedSize);
            if (!workerFile)
            {
                failed.store(true, std::memory_order_relaxed);
                continue;
            }

            bool ok = false;
            if (header.version == 3)
            {
                decodedTile.resize(expectedTileBytes);
                const size_t got = ZSTD_decompress(decodedTile.data(), expectedTileBytes,
                                                   compressedData.data(), compressedData.size());
                ok = (!ZSTD_isError(got) && got == expectedTileBytes);
            }
            else
            {
                ok = decompressRGBA(compressedData.data(), compressedData.size(), decodedTile,
                                    archiveTileWidth, archiveTileHeight);
            }
            if (!ok)
            {
                failed.store(true, std::memory_order_relaxed);
                continue;
            }

            auto &tile = newTileCache[static_cast<size_t>(i)];
            if (residentWidth == archiveTileWidth && residentHeight == archiveTileHeight)
            {
                tile.swap(decodedTile);
                continue;
            }

            // Downsample directly into the final resident cache. Selecting
            // the maximum-alpha source sample preserves thin mortar/crack
            // coverage that averaging would make flicker or disappear.
            tile.assign(residentTileBytes, 0);
            for (int y = 0; y < residentHeight; ++y)
            {
                const int sy0 = y * archiveTileHeight / residentHeight;
                const int sy1 = std::max(sy0 + 1, (y + 1) * archiveTileHeight / residentHeight);
                for (int x = 0; x < residentWidth; ++x)
                {
                    const int sx0 = x * archiveTileWidth / residentWidth;
                    const int sx1 = std::max(sx0 + 1, (x + 1) * archiveTileWidth / residentWidth);
                    size_t best = (static_cast<size_t>(sy0) * archiveTileWidth + sx0) * 4ull;
                    uint8_t bestAlpha = decodedTile[best + 3];
                    for (int sy = sy0; sy < sy1; ++sy)
                    {
                        size_t src = (static_cast<size_t>(sy) * archiveTileWidth + sx0) * 4ull;
                        for (int sx = sx0; sx < sx1; ++sx, src += 4)
                        {
                            if (decodedTile[src + 3] > bestAlpha)
                            {
                                bestAlpha = decodedTile[src + 3];
                                best = src;
                            }
                        }
                    }
                    const size_t dst = (static_cast<size_t>(y) * residentWidth + x) * 4ull;
                    std::memcpy(tile.data() + dst, decodedTile.data() + best, 4);
                }
            }
        }
    }

    if (failed.load(std::memory_order_relaxed))
    {
        MTX_LOG("ERROR: Failed to decompress one or more MTX tiles");
        return false;
    }

    for (uint32_t i = 0; i < tilesToLoad; ++i)
    {
        if ((i + 1) % 500 == 0 || i == tilesToLoad - 1)
        {
            MTX_LOG("INFO: Loaded tile " << (i + 1) << "/" << tilesToLoad);
        }
    }

    // Edge offsets are in the archive's global pixel coordinate space.
    // Scale edge starts and ends independently so neighboring edges remain
    // exactly contiguous after integer rounding (no one-pixel tile seams).
    const double scaleX = static_cast<double>(residentWidth) /
                          static_cast<double>(archiveTileWidth);
    for (size_t i = 0; i < megatex.edges.size(); ++i)
    {
        WallEdge& edge = megatex.edges[i];
        const int archiveStart = archiveEdgeRanges[i].first;
        const int archiveEnd = archiveEdgeRanges[i].second;
        const int residentStart = static_cast<int>(std::llround(archiveStart * scaleX));
        const int residentEnd = static_cast<int>(std::llround(archiveEnd * scaleX));
        edge.xOffsetPixels = residentStart;
        edge.pixelWidth = std::max(1, residentEnd - residentStart);
    }
    megatex.textureWidth = std::max(1, static_cast<int>(std::llround(archiveTextureWidth * scaleX)));
    megatex.textureHeight = residentHeight;
    megatex.tileWidth = residentWidth;
    megatex.tileHeight = residentHeight;
    megatex.tileCache.swap(newTileCache);
    megatex.loaded = true;
    ++megatex.version;
    MTX_LOG("INFO: Megatexture loaded successfully!");
    MTX_LOG("INFO: Runtime tile size: " << residentWidth << "x" << residentHeight
            << " (archive " << archiveTileWidth << "x" << archiveTileHeight << ")");
    const size_t bytesPerTile = static_cast<size_t>(megatex.tileWidth) * megatex.tileHeight * 4;
    MTX_LOG("INFO: Memory usage: ~" << (tilesToLoad * bytesPerTile / 1024 / 1024) << " MB");
    int neededTiles = (megatex.textureWidth > 0 && megatex.tileWidth > 0)
        ? (megatex.textureWidth + megatex.tileWidth - 1) / megatex.tileWidth
        : 0;
    MTX_LOG("INFO: MTX has " << header.tileCount << " tiles, loaded " << tilesToLoad
            << ", strip needs " << neededTiles
            << " (stripWidth=" << megatex.textureWidth << "px)");
    if (static_cast<int>(tilesToLoad) < neededTiles)
        MTX_LOG("WARNING: Not enough tiles! " << (neededTiles - static_cast<int>(tilesToLoad))
                << " tiles short — some walls will be untextured");

    return true;
}

uint32_t sampleMegatexture(int cellX, int cellY, int side, float u, float v)
{
    // If not loaded, return transparent
    if (!megatex.loaded || megatex.tileCache.empty())
        return 0;

    // Find the edge for this wall
    const WallEdge* edge = findWallEdge(cellX, cellY, side);
    if (!edge)
        return 0; // No texture for this wall

    u = std::clamp(u, 0.0f, 1.0f);

    // Apply edge direction so that U increases consistently along world axes
    if (edge->direction < 0)
        u = 1.0f - u;
    u = std::clamp(u, 0.0f, 1.0f);

    // Calculate global U coordinate in the megatexture strip
    // u is [0..1] along the wall, map it to the per-edge pixel width (341/342)
    int edgeW = std::max(1, edge->pixelWidth);
    int localEdgeU = std::clamp(static_cast<int>(u * static_cast<float>(std::max(1, edgeW - 1))), 0, edgeW - 1);
    int pixelU = edge->xOffsetPixels + localEdgeU;
    
    // Clamp v to [0..1]
    v = std::clamp(v, 0.0f, 1.0f);
    int pixelV = std::clamp(static_cast<int>(v * static_cast<float>(std::max(1, megatex.tileHeight - 1))), 0, std::max(0, megatex.tileHeight - 1));

    // Determine which tile this falls into
    if (pixelU < 0 || megatex.tileWidth <= 0 || megatex.tileHeight <= 0)
        return 0;
    int tileIndex = pixelU / megatex.tileWidth;
    int localU = pixelU % megatex.tileWidth;
    int localV = pixelV;

    // Bounds check
    if (tileIndex < 0 || tileIndex >= static_cast<int>(megatex.tileCache.size()))
        return 0;
    
    if (localU < 0 || localU >= megatex.tileWidth || localV < 0 || localV >= megatex.tileHeight)
        return 0;

    // Sample the tile
    const std::vector<uint8_t>& tile = megatex.tileCache[tileIndex];

    if (tile.empty())
        return 0;

    const size_t idx = (static_cast<size_t>(localV) * megatex.tileWidth + localU) * 4;

    if (idx + 3 >= tile.size())
        return 0;

    // Return RGBA as packed uint32 (R, G, B, A in bytes 0,1,2,3)
    return static_cast<uint32_t>(tile[idx]) |
           (static_cast<uint32_t>(tile[idx + 1]) << 8) |
           (static_cast<uint32_t>(tile[idx + 2]) << 16) |
           (static_cast<uint32_t>(tile[idx + 3]) << 24);
}
