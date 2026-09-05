// d2d.cpp

#include <stdexcept>
#include <windows.h>
#include <span>
#include <vector>
#include <array>
#include <algorithm>
#include <cstring>
#include <cstdint>
#include <limits>
#include <d3dcompiler.h>
#include <dxgi1_6.h>
#include <dwmapi.h>
#pragma comment(lib, "dwmapi.lib")

#include "d2d.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "megatexture.h"
#include "game.h"
#include "pvx.h"
#include "system.h"
#include "bitmap_font.h"
#include "project_overrides.h"
#include "../resource.h"

#include "shaders/d3d11_raycast.h"
#include "shaders/d3d11_ycocg_to_bgra.h"

#ifdef _WIN32
#define DBG_LOG(msg) OutputDebugStringA("[Phantom:D2D] " msg "\n")
#define DBG_LOGF(fmt, ...) do { char _dbg_buf[4096]; snprintf(_dbg_buf, sizeof(_dbg_buf), "[Phantom:D2D] " fmt "\n", __VA_ARGS__); OutputDebugStringA(_dbg_buf); } while(0)
#else
#define DBG_LOG(msg) ((void)0)
#define DBG_LOGF(fmt, ...) ((void)0)
#endif

D2DContext d2dCtx;
static unsigned char* d2dMenuTitleImage = nullptr;
static int d2dMenuTitleW = 0;
static int d2dMenuTitleH = 0;
static int d2dMenuTitleC = 0;

static float getRaycastEnvironmentFloat(const char* key, float fallback)
{
    float value = fallback;
    if (config.contains("gameState") && config["gameState"].is_object())
    {
        const auto& gameState = config["gameState"];
        if (gameState.contains("raycast") && gameState["raycast"].is_object())
        {
            const auto& raycast = gameState["raycast"];
            if (raycast.contains(key) && raycast[key].is_number())
                value = raycast[key].get<float>();
            if (raycast.contains("environment") && raycast["environment"].is_object())
            {
                const auto& environment = raycast["environment"];
                if (environment.contains(key) && environment[key].is_number())
                    value = environment[key].get<float>();
            }
        }
    }
    if (config.contains(key) && config[key].is_number())
        value = config[key].get<float>();
    return value;
}

static bool getRaycastEnvironmentBool(const char* key, bool fallback)
{
    bool value = fallback;
    if (config.contains("gameState") && config["gameState"].is_object())
    {
        const auto& gameState = config["gameState"];
        if (gameState.contains("raycast") && gameState["raycast"].is_object())
        {
            const auto& raycast = gameState["raycast"];
            if (raycast.contains(key) && raycast[key].is_boolean())
                value = raycast[key].get<bool>();
            if (raycast.contains("environment") && raycast["environment"].is_object())
            {
                const auto& environment = raycast["environment"];
                if (environment.contains(key) && environment[key].is_boolean())
                    value = environment[key].get<bool>();
            }
        }
    }
    if (config.contains(key) && config[key].is_boolean())
        value = config[key].get<bool>();
    return value;
}

static uint32_t packRaycastColor(const std::array<uint8_t, 3>& color)
{
    return static_cast<uint32_t>(color[0]) |
           (static_cast<uint32_t>(color[1]) << 8u) |
           (static_cast<uint32_t>(color[2]) << 16u);
}

static uint32_t getRaycastEnvironmentColorPacked(const char* key, std::array<uint8_t, 3> fallback)
{
    auto readColor = [&](const auto& obj)
    {
        if (!obj.contains(key) || !obj[key].is_array())
            return;
        const auto& value = obj[key];
        for (size_t i = 0; i < fallback.size() && i < value.size(); ++i)
        {
            if (value[i].is_number())
                fallback[i] = static_cast<uint8_t>(std::clamp(value[i].template get<int>(), 0, 255));
        }
    };

    if (config.contains("gameState") && config["gameState"].is_object())
    {
        const auto& gameState = config["gameState"];
        if (gameState.contains("raycast") && gameState["raycast"].is_object())
        {
            const auto& raycast = gameState["raycast"];
            readColor(raycast);
            if (raycast.contains("environment") && raycast["environment"].is_object())
                readColor(raycast["environment"]);
        }
    }
    readColor(config);
    return packRaycastColor(fallback);
}

// GPU YCoCg compute pipeline statics (shared between resizeTexture and renderFrameMenuGPU)
static Microsoft::WRL::ComPtr<ID3D11Texture2D> s_ycocgStagingTex;
static UINT s_ycocgStagingW = 0, s_ycocgStagingH = 0;

// Forward declaration
void recreateBackbufferTargets();

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
        errorBlob.GetAddressOf());

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

static const char* g_blitShaderSource = R"(
cbuffer BlitConstants : register(b0)
{
    float4 destRect;    // x, y, width, height normalized [0,1]
    float2 srcSize;
    float2 viewportSize;
};

Texture2D<float4> srcTexture : register(t0);
SamplerState pointSampler : register(s0);

struct VSOutput
{
    float4 pos : SV_Position;
    float2 uv : TEXCOORD0;
};

VSOutput VSMain(uint vertexId : SV_VertexID)
{
    VSOutput output;

    float2 corners[6];
    corners[0] = float2(0.0, 0.0);
    corners[1] = float2(1.0, 0.0);
    corners[2] = float2(0.0, 1.0);
    corners[3] = float2(1.0, 0.0);
    corners[4] = float2(1.0, 1.0);
    corners[5] = float2(0.0, 1.0);

    float2 corner = corners[vertexId];
    output.uv = corner;

    float2 screenPos;
    screenPos.x = destRect.x + corner.x * destRect.z;
    screenPos.y = destRect.y + corner.y * destRect.w;

    output.pos.x = screenPos.x * 2.0 - 1.0;
    output.pos.y = -(screenPos.y * 2.0 - 1.0);
    output.pos.z = 0.0;
    output.pos.w = 1.0;

    return output;
}

float4 PSMain(VSOutput input) : SV_Target
{
    return srcTexture.Sample(pointSampler, input.uv);
}
)";

