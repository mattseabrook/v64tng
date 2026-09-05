// plugin_api.h - Phantom Engine Runtime Plugin Loader
//
// Loads plugin DLLs at engine startup so third-party codecs can provide
// frames directly to the render pipeline alongside PVX.
//
// This is the ENGINE-SIDE interface (IDE/core/).  It mirrors the export
// surface defined in the boilerplate plugin template but is consumed by
// the game loop, not by the IDE Asset Manager.

#ifndef PLUGIN_API_H
#define PLUGIN_API_H

#include <string>
#include <vector>
#include <cstdint>

// ============================================================================
// EnginePlugin — one loaded plugin DLL and its resolved exports
// ============================================================================

struct EnginePlugin
{
    // DLL handle (HMODULE on Windows, void* on POSIX)
    void *handle = nullptr;

    // Identity
    const char *(*GetPluginName)()        = nullptr;
    const char *(*GetPluginVersion)()     = nullptr;
    const char *(*GetPluginDescription)() = nullptr;

    // Lifecycle
    int   (*Initialize)(const char *assetPath) = nullptr;
    void  (*Shutdown)()                        = nullptr;
    int   (*IsInitialized)()                   = nullptr;

    // Archive / Item enumeration
    int (*GetArchiveCount)()                                                  = nullptr;
    int (*GetArchiveName)(int index, char *buffer, int bufferSize)            = nullptr;
    int (*GetArchiveItemCount)(const char *archiveName)                       = nullptr;
    int (*GetArchiveItemName)(const char *archiveName, int index,
                              char *buffer, int bufferSize)                   = nullptr;

    // Metadata
    int (*GetArchiveItemInfoJson)(const char *archiveName, const char *itemName,
                                  char *buffer, int bufferSize) = nullptr;

    // Frame extraction (IDE preview surface)
    int (*ExtractArchiveItemPreviewFrame)(const char *archiveName,
                                         const char *itemName,
                                         int frameIndex,
                                         uint8_t *rgbBuffer, int bufferSize,
                                         int *outWidth, int *outHeight) = nullptr;

    // Audio extraction (optional)
    int (*ExtractArchiveItemAudioWav)(const char *archiveName,
                                     const char *itemName,
                                     uint8_t *wavBuffer, int bufferSize,
                                     int *outWavSize) = nullptr;

    // Cursor catalog / extraction
    int (*GetCursorCatalogJson)(char *buffer, int bufferSize) = nullptr;
    int (*ExtractCursorFrameRgba)(const char *cursorSymbol,
                                  int frameIndex,
                                  uint8_t *rgbaBuffer,
                                  int bufferSize,
                                  int *outWidth,
                                  int *outHeight) = nullptr;

    // Playback helpers
    int   (*PrepareItem)(const char *archiveName, const char *itemName)  = nullptr;
    void  (*ReleaseItem)(const char *archiveName, const char *itemName)  = nullptr;
    void  (*ClearCache)()                                                = nullptr;

    // Engine integration (hot path)
    int (*GetItemInfo)(const char *archiveName, const char *itemName,
                       int *outWidth, int *outHeight,
                       int *outFrameCount, int *outFPS) = nullptr;
    int (*ExtractFrame)(const char *archiveName, const char *itemName,
                        int frameIndex,
                        uint8_t *rgbBuffer, int bufferSize) = nullptr;
};

// ============================================================================
// Public API
// ============================================================================

// Scan the working directory (or exe directory) for plugin DLLs, load them,
// and resolve all exports.  Call once during engine startup.
void enginePluginsLoad();

// Shut down and unload all plugins.  Call once during engine shutdown.
void enginePluginsUnload();

// Return the first loaded plugin, or nullptr if none.
// (The engine currently supports a single active plugin per session;
// future versions may support multiple.)
EnginePlugin *enginePluginGet();

// Convenience: is there an active, initialized plugin?
bool enginePluginActive();

#endif // PLUGIN_API_H
