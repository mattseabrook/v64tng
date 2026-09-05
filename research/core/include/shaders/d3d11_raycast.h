// Auto-generated embedded shader source: d3d11_raycast.hlsl
#ifndef g_d3d11_raycast_hlsl_H
#define g_d3d11_raycast_hlsl_H

static const char* g_d3d11_raycast_hlsl = R"SHADER(
// DirectX 11 Compute Shader for GPU-Accelerated Raycasting
// Implements DDA algorithm entirely on GPU for maximum parallelism

// Tile map: 2D texture of uint8 wall types
Texture2D<uint> tileMap : register(t0);
// Megatexture edge data: triplets [offset,width,dirFlag] of uints indexed by ((y*mapWidth + x)*4 + side)
Buffer<uint> edgeData : register(t1);
// One immutable array layer per decoded MTX tile. This binds the cache directly
// as subresources instead of flattening it into another archive-sized buffer.
Texture2DArray<float4> megatexData : register(t2);

// Output: BGRA render target
RWTexture2D<unorm float4> outputBGRA : register(u0);

// Per-frame constants
cbuffer RaycastConstants : register(b0)
{
    float playerX;
    float playerY;
    float playerAngle;
    float playerFOV;
    uint screenWidth;
    uint screenHeight;
    uint mapWidth;
    uint mapHeight;
    float visualScale;       // Distance shrink factor (typically 3.0)
    float torchRange;        // Light falloff range
    float falloffMul;        // Radial falloff multiplier
    float fovMul;            // FOV adjustment multiplier
    uint supersample;        // Supersampling count (1, 2, 4, etc.)
    float wallHeightUnits;   // Wall height in world units relative to width
    uint useMegatexture;
    float mapOverlayZoom;    // 0.0 = overlay off, >0 = zoom level
    uint ceilingColorPacked;
    uint floorColorPacked;
    uint wallColorPacked;
    uint wallLineColorPacked;
    uint renderFlags;
    uint reserved0;
    uint reserved1;
    uint reserved2;
};

static const uint RAYCAST_FLAG_FLAT_CEILING = 0x1u;
static const uint RAYCAST_FLAG_FLAT_FLOOR = 0x2u;
static const uint RAYCAST_FLAG_BLACK_BOUNDARY_WALLS = 0x8u;

float3 unpackColor(uint packed)
{
    return float3(
        float(packed & 0xFFu),
        float((packed >> 8u) & 0xFFu),
        float((packed >> 16u) & 0xFFu)) / 255.0;
}

//==============================================================================
// DDA Raycasting on GPU
//==============================================================================

struct RayHit
{
    float distance;
    int side;          // 0 = vertical wall, 1 = horizontal wall
    bool hitWall;      // true if hit actual wall, false if just reached far distance
    int2 cell;         // map cell at hit
    int cardinalSide;  // 0=N,1=E,2=S,3=W
    float wallX;       // [0..1] along wall
    float cosCorr;     // cosine correction for FOV projection (set by caller)
};

