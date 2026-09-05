#include "cursor.h"

#include <algorithm>
#include <array>
#include <string>
#include <vector>

#include "config.h"
#include "game.h"
#include "plugin_api.h"

namespace
{
struct LoadedCursor
{
    int width = 0;
    int height = 0;
    int frames = 0;
    int currentFrame = 0;
    std::string symbol;
    std::string label;
    std::vector<HCURSOR> winHandles;
    std::vector<std::vector<uint8_t>> rgbaFrames;
};

constexpr size_t kCursorTypeCount = 9;
constexpr double kDefaultCursorFps = 15.0;

#ifdef _WIN32
#define CURSOR_DBG_LOG(msg) OutputDebugStringA("[Phantom][Cursor] " msg "\n")
#define CURSOR_DBG_LOGF(fmt, ...) do { char _buf[1024]; snprintf(_buf, sizeof(_buf), "[Phantom][Cursor] " fmt "\n", __VA_ARGS__); OutputDebugStringA(_buf); } while(0)
#else
#define CURSOR_DBG_LOG(msg) ((void)0)
#define CURSOR_DBG_LOGF(fmt, ...) ((void)0)
#endif

std::array<LoadedCursor, kCursorTypeCount> g_loadedCursors;
HCURSOR g_transparentCursor = nullptr;

double resolveCursorAnimationRate(const nlohmann::json& catalog)
{
    double fps = catalog.value("animationRate", kDefaultCursorFps);
    if (config.contains("gameState") && config["gameState"].is_object())
    {
        const auto& gameState = config["gameState"];
        if (gameState.contains("cursors") && gameState["cursors"].is_object())
        {
            fps = gameState["cursors"].value("animationRate", fps);
        }
    }
    if (fps <= 0.0)
    {
        fps = kDefaultCursorFps;
    }
    return fps;
}

bool fetchCursorCatalog(nlohmann::json& outCatalog)
{
    outCatalog = nlohmann::json::object();

    EnginePlugin* plugin = enginePluginGet();
    if (!plugin || !plugin->GetCursorCatalogJson)
    {
        CURSOR_DBG_LOG("fetchCursorCatalog: active plugin has no cursor catalog export");
        return false;
    }

    const int requiredSize = plugin->GetCursorCatalogJson(nullptr, 0);
    if (requiredSize <= 1)
    {
        return false;
    }

    std::vector<char> buffer(static_cast<size_t>(requiredSize), '\0');
    const int written = plugin->GetCursorCatalogJson(buffer.data(), static_cast<int>(buffer.size()));
    if (written <= 1)
    {
        return false;
    }

    outCatalog = nlohmann::json::parse(buffer.data(), nullptr, false);
    return outCatalog.is_object();
}

bool loadCursorFrames(const nlohmann::json& catalog)
{
    EnginePlugin* plugin = enginePluginGet();
    if (!plugin || !plugin->ExtractCursorFrameRgba)
    {
        CURSOR_DBG_LOG("loadCursorFrames: active plugin has no cursor frame export");
        return false;
    }

    if (!catalog.contains("types") || !catalog["types"].is_array())
    {
        return false;
    }

    for (const auto& type : catalog["types"])
    {
        const int id = type.value("id", -1);
        if (id < 0 || id >= static_cast<int>(kCursorTypeCount))
        {
            continue;
        }

        auto& cursor = g_loadedCursors[static_cast<size_t>(id)];
        cursor = {};
        cursor.width = type.value("width", 0);
        cursor.height = type.value("height", 0);
        cursor.frames = type.value("frames", 0);
        cursor.symbol = type.value("symbol", std::string());
        cursor.label = type.value("label", std::string());
        cursor.currentFrame = 0;

        if (cursor.width <= 0 || cursor.height <= 0 || cursor.frames <= 0 || cursor.symbol.empty())
        {
            continue;
        }

        cursor.rgbaFrames.reserve(static_cast<size_t>(cursor.frames));
        const size_t exactSize = static_cast<size_t>(cursor.width) * cursor.height * 4;
        for (int frameIndex = 0; frameIndex < cursor.frames; ++frameIndex)
        {
            std::vector<uint8_t> rgba(exactSize);
            int outWidth = 0;
            int outHeight = 0;
            const int result = plugin->ExtractCursorFrameRgba(
                cursor.symbol.c_str(),
                frameIndex,
                rgba.data(),
                static_cast<int>(rgba.size()),
                &outWidth,
                &outHeight);
            if (result <= 0 || outWidth != cursor.width || outHeight != cursor.height)
            {
                CURSOR_DBG_LOGF("loadCursorFrames: failed to load %s frame %d", cursor.symbol.c_str(), frameIndex);
                return false;
            }
            cursor.rgbaFrames.push_back(std::move(rgba));
        }
    }

    return true;
}
}

