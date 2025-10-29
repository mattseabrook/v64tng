#include "megatexture.h"
#include "extract.h"
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
MegatextureState megatex = { .loaded = false };

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
    const float unitsPerTileX = 3.0f; // world units per 1024 px horizontally

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
    // Assign variable pixel widths per edge so that 3 edges = 1024px
    // Use fractional accumulator to distribute the extra pixel (341,341,342 pattern)
    int currentOffset = 0;
    double acc = 0.0;
    const double step = 1024.0 / 3.0; // pixels per world unit horizontally

    for (auto& edge : megatex.edges)
    {
        int start = static_cast<int>(std::floor(acc));
        acc += step;
        int next = static_cast<int>(std::floor(acc));
        int width = std::max(1, next - start);
        edge.xOffsetPixels = currentOffset;
        edge.pixelWidth = width;
        currentOffset += width;
    }

    megatex.textureHeight = pixelsPerUnit; // 1024 px = full wall height
    megatex.textureWidth = currentOffset;  // sum of per-edge widths
}

//
// Public API
//

bool analyzeMapEdges(const std::vector<std::vector<uint8_t>>& map)
{
    // Debug: Write IMMEDIATELY to prove function was called
    {
        std::ofstream f("C:\\T7G\\edge_debug.txt");
        f << "=== analyzeMapEdges() START ===\n";
        f.flush();
    }
    
    if (map.empty() || map[0].empty())
    {
        std::ofstream f("C:\\T7G\\edge_debug.txt", std::ios::app);
        f << "ERROR: Map is empty!\n";
        return false;
    }
    
    megatex.mapHeight = (int)map.size();
    megatex.mapWidth = (int)map[0].size();
    megatex.edges.clear();
    
    {
        std::ofstream f("C:\\T7G\\edge_debug.txt", std::ios::app);
        f << "Map size: " << megatex.mapWidth << " x " << megatex.mapHeight << "\n";
        f << "Calling enumerateExposedEdges()...\n";
        f.flush();
    }
    
    enumerateExposedEdges(map);
    
    {
        std::ofstream f("C:\\T7G\\edge_debug.txt", std::ios::app);
        f << "Edges after enumeration: " << megatex.edges.size() << "\n";
        f << "Calling orderEdgesSpatially()...\n";
        f.flush();
    }
    
    orderEdgesSpatially();
    computeEdgeOffsets(1024);  // 1024 pixels per unit
    
    {
        std::ofstream f("C:\\T7G\\edge_debug.txt", std::ios::app);
        f << "Final edge count: " << megatex.edges.size() << "\n\n";
        
        for (size_t i = 0; i < std::min(megatex.edges.size(), size_t(20)); ++i)
        {
            const auto& e = megatex.edges[i];
            f << "Edge " << i << ": cell(" << e.cellX << "," << e.cellY << ") side=" << e.side 
              << " offset=" << e.xOffsetPixels << "\n";
        }
        f << "\n=== analyzeMapEdges() END ===\n";
    }
    
    return !megatex.edges.empty();
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
        std::cerr << "ERROR: zlib decompression failed with code " << result << "\n";
        return false;
    }

    if (uncompressedSize != expectedSize)
    {
        std::cerr << "ERROR: Decompressed size mismatch - expected " << expectedSize
                  << " bytes, got " << uncompressedSize << "\n";
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
        const uint32_t chunkSize = static_cast<uint32_t>(compressedSize);
        mtxFile.write(reinterpret_cast<const char*>(&chunkSize), sizeof(uint32_t));
        mtxFile.write(reinterpret_cast<const char*>(compressedData.data()), compressedSize);

        totalOriginalBytes += rgba.size();
        totalCompressedBytes += compressedSize + sizeof(uint32_t);

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

    // Validate header
    if (std::strncmp(header.magic, "MTX1", 4) != 0)
    {
        std::cerr << "ERROR: Invalid MTX file (bad magic)\n";
        return false;
    }

    if (header.version != 1 && header.version != 2)
    {
        std::cerr << "ERROR: Unsupported MTX version: " << header.version << "\n";
        return false;
    }

    std::cout << "Tiles: " << header.tileCount << "\n";
    if (header.version == 1)
        std::cout << "Tile size: 1024×1024\n";
    else
        std::cout << "Tile size: " << header.tileWidth << "×" << header.tileHeight << "\n";
    std::cout << "Mortar RGB: (" << (int)header.mortarRGB[0] << ", " 
              << (int)header.mortarRGB[1] << ", " << (int)header.mortarRGB[2] << ")\n";
    std::cout << "Seed: " << header.seed << "\n\n";

    // Read offset table
    std::vector<uint64_t> tileOffsets(header.tileCount);
    mtxFile.read(reinterpret_cast<char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);

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
            std::cerr << "ERROR: Failed to decompress tile " << i << "\n";
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
    std::cout << "\n=== Loading MTX Megatexture ===\n";
    std::cout << "Reading: " << mtxPath << "\n";

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

    // Validate
    if (std::strncmp(header.magic, "MTX1", 4) != 0)
    {
        std::cerr << "ERROR: Invalid MTX file (bad magic)\n";
        return false;
    }

    std::cout << "Tiles: " << header.tileCount << "\n";
    std::cout << "Loading into memory...\n";
    // Fill state tile dimensions
    if (header.version == 1) {
        megatex.tileWidth = 1024;
        megatex.tileHeight = 1024;
    } else {
        megatex.tileWidth = (int)header.tileWidth;
        megatex.tileHeight = (int)header.tileHeight;
    }

    // Read offset table
    std::vector<uint64_t> tileOffsets(header.tileCount);
    mtxFile.read(reinterpret_cast<char*>(tileOffsets.data()), sizeof(uint64_t) * header.tileCount);

    // Load all tiles into cache
    megatex.tileCache.resize(header.tileCount);

    for (uint32_t i = 0; i < header.tileCount; ++i)
    {
        // Seek to tile
        mtxFile.seekg(tileOffsets[i]);

        // Read compressed size
        uint32_t compressedSize = 0;
        mtxFile.read(reinterpret_cast<char*>(&compressedSize), sizeof(uint32_t));

        // Read compressed data
        std::vector<uint8_t> compressedData(compressedSize);
        mtxFile.read(reinterpret_cast<char*>(compressedData.data()), compressedSize);

        // Decompress to RGBA
        if (!decompressRGBA(compressedData.data(), compressedData.size(), megatex.tileCache[i], megatex.tileWidth, megatex.tileHeight))
        {
            std::cerr << "ERROR: Failed to decompress tile " << i << "\n";
            return false;
        }

        if ((i + 1) % 500 == 0 || i == header.tileCount - 1)
        {
            std::cout << "  Loaded tile " << (i + 1) << "/" << header.tileCount << "\n";
        }
    }

    mtxFile.close();

    megatex.loaded = true;
    std::cout << "Megatexture loaded successfully!\n";
    const size_t bytesPerTile = static_cast<size_t>(megatex.tileWidth) * megatex.tileHeight * 4;
    std::cout << "Memory usage: ~" << (header.tileCount * bytesPerTile / 1024 / 1024) << " MB\n\n";

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

    // Calculate global U coordinate in the megatexture strip
    // u is [0..1] along the wall, map it to the per-edge pixel width (341/342)
    int edgeW = std::max(1, edge->pixelWidth);
    float globalU = static_cast<float>(edge->xOffsetPixels) + u * static_cast<float>(edgeW);
    
    // Clamp v to [0..1]
    v = std::clamp(v, 0.0f, 1.0f);
    float globalV = v * 1024.0f; // vertical: 1024 px = 1 wall unit

    // Convert to integer pixel coordinates
    int pixelU = static_cast<int>(globalU);
    int pixelV = static_cast<int>(globalV);

    // Determine which tile this falls into
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
    const size_t idx = (static_cast<size_t>(localV) * megatex.tileWidth + localU) * 4;

    // Return RGBA as packed uint32 (R, G, B, A in bytes 0,1,2,3)
    return static_cast<uint32_t>(tile[idx]) |
           (static_cast<uint32_t>(tile[idx + 1]) << 8) |
           (static_cast<uint32_t>(tile[idx + 2]) << 16) |
           (static_cast<uint32_t>(tile[idx + 3]) << 24);
}
