// window.cpp

#include "window.h"
#include "config.h"

ID2D1Factory* pFactory = nullptr;
ID2D1HwndRenderTarget* pRenderTarget = nullptr;
ID2D1SolidColorBrush* pBrush = nullptr;

// Initialize the window
HRESULT InitWindow(HINSTANCE hInstance, int nCmdShow)
{
    bool fullscreen = get_config_value<bool>("fullscreen");

    WNDCLASSW wc = {};
    wc.lpfnWndProc = WindowProc;
    wc.hInstance = hInstance;
    wc.lpszClassName = CLASS_NAME.c_str();

    // Register the window class.
    if (!RegisterClassW(&wc))
    {
        return -1;
    }

    // Create the window and store a handle to it.
    HWND hwnd = CreateWindowExW(0, CLASS_NAME.c_str(), L"v64tng",
        fullscreen ? WS_OVERLAPPEDWINDOW : WS_POPUP,
        CW_USEDEFAULT, CW_USEDEFAULT,
        fullscreen ? GetSystemMetrics(SM_CXSCREEN) : 640,
        fullscreen ? GetSystemMetrics(SM_CYSCREEN) : 320,
        NULL, NULL, hInstance, NULL);

    if (hwnd == NULL)
    {
        return -1;
    }

    ShowWindow(hwnd, nCmdShow);
    return S_OK;
}

// Callback function for the window
LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    if (uMsg == WM_PAINT)
    {
        PAINTSTRUCT ps;
        HDC hdc = BeginPaint(hwnd, &ps);
        FillRect(hdc, &ps.rcPaint, (HBRUSH)(COLOR_WINDOW + 1));
        EndPaint(hwnd, &ps);
        return 0;
    }

    if (uMsg == WM_DESTROY)
    {
        PostQuitMessage(0);
        return 0;
    }

    return DefWindowProcW(hwnd, uMsg, wParam, lParam);
}

// Initialize Direct2D
HRESULT InitDevice()
{
    HRESULT hr = S_OK;

    if (!pRenderTarget)
    {
        RECT rc;
        GetClientRect(FindWindowW(CLASS_NAME.c_str(), NULL), &rc);

        D2D1_SIZE_U size = D2D1::SizeU(rc.right - rc.left, rc.bottom - rc.top);

        hr = D2D1CreateFactory(D2D1_FACTORY_TYPE_SINGLE_THREADED, &pFactory);

        if (SUCCEEDED(hr))
        {
            hr = pFactory->CreateHwndRenderTarget(
                D2D1::RenderTargetProperties(),
                D2D1::HwndRenderTargetProperties(FindWindowW(CLASS_NAME.c_str(), NULL), size),
                &pRenderTarget);
        }

        if (SUCCEEDED(hr))
        {
            hr = pRenderTarget->CreateSolidColorBrush(D2D1::ColorF(D2D1::ColorF::Black), &pBrush);
        }
    }

    return hr;
}

// Release Direct2D resources
void DiscardDeviceResources()
{
    if (pBrush)
    {
        pBrush->Release();
        pBrush = nullptr;
    }
    if (pRenderTarget)
    {
        pRenderTarget->Release();
        pRenderTarget = nullptr;
    }
    if (pFactory)
    {
        pFactory->Release();
        pFactory = nullptr;
    }
}