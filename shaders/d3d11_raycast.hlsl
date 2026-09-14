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

// Continuous foundation stone: no repeated tile or map-sized allocation.
// Irregular foundation stones, recessed mortar, concrete mottling and chips.
float floorHash(float x, float y)
{
    uint h = uint(int(x)) * 374761393u + uint(int(y)) * 668265263u + 1937u;
    h = (h ^ (h >> 13u)) * 1274126177u;
    return float(h ^ (h >> 16u)) / 4294967295.0;
}
float floorNoise(float x, float y)
{
    float ix = floor(x), iy = floor(y);
    float u = x - ix, v = y - iy;
    u = u*u*(3.0-2.0*u); v = v*v*(3.0-2.0*v);
    return lerp(lerp(floorHash(ix,iy), floorHash(ix+1.0,iy),u),
                lerp(floorHash(ix,iy+1.0), floorHash(ix+1.0,iy+1.0),u),v);
}
float foundationStone(float x, float y, float footprint)
{
    float wx = x*1.7 + 0.22*floorNoise(x*3.0,y*3.0);
    float wy = y*1.7 + 0.22*floorNoise(x*3.0+37.0,y*3.0+19.0);
    float ix = floor(wx), iy = floor(wy);
    float first = 100.0, second = 100.0, stone = 0.5;
    for (int j=-1; j<=1; ++j)
    for (int i=-1; i<=1; ++i)
    {
        float cx = ix+float(i), cy = iy+float(j);
        float seed = floorHash(cx,cy);
        float dx = wx-cx-0.15-0.7*seed;
        float dy = wy-cy-0.15-0.7*floorHash(cx+71.0,cy-43.0);
        float d = dx*dx+dy*dy;
        if (d < first) { second=first; first=d; stone=seed; }
        else { second=min(second,d); }
    }
    float ridge = sqrt(second)-sqrt(first);
    float aa = max(0.008,footprint*1.7);
    float mortar = 1.0-smoothstep(0.025,0.025+aa,ridge);
    float detail = 1.0-smoothstep(0.015,0.09,footprint);
    float chips = smoothstep(0.68,0.86,floorNoise(x*43.0,y*43.0))*detail;
    float grain = (floorNoise(x*95.0,y*95.0)-0.5)*detail;
    float grey = 106.0 + (stone-0.5)*12.0
        + (floorNoise(x*4.0,y*4.0)-0.5)*18.0 + grain*9.0 - chips*23.0;
    // Suppress subpixel seams at distance to keep the floor from shimmering.
    mortar *= 1.0-smoothstep(0.08,0.3,footprint);
    return (106.0+0.9*(lerp(grey,65.0,mortar)-106.0))/255.0;
}
float quietFloor(float x, float y, float footprint)
{
    // Concrete mottling and scattered flecks, without stone cells or mortar.
    float detail = 1.0-smoothstep(0.015,0.09,footprint);
    float grain = floorNoise(x*9.0,y*9.0)-0.5;
    float flecks = smoothstep(0.72,0.9,floorNoise(x*43.0,y*43.0))*detail;
    return (106.0+grain*4.0-flecks*5.0)/255.0;
}

float basementLight(float distance, float range)
{
    return 0.65*(1.0-smoothstep(range*0.55,range,distance)) / (1.0+0.035*distance);
}

// Project the prepared animation as a world billboard; the ray hit supplies
// wall occlusion for this pixel. Camera movement never moves the source itself.
float3 ghostPixel(float3 color, uint2 pixel, RayHit hit)
{
    if (edgeData[0] == 0u) return color;
    float2 relative=float2(asfloat(edgeData[3])-playerX,asfloat(edgeData[4])-playerY);
    float depth=dot(relative,float2(cos(playerAngle),sin(playerAngle)));
    if (depth<=0.1 || (hit.hitWall && hit.distance*hit.cosCorr<depth)) return color;
    float side=dot(relative,float2(-sin(playerAngle),cos(playerAngle)));
    float tangent=tan(playerFOV*0.5*fovMul);
    float fx=float(screenWidth)*0.5/tangent, fy=float(screenHeight)*0.5/tangent;
    float h=fy*3.8/depth;
    float w=fx*3.8*float(edgeData[1])/float(edgeData[2])/depth;
    float left=float(screenWidth)*0.5+side*fx/depth-w*0.5;
    float top=float(screenHeight)*0.5+fy*visualScale/depth-h;
    float2 uv=(float2(pixel)+0.5-float2(left,top))/float2(w,h);
    if (uv.x<0.0 || uv.y<0.0 || uv.x>=1.0 || uv.y>=1.0) return color;
    uint x=uint(uv.x*float(edgeData[1])), y=uint(uv.y*float(edgeData[2]));
    uint rgba=edgeData[8u+y*edgeData[1]+x];
    float3 actor=float3(float(rgba&255u),float((rgba>>8u)&255u),float((rgba>>16u)&255u))/255.0;
    float alpha=float(rgba>>24u)/255.0;
    alpha*=1.0-smoothstep(torchRange*0.7,torchRange,length(relative));
    return lerp(color,actor,alpha);
}