RayHit castRay(float2 pos, float2 rayDir)
{
    // DDA initialization
    int2 mapPos = int2(floor(pos));
    float2 deltaDist = abs(1.0 / rayDir);
    int2 step;
    float2 sideDist;
    
    // Calculate step direction and initial side distances
    if (rayDir.x < 0.0)
    {
        step.x = -1;
        sideDist.x = (pos.x - mapPos.x) * deltaDist.x;
    }
    else
    {
        step.x = 1;
        sideDist.x = (mapPos.x + 1.0 - pos.x) * deltaDist.x;
    }
    
    if (rayDir.y < 0.0)
    {
        step.y = -1;
        sideDist.y = (pos.y - mapPos.y) * deltaDist.y;
    }
    else
    {
        step.y = 1;
        sideDist.y = (mapPos.y + 1.0 - pos.y) * deltaDist.y;
    }
    
    // DDA loop - bounded to prevent infinite loops
    int side = 0;
    const int MAX_STEPS = clamp((int)(mapWidth + mapHeight) + 64, 64, 4096);
    
    [loop]
    for (int i = 0; i < MAX_STEPS; i++)
    {
        // Step to next grid cell
        if (sideDist.x < sideDist.y)
        {
            sideDist.x += deltaDist.x;
            mapPos.x += step.x;
            side = 0;
        }
        else
        {
            sideDist.y += deltaDist.y;
            mapPos.y += step.y;
            side = 1;
        }
        
        // Bounds check - return distance traveled, no wall hit
        if (mapPos.x < 0 || mapPos.y < 0 || 
            mapPos.x >= (int)mapWidth || mapPos.y >= (int)mapHeight)
        {
            float dist = side ? (sideDist.y - deltaDist.y) : (sideDist.x - deltaDist.x);
            RayHit r; r.distance = dist; r.side = side; r.hitWall = false; r.cell = mapPos; r.cardinalSide = 0; r.wallX = 0.0; r.cosCorr = 1.0;
            return r;
        }
        
        // Sample tile map
        uint tile = tileMap[mapPos];
        
        // Check for walls (0x01-0xEF, excluding player markers 0xF0-0xF3)
        if (tile >= 1 && (tile < 0xF0 || tile > 0xF3))
        {
            // Hit wall - calculate distance
            float dist = side ? (sideDist.y - deltaDist.y) : (sideDist.x - deltaDist.x);
            RayHit r; r.distance = dist; r.side = side; r.hitWall = true; r.cell = mapPos;
            // Compute wallX (fraction along wall) and cardinal side
            float wx = (side == 0) ? (pos.y + dist * rayDir.y) : (pos.x + dist * rayDir.x);
            wx = wx - floor(wx);
            r.wallX = wx;
            int cardinal;
            if (side == 0) { cardinal = (step.x > 0) ? 3 : 1; } else { cardinal = (step.y > 0) ? 0 : 2; }
            r.cardinalSide = cardinal;
            r.cosCorr = 1.0;
            return r;
        }
    }
    
    // Max steps reached - return distance traveled, no wall hit
    float dist = side ? (sideDist.y - deltaDist.y) : (sideDist.x - deltaDist.x);
    RayHit r; r.distance = dist; r.side = side; r.hitWall = false; r.cell = mapPos; r.cardinalSide = 0; r.wallX = 0.0; r.cosCorr = 1.0;
    return r;
}

//==============================================================================
// Shading & Lighting
//==============================================================================

bool isSolidWallTile(uint tile)
{
    return (tile >= 1u && (tile < 0xF0u || tile > 0xF3u));
}

bool isSolidBlackWallTile(uint tile)
{
    return tile == 0xFEu;
}

bool isBoundaryCell(int2 cell)
{
    return cell.x == 0 || cell.y == 0 ||
           cell.x == (int)mapWidth - 1 ||
           cell.y == (int)mapHeight - 1;
}

bool isSolidBlackWall(int2 cell, uint tile)
{
    if (isSolidBlackWallTile(tile))
        return true;
    return (renderFlags & RAYCAST_FLAG_BLACK_BOUNDARY_WALLS) != 0u &&
           isSolidWallTile(tile) &&
           isBoundaryCell(cell);
}

bool getSameSideNeighborCell(int2 cell, int side, bool lowEdge, out int2 neighbor)
{
    if (side == 0 || side == 2)
        neighbor = cell + (lowEdge ? int2(-1, 0) : int2(1, 0));
    else if (side == 1 || side == 3)
        neighbor = cell + (lowEdge ? int2(0, -1) : int2(0, 1));
    else
        return false;
    return true;
}

bool hasMegatextureEdge(int2 cell, int side)
{
    if (useMegatexture == 0u)
        return false;
    if (cell.x < 0 || cell.y < 0 || cell.x >= (int)mapWidth || cell.y >= (int)mapHeight || side < 0 || side > 3)
        return false;

    uint edgeIndex = (uint(cell.y) * mapWidth + uint(cell.x)) * 4u + uint(side);
    return edgeData[edgeIndex * 3u + 1u] != 0u;
}