CursorType g_activeCursorType = CURSOR_DEFAULT;
uint64_t g_cursorLastFrameTime = 0;
bool g_cursorsInitialized = false;
double g_cursorAnimationFps = kDefaultCursorFps;

HCURSOR createWindowsCursor(const std::vector<uint8_t>& rgbaData, int width, int height)
{
    const int hotspotX = width / 2;
    const int hotspotY = height / 2;

    BITMAPV5HEADER bi{};
    bi.bV5Size = sizeof(BITMAPV5HEADER);
    bi.bV5Width = width;
    bi.bV5Height = -height;
    bi.bV5Planes = 1;
    bi.bV5BitCount = 32;
    bi.bV5Compression = BI_BITFIELDS;
    bi.bV5RedMask = 0x00FF0000;
    bi.bV5GreenMask = 0x0000FF00;
    bi.bV5BlueMask = 0x000000FF;
    bi.bV5AlphaMask = 0xFF000000;

    HDC hdc = GetDC(nullptr);
    void* bits = nullptr;
    HBITMAP color = CreateDIBSection(hdc, reinterpret_cast<BITMAPINFO*>(&bi), DIB_RGB_COLORS, &bits, nullptr, 0);
    if (!color || !bits)
    {
        ReleaseDC(nullptr, hdc);
        return nullptr;
    }

    auto* dst = static_cast<BYTE*>(bits);
    for (int y = 0; y < height; ++y)
    {
        for (int x = 0; x < width; ++x)
        {
            const int srcIdx = (y * width + x) * 4;
            const int destIdx = srcIdx;
            dst[destIdx + 0] = rgbaData[srcIdx + 2];
            dst[destIdx + 1] = rgbaData[srcIdx + 1];
            dst[destIdx + 2] = rgbaData[srcIdx + 0];
            dst[destIdx + 3] = rgbaData[srcIdx + 3];
        }
    }

    const int maskRowBytes = ((width + 15) / 16) * 2;
    std::vector<uint8_t> maskBits(static_cast<size_t>(maskRowBytes) * height, 0);
    for (int y = 0; y < height; ++y)
    {
        for (int x = 0; x < width; ++x)
        {
            const int idx = (y * width + x) * 4;
            if (rgbaData[idx + 3] < 128)
            {
                maskBits[static_cast<size_t>(y) * maskRowBytes + x / 8] |= (0x80 >> (x % 8));
            }
        }
    }

    HBITMAP mask = CreateBitmap(width, height, 1, 1, maskBits.data());

    ICONINFO ii{};
    ii.fIcon = FALSE;
    ii.xHotspot = hotspotX;
    ii.yHotspot = hotspotY;
    ii.hbmMask = mask;
    ii.hbmColor = color;

    HCURSOR hCursor = CreateIconIndirect(&ii);
    DeleteObject(mask);
    DeleteObject(color);
    ReleaseDC(nullptr, hdc);
    return hCursor;
}

HCURSOR getTransparentCursor()
{
    if (g_transparentCursor)
    {
        return g_transparentCursor;
    }

    const std::vector<uint8_t> transparent = {0, 0, 0, 0};
    g_transparentCursor = createWindowsCursor(transparent, 1, 1);
    return g_transparentCursor;
}

std::vector<uint8_t> scaleRGBA(const std::vector<uint8_t>& src, int srcW, int srcH, int dstW, int dstH)
{
    const size_t dstSize = static_cast<size_t>(dstW) * dstH * 4;
    std::vector<uint8_t> dst(dstSize);
    size_t dstIdx = 0;
    for (int y = 0; y < dstH; ++y)
    {
        const int srcY = y * srcH / dstH;
        const int srcRowBase = srcY * srcW;
        for (int x = 0; x < dstW; ++x)
        {
            const int srcX = x * srcW / dstW;
            const size_t srcIdx = static_cast<size_t>(srcRowBase + srcX) * 4;
            dst[dstIdx++] = src[srcIdx + 0];
            dst[dstIdx++] = src[srcIdx + 1];
            dst[dstIdx++] = src[srcIdx + 2];
            dst[dstIdx++] = src[srcIdx + 3];
        }
    }
    return dst;
}

