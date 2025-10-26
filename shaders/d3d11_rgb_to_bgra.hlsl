// DirectX 11 Compute Shader for RGB24 to BGRA32 conversion

// Input: RGB data as raw bytes (3 bytes per pixel)
ByteAddressBuffer inputRGB : register(t0);

// Output: BGRA texture (4 bytes per pixel)
RWTexture2D<unorm float4> outputBGRA : register(u0);

// Constants
cbuffer Constants : register(b0)
{
    uint width;
    uint height;
    uint padding1;
    uint padding2;
};

[numthreads(8, 8, 1)]
void main(uint3 DTid : SV_DispatchThreadID)
{
    // Bounds check
    if (DTid.x >= width || DTid.y >= height)
        return;
    
    // Calculate pixel index
    uint pixelIndex = DTid.y * width + DTid.x;
    uint rgbOffset = pixelIndex * 3;
    
    // Load RGB bytes (stored as R, G, B in memory)
    // Memory layout: [R0, G0, B0, R1, G1, B1, R2, G2, B2, ...]
    uint3 rgbBytes;
    
    // ByteAddressBuffer.Load reads DWORDs in little-endian
    // So byte 0 is in LSB, byte 1 is next, etc.
    uint baseOffset = (rgbOffset / 4) * 4;
    uint alignment = rgbOffset % 4;
    
    if (alignment == 0)
    {
        // Bytes: [R G B X] -> packed = 0xXXBBGGRR
        uint packed = inputRGB.Load(baseOffset);
        rgbBytes.r = (packed >> 0) & 0xFF;   // R is at byte 0 (LSB)
        rgbBytes.g = (packed >> 8) & 0xFF;   // G is at byte 1
        rgbBytes.b = (packed >> 16) & 0xFF;  // B is at byte 2
    }
    else if (alignment == 1)
    {
        // Bytes: [X R G B] in packed0 -> 0xBBGGRRXX
        uint packed0 = inputRGB.Load(baseOffset);
        rgbBytes.r = (packed0 >> 8) & 0xFF;   // R is at byte 1
        rgbBytes.g = (packed0 >> 16) & 0xFF;  // G is at byte 2
        rgbBytes.b = (packed0 >> 24) & 0xFF;  // B is at byte 3
    }
    else if (alignment == 2)
    {
        // Bytes: [X X R G] in packed0, [B ...] in packed1
        uint packed0 = inputRGB.Load(baseOffset);
        uint packed1 = inputRGB.Load(baseOffset + 4);
        rgbBytes.r = (packed0 >> 16) & 0xFF;  // R is at byte 2 of packed0
        rgbBytes.g = (packed0 >> 24) & 0xFF;  // G is at byte 3 of packed0
        rgbBytes.b = (packed1 >> 0) & 0xFF;   // B is at byte 0 of packed1
    }
    else // alignment == 3
    {
        // Bytes: [X X X R] in packed0, [G B ...] in packed1
        uint packed0 = inputRGB.Load(baseOffset);
        uint packed1 = inputRGB.Load(baseOffset + 4);
        rgbBytes.r = (packed0 >> 24) & 0xFF;  // R is at byte 3 of packed0
        rgbBytes.g = (packed1 >> 0) & 0xFF;   // G is at byte 0 of packed1
        rgbBytes.b = (packed1 >> 8) & 0xFF;   // B is at byte 1 of packed1
    }
    
    // Write logically as RGBA. For BGRA textures, the driver performs the
    // R/B swizzle for shader-visible writes. Writing RGBA here matches the
    // CPU path exactly and avoids double-swizzle mistakes.
    float4 rgba;
    rgba.r = float(rgbBytes.r) / 255.0;  // Red
    rgba.g = float(rgbBytes.g) / 255.0;  // Green
    rgba.b = float(rgbBytes.b) / 255.0;  // Blue
    rgba.a = 1.0;                        // Alpha
    
    // Write to output texture
    outputBGRA[uint2(DTid.x, DTid.y)] = rgba;
}