float4 sampleMegatextureRaw(int2 cell, int side, float u, float v)
{
    if (useMegatexture == 0u)
        return float4(0.0, 0.0, 0.0, 0.0);

    uint tileWidth, tileHeight, tileCount, mipLevels;
    megatexData.GetDimensions(0u, tileWidth, tileHeight, tileCount, mipLevels);
    if (tileWidth == 0u || tileHeight == 0u || tileCount == 0u)
        return float4(0.0, 0.0, 0.0, 0.0);

    if (cell.x < 0 || cell.y < 0 || cell.x >= (int)mapWidth || cell.y >= (int)mapHeight || side < 0 || side > 3)
        return float4(0.0, 0.0, 0.0, 0.0);

    uint edgeIndex = (uint(cell.y) * mapWidth + uint(cell.x)) * 4u + uint(side);
    uint edgeBase = edgeIndex * 3u;
    uint edgeOffset = edgeData[edgeBase + 0u];
    uint edgeWidth = edgeData[edgeBase + 1u];
    uint edgeFlip = edgeData[edgeBase + 2u];
    if (edgeWidth == 0u)
        return float4(0.0, 0.0, 0.0, 0.0);

    u = saturate(u);
    if (edgeFlip != 0u)
        u = 1.0 - u;

    uint localU = (uint)clamp((int)(u * (float)max(1u, edgeWidth - 1u)), 0, (int)(edgeWidth - 1u));
    uint pixelU = edgeOffset + localU;
    uint pixelV = (uint)clamp((int)(saturate(v) * (float)max(1u, tileHeight - 1u)), 0, (int)(tileHeight - 1u));
    uint tileIndex = pixelU / tileWidth;
    if (tileIndex >= tileCount)
        return float4(0.0, 0.0, 0.0, 0.0);
    return megatexData.Load(int4((int)(pixelU % tileWidth), (int)pixelV, (int)tileIndex, 0));
}

float4 sampleMegatexture(int2 cell, int side, float u, float v)
{
    return sampleMegatextureRaw(cell, side, u, v);
}

uint getTile(int2 pos)
{
    if (pos.x < 0 || pos.y < 0 || pos.x >= (int)mapWidth || pos.y >= (int)mapHeight)
        return 0xFF; // out of bounds = solid
    return tileMap[pos];
}

// Read explored flag from the bottom half of the tile map texture
uint getExplored(int2 pos)
{
    if (pos.x < 0 || pos.y < 0 || pos.x >= (int)mapWidth || pos.y >= (int)mapHeight)
        return 0u;
    return tileMap[int2(pos.x, pos.y + (int)mapHeight)];
}

bool isExploredOpen(int2 pos)
{
    return getExplored(pos) != 0u && !isSolidWallTile(getTile(pos));
}

bool isSolidWallInBounds(int2 pos)
{
    if (pos.x < 0 || pos.y < 0 || pos.x >= (int)mapWidth || pos.y >= (int)mapHeight)
        return false;
    return isSolidWallTile(getTile(pos));
}

// Detect visible corner edge at cell boundary (inside & outside corners)
bool isCornerEdge(RayHit hit, float threshold)
{
    float wx = hit.wallX;
    if (wx > threshold && wx < 1.0 - threshold)
        return false;

    int2 nOff, pOff;
    if (hit.cardinalSide == 0)      { nOff = (wx < threshold) ? int2(-1,0) : int2(1,0); pOff = int2(0,-1); }
    else if (hit.cardinalSide == 1) { nOff = (wx < threshold) ? int2(0,-1) : int2(0,1); pOff = int2(1,0);  }
    else if (hit.cardinalSide == 2) { nOff = (wx < threshold) ? int2(-1,0) : int2(1,0); pOff = int2(0,1);  }
    else                            { nOff = (wx < threshold) ? int2(0,-1) : int2(0,1); pOff = int2(-1,0);  }

    int2 neighbor = hit.cell + nOff;
    bool neighborHasFace = isSolidWallTile(getTile(neighbor))
                        && !isSolidWallTile(getTile(neighbor + pOff));
    return !neighborHasFace;
}