void recreateScaledCursors(float scale)
{
    if (scale <= 0.0f) scale = 1.0f;

    for (auto& cursor : g_loadedCursors)
    {
        for (HCURSOR handle : cursor.winHandles)
            if (handle) DestroyCursor(handle);
        cursor.winHandles.clear();

        if (cursor.rgbaFrames.empty() || cursor.width <= 0 || cursor.height <= 0) continue;

        const int scaledW = std::max(1, static_cast<int>(cursor.width * scale));
        const int scaledH = std::max(1, static_cast<int>(cursor.height * scale));
        cursor.winHandles.reserve(cursor.rgbaFrames.size());
        for (const auto& rgbaFrame : cursor.rgbaFrames)
        {
            const std::vector<uint8_t> scaled = (scale == 1.0f)
                ? rgbaFrame
                : scaleRGBA(rgbaFrame, cursor.width, cursor.height, scaledW, scaledH);
            cursor.winHandles.push_back(createWindowsCursor(scaled, scaledW, scaledH));
        }
    }
}

bool initCursors(const std::string_view& cursorAsset, float scale)
{
    if (g_cursorsInitialized)
    {
        return true;
    }

    nlohmann::json catalog;
    if (!fetchCursorCatalog(catalog))
    {
        return false;
    }

    const std::string catalogAsset = catalog.value("asset", std::string());
    if (!cursorAsset.empty() && !catalogAsset.empty() && cursorAsset != catalogAsset)
    {
        CURSOR_DBG_LOGF("initCursors: project requested %s, plugin catalog reported %s",
                        std::string(cursorAsset).c_str(),
                        catalogAsset.c_str());
    }

    cleanupCursors();
    if (!loadCursorFrames(catalog))
    {
        cleanupCursors();
        return false;
    }

    g_cursorAnimationFps = resolveCursorAnimationRate(catalog);
    recreateScaledCursors(scale);
    g_cursorLastFrameTime = GetTickCount64();
    g_cursorsInitialized = true;
    return true;
}

void updateCursorAnimation()
{
    if (!g_cursorsInitialized || g_cursorAnimationFps <= 0.0) return;

    const uint64_t currentTime = GetTickCount64();
    const uint64_t frameTime = static_cast<uint64_t>(1000.0 / g_cursorAnimationFps);
    if ((currentTime - g_cursorLastFrameTime) < frameTime) return;

    auto& cursor = g_loadedCursors[static_cast<size_t>(g_activeCursorType)];
    if (cursor.frames > 1)
        cursor.currentFrame = (cursor.currentFrame + 1) % cursor.frames;
    g_cursorLastFrameTime = currentTime;
}

HCURSOR getCurrentCursor()
{
    if (!g_cursorsInitialized) return LoadCursor(nullptr, IDC_ARROW);

    if (state.raycast.enabled || state.animation.isPlaying || state.transient_animation.isPlaying)
        return getTransparentCursor();

    const auto& cursor = g_loadedCursors[static_cast<size_t>(g_activeCursorType)];
    if (cursor.winHandles.empty()) return LoadCursor(nullptr, IDC_ARROW);

    const size_t frameIndex = static_cast<size_t>(std::clamp(cursor.currentFrame, 0, static_cast<int>(cursor.winHandles.size()) - 1));
    return cursor.winHandles[frameIndex];
}

void cleanupCursors()
{
    for (auto& cursor : g_loadedCursors)
    {
        for (HCURSOR handle : cursor.winHandles)
        {
            if (handle)
            {
                DestroyCursor(handle);
            }
        }
        cursor = {};
    }

    if (g_transparentCursor)
    {
        DestroyCursor(g_transparentCursor);
        g_transparentCursor = nullptr;
    }

    g_cursorsInitialized = false;
    g_cursorLastFrameTime = 0;
}
