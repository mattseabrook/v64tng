#include "megatexture.h"
#include "extract.h"
#include "basement.h"
#include <algorithm>
#include <cmath>
#include <print>
#include <format>
#include <cstdio>
#include <sstream>
#include <iomanip>
#include <fstream>
#include <filesystem>
#include <cstring>
#include <zlib.h>
#include <unordered_map>
#include <thread>
#include <atomic>
#include <mutex>

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
MegatextureState megatex = {
    .edges = {},
    .textureWidth = 0,
    .textureHeight = 0,
    .tileWidth = 1024,
    .tileHeight = 1024,
    .mapWidth = 0,
    .mapHeight = 0,
    .tileData = {},
    .tileCount = 0,
    .bytesPerTile = 0,
    .loaded = false
};

// O(1) edge lookup hash map - built once after analyzeMapEdges()
static std::unordered_map<uint64_t, size_t> g_edgeLookup;

// Pack cell coordinates + side into 64-bit key for O(1) lookup
static inline uint64_t edgeKey(int cellX, int cellY, int side)
{
    // Pack: cellX (32 bits) | cellY (28 bits) | side (4 bits)
    return (static_cast<uint64_t>(static_cast<uint32_t>(cellX)) << 32) |
           (static_cast<uint64_t>(static_cast<uint32_t>(cellY)) << 4) |
           static_cast<uint64_t>(side & 0xF);
}

// Build the hash map after edges are computed
static void buildEdgeLookup()
{
    g_edgeLookup.clear();
    g_edgeLookup.reserve(megatex.edges.size());
    for (size_t i = 0; i < megatex.edges.size(); ++i)
    {
        const auto& e = megatex.edges[i];
        g_edgeLookup[edgeKey(e.cellX, e.cellY, e.side)] = i;
    }
}

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

// Optimized smoothstep for the common case of edge0=0, edge1=1 (no division)
static inline float smoothstep01(float x)
{
    float t = std::clamp(x, 0.0f, 1.0f);
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
    
    // Use optimized smoothstep for (0,1) range - no division
    float u = smoothstep01(sx);
    float v = smoothstep01(sy);
    
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
// OPTIMIZED: Compare squared distances, only compute sqrt once at the end
static void worleyF1F2(float x, float y, float density, uint32_t seed, float &f1, float &f2)
{
    // Scale coordinates by density (cells per unit)
    float X = x * density;
    float Y = y * density;
    int xi = (int)std::floor(X);
    int yi = (int)std::floor(Y);
    float f1sq = 1e18f;  // squared distances
    float f2sq = 1e18f;

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
        if (d2 < f1sq) { f2sq = f1sq; f1sq = d2; }
        else if (d2 < f2sq) { f2sq = d2; }
    }
    // Single sqrt for f1 only; f2 computed as sqrt difference from f1
    f1 = std::sqrt(f1sq);
    f2 = std::sqrt(f2sq);
}

// Generate a single pixel with mortar veins using global coordinates (u, v)
// u = horizontal pixel coordinate in the entire strip (0..textureWidth-1)
// v = vertical pixel coordinate (0..1023)
// Returns RGBA8 packed as uint32_t (R,G,B,A in bytes 0,1,2,3)
// Return mortar coverage in [0,1] at world coords (x,y)
// OPTIMIZED: Removed redundant per-pixel std::max guards (params validated at call site)
static float mortarShapeAt(float x, float y, const MegatextureParams &params)
{
    // Domain warp for organic feel (warpAmp validated upstream)
    float warpAmp = params.worleyStrength;
    float ws = params.perlinScale;
    if (warpAmp > 0.0f)
    {
        // Merged: compute both warp components with offset seeds
        float nx = fbm(x * ws + 31.1f, y * ws + 17.3f, params.perlinOctaves, params.seed);
        float ny = fbm(x * ws + 101.7f, y * ws + 47.9f, params.perlinOctaves, params.seed ^ 0x9E3779B9u);
        x += (nx * 2.0f - 1.0f) * warpAmp * 0.25f;
        y += (ny * 2.0f - 1.0f) * warpAmp * 0.25f;
    }

    float density = params.worleyScale; // cells per unit (validated upstream)
    float f1, f2;
    worleyF1F2(x, y, density, params.seed * 59167u + 123u, f1, f2);
    float ridge = (f2 - f1); // small near edges

    // Desired line thickness in world units (validated upstream)
    float target = params.mortarWidth;
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
    static constexpr float pixelsPerUnitY = 1024.0f;
    static constexpr float unitsPerTileX = 3.0f; // world units per 1024 px horizontally

    // Single center sample - at 1024px resolution, supersampling is unnecessary
    // The Worley noise has sufficient high-frequency detail
    float x = ((static_cast<float>(u) + 0.5f) / 1024.0f) * unitsPerTileX;
    float y = (static_cast<float>(v) + 0.5f) / pixelsPerUnitY;
    float coverage = mortarShapeAt(x, y, params);

    // Convert to alpha; enforce a tiny floor to keep lines continuous at 4K/2K
    float aFloat = std::clamp(coverage, 0.0f, 1.0f);
    const float minVisible = 8.0f / 255.0f; // ensures faint segments don't disappear entirely
    if (aFloat > 0.0f && aFloat < minVisible) aFloat = minVisible;
    uint8_t a = (uint8_t)std::round(aFloat * 255.0f);
    if (a == 0) return 0u;

    uint8_t g = (uint8_t)std::round(std::clamp(params.mortarGray, 0.0f, 1.0f) * 255.0f);
    return ((uint32_t)g << 0) | ((uint32_t)g << 8) | ((uint32_t)g << 16) | ((uint32_t)a << 24);
}

