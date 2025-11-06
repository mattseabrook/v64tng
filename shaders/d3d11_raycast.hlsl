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
    uint padding2;
    uint padding3;
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
    const int MAX_STEPS = 64;
    
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
        float perpWallDist = max(hit.distance / visualScale, 0.01);
        float lineHeight = screenHeight / perpWallDist;
        float drawStart = halfH - lineHeight / 2.0;
        float drawEnd = halfH + lineHeight / 2.0;
        
        // Base wall color: UNIFORM across all orientations (NO lighting yet)
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
        float rayAngle = playerAngle + camX * (playerFOV * 0.5 * fovMul);
        float2 rayDir = float2(cos(rayAngle), sin(rayAngle));
        
        // Cast ray
        RayHit hit = castRay(float2(playerX, playerY), rayDir);
        
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
    
    // Write output as BGRA (DirectX convention)
    // Note: We specify RGB in shader but output texture is BGRA,
    // so we write as vec4(R, G, B, A) and let the format handle it
    outputBGRA[pixel] = float4(accumColor, 1.0);
}
