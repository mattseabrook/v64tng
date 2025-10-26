// d2d.cpp

#include <stdexcept>
#include <windows.h>

#include "d2d.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "game.h"

D2DContext d2dCtx;

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

    // Match Vulkan: establish initial scale factor for correct cursor scaling at startup
    scaleFactor = state.raycast.enabled ? 1.0f : static_cast<float>(state.ui.width) / MIN_CLIENT_WIDTH;
}

void resizeTexture(UINT width, UINT height)
{
    d2dCtx.frameBitmap.Reset();
    d2dCtx.frameSurface.Reset();
    d2dCtx.frameTexture.Reset();

    D3D11_TEXTURE2D_DESC texDesc = {};
    texDesc.Width = width;
    texDesc.Height = height;
    texDesc.MipLevels = 1;
    texDesc.ArraySize = 1;
    texDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    texDesc.SampleDesc.Count = 1;
    // DEFAULT usage to enable partial row updates via UpdateSubresource + D3D11_BOX
    texDesc.Usage = D3D11_USAGE_DEFAULT;
    texDesc.BindFlags = D3D11_BIND_SHADER_RESOURCE;
    texDesc.CPUAccessFlags = 0;

    HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&texDesc, nullptr, d2dCtx.frameTexture.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D3D texture");

    d2dCtx.frameTexture.As(&d2dCtx.frameSurface);

    D2D1_BITMAP_PROPERTIES1 bitProps = D2D1::BitmapProperties1(D2D1_BITMAP_OPTIONS_NONE, D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE));
    hr = d2dCtx.dc->CreateBitmapFromDxgiSurface(d2dCtx.frameSurface.Get(), &bitProps, d2dCtx.frameBitmap.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D2D bitmap from surface");

    d2dCtx.rowBuffer.resize(width * 4);
    d2dCtx.frameBGRA.resize(static_cast<size_t>(width) * height * 4);
    resizeFrameBuffers(d2dCtx.previousFrameData, d2dCtx.forceFullUpdate, width, height);
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
    // GPU compute expansion isn't implemented yet in the D3D11 path; GPU selection falls back to CPU uploads.
    const float changedRatio = d2dCtx.textureHeight ? (static_cast<float>(changed.size()) / static_cast<float>(d2dCtx.textureHeight)) : 1.0f;
    bool preferGPU = (state.renderMode == GameState::RenderMode::GPU);
    if (state.renderMode == GameState::RenderMode::Auto)
    {
        preferGPU = (changedRatio >= 0.4f) || (static_cast<int>(d2dCtx.textureHeight) >= 1080);
    }

    if (!changed.empty())
    {
        if (preferGPU)
        {
            // TODO: D3D11 compute path (RGB24 SSBO -> UAV RGBA8) not implemented yet.
            // Fallback to CPU path for now.
        }

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