// Apply baked corner ambient occlusion
// localU: [0..1] position along edge
// v: [0..1] position vertically
// cornerU0, cornerU1: true if inside corner exists at that end
// Returns darkening factor [0..1] where 0 = fully shadowed, 1 = no shadow
static inline float cornerAO(float localU, float v, bool cornerU0, bool cornerU1)
{
    float ao = 1.0f;
    
    // AO falloff parameters - tuned for visible effect
    constexpr float AO_RADIUS = 0.25f;     // How far into edge the AO extends (25% of edge width)
    constexpr float AO_STRENGTH = 0.7f;    // Maximum darkening (70%)
    constexpr float AO_V_FALLOFF = 0.4f;   // Vertical falloff start (40% from edges)
    
    if (cornerU0)
    {
        // Distance from U=0 edge
        float distU = localU / AO_RADIUS;
        distU = std::clamp(distU, 0.0f, 1.0f);
        
        // Vertical factor: AO extends full height but fades toward center
        float vCenter = std::abs(v - 0.5f) * 2.0f;  // 0 at center, 1 at edges
        float vFactor = smoothstep01(1.0f - vCenter / AO_V_FALLOFF);  // stronger near floor/ceiling
        vFactor = 0.5f + 0.5f * vFactor;  // minimum 50% even at center
        
        // AO intensity - smoothstep falloff from corner
        float intensity = (1.0f - smoothstep01(distU)) * vFactor;
        ao -= intensity * AO_STRENGTH;
    }
    
    if (cornerU1)
    {
        // Distance from U=1 edge
        float distU = (1.0f - localU) / AO_RADIUS;
        distU = std::clamp(distU, 0.0f, 1.0f);
        
        // Vertical factor
        float vCenter = std::abs(v - 0.5f) * 2.0f;
        float vFactor = smoothstep01(1.0f - vCenter / AO_V_FALLOFF);
        vFactor = 0.5f + 0.5f * vFactor;
        
        float intensity = (1.0f - smoothstep01(distU)) * vFactor;
        ao -= intensity * AO_STRENGTH;
    }
    
    return std::clamp(ao, 0.0f, 1.0f);
}

// Extended version with corner AO baking
// Corner AO is baked as visible darkening even where there's no mortar
static uint32_t generatePixelVeinsWithAO(int u, int v, const MegatextureParams &params,
                                          float localU, bool cornerU0, bool cornerU1)
{
    static constexpr float pixelsPerUnitY = 1024.0f;
    static constexpr float unitsPerTileX = 3.0f;

    float x = ((static_cast<float>(u) + 0.5f) / 1024.0f) * unitsPerTileX;
    float y = (static_cast<float>(v) + 0.5f) / pixelsPerUnitY;
    float mortarCoverage = mortarShapeAt(x, y, params);
    mortarCoverage = std::clamp(mortarCoverage, 0.0f, 1.0f);
    
    // Calculate corner AO (1.0 = no shadow, <1.0 = shadow)
    float ao = cornerAO(localU, static_cast<float>(v) / 1024.0f, cornerU0, cornerU1);
    float aoShadow = 1.0f - ao;  // 0 = no shadow, >0 = shadow amount
    
    // Combine mortar and AO shadow into final alpha
    // AO shadow is rendered as a dark overlay (black with alpha = shadow strength)
    // Mortar is rendered as dark gray with alpha = coverage
    
    if (mortarCoverage > 0.0f || aoShadow > 0.0f)
    {
        // Blend mortar gray with AO black based on their relative contributions
        float mortarAlpha = mortarCoverage;
        float aoAlpha = aoShadow * 0.5f;  // AO max opacity is 50% (visible but not too dark)
        
        // Composite: AO shadow (black) under mortar (gray)
        // Using "over" compositing: result = mortar over AO
        float totalAlpha = mortarAlpha + aoAlpha * (1.0f - mortarAlpha);
        
        if (totalAlpha < 1.0f / 255.0f)
            return 0u;
        
        // Mortar color contribution
        float mortarGray = params.mortarGray;
        // AO color is black (0.0)
        
        // Composite color: (mortarGray * mortarAlpha + 0 * aoAlpha * (1 - mortarAlpha)) / totalAlpha
        float compositeGray = (mortarGray * mortarAlpha) / totalAlpha;
        
        uint8_t gByte = static_cast<uint8_t>(std::round(std::clamp(compositeGray, 0.0f, 1.0f) * 255.0f));
        uint8_t aByte = static_cast<uint8_t>(std::round(std::clamp(totalAlpha, 0.0f, 1.0f) * 255.0f));
        
        return ((uint32_t)gByte << 0) | ((uint32_t)gByte << 8) | ((uint32_t)gByte << 16) | ((uint32_t)aByte << 24);
    }
    
    return 0u;
}

