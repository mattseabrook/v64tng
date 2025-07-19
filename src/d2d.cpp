// d2d.cpp

#include <d2d1.h>
#include <stdexcept>
#include <vector>
#include <windows.h>
#include <wrl/client.h>
#include <cstring>

#include "d2d.h"
#include "render.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "game.h"

//=============================================================================

//
// Globals
//
static Microsoft::WRL::ComPtr<ID2D1Factory> factory;        // Direct2D factory
Microsoft::WRL::ComPtr<ID2D1HwndRenderTarget> renderTarget; // Render target
static Microsoft::WRL::ComPtr<ID2D1Bitmap> bitmap;          // Persistent bitmap
static std::vector<uint8_t> bgraBuffer;                     // Persistent BGRA buffer
static std::vector<uint8_t> previousFrameData;              // Store previous RGB data
static bool forceFullUpdate = true;                         // Flag for full updates

/*
===============================================================================
Function Name: resizeBitmap

Description:
    - Resizes the Direct2D bitmap to the specified width and height.

Parameters:
    - width: New width of the bitmap
    - height: New height of the bitmap
===============================================================================
*/
void resizeBitmap(UINT width, UINT height)
{
    if (bitmap)
    {
        D2D1_SIZE_U currentSize = bitmap->GetPixelSize();
        if (currentSize.width == width && currentSize.height == height)
        {
            return;
        }
        bitmap.Reset();
    }
    HRESULT hr = renderTarget->CreateBitmap(
        D2D1::SizeU(width, height),
        D2D1::BitmapProperties(D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE)),
        &bitmap);
    if (FAILED(hr))
    {
        throw std::runtime_error("Failed to create Direct2D bitmap");
    }
    resizeFrameBuffers(bgraBuffer, previousFrameData, forceFullUpdate, width, height);
}

/*
===============================================================================
Function Name: initializeD2D

Description:
    - Initializes Direct2D factory and render target.
===============================================================================
*/
void initializeD2D()
{
    HRESULT hr = D2D1CreateFactory(D2D1_FACTORY_TYPE_SINGLE_THREADED, factory.GetAddressOf());
    if (FAILED(hr))
    {
        throw std::runtime_error("Failed to create Direct2D factory");
    }

    RECT clientRect;
    GetClientRect(g_hwnd, &clientRect);
    hr = factory->CreateHwndRenderTarget(
        D2D1::RenderTargetProperties(),
        D2D1::HwndRenderTargetProperties(
            g_hwnd, D2D1::SizeU(clientRect.right - clientRect.left, clientRect.bottom - clientRect.top)),
        renderTarget.GetAddressOf());
    if (FAILED(hr))
    {
        throw std::runtime_error("Failed to create Direct2D render target");
    }

    if (state.raycast.enabled)
    {
        resizeBitmap(static_cast<UINT>(state.ui.width),
                     static_cast<UINT>(state.ui.height));
        scaleFactor = 1.0f;
    }
    else
    {
        resizeBitmap(MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);
        scaleFactor = static_cast<float>(state.ui.width) / MIN_CLIENT_WIDTH;
    }
}

