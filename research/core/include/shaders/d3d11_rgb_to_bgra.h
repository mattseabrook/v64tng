// Embedded shader source: d3d11_rgb_to_bgra.hlsl
// (Copied into Engine from v64tng build output so Engine is self-contained)
#ifndef g_d3d11_rgb_to_bgra_hlsl_H
#define g_d3d11_rgb_to_bgra_hlsl_H

static const char* g_d3d11_rgb_to_bgra_hlsl = R"SHADER(
// DirectX 11 Compute Shader for RGB24 to BGRA32 conversion

ByteAddressBuffer inputRGB : register(t0);
RWTexture2D<unorm float4> outputBGRA : register(u0);

cbuffer Constants : register(b0)
{
    uint width;
    uint height;
    uint pad0;
    uint pad1;
};

[numthreads(8, 8, 1)]
void main(uint3 dtid : SV_DispatchThreadID)
{
    uint2 pixel = dtid.xy;
    if (pixel.x >= width || pixel.y >= height)
        return;

    uint idx = (pixel.y * width + pixel.x) * 3;

    uint byte0 = inputRGB.Load(idx);
    uint byte1 = inputRGB.Load(idx + 1);
    uint byte2 = inputRGB.Load(idx + 2);

    float r = (byte0 & 0xFF) / 255.0;
    float g = (byte1 & 0xFF) / 255.0;
    float b = (byte2 & 0xFF) / 255.0;

    outputBGRA[pixel] = float4(b, g, r, 1.0);
}
)SHADER";

#endif // g_d3d11_rgb_to_bgra_hlsl_H