//
// Map analysis helpers
//

static bool isWall(const TileMap& map, int x, int y)
{
    int mapHeight = (int)map.size();
    int mapWidth = (int)map[0].size();
    
    // Out of bounds = wall
    if (y < 0 || y >= mapHeight) return true;
    if (x < 0 || x >= mapWidth) return true;
    
    uint8_t cell = map[y][x];
    
    // 0x01 = wall, 0x00 = empty, 0xF0-0xF3 = player spawn (walkable)
    return (cell == 0x01);
}

static void enumerateExposedEdges(const TileMap& map)
{
    std::vector<WallEdge> tempEdges;
    
    // Helper to check if a perpendicular edge exists (indicating an inside corner)
    // For an inside corner at a vertex, we need:
    // 1. This cell is a wall
    // 2. The adjacent cell in the edge direction is empty (exposed edge exists)
    // 3. The diagonal cell is empty (player can stand there = inside corner)
    auto hasInsideCorner = [&map](int wallX, int wallY, int side, bool atU0) -> bool
    {
        // For each (side, atU0) combination, determine:
        // - Which perpendicular side would share the corner vertex
        // - Which diagonal cell needs to be empty for inside corner
        
        // Geometry reminder:
        // NORTH edge: goes from (x,y) to (x+1,y), faces y-1
        // EAST edge: goes from (x+1,y) to (x+1,y+1), faces x+1  
        // SOUTH edge: goes from (x+1,y+1) to (x,y+1), faces y+1
        // WEST edge: goes from (x,y+1) to (x,y), faces x-1
        
        switch (side)
        {
        case 0: // NORTH edge (y-1 is empty)
            if (atU0) {
                // U=0 is at (x,y) - corner with West edge
                // Inside corner if (x-1,y-1) is empty AND West side is exposed
                return !isWall(map, wallX - 1, wallY) && !isWall(map, wallX - 1, wallY - 1);
            } else {
                // U=1 is at (x+1,y) - corner with East edge
                // Inside corner if (x+1,y-1) is empty AND East side is exposed
                return !isWall(map, wallX + 1, wallY) && !isWall(map, wallX + 1, wallY - 1);
            }
        case 1: // EAST edge (x+1 is empty)
            if (atU0) {
                // U=0 is at (x+1,y) - corner with North edge
                return !isWall(map, wallX, wallY - 1) && !isWall(map, wallX + 1, wallY - 1);
            } else {
                // U=1 is at (x+1,y+1) - corner with South edge
                return !isWall(map, wallX, wallY + 1) && !isWall(map, wallX + 1, wallY + 1);
            }
        case 2: // SOUTH edge (y+1 is empty)
            if (atU0) {
                // U=0 is at (x+1,y+1) - corner with East edge
                return !isWall(map, wallX + 1, wallY) && !isWall(map, wallX + 1, wallY + 1);
            } else {
                // U=1 is at (x,y+1) - corner with West edge
                return !isWall(map, wallX - 1, wallY) && !isWall(map, wallX - 1, wallY + 1);
            }
        case 3: // WEST edge (x-1 is empty)
            if (atU0) {
                // U=0 is at (x,y+1) - corner with South edge
                return !isWall(map, wallX, wallY + 1) && !isWall(map, wallX - 1, wallY + 1);
            } else {
                // U=1 is at (x,y) - corner with North edge
                return !isWall(map, wallX, wallY - 1) && !isWall(map, wallX - 1, wallY - 1);
            }
        }
        return false;
    };
    
    // Scan every cell
    for (int y = 0; y < megatex.mapHeight; y++)
    {
        for (int x = 0; x < megatex.mapWidth; x++)
        {
            if (!isWall(map, x, y)) continue;
            
            // Check all 4 sides (0=North, 1=East, 2=South, 3=West)
            
            // NORTH: neighbor is (x, y-1)
            if (!isWall(map, x, y - 1))
            {
                WallEdge edge;
                edge.cellX = x;
                edge.cellY = y;
                edge.side = 0;
                edge.xOffsetPixels = 0;
                edge.pixelWidth = 0;
                edge.direction = 1;
                edge.hasCornerAtU0 = hasInsideCorner(x, y, 0, true);
                edge.hasCornerAtU1 = hasInsideCorner(x, y, 0, false);
                tempEdges.push_back(edge);
            }
            
            // EAST: neighbor is (x+1, y)
            if (!isWall(map, x + 1, y))
            {
                WallEdge edge;
                edge.cellX = x;
                edge.cellY = y;
                edge.side = 1;
                edge.xOffsetPixels = 0;
                edge.pixelWidth = 0;
                edge.direction = 1;
                edge.hasCornerAtU0 = hasInsideCorner(x, y, 1, true);
                edge.hasCornerAtU1 = hasInsideCorner(x, y, 1, false);
                tempEdges.push_back(edge);
            }
            
            // SOUTH: neighbor is (x, y+1)
            if (!isWall(map, x, y + 1))
            {
                WallEdge edge;
                edge.cellX = x;
                edge.cellY = y;
                edge.side = 2;
                edge.xOffsetPixels = 0;
                edge.pixelWidth = 0;
                edge.direction = -1;
                edge.hasCornerAtU0 = hasInsideCorner(x, y, 2, true);
                edge.hasCornerAtU1 = hasInsideCorner(x, y, 2, false);
                tempEdges.push_back(edge);
            }
            
            // WEST: neighbor is (x-1, y)
            if (!isWall(map, x - 1, y))
            {
                WallEdge edge;
                edge.cellX = x;
                edge.cellY = y;
                edge.side = 3;
                edge.xOffsetPixels = 0;
                edge.pixelWidth = 0;
                edge.direction = -1;
                edge.hasCornerAtU0 = hasInsideCorner(x, y, 3, true);
                edge.hasCornerAtU1 = hasInsideCorner(x, y, 3, false);
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
        case 0: // North: (x,y) -> (x+1,y)
            x0 = e.cellX;     y0 = e.cellY;
            x1 = e.cellX + 1; y1 = e.cellY;
            break;
        case 1: // East: (x+1,y) -> (x+1,y+1)
            x0 = e.cellX + 1; y0 = e.cellY;
            x1 = e.cellX + 1; y1 = e.cellY + 1;
            break;
        case 2: // South: (x+1,y+1) -> (x,y+1)
            x0 = e.cellX + 1; y0 = e.cellY + 1;
            x1 = e.cellX;     y1 = e.cellY + 1;
            break;
        default: // West: (x,y+1) -> (x,y)
            x0 = e.cellX;     y0 = e.cellY + 1;
            x1 = e.cellX;     y1 = e.cellY;
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
    const double step = 1024.0 / 3.0; // pixels per unit horizontally

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
        int sx0, sy0, sx1, sy1; edgeEndpoints(megatex.edges[si], sx0, sy0, sx1, sy1);
        int startKeyX = sx0, startKeyY = sy0;
        int curEdge = static_cast<int>(si);
        int curX = sx1, curY = sy1; // move from first edge's start to its end
        loop.push_back(curEdge);
        visited[curEdge] = 1;

        // Walk until we return to start point or cannot continue
        while (true)
        {
            auto it = adj.find(packKey(curX, curY));
            if (it == adj.end()) break;
            int nextEdge = -1;
            for (int eidx : it->second)
            {
                if (eidx != curEdge && !visited[eidx]) { nextEdge = eidx; break; }
            }
            if (nextEdge < 0) break;
            loop.push_back(nextEdge);
            visited[nextEdge] = 1;
            int nx, ny; otherEndpoint(megatex.edges[nextEdge], curX, curY, nx, ny);
            curEdge = nextEdge;
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
            accumulated += widths[k];
        }
        currentOffset += accumulated;
    }

    megatex.textureHeight = pixelsPerUnit; // 1024 px = full wall height
    megatex.textureWidth = currentOffset;  // sum of per-edge widths
}

//
// Public API
//

bool analyzeMapEdges(const TileMap& map)
{
    megatex.mapHeight = static_cast<int>(map.size());
    megatex.mapWidth = static_cast<int>(map[0].size());
    megatex.edges.clear();
    g_edgeLookup.clear();
    
    enumerateExposedEdges(map);
    orderEdgesSpatially();
    computeEdgeOffsets(1024);  // 1024 pixels per unit
    
    // Build O(1) lookup hash map
    buildEdgeLookup();
    
    return !megatex.edges.empty();
}

// Validate and clamp parameters to safe ranges (call once before generation)
static MegatextureParams validateParams(const MegatextureParams& p)
{
    MegatextureParams v = p;
    v.mortarWidth = std::max(0.0005f, v.mortarWidth);
    v.mortarGray = std::clamp(v.mortarGray, 0.0f, 1.0f);
    v.perlinOctaves = std::max(1, v.perlinOctaves);
    v.perlinScale = std::max(0.001f, v.perlinScale);
    v.worleyScale = std::max(0.001f, v.worleyScale);
    v.worleyStrength = std::max(0.0f, v.worleyStrength);
    return v;
}

bool generateMegatextureTilesOnly(const MegatextureParams& params, const std::string& outDir)
{
    if (megatex.edges.empty() || megatex.textureWidth == 0 || megatex.textureHeight == 0)
    {
        std::println(stderr, "ERROR: No edges found. Call analyzeMapEdges() first.");
        return false;
    }

    // Validate params once at API boundary (avoids per-pixel checks)
    const MegatextureParams validParams = validateParams(params);

    // Tiles remain 1024×1024, but each tile spans 3 world units horizontally.
    const int tileWidth = 1024;
    const int tileHeight = 1024;
    const int W_px = megatex.textureWidth;     // multiples of 1024
    const int H_px = megatex.textureHeight;    // 1024
    const int numTiles = (W_px + tileWidth - 1) / tileWidth;

    const unsigned int numThreads = std::thread::hardware_concurrency();
    std::println("\n=== Megatexture Tile Generation ===");
    std::println("Strip dimensions: {} × {} px", W_px, H_px);
    std::println("Exposed edges: {}", megatex.edges.size());
    std::println("Tile size: {} × {}", tileWidth, tileHeight);
    std::println("Number of tiles: {}", numTiles);
    std::println("Output directory: {}/", outDir);
    std::println("Using {} threads per tile...", numThreads);
    
    // Build per-column edge lookup for corner AO
    // For each global U column, store: edge index, localU, corner flags
    struct ColumnEdgeInfo {
        float localU;        // [0..1] within edge
        bool cornerU0;
        bool cornerU1;
    };
    std::vector<ColumnEdgeInfo> columnEdgeMap(W_px);
    
    // Pre-compute edge info for each column
    {
        size_t edgeIdx = 0;
        int currentEnd = 0;
        for (size_t i = 0; i < megatex.edges.size(); ++i)
        {
            const auto& edge = megatex.edges[i];
            int start = edge.xOffsetPixels;
            int end = start + edge.pixelWidth;
            
            for (int u = start; u < end && u < W_px; ++u)
            {
                float localU = static_cast<float>(u - start) / static_cast<float>(std::max(1, edge.pixelWidth));
                columnEdgeMap[u] = { localU, edge.hasCornerAtU0, edge.hasCornerAtU1 };
            }
        }
    }
    
    std::println("Corner AO lookup built for {} columns.\n", W_px);

    // Create output directory
    try {
        std::filesystem::create_directories(outDir);
    }
    catch (const std::exception& e) {
        std::println(stderr, "ERROR: Failed to create directory: {}", e.what());
        return false;
    }

    // Generate and write tiles one at a time (streaming)
    for (int tileIdx = 0; tileIdx < numTiles; ++tileIdx)
    {
    const int tileU0 = tileIdx * tileWidth;  // Global U start
    const int tileW = std::min(tileWidth, W_px - tileU0);  // Actual width of this tile

        std::print("Tile #{}: u=[{}..{}] ({} px wide)...", tileIdx, tileU0, tileU0 + tileW - 1, tileW);
        std::fflush(stdout);

    // Allocate tile buffer (1024×1024 RGBA8)
    std::vector<uint8_t> tile(static_cast<size_t>(tileWidth) * tileHeight * 4, 0);

        // Fill tile in parallel using hand-written threading
        {
            const int rowsPerThread = (H_px + static_cast<int>(numThreads) - 1) / static_cast<int>(numThreads);
            std::vector<std::jthread> workers;
            workers.reserve(numThreads);
            
            for (unsigned int t = 0; t < numThreads; ++t)
            {
                const int yStart = static_cast<int>(t) * rowsPerThread;
                const int yEnd = std::min(yStart + rowsPerThread, H_px);
                
                if (yStart >= H_px) break;
                
                workers.emplace_back([&tile, &validParams, &columnEdgeMap, tileU0, tileW, tileWidth, yStart, yEnd]()
                {
                    for (int y = yStart; y < yEnd; ++y)
                    {
                        for (int x = 0; x < tileW; ++x)
                        {
                            const int u = tileU0 + x;  // Global U coordinate
                            const int v = y;           // Global V coordinate
                            
                            // Lookup corner AO info for this column
                            const auto& colInfo = columnEdgeMap[u];
                            uint32_t rgba = generatePixelVeinsWithAO(u, v, validParams,
                                                                      colInfo.localU,
                                                                      colInfo.cornerU0,
                                                                      colInfo.cornerU1);
                            
                            const size_t idx = (static_cast<size_t>(y) * tileWidth + x) * 4;
                            tile[idx + 0] = static_cast<uint8_t>((rgba >> 0) & 0xFF);   // R
                            tile[idx + 1] = static_cast<uint8_t>((rgba >> 8) & 0xFF);   // G
                            tile[idx + 2] = static_cast<uint8_t>((rgba >> 16) & 0xFF);  // B
                            tile[idx + 3] = static_cast<uint8_t>((rgba >> 24) & 0xFF);  // A
                        }
                    }
                });
            }
            // jthread destructor auto-joins
        }

        // Write PNG with zero-padded filename
        std::ostringstream filename;
        filename << outDir << "/tile_" << std::setw(5) << std::setfill('0') << tileIdx << ".png";
        
        try {
            savePNG(filename.str(), tile, tileWidth, tileHeight, true);
            std::println(" Written.");
        }
        catch (const std::exception& e) {
            std::println(stderr, "\nERROR: Failed to write {}: {}", filename.str(), e.what());
            return false;
        }
    }

    std::println("\nDone! {} tiles written to {}/", numTiles, outDir);
    return true;
}

const WallEdge* findWallEdge(int cellX, int cellY, int side)
{
    // O(1) hash map lookup instead of O(n) linear search
    auto it = g_edgeLookup.find(edgeKey(cellX, cellY, side));
    if (it != g_edgeLookup.end())
        return &megatex.edges[it->second];
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
        std::println(stderr, "ERROR: zlib compression failed with code {}", result);
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
        std::println(stderr, "ERROR: zlib decompression failed with code {}", result);
        return false;
    }

    if (uncompressedSize != expectedSize)
    {
        std::println(stderr, "ERROR: Decompressed size mismatch - expected {} bytes, got {}", expectedSize, uncompressedSize);
        return false;
    }

    return true;
}

bool saveMTX(const std::string& mtxPath, const std::string& tilesDir, const MegatextureParams& params)
{
    std::println("\n=== Packing MTX Archive ===");
    std::println("Reading tiles from: {}/", tilesDir);

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
        std::println(stderr, "ERROR: Failed to read tiles directory: {}", e.what());
        return false;
    }

    if (tilePaths.empty())
    {
        std::println(stderr, "ERROR: No tile PNGs found in {}/", tilesDir);
        return false;
    }

    // Sort tiles by name to ensure correct order
    std::sort(tilePaths.begin(), tilePaths.end());

    std::println("Found {} tiles.", tilePaths.size());

    // Prepare header
    // Peek first tile to determine dimensions
    int firstW = 0, firstH = 0;
    {
        try {
            std::vector<uint8_t> tmp = loadPNG(tilePaths[0], firstW, firstH);
            (void)tmp;
        } catch (...) {
            std::println(stderr, "ERROR: Failed to read first tile to determine dimensions.");
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
        std::println(stderr, "ERROR: Failed to create MTX file: {}", mtxPath);
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
    size_t totalCompressedBytes = 0;

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
            std::println(stderr, "ERROR: Failed to load tile {}: {}", i, e.what());
            return false;
        }

        if (width != (int)header.tileWidth || height != (int)header.tileHeight || rgba.size() != (size_t)header.tileWidth * header.tileHeight * 4)
        {
            std::println(stderr, "ERROR: Tile {} has invalid dimensions ({}×{})", i, width, height);
            return false;
        }

        // DEFLATE-compress raw RGBA
        std::vector<uint8_t> compressedData;
        const size_t compressedSize = compressRGBA(rgba, compressedData);
        
        if (compressedSize == 0)
        {
            std::println(stderr, "ERROR: Failed to compress tile {}", i);
            return false;
        }

        // Write compressed tile: size (4 bytes) + DEFLATE data
        const uint32_t chunkSize = static_cast<uint32_t>(compressedSize);
        mtxFile.write(reinterpret_cast<const char*>(&chunkSize), sizeof(uint32_t));
        mtxFile.write(reinterpret_cast<const char*>(compressedData.data()), compressedSize);

        totalOriginalBytes += rgba.size();
        totalCompressedBytes += compressedSize + sizeof(uint32_t);

        if ((i + 1) % 100 == 0 || i == header.tileCount - 1)
        {
            std::println("  Compressed tile {}/{} ({} bytes)", i + 1, header.tileCount, compressedSize);
        }
    }

    // Update offset table
    mtxFile.seekp(offsetTablePos);
    mtxFile.write(reinterpret_cast<const char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);

    mtxFile.close();

    // Report compression stats
    const size_t finalSize = std::filesystem::file_size(mtxPath);
    const float ratio = (totalOriginalBytes > 0) ? (100.0f * finalSize / totalOriginalBytes) : 0.0f;

    std::println("\n=== MTX Archive Complete ===");
    std::println("Output: {}", mtxPath);
    std::println("Tiles: {}", header.tileCount);
    std::println("Original size: {} MB (raw RGBA)", totalOriginalBytes / 1024 / 1024);
    std::println("Compressed size: {} KB", finalSize / 1024);
    std::println("Compression ratio: {:.1f}%", ratio);

    return true;
}

