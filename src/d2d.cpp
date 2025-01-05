// d2d.cpp

#include <d2d1.h>
#include <stdexcept>
#include <vector>
#include <windows.h>

#include "config.h"
#include "game.h"
#include "d2d.h"

// Globals
static HWND hwnd = nullptr;
static ID2D1Factory* factory = nullptr;
static ID2D1HwndRenderTarget* renderTarget = nullptr;
static ID2D1Bitmap* bitmap = nullptr;

//
// Window procedure
//
LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
	if (uMsg == WM_DESTROY) {
		PostQuitMessage(0);
		return 0;
	}
	return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

//
// Initialize Direct2D resources and create the application window
//
void initializeD2D() {
	WNDCLASS wc = {};
	wc.lpfnWndProc = WindowProc;
	wc.hInstance = GetModuleHandle(nullptr);
	wc.lpszClassName = L"D2DRenderWindowClass";

	if (!RegisterClass(&wc)) {
		throw std::runtime_error("Failed to register window class");
	}

	RECT rect = { 0, 0, state.ui.width, state.ui.height };
	AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, FALSE);

	hwnd = CreateWindowEx(
		0,
		wc.lpszClassName,
		std::wstring(windowTitle.begin(), windowTitle.end()).c_str(),
		WS_OVERLAPPEDWINDOW,
		CW_USEDEFAULT, CW_USEDEFAULT,
		rect.right - rect.left, rect.bottom - rect.top,
		nullptr, nullptr, GetModuleHandle(nullptr), nullptr
	);

	if (!hwnd) {
		throw std::runtime_error("Failed to create window");
	}

	ShowWindow(hwnd, SW_SHOW);

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
}

//
// Render a frame
//
void renderFrameD2D(const std::vector<uint8_t>& pixelData) {
	if (!renderTarget) {
		throw std::runtime_error("Render target not initialized");
	}

	// Ensure bitmap matches the frame size
	if (!bitmap || bitmap->GetSize().width != static_cast<uint32_t>(state.ui.width) || bitmap->GetSize().height != static_cast<uint32_t>(state.ui.height)) {
		if (bitmap) {
			bitmap->Release();
		}
		renderTarget->CreateBitmap(
			D2D1::SizeU(static_cast<uint32_t>(state.ui.width), static_cast<uint32_t>(state.ui.height)),
			D2D1::BitmapProperties(D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE)),
			&bitmap
		);
	}

	// Convert RGB data to BGRA
	std::vector<uint8_t> bgraData(static_cast<uint32_t>(state.ui.width) * static_cast<uint32_t>(state.ui.height) * 4);
	for (size_t i = 0, j = 0; i < pixelData.size(); i += 3, j += 4) {
		bgraData[j] = pixelData[i + 2];     // Blue
		bgraData[j + 1] = pixelData[i + 1]; // Green
		bgraData[j + 2] = pixelData[i];     // Red
		bgraData[j + 3] = 255;              // Alpha
	}

	bitmap->CopyFromMemory(nullptr, bgraData.data(), static_cast<uint32_t>(state.ui.width) * 4);

	renderTarget->BeginDraw();
	renderTarget->Clear(D2D1::ColorF(D2D1::ColorF::Black));
	renderTarget->DrawBitmap(bitmap);
	HRESULT hr = renderTarget->EndDraw();

	if (FAILED(hr)) {
		throw std::runtime_error("Failed to draw frame");
	}
}
//
// Process the message loop
//
void processD2DMessageLoop() {
	MSG msg = {};
	while (GetMessage(&msg, nullptr, 0, 0)) {
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
}

//
// Cleanup Direct2D resources
//
void cleanupD2D() {
	if (bitmap) bitmap->Release();
	if (renderTarget) renderTarget->Release();
	if (factory) factory->Release();
	if (hwnd) DestroyWindow(hwnd);
	hwnd = nullptr;
}