// DirectX 11 Compute Shader for GPU-Accelerated Raycasting
// Implements DDA algorithm entirely on GPU for maximum parallelism

// Tile map: 2D texture of uint8 wall types
Texture2D<uint> tileMap : register(t0);
// Megatexture edge data: triplets [offset,width,dirFlag] of uints indexed by ((y*mapWidth + x)*4 + side)
Buffer<uint> edgeData : register(t1);

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
    uint measuredFPS;
    float mapOverlayZoom;    // 0.0 = overlay off, >0 = zoom level
};

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
    float cosCorr;     // perpendicular-distance correction
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
    const int MAX_STEPS = clamp(int(mapWidth + mapHeight) + 64, 64, 4096);
    
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
            RayHit r; r.distance = dist; r.side = side; r.hitWall = false; r.cell = mapPos; r.cardinalSide = 0; r.wallX = 0.0;
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
            return r;
        }
    }
    
    // Max steps reached - return distance traveled, no wall hit
    float dist = side ? (sideDist.y - deltaDist.y) : (sideDist.x - deltaDist.x);
    RayHit r; r.distance = dist; r.side = side; r.hitWall = false; r.cell = mapPos; r.cardinalSide = 0; r.wallX = 0.0;
    return r;
}

//==============================================================================
// Shading & Lighting
//==============================================================================

