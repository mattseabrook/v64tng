// d3d11_ycocg_to_bgra.h — D3D11 compute shader for planar YCoCg-R → BGRA conversion
//
// Input:  ByteAddressBuffer containing 3 planar channels (Y, Co, Cg), each pixel_count bytes.
// Output: RWTexture2D<float4> BGRA render texture.
//
// This shader replaces the entire CPU decode-to-texture pipeline:
//   planar YCoCg → interleave → YCoCg-R→RGB → RGB→BGRA → memcpy to texture
// in a single GPU dispatch.

static const char* g_d3d11_ycocg_to_bgra_hlsl = R"(

cbuffer YCoCgConstants : register(b0)
{
    uint width;
    uint height;
    uint pixelCount;   // width * height
    uint padding;
};

// Planar YCoCg-R data: [Y plane | Co plane | Cg plane], each pixelCount bytes.
ByteAddressBuffer planarData : register(t0);

// Output texture in BGRA format (matches swapchain / frame texture).
RWTexture2D<float4> outputTexture : register(u0);

[numthreads(256, 1, 1)]
void main(uint3 dtid : SV_DispatchThreadID)
{
    uint idx = dtid.x;
    if (idx >= pixelCount)
        return;

    // Byte offsets into the planar buffer.
    uint yOffset  = idx;
    uint coOffset = pixelCount + idx;
    uint cgOffset = pixelCount * 2 + idx;

    // Load single bytes — ByteAddressBuffer loads 4 bytes at (address & ~3),
    // so we shift/mask to get the individual byte.
    int Y  = (int)((planarData.Load(yOffset  & ~3u) >> ((yOffset  & 3u) * 8u)) & 0xFFu);
    int Co = (int)((planarData.Load(coOffset & ~3u) >> ((coOffset & 3u) * 8u)) & 0xFFu);
    int Cg = (int)((planarData.Load(cgOffset & ~3u) >> ((cgOffset & 3u) * 8u)) & 0xFFu);

    // Sign-extend Co, Cg from uint8 to signed int.
    if (Co > 127) Co -= 256;
    if (Cg > 127) Cg -= 256;

    // YCoCg-R inverse (wrapping, not clamping).
    int t = Y - (Cg >> 1);
    int G = (Cg + t) & 0xFF;
    int B = (t - (Co >> 1)) & 0xFF;
    int R = (Co + B) & 0xFF;

    // 2D position in the texture.
    uint px = idx % width;
    uint py = idx / width;

    // Write as BGRA (R8G8B8A8_UNORM → float4).  The texture is B8G8R8A8_UNORM
    // in D3D11 but the UAV sees it as R8G8B8A8_UNORM so we write B,G,R,A mapping.
    outputTexture[uint2(px, py)] = float4(
        (float)B / 255.0,
        (float)G / 255.0,
        (float)R / 255.0,
        1.0
    );
}

)";
