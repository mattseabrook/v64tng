// d2d.cpp

#include <stdexcept>
#include <windows.h>
#include <fstream>
#include <vector>
#include <algorithm>
#include <d3dcompiler.h>

// Undefine Windows min/max macros that conflict with std::min/std::max
#ifdef min
#undef min
#endif
#ifdef max
#undef max
#endif

#include "d2d.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "game.h"

D2DContext d2dCtx;

//
// Embedded HLSL compute shader source code
//
static const char* g_rgbToBgraShaderSource = R"SHADER(
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
    uint3 rgbBytes;
    
    // Read 4 bytes aligned, then extract the 3 we need
    // This is more efficient than 3 separate byte reads
    uint baseOffset = (rgbOffset / 4) * 4;
    uint alignment = rgbOffset % 4;
    
    if (alignment == 0)
    {
        // Perfectly aligned - read RGBX as one uint
        uint packed = inputRGB.Load(baseOffset);
        rgbBytes.r = (packed >> 0) & 0xFF;
        rgbBytes.g = (packed >> 8) & 0xFF;
        rgbBytes.b = (packed >> 16) & 0xFF;
    }
    else if (alignment == 1)
    {
        // Read across two uints: ...R GB..
        uint packed0 = inputRGB.Load(baseOffset);
        uint packed1 = inputRGB.Load(baseOffset + 4);
        rgbBytes.r = (packed0 >> 8) & 0xFF;
        rgbBytes.g = (packed0 >> 16) & 0xFF;
        rgbBytes.b = (packed0 >> 24) & 0xFF;
    }
    else if (alignment == 2)
    {
        // Read across two uints: ..RG B...
        uint packed0 = inputRGB.Load(baseOffset);
        uint packed1 = inputRGB.Load(baseOffset + 4);
        rgbBytes.r = (packed0 >> 16) & 0xFF;
        rgbBytes.g = (packed0 >> 24) & 0xFF;
        rgbBytes.b = (packed1 >> 0) & 0xFF;
    }
    else // alignment == 3
    {
        // Read across two uints: .RGB ....
        uint packed0 = inputRGB.Load(baseOffset);
        uint packed1 = inputRGB.Load(baseOffset + 4);
        rgbBytes.r = (packed0 >> 24) & 0xFF;
        rgbBytes.g = (packed1 >> 0) & 0xFF;
        rgbBytes.b = (packed1 >> 8) & 0xFF;
    }
    
    // Convert to normalized float4 in BGRA order
    float4 bgra;
    bgra.r = float(rgbBytes.b) / 255.0;  // Blue
    bgra.g = float(rgbBytes.g) / 255.0;  // Green
    bgra.b = float(rgbBytes.r) / 255.0;  // Red
    bgra.a = 1.0;                         // Alpha
    
    // Write to output texture
    outputBGRA[uint2(DTid.x, DTid.y)] = bgra;
}
)SHADER";

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
// Initialize GPU compute pipeline for RGB to BGRA conversion
//
static void initializeGPUPipeline()
{
    // Compile compute shader from embedded source
    auto shaderBlob = compileShaderFromSource(g_rgbToBgraShaderSource, "main", "cs_5_0");
    
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

    Microsoft::WRL::ComPtr<IDXGIFactory2> dxgiFactory;
    hr = CreateDXGIFactory1(IID_PPV_ARGS(dxgiFactory.GetAddressOf()));
    if (FAILED(hr))
        throw std::runtime_error("Failed DXGI factory");

    DXGI_SWAP_CHAIN_DESC1 swapDesc = {};
    swapDesc.BufferCount = 2;
    swapDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    swapDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
    // Avoid DXGI scaling; we handle scaling explicitly in DrawBitmap
    swapDesc.Scaling = DXGI_SCALING_NONE;
    swapDesc.SwapEffect = DXGI_SWAP_EFFECT_FLIP_DISCARD;
    swapDesc.AlphaMode = DXGI_ALPHA_MODE_IGNORE;
    swapDesc.Width = state.ui.width;
    swapDesc.Height = state.ui.height;
    swapDesc.SampleDesc.Count = 1;

    hr = dxgiFactory->CreateSwapChainForHwnd(d2dCtx.d3dDevice.Get(), g_hwnd, &swapDesc, nullptr, nullptr, d2dCtx.swapchain.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed swapchain");

    // Swapchain ready

    // Mirror Vulkan texture sizing logic
    UINT texW = state.raycast.enabled ? state.ui.width : MIN_CLIENT_WIDTH;
    UINT texH = state.raycast.enabled ? state.ui.height : MIN_CLIENT_HEIGHT;
    resizeTexture(texW, texH);

    // Initialize GPU compute pipeline
    initializeGPUPipeline();

    // Match Vulkan: establish initial scale factor for correct cursor scaling at startup
    scaleFactor = state.raycast.enabled ? 1.0f : static_cast<float>(state.ui.width) / MIN_CLIENT_WIDTH;
}

void resizeTexture(UINT width, UINT height)
{
    d2dCtx.frameBitmap.Reset();
    d2dCtx.frameSurface.Reset();
    d2dCtx.frameTexture.Reset();
    d2dCtx.frameTextureUAV.Reset();

    D3D11_TEXTURE2D_DESC texDesc = {};
    texDesc.Width = width;
    texDesc.Height = height;
    texDesc.MipLevels = 1;
    texDesc.ArraySize = 1;
    texDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    texDesc.SampleDesc.Count = 1;
    // DEFAULT usage to enable partial row updates via UpdateSubresource + D3D11_BOX
    texDesc.Usage = D3D11_USAGE_DEFAULT;
    texDesc.BindFlags = D3D11_BIND_SHADER_RESOURCE | D3D11_BIND_UNORDERED_ACCESS; // Added UAV support
    texDesc.CPUAccessFlags = 0;

    HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&texDesc, nullptr, d2dCtx.frameTexture.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D3D texture");

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

    d2dCtx.rowBuffer.resize(width * 4);
    d2dCtx.frameBGRA.resize(static_cast<size_t>(width) * height * 4);
    resizeFrameBuffers(d2dCtx.previousFrameData, d2dCtx.forceFullUpdate, width, height);
    
    // Resize GPU buffers if compute shader is initialized
    if (d2dCtx.computeShader)
    {
        resizeGPUBuffers(width, height);
    }
    
    d2dCtx.textureWidth = width;
    d2dCtx.textureHeight = height;
}

// Removed mapping helpers: using UpdateSubresource + D3D11_BOX for partial updates

void renderFrameD2D()
{
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
            
            // Upload RGB data to GPU buffer
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
                
                // Update constant buffer with dimensions
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
                    
                    // Bind resources and dispatch compute shader
                    d2dCtx.d3dContext->CSSetShader(d2dCtx.computeShader.Get(), nullptr, 0);
                    d2dCtx.d3dContext->CSSetConstantBuffers(0, 1, d2dCtx.constantBuffer.GetAddressOf());
                    d2dCtx.d3dContext->CSSetShaderResources(0, 1, d2dCtx.inputRGBSRV.GetAddressOf());
                    d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, d2dCtx.frameTextureUAV.GetAddressOf(), nullptr);
                    
                    // Dispatch compute shader (8x8 thread groups)
                    UINT dispatchX = (d2dCtx.textureWidth + 7) / 8;
                    UINT dispatchY = (d2dCtx.textureHeight + 7) / 8;
                    d2dCtx.d3dContext->Dispatch(dispatchX, dispatchY, 1);
                    
                    // Unbind resources
                    ID3D11ShaderResourceView* nullSRV[] = { nullptr };
                    ID3D11UnorderedAccessView* nullUAV[] = { nullptr };
                    d2dCtx.d3dContext->CSSetShaderResources(0, 1, nullSRV);
                    d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, nullUAV, nullptr);
                    d2dCtx.d3dContext->CSSetShader(nullptr, nullptr, 0);
                }
            }
        }
        else
        {
            // CPU SIMD path with partial row uploads via UpdateSubresource and D3D11_BOX
            for (size_t y : changed)
            {
                convertRGBRowToBGRA(pixels.data() + y * d2dCtx.textureWidth * 3, d2dCtx.rowBuffer.data(), d2dCtx.textureWidth);

                D3D11_BOX box{};
                box.left = 0;
                box.right = d2dCtx.textureWidth;
                box.top = static_cast<UINT>(y);
                box.bottom = static_cast<UINT>(y + 1);
                box.front = 0;
                box.back = 1;
                d2dCtx.d3dContext->UpdateSubresource(
                    d2dCtx.frameTexture.Get(),
                    0,
                    &box,
                    d2dCtx.rowBuffer.data(),
                    d2dCtx.textureWidth * 4,
                    0);
            }
        }
    }

    // Set target: create from the current backbuffer each frame for correctness
    d2dCtx.dc->SetTarget(nullptr);
    Microsoft::WRL::ComPtr<ID3D11Texture2D> backBuffer;
    d2dCtx.swapchain->GetBuffer(0, IID_PPV_ARGS(backBuffer.GetAddressOf()));
    Microsoft::WRL::ComPtr<IDXGISurface> backSurface;
    backBuffer.As(&backSurface);
    D2D1_BITMAP_PROPERTIES1 targetProps = D2D1::BitmapProperties1(
        D2D1_BITMAP_OPTIONS_TARGET | D2D1_BITMAP_OPTIONS_CANNOT_DRAW,
        D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE));
    d2dCtx.dc->CreateBitmapFromDxgiSurface(backSurface.Get(), &targetProps, d2dCtx.targetBitmap.GetAddressOf());
    d2dCtx.dc->SetTarget(d2dCtx.targetBitmap.Get());
    d2dCtx.dc->BeginDraw();
    d2dCtx.dc->Clear(D2D1::ColorF(D2D1::ColorF::Black));

    // Mirror Vulkan behavior precisely:
    // - Raycast: fill entire client area.
    // - FMV/2D: keep 640x320 logical content, scale to window width and letterbox vertically.
    D2D1_RECT_F src = {0.0f, 0.0f, static_cast<float>(d2dCtx.textureWidth), static_cast<float>(d2dCtx.textureHeight)};
    D2D1_RECT_F dest;
    if (state.raycast.enabled)
    {
        dest = {0.0f, 0.0f, static_cast<float>(state.ui.width), static_cast<float>(state.ui.height)};
    }
    else
    {
        float scaledH = MIN_CLIENT_HEIGHT * scaleFactor;
        float offsetY = (static_cast<float>(state.ui.height) - scaledH) * 0.5f;
        dest = {0.0f, offsetY, static_cast<float>(state.ui.width), offsetY + scaledH};
    }

    d2dCtx.dc->DrawBitmap(d2dCtx.frameBitmap.Get(), &dest, 1.0f, D2D1_INTERPOLATION_MODE_NEAREST_NEIGHBOR, &src);

    HRESULT hr = d2dCtx.dc->EndDraw();
    if (FAILED(hr))
        throw std::runtime_error("Failed draw");

    // Release target to avoid holding references across Present
    d2dCtx.dc->SetTarget(nullptr);
    d2dCtx.targetBitmap.Reset();
    d2dCtx.swapchain->Present(1, 0);
}

