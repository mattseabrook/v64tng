// d2d.h

#ifndef D2D_H
#define D2D_H

#include <d2d1.h>
#include <d2d1_1.h>
#include <d3d11.h>
#include <dxgi1_2.h>
#include <wrl/client.h>

#include "render.h"

struct D2DContext
{
    Microsoft::WRL::ComPtr<ID2D1Factory1> factory1;
    Microsoft::WRL::ComPtr<ID2D1Device> d2dDevice;
    Microsoft::WRL::ComPtr<ID2D1DeviceContext> dc;
    Microsoft::WRL::ComPtr<ID3D11Device> d3dDevice;
    Microsoft::WRL::ComPtr<ID3D11DeviceContext> d3dContext;
    Microsoft::WRL::ComPtr<IDXGISwapChain1> swapchain;
    Microsoft::WRL::ComPtr<ID3D11Texture2D> frameTexture;
    Microsoft::WRL::ComPtr<IDXGISurface> frameSurface;
    Microsoft::WRL::ComPtr<ID2D1Bitmap1> frameBitmap;
    Microsoft::WRL::ComPtr<ID2D1Bitmap1> targetBitmap;
    std::vector<uint8_t> rowBuffer;
    std::vector<uint8_t> previousFrameData; // For dirty-row detection in 2D path
    std::vector<uint8_t> frameBGRA;         // CPU-side full BGRA buffer (accumulate changed rows)
    bool forceFullUpdate = true;
    // Track source changes to reset dirty-tracking when VDX switches
    const struct VDXFile* lastVDX = nullptr;
    bool lastWasTransient = false;
    UINT textureWidth = 0;
    UINT textureHeight = 0;
    
    // GPU Compute Pipeline Resources
    Microsoft::WRL::ComPtr<ID3D11ComputeShader> computeShader;
    Microsoft::WRL::ComPtr<ID3D11Buffer> inputRGBBuffer;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> inputRGBSRV;
    Microsoft::WRL::ComPtr<ID3D11UnorderedAccessView> frameTextureUAV;
    Microsoft::WRL::ComPtr<ID3D11Buffer> constantBuffer;
    UINT rgbBufferSize = 0;
};

extern D2DContext d2dCtx;

void initializeD2D();
void renderFrameD2D();
void renderFrameRaycast();
void resizeTexture(UINT width, UINT height);
void cleanupD2D();

// Renderer-specific resize entry (called from window.cpp)
void handleResizeD2D(int newW, int newH);

#endif // D2D_H