/*
===============================================================================
Function Name: renderFrameD2D

Description:
    - Renders the current frame using Direct2D.
===============================================================================
*/
void renderFrameD2D()
{
    if (!renderTarget || !bitmap)
    {
        throw std::runtime_error("Render target or bitmap not initialized");
    }

    const VDXFile *vdx_to_render = nullptr;
    size_t frame_index = 0;

    // Prioritize transient animation (even if stopped, use its last frame)
    if (!state.transient_animation_name.empty())
    {
        if (state.transientVDX)
        {
            vdx_to_render = state.transientVDX;
            frame_index = state.transient_frame_index; // Current or last frame
        }
        else
        {
            throw std::runtime_error("Transient animation VDX not found: " + state.transient_animation_name);
        }
    }
    // Fallback to current VDX if no transient is active
    else if (state.currentVDX)
    {
        vdx_to_render = state.currentVDX;
        frame_index = state.currentFrameIndex;
    }
    else
    {
        return; // Nothing to render
    }

    std::span<const uint8_t> pixelData = vdx_to_render->frameData[frame_index];

    auto changedRows = prepareBGRABuffer(pixelData, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT,
                                         bgraBuffer, previousFrameData, forceFullUpdate);
    if (changedRows.size() == static_cast<size_t>(MIN_CLIENT_HEIGHT))
    {
        bitmap->CopyFromMemory(nullptr, bgraBuffer.data(), MIN_CLIENT_WIDTH * 4);
    }
    else
    {
        for (size_t y : changedRows)
        {
            D2D1_RECT_U destRect = {0, static_cast<UINT32>(y), static_cast<UINT32>(MIN_CLIENT_WIDTH), static_cast<UINT32>(y + 1)};
            bitmap->CopyFromMemory(&destRect, &bgraBuffer[y * MIN_CLIENT_WIDTH * 4], MIN_CLIENT_WIDTH * 4);
        }
    }

    // Draw the frame
    renderTarget->BeginDraw();
    renderTarget->Clear(D2D1::ColorF(D2D1::ColorF::Black));

    const float scaledHeight = MIN_CLIENT_HEIGHT * scaleFactor;
    const float offsetY = (state.ui.height - scaledHeight) * 0.5f;

    D2D1_RECT_F destRect = D2D1::RectF(
        0.0f,                               // Left
        offsetY,                            // Top (centered vertically)
        static_cast<float>(state.ui.width), // Right
        offsetY + scaledHeight              // Bottom
    );

    D2D1_RECT_F sourceRect = D2D1::RectF(
        0.0f, 0.0f,                           // Top-left corner
        static_cast<float>(MIN_CLIENT_WIDTH), // Right
        static_cast<float>(MIN_CLIENT_HEIGHT) // Bottom
    );

    renderTarget->DrawBitmap(
        bitmap.Get(),
        destRect,
        1.0f, // Opacity
        D2D1_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR,
        sourceRect);

    HRESULT hr = renderTarget->EndDraw();
    if (FAILED(hr))
    {
        throw std::runtime_error("Failed to draw frame");
    }
}

/*
===============================================================================
Function Name: renderFrameRaycast

Description:
    - Renders the raycast view into the Direct2D bitmap and draws
    it to the render target.
===============================================================================
*/
void renderFrameRaycast()
{
    if (!renderTarget || !bitmap)
    {
        throw std::runtime_error("Render target or bitmap not initialized");
    }

    // Get the map and player from state
    const auto &tileMap = *state.raycast.map;
    const RaycastPlayer &player = state.raycast.player;

    // Render the raycast view into the BGRA buffer
    renderRaycastView(
        tileMap,
        player,
        bgraBuffer.data(),
        state.ui.width,
        state.ui.height,
        config.value("raycastSupersample", 1));

    // Copy to D2D bitmap
    bitmap->CopyFromMemory(nullptr, bgraBuffer.data(), state.ui.width * 4);

    // Draw the frame
    renderTarget->BeginDraw();
    renderTarget->Clear(D2D1::ColorF(D2D1::ColorF::Black));

    D2D1_RECT_F destRect = D2D1::RectF(
        0.0f,
        0.0f,
        static_cast<float>(state.ui.width),
        static_cast<float>(state.ui.height));

    D2D1_RECT_F sourceRect = D2D1::RectF(
        0.0f,
        0.0f,
        static_cast<float>(state.ui.width),
        static_cast<float>(state.ui.height));

    renderTarget->DrawBitmap(
        bitmap.Get(),
        destRect,
        1.0f,
        D2D1_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR,
        sourceRect);

    HRESULT hr = renderTarget->EndDraw();
    if (FAILED(hr))
    {
        throw std::runtime_error("Failed to draw raycast frame");
    }
}
/*
===============================================================================
Function Name: cleanupD2D

Description:
    - Cleans up Direct2D resources and destroys the window.
===============================================================================
*/
void cleanupD2D()
{
    bitmap.Reset();
    renderTarget.Reset();
    factory.Reset();
    if (g_hwnd)
    {
        DestroyWindow(g_hwnd);
        g_hwnd = nullptr;
    }
}