bool decodeMTX(const std::string& mtxPath, const std::string& outDir)
{
    std::println("\n=== Decoding MTX Archive ===");
    std::println("Input: {}", mtxPath);
    std::println("Output: {}/", outDir);

    // Open MTX file
    std::ifstream mtxFile(mtxPath, std::ios::binary);
    if (!mtxFile)
    {
        std::println(stderr, "ERROR: Failed to open MTX file: {}", mtxPath);
        return false;
    }

    // Read header
    MTXHeader header;
    mtxFile.read(reinterpret_cast<char*>(&header), sizeof(MTXHeader));

    // Validate header
    if (std::strncmp(header.magic, "MTX1", 4) != 0)
    {
        std::println(stderr, "ERROR: Invalid MTX file (bad magic)");
        return false;
    }

    if (header.version != 1 && header.version != 2)
    {
        std::println(stderr, "ERROR: Unsupported MTX version: {}", header.version);
        return false;
    }

    std::println("Tiles: {}", header.tileCount);
    if (header.version == 1)
        std::println("Tile size: 1024×1024");
    else
        std::println("Tile size: {}×{}", header.tileWidth, header.tileHeight);
    std::println("Mortar RGB: ({}, {}, {})", (int)header.mortarRGB[0], (int)header.mortarRGB[1], (int)header.mortarRGB[2]);
    std::println("Seed: {}\n", header.seed);

    // Read offset table
    std::vector<uint64_t> tileOffsets(header.tileCount);
    mtxFile.read(reinterpret_cast<char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);

    // Create output directory
    try {
        std::filesystem::create_directories(outDir);
    }
    catch (const std::exception& e) {
        std::println(stderr, "ERROR: Failed to create output directory: {}", e.what());
        return false;
    }

    // Decode each tile
    for (uint32_t i = 0; i < header.tileCount; ++i)
    {
        // Seek to tile data
        mtxFile.seekg(tileOffsets[i]);

        // Read compressed size
        uint32_t compressedSize = 0;
        mtxFile.read(reinterpret_cast<char*>(&compressedSize), sizeof(uint32_t));

        // Read DEFLATE-compressed data
        std::vector<uint8_t> compressedData(compressedSize);
        mtxFile.read(reinterpret_cast<char*>(compressedData.data()), compressedSize);

        // Decompress to RGBA
        std::vector<uint8_t> rgba;
        const int w = (header.version == 1) ? 1024 : (int)header.tileWidth;
        const int h = (header.version == 1) ? 1024 : (int)header.tileHeight;
        if (!decompressRGBA(compressedData.data(), compressedData.size(), rgba, w, h))
        {
            std::println(stderr, "ERROR: Failed to decompress tile {}", i);
            return false;
        }

        // Write PNG
        std::ostringstream filename;
        filename << outDir << "/tile_" << std::setw(5) << std::setfill('0') << i << ".png";

        try {
            const int wOut = (header.version == 1) ? 1024 : (int)header.tileWidth;
            const int hOut = (header.version == 1) ? 1024 : (int)header.tileHeight;
            savePNG(filename.str(), rgba, wOut, hOut, true);
        }
        catch (const std::exception& e) {
            std::println(stderr, "ERROR: Failed to write tile {}: {}", i, e.what());
            return false;
        }

        if ((i + 1) % 100 == 0 || i == header.tileCount - 1)
        {
            std::println("  Decoded tile {}/{}", i + 1, header.tileCount);
        }
    }

    mtxFile.close();

    std::println("\nDone! {} tiles written to {}/", header.tileCount, outDir);
    return true;
}