static void initializeBlitPipeline()
{
    auto vsBlob = compileShaderFromSource(g_blitShaderSource, "VSMain", "vs_5_0");
    HRESULT hr = d2dCtx.d3dDevice->CreateVertexShader(
        vsBlob->GetBufferPointer(),
        vsBlob->GetBufferSize(),
        nullptr,
        d2dCtx.blitVertexShader.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create blit vertex shader");

    auto psBlob = compileShaderFromSource(g_blitShaderSource, "PSMain", "ps_5_0");
    hr = d2dCtx.d3dDevice->CreatePixelShader(
        psBlob->GetBufferPointer(),
        psBlob->GetBufferSize(),
        nullptr,
        d2dCtx.blitPixelShader.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create blit pixel shader");

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

    D3D11_BUFFER_DESC cbDesc = {};
    cbDesc.ByteWidth = sizeof(float) * 8;
    cbDesc.Usage = D3D11_USAGE_DYNAMIC;
    cbDesc.BindFlags = D3D11_BIND_CONSTANT_BUFFER;
    cbDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;

    hr = d2dCtx.d3dDevice->CreateBuffer(&cbDesc, nullptr, d2dCtx.blitConstantBuffer.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create blit constant buffer");
}

void recreateBackbufferTargets()
{
    if (!d2dCtx.swapchain)
        return;

    const D2D1_BITMAP_PROPERTIES1 targetProps = D2D1::BitmapProperties1(
        D2D1_BITMAP_OPTIONS_TARGET | D2D1_BITMAP_OPTIONS_CANNOT_DRAW,
        D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE));

    for (UINT i = 0; i < 2; ++i)
    {
        d2dCtx.backbufferRTVs[i].Reset();
        d2dCtx.backbufferBitmaps[i].Reset();
        Microsoft::WRL::ComPtr<ID3D11Texture2D> backBuffer;
        HRESULT hr = d2dCtx.swapchain->GetBuffer(i, IID_PPV_ARGS(backBuffer.GetAddressOf()));
        if (FAILED(hr))
            continue;
        hr = d2dCtx.d3dDevice->CreateRenderTargetView(backBuffer.Get(), nullptr, d2dCtx.backbufferRTVs[i].GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create backbuffer RTV");

        Microsoft::WRL::ComPtr<IDXGISurface> backSurface;
        hr = backBuffer.As(&backSurface);
        if (FAILED(hr))
            throw std::runtime_error("Failed to query backbuffer surface");
        hr = d2dCtx.dc->CreateBitmapFromDxgiSurface(backSurface.Get(), &targetProps, d2dCtx.backbufferBitmaps[i].GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create backbuffer target bitmap");
    }
}

static void blitToBackbuffer(ID3D11ShaderResourceView* sourceSRV,
                             float destX, float destY, float destW, float destH,
                             float srcW, float srcH, bool needsLetterbox)
{
    if (!d2dCtx.swapchain)
        return;

    DXGI_SWAP_CHAIN_DESC1 scDesc{};
    HRESULT scHr = d2dCtx.swapchain->GetDesc1(&scDesc);
    if (FAILED(scHr) || scDesc.Width == 0 || scDesc.Height == 0)
        return;
    const float viewportW = static_cast<float>(scDesc.Width);
    const float viewportH = static_cast<float>(scDesc.Height);

    // Ensure RTVs exist (can be lost after ResizeBuffers)
    if (!d2dCtx.backbufferRTVs[0] || !d2dCtx.backbufferRTVs[1])
        recreateBackbufferTargets();

    d2dCtx.currentBackbuffer = d2dCtx.swapchain->GetCurrentBackBufferIndex();
    ID3D11RenderTargetView* rtv = d2dCtx.backbufferRTVs[d2dCtx.currentBackbuffer].Get();
    if (!rtv)
        return;

    d2dCtx.d3dContext->OMSetRenderTargets(1, &rtv, nullptr);

    if (needsLetterbox)
    {
        float clearColor[4] = { 0.0f, 0.0f, 0.0f, 1.0f };
        d2dCtx.d3dContext->ClearRenderTargetView(rtv, clearColor);
    }

    D3D11_VIEWPORT viewport = {};
    viewport.TopLeftX = 0.0f;
    viewport.TopLeftY = 0.0f;
    viewport.Width = viewportW;
    viewport.Height = viewportH;
    viewport.MinDepth = 0.0f;
    viewport.MaxDepth = 1.0f;
    d2dCtx.d3dContext->RSSetViewports(1, &viewport);

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
            data[0] = destX / viewportW;
            data[1] = destY / viewportH;
            data[2] = destW / viewportW;
            data[3] = destH / viewportH;
            data[4] = srcW;
            data[5] = srcH;
            data[6] = viewportW;
            data[7] = viewportH;
            d2dCtx.d3dContext->Unmap(d2dCtx.blitConstantBuffer.Get(), 0);

            d2dCtx.lastBlitDestX = destX;
            d2dCtx.lastBlitDestY = destY;
            d2dCtx.lastBlitDestW = destW;
            d2dCtx.lastBlitDestH = destH;
            d2dCtx.lastBlitSrcW = srcW;
            d2dCtx.lastBlitSrcH = srcH;
        }
    }

    d2dCtx.d3dContext->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST);
    d2dCtx.d3dContext->IASetInputLayout(nullptr);
    d2dCtx.d3dContext->VSSetShader(d2dCtx.blitVertexShader.Get(), nullptr, 0);
    d2dCtx.d3dContext->PSSetShader(d2dCtx.blitPixelShader.Get(), nullptr, 0);
    d2dCtx.d3dContext->PSSetSamplers(0, 1, d2dCtx.pointSampler.GetAddressOf());
    d2dCtx.d3dContext->PSSetConstantBuffers(0, 1, d2dCtx.blitConstantBuffer.GetAddressOf());
    d2dCtx.d3dContext->VSSetConstantBuffers(0, 1, d2dCtx.blitConstantBuffer.GetAddressOf());

    d2dCtx.d3dContext->PSSetShaderResources(0, 1, &sourceSRV);
    d2dCtx.d3dContext->Draw(6, 0);

    ID3D11ShaderResourceView* nullSRV = nullptr;
    d2dCtx.d3dContext->PSSetShaderResources(0, 1, &nullSRV);

    ID3D11RenderTargetView* nullRTV = nullptr;
    d2dCtx.d3dContext->OMSetRenderTargets(1, &nullRTV, nullptr);
}

static void computeAspectFitRect(float viewportW, float viewportH,
    float sourceW, float sourceH,
    float& destX, float& destY, float& destW, float& destH)
{
    if (viewportW <= 0.0f || viewportH <= 0.0f || sourceW <= 0.0f || sourceH <= 0.0f)
    {
        destX = 0.0f;
        destY = 0.0f;
        destW = viewportW;
        destH = viewportH;
        return;
    }

    const float scale = (std::min)(viewportW / sourceW, viewportH / sourceH);
    destW = sourceW * scale;
    destH = sourceH * scale;
    destX = (viewportW - destW) * 0.5f;
    destY = (viewportH - destH) * 0.5f;
}

static void initializeRaycastGPUPipeline()
{
    try
    {
        auto shaderBlob = compileShaderFromSource(g_d3d11_raycast_hlsl, "main", "cs_5_0");

        HRESULT hr = d2dCtx.d3dDevice->CreateComputeShader(
            shaderBlob->GetBufferPointer(),
            shaderBlob->GetBufferSize(),
            nullptr,
            d2dCtx.raycastComputeShader.GetAddressOf());

        if (FAILED(hr))
            throw std::runtime_error("Failed to create raycast compute shader");

        D3D11_BUFFER_DESC cbDesc = {};
        cbDesc.ByteWidth = 96;
        cbDesc.Usage = D3D11_USAGE_DYNAMIC;
        cbDesc.BindFlags = D3D11_BIND_CONSTANT_BUFFER;
        cbDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;

        hr = d2dCtx.d3dDevice->CreateBuffer(&cbDesc, nullptr, d2dCtx.raycastConstantBuffer.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create raycast constant buffer");
    }
    catch (const std::exception& e)
    {
        OutputDebugStringA("Warning: Failed to initialize raycast GPU pipeline: ");
        OutputDebugStringA(e.what());
        OutputDebugStringA("\n");
        d2dCtx.raycastComputeShader.Reset();
        d2dCtx.raycastConstantBuffer.Reset();
    }
}

static void ensureRaycastOutputTexture(UINT width, UINT height)
{
    if (width == 0 || height == 0)
        return;

    if (d2dCtx.raycastOutputTexture && d2dCtx.raycastOutputWidth == width && d2dCtx.raycastOutputHeight == height &&
        d2dCtx.raycastOutputUAV && d2dCtx.raycastOutputSRV)
        return;

    d2dCtx.raycastOutputTexture.Reset();
    d2dCtx.raycastOutputSRV.Reset();
    d2dCtx.raycastOutputUAV.Reset();

    D3D11_TEXTURE2D_DESC desc = {};
    desc.Width = width;
    desc.Height = height;
    desc.MipLevels = 1;
    desc.ArraySize = 1;
    desc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    desc.SampleDesc.Count = 1;
    desc.Usage = D3D11_USAGE_DEFAULT;
    desc.BindFlags = D3D11_BIND_SHADER_RESOURCE | D3D11_BIND_UNORDERED_ACCESS;

    HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&desc, nullptr, d2dCtx.raycastOutputTexture.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create raycast output texture");

    D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
    srvDesc.Format = desc.Format;
    srvDesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2D;
    srvDesc.Texture2D.MipLevels = 1;
    hr = d2dCtx.d3dDevice->CreateShaderResourceView(d2dCtx.raycastOutputTexture.Get(), &srvDesc, d2dCtx.raycastOutputSRV.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create raycast output SRV");

    D3D11_UNORDERED_ACCESS_VIEW_DESC uavDesc = {};
    uavDesc.Format = desc.Format;
    uavDesc.ViewDimension = D3D11_UAV_DIMENSION_TEXTURE2D;
    uavDesc.Texture2D.MipSlice = 0;
    hr = d2dCtx.d3dDevice->CreateUnorderedAccessView(d2dCtx.raycastOutputTexture.Get(), &uavDesc, d2dCtx.raycastOutputUAV.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed to create raycast output UAV");

    d2dCtx.raycastOutputWidth = width;
    d2dCtx.raycastOutputHeight = height;
}

static void updateRaycastTileMap(const TileMap& tileMap)
{
    if (tileMap.empty() || tileMap[0].empty())
        return;

    UINT mapHeight = static_cast<UINT>(tileMap.size());
    UINT mapWidth = static_cast<UINT>(tileMap[0].size());
    const size_t tileCount = static_cast<size_t>(mapWidth) * mapHeight;
    const bool needRecreate = (!d2dCtx.tileMapTexture || d2dCtx.lastMapWidth != mapWidth || d2dCtx.lastMapHeight != mapHeight);
    if (!needRecreate &&
        d2dCtx.uploadedMapRevision == state.raycast.mapRevision &&
        d2dCtx.uploadedExploredRevision == state.raycast.exploredRevision)
        return;

    if (needRecreate)
    {
        d2dCtx.tileMapTexture.Reset();
        d2dCtx.tileMapSRV.Reset();

        // Double height: top half = tiles, bottom half = explored flags
        D3D11_TEXTURE2D_DESC texDesc = {};
        texDesc.Width = mapWidth;
        texDesc.Height = mapHeight * 2;
        texDesc.MipLevels = 1;
        texDesc.ArraySize = 1;
        texDesc.Format = DXGI_FORMAT_R8_UINT;
        texDesc.SampleDesc.Count = 1;
        texDesc.Usage = D3D11_USAGE_DEFAULT;
        texDesc.BindFlags = D3D11_BIND_SHADER_RESOURCE;

        HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&texDesc, nullptr, d2dCtx.tileMapTexture.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create tile map texture");

        D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
        srvDesc.Format = DXGI_FORMAT_R8_UINT;
        srvDesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2D;
        srvDesc.Texture2D.MipLevels = 1;

        hr = d2dCtx.d3dDevice->CreateShaderResourceView(d2dCtx.tileMapTexture.Get(), &srvDesc, d2dCtx.tileMapSRV.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create tile map SRV");

        d2dCtx.lastMapWidth = mapWidth;
        d2dCtx.lastMapHeight = mapHeight;
    }

    // Pack tile data + explored flags into combined buffer (double height)
    auto& combinedMap = d2dCtx.tileMapUploadCache;
    combinedMap.assign(tileCount * 2, 0);
    for (UINT y = 0; y < mapHeight; y++)
        for (UINT x = 0; x < mapWidth; x++)
            combinedMap[y * mapWidth + x] = tileMap[y][x];

    // Copy explored flags into second half
    if (state.raycast.exploredMap.size() == tileCount)
        std::copy(state.raycast.exploredMap.begin(), state.raycast.exploredMap.end(),
                  combinedMap.begin() + static_cast<ptrdiff_t>(tileCount));

    d2dCtx.d3dContext->UpdateSubresource(
        d2dCtx.tileMapTexture.Get(),
        0,
        nullptr,
        combinedMap.data(),
        mapWidth,
        0);
    d2dCtx.uploadedMapRevision = state.raycast.mapRevision;
    d2dCtx.uploadedExploredRevision = state.raycast.exploredRevision;
}

static void updateRaycastEdgeOffsets(const TileMap& tileMap)
{
    if (tileMap.empty() || tileMap[0].empty())
        return;

    UINT mapHeight = static_cast<UINT>(tileMap.size());
    UINT mapWidth = static_cast<UINT>(tileMap[0].size());

    const size_t count = static_cast<size_t>(mapWidth) * mapHeight * 4ull;
    const size_t byteSize = count * 3ull * sizeof(uint32_t);
    const bool needRecreate = !d2dCtx.edgeOffsetsBuffer || !d2dCtx.edgeOffsetsSRV || d2dCtx.edgeOffsetsByteSize != byteSize;
    const bool edgeUnchanged = (!needRecreate &&
                                d2dCtx.lastMapWidth == mapWidth &&
                                d2dCtx.lastMapHeight == mapHeight &&
                                d2dCtx.uploadedEdgeVersion == megatex.version);
    if (edgeUnchanged)
        return;

    std::vector<uint32_t> table(count * 3ull, 0u);
    for (const auto& e : megatex.edges)
    {
        if (e.cellX < 0 || e.cellY < 0) continue;
        if (e.cellX >= static_cast<int>(mapWidth) || e.cellY >= static_cast<int>(mapHeight)) continue;
        size_t idx = (static_cast<size_t>(e.cellY) * mapWidth + static_cast<size_t>(e.cellX)) * 4ull + static_cast<size_t>(e.side & 3);
        size_t idx3 = idx * 3ull;
        if (idx3 + 2 < table.size())
        {
            table[idx3 + 0] = static_cast<uint32_t>(e.xOffsetPixels);
            table[idx3 + 1] = static_cast<uint32_t>(std::max(1, e.pixelWidth));
            table[idx3 + 2] = static_cast<uint32_t>(e.direction < 0 ? 1u : 0u);
        }
    }

    if (needRecreate)
    {
        d2dCtx.edgeOffsetsBuffer.Reset();
        d2dCtx.edgeOffsetsSRV.Reset();

        D3D11_BUFFER_DESC bd = {};
        bd.ByteWidth = static_cast<UINT>(byteSize);
        bd.Usage = D3D11_USAGE_DEFAULT;
        bd.BindFlags = D3D11_BIND_SHADER_RESOURCE;

        D3D11_SUBRESOURCE_DATA init = {};
        init.pSysMem = table.data();
        HRESULT hr = d2dCtx.d3dDevice->CreateBuffer(&bd, &init, d2dCtx.edgeOffsetsBuffer.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create edgeOffsets buffer");

        D3D11_SHADER_RESOURCE_VIEW_DESC srv = {};
        srv.Format = DXGI_FORMAT_R32_UINT;
        srv.ViewDimension = D3D11_SRV_DIMENSION_BUFFER;
        srv.Buffer.FirstElement = 0;
        srv.Buffer.NumElements = static_cast<UINT>(count * 3ull);
        hr = d2dCtx.d3dDevice->CreateShaderResourceView(d2dCtx.edgeOffsetsBuffer.Get(), &srv, d2dCtx.edgeOffsetsSRV.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create edgeOffsets SRV");
    }
    else
    {
        d2dCtx.d3dContext->UpdateSubresource(d2dCtx.edgeOffsetsBuffer.Get(), 0, nullptr, table.data(), 0, 0);
    }
    d2dCtx.edgeOffsetsByteSize = byteSize;
    d2dCtx.uploadedEdgeVersion = megatex.version;
}

static bool updateRaycastMegatextureBuffer()
{
    const bool hasMegatex = state.raycast.useMegatexture && megatex.loaded &&
                            megatex.tileWidth > 0 && megatex.tileHeight > 0 &&
                            !megatex.tileCache.empty();
    const UINT tileWidth = hasMegatex ? static_cast<UINT>(megatex.tileWidth) : 1u;
    const UINT tileHeight = hasMegatex ? static_cast<UINT>(megatex.tileHeight) : 1u;
    const UINT tileCount = hasMegatex ? static_cast<UINT>(megatex.tileCache.size()) : 1u;
    const uint64_t targetVersion = hasMegatex ? megatex.version : 0u;

    if (tileCount > D3D11_REQ_TEXTURE2D_ARRAY_AXIS_DIMENSION)
        return false;

    const bool needRecreate = !d2dCtx.megatexTexture || !d2dCtx.megatexSRV ||
                              d2dCtx.megatexTileWidth != tileWidth ||
                              d2dCtx.megatexTileHeight != tileHeight ||
                              d2dCtx.megatexTileCount != tileCount;
    const bool unchanged = !needRecreate && d2dCtx.hasMegatexVersion &&
                           d2dCtx.lastMegatexVersion == targetVersion;
    if (unchanged)
        return true;

    std::vector<D3D11_SUBRESOURCE_DATA> initialData(tileCount);
    const uint8_t transparentPixel[4] = {0, 0, 0, 0};
    const size_t expectedTileBytes = static_cast<size_t>(tileWidth) * tileHeight * 4ull;
    for (UINT i = 0; i < tileCount; ++i)
    {
        const uint8_t* pixels = transparentPixel;
        if (hasMegatex)
        {
            const auto& tile = megatex.tileCache[static_cast<size_t>(i)];
            if (tile.size() != expectedTileBytes)
                return false;
            pixels = tile.data();
        }
        initialData[i].pSysMem = pixels;
        initialData[i].SysMemPitch = tileWidth * 4u;
        initialData[i].SysMemSlicePitch = static_cast<UINT>(expectedTileBytes);
    }

    D3D11_TEXTURE2D_DESC desc{};
    desc.Width = tileWidth;
    desc.Height = tileHeight;
    desc.MipLevels = 1;
    desc.ArraySize = tileCount;
    desc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
    desc.SampleDesc.Count = 1;
    desc.Usage = D3D11_USAGE_IMMUTABLE;
    desc.BindFlags = D3D11_BIND_SHADER_RESOURCE;

    Microsoft::WRL::ComPtr<ID3D11Texture2D> texture;
    HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&desc, initialData.data(), texture.GetAddressOf());
    if (FAILED(hr))
        return false;

    D3D11_SHADER_RESOURCE_VIEW_DESC srv{};
    srv.Format = desc.Format;
    srv.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2DARRAY;
    srv.Texture2DArray.MostDetailedMip = 0;
    srv.Texture2DArray.MipLevels = 1;
    srv.Texture2DArray.FirstArraySlice = 0;
    srv.Texture2DArray.ArraySize = tileCount;
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> textureSRV;
    hr = d2dCtx.d3dDevice->CreateShaderResourceView(texture.Get(), &srv, textureSRV.GetAddressOf());
    if (FAILED(hr))
        return false;

    d2dCtx.megatexTexture = std::move(texture);
    d2dCtx.megatexSRV = std::move(textureSRV);
    d2dCtx.megatexTileWidth = tileWidth;
    d2dCtx.megatexTileHeight = tileHeight;
    d2dCtx.megatexTileCount = tileCount;
    d2dCtx.lastMegatexVersion = targetVersion;
    d2dCtx.hasMegatexVersion = true;
    return true;
}

static Microsoft::WRL::ComPtr<IDXGIAdapter1> selectHighPerformanceAdapter()
{
    Microsoft::WRL::ComPtr<IDXGIFactory1> factory;
    if (FAILED(CreateDXGIFactory1(IID_PPV_ARGS(factory.GetAddressOf()))))
        return nullptr;

    Microsoft::WRL::ComPtr<IDXGIFactory6> factory6;
    factory.As(&factory6);
    Microsoft::WRL::ComPtr<IDXGIAdapter1> best;
    uint64_t bestScore = 0;

    for (UINT index = 0;; ++index)
    {
        Microsoft::WRL::ComPtr<IDXGIAdapter1> adapter;
        const HRESULT hr = factory6
            ? factory6->EnumAdapterByGpuPreference(
                index,
                DXGI_GPU_PREFERENCE_HIGH_PERFORMANCE,
                IID_PPV_ARGS(adapter.GetAddressOf()))
            : factory->EnumAdapters1(index, adapter.GetAddressOf());
        if (hr == DXGI_ERROR_NOT_FOUND)
            break;
        if (FAILED(hr) || !adapter)
            continue;

        DXGI_ADAPTER_DESC1 desc{};
        if (FAILED(adapter->GetDesc1(&desc)) || (desc.Flags & DXGI_ADAPTER_FLAG_SOFTWARE))
            continue;

        uint64_t score = static_cast<uint64_t>(desc.DedicatedVideoMemory);
        if (desc.DedicatedVideoMemory > 0)
            score += (uint64_t{1} << 61);
        if (desc.VendorId == 0x10DE)
            score += (uint64_t{1} << 62);
        if (!best || score > bestScore)
        {
            best = adapter;
            bestScore = score;
        }
    }

    if (best)
    {
        DXGI_ADAPTER_DESC1 desc{};
        if (SUCCEEDED(best->GetDesc1(&desc)))
            DBG_LOGF("Selected high-performance D3D11 adapter: %ls", desc.Description);
    }
    return best;
}

void initializeD2D()
{
    HRESULT hr = D2D1CreateFactory(D2D1_FACTORY_TYPE_SINGLE_THREADED, __uuidof(ID2D1Factory1), reinterpret_cast<void **>(d2dCtx.factory1.GetAddressOf()));
    if (FAILED(hr))
        throw std::runtime_error("Failed D2D factory");

    D3D_FEATURE_LEVEL level;
    auto selectedAdapter = selectHighPerformanceAdapter();
    hr = D3D11CreateDevice(
        selectedAdapter.Get(),
        selectedAdapter ? D3D_DRIVER_TYPE_UNKNOWN : D3D_DRIVER_TYPE_HARDWARE,
        nullptr,
        D3D11_CREATE_DEVICE_BGRA_SUPPORT,
        nullptr,
        0,
        D3D11_SDK_VERSION,
        d2dCtx.d3dDevice.GetAddressOf(),
        &level,
        d2dCtx.d3dContext.GetAddressOf());
    if (FAILED(hr) && selectedAdapter)
    {
        DBG_LOG("Preferred D3D11 adapter failed; falling back to the OS hardware adapter");
        d2dCtx.d3dDevice.Reset();
        d2dCtx.d3dContext.Reset();
        hr = D3D11CreateDevice(
            nullptr,
            D3D_DRIVER_TYPE_HARDWARE,
            nullptr,
            D3D11_CREATE_DEVICE_BGRA_SUPPORT,
            nullptr,
            0,
            D3D11_SDK_VERSION,
            d2dCtx.d3dDevice.GetAddressOf(),
            &level,
            d2dCtx.d3dContext.GetAddressOf());
    }
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

    Microsoft::WRL::ComPtr<IDXGIAdapter> deviceAdapter;
    Microsoft::WRL::ComPtr<IDXGIFactory2> dxgiFactory;
    hr = dxgiDevice->GetAdapter(deviceAdapter.GetAddressOf());
    if (SUCCEEDED(hr))
        hr = deviceAdapter->GetParent(IID_PPV_ARGS(dxgiFactory.GetAddressOf()));
    if (FAILED(hr))
        throw std::runtime_error("Failed DXGI factory");

    DXGI_SWAP_CHAIN_DESC1 swapDesc = {};
    swapDesc.BufferCount = 2;
    swapDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    swapDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
    swapDesc.Scaling = DXGI_SCALING_STRETCH;
    swapDesc.SwapEffect = DXGI_SWAP_EFFECT_FLIP_DISCARD;
    swapDesc.AlphaMode = DXGI_ALPHA_MODE_IGNORE;
    swapDesc.Width = state.ui.width;
    swapDesc.Height = state.ui.height;
    swapDesc.SampleDesc.Count = 1;
    swapDesc.Flags = DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT;

    Microsoft::WRL::ComPtr<IDXGISwapChain1> swapchain1;
    hr = dxgiFactory->CreateSwapChainForHwnd(d2dCtx.d3dDevice.Get(), g_hwnd, &swapDesc, nullptr, nullptr, swapchain1.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed swapchain");

    swapchain1.As(&d2dCtx.swapchain);
    if (!d2dCtx.swapchain)
        throw std::runtime_error("Failed to query IDXGISwapChain3");

    d2dCtx.swapchain->SetMaximumFrameLatency(1);
    d2dCtx.frameLatencyWaitableObject = d2dCtx.swapchain->GetFrameLatencyWaitableObject();

    initializeBlitPipeline();
    recreateBackbufferTargets();
    initializeRaycastGPUPipeline();

    // Create brushes used for bitmap text rendering
    hr = d2dCtx.dc->CreateSolidColorBrush(D2D1::ColorF(D2D1::ColorF::White), d2dCtx.whiteBrush.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed white brush");

    hr = d2dCtx.dc->CreateSolidColorBrush(D2D1::ColorF(D2D1::ColorF::Black), d2dCtx.shadowBrush.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed shadow brush");

    // Build menu title image from embedded TTF for software overlay (Vulkan-parity path).
    int w = 0, h = 0, c = 0;
    unsigned char* data = RenderTextImageFromTTFResource(
        IDR_MENU_TITLE_TTF,
        phantom::project_overrides::kMenuTitleText.data(),
        phantom::project_overrides::kMenuTitleFontPixelHeight,
        phantom::project_overrides::kMenuTitleColorR,
        phantom::project_overrides::kMenuTitleColorG,
        phantom::project_overrides::kMenuTitleColorB,
        &w,
        &h,
        &c);
    if (data)
    {
        char buf[256];
        snprintf(buf, sizeof(buf), "[D2D] Built menu title image: %dx%d %d channels\n", w, h, c);
        OutputDebugStringA(buf);

        if (d2dMenuTitleImage)
        {
            FreeImage(d2dMenuTitleImage);
            d2dMenuTitleImage = nullptr;
        }
        d2dMenuTitleImage = data;
        d2dMenuTitleW = w;
        d2dMenuTitleH = h;
        d2dMenuTitleC = c;
    }
    else
    {
        OutputDebugStringA("[D2D] Failed to build menu title image from TTF\n");
    }

    // Mirror Vulkan texture sizing logic
    UINT texW = state.raycast.enabled ? state.ui.width : CONTENT_WIDTH;
    UINT texH = state.raycast.enabled ? state.ui.height : CONTENT_HEIGHT;
    resizeTexture(texW, texH);
}

void resizeTexture(UINT width, UINT height)
{
    d2dCtx.frameBitmap.Reset();
    d2dCtx.frameSurface.Reset();
    d2dCtx.frameTexture.Reset();
    d2dCtx.frameTextureSRV.Reset();

    // Invalidate GPU YCoCg pipeline resources (recreated lazily on next dispatch).
    d2dCtx.ycocgOutputUAV.Reset();
    s_ycocgStagingTex.Reset();
    s_ycocgStagingW = s_ycocgStagingH = 0;

    D3D11_TEXTURE2D_DESC texDesc = {};
    texDesc.Width = width;
    texDesc.Height = height;
    texDesc.MipLevels = 1;
    texDesc.ArraySize = 1;
    texDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    texDesc.SampleDesc.Count = 1;
    texDesc.Usage = D3D11_USAGE_DYNAMIC;
    texDesc.BindFlags = D3D11_BIND_SHADER_RESOURCE;
    texDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;

    HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&texDesc, nullptr, d2dCtx.frameTexture.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D3D texture");

    D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
    srvDesc.Format = texDesc.Format;
    srvDesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2D;
    srvDesc.Texture2D.MipLevels = 1;
    hr = d2dCtx.d3dDevice->CreateShaderResourceView(d2dCtx.frameTexture.Get(), &srvDesc, d2dCtx.frameTextureSRV.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed frameTexture SRV");

    d2dCtx.frameTexture.As(&d2dCtx.frameSurface);

    D2D1_BITMAP_PROPERTIES1 bitProps = D2D1::BitmapProperties1(D2D1_BITMAP_OPTIONS_NONE, D2D1::PixelFormat(DXGI_FORMAT_B8G8R8A8_UNORM, D2D1_ALPHA_MODE_IGNORE));
    hr = d2dCtx.dc->CreateBitmapFromDxgiSurface(d2dCtx.frameSurface.Get(), &bitProps, d2dCtx.frameBitmap.GetAddressOf());
    if (FAILED(hr))
        throw std::runtime_error("Failed D2D bitmap from surface");

    d2dCtx.rowBuffer.resize(width * 4);
    resizeFrameBuffers(d2dCtx.previousFrameData, d2dCtx.forceFullUpdate, width, height);
    d2dCtx.textureWidth = width;
    d2dCtx.textureHeight = height;
}

D3D11_MAPPED_SUBRESOURCE mapTexture()
{
    D3D11_MAPPED_SUBRESOURCE mapped;
    HRESULT hr = d2dCtx.d3dContext->Map(d2dCtx.frameTexture.Get(), 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
    if (FAILED(hr))
        throw std::runtime_error("Failed map texture");
    return mapped;
}

void unmapTexture()
{
    d2dCtx.d3dContext->Unmap(d2dCtx.frameTexture.Get(), 0);
}

void renderFrameD2D()
{
    const PVXFile *vdx = state.transientPVX ? state.transientPVX : state.currentPVX;
    size_t frameIdx = state.transientPVX ? state.transient_frame_index : state.currentFrameIndex;
    if (!vdx) return;

    if (frameIdx >= vdx->frameData.size()) {
        DBG_LOGF("renderFrameD2D: frame %zu out of range for '%s' (%zu frames)",
                 frameIdx, vdx->filename.c_str(), vdx->frameData.size());
        return;
    }

    std::span<const uint8_t> pixels = vdx->frameData[frameIdx];
    const size_t expectedBytes = static_cast<size_t>(d2dCtx.textureWidth) * static_cast<size_t>(d2dCtx.textureHeight) * 3ull;
    if (pixels.size() < expectedBytes) {
        DBG_LOGF("renderFrameD2D: frame buffer too small for '%s' frame=%zu bytes=%zu expected=%zu texture=%ux%u source=%dx%d",
                 vdx->filename.c_str(), frameIdx, pixels.size(), expectedBytes,
                 d2dCtx.textureWidth, d2dCtx.textureHeight, vdx->width, vdx->height);
        return;
    }

    if (d2dCtx.frameLatencyWaitableObject)
        WaitForSingleObjectEx(d2dCtx.frameLatencyWaitableObject, 100, TRUE);

    auto mapped = mapTexture();
    uint8_t *dst = static_cast<uint8_t *>(mapped.pData);
    const size_t pitch = mapped.RowPitch;

    for (uint32_t y = 0; y < d2dCtx.textureHeight; ++y) {
        convertRGBRowToBGRA(
            pixels.data() + static_cast<size_t>(y) * static_cast<size_t>(d2dCtx.textureWidth) * 3ull,
            d2dCtx.rowBuffer.data(), d2dCtx.textureWidth);
        std::memcpy(dst + static_cast<size_t>(y) * pitch, d2dCtx.rowBuffer.data(),
                    static_cast<size_t>(d2dCtx.textureWidth) * 4ull);
    }
    drawMeasuredFpsOverlay(dst, pitch,
                           static_cast<int>(d2dCtx.textureWidth),
                           static_cast<int>(d2dCtx.textureHeight));
    unmapTexture();

    const UINT backbufferIndex = d2dCtx.swapchain->GetCurrentBackBufferIndex();
    if (!d2dCtx.backbufferBitmaps[backbufferIndex])
        recreateBackbufferTargets();
    d2dCtx.dc->SetTarget(d2dCtx.backbufferBitmaps[backbufferIndex].Get());
    d2dCtx.dc->BeginDraw();
    d2dCtx.dc->Clear(D2D1::ColorF(D2D1::ColorF::Black));

    float destX = 0.0f, destY = 0.0f, destW = static_cast<float>(state.ui.width), destH = static_cast<float>(state.ui.height);
    computeAspectFitRect(
        static_cast<float>(state.ui.width), static_cast<float>(state.ui.height),
        static_cast<float>(d2dCtx.textureWidth  ? d2dCtx.textureWidth  : CONTENT_WIDTH),
        static_cast<float>(d2dCtx.textureHeight ? d2dCtx.textureHeight : CONTENT_HEIGHT),
        destX, destY, destW, destH);
    const D2D1_RECT_F dest = {destX, destY, destX + destW, destY + destH};
    const D2D1_RECT_F src  = {0.0f, 0.0f, static_cast<float>(d2dCtx.textureWidth), static_cast<float>(d2dCtx.textureHeight)};

    d2dCtx.dc->DrawBitmap(d2dCtx.frameBitmap.Get(), &dest, 1.0f, D2D1_INTERPOLATION_MODE_NEAREST_NEIGHBOR, &src);
    if (FAILED(d2dCtx.dc->EndDraw()))
        throw std::runtime_error("Failed draw");
    d2dCtx.swapchain->Present(1, 0);
}

static void renderFrameRaycastCPU()
{
    const auto &tileMap = *state.raycast.map;
    const RaycastPlayer &ply = state.raycast.player;

    if (d2dCtx.frameLatencyWaitableObject)
        WaitForSingleObjectEx(d2dCtx.frameLatencyWaitableObject, 100, TRUE);

    auto mapped = mapTexture();
    uint8_t *dst = static_cast<uint8_t *>(mapped.pData);
    size_t pitch = mapped.RowPitch;

    // Clear framebuffer to black before rendering
    memset(dst, 0, pitch * state.ui.height);

    renderRaycastView(tileMap, ply, dst, pitch, state.ui.width, state.ui.height);

    unmapTexture();

    DXGI_SWAP_CHAIN_DESC1 scDesc{};
    if (SUCCEEDED(d2dCtx.swapchain->GetDesc1(&scDesc)) && scDesc.Width && scDesc.Height)
    {
        const float viewportW = static_cast<float>(scDesc.Width);
        const float viewportH = static_cast<float>(scDesc.Height);
        blitToBackbuffer(d2dCtx.frameTextureSRV.Get(),
                         0.0f, 0.0f,
                         viewportW, viewportH,
                         static_cast<float>(state.ui.width),
                         static_cast<float>(state.ui.height),
                         false);
    }
    d2dCtx.swapchain->Present(1, 0);
}

void renderFrameRaycastGPU()
{
    if (d2dCtx.frameLatencyWaitableObject)
        WaitForSingleObjectEx(d2dCtx.frameLatencyWaitableObject, 100, TRUE);

    bool useGPU = (state.renderMode == GameState::RenderMode::GPU ||
                   state.renderMode == GameState::RenderMode::Auto);

    const auto& tileMap = *state.raycast.map;
    if (!useGPU || !d2dCtx.raycastComputeShader || raycastHasActiveModels() ||
        raycastMapHasArchitecturalFeatures(tileMap))
    {
        renderFrameRaycastCPU();
        return;
    }

    const RaycastPlayer& ply = state.raycast.player;

    ensureRaycastOutputTexture(state.ui.width, state.ui.height);
    prepareRaycastFrameConfig();
    updateFogOfWar();
    updateRaycastTileMap(tileMap);
    updateRaycastEdgeOffsets(tileMap);
    if (!updateRaycastMegatextureBuffer())
    {
        renderFrameRaycastCPU();
        return;
    }

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
        float wallHeightUnits;
        uint32_t useMegatexture;
        float mapOverlayZoom;
        uint32_t ceilingColorPacked;
        uint32_t floorColorPacked;
        uint32_t wallColorPacked;
        uint32_t wallLineColorPacked;
        uint32_t renderFlags;
        uint32_t reserved0;
        uint32_t reserved1;
        uint32_t reserved2;
    };
    static_assert(sizeof(RaycastConstants) == 96, "RaycastConstants must match shader constant buffer size");

    RaycastConstants constants = {};
    constants.playerX = ply.x;
    constants.playerY = ply.y;
    constants.playerAngle = ply.angle;
    constants.playerFOV = ply.fov;
    constants.reserved0 = static_cast<uint32_t>(std::clamp(
        static_cast<int>(std::lround(state.frameTiming.measuredFPS)), 0, 999));
    constants.screenWidth = state.ui.width;
    constants.screenHeight = state.ui.height;
    constants.mapWidth = static_cast<uint32_t>(tileMap[0].size());
    constants.mapHeight = static_cast<uint32_t>(tileMap.size());
    constants.visualScale = getRaycastEnvironmentFloat("visualScale",
        getRaycastEnvironmentFloat("scale", 3.0f));
    if (config.contains("raycastScale") && config["raycastScale"].is_number())
        constants.visualScale = config["raycastScale"].get<float>();
    const float baseTorchRange = getRaycastEnvironmentFloat("torchRange", 20.0f);
    constants.torchRange = baseTorchRange * constants.visualScale;
    constants.falloffMul = getRaycastEnvironmentFloat("falloffMul", 0.85f);
    if (config.contains("raycastFalloffMul") && config["raycastFalloffMul"].is_number())
        constants.falloffMul = config["raycastFalloffMul"].get<float>();
    constants.fovMul = getRaycastEnvironmentFloat("fovMul", 1.0f);
    if (config.contains("raycastFovMul") && config["raycastFovMul"].is_number())
        constants.fovMul = config["raycastFovMul"].get<float>();
    uint32_t supersample = 1;
    if (config.contains("raycastSupersample")) {
        supersample = static_cast<uint32_t>(std::clamp(config["raycastSupersample"].get<int>(), 1, 16));
    } else if (config.contains("raycastMultisample")) {
        supersample = static_cast<uint32_t>(std::clamp(config["raycastMultisample"].get<int>(), 1, 16));
    }
    const uint64_t pixelCount = static_cast<uint64_t>(std::max(0, state.ui.width)) *
                                static_cast<uint64_t>(std::max(0, state.ui.height));
    if (pixelCount >= kPixelCount1080p)
        supersample = std::min(supersample, 1u);
    else if (pixelCount >= kPixelCount720p)
        supersample = std::min(supersample, 2u);
    constants.supersample = supersample;
    constants.wallHeightUnits = std::clamp(getRaycastEnvironmentFloat("wallHeightUnits", 1.0f), 0.1f, 16.0f);
    constants.useMegatexture = state.raycast.useMegatexture ? 1u : 0u;
    constants.mapOverlayZoom = state.raycast.showMapOverlay ? state.raycast.mapOverlayZoom : 0.0f;
    constants.ceilingColorPacked = getRaycastEnvironmentColorPacked("ceilingColor", std::array<uint8_t, 3>{120, 120, 120});
    constants.floorColorPacked = getRaycastEnvironmentColorPacked("floorColor", std::array<uint8_t, 3>{90, 70, 50});
    constants.wallColorPacked = getRaycastEnvironmentColorPacked("wallColor", std::array<uint8_t, 3>{120, 120, 120});
    constants.wallLineColorPacked = getRaycastEnvironmentColorPacked("wallLineColor", std::array<uint8_t, 3>{77, 77, 77});
    constants.renderFlags = 0u;
    if (getRaycastEnvironmentBool("flatCeiling", false))
        constants.renderFlags |= 0x1u;
    if (getRaycastEnvironmentBool("flatFloor", false))
        constants.renderFlags |= 0x2u;
    if (raycastMapHasSolidBlackWalls(tileMap))
    {
        constants.ceilingColorPacked = 0u;
        constants.wallColorPacked = 0u;
        constants.wallLineColorPacked = 0u;
        constants.renderFlags |= 0x1u;
    }
    if (getRaycastEnvironmentBool("blackBoundaryWalls", false))
        constants.renderFlags |= 0x8u;

    D3D11_MAPPED_SUBRESOURCE mapped;
    HRESULT hr = d2dCtx.d3dContext->Map(d2dCtx.raycastConstantBuffer.Get(), 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
    if (SUCCEEDED(hr))
    {
        memcpy(mapped.pData, &constants, sizeof(constants));
        d2dCtx.d3dContext->Unmap(d2dCtx.raycastConstantBuffer.Get(), 0);
    }

    d2dCtx.d3dContext->CSSetShader(d2dCtx.raycastComputeShader.Get(), nullptr, 0);
    ID3D11ShaderResourceView* srvs[10] = { nullptr };
    srvs[0] = d2dCtx.tileMapSRV.Get();
    srvs[1] = d2dCtx.edgeOffsetsSRV.Get();
    srvs[2] = d2dCtx.megatexSRV.Get();
    d2dCtx.d3dContext->CSSetShaderResources(0, 10, srvs);
    d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, d2dCtx.raycastOutputUAV.GetAddressOf(), nullptr);
    d2dCtx.d3dContext->CSSetConstantBuffers(0, 1, d2dCtx.raycastConstantBuffer.GetAddressOf());

    UINT dispatchX = (state.ui.width + 7) / 8;
    UINT dispatchY = (state.ui.height + 7) / 8;
    d2dCtx.d3dContext->Dispatch(dispatchX, dispatchY, 1);

    ID3D11UnorderedAccessView* nullUAV = nullptr;
    d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, &nullUAV, nullptr);
    ID3D11ShaderResourceView* nullSRVs[10] = { nullptr };
    d2dCtx.d3dContext->CSSetShaderResources(0, 10, nullSRVs);

    DXGI_SWAP_CHAIN_DESC1 scDesc{};
    if (SUCCEEDED(d2dCtx.swapchain->GetDesc1(&scDesc)) && scDesc.Width && scDesc.Height)
    {
        const float viewportW = static_cast<float>(scDesc.Width);
        const float viewportH = static_cast<float>(scDesc.Height);
        blitToBackbuffer(d2dCtx.raycastOutputSRV.Get(),
                         0.0f, 0.0f,
                         viewportW, viewportH,
                         static_cast<float>(state.ui.width),
                         static_cast<float>(state.ui.height),
                         false);
    }

    d2dCtx.swapchain->Present(1, 0);
}

void renderFrameRaycast()
{
    // Centralized selector to keep window.cpp unchanged.
    bool preferGPU = (state.renderMode == GameState::RenderMode::GPU ||
                      state.renderMode == GameState::RenderMode::Auto);
    if (preferGPU && d2dCtx.raycastComputeShader && !raycastHasActiveModels() &&
        state.raycast.map && !raycastMapHasArchitecturalFeatures(*state.raycast.map))
    {
        renderFrameRaycastGPU();
        return;
    }
    renderFrameRaycastCPU();
}

void renderFrameMenu()
{
    if (!state.menu.currentFrame || state.menu.currentFrame->empty())
        return;

    if (d2dCtx.frameLatencyWaitableObject)
        WaitForSingleObjectEx(d2dCtx.frameLatencyWaitableObject, 100, TRUE);

    std::span<const uint8_t> pixels(*state.menu.currentFrame);
    const uint32_t texW = d2dCtx.textureWidth;
    const uint32_t texH = d2dCtx.textureHeight;
    const size_t stagePitch = static_cast<size_t>(texW) * 4;

    static std::vector<uint8_t> stagingBuffer;
    if (stagingBuffer.size() < stagePitch * texH)
        stagingBuffer.resize(stagePitch * texH);
    uint8_t *stage = stagingBuffer.data();

    convertRGBRowToBGRA(pixels.data(), stage, static_cast<size_t>(texW) * texH);

    namespace po = phantom::project_overrides;
    const int menuY = static_cast<int>(texH * po::kMenuYRatio);

    if (d2dMenuTitleImage && d2dMenuTitleH > 0 && d2dMenuTitleW > 0)
    {
        const int paddingTop = static_cast<int>(texH * po::kMenuTitlePaddingTopRatio);
        const int gapPad = po::kMenuTitleGapPadPx;
        int availH = menuY - paddingTop - gapPad;
        if (availH < 0) availH = 0;

        int targetH = std::clamp(availH, po::kMenuTitleMinHeightPx, po::kMenuTitleMaxHeightPx);
        int targetW = (d2dMenuTitleW * targetH) / d2dMenuTitleH;
        const int maxW = static_cast<int>(texW * po::kMenuTitleMaxWidthRatio);
        if (targetW > maxW) {
            targetW = maxW;
            targetH = (d2dMenuTitleH * targetW) / d2dMenuTitleW;
        }

        const int startX = static_cast<int>(texW * po::kMenuTitleXRatio) - targetW / 2;
        const int startY = paddingTop;

        const int yStart = (std::max)(0, -startY);
        const int yEnd   = (std::min)(targetH, static_cast<int>(texH) - startY);
        const int xStart = (std::max)(0, -startX);
        const int xEnd   = (std::min)(targetW, static_cast<int>(texW) - startX);

        for (int y = yStart; y < yEnd; ++y) {
            const int dstY = startY + y;
            const int srcY = (y * d2dMenuTitleH) / targetH;
            uint8_t* dstRow = stage + static_cast<size_t>(dstY) * stagePitch;
            const uint8_t* srcRow = d2dMenuTitleImage + static_cast<size_t>(srcY) * d2dMenuTitleW * 4;

            for (int x = xStart; x < xEnd; ++x) {
                const int srcX = (x * d2dMenuTitleW) / targetW;
                const uint8_t* sp = srcRow + srcX * 4;
                const unsigned a = sp[3];
                if (a == 0) continue;

                uint8_t* dp = dstRow + static_cast<size_t>(startX + x) * 4;
                if (a == 255) {
                    dp[0] = sp[2]; dp[1] = sp[1]; dp[2] = sp[0]; dp[3] = 255;
                } else {
                    const unsigned ia = 255 - a;
                    dp[0] = static_cast<uint8_t>((sp[2]*a + dp[0]*ia + 128) >> 8);
                    dp[1] = static_cast<uint8_t>((sp[1]*a + dp[1]*ia + 128) >> 8);
                    dp[2] = static_cast<uint8_t>((sp[0]*a + dp[2]*ia + 128) >> 8);
                    dp[3] = 255;
                }
            }
        }
    }

    auto renderSimpleTextBGRA = [](uint8_t* framebuffer,
                                   size_t outPitch,
                                   int width,
                                   int height,
                                   const char* text,
                                   int centerX,
                                   int y,
                                   uint32_t color,
                                   int scale,
                                   uint32_t shadowColor)
    {
        if (!framebuffer || !text || scale <= 0)
            return;

        int len = static_cast<int>(std::strlen(text));
        int glyphW = 8 * scale;
        int glyphH = 8 * scale;
        int charSpacing = glyphW + scale * 2;
        int totalWidth = len * charSpacing - scale;
        int startX = centerX - totalWidth / 2;
        int shadowOffset = (scale * 1) / 2;
        if (shadowOffset < 1) shadowOffset = 1;

        auto drawChar = [&](int charX, int charY, uint32_t drawColor)
        {
            for (int i = 0; i < len; ++i)
            {
                char c = text[i];
                int charIndex = 0;
                if (c == ' ') charIndex = 0;
                else if (c >= 'A' && c <= 'Z') charIndex = c - 'A' + 1;
                else if (c >= '0' && c <= '9') charIndex = c - '0' + 27;
                else continue;

                const uint8_t* glyph = g_font8x8[charIndex];
                for (int row = 0; row < 8; ++row)
                {
                    uint8_t rowData = glyph[row];
                    if (!rowData) continue;  // Skip fully empty glyph rows

                    for (int col = 0; col < 8; ++col)
                    {
                        if (!(rowData & (1 << col)))
                            continue;

                        // Pre-clamp the scale×scale block against frame bounds.
                        int bx = charX + i * charSpacing + col * scale;
                        int by = charY + row * scale - glyphH / 2;
                        int x0 = (std::max)(bx, 0);
                        int y0 = (std::max)(by, 0);
                        int x1 = (std::min)(bx + scale, width);
                        int y1 = (std::min)(by + scale, height);

                        for (int py = y0; py < y1; py++)
                        {
                            uint32_t* row32 = reinterpret_cast<uint32_t*>(framebuffer + static_cast<size_t>(py) * outPitch);
                            for (int px = x0; px < x1; px++)
                                row32[px] = drawColor;
                        }
                    }
                }
            }
        };

        drawChar(startX + shadowOffset,     y + shadowOffset,     shadowColor);
        drawChar(startX + shadowOffset + 2, y + shadowOffset,     shadowColor);
        drawChar(startX + shadowOffset,     y + shadowOffset + 2, shadowColor);
        drawChar(startX + shadowOffset + 2, y + shadowOffset + 2, shadowColor);
        drawChar(startX, y, color);
    };

    if (!d2dMenuTitleImage || d2dMenuTitleH <= 0 || d2dMenuTitleW <= 0)
    {
        const int titleMaxW = static_cast<int>(texW * po::kMenuTitleMaxWidthRatio);
        const int titleLen = static_cast<int>(po::kMenuTitleText.size());
        const int titleScale = (std::max)(1, (std::min)(32, titleMaxW / (std::max)(1, titleLen * 10)));
        const int titleY = static_cast<int>(texH * po::kMenuTitlePaddingTopRatio) + titleScale * 5;
        renderSimpleTextBGRA(stage,
                             stagePitch,
                             static_cast<int>(texW),
                             static_cast<int>(texH),
                             po::kMenuTitleText.data(),
                             static_cast<int>(texW * po::kMenuTitleXRatio),
                             titleY,
                             0xFFFF0000u,
                             titleScale,
                             po::kMenuShadowColor);
    }

    const int menuCount = po::kMenuItemCount;
    const int itemH = po::kMenuItemHeightPx;
    const int cx = static_cast<int>(texW * po::kMenuXRatio);

    using namespace std::chrono;
    const int fms = (std::max)(25, po::kMenuHighlightFlickerMs);
    const bool fphase = (duration_cast<milliseconds>(steady_clock::now().time_since_epoch()).count() / fms) % 2 == 0;
    const uint32_t hlCol = fphase ? po::kMenuHighlightColorA : po::kMenuHighlightColorB;

    for (int i = 0; i < menuCount; ++i) {
        const int ty = menuY + i * itemH;
        const bool sel = (state.menu.selectedItem == i);
        const int tscale = sel ? po::kMenuSelectedScale : po::kMenuNormalScale;
        const uint32_t col = sel ? hlCol : po::kMenuTextColor;
        renderSimpleTextBGRA(stage, stagePitch, static_cast<int>(texW), static_cast<int>(texH),
                             po::kMenuItems[static_cast<size_t>(i)].data(), cx, ty, col, tscale, po::kMenuShadowColor);
    }
    drawMeasuredFpsOverlay(stage, stagePitch, static_cast<int>(texW), static_cast<int>(texH));

    // Bulk-copy the fully composited staging buffer into the mapped GPU
    // texture.  Single sequential write pass — ideal for WC memory.
    auto mapped = mapTexture();
    {
        uint8_t *dst = static_cast<uint8_t *>(mapped.pData);
        const size_t pitch = mapped.RowPitch;
        if (pitch == stagePitch)
        {
            std::memcpy(dst, stage, stagePitch * texH);
        }
        else
        {
            for (uint32_t y = 0; y < texH; ++y)
                std::memcpy(dst + y * pitch, stage + y * stagePitch, stagePitch);
        }
    }
    unmapTexture();

    const UINT backbufferIndex = d2dCtx.swapchain->GetCurrentBackBufferIndex();
    if (!d2dCtx.backbufferBitmaps[backbufferIndex])
        recreateBackbufferTargets();
    d2dCtx.dc->SetTarget(d2dCtx.backbufferBitmaps[backbufferIndex].Get());
    d2dCtx.dc->BeginDraw();
    d2dCtx.dc->Clear(D2D1::ColorF(D2D1::ColorF::Black));

    float destX = 0.0f;
    float destY = 0.0f;
    float destW = static_cast<float>(state.ui.width);
    float destH = static_cast<float>(state.ui.height);
    computeAspectFitRect(
        static_cast<float>(state.ui.width),
        static_cast<float>(state.ui.height),
        static_cast<float>(d2dCtx.textureWidth ? d2dCtx.textureWidth : CONTENT_WIDTH),
        static_cast<float>(d2dCtx.textureHeight ? d2dCtx.textureHeight : CONTENT_HEIGHT),
        destX, destY, destW, destH);
    D2D1_RECT_F dest = {destX, destY, destX + destW, destY + destH};
    D2D1_RECT_F src = {0.0f, 0.0f, static_cast<float>(d2dCtx.textureWidth), static_cast<float>(d2dCtx.textureHeight)};
    d2dCtx.dc->DrawBitmap(d2dCtx.frameBitmap.Get(), &dest, 1.0f, D2D1_INTERPOLATION_MODE_NEAREST_NEIGHBOR, &src);

    HRESULT hr = d2dCtx.dc->EndDraw();
    if (FAILED(hr))
        throw std::runtime_error("Failed draw menu");

    d2dCtx.swapchain->Present(1, 0);
}

// ============================================================================
// GPU YCoCg-R → BGRA Compute Pipeline
// ============================================================================

static bool ensureYCoCgGPUPipeline()
{
    if (d2dCtx.ycocgComputeShader)
        return true;

    try
    {
        auto shaderBlob = compileShaderFromSource(g_d3d11_ycocg_to_bgra_hlsl, "main", "cs_5_0");

        HRESULT hr = d2dCtx.d3dDevice->CreateComputeShader(
            shaderBlob->GetBufferPointer(),
            shaderBlob->GetBufferSize(),
            nullptr,
            d2dCtx.ycocgComputeShader.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create YCoCg compute shader");

        // Constant buffer (16 bytes: width, height, pixelCount, pad)
        D3D11_BUFFER_DESC cbDesc = {};
        cbDesc.ByteWidth = 16;  // 4 × uint32
        cbDesc.Usage = D3D11_USAGE_DYNAMIC;
        cbDesc.BindFlags = D3D11_BIND_CONSTANT_BUFFER;
        cbDesc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;
        hr = d2dCtx.d3dDevice->CreateBuffer(&cbDesc, nullptr, d2dCtx.ycocgConstantBuffer.GetAddressOf());
        if (FAILED(hr))
            throw std::runtime_error("Failed to create YCoCg constant buffer");

        OutputDebugStringA("[D2D] YCoCg GPU compute pipeline initialized\n");
        return true;
    }
    catch (const std::exception& e)
    {
        OutputDebugStringA("[D2D] YCoCg GPU pipeline init failed: ");
        OutputDebugStringA(e.what());
        OutputDebugStringA("\n");
        d2dCtx.ycocgComputeShader.Reset();
        d2dCtx.ycocgConstantBuffer.Reset();
        return false;
    }
}

// Ensure the planar upload buffer is large enough for the given data.
static bool ensureYCoCgPlanarBuffer(size_t requiredBytes)
{
    if (d2dCtx.ycocgPlanarBuffer && d2dCtx.ycocgPlanarBufferSize >= requiredBytes)
        return true;

    d2dCtx.ycocgPlanarSRV.Reset();
    d2dCtx.ycocgPlanarBuffer.Reset();

    // Round up to 16-byte alignment for ByteAddressBuffer
    size_t alignedSize = (requiredBytes + 15u) & ~15u;

    D3D11_BUFFER_DESC desc = {};
    desc.ByteWidth = static_cast<UINT>(alignedSize);
    desc.Usage = D3D11_USAGE_DYNAMIC;
    desc.BindFlags = D3D11_BIND_SHADER_RESOURCE;
    desc.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;
    desc.MiscFlags = D3D11_RESOURCE_MISC_BUFFER_ALLOW_RAW_VIEWS;

    HRESULT hr = d2dCtx.d3dDevice->CreateBuffer(&desc, nullptr, d2dCtx.ycocgPlanarBuffer.GetAddressOf());
    if (FAILED(hr)) return false;

    D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
    srvDesc.Format = DXGI_FORMAT_R32_TYPELESS;
    srvDesc.ViewDimension = D3D11_SRV_DIMENSION_BUFFEREX;
    srvDesc.BufferEx.FirstElement = 0;
    srvDesc.BufferEx.NumElements = static_cast<UINT>(alignedSize / 4);
    srvDesc.BufferEx.Flags = D3D11_BUFFEREX_SRV_FLAG_RAW;

    hr = d2dCtx.d3dDevice->CreateShaderResourceView(d2dCtx.ycocgPlanarBuffer.Get(), &srvDesc, d2dCtx.ycocgPlanarSRV.GetAddressOf());
    if (FAILED(hr)) return false;

    d2dCtx.ycocgPlanarBufferSize = alignedSize;
    return true;
}

// Ensure we have a UAV on a compute-compatible staging texture.
// This is a DEFAULT-usage texture with UAV|SRV bind flags.
// After the compute dispatch, we blit the result to the backbuffer.

static bool ensureYCoCgOutputUAV()
{
    if (d2dCtx.ycocgOutputUAV && s_ycocgStagingW == d2dCtx.textureWidth && s_ycocgStagingH == d2dCtx.textureHeight)
        return true;

    d2dCtx.ycocgOutputUAV.Reset();
    s_ycocgStagingTex.Reset();

    D3D11_TEXTURE2D_DESC desc = {};
    desc.Width = d2dCtx.textureWidth;
    desc.Height = d2dCtx.textureHeight;
    desc.MipLevels = 1;
    desc.ArraySize = 1;
    desc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    desc.SampleDesc.Count = 1;
    desc.Usage = D3D11_USAGE_DEFAULT;
    desc.BindFlags = D3D11_BIND_UNORDERED_ACCESS | D3D11_BIND_SHADER_RESOURCE;

    HRESULT hr = d2dCtx.d3dDevice->CreateTexture2D(&desc, nullptr, s_ycocgStagingTex.GetAddressOf());
    if (FAILED(hr)) return false;

    D3D11_UNORDERED_ACCESS_VIEW_DESC uavDesc = {};
    uavDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    uavDesc.ViewDimension = D3D11_UAV_DIMENSION_TEXTURE2D;
    uavDesc.Texture2D.MipSlice = 0;

    hr = d2dCtx.d3dDevice->CreateUnorderedAccessView(s_ycocgStagingTex.Get(), &uavDesc, d2dCtx.ycocgOutputUAV.GetAddressOf());
    if (FAILED(hr)) return false;

    s_ycocgStagingW = d2dCtx.textureWidth;
    s_ycocgStagingH = d2dCtx.textureHeight;
    return true;
}

/*
===============================================================================
Function: renderFrameMenuGPU

Description:
    GPU-accelerated menu rendering path.  Receives raw planar YCoCg-R data
    (post-row-filter, pre-color-transform) and dispatches a compute shader
    to perform the entire YCoCg→RGB→BGRA conversion on the GPU, writing
    directly to the render texture.

    Falls back to the CPU path (renderFrameMenu) if GPU resources fail.
===============================================================================
*/
void renderFrameMenuGPU(const uint8_t* planarYCoCg, size_t dataSize, uint32_t width, uint32_t height)
{
    // Lazy-initialize the compute pipeline.
    if (!ensureYCoCgGPUPipeline())
    {
        // Fall back to the CPU path — caller should handle this via renderFrameMenu().
        return;
    }

    const size_t pixelCount = static_cast<size_t>(width) * height;
    const size_t expectedSize = pixelCount * 3;
    if (dataSize < expectedSize)
        return;

    // Ensure GPU buffers are sized.
    if (!ensureYCoCgPlanarBuffer(expectedSize))
        return;
    if (!ensureYCoCgOutputUAV())
        return;

    if (d2dCtx.frameLatencyWaitableObject)
        WaitForSingleObjectEx(d2dCtx.frameLatencyWaitableObject, 100, TRUE);

    // Upload planar data to GPU.
    {
        D3D11_MAPPED_SUBRESOURCE mapped;
        HRESULT hr = d2dCtx.d3dContext->Map(d2dCtx.ycocgPlanarBuffer.Get(), 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
        if (FAILED(hr)) return;
        std::memcpy(mapped.pData, planarYCoCg, expectedSize);
        d2dCtx.d3dContext->Unmap(d2dCtx.ycocgPlanarBuffer.Get(), 0);
    }

    // Update constant buffer.
    {
        D3D11_MAPPED_SUBRESOURCE mapped;
        HRESULT hr = d2dCtx.d3dContext->Map(d2dCtx.ycocgConstantBuffer.Get(), 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
        if (FAILED(hr)) return;
        uint32_t* cb = static_cast<uint32_t*>(mapped.pData);
        cb[0] = width;
        cb[1] = height;
        cb[2] = static_cast<uint32_t>(pixelCount);
        cb[3] = 0;
        d2dCtx.d3dContext->Unmap(d2dCtx.ycocgConstantBuffer.Get(), 0);
    }

    // Dispatch compute shader.
    d2dCtx.d3dContext->CSSetShader(d2dCtx.ycocgComputeShader.Get(), nullptr, 0);
    ID3D11Buffer* cbs[] = { d2dCtx.ycocgConstantBuffer.Get() };
    d2dCtx.d3dContext->CSSetConstantBuffers(0, 1, cbs);
    ID3D11ShaderResourceView* srvs[] = { d2dCtx.ycocgPlanarSRV.Get() };
    d2dCtx.d3dContext->CSSetShaderResources(0, 1, srvs);
    ID3D11UnorderedAccessView* uavs[] = { d2dCtx.ycocgOutputUAV.Get() };
    d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, uavs, nullptr);

    // Dispatch: one thread per pixel, 256 threads per group.
    UINT groups = (static_cast<UINT>(pixelCount) + 255u) / 256u;
    d2dCtx.d3dContext->Dispatch(groups, 1, 1);

    // Unbind.
    ID3D11UnorderedAccessView* nullUAV[] = { nullptr };
    d2dCtx.d3dContext->CSSetUnorderedAccessViews(0, 1, nullUAV, nullptr);
    ID3D11ShaderResourceView* nullSRV[] = { nullptr };
    d2dCtx.d3dContext->CSSetShaderResources(0, 1, nullSRV);
    d2dCtx.d3dContext->CSSetShader(nullptr, nullptr, 0);

    // Copy compute output to the frame texture.
    // The staging texture is DEFAULT usage; the frame texture is DYNAMIC.
    // D3D11 CopyResource requires matching usage characteristics, so we
    // copy from the DEFAULT staging tex to the DEFAULT-compatible frame tex
    // via the blit pipeline (SRV → fullscreen quad → backbuffer RTV).
    // This is a GPU-only operation, no CPU stall.

    // Create a temporary SRV on the compute output texture for blitting.
    Microsoft::WRL::ComPtr<ID3D11ShaderResourceView> computeSRV;
    {
        D3D11_SHADER_RESOURCE_VIEW_DESC srvDesc = {};
        srvDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
        srvDesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2D;
        srvDesc.Texture2D.MipLevels = 1;
        d2dCtx.d3dDevice->CreateShaderResourceView(s_ycocgStagingTex.Get(), &srvDesc, computeSRV.GetAddressOf());
    }

    // Use the existing blit pipeline to draw the compute result to the backbuffer.
    const UINT backbufferIndex = d2dCtx.swapchain->GetCurrentBackBufferIndex();
    if (!d2dCtx.backbufferBitmaps[backbufferIndex])
        recreateBackbufferTargets();

    // Set render target to the backbuffer.
    ID3D11RenderTargetView* rtvs[] = { d2dCtx.backbufferRTVs[backbufferIndex].Get() };
    d2dCtx.d3dContext->OMSetRenderTargets(1, rtvs, nullptr);

    D3D11_VIEWPORT vp = {};
    vp.Width  = static_cast<float>(state.ui.width);
    vp.Height = static_cast<float>(state.ui.height);
    vp.MaxDepth = 1.0f;
    d2dCtx.d3dContext->RSSetViewports(1, &vp);

    // Clear to black.
    float black[4] = { 0.f, 0.f, 0.f, 1.f };
    d2dCtx.d3dContext->ClearRenderTargetView(d2dCtx.backbufferRTVs[backbufferIndex].Get(), black);

    // Blit the compute output.
    d2dCtx.d3dContext->VSSetShader(d2dCtx.blitVertexShader.Get(), nullptr, 0);
    d2dCtx.d3dContext->PSSetShader(d2dCtx.blitPixelShader.Get(), nullptr, 0);
    d2dCtx.d3dContext->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST);
    d2dCtx.d3dContext->IASetInputLayout(nullptr);

    // Update blit constants to preserve the source aspect ratio.
    {
        D3D11_MAPPED_SUBRESOURCE bcMapped;
        if (SUCCEEDED(d2dCtx.d3dContext->Map(d2dCtx.blitConstantBuffer.Get(), 0, D3D11_MAP_WRITE_DISCARD, 0, &bcMapped)))
        {
            float destX = 0.0f;
            float destY = 0.0f;
            float destW = static_cast<float>(state.ui.width);
            float destH = static_cast<float>(state.ui.height);
            computeAspectFitRect(
                static_cast<float>(state.ui.width),
                static_cast<float>(state.ui.height),
                static_cast<float>(width),
                static_cast<float>(height),
                destX, destY, destW, destH);
            float* bc = static_cast<float*>(bcMapped.pData);
            bc[0] = destX / static_cast<float>(state.ui.width);
            bc[1] = destY / static_cast<float>(state.ui.height);
            bc[2] = destW / static_cast<float>(state.ui.width);
            bc[3] = destH / static_cast<float>(state.ui.height);
            bc[4] = static_cast<float>(width);  bc[5] = static_cast<float>(height);  // srcSize
            bc[6] = static_cast<float>(state.ui.width);  bc[7] = static_cast<float>(state.ui.height);  // viewportSize
            d2dCtx.d3dContext->Unmap(d2dCtx.blitConstantBuffer.Get(), 0);
        }
    }

    ID3D11Buffer* blitCBs[] = { d2dCtx.blitConstantBuffer.Get() };
    d2dCtx.d3dContext->VSSetConstantBuffers(0, 1, blitCBs);
    ID3D11ShaderResourceView* blitSRVs[] = { computeSRV.Get() };
    d2dCtx.d3dContext->PSSetShaderResources(0, 1, blitSRVs);
    ID3D11SamplerState* samplers[] = { d2dCtx.pointSampler.Get() };
    d2dCtx.d3dContext->PSSetSamplers(0, 1, samplers);

    d2dCtx.d3dContext->Draw(6, 0);

    // Cleanup bindings.
    ID3D11ShaderResourceView* nullSRVs2[] = { nullptr };
    d2dCtx.d3dContext->PSSetShaderResources(0, 1, nullSRVs2);
    d2dCtx.d3dContext->OMSetRenderTargets(0, nullptr, nullptr);

    d2dCtx.swapchain->Present(1, 0);
}

void cleanupD2D()
{
    s_ycocgStagingTex.Reset();
    s_ycocgStagingW = s_ycocgStagingH = 0;
    if (d2dCtx.frameLatencyWaitableObject)
    {
        CloseHandle(d2dCtx.frameLatencyWaitableObject);
        d2dCtx.frameLatencyWaitableObject = nullptr;
    }
    if (d2dMenuTitleImage)
    {
        FreeImage(d2dMenuTitleImage);
        d2dMenuTitleImage = nullptr;
        d2dMenuTitleW = d2dMenuTitleH = d2dMenuTitleC = 0;
    }
    d2dCtx = {};
}
