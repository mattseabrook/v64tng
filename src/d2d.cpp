// d2d.cpp

#include <stdexcept>
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <fstream>
#include <vector>
#include <algorithm>
#include <d3dcompiler.h>
#include <dxgi1_4.h>

#include "d2d.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "megatexture.h"
#include "game.h"
#include "../build/d3d11_rgb_to_bgra.h"
#include "../build/d3d11_raycast.h"

D2DContext d2dCtx;

// Forward declaration
void recreateBackbufferTargets();

//
// Helper function to compile HLSL shader from embedded source string
//
static Microsoft::WRL::ComPtr<ID3DBlob> compileShaderFromSource(const char* source, const char* entryPoint, const char* target)
{
    UINT compileFlags = D3DCOMPILE_ENABLE_STRICTNESS;
#ifdef _DEBUG
    compileFlags |= D3DCOMPILE_DEBUG | D3DCOMPILE_SKIP_OPTIMIZATION;
#endif

    Microsoft::WRL::ComPtr<ID3DBlob> shaderBlob;
    Microsoft::WRL::ComPtr<ID3DBlob> errorBlob;
    
    HRESULT hr = D3DCompile(
        source,
        strlen(source),
        nullptr,
        nullptr,
        nullptr,
        entryPoint,
        target,
        compileFlags,
        0,
        shaderBlob.GetAddressOf(),
        errorBlob.GetAddressOf()
    );
    
    if (FAILED(hr))
    {
        if (errorBlob)
        {
            OutputDebugStringA((char*)errorBlob->GetBufferPointer());
            throw std::runtime_error("Shader compilation failed: " + std::string((char*)errorBlob->GetBufferPointer()));
        }
        throw std::runtime_error("Failed to compile embedded shader");
    }
    
    return shaderBlob;
}

//
// Embedded fullscreen blit shaders (replaces D2D1 DrawBitmap for lower overhead)
// Draws a quad (two triangles) covering the destination rectangle
//
static const char* g_blitShaderSource = R"(
// Constant buffer for destination rect
cbuffer BlitConstants : register(b0)
{
    float4 destRect;    // x, y, width, height normalized [0,1]
    float2 srcSize;     // source texture dimensions (unused)
    float2 viewportSize; // viewport dimensions (unused)
};

Texture2D<float4> srcTexture : register(t0);
SamplerState pointSampler : register(s0);

struct VSOutput
{
    float4 pos : SV_Position;
    float2 uv : TEXCOORD0;
};

// Generate a quad as two triangles (6 vertices)
// Triangle 1: 0,1,2  Triangle 2: 3,4,5
// Vertices: TL(0), TR(1), BL(2), TR(3), BR(4), BL(5)
VSOutput VSMain(uint vertexId : SV_VertexID)
{
    VSOutput output;
    
    // Quad corners: top-left, top-right, bottom-left, bottom-right
    // Triangle 1: TL, TR, BL (0, 1, 2)
    // Triangle 2: TR, BR, BL (3, 4, 5)
    float2 corners[6];
    corners[0] = float2(0.0, 0.0); // TL
    corners[1] = float2(1.0, 0.0); // TR
    corners[2] = float2(0.0, 1.0); // BL
    corners[3] = float2(1.0, 0.0); // TR
    corners[4] = float2(1.0, 1.0); // BR
    corners[5] = float2(0.0, 1.0); // BL
    
    float2 corner = corners[vertexId];
    
    // UV matches corner position exactly [0,1]
    output.uv = corner;
    
    // Scale and offset position to destination rect
    float2 screenPos;
    screenPos.x = destRect.x + corner.x * destRect.z;
    screenPos.y = destRect.y + corner.y * destRect.w;
    
    // Convert to clip space [-1, 1]
    output.pos.x = screenPos.x * 2.0 - 1.0;
    output.pos.y = -(screenPos.y * 2.0 - 1.0); // Flip Y for D3D
    output.pos.z = 0.0;
    output.pos.w = 1.0;
    
    return output;
}

float4 PSMain(VSOutput input) : SV_Target
{
    return srcTexture.Sample(pointSampler, input.uv);
}
)";

