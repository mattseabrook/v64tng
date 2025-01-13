// d2d.cpp

#include <d2d1.h>
#include <stdexcept>
#include <vector>
#include <windows.h>

#include "d2d.h"
#include "config.h"
#include "window.h"
#include "game.h"

// Globals
static ID2D1Factory* factory = nullptr;
static ID2D1HwndRenderTarget* renderTarget = nullptr;
static ID2D1Bitmap* bitmap = nullptr;

// Helper function to create or resize the bitmap
void ensureBitmapSize(UINT width, UINT height) {
    if (bitmap) {
        D2D1_SIZE_U currentSize = bitmap->GetPixelSize();
        if (currentSize.width == width && currentSize.height == height) {
            return;
        }
        bitmap->Release();
    }
    renderTarget->CreateBitmap(
        D2D1::SizeU(width, height),
        D2D1::BitmapProperties(D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE)),
        &bitmap
    );
}

// Initialize Direct2D resources
void initializeD2D() {
    // Initialize Direct2D factory
    HRESULT hr = D2D1CreateFactory(D2D1_FACTORY_TYPE_SINGLE_THREADED, &factory);
    if (FAILED(hr)) {
        throw std::runtime_error("Failed to create Direct2D factory");
    }

    // Create render target
    RECT clientRect;
    GetClientRect(hwnd, &clientRect);

    hr = factory->CreateHwndRenderTarget(
        D2D1::RenderTargetProperties(),
        D2D1::HwndRenderTargetProperties(
            hwnd, D2D1::SizeU(clientRect.right - clientRect.left, clientRect.bottom - clientRect.top)
        ),
        &renderTarget
    );

    if (FAILED(hr)) {
        throw std::runtime_error("Failed to create Direct2D render target");
    }

    ensureBitmapSize(state.ui.width, state.ui.height);
}

// Render frame with resizing logic embedded
void renderFrameD2D(const std::vector<uint8_t>& pixelData) {
    if (!renderTarget || !bitmap) {
        throw std::runtime_error("Render target or bitmap not initialized");
    }

    RECT clientRect;
    GetClientRect(hwnd, &clientRect);
    UINT windowWidth = clientRect.right - clientRect.left;
    UINT windowHeight = clientRect.bottom - clientRect.top;

    // Adjust bitmap if the window size exceeds the minimum render area
    if (windowWidth > MIN_CLIENT_WIDTH || windowHeight > MIN_CLIENT_HEIGHT) {
        ensureBitmapSize(windowWidth, windowHeight);
    }

    // Convert RGB pixel data to BGRA
    std::vector<uint8_t> bgraData(state.ui.width * state.ui.height * 4);
    for (size_t i = 0, j = 0; i < pixelData.size(); i += 3, j += 4) {
        bgraData[j] = pixelData[i + 2];     // Blue
        bgraData[j + 1] = pixelData[i + 1]; // Green
        bgraData[j + 2] = pixelData[i];     // Red
        bgraData[j + 3] = 255;              // Alpha
    }

    // Copy pixel data to the bitmap
    HRESULT hr = bitmap->CopyFromMemory(nullptr, bgraData.data(), state.ui.width * 4);
    if (FAILED(hr)) {
        throw std::runtime_error("Failed to copy frame data into bitmap");
    }

    // Begin drawing
    renderTarget->BeginDraw();
    renderTarget->Clear(D2D1::ColorF(D2D1::ColorF::Black));

    // Scale and draw bitmap
    D2D1_RECT_F destRect = D2D1::RectF(0.0f, 0.0f, static_cast<float>(windowWidth), static_cast<float>(windowHeight));
    D2D1_RECT_F sourceRect = D2D1::RectF(0.0f, 0.0f, static_cast<float>(state.ui.width), static_cast<float>(state.ui.height));
    renderTarget->DrawBitmap(bitmap, destRect, 1.0f, D2D1_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR, sourceRect);

    hr = renderTarget->EndDraw();
    if (FAILED(hr)) {
        throw std::runtime_error("Failed to draw frame");
    }
}

// Cleanup Direct2D resources
void cleanupD2D() {
    if (bitmap) bitmap->Release();
    if (renderTarget) renderTarget->Release();
    if (factory) factory->Release();
    if (hwnd) DestroyWindow(hwnd);
    hwnd = nullptr;
}