// Only geometric turns get a line; adjacent coplanar tiles stay seamless.
bool cornerSolid(int2 cell)
{
    if (cell.x<0 || cell.y<0 || cell.x>=int(mapWidth) || cell.y>=int(mapHeight)) return true;
    uint tile=tileMap[cell];
    return tile>=1u && (tile<0xf0u || tile>0xf3u);
}
bool cornerPixel(uint pixelX, RayHit hit)
{
    bool vertical=(hit.cardinalSide&1)!=0;
    int endpoint=hit.wallX<0.5 ? 0 : 1;
    int vx=hit.cell.x+(vertical ? (hit.cardinalSide==1 ? 1 : 0) : endpoint);
    int vy=hit.cell.y+(vertical ? endpoint : (hit.cardinalSide==2 ? 1 : 0));
    bool a=cornerSolid(int2(vx-1,vy-1)), b=cornerSolid(int2(vx,vy-1));
    bool c=cornerSolid(int2(vx-1,vy)), d=cornerSolid(int2(vx,vy));
    int count=int(a)+int(b)+int(c)+int(d);
    if (!(count==1 || count==3 || (count==2 && a==d))) return false;
    float2 relative=float2(vx,vy)-float2(playerX,playerY);
    float depth=dot(relative,float2(cos(playerAngle),sin(playerAngle)));
    if (depth<=0.001) return false;
    float side=dot(relative,float2(-sin(playerAngle),cos(playerAngle)));
    float projected=float(screenWidth)*0.5*(1.0+side/(depth*tan(playerFOV*0.5*fovMul)));
    return floor(projected)==float(pixelX);
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
    
    // Project both planes with the same camera scale as the wall projection.
    float viewX = (2.0*(float(pixel.x)+0.5)/float(screenWidth)-1.0)
        * tan(playerFOV*0.5*fovMul);
    float corr = 1.0/sqrt(1.0+viewX*viewX);
    float planeDistance = halfH*visualScale /
        (max(abs(yf-halfH),0.5)*max(tan(playerFOV*0.5*fovMul),0.001)*corr);
    float planeLight = basementLight(planeDistance,torchRange);
    float3 ceilingColor = float3(35.0,28.0,42.0)/255.0*planeLight;
    float3 floorColor = float3(0.0,0.0,0.0);
    if (yf > halfH && planeLight > 0.0)
    {
        float angle = playerAngle+atan(viewX);
        float2 world = float2(playerX,playerY)
            + float2(cos(angle),sin(angle))*planeDistance;
        float footprint = planeDistance/max(yf-halfH,1.0);
        float grey = quietFloor(world.x,world.y,footprint)*planeLight;
        floorColor = float3(grey,grey,grey);
    }

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
            // The former floor stone material, mapped continuously along each wall.
            float v = clamp((yf-drawStart)/max(1.0,drawEnd-drawStart),0.0,1.0);
            bool vertical = (hit.cardinalSide & 1) != 0;
            float wx = vertical ? float(hit.cell.x)+(hit.cardinalSide == 1 ? 1.0 : 0.0)
                : float(hit.cell.x)+hit.wallX;
            float wy = vertical ? float(hit.cell.y)+hit.wallX
                : float(hit.cell.y)+(hit.cardinalSide == 2 ? 1.0 : 0.0);
            float u = wx+wy; // Shared corners sample exactly the same stone seam.
            float height = 2.0*visualScale;
            float footprint = max(height/max(1.0,lineHeight),
                hit.distance*2.0*halfFovTan/float(screenWidth));
            float grey = foundationStone(u,v*height,footprint)
                * basementLight(hit.distance,torchRange);
            if (cornerPixel(pixel.x,hit)) grey = (88.0/255.0)*basementLight(hit.distance,torchRange);
            if (tileMap[hit.cell] == 0xfeu) grey = 0.0;
            float3 litWall = float3(grey,grey,grey);
            if (yf < drawStart+1.0)
                color = lerp(ceilingColor,litWall,clamp(yf-drawStart,0.0,1.0));
            else if (yf > drawEnd-1.0)
                color = lerp(floorColor,litWall,clamp(drawEnd-yf,0.0,1.0));
            else
                color = litWall;
        }
    }
    
    color = ghostPixel(color,pixel,hit);

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