// Only concave inside corners should get the soft AO band. Straight wall tile
// boundaries have an adjacent solid cell too, but they should stay visually flat.
bool isInsideCornerAtEdge(int2 cell, int cardinalSide, bool lowEdge)
{
    int2 nOff, pOff;
    if (cardinalSide == 0)      { nOff = lowEdge ? int2(-1,0) : int2(1,0); pOff = int2(0,-1); }
    else if (cardinalSide == 1) { nOff = lowEdge ? int2(0,-1) : int2(0,1); pOff = int2(1,0);  }
    else if (cardinalSide == 2) { nOff = lowEdge ? int2(-1,0) : int2(1,0); pOff = int2(0,1);  }
    else                        { nOff = lowEdge ? int2(0,-1) : int2(0,1); pOff = int2(-1,0);  }

    if (isSolidWallInBounds(cell + pOff))
        return false;

    float tangentPlayer = (cardinalSide == 0 || cardinalSide == 2) ? playerX : playerY;
    float cornerCoord = (cardinalSide == 0 || cardinalSide == 2)
        ? (float)(lowEdge ? cell.x : cell.x + 1)
        : (float)(lowEdge ? cell.y : cell.y + 1);
    if (lowEdge ? (tangentPlayer < cornerCoord) : (tangentPlayer > cornerCoord))
        return false;

    int2 neighbor = cell + nOff;
    return isSolidWallInBounds(neighbor)
        && isSolidWallInBounds(neighbor + pOff);
}

bool isVisibleCornerSeamAtEdge(int2 cell, int cardinalSide, bool lowEdge)
{
    int2 nOff, pOff;
    if (cardinalSide == 0)      { nOff = lowEdge ? int2(-1,0) : int2(1,0); pOff = int2(0,-1); }
    else if (cardinalSide == 1) { nOff = lowEdge ? int2(0,-1) : int2(0,1); pOff = int2(1,0);  }
    else if (cardinalSide == 2) { nOff = lowEdge ? int2(-1,0) : int2(1,0); pOff = int2(0,1);  }
    else                        { nOff = lowEdge ? int2(0,-1) : int2(0,1); pOff = int2(-1,0);  }

    int2 neighbor = cell + nOff;
    bool neighborHasFace = isSolidWallTile(getTile(neighbor))
                        && !isSolidWallTile(getTile(neighbor + pOff));
    return !neighborHasFace;
}

float angleDiff(float a, float b)
{
    float d = a - b;
    while (d > 3.14159265) d -= 6.28318531;
    while (d < -3.14159265) d += 6.28318531;
    return d;
}

float pointSegmentDistance(float2 p, float2 a, float2 b)
{
    float2 ab = b - a;
    float den = dot(ab, ab);
    if (den <= 1e-6)
        return length(p - a);
    float t = clamp(dot(p - a, ab) / den, 0.0, 1.0);
    return length(p - (a + t * ab));
}

float cornerAO(RayHit hit, float width)
{
    width = clamp(width, 0.02, 0.50);
    const float strength = 0.22;
    float u = saturate(hit.wallX);

    bool corner0 = isInsideCornerAtEdge(hit.cell, hit.cardinalSide, true)
                && isVisibleCornerSeamAtEdge(hit.cell, hit.cardinalSide, true);
    bool corner1 = isInsideCornerAtEdge(hit.cell, hit.cardinalSide, false)
                && isVisibleCornerSeamAtEdge(hit.cell, hit.cardinalSide, false);

    float t0 = u / width;
    float t1 = (1.0 - u) / width;
    float edge0 = (corner0 && t0 < 1.0) ? exp2(-4.0 * t0 * t0) : 0.0;
    float edge1 = (corner1 && t1 < 1.0) ? exp2(-4.0 * t1 * t1) : 0.0;
    float ao = min(1.0, max(edge0, edge1));
    return clamp(1.0 - ao * strength, 0.45, 1.0);
}

