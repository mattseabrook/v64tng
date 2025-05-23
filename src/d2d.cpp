// d2d.cpp

#include <d2d1.h>
#include <stdexcept>
#include <vector>
#include <windows.h>
#include <wrl/client.h>
#include <cstring>
#include <immintrin.h>

#include "d2d.h"

#include "config.h"
#include "window.h"
#include "raycast.h"
#include "game.h"

//=============================================================================

// Globals
static Microsoft::WRL::ComPtr<ID2D1Factory> factory;        // Direct2D factory
Microsoft::WRL::ComPtr<ID2D1HwndRenderTarget> renderTarget; // Render target
static Microsoft::WRL::ComPtr<ID2D1Bitmap> bitmap;          // Persistent bitmap
static std::vector<uint8_t> bgraBuffer;                     // Persistent BGRA buffer
static std::vector<uint8_t> previousFrameData;              // Store previous RGB data
static bool forceFullUpdate = true;                         // Flag for full updates

//=============================================================================

//
// Resize the Direct2D bitmap
//
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
    bgraBuffer.resize(width * height * 4);
    previousFrameData.resize(width * height * 3);
    forceFullUpdate = true;
}

//
// Convert RGB to BGRA using SSE intrinsics
//
void convertRGBtoBGRA_SSE(const uint8_t *rgbData, uint8_t *bgraData, size_t pixelCount)
{
    static const __m128i shuffleMask = _mm_set_epi8(
        static_cast<char>(0x80), 9, 10, 11,
        static_cast<char>(0x80), 6, 7, 8,
        static_cast<char>(0x80), 3, 4, 5,
        static_cast<char>(0x80), 0, 1, 2);

    static const __m128i alphaMask = _mm_set_epi8(
        static_cast<char>(255), 0, 0, 0,
        static_cast<char>(255), 0, 0, 0,
        static_cast<char>(255), 0, 0, 0,
        static_cast<char>(255), 0, 0, 0);

    size_t i = 0;
    for (; i < pixelCount; i += 4)
    {
        __m128i rgb = _mm_loadu_si128(reinterpret_cast<const __m128i *>(rgbData + i * 3));
        __m128i shuffled = _mm_shuffle_epi8(rgb, shuffleMask);
        __m128i bgra = _mm_or_si128(shuffled, alphaMask);
        _mm_storeu_si128(reinterpret_cast<__m128i *>(bgraData + i * 4), bgra);
    }
}

//
// Initialize Direct2D resources
//
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

    resizeBitmap(MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);
    scaleFactor = static_cast<float>(state.ui.width) / MIN_CLIENT_WIDTH;
    previousFrameData.resize(MIN_CLIENT_WIDTH * MIN_CLIENT_HEIGHT * 3);
    forceFullUpdate = true;
}

//
// Render a frame using Direct2D
//
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
        auto it = std::ranges::find(state.VDXFiles, state.transient_animation_name, &VDXFile::filename);
        if (it != state.VDXFiles.end())
        {
            vdx_to_render = &(*it);
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

    std::span<const uint8_t> pixelData = vdx_to_render->chunks[frame_index].data;

    if (forceFullUpdate)
    {
        // Full frame update with SIMD
        convertRGBtoBGRA_SSE(pixelData.data(), bgraBuffer.data(), MIN_CLIENT_WIDTH * MIN_CLIENT_HEIGHT);
        bitmap->CopyFromMemory(nullptr, bgraBuffer.data(), MIN_CLIENT_WIDTH * 4);
        forceFullUpdate = false;
    }
    else
    {
        // Delta update with SIMD
        std::vector<size_t> changedRows;
        const size_t rowSize = MIN_CLIENT_WIDTH * 3; // RGB row size in bytes
        for (size_t y = 0; y < static_cast<size_t>(MIN_CLIENT_HEIGHT); ++y)
        {
            if (memcmp(&pixelData[y * rowSize], &previousFrameData[y * rowSize], rowSize) != 0)
            {
                changedRows.push_back(y);
            }
        }
        for (size_t y : changedRows)
        {
            // Convert one row with SIMD
            convertRGBtoBGRA_SSE(&pixelData[y * rowSize], &bgraBuffer[y * MIN_CLIENT_WIDTH * 4], MIN_CLIENT_WIDTH);
            D2D1_RECT_U destRect = {0, static_cast<UINT32>(y), static_cast<UINT32>(MIN_CLIENT_WIDTH), static_cast<UINT32>(y + 1)};
            bitmap->CopyFromMemory(&destRect, &bgraBuffer[y * MIN_CLIENT_WIDTH * 4], MIN_CLIENT_WIDTH * 4);
        }
    }

    // Update previous frame data
    std::copy(pixelData.begin(), pixelData.end(), previousFrameData.begin());

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

//
// Render a raycast frame using Direct2D
//
void renderFrameRaycast()
{
    if (!renderTarget || !bitmap)
    {
        throw std::runtime_error("Render target or bitmap not initialized");
    }

    // Get the map and player from state
    const auto &map = *state.raycast.map;
    const RaycastPlayer &player = state.raycast.player;

    // Render the raycast view into the BGRA buffer
    renderRaycastView(map, player, bgraBuffer.data(), MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);

    // Copy to D2D bitmap
    bitmap->CopyFromMemory(nullptr, bgraBuffer.data(), MIN_CLIENT_WIDTH * 4);

    // Draw the frame
    renderTarget->BeginDraw();
    renderTarget->Clear(D2D1::ColorF(D2D1::ColorF::Black));

    const float scaledHeight = MIN_CLIENT_HEIGHT * scaleFactor;
    const float offsetY = (state.ui.height - scaledHeight) * 0.5f;

    D2D1_RECT_F destRect = D2D1::RectF(
        0.0f,
        offsetY,
        static_cast<float>(state.ui.width),
        offsetY + scaledHeight);

    D2D1_RECT_F sourceRect = D2D1::RectF(
        0.0f, 0.0f,
        static_cast<float>(MIN_CLIENT_WIDTH),
        static_cast<float>(MIN_CLIENT_HEIGHT));

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

// Cleanup Direct2D resources
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