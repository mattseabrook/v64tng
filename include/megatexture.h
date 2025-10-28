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
    We *only* generate and write 1024×1024 tiles, streaming, to avoid huge memory.
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
    int direction;          // +1 or -1 for traversal direction consistency
};

// Megatexture generation parameters
struct MegatextureParams
{
    uint32_t seed;              // Random seed for procedural generation
    float mortarWidth;          // Mortar vein thickness in world units
    float mortarGray;           // Mortar gray value (0..1)
    
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
    int mapWidth;
    int mapHeight;
};

// Global megatexture state
extern MegatextureState megatex;

// Analyze the map and build the ordered edge list
bool analyzeMapEdges(const std::vector<std::vector<uint8_t>>& map);

// Generate megatexture tiles only (streaming, no full allocation)
// Outputs 1024×1024 PNG tiles to the specified directory
bool generateMegatextureTilesOnly(const MegatextureParams& params, const std::string& outDir);

// Pack PNG tiles into compressed MTX archive
// Returns true on success
bool saveMTX(const std::string& mtxPath, const std::string& tilesDir, const MegatextureParams& params);

// Decode MTX archive back to PNG tiles (for validation/debugging)
// Writes tiles to outDir - should be bit-identical to originals
bool decodeMTX(const std::string& mtxPath, const std::string& outDir);

// Lookup edge data by map coordinates (returns nullptr if not found)
const WallEdge* findWallEdge(int cellX, int cellY, int side);

// Helper to get default parameters
MegatextureParams getDefaultMegatextureParams();

#endif // MEGATEXTURE_H