float3 shadePixel(uint2 pixel, RayHit hit, float halfW, float halfH, float maxRadius)
{
    // Pixel Y position (center of pixel)
    float yf = pixel.y + 0.5;
    
    // Radial screen-space vignette
    float dx = pixel.x - halfW;
    float dy = yf - halfH;
    float screenDist = sqrt(dx * dx + dy * dy);
    float screenFactor = max(0.0, 1.0 - (screenDist / maxRadius) * falloffMul);
    
    // Ceiling gradient
    bool flatCeiling = (renderFlags & RAYCAST_FLAG_FLAT_CEILING) != 0u;
    float ceilingShade = flatCeiling ? 1.0 : clamp(1.0 - yf / halfH, 0.0, 1.0);
    float3 ceilingColor = unpackColor(ceilingColorPacked) * ceilingShade;
    
    // Floor gradient
    float floorRatio = (yf - halfH) / halfH;
    floorRatio = clamp(floorRatio, 0.0, 1.0);
    bool flatFloor = (renderFlags & RAYCAST_FLAG_FLAT_FLOOR) != 0u;
    float floorShade = flatFloor ? 1.0 : floorRatio;
    float3 floorColor = unpackColor(floorColorPacked) * floorShade;
    
    // If no wall hit, just render floor/ceiling
    float3 color;
    if (!hit.hitWall)
    {
        color = (yf < halfH) ? ceilingColor : floorColor;
    }
    else
    {
        // Hit a wall - calculate wall rendering
        float perpWallDist = max(hit.distance * hit.cosCorr / visualScale, 0.01);
        float halfFovTan = tan(playerFOV * 0.5 * fovMul);
        float lineHeight = screenHeight * max(wallHeightUnits, 0.001) / (perpWallDist * halfFovTan);
        float drawStart = halfH - lineHeight / 2.0;
        float drawEnd = halfH + lineHeight / 2.0;
        uint hitTile = getTile(hit.cell);
        bool solidBlackWall = isSolidBlackWall(hit.cell, hitTile);
        
        // Base wall color: UNIFORM across all orientations (NO lighting yet)
        float3 baseWall = solidBlackWall ? float3(0.0, 0.0, 0.0) : unpackColor(wallColorPacked);
        float3 rayCeilingColor = solidBlackWall ? float3(0.0, 0.0, 0.0) : ceilingColor;
        
        // Determine pixel color: ceiling, wall, or floor
        if (yf < drawStart)
        {
            // Ceiling
            color = rayCeilingColor;
        }
        else if (yf > drawEnd)
        {
            // Floor
            color = floorColor;
        }
        else
        {
            bool megaEnabled = useMegatexture != 0u && !solidBlackWall;
            float projectedUnitPixels = max(lineHeight / max(wallHeightUnits, 0.001), 1.0);
            float cornerThreshold = clamp(1.0 / projectedUnitPixels, 0.00075, 0.02);
            float aoFactor = cornerAO(hit, 0.35);
            bool cornerLine = !solidBlackWall && isCornerEdge(hit, cornerThreshold);
            float seamDistance = min(hit.wallX, 1.0 - hit.wallX);
            float seamCoverage = cornerLine
                ? 1.0 - smoothstep(0.0, cornerThreshold, seamDistance)
                : 0.0;
            float seamOpacity = seamCoverage * (megaEnabled ? 0.72 : 1.0);
            float v = clamp((yf - drawStart) / max(drawEnd - drawStart, 1.0), 0.0, 1.0);

            // Wall shading with top/bottom edge blending and true corner seam lines only.
            if (yf < drawStart + 1.0)
            {
                // Blend ceiling -> wall (apply lighting to base wall first)
                float lightFactor = max(0.05, 1.0 - hit.distance / torchRange);
                float4 texel = sampleMegatexture(hit.cell, hit.cardinalSide, hit.wallX, v);
                float3 wallColor = megaEnabled ? lerp(baseWall, texel.rgb, texel.a) : baseWall;
                wallColor = lerp(wallColor, unpackColor(wallLineColorPacked), seamOpacity);
                float3 litWall = wallColor * lightFactor * aoFactor;
                float weight = (yf - drawStart);
                weight = clamp(weight, 0.0, 1.0);
                color = lerp(rayCeilingColor, litWall, weight);
            }
            else if (yf > drawEnd - 1.0)
            {
                // Blend wall -> floor (apply lighting to base wall first)
                float lightFactor = max(0.05, 1.0 - hit.distance / torchRange);
                float4 texel = sampleMegatexture(hit.cell, hit.cardinalSide, hit.wallX, v);
                float3 wallColor = megaEnabled ? lerp(baseWall, texel.rgb, texel.a) : baseWall;
                wallColor = lerp(wallColor, unpackColor(wallLineColorPacked), seamOpacity);
                float3 litWall = wallColor * lightFactor * aoFactor;
                float weight = (drawEnd - yf);
                weight = clamp(weight, 0.0, 1.0);
                color = lerp(floorColor, litWall, weight);
            }
            else
            {
                float4 texel = sampleMegatexture(hit.cell, hit.cardinalSide, hit.wallX, v);
                float3 wallColor = megaEnabled ? lerp(baseWall, texel.rgb, texel.a) : baseWall;
                wallColor = lerp(wallColor, unpackColor(wallLineColorPacked), seamOpacity);
                float lightFactor = max(0.05, 1.0 - hit.distance / torchRange);
                color = wallColor * lightFactor * aoFactor;
            }
        }
    }
    
    // Apply screen vignette
    color *= screenFactor;
    
    return color;
}

