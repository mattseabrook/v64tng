#include "megatexture.h"
#include "extract.h"
#include <algorithm>
#include <cmath>
#include <iostream>
#include <sstream>
#include <iomanip>
#include <filesystem>
#include <omp.h>

// Undefine Windows min/max macros that conflict with std::min/std::max
#ifdef min
#undef min
#endif
#ifdef max
#undef max
#endif

/*
===============================================================================

    Procedural Megatexture Generation

    Pure functional/procedural implementation.
    Streaming tile-based generation with no full-strip allocation.
    
    NOTE: Megatexture is conceptually one seamless 1024×W strip.
    We *only* generate and write 1024×1024 tiles, streaming, to avoid huge memory.
    Seamlessness is guaranteed because generatePixelVeins(u,v) uses global (u,v).
    No preview/combined PNG by design.

===============================================================================
*/

// Global megatexture state
MegatextureState megatex = {};

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
static uint32_t generatePixelVeins(int u, int v, const MegatextureParams &params)
{
    // Convert pixel coordinates to world units (1 unit = 1024 pixels, wall height = 1 unit)
    const float pixelsPerUnit = 1024.0f;
    float x = (float)u / pixelsPerUnit;
    float y = (float)v / pixelsPerUnit;

    // Domain warp to make the vein network more organic
    float warpAmp = std::max(0.0f, params.worleyStrength);
    float ws = std::max(0.001f, params.perlinScale);
    if (warpAmp > 0.0f)
    {
        float nx = fbm(x * ws + 31.1f, y * ws + 17.3f, std::max(1, params.perlinOctaves), params.seed);
        float ny = fbm(x * ws + 101.7f, y * ws + 47.9f, std::max(1, params.perlinOctaves), params.seed ^ 0x9E3779B9u);
        // remap -1..1
        nx = nx * 2.0f - 1.0f;
        ny = ny * 2.0f - 1.0f;
        x += nx * warpAmp * 0.25f;
        y += ny * warpAmp * 0.25f;
    }

    // Worley-based veins: ridges where F2-F1 is small (near cell boundaries)
    float density = std::max(0.001f, params.worleyScale); // cells per unit
    float f1, f2;
    worleyF1F2(x, y, density, params.seed * 59167u + 123u, f1, f2);
    float ridge = (f2 - f1); // small near edges

    // Control mortar width using mortarWidth ~ desired line thickness in world units
    float target = std::max(0.0005f, params.mortarWidth);
    float th0 = target * 0.25f;
    float th1 = target * 0.75f;
    float m = 1.0f - smoothstep(th0, th1, ridge); // 1 on vein center, 0 outside
    m = std::clamp(m, 0.0f, 1.0f);

    // Softening/shaping to keep lines rounded
    float shape = std::pow(m, 0.8f);

    // Output only the mortar lines; everything else fully transparent
    uint8_t a = (uint8_t)std::round(shape * 255.0f);
    if (a == 0)
        return 0u; // transparent pixel (R=0, G=0, B=0, A=0)

    float gflt = std::clamp(params.mortarGray, 0.0f, 1.0f);
    uint8_t g = (uint8_t)std::round(gflt * 255.0f);
    
    // Pack as RGBA (byte order: R, G, B, A)
    return ((uint32_t)g << 0) | ((uint32_t)g << 8) | ((uint32_t)g << 16) | ((uint32_t)a << 24);
}

//
// Map analysis helpers
//

static bool isWall(const std::vector<std::vector<uint8_t>>& map, int x, int y)
{
    int mapHeight = (int)map.size();
    if (mapHeight == 0) return true;
    int mapWidth = (int)map[0].size();
    
    // Out of bounds = wall
    if (y < 0 || y >= mapHeight) return true;
    if (x < 0 || x >= mapWidth) return true;
    
    uint8_t cell = map[y][x];
    
    // 0x01 = wall, 0x00 = empty, 0xF0-0xF3 = player spawn (walkable)
    return (cell == 0x01);
}

static void enumerateExposedEdges(const std::vector<std::vector<uint8_t>>& map)
{
    std::vector<WallEdge> tempEdges;
    
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
                edge.direction = 1;
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
                edge.direction = 1;
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
                edge.direction = 1;
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

static void computeEdgeOffsets(int pixelsPerUnit)
{
    int currentOffset = 0;
    
    for (auto& edge : megatex.edges)
    {
        edge.xOffsetPixels = currentOffset;
        currentOffset += pixelsPerUnit;
    }
    
    megatex.textureHeight = pixelsPerUnit;
    megatex.textureWidth = currentOffset;
}

//
// Public API
//

bool analyzeMapEdges(const std::vector<std::vector<uint8_t>>& map)
{
    if (map.empty() || map[0].empty())
        return false;
    
    megatex.mapHeight = (int)map.size();
    megatex.mapWidth = (int)map[0].size();
    megatex.edges.clear();
    
    enumerateExposedEdges(map);
    orderEdgesSpatially();
    computeEdgeOffsets(1024);  // 1024 pixels per unit
    
    return !megatex.edges.empty();
}

bool generateMegatextureTilesOnly(const MegatextureParams& params, const std::string& outDir)
{
    if (megatex.edges.empty() || megatex.textureWidth == 0 || megatex.textureHeight == 0)
    {
        std::cerr << "ERROR: No edges found. Call analyzeMapEdges() first.\n";
        return false;
    }

    const int tileSize = 1024;
    const int W_px = megatex.textureWidth;
    const int H_px = megatex.textureHeight;  // Always 1024
    const int numTiles = (W_px + tileSize - 1) / tileSize;

    std::cout << "\n=== Megatexture Tile Generation ===\n";
    std::cout << "Strip dimensions: " << W_px << " × " << H_px << " px\n";
    std::cout << "Exposed edges: " << megatex.edges.size() << "\n";
    std::cout << "Tile size: " << tileSize << " × " << tileSize << "\n";
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
        const int tileU0 = tileIdx * tileSize;  // Global U start
        const int tileW = std::min(tileSize, W_px - tileU0);  // Actual width of this tile

        std::cout << "Tile #" << tileIdx << ": u=[" << tileU0 << ".." << (tileU0 + tileW - 1) 
                  << "] (" << tileW << " px wide)...";
        std::cout.flush();

        // Allocate tile buffer (always 1024×1024 RGBA8)
        std::vector<uint8_t> tile(static_cast<size_t>(tileSize) * tileSize * 4, 0);

        // Fill tile in parallel using global coordinates
        #pragma omp parallel for schedule(static) num_threads(omp_get_max_threads())
        for (int y = 0; y < H_px; ++y)
        {
            for (int x = 0; x < tileW; ++x)
            {
                const int u = tileU0 + x;  // Global U coordinate
                const int v = y;           // Global V coordinate
                
                uint32_t rgba = generatePixelVeins(u, v, params);
                
                const size_t idx = (static_cast<size_t>(y) * tileSize + x) * 4;
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
            savePNG(filename.str(), tile, tileSize, tileSize, true);
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
    params.perlinOctaves = 2;         // Domain warp octaves
    params.perlinScale = 1.7f;        // Domain warp frequency
    params.worleyScale = 2.0f;        // Vein network density (cells per unit)
    params.worleyStrength = 0.4f;     // Domain warp strength
    return params;
}
