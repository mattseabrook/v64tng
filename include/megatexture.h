#ifndef MEGATEXTURE_H
#define MEGATEXTURE_H

#include <vector>
#include <cstdint>
#include <string>

/*
===============================================================================

    Procedural Megatexture Generation

    Generates seamless wall textures for raycaster dungeon maps.
    Uses edge enumeration + procedural mortar vein patterns.
    
    NOTE: Megatexture is conceptually one seamless 1024×W strip.
    Tiles are 3× longer than taller (3072×1024), streamed and packed without
    allocating the full strip.
    Seamlessness is guaranteed because generatePixelVeins(u,v) uses global (u,v).
    No preview/combined PNG by design.

===============================================================================
*/

// Single exposed wall edge in the dungeon
struct WallEdge
{
    int cellX;              // Map cell X coordinate
    int cellY;              // Map cell Y coordinate
    int side;               // Which side: 0=North, 1=East, 2=South, 3=West
    int xOffsetPixels;      // Starting pixel offset in the megatexture strip
    int pixelWidth;         // Width in pixels assigned to this edge (341/342 alternating) so 3 edges = 1024px
    int direction;          // +1 or -1 for traversal direction consistency
    
    // Baked corner ambient occlusion flags
    // True if this edge meets another wall at an inside corner
    bool hasCornerAtU0;     // Inside corner at U=0 end (start of edge)
    bool hasCornerAtU1;     // Inside corner at U=1 end (end of edge)
};

// Megatexture generation parameters
struct MegatextureParams
{
    uint32_t seed;              // Random seed for procedural generation
    float mortarWidth;          // Mortar vein thickness in world units
    float mortarGray;           // Mortar gray value (0..1)
    float wallHeightUnits;      // Wall height relative to 1 world unit width (e.g., 1.0 = square, 2.0 = twice as tall)
    
    // Noise parameters
    int perlinOctaves;          // Number of Perlin noise octaves (for domain warp)
    float perlinScale;          // Perlin noise frequency (for domain warp)
    float worleyScale;          // Worley noise frequency (cells per unit for veins)
    float worleyStrength;       // Domain warp strength (0..1)
};

// Megatexture state data
struct MegatextureState
{
    std::vector<WallEdge> edges;
    int textureWidth;           // Total strip width in pixels
    int textureHeight;          // Strip height (always 1024)
    int tileWidth;              // Tile width in pixels (1024)
    int tileHeight;             // Tile height in pixels (1024)
    int mapWidth;
    int mapHeight;
    
    // Runtime tile cache (loaded from MTX) - CONTIGUOUS MEMORY POOL
    // Single allocation for all tiles, accessed via: tileData.data() + tileIndex * bytesPerTile
    std::vector<uint8_t> tileData;        // Contiguous RGBA data for all tiles
    size_t tileCount;                      // Number of tiles
    size_t bytesPerTile;                   // Cached: tileWidth * tileHeight * 4
    bool loaded;                           // Is MTX loaded?
    
    // Get pointer to specific tile's data (zero-copy access)
    [[nodiscard]] const uint8_t* getTile(size_t index) const noexcept
    {
        return tileData.data() + index * bytesPerTile;
    }
    
    [[nodiscard]] uint8_t* getTileMutable(size_t index) noexcept
    {
        return tileData.data() + index * bytesPerTile;
    }
};

// Global megatexture state
extern MegatextureState megatex;

// Analyze the map and build the ordered edge list
bool analyzeMapEdges(const std::vector<std::vector<uint8_t>>& map);

// Generate megatexture tiles only (streaming, no full allocation)
// Outputs 3072×1024 PNG tiles to the specified directory
bool generateMegatextureTilesOnly(const MegatextureParams& params, const std::string& outDir);

// Pack PNG tiles into compressed MTX archive
// Returns true on success
bool saveMTX(const std::string& mtxPath, const std::string& tilesDir, const MegatextureParams& params);

// Decode MTX archive back to PNG tiles (for validation/debugging)
// Writes tiles to outDir - should be bit-identical to originals
bool decodeMTX(const std::string& mtxPath, const std::string& outDir);

// Load MTX into runtime tile cache for rendering
// Call this at startup before rendering
bool loadMTX(const std::string& mtxPath);

// Sample megatexture at world coordinates
// cellX, cellY: Map cell coordinates
// side: Wall side (0=North, 1=East, 2=South, 3=West)
// u: Horizontal texture coordinate [0..1] along wall
// v: Vertical texture coordinate [0..1] along wall height
// Returns RGBA pixel value, or transparent if not found
uint32_t sampleMegatexture(int cellX, int cellY, int side, float u, float v);

// Lookup edge data by map coordinates (returns nullptr if not found)
const WallEdge* findWallEdge(int cellX, int cellY, int side);

// Helper to get default parameters
MegatextureParams getDefaultMegatextureParams();

#endif // MEGATEXTURE_H