//==============================================================================
// Map Overlay
//==============================================================================

float3 applyMapOverlay(float3 sceneColor, uint2 pixel)
{
    float3 color = sceneColor * 0.70;

    float sw = (float)screenWidth;
    float sh = (float)screenHeight;
    float mw = (float)mapWidth;
    float mh = (float)mapHeight;
    float zoom = mapOverlayZoom;

    // Cell size: base fits map to ~70% of screen, then multiply by zoom
    float maxDim = max(mw, mh);
    float baseCellSize = (min(sw, sh) * 0.70) / maxDim;
    float cellSize = baseCellSize * zoom;
    cellSize = max(cellSize, 2.0);

    // Center view on player position
    float centerX = sw * 0.5;
    float centerY = sh * 0.5;
    float ox = centerX - playerX * cellSize;
    float oy = centerY - playerY * cellSize;

    // Map pixel to world cell coordinates
    float wpx = ((float)pixel.x - ox) / cellSize;
    float wpy = ((float)pixel.y - oy) / cellSize;

    int cx = (int)floor(wpx);
    int cy = (int)floor(wpy);

    // Player position in screen space (always centered)
    float plyrX = centerX;
    float plyrY = centerY;
    float distToPlayer = length(float2((float)pixel.x - plyrX, (float)pixel.y - plyrY));

    // Player marker: bright green dot
    float playerRadius = cellSize * 0.35;
    if (distToPlayer < playerRadius)
    {
        float t = (1.0 - distToPlayer / playerRadius) * 0.9;
        color = lerp(color, float3(1.0, 0.25, 0.25), t);
        return color;
    }

    // FOV cone span
    float halfFovTan = tan(playerFOV * 0.5 * fovMul);
    float fovHalf = atan(halfFovTan);

    // Filled FOV cone. Keep this cheap; per-overlay-pixel ray casts destroy frame time.
    float2 target = float2(wpx - playerX, wpy - playerY);
    float targetDist = length(target);
    float overlayRange = max(8.0, min(maxDim, 24.0));
    if (targetDist > 0.001 && targetDist <= overlayRange)
    {
        float ang = atan2(target.y, target.x);
        float rel = abs(angleDiff(ang, playerAngle));
        if (rel <= fovHalf)
        {
            float fade = 1.0 - smoothstep(overlayRange * 0.65, overlayRange, targetDist);
            color = lerp(color, float3(1.0, 0.20, 0.20), 0.22 * fade);
        }
    }

    // Outside map bounds
    if (cx < 0 || cy < 0 || cx >= (int)mapWidth || cy >= (int)mapHeight)
        return color;

    uint tile = tileMap[int2(cx, cy)];
    bool solid = isSolidWallTile(tile);
    bool explored = getExplored(int2(cx, cy)) != 0u;

    // Fog of war: skip unexplored cells, UNLESS they are solid and touch an explored cell (to bridge corners)
    if (!explored)
    {
        if (!solid) return color;
        bool nExp = false;
        for (int dy = -1; dy <= 1; ++dy) {
            for (int dx = -1; dx <= 1; ++dx) {
                if ((dx != 0 || dy != 0) && isExploredOpen(int2(cx + dx, cy + dy))) nExp = true;
            }
        }
        if (!nExp) return color;
    }

    // Center-stroke wall rendering via distance-to-segment tests.
    // This removes corner dropouts when center lines fall between pixel columns.
    bool drawLine = false;

    if (solid)
    {
        float2 c = float2(ox + ((float)cx + 0.5) * cellSize,
                  oy + ((float)cy + 0.5) * cellSize);
        float half = cellSize * 0.5;
        float2 p = float2((float)pixel.x + 0.5, (float)pixel.y + 0.5);
        float lineHalfW = 0.82;

        bool nConn = (cy > 0) ? isSolidWallTile(getTile(int2(cx, cy - 1))) : false;
        bool sConn = (cy < (int)mapHeight - 1) ? isSolidWallTile(getTile(int2(cx, cy + 1))) : false;
        bool wConn = (cx > 0) ? isSolidWallTile(getTile(int2(cx - 1, cy))) : false;
        bool eConn = (cx < (int)mapWidth - 1) ? isSolidWallTile(getTile(int2(cx + 1, cy))) : false;

        bool nVisible = isExploredOpen(int2(cx - 1, cy)) || isExploredOpen(int2(cx - 1, cy - 1)) ||
                        isExploredOpen(int2(cx + 1, cy)) || isExploredOpen(int2(cx + 1, cy - 1));
        bool sVisible = isExploredOpen(int2(cx - 1, cy)) || isExploredOpen(int2(cx - 1, cy + 1)) ||
                        isExploredOpen(int2(cx + 1, cy)) || isExploredOpen(int2(cx + 1, cy + 1));
        bool wVisible = isExploredOpen(int2(cx, cy - 1)) || isExploredOpen(int2(cx - 1, cy - 1)) ||
                        isExploredOpen(int2(cx, cy + 1)) || isExploredOpen(int2(cx - 1, cy + 1));
        bool eVisible = isExploredOpen(int2(cx, cy - 1)) || isExploredOpen(int2(cx + 1, cy - 1)) ||
                        isExploredOpen(int2(cx, cy + 1)) || isExploredOpen(int2(cx + 1, cy + 1));

        if (nConn && nVisible && pointSegmentDistance(p, c, c + float2(0.0, -half)) <= lineHalfW) drawLine = true;
        if (sConn && sVisible && pointSegmentDistance(p, c, c + float2(0.0,  half)) <= lineHalfW) drawLine = true;
        if (wConn && wVisible && pointSegmentDistance(p, c, c + float2(-half, 0.0)) <= lineHalfW) drawLine = true;
        if (eConn && eVisible && pointSegmentDistance(p, c, c + float2( half, 0.0)) <= lineHalfW) drawLine = true;

        bool isolatedVisible = isExploredOpen(int2(cx - 1, cy)) || isExploredOpen(int2(cx + 1, cy)) ||
                               isExploredOpen(int2(cx, cy - 1)) || isExploredOpen(int2(cx, cy + 1));
        if (!nConn && !sConn && !wConn && !eConn && isolatedVisible && length(p - c) <= lineHalfW)
            drawLine = true;
    }

    if (drawLine)
        color = lerp(color, float3(0.6, 0.75, 0.9), 0.85);

    return color;
}