// Procedural mortar veins (subset of CPU algorithm)
float mortarMask(float globalU, float v)
{
    // Mapping: 1024 px width = 3 world units, 1024 px height = 1 world unit
    float x = (globalU / 1024.0) * 3.0;
    float y = v;
    // Cheap cellular ridge: evaluate nearest points in 3x3 grid (fixed seed)
    float density = 2.0; // cells per unit
    float X = x * density;
    float Y = y * density;
    int xi = (int)floor(X);
    int yi = (int)floor(Y);
    float f1 = 1e9, f2 = 1e9;
    [unroll]
    for (int dy=-1; dy<=1; ++dy)
    {
        [unroll]
        for (int dx=-1; dx<=1; ++dx)
        {
            int cx = xi+dx, cy = yi+dy;
            // hash
            uint h = asuint((cx*73856093) ^ (cy*19349663) ^ 12345);
            float jx = frac(h * 0.000000119f);
            float jy = frac(h * 0.000000167f);
            float fx = (float)cx + jx;
            float fy = (float)cy + jy;
            float dxp = X - fx;
            float dyp = Y - fy;
            float d2 = dxp*dxp + dyp*dyp;
            if (d2 < f1) { f2 = f1; f1 = d2; }
            else if (d2 < f2) { f2 = d2; }
        }
    }
    f1 = sqrt(f1); f2 = sqrt(f2);
    float ridge = (f2 - f1);
    float target = 0.015; // mortar width in world units (3x thicker for more visible mortar lines)
    float m = saturate(1.0 - smoothstep(target*0.25, target*0.75, ridge));
    // Shape a bit
    return pow(m, 0.8);
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
    float ceilingShade = 120.0/255.0 * (1.0 - yf / halfH);
    ceilingShade = clamp(ceilingShade, 0.0, 1.0);
    float3 ceilingColor = float3(ceilingShade, ceilingShade, ceilingShade);
    
    // Floor gradient
    float floorRatio = (yf - halfH) / halfH;
    floorRatio = clamp(floorRatio, 0.0, 1.0);
    float3 floorColor = float3(90.0/255.0 * floorRatio, 
                               70.0/255.0 * floorRatio, 
                               50.0/255.0 * floorRatio);
    
    // If no wall hit, just render floor/ceiling
    float3 color;
    if (!hit.hitWall)
    {
        color = (yf < halfH) ? ceilingColor : floorColor;
    }
    else
    {
        // Hit a wall - calculate wall rendering
        float perpWallDist =
            max(hit.distance * hit.cosCorr / visualScale, 0.01);
        float halfFovTan = max(tan(playerFOV * 0.5 * fovMul), 0.001);
        float lineHeight = screenHeight / (perpWallDist * halfFovTan);
        float drawStart = halfH - lineHeight / 2.0;
        float drawEnd = halfH + lineHeight / 2.0;
        
        // Base wall color
        float3 baseWall = float3(120.0/255.0, 120.0/255.0, 120.0/255.0);
        
        // Determine pixel color: ceiling, wall, or floor
        if (yf < drawStart)
        {
            // Ceiling
            color = ceilingColor;
        }
        else if (yf > drawEnd)
        {
            // Floor
            color = floorColor;
        }
        else
        {
            // Wall with megatexture mortar overlay and edge blending
            if (yf < drawStart + 1.0)
            {
                // Blend ceiling → wall (apply lighting to base wall first)
                float lightFactor = max(0.0, 1.0 - hit.distance / torchRange);
                float3 litWall = baseWall * lightFactor;
                float weight = (yf - drawStart);
                weight = clamp(weight, 0.0, 1.0);
                color = lerp(ceilingColor, litWall, weight);
            }
            else if (yf > drawEnd - 1.0)
            {
                // Blend wall → floor (apply lighting to base wall first)
                float lightFactor = max(0.0, 1.0 - hit.distance / torchRange);
                float3 litWall = baseWall * lightFactor;
                float weight = (drawEnd - yf);
                weight = clamp(weight, 0.0, 1.0);
                color = lerp(floorColor, litWall, weight);
            }
            else
            {
                // Per-pixel v along wall
                float v = saturate((yf - drawStart) / max(1.0, (drawEnd - drawStart)));
                // Lookup global U offset for this wall edge
                uint idx = (uint(hit.cell.y) * mapWidth + uint(hit.cell.x)) * 4u + uint(hit.cardinalSide & 3);
                uint idx3 = idx * 3u;
                uint xOff = edgeData[idx3 + 0];
                uint wpx  = edgeData[idx3 + 1];
                uint dir  = edgeData[idx3 + 2]; // 0: +u, 1: flip u
                float uLocal = (dir != 0u) ? (1.0 - hit.wallX) : hit.wallX;
                float globalU = float(xOff) + uLocal * float(wpx);
                // Mortar alpha mask
                float a = mortarMask(globalU, v);
                float3 mortarGray = float3(0.30, 0.30, 0.30);
                // Blend base wall with mortar FIRST (both unlit)
                float3 compositedWall = lerp(baseWall, mortarGray, a);
                // THEN apply lighting to the final composited color
                float lightFactor = max(0.0, 1.0 - hit.distance / torchRange);
                color = compositedWall * lightFactor;
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

// Tile map helpers: the tile map texture is double height - top half holds
// tile values, bottom half holds fog-of-war explored flags.
uint getTile(int2 pos)
{
    if (pos.x < 0 || pos.y < 0 || pos.x >= (int)mapWidth || pos.y >= (int)mapHeight)
        return 0xFF; // out of bounds = solid
    return tileMap[pos];
}

uint getExplored(int2 pos)
{
    if (pos.x < 0 || pos.y < 0 || pos.x >= (int)mapWidth || pos.y >= (int)mapHeight)
        return 0u;
    return tileMap[int2(pos.x, pos.y + (int)mapHeight)];
}

bool isSolidWallTile(uint tile)
{
    return (tile >= 1u && (tile < 0xF0u || tile > 0xF3u));
}

bool isExploredOpen(int2 pos)
{
    return getExplored(pos) != 0u && !isSolidWallTile(getTile(pos));
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

// Draw a centered top-down CAD-style map overlay with fog of war.
// Zoom level controls magnification, centered on player.
// Only explored cells are visible; wall edges drawn as clean lines.
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

    // Player marker: bright red dot
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
        float halfSpan = cellSize * 0.5;
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

        if (nConn && nVisible && pointSegmentDistance(p, c, c + float2(0.0, -halfSpan)) <= lineHalfW) drawLine = true;
        if (sConn && sVisible && pointSegmentDistance(p, c, c + float2(0.0,  halfSpan)) <= lineHalfW) drawLine = true;
        if (wConn && wVisible && pointSegmentDistance(p, c, c + float2(-halfSpan, 0.0)) <= lineHalfW) drawLine = true;
        if (eConn && eVisible && pointSegmentDistance(p, c, c + float2( halfSpan, 0.0)) <= lineHalfW) drawLine = true;

        bool isolatedVisible = isExploredOpen(int2(cx - 1, cy)) || isExploredOpen(int2(cx + 1, cy)) ||
                               isExploredOpen(int2(cx, cy - 1)) || isExploredOpen(int2(cx, cy + 1));
        if (!nConn && !sConn && !wConn && !eConn && isolatedVisible && length(p - c) <= lineHalfW)
            drawLine = true;
    }

    if (drawLine)
        color = lerp(color, float3(0.6, 0.75, 0.9), 0.85);

    return color;
}

uint fpsGlyphPattern(uint glyph)
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
    uint fps = min(measuredFPS, 999u);
    uint scale = screenWidth >= 1200u ? 3u : 2u;
    uint advance = 4u * scale;
    uint textWidth = 7u * advance - scale;
    uint startX = screenWidth > textWidth + 10u
        ? screenWidth - textWidth - 10u : 4u;
    uint startY = 8u;
    if (pixel.x + 4u >= startX && pixel.x < startX + textWidth + 4u &&
        pixel.y + 3u >= startY && pixel.y < startY + 5u * scale + 3u)
        sceneColor *= 0.25;
    if (pixel.x < startX || pixel.y < startY ||
        pixel.y >= startY + 5u * scale)
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
    return (fpsGlyphPattern(glyph) & (1u << bit)) != 0u
        ? float3(1.0, 1.0, 1.0) : sceneColor;
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
        
        // Calculate ray angle and direction
        float halfFovTan = tan(playerFOV * 0.5 * fovMul);
        float viewX = camX * halfFovTan;
        float rayAngle = playerAngle + atan(viewX);
        float2 rayDir = float2(cos(rayAngle), sin(rayAngle));
        
        // Cast ray
        RayHit hit = castRay(float2(playerX, playerY), rayDir);
        hit.cosCorr = 1.0 / sqrt(1.0 + viewX * viewX);
        
        // Shade pixel
        float3 color = shadePixel(pixel, hit, halfW, halfH, maxRadius);
        accumColor += color;
    }
    
    // Average samples
    accumColor /= supersample;

    // Add a touch of dithering to reduce visible banding on smooth gradients
    // Cheap hash from pixel coords -> [0,1)
    uint hash = pixel.x * 1664525u + pixel.y * 1013904223u;
    hash ^= hash >> 16;
    float d = ((hash & 1023u) / 1023.0 - 0.5) * (1.5 / 255.0);
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
