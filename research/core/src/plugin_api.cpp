// plugin_api.cpp - Phantom Engine Runtime Plugin Loader
//
// Scans for plugin DLLs at startup, loads them via LoadLibrary /
// GetProcAddress, and exposes them to the game loop.

#include "plugin_api.h"
#include "config.h"

#include <filesystem>
#include <algorithm>
#include <cstring>

#ifdef _WIN32
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#else
#include <dlfcn.h>
#endif

// ============================================================================
// Debug logging (matches the pattern used elsewhere in the engine)
// ============================================================================

#ifdef _WIN32
#define DBG_LOG(msg) OutputDebugStringA("[Phantom][Plugin] " msg "\n")
#define DBG_LOGF(fmt, ...) do { char _buf[4096]; \
    snprintf(_buf, sizeof(_buf), "[Phantom][Plugin] " fmt "\n", __VA_ARGS__); \
    OutputDebugStringA(_buf); } while(0)
#else
#define DBG_LOG(msg) ((void)0)
#define DBG_LOGF(fmt, ...) ((void)0)
#endif

// ============================================================================
// Internal state
// ============================================================================

static std::vector<EnginePlugin> g_plugins;

// ============================================================================
// Helpers
// ============================================================================

template <typename FnPtr>
static void resolveExport(void *handle, const char *name, FnPtr &out)
{
#ifdef _WIN32
    out = reinterpret_cast<FnPtr>(
        GetProcAddress(static_cast<HMODULE>(handle), name));
#else
    out = reinterpret_cast<FnPtr>(dlsym(handle, name));
#endif
}

static bool tryLoadPlugin(const std::filesystem::path &dllPath)
{
    DBG_LOGF("Trying plugin: %s", dllPath.string().c_str());

#ifdef _WIN32
    HMODULE hMod = LoadLibraryW(dllPath.wstring().c_str());
    if (!hMod)
    {
        DBG_LOGF("  LoadLibrary failed (err=%lu)", GetLastError());
        return false;
    }
    void *handle = static_cast<void *>(hMod);
#else
    void *handle = dlopen(dllPath.string().c_str(), RTLD_LAZY);
    if (!handle)
    {
        DBG_LOGF("  dlopen failed: %s", dlerror());
        return false;
    }
#endif

    EnginePlugin p{};
    p.handle = handle;

    // Resolve identity (required — skip DLL if missing)
    resolveExport(handle, "GetPluginName",    p.GetPluginName);
    resolveExport(handle, "GetPluginVersion", p.GetPluginVersion);
    if (!p.GetPluginName)
    {
        DBG_LOG("  Missing GetPluginName — skipping");
#ifdef _WIN32
        FreeLibrary(hMod);
#else
        dlclose(handle);
#endif
        return false;
    }

    // Resolve lifecycle
    resolveExport(handle, "GetPluginDescription", p.GetPluginDescription);
    resolveExport(handle, "Initialize",           p.Initialize);
    resolveExport(handle, "Shutdown",             p.Shutdown);
    resolveExport(handle, "IsInitialized",        p.IsInitialized);

    // Archive / item enumeration
    resolveExport(handle, "GetArchiveCount",     p.GetArchiveCount);
    resolveExport(handle, "GetArchiveName",      p.GetArchiveName);
    resolveExport(handle, "GetArchiveItemCount", p.GetArchiveItemCount);
    resolveExport(handle, "GetArchiveItemName",  p.GetArchiveItemName);

    // Metadata
    resolveExport(handle, "GetArchiveItemInfoJson",        p.GetArchiveItemInfoJson);

    // Frame extraction
    resolveExport(handle, "ExtractArchiveItemPreviewFrame", p.ExtractArchiveItemPreviewFrame);
    resolveExport(handle, "ExtractArchiveItemAudioWav",     p.ExtractArchiveItemAudioWav);
    resolveExport(handle, "GetCursorCatalogJson",           p.GetCursorCatalogJson);
    resolveExport(handle, "ExtractCursorFrameRgba",         p.ExtractCursorFrameRgba);

    // Playback helpers
    resolveExport(handle, "PrepareItem",  p.PrepareItem);
    resolveExport(handle, "ReleaseItem",  p.ReleaseItem);
    resolveExport(handle, "ClearCache",   p.ClearCache);

    // Engine integration (hot path)
    resolveExport(handle, "GetItemInfo",   p.GetItemInfo);
    resolveExport(handle, "ExtractFrame",  p.ExtractFrame);

    const char *name = p.GetPluginName();
    DBG_LOGF("  Loaded plugin: %s (version %s)",
             name ? name : "?",
             p.GetPluginVersion ? p.GetPluginVersion() : "?");

    g_plugins.push_back(std::move(p));
    return true;
}

