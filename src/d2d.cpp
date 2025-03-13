// d2d.cpp

#include <d2d1.h>
#include <stdexcept>
#include <vector>
#include <windows.h>
#include <wrl/client.h>
#include <cstring>

#include "d2d.h"

#include "config.h"
#include "window.h"
#include "game.h"

//=============================================================================

// Globals
static Microsoft::WRL::ComPtr<ID2D1Factory> factory;			// Direct2D factory
Microsoft::WRL::ComPtr<ID2D1HwndRenderTarget> renderTarget;		// Render target
static Microsoft::WRL::ComPtr<ID2D1Bitmap> bitmap;				// Persistent bitmap
static std::vector<uint8_t> bgraBuffer;							// Persistent BGRA buffer
static std::vector<uint8_t> previousFrameData;                  // Store previous RGB data
static bool forceFullUpdate = true;                             // Flag for full updates

//=============================================================================

//
// Resize the Direct2D bitmap
//
void resizeBitmap(UINT width, UINT height) {
	if (bitmap) {
		D2D1_SIZE_U currentSize = bitmap->GetPixelSize();
		if (currentSize.width == width && currentSize.height == height) {
			return;
		}
		bitmap.Reset();
	}
	HRESULT hr = renderTarget->CreateBitmap(
		D2D1::SizeU(width, height),
		D2D1::BitmapProperties(D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE)),
		&bitmap
	);
	if (FAILED(hr)) {
		throw std::runtime_error("Failed to create Direct2D bitmap");
	}
	bgraBuffer.resize(width * height * 4);
	previousFrameData.resize(width * height * 3);
	forceFullUpdate = true;
}

//
// Initialize Direct2D resources
//
void initializeD2D() {
	HRESULT hr = D2D1CreateFactory(D2D1_FACTORY_TYPE_SINGLE_THREADED, factory.GetAddressOf());
	if (FAILED(hr)) {
		throw std::runtime_error("Failed to create Direct2D factory");
	}

	RECT clientRect;
	GetClientRect(g_hwnd, &clientRect);
	hr = factory->CreateHwndRenderTarget(
		D2D1::RenderTargetProperties(),
		D2D1::HwndRenderTargetProperties(
			g_hwnd, D2D1::SizeU(clientRect.right - clientRect.left, clientRect.bottom - clientRect.top)
		),
		renderTarget.GetAddressOf()
	);
	if (FAILED(hr)) {
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
void renderFrameD2D() {
    if (!renderTarget || !bitmap) {
        throw std::runtime_error("Render target or bitmap not initialized");
    }

    std::span<const uint8_t> pixelData = state.currentVDX->chunks[state.currentFrameIndex].data;

    if (forceFullUpdate) {
        // Full update: Convert entire frame to BGRA
        for (size_t i = 0, j = 0; i < pixelData.size() && j < bgraBuffer.size(); i += 3, j += 4) {
            bgraBuffer[j] = pixelData[i + 2];     // B
            bgraBuffer[j + 1] = pixelData[i + 1]; // G
            bgraBuffer[j + 2] = pixelData[i];     // R
            bgraBuffer[j + 3] = 255;              // A
        }
        bitmap->CopyFromMemory(nullptr, bgraBuffer.data(), MIN_CLIENT_WIDTH * 4);
        forceFullUpdate = false;
    } else {
        // Delta update: Find and update changed rows
        std::vector<size_t> changedRows;
        const size_t rowSize = MIN_CLIENT_WIDTH * 3; // RGB bytes per row
        for (size_t y = 0; y < MIN_CLIENT_HEIGHT; ++y) {
            const uint8_t* currentRow = &pixelData[y * rowSize];
            const uint8_t* previousRow = &previousFrameData[y * rowSize];
            if (memcmp(currentRow, previousRow, rowSize) != 0) {
                changedRows.push_back(y);
            }
        }

        for (size_t y : changedRows) {
            const uint8_t* rowData = &pixelData[y * rowSize];
            uint8_t* bgraRow = &bgraBuffer[y * MIN_CLIENT_WIDTH * 4];
            for (size_t x = 0; x < MIN_CLIENT_WIDTH; ++x) {
                size_t rgbIndex = x * 3;
                size_t bgraIndex = x * 4;
                bgraRow[bgraIndex] = rowData[rgbIndex + 2];     // B
                bgraRow[bgraIndex + 1] = rowData[rgbIndex + 1]; // G
                bgraRow[bgraIndex + 2] = rowData[rgbIndex];     // R
                bgraRow[bgraIndex + 3] = 255;                   // A
            }
            D2D1_RECT_U destRect = { 0, static_cast<UINT32>(y), MIN_CLIENT_WIDTH, static_cast<UINT32>(y + 1) };
            bitmap->CopyFromMemory(&destRect, &bgraBuffer[y * MIN_CLIENT_WIDTH * 4], MIN_CLIENT_WIDTH * 4);
        }
    }

    // Update previous frame data
    std::copy(pixelData.begin(), pixelData.end(), previousFrameData.begin());

    // Draw the bitmap
    renderTarget->BeginDraw();
    renderTarget->Clear(D2D1::ColorF(D2D1::ColorF::Black));
    D2D1_RECT_F destRect = D2D1::RectF(0.0f, 0.0f, MIN_CLIENT_WIDTH * scaleFactor, MIN_CLIENT_HEIGHT * scaleFactor);
    D2D1_RECT_F sourceRect = D2D1::RectF(0.0f, 0.0f, static_cast<float>(MIN_CLIENT_WIDTH), static_cast<float>(MIN_CLIENT_HEIGHT));
    renderTarget->DrawBitmap(
        bitmap.Get(),
        destRect,
        1.0f,
        D2D1_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR,
        sourceRect
    );

    HRESULT hr = renderTarget->EndDraw();
    if (FAILED(hr)) {
        throw std::runtime_error("Failed to draw frame");
    }
}

// Cleanup Direct2D resources
void cleanupD2D() {
	bitmap.Reset();
	renderTarget.Reset();
	factory.Reset();
	if (g_hwnd) {
		DestroyWindow(g_hwnd);
		g_hwnd = nullptr;
	}
}