bool loadMTX(const std::string& mtxPath)
{
    std::println("\n=== Loading MTX Megatexture ===");
    std::println("Reading: {}", mtxPath);

    // Open MTX file
    std::ifstream mtxFile(mtxPath, std::ios::binary);
    if (!mtxFile)
    {
        std::println(stderr, "ERROR: Failed to open MTX file: {}", mtxPath);
        return false;
    }

    // Read header
    MTXHeader header;
    mtxFile.read(reinterpret_cast<char*>(&header), sizeof(MTXHeader));

    // Validate
    if (std::strncmp(header.magic, "MTX1", 4) != 0)
    {
        std::println(stderr, "ERROR: Invalid MTX file (bad magic)");
        return false;
    }

    // Fill state tile dimensions
    if (header.version == 1) {
        megatex.tileWidth = 1024;
        megatex.tileHeight = 1024;
    } else {
        megatex.tileWidth = static_cast<int>(header.tileWidth);
        megatex.tileHeight = static_cast<int>(header.tileHeight);
    }
    
    megatex.tileCount = header.tileCount;
    megatex.bytesPerTile = static_cast<size_t>(megatex.tileWidth) * megatex.tileHeight * 4;
    
    const unsigned int numThreads = std::thread::hardware_concurrency();
    std::println("Tiles: {}", header.tileCount);
    std::println("Parallel decompression with {} threads...", numThreads);

    // Read offset table
    std::vector<uint64_t> tileOffsets(header.tileCount);
    mtxFile.read(reinterpret_cast<char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);

    // PHASE 1: Read ALL compressed data into memory (sequential I/O is fast)
    struct CompressedTile {
        std::vector<uint8_t> data;
    };
    std::vector<CompressedTile> compressedTiles(header.tileCount);
    
    for (uint32_t i = 0; i < header.tileCount; ++i)
    {
        mtxFile.seekg(tileOffsets[i]);
        
        uint32_t compressedSize = 0;
        mtxFile.read(reinterpret_cast<char*>(&compressedSize), sizeof(uint32_t));
        
        compressedTiles[i].data.resize(compressedSize);
        mtxFile.read(reinterpret_cast<char*>(compressedTiles[i].data.data()), compressedSize);
    }
    mtxFile.close();
    
    std::println("  Read {} compressed tiles from disk", header.tileCount);

    // PHASE 2: Allocate contiguous memory pool for all tiles (single allocation)
    const size_t totalBytes = megatex.bytesPerTile * header.tileCount;
    megatex.tileData.resize(totalBytes);
    std::println("  Allocated {} MB contiguous memory", totalBytes / 1024 / 1024);

    // PHASE 3: Parallel decompression with hand-written threading
    std::atomic<uint32_t> nextTile{0};
    std::atomic<uint32_t> completedTiles{0};
    std::atomic<bool> hasError{false};
    
    auto decompressWorker = [&]()
    {
        while (!hasError.load(std::memory_order_relaxed))
        {
            // Grab next tile atomically
            uint32_t tileIdx = nextTile.fetch_add(1, std::memory_order_relaxed);
            if (tileIdx >= header.tileCount)
                break;
            
            // Decompress directly into contiguous pool (zero intermediate allocation)
            uint8_t* destPtr = megatex.getTileMutable(tileIdx);
            uLongf uncompressedSize = static_cast<uLong>(megatex.bytesPerTile);
            
            int result = uncompress(
                destPtr,
                &uncompressedSize,
                compressedTiles[tileIdx].data.data(),
                static_cast<uLong>(compressedTiles[tileIdx].data.size())
            );
            
            if (result != Z_OK || uncompressedSize != megatex.bytesPerTile)
            {
                hasError.store(true, std::memory_order_relaxed);
                return;
            }
            
            // Free compressed data immediately after decompression (reduce peak memory)
            compressedTiles[tileIdx].data.clear();
            compressedTiles[tileIdx].data.shrink_to_fit();
            
            uint32_t completed = completedTiles.fetch_add(1, std::memory_order_relaxed) + 1;
            if (completed % 500 == 0 || completed == header.tileCount)
            {
                // Progress output (safe from any thread since it's just stdout)
            }
        }
    };
    
    // Launch worker threads
    std::vector<std::jthread> workers;
    workers.reserve(numThreads);
    for (unsigned int t = 0; t < numThreads; ++t)
    {
        workers.emplace_back(decompressWorker);
    }
    
    // Wait for all workers (jthread destructor auto-joins)
    workers.clear();
    
    if (hasError.load())
    {
        std::println(stderr, "ERROR: Failed to decompress one or more tiles");
        return false;
    }
    
    std::println("  Decompressed {} tiles in parallel", header.tileCount);

    megatex.loaded = true;
    std::println("Megatexture loaded successfully!");
    std::println("Memory usage: {} MB (contiguous)\n", totalBytes / 1024 / 1024);

    return true;
}