// ============================================================================
// Public API
// ============================================================================

void enginePluginsLoad()
{
    g_plugins.clear();

    std::error_code cwdEc;
    const std::string cwd = std::filesystem::current_path(cwdEc).string();
    const std::string configuredPlugin = config.value("plugin", std::string());
    const std::string configuredAssetPath = config.value("pluginAssetPath", std::string("."));
    DBG_LOGF("enginePluginsLoad: cwd=%s plugin=%s assetPath=%s",
             cwdEc ? "(unavailable)" : cwd.c_str(),
             configuredPlugin.empty() ? "(none)" : configuredPlugin.c_str(),
             configuredAssetPath.empty() ? "(empty)" : configuredAssetPath.c_str());

    // Strategy:
    //  1. Check config.json for a "plugin" key (path to a specific DLL).
    //  2. Otherwise, scan the working directory for *.dll files that are NOT
    //     the engine executable itself.

    // --- Config-driven load ---
    if (config.contains("plugin") && config["plugin"].is_string())
    {
        std::string pluginPath = config["plugin"].get<std::string>();
        if (!pluginPath.empty())
        {
            std::filesystem::path p(pluginPath);
            if (std::filesystem::exists(p))
            {
                tryLoadPlugin(p);
            }
            else
            {
                DBG_LOGF("Configured plugin not found: %s", pluginPath.c_str());
            }
        }
    }

    // --- Scan working directory ---
    if (g_plugins.empty())
    {
        std::error_code ec;
        for (auto &entry : std::filesystem::directory_iterator(".", ec))
        {
            if (!entry.is_regular_file())
                continue;
            auto ext = entry.path().extension().string();
            std::transform(ext.begin(), ext.end(), ext.begin(),
                           [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
            if (ext != ".dll")
                continue;

            // Skip the engine executable itself (phantom.dll, phantom_engine.dll, etc.)
            auto stem = entry.path().stem().string();
            std::transform(stem.begin(), stem.end(), stem.begin(),
                           [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
            if (stem.find("phantom") != std::string::npos)
                continue;

            tryLoadPlugin(entry.path());
        }
    }

    // --- Initialize the first plugin that has an Initialize export ---
    for (auto &p : g_plugins)
    {
        if (!p.Initialize)
            continue;

        // Use the asset path from config, or fall back to "."
        std::string assetPath = ".";
        if (config.contains("pluginAssetPath") && config["pluginAssetPath"].is_string())
            assetPath = config["pluginAssetPath"].get<std::string>();

        int ok = p.Initialize(assetPath.c_str());
        DBG_LOGF("  Initialize('%s') => %d", assetPath.c_str(), ok);
    }

    if (g_plugins.empty())
        DBG_LOG("enginePluginsLoad: no plugins loaded");
    else
        DBG_LOGF("enginePluginsLoad: %zu plugin(s) loaded", g_plugins.size());
}

void enginePluginsUnload()
{
    for (auto &p : g_plugins)
    {
        if (p.Shutdown)
            p.Shutdown();

        if (p.handle)
        {
#ifdef _WIN32
            FreeLibrary(static_cast<HMODULE>(p.handle));
#else
            dlclose(p.handle);
#endif
        }
    }
    g_plugins.clear();
}

EnginePlugin *enginePluginGet()
{
    return g_plugins.empty() ? nullptr : &g_plugins[0];
}

bool enginePluginActive()
{
    auto *p = enginePluginGet();
    if (!p)
        return false;
    if (p->IsInitialized)
        return p->IsInitialized() != 0;
    return true; // If no IsInitialized export, assume loaded = active
}
