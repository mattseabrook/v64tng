// DirectX 11 Compute Shader for GPU-Accelerated Raycasting
// Implements DDA algorithm entirely on GPU for maximum parallelism

// Tile map: 2D texture of uint8 wall types
Texture2D<uint> tileMap : register(t0);

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
    uint padding1;
    uint padding2;
    uint padding3;
};

//==============================================================================
// DDA Raycasting on GPU
//==============================================================================

struct RayHit
{
    float distance;
    int side;  // 0 = vertical wall, 1 = horizontal wall
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
        
        // Bounds check
        if (mapPos.x < 0 || mapPos.y < 0 || 
            mapPos.x >= (int)mapWidth || mapPos.y >= (int)mapHeight)
        {
            return (RayHit){ 32.0, side };
        }
        
        // Sample tile map
        uint tile = tileMap[mapPos];
        
        // Check for walls (0x01-0xEF, excluding player markers 0xF0-0xF3)
        if (tile >= 1 && (tile < 0xF0 || tile > 0xF3))
        {
            // Hit wall - calculate distance
            float dist = side ? (sideDist.y - deltaDist.y) : (sideDist.x - deltaDist.x);
            return (RayHit){ dist, side };
        }
    }
    
    // Max distance if no hit
    return (RayHit){ 32.0, side };
}

//==============================================================================
// Shading & Lighting
//==============================================================================

float3 shadePixel(uint2 pixel, RayHit hit, float halfW, float halfH, float maxRadius)
{
    // Apply visual scale to shrink perceived distances
    float perpWallDist = max(hit.distance / visualScale, 0.01);
    float lineHeight = screenHeight / perpWallDist;
    float drawStart = halfH - lineHeight / 2.0;
    float drawEnd = halfH + lineHeight / 2.0;
    
    // Wall color based on side (darker for horizontal walls)
    float3 wallColor = hit.side ? float3(64.0/255.0, 64.0/255.0, 64.0/255.0) 
                                : float3(120.0/255.0, 120.0/255.0, 120.0/255.0);
    
    // Lighting: torch falloff
    float lightFactor = max(0.0, 1.0 - hit.distance / torchRange);
    
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
    
    // Apply lighting to wall
    float3 litWall = wallColor * lightFactor;
    
    // Determine pixel color: ceiling, wall, or floor
    float3 color;
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
        // Wall with edge blending for anti-aliasing
        if (yf < drawStart + 1.0)
        {
            // Blend ceiling → wall
            float weight = (yf - drawStart);
            weight = clamp(weight, 0.0, 1.0);
            color = lerp(ceilingColor, litWall, weight);
        }
        else if (yf > drawEnd - 1.0)
        {
            // Blend wall → floor
            float weight = (drawEnd - yf);
            weight = clamp(weight, 0.0, 1.0);
            color = lerp(floorColor, litWall, weight);
        }
        else
        {
            // Pure wall
            color = litWall;
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
    
    // Write output as BGRA (DirectX convention)
    // Note: We specify RGB in shader but output texture is BGRA,
    // so we write as vec4(R, G, B, A) and let the format handle it
    outputBGRA[pixel] = float4(accumColor, 1.0);
}