//
// Initialize the D3D11 blit pipeline for direct rendering (bypasses D2D1)
//
static void initializeBlitPipeline()
{
    // Compile vertex shader
    auto vsBlob = compileShaderFromSource(g_blitShaderSource, "VSMain", "vs_5_0");
    HRESULT hr = d2dCtx.d3dDevice->CreateVertexShader(
        vsBlob->GetBufferPointer(),
        vsBlob->GetBufferSize(),
        nullptr,
        d2dCtx.blitVertexShader.GetAddressOf()
    );
    if (FAILED(hr))
        throw std::runtime_error("Failed to create blit vertex shader");
    
    // Compile pixel shader
    auto psBlob = compileShaderFromSource(g_blitShaderSource, "PSMain", "ps_5_0");
    hr = d2dCtx.d3dDevice->CreatePixelShader(
        psBlob->GetBufferPointer(),
        psBlob->GetBufferSize(),
        nullptr,
        d2dCtx.blitPixelShader.GetAddressOf()
    );
    if (FAILED(hr))
        throw std::runtime_error("Failed to create blit pixel shader");
    
    // Create point sampler (nearest neighbor filtering)
    D3D11_SAMPLER_DESC samplerDesc = {};
    samplerDesc.Filter = D3D11_FILTER_MIN_MAG_MIP_POINT;
    samplerDesc.AddressU = D3D11_TEXTURE_ADDRESS_CLAMP;
    samplerDesc.AddressV = D3D11_TEXTURE_ADDRESS_CLAMP;
    samplerDesc.AddressW = D3D11_TEXTURE_ADDRESS_CLAMP;
    samplerDesc.ComparisonFunc = D3D11_COMPARISON_NEVER;
    samplerDesc.MinLOD = 0;
    samplerDesc.MaxLOD = D3D11_FLOAT32_MAX;
    
    hr = d2dCtx.d3dDevice->CreateSamplerState(&samplerDesc, d2dCtx.pointSampler.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create point sampler");
    
    // Create constant buffer for blit parameters
    D3D11_BUFFER_DESC cbDesc = {};
    cbDesc.ByteWidth = sizeof(float) * 8; // destRect(4) + srcSize(2) + viewportSize(2)
    cbDesc.Usage = D3D11_USAGE_DYNAMIC;
    cbDesc.BindFlags = D3D11_BIND_CONSTANT_BUFFER;
    cbDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;
    
    hr = d2dCtx.d3dDevice->CreateBuffer(&cbDesc, nullptr, d2dCtx.blitConstantBuffer.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create blit constant buffer");
}

//
// Create RTVs and SRV for the blit pipeline
//
static void recreateBlitResources()
{
    // Create RTVs for each backbuffer
    for (UINT i = 0; i < D2D_MAX_FRAMES_IN_FLIGHT; ++i)
    {
        d2dCtx.backbufferRTVs[i].Reset();
        
        Microsoft::WRL::ComPtr<ID3D11Texture2D> backBuffer;
        HRESULT hr = d2dCtx.swapchain->GetBuffer(i, IID_PPV_ARGS(backBuffer.GetAddressOf()));
        if (FAILED(hr)) continue;
        
        hr = d2dCtx.d3dDevice->CreateRenderTargetView(backBuffer.Get(), nullptr, d2dCtx.backbufferRTVs[i].GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create backbuffer RTV");
    }
}

//
// Create SRV for frame texture (called when texture is resized)
//
static void createFrameTextureSRV()
{
    d2dCtx.frameTextureSRV.Reset();
    
    D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
    srvDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    srvDesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2D;
    srvDesc.Texture2D.MipLevels = 1;
    srvDesc.Texture2D.MostDetailedMip = 0;
    
    HRESULT hr = d2dCtx.d3dDevice->CreateShaderResourceView(
        d2dCtx.frameTexture.Get(),
        &srvDesc,
        d2dCtx.frameTextureSRV.GetAddressOf()
    );
    if (FAILED(hr))
        throw std::runtime_error("Failed to create frame texture SRV");
}

//
// Blit frame texture to backbuffer using D3D11 directly (low overhead)
//
static void blitToBackbuffer(float destX, float destY, float destW, float destH, 
                              float srcW, float srcH, bool needsLetterbox)
{
    d2dCtx.currentBackbuffer = d2dCtx.swapchain->GetCurrentBackBufferIndex();
    ID3D11RenderTargetView* rtv = d2dCtx.backbufferRTVs[d2dCtx.currentBackbuffer].Get();
    
    // Set render target (must rebind each frame with FLIP swap chains)
    d2dCtx.d3dContext->OMSetRenderTargets(1, &rtv, nullptr);
    
    // With FLIP_DISCARD, always clear when letterboxing to ensure clean black bars
    if (needsLetterbox)
    {
        float clearColor[4] = { 0.0f, 0.0f, 0.0f, 1.0f };
        d2dCtx.d3dContext->ClearRenderTargetView(rtv, clearColor);
    }
    
    // Set viewport
    D3D11_VIEWPORT viewport = {};
    viewport.TopLeftX = 0.0f;
    viewport.TopLeftY = 0.0f;
    viewport.Width = static_cast<float>(state.ui.width);
    viewport.Height = static_cast<float>(state.ui.height);
    viewport.MinDepth = 0.0f;
    viewport.MaxDepth = 1.0f;
    d2dCtx.d3dContext->RSSetViewports(1, &viewport);
    
    // Update constant buffer only if values changed
    bool needsUpdate = (destX != d2dCtx.lastBlitDestX || destY != d2dCtx.lastBlitDestY ||
                        destW != d2dCtx.lastBlitDestW || destH != d2dCtx.lastBlitDestH ||
                        srcW != d2dCtx.lastBlitSrcW || srcH != d2dCtx.lastBlitSrcH);
    
    if (needsUpdate)
    {
        D3D11_MAPPED_SUBRESOURCE mapped;
        HRESULT hr = d2dCtx.d3dContext->Map(d2dCtx.blitConstantBuffer.Get(), 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
        if (SUCCEEDED(hr))
        {
            float* data = static_cast<float*>(mapped.pData);
            // Convert pixel coordinates to normalized [0,1] for the shader
            data[0] = destX / static_cast<float>(state.ui.width);   // destRect.x
            data[1] = destY / static_cast<float>(state.ui.height);  // destRect.y
            data[2] = destW / static_cast<float>(state.ui.width);   // destRect.width
            data[3] = destH / static_cast<float>(state.ui.height);  // destRect.height
            data[4] = srcW;                                          // srcSize.x
            data[5] = srcH;                                          // srcSize.y
            data[6] = static_cast<float>(state.ui.width);           // viewportSize.x
            data[7] = static_cast<float>(state.ui.height);          // viewportSize.y
            d2dCtx.d3dContext->Unmap(d2dCtx.blitConstantBuffer.Get(), 0);
            
            d2dCtx.lastBlitDestX = destX;
            d2dCtx.lastBlitDestY = destY;
            d2dCtx.lastBlitDestW = destW;
            d2dCtx.lastBlitDestH = destH;
            d2dCtx.lastBlitSrcW = srcW;
            d2dCtx.lastBlitSrcH = srcH;
        }
    }
    
    // Always bind shaders - compute shader path changes GPU state and D3D11 doesn't
    // track VS/PS state separately from CS state reliably across all drivers
    d2dCtx.d3dContext->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST);
    d2dCtx.d3dContext->IASetInputLayout(nullptr);  // No vertex buffer needed
    d2dCtx.d3dContext->VSSetShader(d2dCtx.blitVertexShader.Get(), nullptr, 0);
    d2dCtx.d3dContext->PSSetShader(d2dCtx.blitPixelShader.Get(), nullptr, 0);
    d2dCtx.d3dContext->PSSetSamplers(0, 1, d2dCtx.pointSampler.GetAddressOf());
    d2dCtx.d3dContext->PSSetConstantBuffers(0, 1, d2dCtx.blitConstantBuffer.GetAddressOf());
    d2dCtx.d3dContext->VSSetConstantBuffers(0, 1, d2dCtx.blitConstantBuffer.GetAddressOf());
    d2dCtx.d3dContext->PSSetShaderResources(0, 1, d2dCtx.frameTextureSRV.GetAddressOf());
    
    // Draw quad (6 vertices = 2 triangles, no vertex buffer)
    d2dCtx.d3dContext->Draw(6, 0);
    
    // Unbind SRV to allow texture to be written next frame
    ID3D11ShaderResourceView* nullSRV = nullptr;
    d2dCtx.d3dContext->PSSetShaderResources(0, 1, &nullSRV);
    
    // Unbind render target
    ID3D11RenderTargetView* nullRTV = nullptr;
    d2dCtx.d3dContext->OMSetRenderTargets(1, &nullRTV, nullptr);
}

//
// Initialize GPU compute pipeline for RGB to BGRA conversion
//
static void initializeGPUPipeline()
{
    // Compile compute shader from embedded source
    auto shaderBlob = compileShaderFromSource(g_d3d11_rgb_to_bgra_hlsl, "main", "cs_5_0");
    
    HRESULT hr = d2dCtx.d3dDevice->CreateComputeShader(
        shaderBlob->GetBufferPointer(),
        shaderBlob->GetBufferSize(),
        nullptr,
        d2dCtx.computeShader.GetAddressOf()
    );
    
    if (FAILED(hr))
        throw std::runtime_error("Failed to create compute shader");
    
    // Create constant buffer for width/height
    D3D11_BUFFER_DESC cbDesc = {};
    cbDesc.ByteWidth = sizeof(UINT) * 4; // width, height, padding, padding
    cbDesc.Usage = D3D11_USAGE_DYNAMIC;
    cbDesc.BindFlags = D3D11_BIND_CONSTANT_BUFFER;
    cbDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;
    
    hr = d2dCtx.d3dDevice->CreateBuffer(&cbDesc, nullptr, d2dCtx.constantBuffer.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create constant buffer");
}

//
// Initialize GPU raycasting pipeline
//
static void initializeRaycastGPUPipeline()
{
    try {
        // Compile raycast compute shader from embedded source
        auto shaderBlob = compileShaderFromSource(g_d3d11_raycast_hlsl, "main", "cs_5_0");
        
        HRESULT hr = d2dCtx.d3dDevice->CreateComputeShader(
            shaderBlob->GetBufferPointer(),
            shaderBlob->GetBufferSize(),
            nullptr,
            d2dCtx.raycastComputeShader.GetAddressOf()
        );
        
        if (FAILED(hr))
            throw std::runtime_error("Failed to create raycast compute shader");
        
        // Create constant buffer for raycast parameters
        // Must match the cbuffer layout in the shader (16 float/uint fields)
        D3D11_BUFFER_DESC cbDesc = {};
        cbDesc.ByteWidth = sizeof(float) * 16;  // Aligned to 16-byte boundaries
        cbDesc.Usage = D3D11_USAGE_DYNAMIC;
        cbDesc.BindFlags = D3D11_BIND_CONSTANT_BUFFER;
        cbDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;
        
        hr = d2dCtx.d3dDevice->CreateBuffer(&cbDesc, nullptr, d2dCtx.raycastConstantBuffer.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create raycast constant buffer");
        
        OutputDebugStringA("Raycast GPU pipeline initialized successfully\n");
    }
    catch (const std::exception& e) {
        OutputDebugStringA("Warning: Failed to initialize raycast GPU pipeline: ");
        OutputDebugStringA(e.what());
        OutputDebugStringA("\n");
        // Not fatal - will fall back to CPU rendering
    }
}

//
// Create or resize GPU buffers for the given dimensions
//
static void resizeGPUBuffers(UINT width, UINT height)
{
    UINT requiredSize = width * height * 3; // RGB24 format
    
    // Only recreate if size changed
    if (d2dCtx.rgbBufferSize != requiredSize)
    {
        d2dCtx.inputRGBBuffer.Reset();
        d2dCtx.inputRGBSRV.Reset();
        
        // Create input RGB buffer (ByteAddressBuffer)
        D3D11_BUFFER_DESC bufDesc = {};
        bufDesc.ByteWidth = requiredSize;
        bufDesc.Usage = D3D11_USAGE_DYNAMIC;
        bufDesc.BindFlags = D3D11_BIND_SHADER_RESOURCE;
        bufDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;
        bufDesc.MiscFlags = D3D11_RESOURCE_MISC_BUFFER_ALLOW_RAW_VIEWS;
        
        HRESULT hr = d2dCtx.d3dDevice->CreateBuffer(&bufDesc, nullptr, d2dCtx.inputRGBBuffer.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create input RGB buffer");
        
        // Create SRV for the input buffer
        D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
        srvDesc.Format = DXGI_FORMAT_R32_TYPELESS;
        srvDesc.ViewDimension = D3D11_SRV_DIMENSION_BUFFEREX;
        srvDesc.BufferEx.FirstElement = 0;
        srvDesc.BufferEx.NumElements = requiredSize / 4; // Number of DWORDs
        srvDesc.BufferEx.Flags = D3D11_BUFFEREX_SRV_FLAG_RAW;
        
        hr = d2dCtx.d3dDevice->CreateShaderResourceView(
            d2dCtx.inputRGBBuffer.Get(),
            &srvDesc,
            d2dCtx.inputRGBSRV.GetAddressOf()
        );
        
        if (FAILED(hr))
            throw std::runtime_error("Failed to create input RGB SRV");
        
        d2dCtx.rgbBufferSize = requiredSize;
    }
}

void initializeD2D()
{
    HRESULT hr = D2D1CreateFactory(D2D1_FACTORY_TYPE_SINGLE_THREADED, __uuidof(ID2D1Factory1), reinterpret_cast<void **>(d2dCtx.factory1.GetAddressOf()));
    if (FAILED(hr))
        throw std::runtime_error("Failed D2D factory");

    D3D_FEATURE_LEVEL level;
    hr = D3D11CreateDevice(nullptr, D3D_DRIVER_TYPE_HARDWARE, nullptr, D3D11_CREATE_DEVICE_BGRA_SUPPORT, nullptr, 0, D3D11_SDK_VERSION, d2dCtx.d3dDevice.GetAddressOf(), &level, d2dCtx.d3dContext.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D3D11 device");

    Microsoft::WRL::ComPtr<IDXGIDevice> dxgiDevice;
    d2dCtx.d3dDevice.As(&dxgiDevice);
    hr = d2dCtx.factory1->CreateDevice(dxgiDevice.Get(), d2dCtx.d2dDevice.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D2D device");

    hr = d2dCtx.d2dDevice->CreateDeviceContext(D2D1_DEVICE_CONTEXT_OPTIONS_NONE, d2dCtx.dc.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D2D context");

    // Ensure all coordinates are interpreted as physical pixels to match Vulkan behavior
    d2dCtx.dc->SetUnitMode(D2D1_UNIT_MODE_PIXELS);

    // Get DXGI Factory3 for waitable swap chain support
    Microsoft::WRL::ComPtr<IDXGIFactory3> dxgiFactory;
    hr = CreateDXGIFactory2(0, IID_PPV_ARGS(dxgiFactory.GetAddressOf()));
    if (FAILED(hr))
        throw std::runtime_error("Failed DXGI factory");

    DXGI_SWAP_CHAIN_DESC1 swapDesc = {};
    swapDesc.BufferCount = D2D_MAX_FRAMES_IN_FLIGHT;  // Match Vulkan frame pipelining
    swapDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    swapDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
    // Avoid DXGI scaling; we handle scaling explicitly in DrawBitmap
    swapDesc.Scaling = DXGI_SCALING_NONE;
    swapDesc.SwapEffect = DXGI_SWAP_EFFECT_FLIP_DISCARD;
    swapDesc.AlphaMode = DXGI_ALPHA_MODE_IGNORE;
    swapDesc.Width = state.ui.width;
    swapDesc.Height = state.ui.height;
    swapDesc.SampleDesc.Count = 1;
    // Enable waitable object for better frame pacing (reduces input latency)
    swapDesc.Flags = DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT;

    Microsoft::WRL::ComPtr<IDXGISwapChain1> swapchain1;
    hr = dxgiFactory->CreateSwapChainForHwnd(d2dCtx.d3dDevice.Get(), g_hwnd, &swapDesc, nullptr, nullptr, swapchain1.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed swapchain");

    // Query for SwapChain3 for GetCurrentBackBufferIndex and waitable object
    hr = swapchain1.As(&d2dCtx.swapchain);
    if (FAILED(hr))
        throw std::runtime_error("Failed to get SwapChain3");

    // Set max frame latency and get waitable object
    d2dCtx.swapchain->SetMaximumFrameLatency(1);
    d2dCtx.frameLatencyWaitableObject = d2dCtx.swapchain->GetFrameLatencyWaitableObject();

    // Create cached backbuffer targets (legacy D2D1 path)
    recreateBackbufferTargets();
    
    // Initialize D3D11 blit pipeline (replaces D2D1 DrawBitmap)
    initializeBlitPipeline();
    recreateBlitResources();

    // Mirror Vulkan texture sizing logic
    UINT texW = state.raycast.enabled ? state.ui.width : MIN_CLIENT_WIDTH;
    UINT texH = state.raycast.enabled ? state.ui.height : MIN_CLIENT_HEIGHT;
    resizeTexture(texW, texH);

    // Initialize GPU compute pipeline
    initializeGPUPipeline();
    // Initialize GPU raycasting pipeline
    initializeRaycastGPUPipeline();
    // Ensure GPU input buffer exists for current texture size at startup
    if (d2dCtx.textureWidth && d2dCtx.textureHeight)
        resizeGPUBuffers(d2dCtx.textureWidth, d2dCtx.textureHeight);

    // Match Vulkan: establish initial scale factor for correct cursor scaling at startup
    scaleFactor = state.raycast.enabled ? 1.0f : static_cast<float>(state.ui.width) / MIN_CLIENT_WIDTH;
}

// Cache D2D1 bitmaps for each backbuffer to avoid per-frame recreation
void recreateBackbufferTargets()
{
    for (UINT i = 0; i < D2D_MAX_FRAMES_IN_FLIGHT; ++i)
    {
        d2dCtx.backbufferTargets[i].Reset();
    }
    
    for (UINT i = 0; i < D2D_MAX_FRAMES_IN_FLIGHT; ++i)
    {
        Microsoft::WRL::ComPtr<ID3D11Texture2D> backBuffer;
        HRESULT hr = d2dCtx.swapchain->GetBuffer(i, IID_PPV_ARGS(backBuffer.GetAddressOf()));
        if (FAILED(hr)) continue;
        
        Microsoft::WRL::ComPtr<IDXGISurface> backSurface;
        backBuffer.As(&backSurface);
        
        D2D1_BITMAP_PROPERTIES1 targetProps = D2D1::BitmapProperties1(
            D2D1_BITMAP_OPTIONS_TARGET | D2D1_BITMAP_OPTIONS_CANNOT_DRAW,
            D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE));
        
        hr = d2dCtx.dc->CreateBitmapFromDxgiSurface(backSurface.Get(), &targetProps, d2dCtx.backbufferTargets[i].GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create cached backbuffer target");
    }
}

void resizeTexture(UINT width, UINT height)
{
    d2dCtx.frameBitmap.Reset();
    d2dCtx.frameSurface.Reset();
    d2dCtx.frameTexture.Reset();
    d2dCtx.frameTextureUAV.Reset();
    for (UINT i = 0; i < D2D_MAX_FRAMES_IN_FLIGHT; ++i)
        d2dCtx.stagingTextures[i].Reset();

    D3D11_TEXTURE2D_DESC texDesc = {};
    texDesc.Width = width;
    texDesc.Height = height;
    texDesc.MipLevels = 1;
    texDesc.ArraySize = 1;
    texDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    texDesc.SampleDesc.Count = 1;
    // DEFAULT usage to enable partial row updates via CopySubresourceRegion from staging
    texDesc.Usage = D3D11_USAGE_DEFAULT;
    texDesc.BindFlags = D3D11_BIND_SHADER_RESOURCE | D3D11_BIND_UNORDERED_ACCESS;
    texDesc.CPUAccessFlags = 0;

    HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&texDesc, nullptr, d2dCtx.frameTexture.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D3D texture");

    // Create double-buffered staging textures for pipelined CPU-to-GPU uploads
    // This avoids GPU stalls by writing to one staging texture while GPU reads from another
    D3D11_TEXTURE2D_DESC stagingDesc = texDesc;
    stagingDesc.Usage = D3D11_USAGE_STAGING;
    stagingDesc.BindFlags = 0;
    stagingDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;
    
    for (UINT i = 0; i < D2D_MAX_FRAMES_IN_FLIGHT; ++i)
    {
        hr = d2dCtx.d3dDevice->CreateTexture2D(&stagingDesc, nullptr, d2dCtx.stagingTextures[i].GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed D3D staging texture");
    }

    d2dCtx.frameTexture.As(&d2dCtx.frameSurface);

    D2D1_BITMAP_PROPERTIES1 bitProps = D2D1::BitmapProperties1(D2D1_BITMAP_OPTIONS_NONE, D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE));
    hr = d2dCtx.dc->CreateBitmapFromDxgiSurface(d2dCtx.frameSurface.Get(), &bitProps, d2dCtx.frameBitmap.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D2D bitmap from surface");

    // Create UAV for GPU compute shader writes
    D3D11_UNORDERED_ACCESS_VIEW_DESC uavDesc = {};
    uavDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    uavDesc.ViewDimension = D3D11_UAV_DIMENSION_TEXTURE2D;
    uavDesc.Texture2D.MipSlice = 0;
    
    hr = d2dCtx.d3dDevice->CreateUnorderedAccessView(
        d2dCtx.frameTexture.Get(),
        &uavDesc,
        d2dCtx.frameTextureUAV.GetAddressOf()
    );
    
    if (FAILED(hr))
        throw std::runtime_error("Failed to create frame texture UAV");

    // Create SRV for the blit pipeline
    createFrameTextureSRV();

    d2dCtx.rowBuffer.resize(width * 4);
    d2dCtx.frameBGRA.resize(static_cast<size_t>(width) * height * 4);
    resizeFrameBuffers(d2dCtx.previousFrameData, d2dCtx.forceFullUpdate, width, height);
    
    // Resize GPU buffers if compute shader is initialized
    if (d2dCtx.computeShader)
    {
        resizeGPUBuffers(width, height);
    }
    
    // Invalidate cached blit constants since texture size changed
    d2dCtx.lastBlitSrcW = -1.0f;
    d2dCtx.lastBlitSrcH = -1.0f;
    
    d2dCtx.textureWidth = width;
    d2dCtx.textureHeight = height;
}

// Removed mapping helpers: using staging texture + CopySubresourceRegion for batched partial updates

void renderFrameD2D()
{
    // Wait on waitable swap chain for proper frame pacing (reduces input latency)
    if (d2dCtx.frameLatencyWaitableObject)
    {
        WaitForSingleObjectEx(d2dCtx.frameLatencyWaitableObject, 100, TRUE);
    }

    const VDXFile *vdx = state.transientVDX ? state.transientVDX : state.currentVDX;
    size_t frameIdx = state.transientVDX ? state.transient_frame_index : state.currentFrameIndex;
    if (!vdx)
        return;

    std::span<const uint8_t> pixels = vdx->frameData[frameIdx];

    // If the content source changed (e.g., intro -> foyer, or transient start/stop),
    // force a full refresh to avoid mixing rows from the previous clip.
    bool isTransient = (state.transientVDX != nullptr);
    if (d2dCtx.lastVDX != vdx || d2dCtx.lastWasTransient != isTransient)
    {
        d2dCtx.forceFullUpdate = true;
        d2dCtx.lastVDX = vdx;
        d2dCtx.lastWasTransient = isTransient;
    }
    
    // Only convert changed rows, and upload only when needed
    auto changed = getChangedRowsAndUpdatePrevious(pixels, d2dCtx.previousFrameData, d2dCtx.textureWidth, d2dCtx.textureHeight, d2dCtx.forceFullUpdate);
    d2dCtx.forceFullUpdate = false;
    
    // Determine render path based on config: Auto heuristic or forced CPU/GPU.
    const float changedRatio = d2dCtx.textureHeight ? (static_cast<float>(changed.size()) / static_cast<float>(d2dCtx.textureHeight)) : 1.0f;
    bool preferGPU = (state.renderMode == GameState::RenderMode::GPU);
    if (state.renderMode == GameState::RenderMode::Auto)
    {
        preferGPU = (changedRatio >= 0.4f) || (static_cast<int>(d2dCtx.textureHeight) >= 1080);
    }

    if (!changed.empty())
    {
        if (preferGPU && d2dCtx.computeShader)
        {
            // GPU compute path: Upload RGB data and dispatch compute shader
            
            // Upload RGB data to GPU buffer using WRITE_DISCARD (most efficient)
            D3D11_MAPPED_SUBRESOURCE mappedResource;
            HRESULT hr = d2dCtx.d3dContext->Map(
                d2dCtx.inputRGBBuffer.Get(),
                0,
                D3D11_MAP_WRITE_DISCARD,
                0,
                &mappedResource
            );
            
            if (SUCCEEDED(hr))
            {
                // Copy RGB data to GPU buffer
                size_t copySize = std::min(pixels.size(), static_cast<size_t>(d2dCtx.textureWidth * d2dCtx.textureHeight * 3));
                memcpy(mappedResource.pData, pixels.data(), copySize);
                d2dCtx.d3dContext->Unmap(d2dCtx.inputRGBBuffer.Get(), 0);
                
                // Only update constant buffer when dimensions change (avoids redundant Map/Unmap)
                if (d2dCtx.lastConstantWidth != d2dCtx.textureWidth || 
                    d2dCtx.lastConstantHeight != d2dCtx.textureHeight)
                {
                    D3D11_MAPPED_SUBRESOURCE cbMapped;
                    hr = d2dCtx.d3dContext->Map(
                        d2dCtx.constantBuffer.Get(),
                        0,
                        D3D11_MAP_WRITE_DISCARD,
                        0,
                        &cbMapped
                    );
                    
                    if (SUCCEEDED(hr))
                    {
                        UINT* constants = static_cast<UINT*>(cbMapped.pData);
                        constants[0] = d2dCtx.textureWidth;
                        constants[1] = d2dCtx.textureHeight;
                        constants[2] = 0; // padding
                        constants[3] = 0; // padding
                        d2dCtx.d3dContext->Unmap(d2dCtx.constantBuffer.Get(), 0);
                        d2dCtx.lastConstantWidth = d2dCtx.textureWidth;
                        d2dCtx.lastConstantHeight = d2dCtx.textureHeight;
                    }
                }
                
                // Bind resources and dispatch compute shader
                d2dCtx.d3dContext->CSSetShader(d2dCtx.computeShader.Get(), nullptr, 0);
                d2dCtx.d3dContext->CSSetConstantBuffers(0, 1, d2dCtx.constantBuffer.GetAddressOf());
                d2dCtx.d3dContext->CSSetShaderResources(0, 1, d2dCtx.inputRGBSRV.GetAddressOf());
                d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, d2dCtx.frameTextureUAV.GetAddressOf(), nullptr);
                
                // Dispatch compute shader (8x8 thread groups)
                UINT dispatchX = (d2dCtx.textureWidth + 7) / 8;
                UINT dispatchY = (d2dCtx.textureHeight + 7) / 8;
                d2dCtx.d3dContext->Dispatch(dispatchX, dispatchY, 1);
                
                // Unbind UAV only (keep shader bound for potential next dispatch)
                ID3D11UnorderedAccessView* nullUAV[] = { nullptr };
                d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, nullUAV, nullptr);
            }
        }
        else
        {
            // CPU SIMD path with double-buffered staging texture for pipelined uploads
            // Use alternating staging textures to avoid GPU stalls (similar to Vulkan approach)
            UINT stagingIdx = d2dCtx.currentStagingIndex;
            d2dCtx.currentStagingIndex = (d2dCtx.currentStagingIndex + 1) % D2D_MAX_FRAMES_IN_FLIGHT;
            
            ID3D11Texture2D* currentStaging = d2dCtx.stagingTextures[stagingIdx].Get();
            
            D3D11_MAPPED_SUBRESOURCE mapped;
            // Use WRITE_DISCARD to avoid GPU stall - tells driver we don't care about previous contents
            HRESULT hr = d2dCtx.d3dContext->Map(currentStaging, 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
            if (SUCCEEDED(hr))
            {
                uint8_t* stagingData = static_cast<uint8_t*>(mapped.pData);
                const UINT rowPitch = mapped.RowPitch;
                
                for (size_t y : changed)
                {
                    uint8_t* destRow = stagingData + y * rowPitch;
                    convertRGBRowToBGRA(pixels.data() + y * d2dCtx.textureWidth * 3, destRow, d2dCtx.textureWidth);
                }
                
                d2dCtx.d3dContext->Unmap(currentStaging, 0);
                
                // Find contiguous regions and batch copy
                if (!changed.empty())
                {
                    // Sort and merge into contiguous regions
                    std::vector<size_t> sorted(changed.begin(), changed.end());
                    std::sort(sorted.begin(), sorted.end());
                    
                    size_t regionStart = sorted[0];
                    size_t regionEnd = sorted[0];
                    
                    auto copyRegion = [&](size_t start, size_t end) {
                        D3D11_BOX box{};
                        box.left = 0;
                        box.right = d2dCtx.textureWidth;
                        box.top = static_cast<UINT>(start);
                        box.bottom = static_cast<UINT>(end + 1);
                        box.front = 0;
                        box.back = 1;
                        d2dCtx.d3dContext->CopySubresourceRegion(
                            d2dCtx.frameTexture.Get(), 0,
                            0, static_cast<UINT>(start), 0,
                            currentStaging, 0,
                            &box);
                    };
                    
                    for (size_t i = 1; i < sorted.size(); ++i)
                    {
                        if (sorted[i] == regionEnd + 1)
                        {
                            // Extend current region
                            regionEnd = sorted[i];
                        }
                        else
                        {
                            // Copy previous region and start new one
                            copyRegion(regionStart, regionEnd);
                            regionStart = sorted[i];
                            regionEnd = sorted[i];
                        }
                    }
                    // Copy final region
                    copyRegion(regionStart, regionEnd);
                }
            }
        }
    }

    // Mirror Vulkan behavior precisely:
    // - Raycast: fill entire client area.
    // - FMV/2D: keep 640x320 logical content, scale to window width and letterbox vertically.
    float destX, destY, destW, destH;
    bool needsClear = false;
    
    if (state.raycast.enabled)
    {
        destX = 0.0f;
        destY = 0.0f;
        destW = static_cast<float>(state.ui.width);
        destH = static_cast<float>(state.ui.height);
    }
    else
    {
        float scaledH = MIN_CLIENT_HEIGHT * scaleFactor;
        float offsetY = (static_cast<float>(state.ui.height) - scaledH) * 0.5f;
        destX = 0.0f;
        destY = offsetY;
        destW = static_cast<float>(state.ui.width);
        destH = scaledH;
        // Only clear if letterboxing is visible
        needsClear = (offsetY > 0.5f);
    }

    // Use direct D3D11 blit (lower overhead than D2D1 DrawBitmap)
    blitToBackbuffer(destX, destY, destW, destH,
                     static_cast<float>(d2dCtx.textureWidth),
                     static_cast<float>(d2dCtx.textureHeight),
                     needsClear);
    
    // Present with vsync
    d2dCtx.swapchain->Present(1, 0);
}

void renderFrameRaycast()
{
    // Wait on waitable swap chain for proper frame pacing
    if (d2dCtx.frameLatencyWaitableObject)
    {
        WaitForSingleObjectEx(d2dCtx.frameLatencyWaitableObject, 100, TRUE);
    }

    const auto &map = *state.raycast.map;
    const RaycastPlayer &player = state.raycast.player;

    // Render into CPU-side BGRA buffer then upload once
    const UINT pitch = static_cast<UINT>(state.ui.width) * 4;
    d2dCtx.frameBGRA.resize(static_cast<size_t>(state.ui.width) * state.ui.height * 4);
    renderRaycastView(map, player, d2dCtx.frameBGRA.data(), pitch, state.ui.width, state.ui.height);

    D3D11_BOX full{};
    full.left = 0;
    full.top = 0;
    full.front = 0;
    full.right = state.ui.width;
    full.bottom = state.ui.height;
    full.back = 1;
    d2dCtx.d3dContext->UpdateSubresource(
        d2dCtx.frameTexture.Get(),
        0,
        &full,
        d2dCtx.frameBGRA.data(),
        pitch,
        0);

    // Use direct D3D11 blit (lower overhead than D2D1 DrawBitmap)
    blitToBackbuffer(0.0f, 0.0f,
                     static_cast<float>(state.ui.width),
                     static_cast<float>(state.ui.height),
                     static_cast<float>(state.ui.width),
                     static_cast<float>(state.ui.height),
                     false);  // No clear needed - covers entire surface
    
    d2dCtx.swapchain->Present(1, 0);
}

//
// Update or create tile map texture for GPU raycasting
//
static void updateRaycastTileMap(const std::vector<std::vector<uint8_t>>& tileMap)
{
    if (tileMap.empty() || tileMap[0].empty())
        return;
    
    UINT mapHeight = static_cast<UINT>(tileMap.size());
    UINT mapWidth = static_cast<UINT>(tileMap[0].size());
    
    // Check if we need to recreate the texture
    if (!d2dCtx.tileMapTexture || d2dCtx.lastMapWidth != mapWidth || d2dCtx.lastMapHeight != mapHeight)
    {
        d2dCtx.tileMapTexture.Reset();
        d2dCtx.tileMapSRV.Reset();
        
        // Create 2D texture for tile map (R8_UINT format)
        D3D11_TEXTURE2D_DESC texDesc = {};
        texDesc.Width = mapWidth;
        texDesc.Height = mapHeight;
        texDesc.MipLevels = 1;
        texDesc.ArraySize = 1;
        texDesc.Format = DXGI_FORMAT_R8_UINT;
        texDesc.SampleDesc.Count = 1;
        texDesc.Usage = D3D11_USAGE_DEFAULT;
        texDesc.BindFlags = D3D11_BIND_SHADER_RESOURCE;
        
        HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&texDesc, nullptr, d2dCtx.tileMapTexture.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create tile map texture");
        
        // Create SRV
        D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
        srvDesc.Format = DXGI_FORMAT_R8_UINT;
        srvDesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2D;
        srvDesc.Texture2D.MipLevels = 1;
        
        hr = d2dCtx.d3dDevice->CreateShaderResourceView(
            d2dCtx.tileMapTexture.Get(),
            &srvDesc,
            d2dCtx.tileMapSRV.GetAddressOf()
        );
        
        if (FAILED(hr))
            throw std::runtime_error("Failed to create tile map SRV");
        
        d2dCtx.lastMapWidth = mapWidth;
        d2dCtx.lastMapHeight = mapHeight;
    }
    
    // Upload tile data
    std::vector<uint8_t> flatMap(mapWidth * mapHeight);
    for (UINT y = 0; y < mapHeight; y++)
    {
        for (UINT x = 0; x < mapWidth; x++)
        {
            flatMap[y * mapWidth + x] = tileMap[y][x];
        }
    }
    
    d2dCtx.d3dContext->UpdateSubresource(
        d2dCtx.tileMapTexture.Get(),
        0,
        nullptr,
        flatMap.data(),
        mapWidth,
        0
    );
}

// Build or update edge offsets SRV buffer: ((y*mapWidth + x)*4 + side) -> triplet [offset,width,dir]
static void updateRaycastEdgeOffsets(const std::vector<std::vector<uint8_t>>& tileMap)
{
    if (tileMap.empty() || tileMap[0].empty()) return;
    UINT mapHeight = static_cast<UINT>(tileMap.size());
    UINT mapWidth = static_cast<UINT>(tileMap[0].size());

    const size_t count = static_cast<size_t>(mapWidth) * mapHeight * 4ull;
    // Store triplets: [offset,width,dirFlag] for each edge entry
    std::vector<uint32_t> table(count * 3ull, 0u);

    for (const auto& e : megatex.edges)
    {
        if (e.cellX < 0 || e.cellY < 0) continue;
        if (e.cellX >= static_cast<int>(mapWidth) || e.cellY >= static_cast<int>(mapHeight)) continue;
        size_t idx = (static_cast<size_t>(e.cellY) * mapWidth + static_cast<size_t>(e.cellX)) * 4ull + static_cast<size_t>(e.side & 3);
        size_t idx3 = idx * 3ull;
        if (idx3 + 2 < table.size()) {
            table[idx3 + 0] = static_cast<uint32_t>(e.xOffsetPixels);
            table[idx3 + 1] = static_cast<uint32_t>(std::max(1, e.pixelWidth));
            table[idx3 + 2] = static_cast<uint32_t>(e.direction < 0 ? 1u : 0u);
        }
    }

    // Recreate buffer if size changed or not created
    size_t byteSize = table.size() * sizeof(uint32_t);
    bool needRecreate = !d2dCtx.edgeOffsetsBuffer || !d2dCtx.edgeOffsetsSRV;
    if (needRecreate)
    {
        d2dCtx.edgeOffsetsBuffer.Reset();
        d2dCtx.edgeOffsetsSRV.Reset();

        D3D11_BUFFER_DESC bd{};
        bd.ByteWidth = static_cast<UINT>(byteSize);
        bd.Usage = D3D11_USAGE_DEFAULT;
        bd.BindFlags = D3D11_BIND_SHADER_RESOURCE;
        bd.CPUAccessFlags = 0;
        bd.MiscFlags = 0; // Structured not needed for uint

        D3D11_SUBRESOURCE_DATA init{};
        init.pSysMem = table.data();
        HRESULT hr = d2dCtx.d3dDevice->CreateBuffer(&bd, &init, d2dCtx.edgeOffsetsBuffer.GetAddressOf());
        if (FAILED(hr)) throw std::runtime_error("Failed to create edgeOffsets buffer");

        D3D11_SHADER_RESOURCE_VIEW_DESC srv{};
        srv.Format = DXGI_FORMAT_R32_UINT;
        srv.ViewDimension = D3D11_SRV_DIMENSION_BUFFER;
        srv.Buffer.FirstElement = 0;
        srv.Buffer.NumElements = static_cast<UINT>(count * 3ull);
        hr = d2dCtx.d3dDevice->CreateShaderResourceView(d2dCtx.edgeOffsetsBuffer.Get(), &srv, d2dCtx.edgeOffsetsSRV.GetAddressOf());
        if (FAILED(hr)) throw std::runtime_error("Failed to create edgeOffsets SRV");
    }
    else
    {
        // Update contents
        d2dCtx.d3dContext->UpdateSubresource(d2dCtx.edgeOffsetsBuffer.Get(), 0, nullptr, table.data(), 0, 0);
    }
}

//
// Render raycaster view using GPU compute shader
//
void renderFrameRaycastGPU()
{
    // Wait on waitable swap chain for proper frame pacing
    if (d2dCtx.frameLatencyWaitableObject)
    {
        WaitForSingleObjectEx(d2dCtx.frameLatencyWaitableObject, 100, TRUE);
    }

    // Check render mode preference
    bool useGPU = (state.renderMode == GameState::RenderMode::GPU || 
                   state.renderMode == GameState::RenderMode::Auto);
    
    if (!useGPU || !d2dCtx.raycastComputeShader)
    {
        // Fall back to CPU rendering if mode is CPU or GPU pipeline not available
        renderFrameRaycast();
        return;
    }
    
    const auto& map = *state.raycast.map;
    const RaycastPlayer& player = state.raycast.player;
    
    // Update tile map texture if needed
    updateRaycastTileMap(map);
    // Update edge offset lookup SRV
    updateRaycastEdgeOffsets(map);
    
    // Prepare constant buffer data
    struct RaycastConstants
    {
        float playerX;
        float playerY;
        float playerAngle;
        float playerFOV;
        uint32_t screenWidth;
        uint32_t screenHeight;
        uint32_t mapWidth;
        uint32_t mapHeight;
        float visualScale;
        float torchRange;
        float falloffMul;
        float fovMul;
        uint32_t supersample;
        float wallHeightUnits; // vertical scale of mortar/world vs width
        uint32_t padding[2];
    };
    
    RaycastConstants constants{};
    constants.playerX = player.x;
    constants.playerY = player.y;
    constants.playerAngle = player.angle;
    constants.playerFOV = player.fov;
    constants.screenWidth = state.ui.width;
    constants.screenHeight = state.ui.height;
    constants.mapWidth = static_cast<uint32_t>(map[0].size());
    constants.mapHeight = static_cast<uint32_t>(map.size());
    constants.visualScale = config.contains("raycastScale") ? config["raycastScale"].get<float>() : 3.0f;
    float baseTorchRange = 16.0f;
    constants.torchRange = baseTorchRange * constants.visualScale;
    constants.falloffMul = config.contains("raycastFalloffMul") ? config["raycastFalloffMul"].get<float>() : 0.85f;
    constants.fovMul = config.contains("raycastFovMul") ? config["raycastFovMul"].get<float>() : 1.0f;
    constants.supersample = config.contains("raycastSupersample") ? config["raycastSupersample"].get<uint32_t>() : 1;
    // Vertical scale: 1 wall unit per 1024px (horizontal anisotropy handled in content/shader)
    constants.wallHeightUnits = 1.0f;
    
    // Update constant buffer
    D3D11_MAPPED_SUBRESOURCE mapped;
    HRESULT hr = d2dCtx.d3dContext->Map(d2dCtx.raycastConstantBuffer.Get(), 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
    if (SUCCEEDED(hr))
    {
        memcpy(mapped.pData, &constants, sizeof(constants));
        d2dCtx.d3dContext->Unmap(d2dCtx.raycastConstantBuffer.Get(), 0);
    }
    
    // Bind resources
    d2dCtx.d3dContext->CSSetShader(d2dCtx.raycastComputeShader.Get(), nullptr, 0);
    ID3D11ShaderResourceView* srvs[2] = { d2dCtx.tileMapSRV.Get(), d2dCtx.edgeOffsetsSRV.Get() };
    d2dCtx.d3dContext->CSSetShaderResources(0, 2, srvs);
    d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, d2dCtx.frameTextureUAV.GetAddressOf(), nullptr);
    d2dCtx.d3dContext->CSSetConstantBuffers(0, 1, d2dCtx.raycastConstantBuffer.GetAddressOf());
    
    // Dispatch compute shader
    UINT dispatchX = (state.ui.width + 7) / 8;
    UINT dispatchY = (state.ui.height + 7) / 8;
    d2dCtx.d3dContext->Dispatch(dispatchX, dispatchY, 1);
    
    // Unbind UAV only
    ID3D11UnorderedAccessView* nullUAV = nullptr;
    d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, &nullUAV, nullptr);
    
    // Use direct D3D11 blit (lower overhead than D2D1 DrawBitmap)
    blitToBackbuffer(0.0f, 0.0f,
                     static_cast<float>(state.ui.width),
                     static_cast<float>(state.ui.height),
                     static_cast<float>(state.ui.width),
                     static_cast<float>(state.ui.height),
                     false);  // No clear needed - covers entire surface
    
    d2dCtx.swapchain->Present(1, 0);
}

void cleanupD2D()
{
    // Close waitable handle before releasing swap chain
    if (d2dCtx.frameLatencyWaitableObject)
    {
        CloseHandle(d2dCtx.frameLatencyWaitableObject);
        d2dCtx.frameLatencyWaitableObject = nullptr;
    }
    d2dCtx = {};
    if (g_hwnd)
        DestroyWindow(g_hwnd);
    g_hwnd = nullptr;
}

void handleResizeD2D(int newW, int newH)
{
    // If renderer not initialized yet, defer resize
    if (!d2dCtx.swapchain)
        return;

    // Release references to backbuffer and flush before resizing
    if (d2dCtx.dc)
    {
        d2dCtx.dc->SetTarget(nullptr);
        d2dCtx.dc->Flush();
    }
    
    // Release cached backbuffer targets (both D2D1 and D3D11 RTVs)
    for (UINT i = 0; i < D2D_MAX_FRAMES_IN_FLIGHT; ++i)
    {
        d2dCtx.backbufferTargets[i].Reset();
        d2dCtx.backbufferRTVs[i].Reset();
    }

    HRESULT hr = d2dCtx.swapchain->ResizeBuffers(
        D2D_MAX_FRAMES_IN_FLIGHT, newW, newH, DXGI_FORMAT_UNKNOWN,
        DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT);
    if (FAILED(hr))
    {
        // Retry once after extra flush
        if (d2dCtx.dc)
        {
            d2dCtx.dc->SetTarget(nullptr);
            d2dCtx.dc->Flush();
        }
        for (UINT i = 0; i < D2D_MAX_FRAMES_IN_FLIGHT; ++i)
        {
            d2dCtx.backbufferTargets[i].Reset();
            d2dCtx.backbufferRTVs[i].Reset();
        }
        d2dCtx.swapchain->ResizeBuffers(
            D2D_MAX_FRAMES_IN_FLIGHT, newW, newH, DXGI_FORMAT_UNKNOWN,
            DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT);
    }

    // Recreate cached backbuffer targets (both D2D1 and D3D11 RTVs)
    recreateBackbufferTargets();
    recreateBlitResources();
    
    // Invalidate cached blit constants since viewport changed
    d2dCtx.lastBlitDestX = -1.0f;

    // Texture sizing: raycast = window size, 2D = MIN_CLIENT size
    UINT texW = state.raycast.enabled ? static_cast<UINT>(newW) : MIN_CLIENT_WIDTH;
    UINT texH = state.raycast.enabled ? static_cast<UINT>(newH) : MIN_CLIENT_HEIGHT;
    resizeTexture(texW, texH);
}