void renderFrameRaycast()
{
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

    d2dCtx.dc->SetTarget(nullptr);
    Microsoft::WRL::ComPtr<ID3D11Texture2D> backBuffer;
    d2dCtx.swapchain->GetBuffer(0, IID_PPV_ARGS(backBuffer.GetAddressOf()));
    Microsoft::WRL::ComPtr<IDXGISurface> backSurface;
    backBuffer.As(&backSurface);
    D2D1_BITMAP_PROPERTIES1 targetProps = D2D1::BitmapProperties1(
        D2D1_BITMAP_OPTIONS_TARGET | D2D1_BITMAP_OPTIONS_CANNOT_DRAW,
        D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE));
    d2dCtx.dc->CreateBitmapFromDxgiSurface(backSurface.Get(), &targetProps, d2dCtx.targetBitmap.GetAddressOf());
    d2dCtx.dc->SetTarget(d2dCtx.targetBitmap.Get());
    d2dCtx.dc->BeginDraw();
    d2dCtx.dc->Clear(D2D1::ColorF(D2D1::ColorF::Black));

    D2D1_RECT_F dest = {0.0f, 0.0f, static_cast<float>(state.ui.width), static_cast<float>(state.ui.height)};
    D2D1_RECT_F src = {0.0f, 0.0f, static_cast<float>(state.ui.width), static_cast<float>(state.ui.height)};

    d2dCtx.dc->DrawBitmap(d2dCtx.frameBitmap.Get(), &dest, 1.0f, D2D1_INTERPOLATION_MODE_NEAREST_NEIGHBOR, &src);

    HRESULT hr = d2dCtx.dc->EndDraw();
    if (FAILED(hr))
        throw std::runtime_error("Failed draw raycast");

    d2dCtx.dc->SetTarget(nullptr);
    d2dCtx.targetBitmap.Reset();
    d2dCtx.swapchain->Present(1, 0);
}

