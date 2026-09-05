// d2d.h

#ifndef D2D_H
#define D2D_H

#include <d2d1.h>
#include <d2d1_1.h>
#include <d3d11.h>
#include <dxgi1_2.h>
#include <dxgi1_3.h>
#include <dxgi1_4.h>
#include <dwrite.h>
#include <wrl/client.h>
#include <cstdint>

#include "render.h"

struct D2DContext
{
    Microsoft::WRL::ComPtr<ID2D1Factory1> factory1;
    Microsoft::WRL::ComPtr<ID2D1Device> d2dDevice;
    Microsoft::WRL::ComPtr<ID2D1DeviceContext> dc;
    Microsoft::WRL::ComPtr<ID3D11Device> d3dDevice;
    Microsoft::WRL::ComPtr<ID3D11DeviceContext> d3dContext;
    Microsoft::WRL::ComPtr<IDXGISwapChain3> swapchain;
    HANDLE frameLatencyWaitableObject = nullptr;
    Microsoft::WRL::ComPtr<ID3D11Texture2D> frameTexture;
    Microsoft::WRL::ComPtr<IDXGISurface> frameSurface;
    Microsoft::WRL::ComPtr<ID2D1Bitmap1> frameBitmap;
    Microsoft::WRL::ComPtr<ID2D1Bitmap1> targetBitmap;
    Microsoft::WRL::ComPtr<ID2D1Bitmap> menuTitleBitmap;
    std::vector<uint8_t> rowBuffer;
    std::vector<uint8_t> previousFrameData;
    bool forceFullUpdate = true;
    UINT textureWidth = 0;
    UINT textureHeight = 0;
    
    // DirectWrite for text rendering
    Microsoft::WRL::ComPtr<IDWriteFactory> writeFactory;
    Microsoft::WRL::ComPtr<IDWriteTextFormat> textFormat;
    Microsoft::WRL::ComPtr<ID2D1SolidColorBrush> whiteBrush;
    Microsoft::WRL::ComPtr<ID2D1SolidColorBrush> shadowBrush;

    // Direct D3D11 blit pipeline (used by GPU raycast path)
    Microsoft::WRL::ComPtr<ID3D11VertexShader> blitVertexShader;
    Microsoft::WRL::ComPtr<ID3D11PixelShader> blitPixelShader;
    Microsoft::WRL::ComPtr<ID3D11SamplerState> pointSampler;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> frameTextureSRV;
    Microsoft::WRL::ComPtr<ID3D11Buffer> blitConstantBuffer;
    Microsoft::WRL::ComPtr<ID3D11RenderTargetView> backbufferRTVs[2];
    Microsoft::WRL::ComPtr<ID2D1Bitmap1> backbufferBitmaps[2];
    UINT currentBackbuffer = 0;

    // Cached blit constants
    float lastBlitDestX = -1.0f;
    float lastBlitDestY = -1.0f;
    float lastBlitDestW = -1.0f;
    float lastBlitDestH = -1.0f;
    float lastBlitSrcW = -1.0f;
    float lastBlitSrcH = -1.0f;

    // GPU raycasting resources (D3D11 compute)
    Microsoft::WRL::ComPtr<ID3D11ComputeShader> raycastComputeShader;
    Microsoft::WRL::ComPtr<ID3D11Texture2D> tileMapTexture;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> tileMapSRV;
    Microsoft::WRL::ComPtr<ID3D11Buffer> raycastConstantBuffer;
    UINT lastMapWidth = 0;
    UINT lastMapHeight = 0;
    uint64_t uploadedMapRevision = 0;
    uint64_t uploadedExploredRevision = 0;
    std::vector<uint8_t> tileMapUploadCache;

    Microsoft::WRL::ComPtr<ID3D11Buffer> edgeOffsetsBuffer;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> edgeOffsetsSRV;
    size_t edgeOffsetsByteSize = 0;
    uint64_t uploadedEdgeVersion = 0;

    Microsoft::WRL::ComPtr<ID3D11Texture2D> megatexTexture;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> megatexSRV;
    UINT megatexTileWidth = 0;
    UINT megatexTileHeight = 0;
    UINT megatexTileCount = 0;
    uint64_t lastMegatexVersion = 0;
    bool hasMegatexVersion = false;

    // Output for GPU raycaster
    Microsoft::WRL::ComPtr<ID3D11Texture2D> raycastOutputTexture;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> raycastOutputSRV;
    Microsoft::WRL::ComPtr<ID3D11UnorderedAccessView> raycastOutputUAV;
    UINT raycastOutputWidth = 0;
    UINT raycastOutputHeight = 0;

    // GPU YCoCg-R → BGRA compute pipeline (menu/PVX decode offload)
    Microsoft::WRL::ComPtr<ID3D11ComputeShader> ycocgComputeShader;
    Microsoft::WRL::ComPtr<ID3D11Buffer> ycocgConstantBuffer;
    Microsoft::WRL::ComPtr<ID3D11Buffer> ycocgPlanarBuffer;       // upload buffer for planar data
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> ycocgPlanarSRV;
    Microsoft::WRL::ComPtr<ID3D11UnorderedAccessView> ycocgOutputUAV;   // UAV on frameTexture
    size_t ycocgPlanarBufferSize = 0;  // current capacity in bytes
};

extern D2DContext d2dCtx;

void initializeD2D();
void renderFrameD2D();
void renderFrameRaycast();
void renderFrameRaycastGPU();
void renderFrameMenu();
void renderFrameMenuGPU(const uint8_t* planarYCoCg, size_t dataSize, uint32_t width, uint32_t height);
D3D11_MAPPED_SUBRESOURCE mapTexture();
void unmapTexture();
void resizeTexture(UINT width, UINT height);
void recreateBackbufferTargets();
void cleanupD2D();

#endif // D2D_H