uint fpsGlyphPattern(int glyph)
{
    if (glyph == 0) return 0x7b6f; if (glyph == 1) return 0x749a;
    if (glyph == 2) return 0x73e7; if (glyph == 3) return 0x79e7;
    if (glyph == 4) return 0x49ed; if (glyph == 5) return 0x79cf;
    if (glyph == 6) return 0x7bcf; if (glyph == 7) return 0x4927;
    if (glyph == 8) return 0x7bef; if (glyph == 9) return 0x79ef;
    if (glyph == 10) return 0x12cf; if (glyph == 11) return 0x12eb;
    if (glyph == 12) return 0x79cf;
    return 0;
}

float3 applyFpsOverlay(float3 sceneColor, uint2 pixel)
{
    uint fps = min(reserved0, 999u);
    uint scale = screenWidth >= 1200u ? 3u : 2u;
    uint advance = 4u * scale;
    uint textWidth = 7u * advance - scale;
    uint startX = screenWidth > textWidth + 10u ? screenWidth - textWidth - 10u : 4u;
    uint startY = 8u;
    if (pixel.x + 4u >= startX && pixel.x < startX + textWidth + 4u &&
        pixel.y + 3u >= startY && pixel.y < startY + 5u * scale + 3u)
        sceneColor *= 0.25;
    if (pixel.x < startX || pixel.y < startY || pixel.y >= startY + 5u * scale)
        return sceneColor;

    uint localX = pixel.x - startX;
    uint character = localX / advance;
    if (character >= 7u || (localX % advance) >= 3u * scale)
        return sceneColor;
    int glyph = -1;
    if (character == 0u) glyph = 10;
    else if (character == 1u) glyph = 11;
    else if (character == 2u) glyph = 12;
    else if (character == 4u && fps >= 100u) glyph = fps / 100u;
    else if (character == 5u && fps >= 10u) glyph = (fps / 10u) % 10u;
    else if (character == 6u) glyph = fps % 10u;
    if (glyph < 0)
        return sceneColor;
    uint gx = (localX % advance) / scale;
    uint gy = (pixel.y - startY) / scale;
    uint bit = gy * 3u + gx;
    return (fpsGlyphPattern(glyph) & (1u << bit)) != 0u ? float3(1.0, 1.0, 1.0) : sceneColor;
}