void cleanupD2D()
{
    d2dCtx = {};
    if (g_hwnd)
        DestroyWindow(g_hwnd);
    g_hwnd = nullptr;
}

// (Removed) recreateD2DTargets: cached backbuffer targets no longer used

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
    d2dCtx.targetBitmap.Reset();
    // No cached backbuffer targets retained

    HRESULT hr = d2dCtx.swapchain->ResizeBuffers(0, newW, newH, DXGI_FORMAT_UNKNOWN, 0);
    if (FAILED(hr))
    {
        // Retry once after extra flush
        if (d2dCtx.dc)
        {
            d2dCtx.dc->SetTarget(nullptr);
            d2dCtx.dc->Flush();
        }
        d2dCtx.targetBitmap.Reset();
    // No cached backbuffer targets retained
        d2dCtx.swapchain->ResizeBuffers(0, newW, newH, DXGI_FORMAT_UNKNOWN, 0);
    }

    // No cached targets to recreate

    // Texture sizing: raycast = window size, 2D = MIN_CLIENT size
    UINT texW = state.raycast.enabled ? static_cast<UINT>(newW) : MIN_CLIENT_WIDTH;
    UINT texH = state.raycast.enabled ? static_cast<UINT>(newH) : MIN_CLIENT_HEIGHT;
    resizeTexture(texW, texH);
}