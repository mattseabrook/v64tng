// d2d.h

#ifndef D2D_H
#define D2D_H

#include <d2d1.h>
#include <d2d1_1.h>
#include <d3d11.h>
#include <dxgi1_2.h>
#include <dxgi1_3.h>
#include <dxgi1_4.h>
#include <wrl/client.h>

#include "render.h"

// Maximum frames in flight for pipelining (matches Vulkan)
static constexpr UINT D2D_MAX_FRAMES_IN_FLIGHT = 2;

struct D2DContext
{
    // D2D1 objects kept for potential future use but not used in hot path
    Microsoft::WRL::ComPtr<ID2D1Factory1> factory1;
    Microsoft::WRL::ComPtr<ID2D1Device> d2dDevice;
    Microsoft::WRL::ComPtr<ID2D1DeviceContext> dc;
    
    // Core D3D11 objects
    Microsoft::WRL::ComPtr<ID3D11Device> d3dDevice;
    Microsoft::WRL::ComPtr<ID3D11DeviceContext> d3dContext;
    Microsoft::WRL::ComPtr<IDXGISwapChain3> swapchain;  // Upgraded to SwapChain3 for GetCurrentBackBufferIndex
    HANDLE frameLatencyWaitableObject = nullptr;        // Waitable object for frame pacing
    Microsoft::WRL::ComPtr<ID3D11Texture2D> frameTexture;
    Microsoft::WRL::ComPtr<IDXGISurface> frameSurface;
    Microsoft::WRL::ComPtr<ID2D1Bitmap1> frameBitmap;  // Kept for compatibility but not used in blit path
    
    // Direct D3D11 blit pipeline (replaces D2D1 DrawBitmap for lower overhead)
    Microsoft::WRL::ComPtr<ID3D11VertexShader> blitVertexShader;
    Microsoft::WRL::ComPtr<ID3D11PixelShader> blitPixelShader;
    Microsoft::WRL::ComPtr<ID3D11SamplerState> pointSampler;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> frameTextureSRV;
    Microsoft::WRL::ComPtr<ID3D11Buffer> blitConstantBuffer;
    Microsoft::WRL::ComPtr<ID3D11RenderTargetView> backbufferRTVs[D2D_MAX_FRAMES_IN_FLIGHT];
    UINT currentBackbuffer = 0;
    
    // Cached blit constants to avoid redundant updates
    float lastBlitDestX = -1.0f;
    float lastBlitDestY = -1.0f;
    float lastBlitDestW = -1.0f;
    float lastBlitDestH = -1.0f;
    float lastBlitSrcW = -1.0f;
    float lastBlitSrcH = -1.0f;
    
    // Legacy D2D1 bitmap targets (kept for potential fallback)
    Microsoft::WRL::ComPtr<ID2D1Bitmap1> backbufferTargets[D2D_MAX_FRAMES_IN_FLIGHT];
    
    // Double-buffered staging textures for batched row uploads (avoid GPU stalls)
    Microsoft::WRL::ComPtr<ID3D11Texture2D> stagingTextures[D2D_MAX_FRAMES_IN_FLIGHT];
    UINT currentStagingIndex = 0;
    
    // Cached dimensions for constant buffer optimization
    UINT lastConstantWidth = 0;
    UINT lastConstantHeight = 0;
    
    std::vector<uint8_t> rowBuffer;
    std::vector<uint8_t> previousFrameData; // For dirty-row detection in 2D path
    std::vector<uint8_t> frameBGRA;         // CPU-side full BGRA buffer (accumulate changed rows)
    bool forceFullUpdate = true;
    // Track source changes to reset dirty-tracking when VDX switches
    const struct VDXFile* lastVDX = nullptr;
    bool lastWasTransient = false;
    UINT textureWidth = 0;
    UINT textureHeight = 0;
    
    // GPU Compute Pipeline Resources (2D rendering)
    Microsoft::WRL::ComPtr<ID3D11ComputeShader> computeShader;
    Microsoft::WRL::ComPtr<ID3D11Buffer> inputRGBBuffer;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> inputRGBSRV;
    Microsoft::WRL::ComPtr<ID3D11UnorderedAccessView> frameTextureUAV;
    Microsoft::WRL::ComPtr<ID3D11Buffer> constantBuffer;
    UINT rgbBufferSize = 0;
    
    // GPU Raycasting Resources
    Microsoft::WRL::ComPtr<ID3D11ComputeShader> raycastComputeShader;
    Microsoft::WRL::ComPtr<ID3D11Texture2D> tileMapTexture;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> tileMapSRV;
    Microsoft::WRL::ComPtr<ID3D11Buffer> raycastConstantBuffer;
    UINT lastMapWidth = 0;
    UINT lastMapHeight = 0;

    // Megatexture edge-offset lookup buffer (SRV as R32_UINT array)
    Microsoft::WRL::ComPtr<ID3D11Buffer> edgeOffsetsBuffer;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> edgeOffsetsSRV;
};

extern D2DContext d2dCtx;

void initializeD2D();
void renderFrameD2D();
void renderFrameRaycast();
void renderFrameRaycastGPU();
void resizeTexture(UINT width, UINT height);
void cleanupD2D();
void recreateBackbufferTargets();

// Renderer-specific resize entry (called from window.cpp)
void handleResizeD2D(int newW, int newH);

#endif // D2D_H