uint32_t sampleMegatexture(int cellX, int cellY, int side, float u, float v)
{
    // If not loaded, return transparent
    if (!megatex.loaded || megatex.tileData.empty())
        return 0;

    // Find the edge for this wall (O(1) hash lookup)
    const WallEdge* edge = findWallEdge(cellX, cellY, side);
    if (!edge)
        return 0; // No texture for this wall

    // Apply edge direction so that U increases consistently along world axes
    if (edge->direction < 0)
        u = 1.0f - u;

    // Calculate global U coordinate in the megatexture strip
    // u is [0..1] along the wall, map it to the per-edge pixel width (341/342)
    const int edgeW = std::max(1, edge->pixelWidth);
    const float globalU = static_cast<float>(edge->xOffsetPixels) + u * static_cast<float>(edgeW);
    
    // Clamp v to [0..1]
    const float clampedV = std::clamp(v, 0.0f, 1.0f);
    const float globalV = clampedV * 1024.0f; // vertical: 1024 px = 1 wall unit

    // Convert to integer pixel coordinates
    const int pixelU = static_cast<int>(globalU);
    const int pixelV = static_cast<int>(globalV);

    // Determine which tile this falls into
    const size_t tileIndex = static_cast<size_t>(pixelU / megatex.tileWidth);
    const int localU = pixelU % megatex.tileWidth;
    const int localV = pixelV;

    // Bounds check
    if (tileIndex >= megatex.tileCount)
        return 0;
    
    if (localU < 0 || localU >= megatex.tileWidth || localV < 0 || localV >= megatex.tileHeight)
        return 0;

    // Sample from contiguous memory pool (zero-copy access)
    const uint8_t* tile = megatex.getTile(tileIndex);
    const size_t idx = (static_cast<size_t>(localV) * megatex.tileWidth + localU) * 4;

    // Return RGBA as packed uint32 (R, G, B, A in bytes 0,1,2,3)
    return static_cast<uint32_t>(tile[idx]) |
           (static_cast<uint32_t>(tile[idx + 1]) << 8) |
           (static_cast<uint32_t>(tile[idx + 2]) << 16) |
           (static_cast<uint32_t>(tile[idx + 3]) << 24);
}