//==============================================================================
// Main Compute Shader
//==============================================================================

[numthreads(8, 8, 1)]
void main(uint3 DTid : SV_DispatchThreadID)
{
    uint2 pixel = DTid.xy;
    
    // Bounds check
    if (pixel.x >= screenWidth || pixel.y >= screenHeight)
        return;
    
    // Precompute common values
    float halfW = screenWidth * 0.5;
    float halfH = screenHeight * 0.5;
    float maxRadius = sqrt(halfW * halfW + halfH * halfH);
    
    // Accumulate color for supersampling
    float3 accumColor = float3(0.0, 0.0, 0.0);
    
    for (uint sample = 0; sample < supersample; sample++)
    {
        // Camera X coordinate with sub-pixel offset for supersampling
        float camX = 2.0 * (pixel.x + (sample + 0.5) / supersample) / screenWidth - 1.0;
        
        // Tangent-based angle mapping for proper 3D rectilinear perspective
        float halfFovTan = tan(playerFOV * 0.5 * fovMul);
        float viewX = camX * halfFovTan;
        float rayAngle = playerAngle + atan(viewX);
        float cosCorr = 1.0 / sqrt(1.0 + viewX * viewX);
        float2 rayDir = float2(cos(rayAngle), sin(rayAngle));
        
        // Cast ray
        RayHit hit = castRay(float2(playerX, playerY), rayDir);
        hit.cosCorr = cosCorr;
        
        // Shade pixel
        float3 color = shadePixel(pixel, hit, halfW, halfH, maxRadius);
        accumColor += color;
    }
    
    // Average samples
    accumColor /= supersample;

    // Add a touch of dithering to reduce visible banding on smooth gradients
    // Cheap hash from pixel coords -> [0,1)
    float h = frac(sin(dot(float2(pixel), float2(12.9898, 78.233))) * 43758.5453);
    float d = (h - 0.5) * (1.5 / 255.0); // +/- ~1.5 LSBs
    accumColor = saturate(accumColor + d);

    // Apply map overlay if toggled
    if (mapOverlayZoom > 0.0)
        accumColor = applyMapOverlay(accumColor, pixel);
    accumColor = applyFpsOverlay(accumColor, pixel);
    
    // Write output as BGRA (DirectX convention)
    // Note: We specify RGB in shader but output texture is BGRA,
    // so we write as vec4(R, G, B, A) and let the format handle it
    outputBGRA[pixel] = float4(accumColor, 1.0);
}
)SHADER";

#endif // g_d3d11_raycast_hlsl_H
