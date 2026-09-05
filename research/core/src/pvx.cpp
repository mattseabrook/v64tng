// pvx.cpp - Phantom Engine PVX decoding (keyframe, delta, repeat)
//
// Streaming decoder with on-demand decoding for lagless playback:
// - YCoCg-R color transform with planar layout
// - Motion-compensated delta frames (8x8 blocks)
// - Multi-reference frame buffer
// - Subtraction residuals for motion/literal blocks

#include <vector>
#include <fstream>
#include <unordered_map>
#include <unordered_set>
#include <cstring>
#include <chrono>
#include <stdexcept>
#include <array>
#include <algorithm>
#include <mutex>
#include <condition_variable>
#include <deque>
#include <thread>
#include <memory>
#include <string>
#include <sstream>
#include <filesystem>
#include <limits>
#include <immintrin.h>

#include "pvx.h"
#include "pvx_pool.h"
#include "config.h"
#include "game.h"
#include "project_overrides.h"
#include "window.h"
#include "d2d.h"
#include "vulkan.h"

// Suppress warnings for WIP/reference codec functions not yet wired up
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-function"
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-variable"
#pragma clang diagnostic ignored "-Wunused-member-function"
#pragma clang diagnostic ignored "-Wunused-macros"
#pragma clang diagnostic ignored "-Wunused-but-set-variable"
#pragma clang diagnostic ignored "-Wimplicit-int-conversion"

#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <windows.h>
#endif

#include "pvx_entropy.h"
#include "pvx_protocol.h"
#include "pvx_decode_common.h"

//
// Debug logging macro - writes to DebugView/debugger output
//
#ifdef _WIN32
#define DBG_LOG(msg) OutputDebugStringA("[Phantom:PVX] " msg "\n")
#define DBG_LOGF(fmt, ...) do { char _dbg_buf[4096]; snprintf(_dbg_buf, sizeof(_dbg_buf), "[Phantom:PVX] " fmt "\n", __VA_ARGS__); OutputDebugStringA(_dbg_buf); } while(0)
#else
#define DBG_LOG(msg) ((void)0)
#define DBG_LOGF(fmt, ...) ((void)0)
#endif

namespace {
    static bool read_pvx_header(std::istream& in, PVXHeader& header)
    {
        std::array<uint8_t, PVX_HEADER_WIRE_SIZE> bytes{};
        in.read(reinterpret_cast<char*>(bytes.data()), bytes.size());
        return static_cast<bool>(in) && pvx_parse_header(bytes.data(), bytes.size(), header);
    }


std::string normalizeEmbeddedPvxPathKey(std::string value)
{
    std::replace(value.begin(), value.end(), '\\', '/');
#ifdef _WIN32
    std::transform(value.begin(), value.end(), value.begin(), [](unsigned char ch) {
        return static_cast<char>(std::tolower(ch));
    });
#endif
    return value;
}

std::string_view lookupEmbeddedPvxResource(const std::string& path)
{
#ifdef _WIN32
    const std::string normalizedPath = normalizeEmbeddedPvxPathKey(path);
    const std::string normalizedFilename =
        normalizeEmbeddedPvxPathKey(std::filesystem::path(path).filename().string());
    for (const auto& entry : phantom::project_overrides::kEmbeddedPvxResources)
    {
        const std::string logicalPath = normalizeEmbeddedPvxPathKey(std::string(entry.logicalPath));
        if (logicalPath == normalizedPath)
            return entry.resourceName;

        const std::string logicalFilename =
            normalizeEmbeddedPvxPathKey(std::filesystem::path(std::string(entry.logicalPath)).filename().string());
        if (!normalizedFilename.empty() && logicalFilename == normalizedFilename)
            return entry.resourceName;
    }
#else
    (void)path;
#endif
    return {};
}

#ifdef _WIN32
bool loadEmbeddedBinaryResource(std::string_view resourceName, std::vector<uint8_t>& bytes)
{
    if (resourceName.empty())
        return false;

    HMODULE module = GetModuleHandleW(nullptr);
    if (!module)
        return false;

    const std::wstring name(resourceName.begin(), resourceName.end());
    HRSRC resource = FindResourceW(module, name.c_str(), RT_RCDATA);
    if (!resource)
        return false;

    HGLOBAL loaded = LoadResource(module, resource);
    if (!loaded)
        return false;

    const void* data = LockResource(loaded);
    const DWORD size = SizeofResource(module, resource);
    if (!data || size == 0)
        return false;

    const auto* start = static_cast<const uint8_t*>(data);
    bytes.assign(start, start + size);
    return true;
}

std::wstring sanitizeEmbeddedTempStem(std::wstring value)
{
    std::transform(value.begin(), value.end(), value.begin(), [](wchar_t ch) {
        if ((ch >= L'0' && ch <= L'9') ||
            (ch >= L'a' && ch <= L'z') ||
            (ch >= L'A' && ch <= L'Z')) {
            return ch;
        }
        return L'_';
    });
    return value;
}

std::filesystem::path runtimeExecutablePath()
{
    wchar_t modulePathBuffer[MAX_PATH] = {};
    const DWORD modulePathLength = GetModuleFileNameW(nullptr, modulePathBuffer, MAX_PATH);
    if (modulePathLength == 0 || modulePathLength >= MAX_PATH)
        return {};
    return std::filesystem::path(modulePathBuffer);
}

std::filesystem::path runtimeExecutableDirectory()
{
    const std::filesystem::path exePath = runtimeExecutablePath();
    return exePath.empty() ? std::filesystem::path() : exePath.parent_path();
}

bool isReadableRegularFile(const std::filesystem::path& path)
{
    std::error_code ec;
    return std::filesystem::exists(path, ec) &&
           !ec &&
           std::filesystem::is_regular_file(path, ec) &&
           !ec;
}

std::filesystem::path resolveExistingSidecarPvxPath(const std::string& diskPath)
{
    const std::filesystem::path requested(diskPath);
    if (requested.is_absolute())
        return isReadableRegularFile(requested) ? requested : std::filesystem::path();

    std::error_code ec;
    const std::filesystem::path cwd = std::filesystem::current_path(ec);
    if (!ec)
    {
        const std::filesystem::path cwdCandidate = (cwd / requested).lexically_normal();
        if (isReadableRegularFile(cwdCandidate))
            return cwdCandidate;
    }

    const std::filesystem::path exeDir = runtimeExecutableDirectory();
    if (!exeDir.empty())
    {
        const std::filesystem::path exeCandidate = (exeDir / requested).lexically_normal();
        if (isReadableRegularFile(exeCandidate))
            return exeCandidate;
    }

    return {};
}

std::string resolvePlayablePvxPath(const std::string& diskPath)
{
    if (const std::filesystem::path sidecarPath = resolveExistingSidecarPvxPath(diskPath);
        !sidecarPath.empty())
    {
        return sidecarPath.string();
    }

    const std::string_view resourceName = lookupEmbeddedPvxResource(diskPath);
    if (resourceName.empty())
        return diskPath;

    std::vector<uint8_t> bytes;
    if (!loadEmbeddedBinaryResource(resourceName, bytes))
    {
        const std::string resourceNameString(resourceName);
        DBG_LOGF("resolvePlayablePvxPath: failed to load embedded resource \"%s\" for \"%s\"",
                 resourceNameString.c_str(), diskPath.c_str());
        return diskPath;
    }

    wchar_t tempPathBuffer[MAX_PATH] = {};
    const DWORD tempPathLength = GetTempPathW(MAX_PATH, tempPathBuffer);
    if (tempPathLength == 0 || tempPathLength >= MAX_PATH)
    {
        DBG_LOGF("resolvePlayablePvxPath: GetTempPathW failed for \"%s\"", diskPath.c_str());
        return diskPath;
    }

    std::filesystem::path tempDir(tempPathBuffer);
    tempDir /= L"PhantomEmbeddedPvx";
    std::error_code mkdirEc;
    std::filesystem::create_directories(tempDir, mkdirEc);
    if (mkdirEc)
    {
        DBG_LOGF("resolvePlayablePvxPath: failed to create temp dir for \"%s\": %s",
                 diskPath.c_str(), mkdirEc.message().c_str());
        return diskPath;
    }

    std::wstring exeStem = L"phantom";
    const std::filesystem::path exePath = runtimeExecutablePath();
    if (!exePath.empty())
        exeStem = exePath.stem().wstring();

    std::wstring resourceStem(resourceName.begin(), resourceName.end());
    resourceStem = sanitizeEmbeddedTempStem(std::move(resourceStem));
    if (resourceStem.empty())
        resourceStem = L"intro";

    std::wstring extension = std::filesystem::path(diskPath).extension().wstring();
    if (extension.empty())
        extension = L".pvx";

    const std::filesystem::path tempFile = tempDir / (exeStem + L"_" + resourceStem + extension);
    std::ofstream out(tempFile, std::ios::binary | std::ios::trunc);
    if (!out)
    {
        DBG_LOGF("resolvePlayablePvxPath: failed to open temp file for \"%s\"", diskPath.c_str());
        return diskPath;
    }

    out.write(reinterpret_cast<const char*>(bytes.data()), static_cast<std::streamsize>(bytes.size()));
    if (!out)
    {
        DBG_LOGF("resolvePlayablePvxPath: failed to write temp file for \"%s\"", diskPath.c_str());
        return diskPath;
    }

    return tempFile.string();
}
#else
std::string resolvePlayablePvxPath(const std::string& diskPath)
{
    return diskPath;
}
#endif

} // namespace

// ============================================================================
// Constants (file-scope for use by streaming player)
// ============================================================================

static constexpr int CHANNELS = PVX_CHANNELS;

// Motion block constants
static constexpr int BLOCK_SIZE = PVX_MOTION_BLOCK_SIZE;

static constexpr int MOTION_SUBPEL_ONE = 2;

// Motion residual coding modes
static constexpr uint8_t MOTION_RESIDUAL_NONE = 0;
static constexpr uint8_t MOTION_RESIDUAL_RAW_SUB = 1;
static constexpr uint8_t MOTION_RESIDUAL_GOLOMB_SUB = 2;
static constexpr uint8_t MOTION_RESIDUAL_HADAMARD8 = 3;
static constexpr uint8_t MOTION_RESIDUAL_HADAMARD4 = 4;
static constexpr uint8_t MOTION_RESIDUAL_YCOCG_GOLOMB = 5;
static inline void residual_ycocg_to_rgb(uint8_t& y, uint8_t& co, uint8_t& cg)
{
    const uint8_t t = static_cast<uint8_t>(y - (static_cast<int8_t>(cg) >> 1));
    const uint8_t g = static_cast<uint8_t>(cg + t);
    const uint8_t b = static_cast<uint8_t>(t - (static_cast<int8_t>(co) >> 1));
    const uint8_t r = static_cast<uint8_t>(co + b);
    y = r; co = g; cg = b;
}
static constexpr uint8_t LITERAL_RESIDUAL_RAW_SUB = 0;
static constexpr uint8_t LITERAL_RESIDUAL_GOLOMB_SUB = 1;
static constexpr uint8_t LITERAL_RESIDUAL_FILTERED_RAW_SUB = 2;
static constexpr uint8_t LITERAL_RESIDUAL_FILTERED_GOLOMB_SUB = 3;
static constexpr uint8_t LITERAL_RESIDUAL_HADAMARD8 = 4;
static constexpr uint8_t LITERAL_RESIDUAL_HADAMARD4 = 5;

// Row filter modes
static constexpr uint8_t FILTER_NONE  = 0;
static constexpr uint8_t FILTER_SUB   = 1;
static constexpr uint8_t FILTER_UP    = 2;
static constexpr uint8_t FILTER_AVG   = 3;
static constexpr uint8_t FILTER_PAETH = 4;
static constexpr uint8_t FILTER_GRAD  = 5;

// Reference frame buffer size
static constexpr size_t MAX_REF_FRAMES = 4;

static std::mutex g_pvxLastErrorMutex;
static std::string g_pvxLastError;

static void setPvxLastError(std::string message)
{
    std::lock_guard<std::mutex> lock(g_pvxLastErrorMutex);
    g_pvxLastError = std::move(message);
}

std::string pvxGetLastError()
{
    std::lock_guard<std::mutex> lock(g_pvxLastErrorMutex);
    return g_pvxLastError;
}

bool pvxPeekInfo(const std::string& diskPath, PVXInfo& outInfo)
{
    outInfo = PVXInfo{};

    std::ifstream in(diskPath, std::ios::binary);
    if (!in)
        return false;

    PVXHeader h{};
    if (!read_pvx_header(in, h))
        return false;

    if (h.magic != PVX_MAGIC || h.channels != PVX_CHANNELS ||
        h.bit_depth != 8 || h.version != PVX_FORMAT_VERSION)
        return false;
    if (h.palette_mode != PVX_PALETTE_MODE_LOCAL &&
        h.palette_mode != PVX_PALETTE_MODE_GLOBAL)
        return false;
    if (h.width == 0 || h.height == 0 || h.width > 7680 || h.height > 4320)
        return false;

    outInfo.width = static_cast<int>(h.width);
    outInfo.height = static_cast<int>(h.height);
    outInfo.fps = static_cast<int>(h.fps ? h.fps : 24);
    return true;
}

namespace {
#if defined(__has_include)
#if __has_include("embedded_global_palette.generated.h")
#include "embedded_global_palette.generated.h"
#else
static constexpr uint8_t PHANTOM_EMBEDDED_GPAL_DATA[] = {};
static constexpr size_t PHANTOM_EMBEDDED_GPAL_SIZE = 0;
#endif
#else
static constexpr uint8_t PHANTOM_EMBEDDED_GPAL_DATA[] = {};
static constexpr size_t PHANTOM_EMBEDDED_GPAL_SIZE = 0;
#endif

    // ========================================================================
    // Reference Frame Buffer
    // ========================================================================
    
    struct FramePaletteStream
    {
        std::vector<uint32_t> palette;
        std::vector<uint32_t> indices;
        uint8_t bits = 0;
        bool valid = false;
    };

    enum class PalettePayloadMode : uint8_t
    {
        Full = 0,
        Delta = 1,
        Reuse = 2,
        GlobalFull = 3,    // Per-frame palette as global palette u16 indices
        GlobalDelta = 4,   // Changed entries reference global palette u16 indices
        GlobalDirect = 5,  // No per-frame palette; indices are directly into global palette
        GlobalDirectCtx = 6,
        GlobalDirectGmCtx = 7,
        GlobalDirectBlockMotionCtx = 8,
        GlobalDirectMultiScaleMotionCtx = 9
    };

    enum class PaletteUpdateCodingMode : uint8_t
    {
        LegacySkipRun = 0,
        ContextResidual = 1,
        MixedTiled = 2,
        StructuredArithmetic = 3,
        LocalRemap = 4,
        TemporalDelta = 5,
        RecentColorCache = 6,
        ContextSymbolMap = 7,
        ContextSymbolMapWide = 8,
        ContextSymbolMapTable = 9
    };

    static inline int32_t zigzag_decode_i32(uint32_t v)
    {
        const uint32_t mag = v >> 1;
        if ((v & 1u) == 0u)
        {
            if (mag > static_cast<uint32_t>(std::numeric_limits<int32_t>::max()))
                return std::numeric_limits<int32_t>::max();
            return static_cast<int32_t>(mag);
        }

        if (mag > static_cast<uint32_t>(std::numeric_limits<int32_t>::max()))
            return std::numeric_limits<int32_t>::min();
        return -static_cast<int32_t>(mag) - 1;
    }

    struct PredictedMotionVector
    {
        int8_t dx = 0;
        int8_t dy = 0;
    };

    static int median3(int a, int b, int c)
    {
        if (a > b) std::swap(a, b);
        if (b > c) std::swap(b, c);
        if (a > b) std::swap(a, b);
        return b;
    }

    static PredictedMotionVector predict_spatial_mv(const std::vector<int8_t>& mvx,
                                                    const std::vector<int8_t>& mvy,
                                                    int blocks_x,
                                                    int blocks_y,
                                                    int bx,
                                                    int by)
    {
        (void)blocks_y;
        int xs[3] = {};
        int ys[3] = {};
        int n = 0;

        auto add = [&](int nx, int ny) {
            if (nx < 0 || ny < 0 || nx >= blocks_x)
                return;
            const size_t idx = static_cast<size_t>(ny) * blocks_x + nx;
            if (idx >= mvx.size() || idx >= mvy.size())
                return;
            xs[n] = mvx[idx];
            ys[n] = mvy[idx];
            ++n;
        };

        add(bx - 1, by);
        add(bx, by - 1);
        add(bx + 1, by - 1);

        if (n == 0)
            return {};
        if (n == 1)
            return {static_cast<int8_t>(xs[0]), static_cast<int8_t>(ys[0])};
        if (n == 2)
            return {static_cast<int8_t>((xs[0] + xs[1]) / 2),
                    static_cast<int8_t>((ys[0] + ys[1]) / 2)};

        return {static_cast<int8_t>(median3(xs[0], xs[1], xs[2])),
                static_cast<int8_t>(median3(ys[0], ys[1], ys[2]))};
    }

    static void set_spatial_mv(std::vector<int8_t>& mvx,
                               std::vector<int8_t>& mvy,
                               int blocks_x,
                               int bx,
                               int by,
                               int8_t dx,
                               int8_t dy)
    {
        const size_t idx = static_cast<size_t>(by) * blocks_x + bx;
        if (idx < mvx.size() && idx < mvy.size())
        {
            mvx[idx] = dx;
            mvy[idx] = dy;
        }
    }

    static inline uint32_t palette_predictor(const std::vector<uint32_t>& indices,
                                             size_t pos,
                                             int width,
                                             uint32_t fallback)
    {
        const int x = static_cast<int>(pos % static_cast<size_t>(width));
        const int y = static_cast<int>(pos / static_cast<size_t>(width));
        if (x == 0 && y == 0)
            return fallback;

        const uint32_t left = (x > 0) ? indices[pos - 1] : fallback;
        const uint32_t up = (y > 0) ? indices[pos - static_cast<size_t>(width)] : fallback;
        const uint32_t ul = (x > 0 && y > 0) ? indices[pos - static_cast<size_t>(width) - 1] : fallback;

        const int p = static_cast<int>(left) + static_cast<int>(up) - static_cast<int>(ul);
        const int pa = std::abs(p - static_cast<int>(left));
        const int pb = std::abs(p - static_cast<int>(up));
        const int pc = std::abs(p - static_cast<int>(ul));
        if (pa <= pb && pa <= pc) return left;
        if (pb <= pc) return up;
        return ul;
    }

    static inline uint8_t palette_predictor_class(const std::vector<uint32_t>& indices,
                                                  size_t pos,
                                                  int width,
                                                  uint32_t fallback)
    {
        const int x = static_cast<int>(pos % static_cast<size_t>(width));
        const int y = static_cast<int>(pos / static_cast<size_t>(width));
        if (x == 0 && y == 0) return 3u;

        const uint32_t left = (x > 0) ? indices[pos - 1] : fallback;
        const uint32_t up = (y > 0) ? indices[pos - static_cast<size_t>(width)] : fallback;
        const uint32_t ul = (x > 0 && y > 0) ? indices[pos - static_cast<size_t>(width) - 1] : fallback;

        const int p = static_cast<int>(left) + static_cast<int>(up) - static_cast<int>(ul);
        const int pa = std::abs(p - static_cast<int>(left));
        const int pb = std::abs(p - static_cast<int>(up));
        const int pc = std::abs(p - static_cast<int>(ul));
        if (pa <= pb && pa <= pc) return 0u;
        if (pb <= pc) return 1u;
        return 2u;
    }

    static void apply_palette_global_shift(const std::vector<uint32_t>& src,
                                           int width,
                                           int height,
                                           int dx,
                                           int dy,
                                           std::vector<uint32_t>& dst)
    {
        const size_t total = static_cast<size_t>(width) * static_cast<size_t>(height);
        dst.resize(total);
        for (int y = 0; y < height; ++y)
        {
            for (int x = 0; x < width; ++x)
            {
                const size_t idx = static_cast<size_t>(y) * static_cast<size_t>(width) + static_cast<size_t>(x);
                const int sx = x + dx;
                const int sy = y + dy;
                if (sx >= 0 && sy >= 0 && sx < width && sy < height)
                {
                    const size_t sidx = static_cast<size_t>(sy) * static_cast<size_t>(width) + static_cast<size_t>(sx);
                    dst[idx] = src[sidx];
                }
                else
                {
                    dst[idx] = src[idx];
                }
            }
        }
    }

    // ========================================================================
    // Global Palette (embedded in the executable)
    // ========================================================================

    static constexpr uint32_t GPAL_MAGIC = 0x4C415047u; // 'GPAL'

    static uint32_t mask_rgb24(uint32_t packed_rgb)
    {
        return packed_rgb & 0x00FFFFFFu;
    }

    static uint32_t canonicalize_near_black_rgb24(uint32_t packed_rgb)
    {
        constexpr uint32_t kShadowNoiseMaxChannel = 18u;
        constexpr uint32_t kShadowNoiseMaxLuma = 14u;
        packed_rgb = mask_rgb24(packed_rgb);
        const uint32_t r = packed_rgb & 0xFFu;
        const uint32_t g = (packed_rgb >> 8) & 0xFFu;
        const uint32_t b = (packed_rgb >> 16) & 0xFFu;
        const uint32_t max_channel = std::max({r, g, b});
        const uint32_t luma = (r + (g << 1) + b) >> 2;
        if (max_channel <= kShadowNoiseMaxChannel && luma <= kShadowNoiseMaxLuma)
            return 0u;
        return packed_rgb;
    }

    struct EngineGlobalPalette
    {
        std::vector<uint32_t> colors;    // Packed R | (G<<8) | (B<<16)
        bool loaded = false;

        bool load_from_blob(const uint8_t* blob, size_t blob_size, const char* source)
        {
            loaded = false;
            colors.clear();

            DBG_LOGF("load_from_blob: blob=%p size=%zu source=%s", (const void*)blob, blob_size, source ? source : "(null)");

            if (!blob || blob_size < 16) { DBG_LOG("load_from_blob: FAIL: blob null or < 16 bytes"); return false; }

            const uint8_t* header = blob;
            uint32_t magic = 0;
            std::memcpy(&magic, header, 4);
            DBG_LOGF("load_from_blob: magic=0x%08X (expected 0x%08X)", magic, GPAL_MAGIC);
            if (magic != GPAL_MAGIC) { DBG_LOG("load_from_blob: FAIL: bad magic"); return false; }

            uint16_t version = 0;
            std::memcpy(&version, header + 4, 2);
            DBG_LOGF("load_from_blob: version=%u", (unsigned)version);
            if (version != 1) { DBG_LOG("load_from_blob: FAIL: bad version"); return false; }

            uint32_t color_count = 0;
            std::memcpy(&color_count, header + 8, 4);
            DBG_LOGF("load_from_blob: color_count=%u", color_count);
            // 24-bit global-direct indices support up to 16,777,216 colors.
            if (color_count == 0 || color_count > 16777216u) { DBG_LOGF("load_from_blob: FAIL: bad color_count %u", color_count); return false; }

            const size_t rgb_size = static_cast<size_t>(color_count) * 3u;
            if (blob_size < 16u + rgb_size) return false;
            const uint8_t* rgb_data = blob + 16;

            std::unordered_set<uint32_t> seen;
            seen.reserve(color_count);
            colors.reserve(color_count);
            size_t duplicate_count = 0;
            for (uint32_t i = 0; i < color_count; ++i)
            {
                const uint32_t r = rgb_data[i * 3 + 0];
                const uint32_t g = rgb_data[i * 3 + 1];
                const uint32_t b = rgb_data[i * 3 + 2];
                const uint32_t packed = canonicalize_near_black_rgb24(r | (g << 8) | (b << 16));
                if (!seen.insert(packed).second)
                    ++duplicate_count;
                colors.push_back(packed);
            }

            if (colors.empty())
                return false;

            loaded = true;
            DBG_LOGF("Global palette loaded: %zu indexed colors from %s (%zu duplicate RGB entries preserved)",
                     colors.size(),
                     source ? source : "blob",
                     duplicate_count);
            return true;
        }

        bool load_embedded()
        {
            DBG_LOGF("load_embedded: PHANTOM_EMBEDDED_GPAL_SIZE=%zu", PHANTOM_EMBEDDED_GPAL_SIZE);
            if (PHANTOM_EMBEDDED_GPAL_SIZE == 0) { DBG_LOG("load_embedded: size is 0, no embedded palette"); return false; }
            return load_from_blob(PHANTOM_EMBEDDED_GPAL_DATA, PHANTOM_EMBEDDED_GPAL_SIZE, "embedded EXE data");
        }

    };

    // Singleton global palette instance for the Engine
    static EngineGlobalPalette g_engineGlobalPalette;

    static std::mutex g_gpalMutex;
    static bool ensureEmbeddedGlobalPaletteLoaded()
    {
        std::lock_guard<std::mutex> lock(g_gpalMutex);

        if (g_engineGlobalPalette.loaded)
            return true;

        DBG_LOG("ensureEmbeddedGlobalPaletteLoaded: attempting embedded palette load...");
        if (g_engineGlobalPalette.load_embedded())
        {
            DBG_LOGF("ensureEmbeddedGlobalPaletteLoaded: SUCCESS embedded palette (%zu colors)", g_engineGlobalPalette.colors.size());
            return true;
        }

        DBG_LOG("ensureEmbeddedGlobalPaletteLoaded: FAILED — no embedded global palette available");
        return false;
    }

    static bool isEmbeddedGlobalPaletteLoaded()
    {
        std::lock_guard<std::mutex> lock(g_gpalMutex);
        return g_engineGlobalPalette.loaded;
    }

    static bool ensureGlobalPaletteForPvxStream(const PVXHeader& h,
                                                const std::string& path)
    {
        if (h.palette_mode != PVX_PALETTE_MODE_GLOBAL)
            return true;

        ensureEmbeddedGlobalPaletteLoaded();
        return isEmbeddedGlobalPaletteLoaded();
    }

    static uint32_t pack_rgb(const uint8_t* px)
    {
        return static_cast<uint32_t>(px[0]) |
               (static_cast<uint32_t>(px[1]) << 8) |
               (static_cast<uint32_t>(px[2]) << 16);
    }

    static uint8_t palette_bits_for_size(size_t palette_size)
    {
        return pvx_palette_bits_for_size(palette_size);
    }

    static bool build_frame_palette_stream(const uint8_t* frame,
                                           size_t frame_size,
                                           int width,
                                           int height,
                                           size_t max_colors,
                                           FramePaletteStream& out)
    {
        if (out.valid) return true;

        const size_t pixel_count = static_cast<size_t>(width) * static_cast<size_t>(height);
        if (frame_size < pixel_count * CHANNELS)
            return false;

        out.palette.clear();
        out.indices.clear();
        out.indices.resize(pixel_count);

        std::unordered_map<uint32_t, uint32_t> lut;
        lut.reserve(std::min<size_t>(max_colors * 2, pixel_count));

        for (size_t i = 0; i < pixel_count; ++i)
        {
            const uint8_t* px = frame + i * CHANNELS;
            const uint32_t rgb = pack_rgb(px);
            auto it = lut.find(rgb);
            if (it == lut.end())
            {
                if (out.palette.size() >= max_colors)
                {
                    out.palette.clear();
                    out.indices.clear();
                    out.bits = 0;
                    out.valid = false;
                    return false;
                }
                const uint32_t next_index = static_cast<uint32_t>(out.palette.size());
                lut.emplace(rgb, next_index);
                out.palette.push_back(rgb);
                out.indices[i] = next_index;
            }
            else
            {
                out.indices[i] = it->second;
            }
        }

        out.bits = palette_bits_for_size(out.palette.size());
        out.valid = !out.palette.empty();
        return out.valid;
    }

    // Build a FramePaletteStream that maps each pixel directly to its global palette index.
    // Used after keyframe decode to initialize global-mode index state.
    static bool build_global_palette_stream(const uint8_t* frame,
                                             size_t frame_size,
                                             int width,
                                             int height,
                                             const EngineGlobalPalette& gpal,
                                             FramePaletteStream& out)
    {
        if (out.valid) return true;
        if (!gpal.loaded) return false;

        const size_t pixel_count = static_cast<size_t>(width) * static_cast<size_t>(height);
        if (frame_size < pixel_count * CHANNELS)
            return false;

        // Build reverse map for fast lookup
        std::unordered_map<uint32_t, uint32_t> reverse;
        reverse.reserve(gpal.colors.size());
        for (size_t i = 0; i < gpal.colors.size(); ++i)
            reverse[gpal.colors[i]] = static_cast<uint32_t>(i);

        out.palette.clear();
        out.indices.resize(pixel_count);

        size_t hard_misses = 0;

        for (size_t i = 0; i < pixel_count; ++i)
        {
            const uint8_t* px = frame + i * CHANNELS;
            const uint32_t rgb = canonicalize_near_black_rgb24(pack_rgb(px));
            auto it = reverse.find(rgb);
            if (it == reverse.end())
            {
                ++hard_misses;
                if (hard_misses <= 4)
                {
                    DBG_LOGF("build_global_palette_stream: miss at pixel=%zu rgb=(%u,%u,%u)",
                             i,
                             static_cast<unsigned>(px[0]),
                             static_cast<unsigned>(px[1]),
                             static_cast<unsigned>(px[2]));
                }
                out.indices.clear();
                out.bits = 0;
                out.valid = false;
                return false;
            }
            out.indices[i] = it->second;
        }

            out.bits = palette_bits_for_size(gpal.colors.size());

        out.valid = true;
        return true;
    }

    static std::string describe_global_palette_rebuild_failure(const uint8_t* frame,
                                                               size_t frame_size,
                                                               int width,
                                                               int height)
    {
        std::lock_guard<std::mutex> lock(g_gpalMutex);
        std::ostringstream oss;
        const size_t pixel_count = static_cast<size_t>(width) * static_cast<size_t>(height);
        const size_t expected_size = pixel_count * CHANNELS;

        if (!g_engineGlobalPalette.loaded)
        {
            oss << "global palette not loaded";
            return oss.str();
        }

        if (frame_size < expected_size)
        {
            oss << "reference frame too small (size=" << frame_size
                << ", expected=" << expected_size << ")";
            return oss.str();
        }

        std::unordered_map<uint32_t, uint32_t> reverse;
        reverse.reserve(g_engineGlobalPalette.colors.size());
        for (size_t i = 0; i < g_engineGlobalPalette.colors.size(); ++i)
            reverse[g_engineGlobalPalette.colors[i]] = static_cast<uint32_t>(i);

        for (size_t i = 0; i < pixel_count; ++i)
        {
            const uint8_t* px = frame + i * CHANNELS;
            const uint32_t rgb = canonicalize_near_black_rgb24(pack_rgb(px));
            if (reverse.find(rgb) == reverse.end())
            {
                const int x = width > 0 ? static_cast<int>(i % static_cast<size_t>(width)) : 0;
                const int y = width > 0 ? static_cast<int>(i / static_cast<size_t>(width)) : 0;
                oss << "global palette canonical-match miss at pixel=" << i
                    << " (x=" << x << ", y=" << y << ")"
                    << " rgb=(" << static_cast<unsigned>(px[0])
                    << "," << static_cast<unsigned>(px[1])
                    << "," << static_cast<unsigned>(px[2]) << ")"
                    << " canonical_rgb=(" << static_cast<unsigned>(rgb & 0xFFu)
                    << "," << static_cast<unsigned>((rgb >> 8) & 0xFFu)
                    << "," << static_cast<unsigned>((rgb >> 16) & 0xFFu) << ")"
                    << " palette_source=baked project palette"
                    << " global_palette_colors=" << g_engineGlobalPalette.colors.size();
                return oss.str();
            }
        }

        oss << "global palette rebuild failed for unknown reason";
        return oss.str();
    }

    static std::string describe_local_palette_rebuild_failure(size_t frame_size,
                                                              int width,
                                                              int height)
    {
        std::ostringstream oss;
        const size_t expected_size = static_cast<size_t>(width) * static_cast<size_t>(height) * CHANNELS;
        if (frame_size < expected_size)
        {
            oss << "reference frame too small (size=" << frame_size
                << ", expected=" << expected_size << ")";
        }
        else
        {
            oss << "reference frame exceeds local palette limits (>4096 unique colors)";
        }
        return oss.str();
    }

    struct ReferenceFrame
    {
        FramePtr frame;
        std::shared_ptr<FramePaletteStream> palette;
    };

    class ReferenceFrameBuffer
    {
    public:
        void clear()
        {
            frames_.clear();
            start_ = 0;
            width_ = 0;
            height_ = 0;
        }
        
        void setGlobalPaletteMode(bool enabled)
        {
            use_global_palette_ = enabled;
        }
        
        void push(FramePtr frame,
                  int width,
                  int height,
                  std::shared_ptr<FramePaletteStream> palette_override = nullptr)
        {
            width_ = width;
            height_ = height;

            ReferenceFrame ref;
            ref.frame = std::move(frame);
            if (palette_override)
            {
                ref.palette = std::move(palette_override);
            }
            else
            {
                // Eagerly build the palette stream now (matching the encoder's
                // ref_buffer.push() which always builds immediately).  This
                // avoids a lazy-build failure later when a palette-delta frame
                // references this entry.
                ref.palette = std::make_shared<FramePaletteStream>();
                if (ref.frame && width > 0 && height > 0)
                {
                    if (use_global_palette_)
                    {
                        std::lock_guard<std::mutex> lock(g_gpalMutex);
                        if (g_engineGlobalPalette.loaded)
                        {
                            build_global_palette_stream(ref.frame->data(), ref.frame->size(),
                                                        width, height, g_engineGlobalPalette, *ref.palette);
                        }
                    }
                    else
                    {
                        build_frame_palette_stream(ref.frame->data(), ref.frame->size(),
                                                   width, height, 4096, *ref.palette);
                    }
                }
            }

            if (frames_.size() < MAX_REF_FRAMES)
            {
                frames_.push_back(std::move(ref));
                return;
            }
            frames_[start_] = std::move(ref);
            start_ = (start_ + 1) % MAX_REF_FRAMES;
        }
        
        FramePtr get(size_t idx) const
        {
            return frames_[(start_ + idx) % frames_.size()].frame;
        }

        std::shared_ptr<FramePaletteStream> get_palette(size_t idx)
        {
            auto& ref = frames_[(start_ + idx) % frames_.size()];
            // Lazy palette build: only compute on first access
            if (!ref.palette->valid && ref.frame && width_ > 0 && height_ > 0)
            {
                bool built = false;
                if (use_global_palette_)
                {
                    std::lock_guard<std::mutex> lock(g_gpalMutex);
                    if (g_engineGlobalPalette.loaded)
                    {
                        built = build_global_palette_stream(ref.frame->data(), ref.frame->size(),
                                                            width_, height_, g_engineGlobalPalette, *ref.palette);
                    }
                }
                else
                {
                    built = build_frame_palette_stream(ref.frame->data(), ref.frame->size(),
                                                       width_, height_, 4096, *ref.palette);
                }

                if (!built)
                {
                    DBG_LOGF("refBuffer.get_palette: rebuild failed for ref=%zu mode=%s frameSize=%zu dims=%dx%d",
                             idx,
                             use_global_palette_ ? "global" : "local",
                             ref.frame ? ref.frame->size() : 0,
                             width_,
                             height_);
                }
            }
            return ref.palette;
        }
        
        size_t size() const { return frames_.size(); }
        bool empty() const { return frames_.empty(); }
        
    private:
        std::vector<ReferenceFrame> frames_;
        size_t start_ = 0;
        int width_ = 0;
        int height_ = 0;
        bool use_global_palette_ = false;
    };

    // ========================================================================
    // Varint / ULEB Reading
    // ========================================================================

    inline uint64_t read_uleb_stream(std::istream &in)
    {
        uint64_t v = 0;
        int shift = 0;
        for (;;)
        {
            int c = in.get();
            if (c == EOF) throw std::runtime_error("PVX: unexpected EOF reading uleb");
            uint8_t b = static_cast<uint8_t>(c);
            v |= uint64_t(b & 0x7F) << shift;
            if ((b & 0x80) == 0) break;
            shift += 7;
            if (shift > 63) throw std::runtime_error("PVX: uleb overflow");
        }
        return v;
    }

    const uint8_t* read_uleb(const uint8_t* p, const uint8_t* end, uint64_t& v)
    {
        v = 0;
        int s = 0;
        while (p < end)
        {
            uint8_t b = *p++;
            v |= uint64_t(b & 0x7F) << s;
            if (!(b & 0x80)) return p;
            s += 7;
            if (s > 63) throw std::runtime_error("PVX uleb overflow");
        }
        throw std::runtime_error("PVX uleb truncated");
    }

    // ========================================================================
    // Bitpacking for filter codes
    // ========================================================================

    uint8_t bitpack_read3(const uint8_t* buf, size_t nbytes, uint32_t& bitpos)
    {
        uint8_t v = 0;
        for (int i = 0; i < 3; ++i)
        {
            uint32_t by = bitpos >> 3;
            if (by >= nbytes) throw std::runtime_error("PVX codes oob");
            uint32_t bi = bitpos & 7u;
            v |= uint8_t(((buf[by] >> bi) & 1u) << i);
            ++bitpos;
        }
        return v;
    }

    // ========================================================================
    // Prediction Functions
    // ========================================================================

    inline uint8_t paeth(uint8_t a, uint8_t b, uint8_t c)
    {
        int p = int(a) + int(b) - int(c);
        int pa = std::abs(p - int(a));
        int pb = std::abs(p - int(b));
        int pc = std::abs(p - int(c));
        return (pa <= pb && pa <= pc) ? a : (pb <= pc ? b : c);
    }

    inline uint8_t gradient_predict(uint8_t L, uint8_t U, uint8_t UL)
    {
        int predict = int(L) + int(U) - int(UL);
        int lo = (int(L) < int(U)) ? int(L) : int(U);
        int hi = (int(L) > int(U)) ? int(L) : int(U);
        // Clamp predict to [lo, hi]
        if (predict < lo) predict = lo;
        if (predict > hi) predict = hi;
        return static_cast<uint8_t>(predict);
    }

    static inline uint8_t gradient_predict_fast(uint8_t L, uint8_t U, uint8_t UL)
    {
        const int l = static_cast<int>(L);
        const int u = static_cast<int>(U);
        int predict = l + u - static_cast<int>(UL);
        const int lo = (l < u) ? l : u;
        const int hi = (l > u) ? l : u;

        const int dLo = predict - lo;
        predict -= dLo & (dLo >> 31);

        const int dHi = hi - predict;
        predict += dHi & (dHi >> 31);

        return static_cast<uint8_t>(predict);
    }

    static inline void decode_filter_grad_row(uint8_t* __restrict dst,
                                              const uint8_t* __restrict resid,
                                              const uint8_t* __restrict prev,
                                              int width)
    {
        uint8_t L = 0;
        uint8_t UL = 0;

        int i = 0;
        for (; i + 4 <= width; i += 4)
        {
            uint8_t U0 = prev[i + 0];
            uint8_t G0 = gradient_predict_fast(L, U0, UL);
            L = static_cast<uint8_t>((resid[i + 0] + G0) & 0xFF);
            dst[i + 0] = L;
            UL = U0;

            uint8_t U1 = prev[i + 1];
            uint8_t G1 = gradient_predict_fast(L, U1, UL);
            L = static_cast<uint8_t>((resid[i + 1] + G1) & 0xFF);
            dst[i + 1] = L;
            UL = U1;

            uint8_t U2 = prev[i + 2];
            uint8_t G2 = gradient_predict_fast(L, U2, UL);
            L = static_cast<uint8_t>((resid[i + 2] + G2) & 0xFF);
            dst[i + 2] = L;
            UL = U2;

            uint8_t U3 = prev[i + 3];
            uint8_t G3 = gradient_predict_fast(L, U3, UL);
            L = static_cast<uint8_t>((resid[i + 3] + G3) & 0xFF);
            dst[i + 3] = L;
            UL = U3;
        }

        for (; i < width; ++i)
        {
            uint8_t U = prev[i];
            uint8_t G = gradient_predict_fast(L, U, UL);
            L = static_cast<uint8_t>((resid[i] + G) & 0xFF);
            dst[i] = L;
            UL = U;
        }
    }

    // ========================================================================
    // QPC Instrumented Timing
    // ========================================================================

#ifdef _WIN32
    struct QPCTimer
    {
        LARGE_INTEGER freq{};
        LARGE_INTEGER start{};
        QPCTimer() { QueryPerformanceFrequency(&freq); }
        void begin() { QueryPerformanceCounter(&start); }
        double elapsedMs()
        {
            LARGE_INTEGER now;
            QueryPerformanceCounter(&now);
            return double(now.QuadPart - start.QuadPart) * 1000.0 / double(freq.QuadPart);
        }
    };

    // Accumulating timer for per-stage averages (reported every N frames).
    struct DecodeTimingStats
    {
        double filterMs  = 0.0;
        double ycocgMs   = 0.0;
        double totalMs   = 0.0;
        uint64_t modeRows[6] = {0,0,0,0,0,0};
        int    count     = 0;
        static constexpr int kReportInterval = 60; // log every 60 frames

        void accumulate(double filter, double ycocg, double total, const uint64_t* modes)
        {
            filterMs += filter;
            ycocgMs  += ycocg;
            totalMs  += total;
            for (int i = 0; i < 6; ++i) modeRows[i] += modes[i];
            if (++count >= kReportInterval)
            {
                uint64_t rowsTotal = 0;
                for (int i = 0; i < 6; ++i) rowsTotal += modeRows[i];
                const double invRows = rowsTotal ? (100.0 / static_cast<double>(rowsTotal)) : 0.0;
                DBG_LOGF("decode_keyframe avg over %d frames: filter=%.2fms  ycocg=%.2fms  total=%.2fms",
                         count, filterMs / count, ycocgMs / count, totalMs / count);
                DBG_LOGF("decode_keyframe filters %%: none=%.1f sub=%.1f up=%.1f avg=%.1f paeth=%.1f grad=%.1f",
                         modeRows[FILTER_NONE] * invRows,
                         modeRows[FILTER_SUB]  * invRows,
                         modeRows[FILTER_UP]   * invRows,
                         modeRows[FILTER_AVG]  * invRows,
                         modeRows[FILTER_PAETH]* invRows,
                         modeRows[FILTER_GRAD] * invRows);
                filterMs = ycocgMs = totalMs = 0.0;
                for (int i = 0; i < 6; ++i) modeRows[i] = 0;
                count = 0;
            }
        }
    };

    static DecodeTimingStats g_decodeStats;
#endif

    // ========================================================================
    // YCoCg-R Inverse Transform  (legacy scalar — kept for non-SIMD path)
    // ========================================================================

    void ycocg_r_to_rgb(uint8_t* data, size_t width, size_t height)
    {
        const size_t pixel_count = width * height;
        for (size_t i = 0; i < pixel_count; ++i)
        {
            uint8_t* p = data + i * 3;
            int Y  = p[0];
            int Co = static_cast<int8_t>(p[1]);
            int Cg = static_cast<int8_t>(p[2]);
            int t = Y - (Cg >> 1);
            int G = (Cg + t) & 0xFF;
            int B = (t - (Co >> 1)) & 0xFF;
            int R = (Co + B) & 0xFF;
            p[0] = static_cast<uint8_t>(R);
            p[1] = static_cast<uint8_t>(G);
            p[2] = static_cast<uint8_t>(B);
        }
    }

    // ========================================================================
    // SIMD: Planar YCoCg-R → Interleaved RGB  (SSE2 — 16 pixels/iteration)
    // ========================================================================
    //
    // Reads three separate planes (Y, Co, Cg) and writes interleaved RGB24.
    // Every pixel is independent, so this is embarrassingly parallel.
    //
    // The inverse transform (wrapping, NOT clamping):
    //   t = Y  - (Cg >> 1)        (arithmetic shift, signed)
    //   G = (Cg + t) & 0xFF
    //   B = (t  - (Co >> 1)) & 0xFF
    //   R = (Co + B) & 0xFF

    static void planar_ycocg_to_rgb_scalar(
        const uint8_t* __restrict yPlane,
        const uint8_t* __restrict coPlane,
        const uint8_t* __restrict cgPlane,
        uint8_t* __restrict rgb,
        size_t pixel_count)
    {
        for (size_t i = 0; i < pixel_count; ++i)
        {
            int Y  = yPlane[i];
            int Co = static_cast<int8_t>(coPlane[i]);
            int Cg = static_cast<int8_t>(cgPlane[i]);
            int t  = Y - (Cg >> 1);
            int G  = (Cg + t) & 0xFF;
            int B  = (t - (Co >> 1)) & 0xFF;
            int R  = (Co + B) & 0xFF;
            rgb[i * 3 + 0] = static_cast<uint8_t>(R);
            rgb[i * 3 + 1] = static_cast<uint8_t>(G);
            rgb[i * 3 + 2] = static_cast<uint8_t>(B);
        }
    }

    static inline void interleave_16_rgb_ssse3(
        __m128i r8,
        __m128i g8,
        __m128i b8,
        uint8_t* __restrict dst)
    {
        static const __m128i shuf_R0 = _mm_setr_epi8(0, -1, -1, 1, -1, -1, 2, -1, -1, 3, -1, -1, 4, -1, -1, 5);
        static const __m128i shuf_G0 = _mm_setr_epi8(-1, 0, -1, -1, 1, -1, -1, 2, -1, -1, 3, -1, -1, 4, -1, -1);
        static const __m128i shuf_B0 = _mm_setr_epi8(-1, -1, 0, -1, -1, 1, -1, -1, 2, -1, -1, 3, -1, -1, 4, -1);

        static const __m128i shuf_R1 = _mm_setr_epi8(-1, -1, 6, -1, -1, 7, -1, -1, 8, -1, -1, 9, -1, -1, 10, -1);
        static const __m128i shuf_G1 = _mm_setr_epi8(5, -1, -1, 6, -1, -1, 7, -1, -1, 8, -1, -1, 9, -1, -1, 10);
        static const __m128i shuf_B1 = _mm_setr_epi8(-1, 5, -1, -1, 6, -1, -1, 7, -1, -1, 8, -1, -1, 9, -1, -1);

        static const __m128i shuf_R2 = _mm_setr_epi8(-1, 11, -1, -1, 12, -1, -1, 13, -1, -1, 14, -1, -1, 15, -1, -1);
        static const __m128i shuf_G2 = _mm_setr_epi8(-1, -1, 11, -1, -1, 12, -1, -1, 13, -1, -1, 14, -1, -1, 15, -1);
        static const __m128i shuf_B2 = _mm_setr_epi8(10, -1, -1, 11, -1, -1, 12, -1, -1, 13, -1, -1, 14, -1, -1, 15);

        __m128i out0 = _mm_or_si128(_mm_or_si128(_mm_shuffle_epi8(r8, shuf_R0), _mm_shuffle_epi8(g8, shuf_G0)), _mm_shuffle_epi8(b8, shuf_B0));
        __m128i out1 = _mm_or_si128(_mm_or_si128(_mm_shuffle_epi8(r8, shuf_R1), _mm_shuffle_epi8(g8, shuf_G1)), _mm_shuffle_epi8(b8, shuf_B1));
        __m128i out2 = _mm_or_si128(_mm_or_si128(_mm_shuffle_epi8(r8, shuf_R2), _mm_shuffle_epi8(g8, shuf_G2)), _mm_shuffle_epi8(b8, shuf_B2));

        _mm_storeu_si128(reinterpret_cast<__m128i*>(dst + 0), out0);
        _mm_storeu_si128(reinterpret_cast<__m128i*>(dst + 16), out1);
        _mm_storeu_si128(reinterpret_cast<__m128i*>(dst + 32), out2);
    }

    // SSE2 version — processes 16 pixels per iteration.
    // Uses 16-bit intermediates to handle signed arithmetic correctly.
    static void planar_ycocg_to_rgb_sse2(
        const uint8_t* __restrict yPlane,
        const uint8_t* __restrict coPlane,
        const uint8_t* __restrict cgPlane,
        uint8_t* __restrict rgb,
        size_t pixel_count)
    {
        const __m128i zero = _mm_setzero_si128();
        const __m128i mask_ff = _mm_set1_epi16(0xFF);
        const __m128i m127 = _mm_set1_epi16(127);
        const __m128i m256 = _mm_set1_epi16(256);

        size_t i = 0;
        for (; i + 16 <= pixel_count; i += 16)
        {
            // Load 16 bytes from each plane
            __m128i vY  = _mm_loadu_si128(reinterpret_cast<const __m128i*>(yPlane  + i));
            __m128i vCo = _mm_loadu_si128(reinterpret_cast<const __m128i*>(coPlane + i));
            __m128i vCg = _mm_loadu_si128(reinterpret_cast<const __m128i*>(cgPlane + i));

            // Process low 8 pixels: unpack to 16-bit with sign extension for Co/Cg
            __m128i yLo  = _mm_unpacklo_epi8(vY,  zero);  // unsigned Y  → u16
            __m128i coLo = _mm_unpacklo_epi8(vCo, zero);
            coLo = _mm_sub_epi16(coLo, _mm_and_si128(_mm_cmpgt_epi16(coLo, m127), m256));
            __m128i cgLo = _mm_unpacklo_epi8(vCg, zero);
            cgLo = _mm_sub_epi16(cgLo, _mm_and_si128(_mm_cmpgt_epi16(cgLo, m127), m256));

            // t = Y - (Cg >> 1)   (arithmetic right shift on signed 16-bit)
            __m128i tLo = _mm_sub_epi16(yLo, _mm_srai_epi16(cgLo, 1));
            // G = (Cg + t) & 0xFF
            __m128i gLo = _mm_and_si128(_mm_add_epi16(cgLo, tLo), mask_ff);
            // B = (t - (Co >> 1)) & 0xFF
            __m128i bLo = _mm_and_si128(_mm_sub_epi16(tLo, _mm_srai_epi16(coLo, 1)), mask_ff);
            // R = (Co + B) & 0xFF
            __m128i rLo = _mm_and_si128(_mm_add_epi16(coLo, bLo), mask_ff);

            // Process high 8 pixels
            __m128i yHi  = _mm_unpackhi_epi8(vY,  zero);
            __m128i coHi = _mm_unpackhi_epi8(vCo, zero);
            coHi = _mm_sub_epi16(coHi, _mm_and_si128(_mm_cmpgt_epi16(coHi, m127), m256));
            __m128i cgHi = _mm_unpackhi_epi8(vCg, zero);
            cgHi = _mm_sub_epi16(cgHi, _mm_and_si128(_mm_cmpgt_epi16(cgHi, m127), m256));

            __m128i tHi = _mm_sub_epi16(yHi, _mm_srai_epi16(cgHi, 1));
            __m128i gHi = _mm_and_si128(_mm_add_epi16(cgHi, tHi), mask_ff);
            __m128i bHi = _mm_and_si128(_mm_sub_epi16(tHi, _mm_srai_epi16(coHi, 1)), mask_ff);
            __m128i rHi = _mm_and_si128(_mm_add_epi16(coHi, bHi), mask_ff);

            // Pack 16-bit results back to 8-bit
            __m128i r8 = _mm_packus_epi16(rLo, rHi);  // 16 R bytes
            __m128i g8 = _mm_packus_epi16(gLo, gHi);  // 16 G bytes
            __m128i b8 = _mm_packus_epi16(bLo, bHi);  // 16 B bytes

            uint8_t* dst = rgb + i * 3;
            interleave_16_rgb_ssse3(r8, g8, b8, dst);
        }

        // Scalar tail
        planar_ycocg_to_rgb_scalar(yPlane + i, coPlane + i, cgPlane + i, rgb + i * 3, pixel_count - i);
    }

    // AVX2 version — processes 32 pixels per iteration.
#if defined(__clang__) || defined(__GNUC__)
    __attribute__((target("avx2")))
#endif
    static void planar_ycocg_to_rgb_avx2(
        const uint8_t* __restrict yPlane,
        const uint8_t* __restrict coPlane,
        const uint8_t* __restrict cgPlane,
        uint8_t* __restrict rgb,
        size_t pixel_count)
    {
        const __m256i zero   = _mm256_setzero_si256();
        const __m256i mff    = _mm256_set1_epi16(0xFF);
        const __m256i m127   = _mm256_set1_epi16(127);
        const __m256i m256w  = _mm256_set1_epi16(256);

        size_t i = 0;
        for (; i + 32 <= pixel_count; i += 32)
        {
            __m256i vY  = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(yPlane  + i));
            __m256i vCo = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(coPlane + i));
            __m256i vCg = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(cgPlane + i));

            // --- low 16 pixels ---
            __m256i yLo  = _mm256_unpacklo_epi8(vY,  zero);
            __m256i coLo = _mm256_unpacklo_epi8(vCo, zero);
            coLo = _mm256_sub_epi16(coLo, _mm256_and_si256(_mm256_cmpgt_epi16(coLo, m127), m256w));
            __m256i cgLo = _mm256_unpacklo_epi8(vCg, zero);
            cgLo = _mm256_sub_epi16(cgLo, _mm256_and_si256(_mm256_cmpgt_epi16(cgLo, m127), m256w));

            __m256i tLo = _mm256_sub_epi16(yLo, _mm256_srai_epi16(cgLo, 1));
            __m256i gLo = _mm256_and_si256(_mm256_add_epi16(cgLo, tLo), mff);
            __m256i bLo = _mm256_and_si256(_mm256_sub_epi16(tLo, _mm256_srai_epi16(coLo, 1)), mff);
            __m256i rLo = _mm256_and_si256(_mm256_add_epi16(coLo, bLo), mff);

            // --- high 16 pixels ---
            __m256i yHi  = _mm256_unpackhi_epi8(vY,  zero);
            __m256i coHi = _mm256_unpackhi_epi8(vCo, zero);
            coHi = _mm256_sub_epi16(coHi, _mm256_and_si256(_mm256_cmpgt_epi16(coHi, m127), m256w));
            __m256i cgHi = _mm256_unpackhi_epi8(vCg, zero);
            cgHi = _mm256_sub_epi16(cgHi, _mm256_and_si256(_mm256_cmpgt_epi16(cgHi, m127), m256w));

            __m256i tHi = _mm256_sub_epi16(yHi, _mm256_srai_epi16(cgHi, 1));
            __m256i gHi = _mm256_and_si256(_mm256_add_epi16(cgHi, tHi), mff);
            __m256i bHi = _mm256_and_si256(_mm256_sub_epi16(tHi, _mm256_srai_epi16(coHi, 1)), mff);
            __m256i rHi = _mm256_and_si256(_mm256_add_epi16(coHi, bHi), mff);

            // Pack back to 8-bit
            __m256i r8 = _mm256_packus_epi16(rLo, rHi);
            __m256i g8 = _mm256_packus_epi16(gLo, gHi);
            __m256i b8 = _mm256_packus_epi16(bLo, bHi);

            uint8_t* dst = rgb + i * 3;

            // Lower 16 pixels
            __m128i r8_lo = _mm256_castsi256_si128(r8);
            __m128i g8_lo = _mm256_castsi256_si128(g8);
            __m128i b8_lo = _mm256_castsi256_si128(b8);

            interleave_16_rgb_ssse3(r8_lo, g8_lo, b8_lo, dst);

            // Upper 16 pixels
            __m128i r8_hi = _mm256_extracti128_si256(r8, 1);
            __m128i g8_hi = _mm256_extracti128_si256(g8, 1);
            __m128i b8_hi = _mm256_extracti128_si256(b8, 1);

            interleave_16_rgb_ssse3(r8_hi, g8_hi, b8_hi, dst + 48);
        }

        // Tail via SSE2 or scalar
        if (i < pixel_count)
            planar_ycocg_to_rgb_sse2(yPlane + i, coPlane + i, cgPlane + i, rgb + i * 3, pixel_count - i);
    }

    // Runtime dispatch — thread-safe cached function pointer (SimdDispatchCache,
    // see game.h; same mechanism backs render.cpp's converter cache).
    using YCoCgConvertFunc = void(*)(const uint8_t*, const uint8_t*, const uint8_t*, uint8_t*, size_t);

    static void planar_ycocg_to_rgb(
        const uint8_t* yPlane, const uint8_t* coPlane, const uint8_t* cgPlane,
        uint8_t* rgb, size_t pixel_count)
    {
        static SimdDispatchCache<YCoCgConvertFunc> dispatch;
        YCoCgConvertFunc fn = dispatch.get(state.simd, [](GameState::SIMDLevel level) {
            return (level >= GameState::SIMDLevel::AVX2) ? &planar_ycocg_to_rgb_avx2 : &planar_ycocg_to_rgb_sse2;
        });
        fn(yPlane, coPlane, cgPlane, rgb, pixel_count);
    }

    // ========================================================================
    // Fused: Planar YCoCg-R -> Interleaved BGRA (skips the RGB24 intermediate)
    // ========================================================================
    //
    // Display consumers currently do two full-frame passes: decode YCoCg ->
    // RGB24 here, then a second pass elsewhere (render.cpp's
    // convertRGBRowToBGRA) turns that RGB24 into the BGRA the GPU upload wants.
    // That second pass also requires a full RGB24 buffer to exist somewhere
    // first. This does both in one pass with no full-frame RGB24 buffer: the
    // YCoCg math below is identical to planar_ycocg_to_rgb_{sse2,avx2} (same
    // r8/g8/b8 vectors), but instead of writing them out as RGB24 and letting
    // a caller re-shuffle that later, each 16-pixel chunk is interleaved into a
    // small *stack* RGB24 scratch buffer and immediately re-shuffled into BGRA
    // using the same shuffle/alpha masks as convertRGBtoBGRA_SSE/_AVX2 in
    // render.cpp. The scratch buffer never leaves registers/stack and never
    // reaches the size of a frame.
    //
    // NOT YET WIRED IN: nothing calls this. PVXFile::frameData (consumed by
    // both the Vulkan and D2D backends) is cached as RGB24, so swapping a
    // decode call site to this function requires changing what the decoder
    // exposes/caches and updating every consumer of that cache, not just the
    // call site here -- see the audit summary for what's involved.

    // Converts one 16-pixel (48-byte) RGB24 scratch chunk to 16-pixel
    // (64-byte) BGRA. `rgb48` must be readable for 52 bytes (the last of the
    // four 4-pixel sub-chunks loads 16 bytes but only ever uses the first 12;
    // the trailing 4 are loaded, never read by the shuffle, and may be
    // padding/garbage -- same lookahead pattern convertRGBtoBGRA_SSE already
    // relies on for its own tail handling).
    static inline void rgb24_16px_to_bgra(const uint8_t* __restrict rgb48, uint8_t* __restrict bgra64)
    {
        static const __m128i shuffleMask = _mm_set_epi8((char)0x80, 9, 10, 11, (char)0x80, 6, 7, 8, (char)0x80, 3, 4, 5, (char)0x80, 0, 1, 2);
        static const __m128i alphaMask = _mm_set_epi8((char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0, (char)0xFF, 0, 0, 0);

        for (int chunk = 0; chunk < 4; ++chunk)
        {
            __m128i rgb = _mm_loadu_si128(reinterpret_cast<const __m128i*>(rgb48 + chunk * 12));
            __m128i shuffled = _mm_shuffle_epi8(rgb, shuffleMask);
            __m128i bgra = _mm_or_si128(shuffled, alphaMask);
            _mm_storeu_si128(reinterpret_cast<__m128i*>(bgra64 + chunk * 16), bgra);
        }
    }

    static void planar_ycocg_to_bgra_scalar(
        const uint8_t* __restrict yPlane,
        const uint8_t* __restrict coPlane,
        const uint8_t* __restrict cgPlane,
        uint8_t* __restrict bgra,
        size_t pixel_count)
    {
        for (size_t i = 0; i < pixel_count; ++i)
        {
            int Y  = yPlane[i];
            int Co = static_cast<int8_t>(coPlane[i]);
            int Cg = static_cast<int8_t>(cgPlane[i]);
            int t  = Y - (Cg >> 1);
            int G  = (Cg + t) & 0xFF;
            int B  = (t - (Co >> 1)) & 0xFF;
            int R  = (Co + B) & 0xFF;
            bgra[i * 4 + 0] = static_cast<uint8_t>(B);
            bgra[i * 4 + 1] = static_cast<uint8_t>(G);
            bgra[i * 4 + 2] = static_cast<uint8_t>(R);
            bgra[i * 4 + 3] = 255;
        }
    }

    // SSE2 version — 16 pixels/iteration. r8/g8/b8 computation is identical to
    // planar_ycocg_to_rgb_sse2; only the final store differs.
    static void planar_ycocg_to_bgra_sse2(
        const uint8_t* __restrict yPlane,
        const uint8_t* __restrict coPlane,
        const uint8_t* __restrict cgPlane,
        uint8_t* __restrict bgra,
        size_t pixel_count)
    {
        const __m128i zero = _mm_setzero_si128();
        const __m128i mask_ff = _mm_set1_epi16(0xFF);
        const __m128i m127 = _mm_set1_epi16(127);
        const __m128i m256 = _mm_set1_epi16(256);

        size_t i = 0;
        for (; i + 16 <= pixel_count; i += 16)
        {
            __m128i vY  = _mm_loadu_si128(reinterpret_cast<const __m128i*>(yPlane  + i));
            __m128i vCo = _mm_loadu_si128(reinterpret_cast<const __m128i*>(coPlane + i));
            __m128i vCg = _mm_loadu_si128(reinterpret_cast<const __m128i*>(cgPlane + i));

            __m128i yLo  = _mm_unpacklo_epi8(vY,  zero);
            __m128i coLo = _mm_unpacklo_epi8(vCo, zero);
            coLo = _mm_sub_epi16(coLo, _mm_and_si128(_mm_cmpgt_epi16(coLo, m127), m256));
            __m128i cgLo = _mm_unpacklo_epi8(vCg, zero);
            cgLo = _mm_sub_epi16(cgLo, _mm_and_si128(_mm_cmpgt_epi16(cgLo, m127), m256));

            __m128i tLo = _mm_sub_epi16(yLo, _mm_srai_epi16(cgLo, 1));
            __m128i gLo = _mm_and_si128(_mm_add_epi16(cgLo, tLo), mask_ff);
            __m128i bLo = _mm_and_si128(_mm_sub_epi16(tLo, _mm_srai_epi16(coLo, 1)), mask_ff);
            __m128i rLo = _mm_and_si128(_mm_add_epi16(coLo, bLo), mask_ff);

            __m128i yHi  = _mm_unpackhi_epi8(vY,  zero);
            __m128i coHi = _mm_unpackhi_epi8(vCo, zero);
            coHi = _mm_sub_epi16(coHi, _mm_and_si128(_mm_cmpgt_epi16(coHi, m127), m256));
            __m128i cgHi = _mm_unpackhi_epi8(vCg, zero);
            cgHi = _mm_sub_epi16(cgHi, _mm_and_si128(_mm_cmpgt_epi16(cgHi, m127), m256));

            __m128i tHi = _mm_sub_epi16(yHi, _mm_srai_epi16(cgHi, 1));
            __m128i gHi = _mm_and_si128(_mm_add_epi16(cgHi, tHi), mask_ff);
            __m128i bHi = _mm_and_si128(_mm_sub_epi16(tHi, _mm_srai_epi16(coHi, 1)), mask_ff);
            __m128i rHi = _mm_and_si128(_mm_add_epi16(coHi, bHi), mask_ff);

            __m128i r8 = _mm_packus_epi16(rLo, rHi);
            __m128i g8 = _mm_packus_epi16(gLo, gHi);
            __m128i b8 = _mm_packus_epi16(bLo, bHi);

            alignas(16) uint8_t rgbScratch[64] = {};
            interleave_16_rgb_ssse3(r8, g8, b8, rgbScratch);
            rgb24_16px_to_bgra(rgbScratch, bgra + i * 4);
        }

        if (i < pixel_count)
            planar_ycocg_to_bgra_scalar(yPlane + i, coPlane + i, cgPlane + i, bgra + i * 4, pixel_count - i);
    }

    // AVX2 version — 32 pixels/iteration, same structure as
    // planar_ycocg_to_rgb_avx2 (two 16-pixel halves through the same SSSE3
    // interleave), just finished with rgb24_16px_to_bgra instead of a plain
    // RGB24 store.
#if defined(__clang__) || defined(__GNUC__)
    __attribute__((target("avx2")))
#endif
    static void planar_ycocg_to_bgra_avx2(
        const uint8_t* __restrict yPlane,
        const uint8_t* __restrict coPlane,
        const uint8_t* __restrict cgPlane,
        uint8_t* __restrict bgra,
        size_t pixel_count)
    {
        const __m256i zero   = _mm256_setzero_si256();
        const __m256i mff    = _mm256_set1_epi16(0xFF);
        const __m256i m127   = _mm256_set1_epi16(127);
        const __m256i m256w  = _mm256_set1_epi16(256);

        size_t i = 0;
        for (; i + 32 <= pixel_count; i += 32)
        {
            __m256i vY  = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(yPlane  + i));
            __m256i vCo = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(coPlane + i));
            __m256i vCg = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(cgPlane + i));

            __m256i yLo  = _mm256_unpacklo_epi8(vY,  zero);
            __m256i coLo = _mm256_unpacklo_epi8(vCo, zero);
            coLo = _mm256_sub_epi16(coLo, _mm256_and_si256(_mm256_cmpgt_epi16(coLo, m127), m256w));
            __m256i cgLo = _mm256_unpacklo_epi8(vCg, zero);
            cgLo = _mm256_sub_epi16(cgLo, _mm256_and_si256(_mm256_cmpgt_epi16(cgLo, m127), m256w));

            __m256i tLo = _mm256_sub_epi16(yLo, _mm256_srai_epi16(cgLo, 1));
            __m256i gLo = _mm256_and_si256(_mm256_add_epi16(cgLo, tLo), mff);
            __m256i bLo = _mm256_and_si256(_mm256_sub_epi16(tLo, _mm256_srai_epi16(coLo, 1)), mff);
            __m256i rLo = _mm256_and_si256(_mm256_add_epi16(coLo, bLo), mff);

            __m256i yHi  = _mm256_unpackhi_epi8(vY,  zero);
            __m256i coHi = _mm256_unpackhi_epi8(vCo, zero);
            coHi = _mm256_sub_epi16(coHi, _mm256_and_si256(_mm256_cmpgt_epi16(coHi, m127), m256w));
            __m256i cgHi = _mm256_unpackhi_epi8(vCg, zero);
            cgHi = _mm256_sub_epi16(cgHi, _mm256_and_si256(_mm256_cmpgt_epi16(cgHi, m127), m256w));

            __m256i tHi = _mm256_sub_epi16(yHi, _mm256_srai_epi16(cgHi, 1));
            __m256i gHi = _mm256_and_si256(_mm256_add_epi16(cgHi, tHi), mff);
            __m256i bHi = _mm256_and_si256(_mm256_sub_epi16(tHi, _mm256_srai_epi16(coHi, 1)), mff);
            __m256i rHi = _mm256_and_si256(_mm256_add_epi16(coHi, bHi), mff);

            __m256i r8 = _mm256_packus_epi16(rLo, rHi);
            __m256i g8 = _mm256_packus_epi16(gLo, gHi);
            __m256i b8 = _mm256_packus_epi16(bLo, bHi);

            uint8_t* dst = bgra + i * 4;

            __m128i r8_lo = _mm256_castsi256_si128(r8);
            __m128i g8_lo = _mm256_castsi256_si128(g8);
            __m128i b8_lo = _mm256_castsi256_si128(b8);
            alignas(16) uint8_t rgbScratchLo[64] = {};
            interleave_16_rgb_ssse3(r8_lo, g8_lo, b8_lo, rgbScratchLo);
            rgb24_16px_to_bgra(rgbScratchLo, dst);

            __m128i r8_hi = _mm256_extracti128_si256(r8, 1);
            __m128i g8_hi = _mm256_extracti128_si256(g8, 1);
            __m128i b8_hi = _mm256_extracti128_si256(b8, 1);
            alignas(16) uint8_t rgbScratchHi[64] = {};
            interleave_16_rgb_ssse3(r8_hi, g8_hi, b8_hi, rgbScratchHi);
            rgb24_16px_to_bgra(rgbScratchHi, dst + 64);
        }

        if (i < pixel_count)
            planar_ycocg_to_bgra_sse2(yPlane + i, coPlane + i, cgPlane + i, bgra + i * 4, pixel_count - i);
    }

    using YCoCgToBgraFunc = void(*)(const uint8_t*, const uint8_t*, const uint8_t*, uint8_t*, size_t);

    // Fused entry point: planar YCoCg -> interleaved BGRA, no RGB24 intermediate.
    static void planar_ycocg_to_bgra(
        const uint8_t* yPlane, const uint8_t* coPlane, const uint8_t* cgPlane,
        uint8_t* bgra, size_t pixel_count)
    {
        static SimdDispatchCache<YCoCgToBgraFunc> dispatch;
        YCoCgToBgraFunc fn = dispatch.get(state.simd, [](GameState::SIMDLevel level) {
            return (level >= GameState::SIMDLevel::AVX2) ? &planar_ycocg_to_bgra_avx2 : &planar_ycocg_to_bgra_sse2;
        });
        fn(yPlane, coPlane, cgPlane, bgra, pixel_count);
    }

    // ========================================================================
    // SIMD Row Filter Helpers
    // ========================================================================

    // FILTER_UP:  dst[i] = (resid[i] + prev_row[i]) & 0xFF — fully parallel.
    //
    // For 1920-wide planar rows:
    //   AVX2 = 60 iterations  (32 bytes/iter)
    //   SSE2 = 120 iterations (16 bytes/iter)

    static void filter_up_sse2(uint8_t* __restrict dst,
                               const uint8_t* __restrict resid,
                               const uint8_t* __restrict prev,
                               int width)
    {
        int i = 0;
        for (; i + 16 <= width; i += 16)
        {
            __m128i r = _mm_loadu_si128(reinterpret_cast<const __m128i*>(resid + i));
            __m128i u = _mm_loadu_si128(reinterpret_cast<const __m128i*>(prev  + i));
            _mm_storeu_si128(reinterpret_cast<__m128i*>(dst + i), _mm_add_epi8(r, u));
        }
        for (; i < width; ++i)
            dst[i] = static_cast<uint8_t>((resid[i] + prev[i]) & 0xFF);
    }

#if defined(__clang__) || defined(__GNUC__)
    __attribute__((target("avx2")))
#endif
    static void filter_up_avx2(uint8_t* __restrict dst,
                               const uint8_t* __restrict resid,
                               const uint8_t* __restrict prev,
                               int width)
    {
        int i = 0;
        for (; i + 32 <= width; i += 32)
        {
            __m256i r = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(resid + i));
            __m256i u = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(prev  + i));
            _mm256_storeu_si256(reinterpret_cast<__m256i*>(dst + i), _mm256_add_epi8(r, u));
        }
        // SSE2 tail for 16..31 remaining bytes
        for (; i + 16 <= width; i += 16)
        {
            __m128i r = _mm_loadu_si128(reinterpret_cast<const __m128i*>(resid + i));
            __m128i u = _mm_loadu_si128(reinterpret_cast<const __m128i*>(prev  + i));
            _mm_storeu_si128(reinterpret_cast<__m128i*>(dst + i), _mm_add_epi8(r, u));
        }
        for (; i < width; ++i)
            dst[i] = static_cast<uint8_t>((resid[i] + prev[i]) & 0xFF);
    }

    // Runtime-dispatched filter_up — uses best available SIMD
    using FilterUpFunc = void(*)(uint8_t*, const uint8_t*, const uint8_t*, int);

    static void filter_up(uint8_t* __restrict dst,
                          const uint8_t* __restrict resid,
                          const uint8_t* __restrict prev,
                          int width)
    {
        static SimdDispatchCache<FilterUpFunc> dispatch;
        FilterUpFunc fn = dispatch.get(state.simd, [](GameState::SIMDLevel level) {
            return (level >= GameState::SIMDLevel::AVX2) ? &filter_up_avx2 : &filter_up_sse2;
        });
        fn(dst, resid, prev, width);
    }

    // FILTER_NONE:  dst[i] = resid[i] — memcpy (already fast, just an alias).
    // (kept inline for consistency in the switch)

    // prev_row copy — SIMD memcpy for row-width buffers.
    static void copy_row_sse2(uint8_t* __restrict dst,
                              const uint8_t* __restrict src,
                              int width)
    {
        int i = 0;
        for (; i + 16 <= width; i += 16)
        {
            __m128i v = _mm_loadu_si128(reinterpret_cast<const __m128i*>(src + i));
            _mm_storeu_si128(reinterpret_cast<__m128i*>(dst + i), v);
        }
        if (i < width)
            std::memcpy(dst + i, src + i, static_cast<size_t>(width - i));
    }

#if defined(__clang__) || defined(__GNUC__)
    __attribute__((target("avx2")))
#endif
    static void copy_row_avx2(uint8_t* __restrict dst,
                              const uint8_t* __restrict src,
                              int width)
    {
        int i = 0;
        for (; i + 32 <= width; i += 32)
        {
            __m256i v = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(src + i));
            _mm256_storeu_si256(reinterpret_cast<__m256i*>(dst + i), v);
        }
        if (i < width)
            std::memcpy(dst + i, src + i, static_cast<size_t>(width - i));
    }

    // Runtime-dispatched copy_row
    using CopyRowFunc = void(*)(uint8_t*, const uint8_t*, int);

    static void copy_row(uint8_t* __restrict dst,
                         const uint8_t* __restrict src,
                         int width)
    {
        static SimdDispatchCache<CopyRowFunc> dispatch;
        CopyRowFunc fn = dispatch.get(state.simd, [](GameState::SIMDLevel level) {
            return (level >= GameState::SIMDLevel::AVX2) ? &copy_row_avx2 : &copy_row_sse2;
        });
        fn(dst, src, width);
    }

    // ========================================================================
    // Planar to Interleaved Layout (legacy — still used by batch decoder)
    // ========================================================================

    std::vector<uint8_t> planar_to_interleaved(const uint8_t* data, size_t width, size_t height)
    {
        const size_t pixel_count = width * height;
        std::vector<uint8_t> out(pixel_count * 3);
        const uint8_t* plane0 = data;
        const uint8_t* plane1 = data + pixel_count;
        const uint8_t* plane2 = data + pixel_count * 2;
        for (size_t i = 0; i < pixel_count; ++i)
        {
            out[i * 3 + 0] = plane0[i];
            out[i * 3 + 1] = plane1[i];
            out[i * 3 + 2] = plane2[i];
        }
        return out;
    }

    // ========================================================================
    // Keyframe Decoding (YCoCg-R + Planar + Row Filters)
    //
    // This version accepts pre-allocated scratch buffers to eliminate the
    // 12 MB/frame heap churn (planar + rgb) that was killing throughput.
    // ========================================================================

    static void decode_keyframe_into(
        const uint8_t* payload, size_t payloadSize,
        int width, int height,
        std::vector<uint8_t>& planar,   // scratch — will be resized if needed
        std::vector<uint8_t>& rgb,      // output  — will be resized if needed
        std::vector<uint32_t>& runLengths)
    {
#ifdef _WIN32
        QPCTimer timer;
        timer.begin();
#endif
        const size_t pixel_count = static_cast<size_t>(width) * height;

        const uint8_t* p = payload;
        const uint8_t* e = p + payloadSize;

        uint64_t rows = 0, code_bytes_per_plane = 0;
        p = read_uleb(p, e, rows);
        p = read_uleb(p, e, code_bytes_per_plane);

        if (static_cast<int>(rows) != height) throw std::runtime_error("PVX keyframe rows mismatch");
        if (code_bytes_per_plane > static_cast<uint64_t>(e - p))
            throw std::runtime_error("PVX keyframe row-filter codes truncated");
        if (code_bytes_per_plane > std::numeric_limits<uint64_t>::max() / 3)
            throw std::runtime_error("PVX keyframe row-filter codes too large");
        const uint64_t code_bytes_total = code_bytes_per_plane * 3;
        if (code_bytes_total > static_cast<uint64_t>(e - p))
            throw std::runtime_error("PVX keyframe row-filter codes truncated");

        std::array<const uint8_t*, 3> plane_codes;
        for (int plane = 0; plane < 3; ++plane)
        {
            plane_codes[plane] = p;
            p += code_bytes_per_plane;
        }

        if (pixel_count > static_cast<size_t>(e - p) / 3)
            throw std::runtime_error("PVX keyframe residuals truncated");

        std::array<const uint8_t*, 3> plane_residuals;
        for (int plane = 0; plane < 3; ++plane)
        {
            plane_residuals[plane] = p;
            p += pixel_count;
        }

        // Ensure scratch buffers are large enough (no-op after first frame).
        if (planar.size() < pixel_count * 3) planar.resize(pixel_count * 3);
        if (rgb.size()    < pixel_count * 3) rgb.resize(pixel_count * 3);

        // ---- Row-filter decode (per-plane) ----
        alignas(64) uint8_t zero_row[7680] = {};
        if (width > 7680) throw std::runtime_error("PVX width exceeds row buffer");
        [[assume(width <= 7680)]]; // communicates the invariant just checked above to the optimizer

#ifdef _WIN32
        uint64_t modeCounts[6] = {0,0,0,0,0,0};
#endif

        auto decodePlane = [&](int plane, uint64_t* localModeCounts)
        {
            uint8_t* plane_out = planar.data() + plane * pixel_count;
            const uint8_t* codes = plane_codes[plane];
            const uint8_t* resid_ptr = plane_residuals[plane];
            uint32_t bitpos = 0;

            for (int y = 0; y < height; ++y)
            {
                const uint8_t mode = bitpack_read3(codes, static_cast<size_t>(code_bytes_per_plane), bitpos);
                const uint8_t* resid = resid_ptr + y * width;
                uint8_t* dst = plane_out + y * width;
                const uint8_t* prev = (y == 0) ? zero_row : (dst - width);

                if (localModeCounts && mode <= FILTER_GRAD)
                    ++localModeCounts[mode];

                switch (mode)
                {
                case FILTER_NONE:
                    std::memcpy(dst, resid, static_cast<size_t>(width));
                    break;

                case FILTER_SUB:
                {
                    uint8_t L = 0;
                    for (int i = 0; i < width; ++i)
                    {
                        L = static_cast<uint8_t>((resid[i] + L) & 0xFF);
                        dst[i] = L;
                    }
                    break;
                }

                case FILTER_UP:
                    filter_up(dst, resid, prev, width);
                    break;

                case FILTER_AVG:
                {
                    uint8_t L = 0;
                    for (int i = 0; i < width; ++i)
                    {
                        uint8_t U = prev[i];
                        uint8_t A = static_cast<uint8_t>((uint32_t(L) + uint32_t(U)) >> 1);
                        L = static_cast<uint8_t>((resid[i] + A) & 0xFF);
                        dst[i] = L;
                    }
                    break;
                }

                case FILTER_PAETH:
                {
                    uint8_t L = 0;
                    uint8_t UL = 0;
                    for (int i = 0; i < width; ++i)
                    {
                        uint8_t U = prev[i];
                        uint8_t P = paeth(L, U, UL);
                        L = static_cast<uint8_t>((resid[i] + P) & 0xFF);
                        dst[i] = L;
                        UL = U;
                    }
                    break;
                }

                case FILTER_GRAD:
                {
                    decode_filter_grad_row(dst, resid, prev, width);
                    break;
                }

                default:
                    throw std::runtime_error("PVX bad row filter");
                }
            }
        };

#ifdef _WIN32
        uint64_t planeModeCounts[3][6] = {{0,0,0,0,0,0},{0,0,0,0,0,0},{0,0,0,0,0,0}};
#if defined(_OPENMP)
#pragma omp parallel for schedule(static)
#endif
        for (int plane = 0; plane < 3; ++plane)
            decodePlane(plane, planeModeCounts[plane]);
        for (int plane = 0; plane < 3; ++plane)
            for (int i = 0; i < 6; ++i)
                modeCounts[i] += planeModeCounts[plane][i];
#else
#if defined(_OPENMP)
#pragma omp parallel for schedule(static)
#endif
        for (int plane = 0; plane < 3; ++plane)
            decodePlane(plane, nullptr);
#endif

#ifdef _WIN32
        double filterMs = timer.elapsedMs();
        timer.begin();
#endif

        // ---- Planar YCoCg-R → interleaved RGB (SIMD) ----
        const uint8_t* yPlane  = planar.data();
        const uint8_t* coPlane = planar.data() + pixel_count;
        const uint8_t* cgPlane = planar.data() + pixel_count * 2;

        planar_ycocg_to_rgb(yPlane, coPlane, cgPlane, rgb.data(), pixel_count);

#ifdef _WIN32
        double ycocgMs = timer.elapsedMs();
        // Total time includes both stages measured.
    g_decodeStats.accumulate(filterMs, ycocgMs, filterMs + ycocgMs, modeCounts);
#endif
    }

    // Legacy wrapper that allocates internally (used by the batch decoder path).
    std::vector<uint8_t> decode_keyframe(const std::vector<uint8_t>& payload, int width, int height)
    {
        struct Scratch
        {
            std::vector<uint8_t> planar;
            std::vector<uint8_t> rgb;
            std::vector<uint32_t> runLengths;
        };
        thread_local Scratch scratch;

        decode_keyframe_into(payload.data(), payload.size(), width, height,
                             scratch.planar, scratch.rgb, scratch.runLengths);
        std::vector<uint8_t> rgb;
        rgb.swap(scratch.rgb);
        return rgb;
    }

    // ========================================================================
    // Hadamard Keyframe Decoding (4×4 reversible integer WHT)
    //
    // Payload format:
    //   [blocks_x : uint16 LE] [blocks_y : uint16 LE] [pad_w : u8] [pad_h : u8]
    //   For each of 3 planes (Y, Co, Cg):
    //     16 bands × (blocks_x * blocks_y) int16_t values (LE)
    //     Band 0 (DC) is delta-coded
    // ========================================================================

    static inline void hadamard_butterfly4(int16_t &a, int16_t &b, int16_t &c, int16_t &d)
    {
        int16_t p = a + d;
        int16_t q = b + c;
        int16_t r = a - d;
        int16_t s = b - c;
        a = p + q;
        b = r + s;
        c = p - q;
        d = r - s;
    }

    static inline void hadamard4x4_inverse(int16_t block[16])
    {
        for (int i = 0; i < 4; ++i)
            hadamard_butterfly4(block[i*4+0], block[i*4+1], block[i*4+2], block[i*4+3]);
        for (int j = 0; j < 4; ++j)
            hadamard_butterfly4(block[0*4+j], block[1*4+j], block[2*4+j], block[3*4+j]);
        for (int i = 0; i < 16; ++i)
            block[i] /= 16;
    }

    static inline uint16_t had_read_u16_le(const uint8_t* p)
    {
        return static_cast<uint16_t>(uint16_t(p[0]) | (uint16_t(p[1]) << 8));
    }

    // ZigZag decode: unsigned → signed (inverse of zigzag_encode).
    static inline int16_t had_zigzag_decode(uint16_t v)
    {
        return static_cast<int16_t>((v >> 1) ^ -(v & 1));
    }

    // Varint (ULEB128) decode with fast 1-byte hot path.
    // Most Hadamard coefficients are small, so the 1-byte case dominates.
    static inline uint16_t had_read_varint_checked(const uint8_t*& p, const uint8_t* end)
    {
        if (p >= end) throw std::runtime_error("PVX Hadamard coefficient stream truncated");
        uint8_t b = *p++;
        if (!(b & 0x80)) return b;  // fast path: 1-byte varint (common case)
        uint16_t val = b & 0x7F;
        int shift = 7;
        while (p < end) {
            b = *p++;
            if (shift >= 16 && (b & 0x7Fu) != 0)
                throw std::runtime_error("PVX Hadamard coefficient varint overflow");
            val |= static_cast<uint16_t>((b & 0x7F) << shift);
            if (!(b & 0x80)) return val;
            shift += 7;
            if (shift > 21)
                throw std::runtime_error("PVX Hadamard coefficient varint overflow");
        }
        throw std::runtime_error("PVX Hadamard coefficient stream truncated");
    }

    static inline uint32_t had_read_varint_u32_checked(const uint8_t*& p, const uint8_t* end)
    {
        if (p >= end) throw std::runtime_error("PVX Hadamard coefficient stream truncated");
        uint8_t b = *p++;
        if (!(b & 0x80)) return b;
        uint32_t val = b & 0x7Fu;
        int shift = 7;
        while (p < end) {
            b = *p++;
            if (shift > 28)
                throw std::runtime_error("PVX Hadamard coefficient varint overflow");
            val |= static_cast<uint32_t>(b & 0x7F) << shift;
            if (!(b & 0x80)) return val;
            shift += 7;
        }
        throw std::runtime_error("PVX Hadamard coefficient stream truncated");
    }

    static inline int32_t had_zigzag_decode_i32(uint32_t v)
    {
        const uint32_t mag = v >> 1;
        if ((v & 1u) == 0u)
        {
            if (mag > static_cast<uint32_t>(std::numeric_limits<int32_t>::max()))
                return std::numeric_limits<int32_t>::max();
            return static_cast<int32_t>(mag);
        }

        if (mag > static_cast<uint32_t>(std::numeric_limits<int32_t>::max()))
            return std::numeric_limits<int32_t>::min();
        return -static_cast<int32_t>(mag) - 1;
    }

    static void hadamard_power2_1d(int32_t* v, int n)
    {
        for (int len = 1; len < n; len <<= 1) {
            for (int i = 0; i < n; i += (len << 1)) {
                for (int j = 0; j < len; ++j) {
                    const int32_t a = v[i + j];
                    const int32_t b = v[i + j + len];
                    v[i + j] = a + b;
                    v[i + j + len] = a - b;
                }
            }
        }
    }

    static void hadamard_power2_2d(int32_t* block, int n)
    {
        for (int y = 0; y < n; ++y)
            hadamard_power2_1d(block + y * n, n);

        int32_t col[16];
        for (int x = 0; x < n; ++x) {
            for (int y = 0; y < n; ++y)
                col[y] = block[y * n + x];
            hadamard_power2_1d(col, n);
            for (int y = 0; y < n; ++y)
                block[y * n + x] = col[y];
        }
    }

    // Decode a single Hadamard plane's BLOCK-SEQUENTIAL coefficients into pixel data.
    // Layout: coeffs[block_idx * 16 + k] for k in 0..15.
    // DC (k=0) is delta-coded; this function undoes the delta IN-PLACE.
    static void hadamard_decode_plane_into(
        int16_t* coeffs,              // modified in-place (DC delta decode)
        int blocks_x, int blocks_y,
        int orig_width, int orig_height,
        uint8_t* plane_out)           // pre-allocated: orig_width * orig_height
    {
        const int num_blocks = blocks_x * blocks_y;
        const int pw = blocks_x * 4;

        // Undo DC delta-coding (stride-16 in block-sequential layout)
        int16_t accum = 0;
        for (int i = 0; i < num_blocks; ++i) {
            accum += coeffs[i * 16];
            coeffs[i * 16] = accum;
        }

        // Stack-allocate row buffer for one block-row (4 scanlines × pw).
        // Max 30720 bytes for 4K+ width — fits comfortably on the stack.
        alignas(16) uint8_t row_buf[7680 * 4];
        if (pw * 4 > static_cast<int>(sizeof(row_buf)))
            throw std::runtime_error("PVX Hadamard plane too wide for stack buffer");

        int16_t block[16];
        for (int by_idx = 0; by_idx < blocks_y; ++by_idx) {
            for (int bx_idx = 0; bx_idx < blocks_x; ++bx_idx) {
                const int block_idx = by_idx * blocks_x + bx_idx;

                // Sequential read from block-sequential layout (32 bytes = 1 cache line)
                const int16_t* src = coeffs + block_idx * 16;
                for (int k = 0; k < 16; ++k)
                    block[k] = src[k];

                hadamard4x4_inverse(block);

                // Write to row buffer
                for (int r = 0; r < 4; ++r)
                    for (int c = 0; c < 4; ++c)
                        row_buf[r * pw + bx_idx * 4 + c] =
                            static_cast<uint8_t>(std::clamp<int16_t>(block[r * 4 + c], 0, 255));
            }

            // Copy unpadded portion to output
            for (int r = 0; r < 4; ++r) {
                int y = by_idx * 4 + r;
                if (y >= orig_height) break;
                std::memcpy(plane_out + y * orig_width,
                            row_buf + r * pw,
                            std::min(orig_width, pw));
            }
        }
    }

    static void hadamard_decode_plane_block_into(
        int32_t* coeffs,
        int blocks_x, int blocks_y,
        int orig_width, int orig_height,
        int block_size,
        uint8_t* plane_out)
    {
        const int num_blocks = blocks_x * blocks_y;
        const int coeffs_per_block = block_size * block_size;
        const int scale = coeffs_per_block;

        int32_t accum = 0;
        for (int i = 0; i < num_blocks; ++i) {
            accum += coeffs[i * coeffs_per_block];
            coeffs[i * coeffs_per_block] = accum;
        }

        int32_t block[256];
        for (int by_idx = 0; by_idx < blocks_y; ++by_idx) {
            for (int bx_idx = 0; bx_idx < blocks_x; ++bx_idx) {
                const int block_idx = by_idx * blocks_x + bx_idx;
                const int32_t* src = coeffs + block_idx * coeffs_per_block;
                for (int k = 0; k < coeffs_per_block; ++k)
                    block[k] = src[k];

                hadamard_power2_2d(block, block_size);
                for (int y = 0; y < block_size; ++y) {
                    const int dst_y = by_idx * block_size + y;
                    if (dst_y >= orig_height) break;
                    for (int x = 0; x < block_size; ++x) {
                        const int dst_x = bx_idx * block_size + x;
                        if (dst_x >= orig_width) break;
                        const int32_t sample = block[y * block_size + x] / scale;
                        plane_out[static_cast<size_t>(dst_y) * orig_width + dst_x] =
                            static_cast<uint8_t>(std::clamp<int32_t>(sample, 0, 255));
                    }
                }
            }
        }
    }

    // Streaming decode: payload bytes → pre-allocated planar + rgb buffers.
    // Reads zigzag+varint encoded coefficients, not raw int16.
    // coeffBuf is a reusable scratch buffer to avoid per-frame heap allocation.
    static void decode_keyframe_hadamard_into(
        const uint8_t* payload, size_t payloadSize,
        int width, int height,
        std::vector<uint8_t>& planar,
        std::vector<uint8_t>& rgb,
        std::vector<int16_t>& coeffBuf,
        std::vector<uint32_t>& runLengths)
    {
        if (payloadSize < 6) throw std::runtime_error("PVX Hadamard payload too small");

        const uint8_t* p = payload;
        const uint8_t* end = payload + payloadSize;
        uint16_t bx = had_read_u16_le(p + 0);
        uint16_t by = had_read_u16_le(p + 2);
        uint8_t pad_w = p[4];
        uint8_t pad_h = p[5];
        p += 6;

        if (bx == 0 || by == 0)
            throw std::runtime_error("PVX Hadamard dimensions invalid");
        if (bx != static_cast<uint16_t>((width + 3) / 4) ||
            by != static_cast<uint16_t>((height + 3) / 4) ||
            pad_w > 3 || pad_h > 3)
            throw std::runtime_error("PVX Hadamard dimensions mismatch");

        const int num_blocks = static_cast<int>(bx) * static_cast<int>(by);
        const size_t coeff_count_per_plane = 16 * num_blocks;
        const size_t pixel_count = static_cast<size_t>(width) * height;

        if (planar.size() < pixel_count * 3) planar.resize(pixel_count * 3);
        if (rgb.size()    < pixel_count * 3) rgb.resize(pixel_count * 3);

        // Reuse persistent coefficient buffer (no-op after first Hadamard frame).
        coeffBuf.resize(3 * coeff_count_per_plane);

        // Decode zigzag+varint coefficients directly into BLOCK-SEQUENTIAL layout.
        // Input stream is band-sequential (band 0 for all blocks, then band 1, etc.)
        // but we write to block-sequential positions: coeffBuf[block_idx * 16 + band].
        // This eliminates the cache-hostile gather in the inverse transform loop.
        for (int ch = 0; ch < 3; ++ch) {
            int16_t* plane = coeffBuf.data() + ch * coeff_count_per_plane;
            for (int band = 0; band < 16; ++band) {
                for (int i = 0; i < num_blocks; ++i) {
                    plane[i * 16 + band] = had_zigzag_decode(had_read_varint_checked(p, end));
                }
            }
        }

        for (int ch = 0; ch < 3; ++ch) {
            hadamard_decode_plane_into(coeffBuf.data() + ch * coeff_count_per_plane,
                                        bx, by, width, height,
                                        planar.data() + ch * pixel_count);
        }

        // Planar YCoCg-R → interleaved RGB (SIMD-dispatched)
        const uint8_t* yPlane  = planar.data();
        const uint8_t* coPlane = planar.data() + pixel_count;
        const uint8_t* cgPlane = planar.data() + pixel_count * 2;
        planar_ycocg_to_rgb(yPlane, coPlane, cgPlane, rgb.data(), pixel_count);
    }

    static void decode_keyframe_hadamard_block_into(
        const uint8_t* payload, size_t payloadSize,
        int width, int height,
        int block_size,
        std::vector<uint8_t>& planar,
        std::vector<uint8_t>& rgb,
        std::vector<int16_t>& coeffBuf,
        std::vector<int32_t>& coeffBuf32,
        std::vector<uint32_t>& runLengths)
    {
        if (block_size == 4)
        {
            decode_keyframe_hadamard_into(payload, payloadSize, width, height,
                                          planar, rgb, coeffBuf, runLengths);
            return;
        }

        if (block_size != 8 && block_size != 16)
            throw std::runtime_error("PVX Hadamard block size invalid");
        if (payloadSize < 6)
            throw std::runtime_error("PVX Hadamard payload too small");

        const uint8_t* p = payload;
        const uint8_t* end = payload + payloadSize;
        const uint16_t bx = had_read_u16_le(p + 0);
        const uint16_t by = had_read_u16_le(p + 2);
        const uint8_t pad_w = p[4];
        const uint8_t pad_h = p[5];
        p += 6;

        if (bx == 0 || by == 0)
            throw std::runtime_error("PVX Hadamard dimensions invalid");
        if (bx != static_cast<uint16_t>((width + block_size - 1) / block_size) ||
            by != static_cast<uint16_t>((height + block_size - 1) / block_size) ||
            pad_w >= block_size || pad_h >= block_size)
            throw std::runtime_error("PVX Hadamard dimensions mismatch");

        const int num_blocks = static_cast<int>(bx) * static_cast<int>(by);
        const int coeffs_per_block = block_size * block_size;
        const size_t coeff_count_per_plane = static_cast<size_t>(coeffs_per_block) * num_blocks;
        const size_t pixel_count = static_cast<size_t>(width) * height;

        if (planar.size() < pixel_count * 3) planar.resize(pixel_count * 3);
        if (rgb.size()    < pixel_count * 3) rgb.resize(pixel_count * 3);
        coeffBuf32.resize(3 * coeff_count_per_plane);

        for (int ch = 0; ch < 3; ++ch) {
            int32_t* plane = coeffBuf32.data() + static_cast<size_t>(ch) * coeff_count_per_plane;
            for (int band = 0; band < coeffs_per_block; ++band) {
                for (int i = 0; i < num_blocks; ++i) {
                    plane[i * coeffs_per_block + band] =
                        had_zigzag_decode_i32(had_read_varint_u32_checked(p, end));
                }
            }
        }

        for (int ch = 0; ch < 3; ++ch) {
            hadamard_decode_plane_block_into(
                coeffBuf32.data() + static_cast<size_t>(ch) * coeff_count_per_plane,
                bx, by, width, height, block_size,
                planar.data() + static_cast<size_t>(ch) * pixel_count);
        }

        const uint8_t* yPlane  = planar.data();
        const uint8_t* coPlane = planar.data() + pixel_count;
        const uint8_t* cgPlane = planar.data() + pixel_count * 2;
        planar_ycocg_to_rgb(yPlane, coPlane, cgPlane, rgb.data(), pixel_count);
    }

    // Batch wrapper for Hadamard keyframes.
    std::vector<uint8_t> decode_keyframe_hadamard(const std::vector<uint8_t>& payload, int width, int height)
    {
        struct Scratch
        {
            std::vector<uint8_t> planar;
            std::vector<uint8_t> rgb;
            std::vector<int16_t> coeffBuf;
            std::vector<uint32_t> runLengths;
        };
        thread_local Scratch scratch;

        decode_keyframe_hadamard_into(payload.data(), payload.size(), width, height,
                                      scratch.planar, scratch.rgb, scratch.coeffBuf, scratch.runLengths);
        std::vector<uint8_t> rgb;
        rgb.swap(scratch.rgb);
        return rgb;
    }

    static bool read_uvar_bytes(const uint8_t* data, size_t size, size_t& pos, uint32_t& value);
    static bool read_packed_indices(const uint8_t* data,
                                    size_t size,
                                    size_t& pos,
                                    uint32_t* dst,
                                    size_t count,
                                    uint8_t bits);
    static bool unfilter_literal_residual_blocks(const uint8_t* mode_data,
                                                 size_t mode_size,
                                                 const uint8_t* filtered_data,
                                                 size_t filtered_size,
                                                 size_t run_blocks,
                                                 std::vector<uint8_t>& residual);

    class GolombBitReader
    {
    public:
        GolombBitReader(const uint8_t* data, size_t size)
            : data_(data), size_(size), byte_pos_(0), bit_buf_(0), bits_left_(0)
        {
            refill();
        }

        bool read_bit(bool& bit)
        {
            if (bits_left_ == 0) return false;
            bit = (bit_buf_ >> 63) != 0;
            bit_buf_ <<= 1;
            --bits_left_;
            if (bits_left_ < 16) refill();
            return true;
        }

        bool read_bits(uint8_t bit_count, uint32_t& value)
        {
            if (bit_count == 0) { value = 0; return true; }
            while (bits_left_ < bit_count && byte_pos_ < size_)
                refill();
            if (bits_left_ < bit_count) return false;
            value = static_cast<uint32_t>(bit_buf_ >> (64 - bit_count));
            bit_buf_ <<= bit_count;
            bits_left_ -= bit_count;
            if (bits_left_ < 16) refill();
            return true;
        }

        bool read_unary(uint32_t& value)
        {
            value = 0;
            for (;;)
            {
                if (bits_left_ == 0) return false;
                // Fast: count leading 1-bits via CLZ on inverted buffer.
                uint64_t inv = ~bit_buf_;
                if (inv != 0)
                {
#ifdef _MSC_VER
                    unsigned long idx;
                    _BitScanReverse64(&idx, inv);
                    int leading_ones = 63 - static_cast<int>(idx);
#else
                    int leading_ones = __builtin_clzll(inv);
#endif
                    if (leading_ones < bits_left_)
                    {
                        // Found terminating 0-bit within valid range.
                        value += static_cast<uint32_t>(leading_ones);
                        int consume = leading_ones + 1; // include the 0-bit
                        bit_buf_ <<= consume;
                        bits_left_ -= consume;
                        if (bits_left_ < 16) refill();
                        return true;
                    }
                }
                // All valid bits are 1 — consume them and refill.
                value += static_cast<uint32_t>(bits_left_);
                bit_buf_ = 0;
                bits_left_ = 0;
                refill();
            }
        }

    private:
        void refill()
        {
            // Pack bytes MSB-first into the upper bits of bit_buf_.
            while (bits_left_ <= 56 && byte_pos_ < size_)
            {
                const int shift = 56 - bits_left_;
                const uint64_t mask = 0xFFull << shift;
                bit_buf_ = (bit_buf_ & ~mask) |
                           (static_cast<uint64_t>(data_[byte_pos_++]) << shift);
                bits_left_ += 8;
            }
        }

        const uint8_t* data_;
        size_t size_;
        size_t byte_pos_;
        uint64_t bit_buf_;
        int bits_left_;
    };

    static bool read_varint_span(const uint8_t* data, size_t size, size_t& pos, uint32_t& value)
    {
        value = 0;
        int shift = 0;
        while (pos < size)
        {
            const uint8_t b = data[pos++];
            if (shift > 28) return false;
            value |= static_cast<uint32_t>(b & 0x7F) << shift;
            if ((b & 0x80) == 0) return true;
            shift += 7;
        }
        return false;
    }

    static bool decode_rlegolomb_u8(
        const uint8_t* data,
        size_t size,
        size_t expected_values,
        std::vector<uint8_t>& out_values,
        std::vector<uint32_t>& run_lengths)
    {
        size_t pos = 0;
        uint32_t non_zero_count = 0;
        if (!read_varint_span(data, size, pos, non_zero_count)) return false;
        if (non_zero_count > expected_values) return false;

        out_values.assign(expected_values, 0);
        if (non_zero_count == 0)
        {
            return true;
        }

        if (pos >= size) return false;
        const uint8_t k = data[pos++];

        run_lengths.clear();
        run_lengths.reserve(non_zero_count);
        for (uint32_t i = 0; i < non_zero_count; ++i)
        {
            uint32_t run = 0;
            if (!read_varint_span(data, size, pos, run)) return false;
            run_lengths.push_back(run);
        }

        GolombBitReader reader(data + pos, size - pos);
        size_t dst_pos = 0;
        for (uint32_t i = 0; i < non_zero_count; ++i)
        {
            dst_pos += run_lengths[i];
            if (dst_pos >= out_values.size()) return false;

            uint32_t q = 0;
            uint32_t r = 0;
            if (!reader.read_unary(q)) return false;
            if (k > 0 && !reader.read_bits(k, r)) return false;
            const uint32_t u = (q << k) | r;

            int32_t value = static_cast<int32_t>(u >> 1);
            if (u & 1u) value = -value - 1;
            if (value < -128 || value > 127) return false;

            out_values[dst_pos++] = static_cast<uint8_t>(value & 0xFF);
        }

        return true;
    }

    // Build global-motion-shifted reference — writes into pre-allocated 'shifted'.
    // P17: Uses row-level memcpy for the interior region (avoids per-pixel branch).
    static void build_global_motion_reference_into(
        const uint8_t* prev,
        uint8_t* shifted,
        int width,
        int height,
        int dx,
        int dy)
    {
        const int stride = width * CHANNELS;

        // Compute the row range where src_y is fully in-bounds.
        const int y_min_valid = std::max(0, -dy);          // first row where y+dy >= 0
        const int y_max_valid = std::min(height, height - dy); // first row where y+dy >= height

        // Compute the column range where src_x is fully in-bounds.
        const int x_min_valid = std::max(0, -dx);
        const int x_max_valid = std::min(width, width - dx);

        for (int y = 0; y < height; ++y)
        {
            uint8_t* dst_row = shifted + y * stride;

            if (y >= y_min_valid && y < y_max_valid)
            {
                const int src_y = y + dy;

                // Left edge: fallback to unshifted reference samples
                for (int x = 0; x < x_min_valid; ++x)
                {
                    const uint8_t* sp = prev + (y * width + x) * CHANNELS;
                    uint8_t* dp = dst_row + x * CHANNELS;
                    dp[0] = sp[0]; dp[1] = sp[1]; dp[2] = sp[2];
                }

                // Interior: row-level memcpy from shifted source
                if (x_max_valid > x_min_valid)
                {
                    const uint8_t* src_row = prev + (src_y * width + (x_min_valid + dx)) * CHANNELS;
                    std::memcpy(dst_row + x_min_valid * CHANNELS,
                                src_row,
                                static_cast<size_t>(x_max_valid - x_min_valid) * CHANNELS);
                }

                // Right edge: fallback to unshifted reference samples
                for (int x = x_max_valid; x < width; ++x)
                {
                    const uint8_t* sp = prev + (y * width + x) * CHANNELS;
                    uint8_t* dp = dst_row + x * CHANNELS;
                    dp[0] = sp[0]; dp[1] = sp[1]; dp[2] = sp[2];
                }
            }
            else
            {
                // Entire row is out-of-bounds vertically — copy unshifted.
                std::memcpy(dst_row, prev + y * stride, static_cast<size_t>(stride));
            }
        }
    }

    // Legacy wrapper: allocates and returns shifted buffer.
    static std::vector<uint8_t> build_global_motion_reference(
        const std::vector<uint8_t>& prev,
        int width,
        int height,
        int dx,
        int dy)
    {
        std::vector<uint8_t> shifted(prev.size());
        build_global_motion_reference_into(prev.data(), shifted.data(), width, height, dx, dy);
        return shifted;
    }

    // ========================================================================
    // SSE2 residual-add helpers (BLOCK_SIZE=8, CHANNELS=3 → 24 bytes/row)
    // ========================================================================

    // dst[i] = (dst[i] + residual[i]) & 0xFF  for 24 bytes (in-place)
    static inline void add_residual_row_inplace(uint8_t* dst, const uint8_t* residual)
    {
        __m128i d0 = _mm_loadu_si128(reinterpret_cast<const __m128i*>(dst));
        __m128i r0 = _mm_loadu_si128(reinterpret_cast<const __m128i*>(residual));
        _mm_storeu_si128(reinterpret_cast<__m128i*>(dst), _mm_add_epi8(d0, r0));
        __m128i d1 = _mm_loadl_epi64(reinterpret_cast<const __m128i*>(dst + 16));
        __m128i r1 = _mm_loadl_epi64(reinterpret_cast<const __m128i*>(residual + 16));
        _mm_storel_epi64(reinterpret_cast<__m128i*>(dst + 16), _mm_add_epi8(d1, r1));
    }

    // dst[i] = (src[i] + residual[i]) & 0xFF  for 24 bytes (src → dst)
    static inline void add_residual_row_from(uint8_t* dst, const uint8_t* src, const uint8_t* residual)
    {
        __m128i s0 = _mm_loadu_si128(reinterpret_cast<const __m128i*>(src));
        __m128i r0 = _mm_loadu_si128(reinterpret_cast<const __m128i*>(residual));
        _mm_storeu_si128(reinterpret_cast<__m128i*>(dst), _mm_add_epi8(s0, r0));
        __m128i s1 = _mm_loadl_epi64(reinterpret_cast<const __m128i*>(src + 16));
        __m128i r1 = _mm_loadl_epi64(reinterpret_cast<const __m128i*>(residual + 16));
        _mm_storel_epi64(reinterpret_cast<__m128i*>(dst + 16), _mm_add_epi8(s1, r1));
    }

    static void hadamard8_1d(int32_t v[8])
    {
        const int32_t a0 = v[0] + v[1];
        const int32_t a1 = v[0] - v[1];
        const int32_t a2 = v[2] + v[3];
        const int32_t a3 = v[2] - v[3];
        const int32_t a4 = v[4] + v[5];
        const int32_t a5 = v[4] - v[5];
        const int32_t a6 = v[6] + v[7];
        const int32_t a7 = v[6] - v[7];

        const int32_t b0 = a0 + a2;
        const int32_t b1 = a1 + a3;
        const int32_t b2 = a0 - a2;
        const int32_t b3 = a1 - a3;
        const int32_t b4 = a4 + a6;
        const int32_t b5 = a5 + a7;
        const int32_t b6 = a4 - a6;
        const int32_t b7 = a5 - a7;

        v[0] = b0 + b4;
        v[1] = b1 + b5;
        v[2] = b2 + b6;
        v[3] = b3 + b7;
        v[4] = b0 - b4;
        v[5] = b1 - b5;
        v[6] = b2 - b6;
        v[7] = b3 - b7;
    }

    static void hadamard8_2d(int32_t block[64])
    {
        for (int y = 0; y < 8; ++y)
            hadamard8_1d(block + y * 8);

        for (int x = 0; x < 8; ++x)
        {
            int32_t col[8];
            for (int y = 0; y < 8; ++y)
                col[y] = block[y * 8 + x];
            hadamard8_1d(col);
            for (int y = 0; y < 8; ++y)
                block[y * 8 + x] = col[y];
        }
    }

    static constexpr std::array<uint8_t, 64> HADAMARD8_SCAN = {
         0,  1,  8, 16,  9,  2,  3, 10,
        17, 24, 32, 25, 18, 11,  4,  5,
        12, 19, 26, 33, 40, 48, 41, 34,
        27, 20, 13,  6,  7, 14, 21, 28,
        35, 42, 49, 56, 57, 50, 43, 36,
        29, 22, 15, 23, 30, 37, 44, 51,
        58, 59, 52, 45, 38, 31, 39, 46,
        53, 60, 61, 54, 47, 55, 62, 63
    };

    static void hadamard4_1d(int32_t v[4])
    {
        const int32_t a0 = v[0] + v[1];
        const int32_t a1 = v[0] - v[1];
        const int32_t a2 = v[2] + v[3];
        const int32_t a3 = v[2] - v[3];
        v[0] = a0 + a2;
        v[1] = a1 + a3;
        v[2] = a0 - a2;
        v[3] = a1 - a3;
    }

    static void hadamard4_2d(int32_t block[16])
    {
        for (int y = 0; y < 4; ++y)
            hadamard4_1d(block + y * 4);

        for (int x = 0; x < 4; ++x)
        {
            int32_t col[4];
            for (int y = 0; y < 4; ++y)
                col[y] = block[y * 4 + x];
            hadamard4_1d(col);
            for (int y = 0; y < 4; ++y)
                block[y * 4 + x] = col[y];
        }
    }

    static constexpr std::array<uint8_t, 16> HADAMARD4_SCAN = {
         0,  1,  4,  8,
         5,  2,  3,  6,
         9, 12, 13, 10,
         7, 11, 14, 15
    };

    static bool decode_hadamard8_residual_blocks(const uint8_t* data,
                                                 size_t size,
                                                 size_t& pos,
                                                 size_t run_blocks,
                                                 std::vector<uint8_t>& residual)
    {
        const size_t expected = run_blocks * BLOCK_SIZE * BLOCK_SIZE * CHANNELS;
        residual.assign(expected, 0);

        int32_t coeffs[64];
        int32_t block[64];
        for (size_t b = 0; b < run_blocks; ++b)
        {
            const size_t block_base = b * BLOCK_SIZE * BLOCK_SIZE * CHANNELS;
            for (int c = 0; c < CHANNELS; ++c)
            {
                std::fill(std::begin(coeffs), std::end(coeffs), 0);
                int filled = 0;
                while (filled < 64)
                {
                    uint32_t token = 0;
                    if (!read_uvar_bytes(data, size, pos, token))
                        return false;
                    if (token == 0u)
                    {
                        uint32_t zero_run = 0;
                        if (!read_uvar_bytes(data, size, pos, zero_run) || zero_run == 0u)
                            return false;
                        if (zero_run > static_cast<uint32_t>(64 - filled))
                            return false;
                        filled += static_cast<int>(zero_run);
                        continue;
                    }

                    coeffs[HADAMARD8_SCAN[static_cast<size_t>(filled)]] =
                        zigzag_decode_i32(token - 1u);
                    ++filled;
                }

                std::copy(std::begin(coeffs), std::end(coeffs), std::begin(block));
                hadamard8_2d(block);
                for (int y = 0; y < BLOCK_SIZE; ++y)
                {
                    for (int x = 0; x < BLOCK_SIZE; ++x)
                    {
                        const size_t dst = block_base +
                            (static_cast<size_t>(y) * BLOCK_SIZE + x) * CHANNELS +
                            static_cast<size_t>(c);
                        const int32_t sample = block[y * 8 + x] / 64;
                        residual[dst] = static_cast<uint8_t>(static_cast<int8_t>(sample));
                    }
                }
            }
        }

        return true;
    }

    static bool decode_hadamard4_residual_blocks(const uint8_t* data,
                                                 size_t size,
                                                 size_t& pos,
                                                 size_t run_blocks,
                                                 std::vector<uint8_t>& residual)
    {
        const size_t expected = run_blocks * BLOCK_SIZE * BLOCK_SIZE * CHANNELS;
        residual.assign(expected, 0);

        int32_t coeffs[16];
        int32_t block[16];
        for (size_t b = 0; b < run_blocks; ++b)
        {
            const size_t block_base = b * BLOCK_SIZE * BLOCK_SIZE * CHANNELS;
            for (int c = 0; c < CHANNELS; ++c)
            {
                for (int sy = 0; sy < BLOCK_SIZE; sy += 4)
                {
                    for (int sx = 0; sx < BLOCK_SIZE; sx += 4)
                    {
                        std::fill(std::begin(coeffs), std::end(coeffs), 0);
                        int filled = 0;
                        while (filled < 16)
                        {
                            uint32_t token = 0;
                            if (!read_uvar_bytes(data, size, pos, token))
                                return false;
                            if (token == 0u)
                            {
                                uint32_t zero_run = 0;
                                if (!read_uvar_bytes(data, size, pos, zero_run) || zero_run == 0u)
                                    return false;
                                if (zero_run > static_cast<uint32_t>(16 - filled))
                                    return false;
                                filled += static_cast<int>(zero_run);
                                continue;
                            }

                            coeffs[HADAMARD4_SCAN[static_cast<size_t>(filled)]] =
                                zigzag_decode_i32(token - 1u);
                            ++filled;
                        }

                        std::copy(std::begin(coeffs), std::end(coeffs), std::begin(block));
                        hadamard4_2d(block);
                        for (int y = 0; y < 4; ++y)
                        {
                            for (int x = 0; x < 4; ++x)
                            {
                                const size_t dst = block_base +
                                    (static_cast<size_t>(sy + y) * BLOCK_SIZE + (sx + x)) * CHANNELS +
                                    static_cast<size_t>(c);
                                const int32_t sample = block[y * 4 + x] / 16;
                                residual[dst] = static_cast<uint8_t>(static_cast<int8_t>(sample));
                            }
                        }
                    }
                }
            }
        }

        return true;
    }

    // ========================================================================
    // Motion Block Decoding
    // ========================================================================

    static inline bool motion_subpel_block_in_bounds(int ref_x2, int ref_y2, int width, int height)
    {
        const int int_x = ref_x2 >> 1;
        const int int_y = ref_y2 >> 1;
        const int frac_x = ref_x2 & 1;
        const int frac_y = ref_y2 & 1;

        return int_x >= 0 && int_y >= 0 &&
               int_x + BLOCK_SIZE + frac_x <= width &&
               int_y + BLOCK_SIZE + frac_y <= height;
    }

    static void interpolate_block_bilinear(
        const uint8_t* ref,
        int ref_x2,
        int ref_y2,
        int frame_width,
        int frame_height,
        uint8_t* out_block)
    {
        const int stride = frame_width * CHANNELS;
        const int int_x = ref_x2 >> 1;
        const int int_y = ref_y2 >> 1;
        const int frac_x = ref_x2 & 1;
        const int frac_y = ref_y2 & 1;

        if (frac_x == 0 && frac_y == 0)
        {
            for (int y = 0; y < BLOCK_SIZE; ++y)
            {
                const uint8_t* src = ref + (int_y + y) * stride + int_x * CHANNELS;
                std::memcpy(out_block + y * BLOCK_SIZE * CHANNELS, src, BLOCK_SIZE * CHANNELS);
            }
            return;
        }

        for (int y = 0; y < BLOCK_SIZE; ++y)
        {
            for (int x = 0; x < BLOCK_SIZE; ++x)
            {
                const int px = int_x + x;
                const int py = int_y + y;
                const int px1 = px + frac_x;
                const int py1 = py + frac_y;

                const uint8_t* p00 = ref + py * stride + px * CHANNELS;
                const uint8_t* p10 = ref + py * stride + px1 * CHANNELS;
                const uint8_t* p01 = ref + py1 * stride + px * CHANNELS;
                const uint8_t* p11 = ref + py1 * stride + px1 * CHANNELS;
                uint8_t* dst = out_block + (y * BLOCK_SIZE + x) * CHANNELS;

                if (frac_x && frac_y)
                {
                    for (int c = 0; c < CHANNELS; ++c)
                        dst[c] = static_cast<uint8_t>((int(p00[c]) + int(p10[c]) + int(p01[c]) + int(p11[c]) + 2) >> 2);
                }
                else if (frac_x)
                {
                    for (int c = 0; c < CHANNELS; ++c)
                        dst[c] = static_cast<uint8_t>((int(p00[c]) + int(p10[c]) + 1) >> 1);
                }
                else
                {
                    for (int c = 0; c < CHANNELS; ++c)
                        dst[c] = static_cast<uint8_t>((int(p00[c]) + int(p01[c]) + 1) >> 1);
                }
            }
        }
    }

    void decode_motion_blocks(
        const uint8_t* data,
        size_t size,
        const uint8_t* ref,
        uint8_t* output,
        int width, int height,
        bool halfpel,
        std::vector<uint32_t>& runLengths,
        std::vector<uint8_t>& residualScratch)
    {
        const int stride = width * CHANNELS;
        const size_t frame_size = static_cast<size_t>(width) * height * CHANNELS;
        const int blocks_x = width / BLOCK_SIZE;
        const int blocks_y = height / BLOCK_SIZE;
        const int total_blocks = blocks_x * blocks_y;
        std::vector<int8_t> spatial_mvx(static_cast<size_t>(total_blocks), 0);
        std::vector<int8_t> spatial_mvy(static_cast<size_t>(total_blocks), 0);

        struct MotionMvCode
        {
            int16_t dx;
            int16_t dy;
        };
        static constexpr MotionMvCode kMotionMvCodebook[] = {
            { 0,  0},
            { 1,  0},
            {-1,  0},
            { 0,  1},
            { 0, -1},
            { 1,  1},
            {-1,  1},
            { 1, -1},
            {-1, -1},
            { 2,  0},
            {-2,  0},
            { 0,  2},
            { 0, -2},
            { 2,  1},
            { 1,  2},
            {-2, -1},
        };

        size_t pos = 0;
        int block_idx = 0;

        auto read_motion_mvd_truncated = [&](int32_t& dx, int32_t& dy) -> bool
        {
            if (pos >= size) return false;
            const uint8_t tag = data[pos++];
            if (tag < static_cast<uint8_t>(std::size(kMotionMvCodebook)))
            {
                dx = kMotionMvCodebook[tag].dx;
                dy = kMotionMvCodebook[tag].dy;
                return true;
            }
            if (tag != 0xFFu)
                return false;

            uint32_t dx_u = 0;
            uint32_t dy_u = 0;
            if (!read_uvar_bytes(data, size, pos, dx_u) ||
                !read_uvar_bytes(data, size, pos, dy_u))
            {
                return false;
            }
            dx = zigzag_decode_i32(dx_u);
            dy = zigzag_decode_i32(dy_u);
            return true;
        };
        
        // Start by copying reference to output
        std::memcpy(output, ref, frame_size);

        int32_t last_copy_sx = 0;
        int32_t last_copy_sy = 0;
        auto require_bytes = [&](size_t n)
        {
            if (size < pos || (size - pos) < n)
                throw std::runtime_error("PVX motion payload truncated");
        };
        
        while (pos < size && block_idx < total_blocks)
        {
            uint8_t cmd = data[pos++];
            
            // Check for SOLID blocks first (0b111xxxxx = 0xE0-0xFF)
            if ((cmd & 0xE0) == 0xE0)
            {
                uint8_t run = (cmd & 0x1F) + 1;
                require_bytes(3);
                uint8_t r = data[pos++];
                uint8_t g = data[pos++];
                uint8_t b = data[pos++];

                for (int s = 0; s < run && block_idx < total_blocks; ++s)
                {
                    int dest_bx = block_idx % blocks_x;
                    int dest_by = block_idx / blocks_x;
                    int dest_px = dest_bx * BLOCK_SIZE;
                    int dest_py = dest_by * BLOCK_SIZE;
                    
                    for (int y = 0; y < BLOCK_SIZE; ++y)
                    {
                        uint8_t* dst_row = output + (dest_py + y) * stride + dest_px * CHANNELS;
                        for (int x = 0; x < BLOCK_SIZE; ++x)
                        {
                            dst_row[x * CHANNELS + 0] = r;
                            dst_row[x * CHANNELS + 1] = g;
                            dst_row[x * CHANNELS + 2] = b;
                        }
                    }
                    set_spatial_mv(spatial_mvx, spatial_mvy, blocks_x, dest_bx, dest_by, 0, 0);
                    ++block_idx;
                }
                continue;
            }
            
            uint8_t type = cmd >> 6;
            uint8_t count = (cmd & 0x3F) + 1;
            
            if (type == 0)  // IDENTICAL
            {
                for (int s = 0; s < count && block_idx < total_blocks; ++s)
                {
                    const int dest_bx = block_idx % blocks_x;
                    const int dest_by = block_idx / blocks_x;
                    set_spatial_mv(spatial_mvx, spatial_mvy, blocks_x, dest_bx, dest_by, 0, 0);
                    ++block_idx;
                }
            }
            else if (type == 1)  // MOTION
            {
                int32_t mvdx = 0;
                int32_t mvdy = 0;
                if (!read_motion_mvd_truncated(mvdx, mvdy))
                {
                    throw std::runtime_error("PVX malformed motion vector delta");
                }
                require_bytes(1);
                uint8_t residual_mode = data[pos++];
                const int command_start_block = block_idx;
                int processed_blocks = 0;

                for (int r = 0; r < count && block_idx < total_blocks; ++r)
                {
                    int dest_bx = block_idx % blocks_x;
                    int dest_by = block_idx / blocks_x;
                    int dest_px = dest_bx * BLOCK_SIZE;
                    int dest_py = dest_by * BLOCK_SIZE;

                    const PredictedMotionVector pred = predict_spatial_mv(spatial_mvx,
                                                                           spatial_mvy,
                                                                           blocks_x,
                                                                           blocks_y,
                                                                           dest_bx,
                                                                           dest_by);
                    const int32_t dx_i = static_cast<int32_t>(pred.dx) + mvdx;
                    const int32_t dy_i = static_cast<int32_t>(pred.dy) + mvdy;
                    if (dx_i < std::numeric_limits<int8_t>::min() ||
                        dx_i > std::numeric_limits<int8_t>::max() ||
                        dy_i < std::numeric_limits<int8_t>::min() ||
                        dy_i > std::numeric_limits<int8_t>::max())
                    {
                        throw std::runtime_error("PVX motion vector out of range");
                    }
                    const int8_t dx = static_cast<int8_t>(dx_i);
                    const int8_t dy = static_cast<int8_t>(dy_i);
                    const bool is_subpel = halfpel && ((dx & 1) || (dy & 1));
                    const int int_dx = halfpel ? (dx >> 1) : static_cast<int>(dx);
                    const int int_dy = halfpel ? (dy >> 1) : static_cast<int>(dy);

                    if (is_subpel)
                    {
                        const int ref_x2 = dest_px * MOTION_SUBPEL_ONE + dx;
                        const int ref_y2 = dest_py * MOTION_SUBPEL_ONE + dy;
                        if (!motion_subpel_block_in_bounds(ref_x2, ref_y2, width, height))
                            throw std::runtime_error("PVX motion block source out of bounds");

                        uint8_t interp_block[BLOCK_SIZE * BLOCK_SIZE * CHANNELS];
                        interpolate_block_bilinear(ref, ref_x2, ref_y2, width, height, interp_block);
                        for (int y = 0; y < BLOCK_SIZE; ++y)
                        {
                            const uint8_t* src_row = interp_block + y * BLOCK_SIZE * CHANNELS;
                            uint8_t* dst_row = output + (dest_py + y) * stride + dest_px * CHANNELS;
                            std::memcpy(dst_row, src_row, BLOCK_SIZE * CHANNELS);
                        }
                    }
                    else
                    {
                        int src_px = dest_px + int_dx;
                        int src_py = dest_py + int_dy;

                        if (src_px < 0 || src_py < 0 || src_px + BLOCK_SIZE > width || src_py + BLOCK_SIZE > height)
                            throw std::runtime_error("PVX motion block source out of bounds");

                        // Copy from motion-compensated position
                        for (int y = 0; y < BLOCK_SIZE; ++y)
                        {
                            const uint8_t* src_row = ref + (src_py + y) * stride + src_px * CHANNELS;
                            uint8_t* dst_row = output + (dest_py + y) * stride + dest_px * CHANNELS;
                            std::memcpy(dst_row, src_row, BLOCK_SIZE * CHANNELS);
                        }
                    }

                    if (residual_mode == MOTION_RESIDUAL_RAW_SUB)
                    {
                        for (int y = 0; y < BLOCK_SIZE; ++y)
                        {
                            require_bytes(BLOCK_SIZE * CHANNELS);
                            uint8_t* dst_row = output + (dest_py + y) * stride + dest_px * CHANNELS;
                            add_residual_row_inplace(dst_row, data + pos);
                            pos += BLOCK_SIZE * CHANNELS;
                        }
                    }

                    set_spatial_mv(spatial_mvx, spatial_mvy, blocks_x, dest_bx, dest_by, dx, dy);
                    ++block_idx;
                    ++processed_blocks;
                }

                if (residual_mode == MOTION_RESIDUAL_HADAMARD8 ||
                    residual_mode == MOTION_RESIDUAL_HADAMARD4)
                {
                    const bool ok = (residual_mode == MOTION_RESIDUAL_HADAMARD4)
                        ? decode_hadamard4_residual_blocks(data, size, pos, processed_blocks, residualScratch)
                        : decode_hadamard8_residual_blocks(data, size, pos, processed_blocks, residualScratch);
                    if (!ok)
                        throw std::runtime_error("PVX malformed motion Hadamard payload");

                    size_t rv = 0;
                    for (int r = 0; r < processed_blocks; ++r)
                    {
                        const int apply_block_idx = command_start_block + r;
                        int dest_bx = apply_block_idx % blocks_x;
                        int dest_by = apply_block_idx / blocks_x;
                        int dest_px = dest_bx * BLOCK_SIZE;
                        int dest_py = dest_by * BLOCK_SIZE;

                        for (int y = 0; y < BLOCK_SIZE; ++y)
                        {
                            uint8_t* dst_row = output + (dest_py + y) * stride + dest_px * CHANNELS;
                            add_residual_row_inplace(dst_row, residualScratch.data() + rv);
                            rv += BLOCK_SIZE * CHANNELS;
                        }
                    }
                }
                else if (residual_mode == MOTION_RESIDUAL_GOLOMB_SUB ||
                         residual_mode == MOTION_RESIDUAL_YCOCG_GOLOMB)
                {
                    uint32_t encoded_size = 0;
                    if (!read_uvar_bytes(data, size, pos, encoded_size))
                        throw std::runtime_error("PVX malformed motion Golomb header");
                    require_bytes(encoded_size);

                    const size_t expected_values = static_cast<size_t>(processed_blocks) * BLOCK_SIZE * BLOCK_SIZE * CHANNELS;
                    if (!decode_rlegolomb_u8(data + pos, encoded_size, expected_values, residualScratch, runLengths))
                        throw std::runtime_error("PVX malformed motion Golomb payload");
                    pos += encoded_size;
                    if (residual_mode == MOTION_RESIDUAL_YCOCG_GOLOMB)
                        for (size_t p = 0; p + 2 < residualScratch.size(); p += 3)
                            residual_ycocg_to_rgb(residualScratch[p], residualScratch[p + 1], residualScratch[p + 2]);

                    size_t rv = 0;
                    for (int r = 0; r < processed_blocks; ++r)
                    {
                        const int apply_block_idx = command_start_block + r;
                        int dest_bx = apply_block_idx % blocks_x;
                        int dest_by = apply_block_idx / blocks_x;
                        int dest_px = dest_bx * BLOCK_SIZE;
                        int dest_py = dest_by * BLOCK_SIZE;

                        for (int y = 0; y < BLOCK_SIZE; ++y)
                        {
                            uint8_t* dst_row = output + (dest_py + y) * stride + dest_px * CHANNELS;
                            add_residual_row_inplace(dst_row, residualScratch.data() + rv);
                            rv += BLOCK_SIZE * CHANNELS;
                        }
                    }
                }
                else if (residual_mode != MOTION_RESIDUAL_NONE &&
                         residual_mode != MOTION_RESIDUAL_RAW_SUB)
                {
                    throw std::runtime_error("PVX unknown motion residual mode");
                }
            }
            else if (type == 2)  // COPY
            {
                require_bytes(1);
                int32_t dsx = 0;
                int32_t dsy = 0;
                const uint8_t packed_or_escape = data[pos++];
                if (packed_or_escape == 0x00)
                {
                    uint32_t dsx_u = 0;
                    uint32_t dsy_u = 0;
                    if (!read_uvar_bytes(data, size, pos, dsx_u) ||
                        !read_uvar_bytes(data, size, pos, dsy_u))
                    {
                        throw std::runtime_error("PVX malformed copy command");
                    }
                    dsx = static_cast<int32_t>((dsx_u >> 1) ^ (~(dsx_u & 1u) + 1u));
                    dsy = static_cast<int32_t>((dsy_u >> 1) ^ (~(dsy_u & 1u) + 1u));
                }
                else
                {
                    dsx = static_cast<int32_t>((packed_or_escape >> 4) & 0x0F) - 8;
                    dsy = static_cast<int32_t>(packed_or_escape & 0x0F) - 8;
                }

                const int32_t sx_i = last_copy_sx + dsx;
                const int32_t sy_i = last_copy_sy + dsy;
                if (sx_i < 0 || sy_i < 0)
                    throw std::runtime_error("PVX copy delta underflow");

                last_copy_sx = sx_i;
                last_copy_sy = sy_i;

                const int src_px = sx_i * BLOCK_SIZE;
                const int src_py = sy_i * BLOCK_SIZE;

                if (src_px < 0 || src_py < 0 || src_px + BLOCK_SIZE > width || src_py + BLOCK_SIZE > height)
                    throw std::runtime_error("PVX copy block source out of bounds");

                for (int r = 0; r < count && block_idx < total_blocks; ++r)
                {
                    int dest_bx = block_idx % blocks_x;
                    int dest_by = block_idx / blocks_x;
                    int dest_px = dest_bx * BLOCK_SIZE;
                    int dest_py = dest_by * BLOCK_SIZE;

                    for (int y = 0; y < BLOCK_SIZE; ++y)
                    {
                        const uint8_t* src_row = ref + (src_py + y) * stride + src_px * CHANNELS;
                        uint8_t* dst_row = output + (dest_py + y) * stride + dest_px * CHANNELS;
                        std::memcpy(dst_row, src_row, BLOCK_SIZE * CHANNELS);
                    }
                    set_spatial_mv(spatial_mvx, spatial_mvy, blocks_x, dest_bx, dest_by, 0, 0);
                    ++block_idx;
                }
            }
            else  // LITERAL (type == 3)
            {
                // LITERAL commands are restricted to 0xC0..0xDF (run <= 32).
                if (cmd >= 0xE0)
                    throw std::runtime_error("PVX malformed literal command");

                require_bytes(1);
                const uint8_t literal_mode = data[pos++];
                const size_t run_blocks = std::min<size_t>(count, static_cast<size_t>(total_blocks - block_idx));
                const size_t residual_count = run_blocks * BLOCK_SIZE * BLOCK_SIZE * CHANNELS;

                size_t residual_cursor = 0;
                std::vector<uint8_t> literal_values;
                if (literal_mode == LITERAL_RESIDUAL_GOLOMB_SUB)
                {
                    uint32_t encoded_size = 0;
                    if (!read_uvar_bytes(data, size, pos, encoded_size))
                        throw std::runtime_error("PVX malformed literal Golomb header");
                    require_bytes(encoded_size);
                    if (!decode_rlegolomb_u8(data + pos, encoded_size, residual_count, literal_values, runLengths))
                        throw std::runtime_error("PVX malformed literal Golomb payload");
                    pos += encoded_size;
                }
                else if (literal_mode == LITERAL_RESIDUAL_HADAMARD8 ||
                         literal_mode == LITERAL_RESIDUAL_HADAMARD4)
                {
                    const bool ok = (literal_mode == LITERAL_RESIDUAL_HADAMARD4)
                        ? decode_hadamard4_residual_blocks(data, size, pos, run_blocks, literal_values)
                        : decode_hadamard8_residual_blocks(data, size, pos, run_blocks, literal_values);
                    if (!ok)
                        throw std::runtime_error("PVX malformed literal Hadamard payload");
                }
                else if (literal_mode == LITERAL_RESIDUAL_FILTERED_RAW_SUB ||
                         literal_mode == LITERAL_RESIDUAL_FILTERED_GOLOMB_SUB)
                {
                    uint32_t mode_size = 0;
                    if (!read_uvar_bytes(data, size, pos, mode_size))
                        throw std::runtime_error("PVX malformed filtered literal mode header");
                    require_bytes(mode_size);
                    const uint8_t* mode_data = data + pos;
                    pos += mode_size;

                    std::vector<uint8_t> filtered_values;
                    if (literal_mode == LITERAL_RESIDUAL_FILTERED_GOLOMB_SUB)
                    {
                        uint32_t encoded_size = 0;
                        if (!read_uvar_bytes(data, size, pos, encoded_size))
                            throw std::runtime_error("PVX malformed filtered literal Golomb header");
                        require_bytes(encoded_size);
                        if (!decode_rlegolomb_u8(data + pos, encoded_size, residual_count, filtered_values, runLengths))
                            throw std::runtime_error("PVX malformed filtered literal Golomb payload");
                        pos += encoded_size;
                    }
                    else
                    {
                        require_bytes(residual_count);
                        filtered_values.assign(data + pos, data + pos + residual_count);
                        pos += residual_count;
                    }

                    if (!unfilter_literal_residual_blocks(mode_data,
                                                          mode_size,
                                                          filtered_values.data(),
                                                          filtered_values.size(),
                                                          run_blocks,
                                                          literal_values))
                    {
                        throw std::runtime_error("PVX malformed filtered literal payload");
                    }
                }
                else if (literal_mode != LITERAL_RESIDUAL_RAW_SUB)
                {
                    throw std::runtime_error("PVX unknown literal residual mode");
                }

                for (int r = 0; r < count && block_idx < total_blocks; ++r)
                {
                    int dest_bx = block_idx % blocks_x;
                    int dest_by = block_idx / blocks_x;
                    int dest_px = dest_bx * BLOCK_SIZE;
                    int dest_py = dest_by * BLOCK_SIZE;
                    
                    // Add subtraction residual to reference to reconstruct actual pixels
                    for (int y = 0; y < BLOCK_SIZE; ++y)
                    {
                        uint8_t* dst_row = output + (dest_py + y) * stride + dest_px * CHANNELS;
                        const uint8_t* ref_row = ref + (dest_py + y) * stride + dest_px * CHANNELS;

                        if (literal_mode == LITERAL_RESIDUAL_RAW_SUB)
                        {
                            require_bytes(BLOCK_SIZE * CHANNELS);
                            add_residual_row_from(dst_row, ref_row, data + pos);
                            pos += BLOCK_SIZE * CHANNELS;
                        }
                        else
                        {
                            add_residual_row_from(dst_row, ref_row, literal_values.data() + residual_cursor);
                            residual_cursor += BLOCK_SIZE * CHANNELS;
                        }
                    }
                    set_spatial_mv(spatial_mvx, spatial_mvy, blocks_x, dest_bx, dest_by, 0, 0);
                    ++block_idx;
                }
            }
        }
        if (block_idx != total_blocks || pos != size)
            throw std::runtime_error("PVX motion payload has incomplete blocks or trailing bytes");
    }

    static bool read_uvar_bytes(const uint8_t* data, size_t size, size_t& pos, uint32_t& value)
    {
        value = 0;
        int shift = 0;
        while (pos < size)
        {
            uint8_t b = data[pos++];
            if (shift > 28) return false;
            value |= static_cast<uint32_t>(b & 0x7F) << shift;
            if ((b & 0x80) == 0) return true;
            shift += 7;
        }
        return false;
    }

    namespace {
    constexpr uint16_t AR_CTX_COUNT = 8192;

    struct StructuredArithDecoder
    {
        const uint8_t *data = nullptr;
        size_t size = 0;
        size_t pos = 0;
        size_t pad = 0;
        uint32_t lo = 0u;
        uint32_t hi = 0xFFFFFFFFu;
        uint32_t code = 0u;
        std::array<uint16_t, AR_CTX_COUNT> p1{};

        bool init(const uint8_t *src, size_t src_size)
        {
            if (!src || src_size < 4) return false;
            data = src;
            size = src_size;
            pos = 4;
            pad = 0;
            code = (static_cast<uint32_t>(src[0]) << 24) |
                   (static_cast<uint32_t>(src[1]) << 16) |
                   (static_cast<uint32_t>(src[2]) << 8) |
                   static_cast<uint32_t>(src[3]);
            p1.fill(32768u);
            return true;
        }

        bool decode_bit(uint16_t ctx, uint8_t &bit)
        {
            const uint32_t prob1 = p1[ctx];
            const uint32_t prob0 = 65535u - prob1;

            const uint32_t range = hi - lo;
            uint32_t split = lo + static_cast<uint32_t>((static_cast<uint64_t>(range) * prob0) >> 16);
            if (split <= lo) split = lo + 1u;
            if (split >= hi) split = hi - 1u;

            if (code <= split)
            {
                hi = split;
                bit = 0u;
            }
            else
            {
                lo = split + 1u;
                bit = 1u;
            }

            while (((lo ^ hi) & 0xFF000000u) == 0u)
            {
                lo <<= 8;
                hi = (hi << 8) | 0xFFu;
                uint8_t next = 0u;
                if (pos < size)
                {
                    next = data[pos++];
                }
                else
                {
                    if (pad >= 4u) return false;
                    ++pad;
                }
                code = (code << 8) | static_cast<uint32_t>(next);
            }

            const int target = bit ? 65535 : 0;
            p1[ctx] = static_cast<uint16_t>(p1[ctx] + ((target - static_cast<int>(p1[ctx])) >> 5));
            return true;
        }

        bool decode_bits(uint16_t base_ctx, int bits, uint32_t &value)
        {
            value = 0;
            for (int i = bits - 1; i >= 0; --i)
            {
                uint8_t b = 0;
                if (!decode_bit(static_cast<uint16_t>(base_ctx + static_cast<uint16_t>(bits - 1 - i)), b))
                    return false;
                value |= (static_cast<uint32_t>(b) << i);
            }
            return true;
        }
    };

    static bool decode_uvar_struct(StructuredArithDecoder &dec, uint16_t base_ctx, uint32_t &value)
    {
        value = 0;
        int shift = 0;
        for (uint16_t g = 0; g < 5; ++g)
        {
            const uint16_t group_ctx = static_cast<uint16_t>(base_ctx + g * 8u);
            uint8_t more = 0;
            if (!dec.decode_bit(group_ctx, more)) return false;
            uint32_t byte = 0;
            if (!dec.decode_bits(static_cast<uint16_t>(group_ctx + 1u), 7, byte)) return false;
            value |= ((byte & 0x7Fu) << shift);
            if (!more) return true;
            shift += 7;
        }
        return false;
    }

    static bool decode_len_struct(StructuredArithDecoder &dec, uint8_t kind, uint32_t &value)
    {
        const uint16_t base = static_cast<uint16_t>(512u + static_cast<uint16_t>(kind) * 96u);
        uint8_t b0 = 0;
        if (!dec.decode_bit(base, b0)) return false;

        uint8_t cls = 0;
        if (!b0)
        {
            uint8_t b1 = 0;
            if (!dec.decode_bit(static_cast<uint16_t>(base + 1u), b1)) return false;
            cls = b1 ? 1u : 0u;
        }
        else
        {
            uint8_t b1 = 0;
            if (!dec.decode_bit(static_cast<uint16_t>(base + 2u), b1)) return false;
            cls = b1 ? 3u : 2u;
        }

        if (cls == 0u)
        {
            value = 1u;
        }
        else if (cls == 1u)
        {
            uint8_t bit = 0;
            if (!dec.decode_bit(static_cast<uint16_t>(base + 3u), bit)) return false;
            value = 2u + static_cast<uint32_t>(bit);
        }
        else if (cls == 2u)
        {
            uint32_t rem = 0;
            if (!dec.decode_bits(static_cast<uint16_t>(base + 4u), 2, rem)) return false;
            value = 4u + rem;
        }
        else
        {
            uint32_t tail = 0;
            if (!decode_uvar_struct(dec, static_cast<uint16_t>(base + 16u), tail)) return false;
            value = 8u + tail;
        }
        return true;
    }

    static bool decode_residual_struct(StructuredArithDecoder &dec,
                                       uint8_t pred_cls,
                                       uint8_t history_cls,
                                       int32_t &residual)
    {
        const uint16_t context_class =
            static_cast<uint16_t>(pred_cls) * 4u + static_cast<uint16_t>(history_cls);
        const uint16_t base =
            static_cast<uint16_t>(2048u + context_class * 192u);

        uint8_t b0 = 0;
        if (!dec.decode_bit(base, b0)) return false;

        uint8_t bkt = 0;
        if (!b0)
        {
            uint8_t b1 = 0;
            if (!dec.decode_bit(static_cast<uint16_t>(base + 1u), b1)) return false;
            bkt = b1 ? 1u : 0u;
        }
        else
        {
            uint8_t b1 = 0;
            if (!dec.decode_bit(static_cast<uint16_t>(base + 2u), b1)) return false;
            if (b1)
            {
                bkt = 4u;
            }
            else
            {
                uint8_t b2 = 0;
                if (!dec.decode_bit(static_cast<uint16_t>(base + 3u), b2)) return false;
                bkt = b2 ? 3u : 2u;
            }
        }

        uint8_t sign = 0;
        if (bkt > 0u)
        {
            if (!dec.decode_bit(static_cast<uint16_t>(base + 4u), sign)) return false;
        }

        uint32_t mag = 0;
        if (bkt == 0u) mag = 0u;
        else if (bkt == 1u) mag = 1u;
        else if (bkt == 2u)
        {
            uint8_t b = 0;
            if (!dec.decode_bit(static_cast<uint16_t>(base + 5u), b)) return false;
            mag = 2u + static_cast<uint32_t>(b);
        }
        else if (bkt == 3u)
        {
            uint32_t rem = 0;
            if (!dec.decode_bits(static_cast<uint16_t>(base + 6u), 2, rem)) return false;
            mag = 4u + rem;
        }
        else
        {
            uint32_t tail = 0;
            if (!decode_uvar_struct(dec, static_cast<uint16_t>(base + 16u), tail)) return false;
            mag = 8u + tail;
        }

        residual = sign ? -static_cast<int32_t>(mag) : static_cast<int32_t>(mag);
        return true;
    }

    static uint8_t residual_history_class(int32_t residual)
    {
        const uint32_t mag = static_cast<uint32_t>(std::abs(residual));
        if (mag == 0u) return 0u;
        if (mag == 1u) return 1u;
        if (mag <= 7u) return 2u;
        return 3u;
    }

    } // namespace

    static bool apply_palette_ctx_structured_arith(const uint8_t *updates,
                                                   size_t updates_size,
                                                   std::vector<uint32_t> &curr_indices,
                                                   int width,
                                                   size_t total_pixels,
                                                   size_t palette_size)
    {
        StructuredArithDecoder dec;
        if (!dec.init(updates, updates_size)) return false;

        size_t idx_cursor = 0;
        uint8_t prev_cmd = 0u;
        uint8_t residual_history = 0u;

        auto decode_cmd = [&](uint8_t &cmd) -> bool {
            const uint16_t base = static_cast<uint16_t>(32u + static_cast<uint16_t>(prev_cmd) * 3u);
            uint8_t b0 = 0;
            if (!dec.decode_bit(base, b0)) return false;
            if (!b0)
            {
                cmd = 0u;
            }
            else
            {
                uint8_t b1 = 0;
                if (!dec.decode_bit(static_cast<uint16_t>(base + 1u), b1)) return false;
                if (!b1)
                {
                    cmd = 1u;
                }
                else
                {
                    uint8_t b2 = 0;
                    if (!dec.decode_bit(static_cast<uint16_t>(base + 2u), b2)) return false;
                    cmd = b2 ? 3u : 2u;
                }
            }
            prev_cmd = cmd;
            return true;
        };

        while (true)
        {
            uint8_t cmd = 0;
            if (!decode_cmd(cmd)) return false;
            if (cmd == 0u) break;

            if (cmd == 1u)
            {
                uint32_t skip = 0;
                if (!decode_len_struct(dec, 0u, skip)) return false;
                if (skip == 0u || idx_cursor + skip > total_pixels) return false;
                idx_cursor += skip;
            }
            else if (cmd == 2u)
            {
                uint32_t run = 0;
                if (!decode_len_struct(dec, 1u, run)) return false;
                if (run == 0u || idx_cursor + run > total_pixels) return false;
                for (uint32_t k = 0; k < run; ++k)
                {
                    const uint8_t pcls = palette_predictor_class(curr_indices, idx_cursor, width, curr_indices[idx_cursor]);
                    const uint32_t pred = palette_predictor(curr_indices, idx_cursor, width, curr_indices[idx_cursor]);
                    int32_t res = 0;
                    if (!decode_residual_struct(dec, pcls, residual_history, res)) return false;
                    residual_history = residual_history_class(res);
                    const int64_t v = static_cast<int64_t>(pred) + static_cast<int64_t>(res);
                    if (v < 0 || v >= static_cast<int64_t>(palette_size)) return false;
                    curr_indices[idx_cursor++] = static_cast<uint32_t>(v);
                }
            }
            else if (cmd == 3u)
            {
                uint32_t rows = 0;
                if (!decode_len_struct(dec, 2u, rows)) return false;
                if (rows == 0u) return false;
                for (uint32_t r = 0; r < rows; ++r)
                {
                    if (idx_cursor % static_cast<size_t>(width) != 0) return false;
                    if (idx_cursor < static_cast<size_t>(width)) return false;
                    if (idx_cursor + static_cast<size_t>(width) > total_pixels) return false;
                    for (int x = 0; x < width; ++x)
                    {
                        curr_indices[idx_cursor + static_cast<size_t>(x)] =
                            curr_indices[idx_cursor - static_cast<size_t>(width) + static_cast<size_t>(x)];
                    }
                    idx_cursor += static_cast<size_t>(width);
                }
            }
            else
            {
                return false;
            }
        }

        return true;
    }

    static bool apply_palette_ctx_structured_arith_compat_mru(const uint8_t *updates,
                                                              size_t updates_size,
                                                              std::vector<uint32_t> &curr_indices,
                                                              int width,
                                                              size_t total_pixels,
                                                              size_t palette_size)
    {
        StructuredArithDecoder dec;
        if (!dec.init(updates, updates_size)) return false;

        constexpr size_t kCompatMruSize = 32u;
        constexpr uint16_t kCompatMruCtxBase = 7424u;

        std::array<uint32_t, kCompatMruSize> mru{};
        size_t mru_count = 0;
        size_t idx_cursor = 0;
        uint8_t prev_cmd = 0u;
        uint8_t residual_history = 0u;

        auto mru_find = [&](uint32_t value) -> int {
            for (size_t i = 0; i < mru_count; ++i)
            {
                if (mru[i] == value)
                    return static_cast<int>(i);
            }
            return -1;
        };

        auto mru_touch = [&](uint32_t value) {
            const int found = mru_find(value);
            if (found == 0)
                return;
            const size_t limit = (found > 0)
                ? static_cast<size_t>(found)
                : std::min(mru_count, kCompatMruSize - 1u);
            for (size_t i = limit; i > 0; --i)
                mru[i] = mru[i - 1u];
            mru[0] = value;
            if (found < 0 && mru_count < kCompatMruSize)
                ++mru_count;
        };

        auto decode_cmd = [&](uint8_t &cmd) -> bool {
            const uint16_t base = static_cast<uint16_t>(32u + static_cast<uint16_t>(prev_cmd) * 4u);
            uint8_t b0 = 0;
            if (!dec.decode_bit(base, b0)) return false;
            if (!b0)
            {
                cmd = 0u;
            }
            else
            {
                uint8_t b1 = 0;
                if (!dec.decode_bit(static_cast<uint16_t>(base + 1u), b1)) return false;
                if (!b1)
                {
                    cmd = 1u;
                }
                else
                {
                    uint8_t b2 = 0;
                    if (!dec.decode_bit(static_cast<uint16_t>(base + 2u), b2)) return false;
                    if (!b2)
                    {
                        cmd = 2u;
                    }
                    else
                    {
                        uint8_t b3 = 0;
                        if (!dec.decode_bit(static_cast<uint16_t>(base + 3u), b3)) return false;
                        cmd = b3 ? 4u : 3u;
                    }
                }
            }
            prev_cmd = cmd;
            return true;
        };

        auto decode_changed_index = [&](uint32_t& value) -> bool {
            const uint16_t cache_base =
                static_cast<uint16_t>(kCompatMruCtxBase + static_cast<uint16_t>(residual_history) * 8u);
            uint8_t cache_hit = 0;
            if (!dec.decode_bit(cache_base, cache_hit)) return false;
            if (cache_hit)
            {
                uint32_t slot = 0;
                if (!dec.decode_bits(static_cast<uint16_t>(cache_base + 1u), 5, slot)) return false;
                if (slot >= mru_count) return false;
                value = mru[slot];
                residual_history = 0u;
                mru_touch(value);
                return true;
            }

            const uint8_t pcls = palette_predictor_class(curr_indices, idx_cursor, width, curr_indices[idx_cursor]);
            const uint32_t pred = palette_predictor(curr_indices, idx_cursor, width, curr_indices[idx_cursor]);
            int32_t res = 0;
            if (!decode_residual_struct(dec, pcls, residual_history, res)) return false;
            residual_history = residual_history_class(res);
            const int64_t v = static_cast<int64_t>(pred) + static_cast<int64_t>(res);
            if (v < 0 || v >= static_cast<int64_t>(palette_size)) return false;
            value = static_cast<uint32_t>(v);
            mru_touch(value);
            return true;
        };

        while (true)
        {
            uint8_t cmd = 0;
            if (!decode_cmd(cmd)) return false;
            if (cmd == 0u) break;

            if (cmd == 1u)
            {
                uint32_t skip = 0;
                if (!decode_len_struct(dec, 0u, skip)) return false;
                if (skip == 0u || idx_cursor + skip > total_pixels) return false;
                idx_cursor += skip;
            }
            else if (cmd == 2u)
            {
                uint32_t run = 0;
                if (!decode_len_struct(dec, 1u, run)) return false;
                if (run == 0u || idx_cursor + run > total_pixels) return false;
                for (uint32_t k = 0; k < run; ++k)
                {
                    uint32_t value = 0;
                    if (!decode_changed_index(value)) return false;
                    curr_indices[idx_cursor++] = value;
                }
            }
            else if (cmd == 3u)
            {
                uint32_t rows = 0;
                if (!decode_len_struct(dec, 2u, rows)) return false;
                if (rows == 0u) return false;
                for (uint32_t r = 0; r < rows; ++r)
                {
                    if (idx_cursor % static_cast<size_t>(width) != 0) return false;
                    if (idx_cursor < static_cast<size_t>(width)) return false;
                    if (idx_cursor + static_cast<size_t>(width) > total_pixels) return false;
                    for (int x = 0; x < width; ++x)
                    {
                        curr_indices[idx_cursor + static_cast<size_t>(x)] =
                            curr_indices[idx_cursor - static_cast<size_t>(width) + static_cast<size_t>(x)];
                    }
                    idx_cursor += static_cast<size_t>(width);
                }
            }
            else if (cmd == 4u)
            {
                uint32_t run = 0;
                if (!decode_len_struct(dec, 3u, run)) return false;
                if (run == 0u ||
                    idx_cursor < static_cast<size_t>(width) ||
                    idx_cursor + run > total_pixels)
                {
                    return false;
                }
                for (uint32_t k = 0; k < run; ++k)
                {
                    curr_indices[idx_cursor] =
                        curr_indices[idx_cursor - static_cast<size_t>(width)];
                    mru_touch(curr_indices[idx_cursor]);
                    ++idx_cursor;
                }
            }
            else
            {
                return false;
            }
        }

        return true;
    }

    static bool apply_palette_context_symbols(const uint8_t *updates, size_t updates_size,
                                              std::vector<uint32_t> &curr_indices, int width,
                                              size_t total_pixels, size_t palette_size,
                                              bool wide_cache = false,
                                              bool frame_table = false)
    {
        size_t prefix_pos = 0u;
        std::vector<uint32_t> table;
        if (frame_table)
        {
            uint32_t table_count = 0u;
            if (!read_uvar_bytes(updates, updates_size, prefix_pos, table_count) || table_count > 64u)
                return false;
            table.resize(table_count);
            for (uint32_t &value : table)
                if (!read_uvar_bytes(updates, updates_size, prefix_pos, value) || value >= palette_size)
                    return false;
        }
        StructuredArithDecoder dec; if (!dec.init(updates + prefix_pos, updates_size - prefix_pos)) return false;
        constexpr size_t kCacheSize = 127u; constexpr uint16_t kSymbolCtxBase = 7680u;
        const size_t cache_limit = wide_cache ? kCacheSize : 32u;
        std::array<uint32_t, kCacheSize> cache{}; size_t cache_count = 0, cursor = 0;
        uint8_t prev_cmd = 0u, symbol_history = 0u, residual_history = 0u;
        auto cache_find = [&](uint32_t v) { for (size_t i=0;i<cache_count;++i) if(cache[i]==v) return static_cast<int>(i); return -1; };
        auto cache_touch = [&](uint32_t v) { const int f=cache_find(v); if(f==0)return; const size_t l=f>0?static_cast<size_t>(f):std::min(cache_count,cache_limit-1u); for(size_t i=l;i>0;--i)cache[i]=cache[i-1u]; cache[0]=v; if(f<0&&cache_count<cache_limit)++cache_count; };
        auto decode_cmd = [&](uint8_t &cmd)->bool { const uint16_t b=static_cast<uint16_t>(32u+prev_cmd*4u); uint8_t x=0;if(!dec.decode_bit(b,x))return false;if(!x)cmd=0u;else{if(!dec.decode_bit(b+1u,x))return false;if(!x)cmd=1u;else{if(!dec.decode_bit(b+2u,x))return false;if(!x)cmd=2u;else{if(!dec.decode_bit(b+3u,x))return false;cmd=x?4u:3u;}}}prev_cmd=cmd;return true;};
        while(true){uint8_t cmd=0;if(!decode_cmd(cmd))return false;if(cmd==0u)break;
            if(cmd==1u){uint32_t skip=0;if(!decode_len_struct(dec,0u,skip)||!skip||cursor+skip>total_pixels)return false;cursor+=skip;continue;}
            if(cmd==3u){uint32_t rows=0;if(!decode_len_struct(dec,2u,rows)||!rows)return false;for(uint32_t r=0;r<rows;++r){if(cursor%static_cast<size_t>(width)||cursor<static_cast<size_t>(width)||cursor+width>total_pixels)return false;std::copy_n(curr_indices.begin()+static_cast<std::ptrdiff_t>(cursor-width),width,curr_indices.begin()+static_cast<std::ptrdiff_t>(cursor));cursor+=width;}continue;}
            if(cmd==4u&&wide_cache){uint32_t run=0;if(!decode_len_struct(dec,3u,run)||!run||cursor<static_cast<size_t>(width)||cursor+run>total_pixels)return false;for(uint32_t k=0;k<run;++k){curr_indices[cursor]=curr_indices[cursor-static_cast<size_t>(width)];cache_touch(curr_indices[cursor]);++cursor;}continue;}
            if(cmd!=2u)return false;uint32_t run=0;if(!decode_len_struct(dec,1u,run)||!run||cursor+run>total_pixels)return false;
            for(uint32_t k=0;k<run;++k){const size_t x=cursor%static_cast<size_t>(width);const bool hl=x>0u,hu=cursor>=static_cast<size_t>(width),hul=hl&&hu;const uint32_t left=hl?curr_indices[cursor-1u]:0u,up=hu?curr_indices[cursor-width]:0u,ul=hul?curr_indices[cursor-width-1u]:0u;const uint16_t b=static_cast<uint16_t>(kSymbolCtxBase+symbol_history*((wide_cache||frame_table)?32u:16u));uint32_t value=0;bool matched=false;uint8_t bit=0;
                if(hl){if(!dec.decode_bit(b,bit))return false;if(bit){value=left;matched=true;symbol_history=0u;}}
                if(!matched&&hu&&(!hl||up!=left)){if(!dec.decode_bit(b+1u,bit))return false;if(bit){value=up;matched=true;symbol_history=1u;}}
                if(!matched&&hul&&ul!=left&&ul!=up){if(!dec.decode_bit(b+2u,bit))return false;if(bit){value=ul;matched=true;symbol_history=2u;}}
                if(!matched){if(frame_table){uint8_t table_hit=0u;if(!dec.decode_bit(b+3u,table_hit))return false;if(table_hit){uint32_t rank=0u;if(!dec.decode_bits(b+4u,6,rank)||rank>=table.size())return false;value=table[rank];symbol_history=3u;residual_history=0u;if(value>=palette_size)return false;curr_indices[cursor++]=value;cache_touch(value);continue;}}uint8_t hit=0;if(!dec.decode_bit(b+(frame_table?10u:3u),hit))return false;if(hit){uint32_t slot=0;if(!wide_cache){if(!dec.decode_bits(b+4u,5,slot))return false;}else{uint32_t bucket=0u;uint8_t more=0u;do{if(!dec.decode_bit(static_cast<uint16_t>(b+(frame_table?11u:4u)+bucket),more))return false;if(more&&++bucket>6u)return false;}while(more);uint32_t remainder=0u;if(bucket>0u&&!dec.decode_bits(b+(frame_table?20u:16u),static_cast<int>(bucket),remainder))return false;slot=((1u<<bucket)-1u)+remainder;}if(slot>=cache_count)return false;value=cache[slot];symbol_history=3u;residual_history=0u;}else{const uint32_t predictor=palette_predictor(curr_indices,cursor,width,curr_indices[cursor]);const uint8_t predictor_class=palette_predictor_class(curr_indices,cursor,width,curr_indices[cursor]);int32_t residual=0;if(!decode_residual_struct(dec,predictor_class,residual_history,residual))return false;const int64_t decoded=static_cast<int64_t>(predictor)+residual;if(decoded<0||decoded>=static_cast<int64_t>(palette_size))return false;value=static_cast<uint32_t>(decoded);symbol_history=4u;residual_history=residual_history_class(residual);}}else residual_history=0u;
                if(value>=palette_size)return false;curr_indices[cursor++]=value;cache_touch(value);}}
        return true;
    }

    static bool apply_palette_ctx_wash_run(const uint8_t *updates,
                                           size_t updates_size,
                                           size_t &updates_pos,
                                           std::vector<uint32_t> &curr_indices,
                                           size_t &idx_cursor,
                                           size_t total_pixels,
                                           size_t palette_size)
    {
        uint32_t run = 0;
        uint32_t table_count = 0;
        if (!read_uvar_bytes(updates, updates_size, updates_pos, run) ||
            !read_uvar_bytes(updates, updates_size, updates_pos, table_count))
        {
            return false;
        }
        if (run == 0 || table_count == 0) return false;
        if (idx_cursor + static_cast<size_t>(run) > total_pixels) return false;
        if (static_cast<size_t>(table_count) > palette_size) return false;
        if (updates_pos >= updates_size) return false;

        const uint8_t local_bits = updates[updates_pos++];
        if (!pvx_is_valid_palette_bits(local_bits)) return false;

        std::vector<uint32_t> table(table_count);
        for (uint32_t i = 0; i < table_count; ++i)
        {
            uint32_t value = 0;
            if (!read_uvar_bytes(updates, updates_size, updates_pos, value)) return false;
            if (value >= palette_size) return false;
            table[i] = value;
        }

        std::vector<uint32_t> local(run);
        if (!read_packed_indices(updates, updates_size, updates_pos, local.data(), run, local_bits))
        {
            return false;
        }

        for (uint32_t i = 0; i < run; ++i)
        {
            const uint32_t local_idx = local[i];
            if (local_idx >= table_count) return false;
            curr_indices[idx_cursor + static_cast<size_t>(i)] = table[local_idx];
        }
        idx_cursor += static_cast<size_t>(run);
        return true;
    }

    static bool apply_palette_ctx_updates(const uint8_t *updates,
                                          size_t updates_size,
                                          std::vector<uint32_t> &curr_indices,
                                          int width,
                                          size_t total_pixels,
                                          size_t palette_size)
    {
        size_t updates_pos = 0;
        size_t idx_cursor = 0;
        while (updates_pos < updates_size)
        {
            const uint8_t cmd = updates[updates_pos++];
            if (cmd == 0u) break;

            if (cmd == 1u)
            {
                uint32_t skip = 0;
                if (!read_uvar_bytes(updates, updates_size, updates_pos, skip)) return false;
                if (idx_cursor + skip > total_pixels) return false;
                idx_cursor += skip;
            }
            else if (cmd == 2u)
            {
                uint32_t run = 0;
                if (!read_uvar_bytes(updates, updates_size, updates_pos, run)) return false;
                if (idx_cursor + run > total_pixels) return false;
                for (uint32_t k = 0; k < run; ++k)
                {
                    uint32_t zz = 0;
                    if (!read_uvar_bytes(updates, updates_size, updates_pos, zz)) return false;
                    const int32_t res = zigzag_decode_i32(zz);
                    const uint32_t pred = palette_predictor(curr_indices, idx_cursor, width, curr_indices[idx_cursor]);
                    const int64_t v = static_cast<int64_t>(pred) + static_cast<int64_t>(res);
                    if (v < 0 || v >= static_cast<int64_t>(palette_size)) return false;
                    curr_indices[idx_cursor++] = static_cast<uint32_t>(v);
                }
            }
            else if (cmd == 3u)
            {
                uint32_t rows = 0;
                if (!read_uvar_bytes(updates, updates_size, updates_pos, rows)) return false;
                for (uint32_t r = 0; r < rows; ++r)
                {
                    if (idx_cursor % static_cast<size_t>(width) != 0) return false;
                    if (idx_cursor < static_cast<size_t>(width)) return false;
                    if (idx_cursor + static_cast<size_t>(width) > total_pixels) return false;
                    for (int x = 0; x < width; ++x)
                    {
                        curr_indices[idx_cursor + static_cast<size_t>(x)] =
                            curr_indices[idx_cursor - static_cast<size_t>(width) + static_cast<size_t>(x)];
                    }
                    idx_cursor += static_cast<size_t>(width);
                }
            }
            else if (cmd == 4u)
            {
                uint32_t run = 0;
                uint32_t value = 0;
                if (!read_uvar_bytes(updates, updates_size, updates_pos, run) ||
                    !read_uvar_bytes(updates, updates_size, updates_pos, value)) return false;
                if (run == 0 || idx_cursor + run > total_pixels) return false;
                if (value >= palette_size) return false;
                for (uint32_t k = 0; k < run; ++k)
                    curr_indices[idx_cursor++] = value;
            }
            else if (cmd == 5u)
            {
                if (!apply_palette_ctx_wash_run(updates,
                                                updates_size,
                                                updates_pos,
                                                curr_indices,
                                                idx_cursor,
                                                total_pixels,
                                                palette_size))
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        return true;
    }

    static bool apply_palette_temporal_delta_updates(const uint8_t *updates,
                                                     size_t updates_size,
                                                     std::vector<uint32_t> &curr_indices,
                                                     size_t total_pixels,
                                                     size_t palette_size)
    {
        size_t pos = 0;
        size_t cursor = 0;
        while (pos < updates_size)
        {
            const uint8_t cmd = updates[pos++];
            if (cmd == 0u) break;
            if (cmd == 1u)
            {
                uint32_t skip = 0;
                if (!read_uvar_bytes(updates, updates_size, pos, skip)) return false;
                if (cursor + static_cast<size_t>(skip) > total_pixels) return false;
                cursor += static_cast<size_t>(skip);
                continue;
            }
            if (cmd != 2u)
            {
                return false;
            }

            uint32_t run = 0;
            if (!read_uvar_bytes(updates, updates_size, pos, run)) return false;
            if (run == 0 || cursor + static_cast<size_t>(run) > total_pixels) return false;
            for (uint32_t k = 0; k < run; ++k)
            {
                uint32_t zz = 0;
                if (!read_uvar_bytes(updates, updates_size, pos, zz)) return false;
                const int32_t delta = zigzag_decode_i32(zz);
                const int64_t value = static_cast<int64_t>(curr_indices[cursor]) + static_cast<int64_t>(delta);
                if (value < 0 || value >= static_cast<int64_t>(palette_size)) return false;
                curr_indices[cursor++] = static_cast<uint32_t>(value);
            }
        }
        return true;
    }

    static bool apply_palette_local_remap_updates(const uint8_t *updates,
                                                  size_t updates_size,
                                                  std::vector<uint32_t> &curr_indices,
                                                  size_t total_pixels,
                                                  size_t palette_size,
                                                  uint8_t global_bits)
    {
        size_t pos = 0;
        uint32_t table_count = 0;
        if (!read_uvar_bytes(updates, updates_size, pos, table_count)) return false;
        if (pos >= updates_size) return false;
        const uint8_t local_bits_tag = updates[pos++];
        const bool delta_table = (local_bits_tag & 0x80u) != 0;
        const uint8_t local_bits = static_cast<uint8_t>(local_bits_tag & 0x7Fu);
        if (!pvx_is_valid_palette_bits(local_bits)) return false;
        if (!pvx_is_valid_palette_bits(global_bits)) return false;
        if (static_cast<size_t>(table_count) > palette_size) return false;

        std::vector<uint32_t> table(table_count);
        if (delta_table)
        {
            uint32_t prev = 0;
            for (uint32_t i = 0; i < table_count; ++i)
            {
                uint32_t delta = 0;
                if (!read_uvar_bytes(updates, updates_size, pos, delta)) return false;
                if (i == 0)
                {
                    prev = delta;
                }
                else
                {
                    if (delta > UINT32_MAX - prev) return false;
                    prev += delta;
                }
                table[i] = prev;
            }
        }
        else
        {
            if (!read_packed_indices(updates, updates_size, pos, table.data(), table.size(), global_bits)) return false;
        }
        for (uint32_t idx : table)
        {
            if (idx >= palette_size) return false;
        }

        size_t idx_cursor = 0;
        std::vector<uint32_t> local_run;
        while (pos < updates_size)
        {
            uint32_t skip = 0;
            uint32_t run = 0;
            if (!read_uvar_bytes(updates, updates_size, pos, skip) ||
                !read_uvar_bytes(updates, updates_size, pos, run))
                return false;
            if (skip == 0 && run == 0) break;

            if (idx_cursor + skip > total_pixels) return false;
            idx_cursor += skip;
            if (idx_cursor + run > total_pixels) return false;

            local_run.resize(run);
            if (!read_packed_indices(updates, updates_size, pos, local_run.data(), run, local_bits)) return false;
            for (uint32_t k = 0; k < run; ++k)
            {
                const uint32_t local_idx = local_run[k];
                if (local_idx >= table_count) return false;
                curr_indices[idx_cursor++] = table[local_idx];
            }
        }

        return true;
    }

    static void reverse_row_filter_literal(uint8_t mode,
                                           const uint8_t* filtered,
                                           const uint8_t* prev,
                                           int len,
                                           std::vector<uint8_t>& out)
    {
        out.resize(static_cast<size_t>(len));
        switch (mode)
        {
        case FILTER_NONE:
            std::memcpy(out.data(), filtered, static_cast<size_t>(len));
            break;
        case FILTER_SUB:
            for (int i = 0; i < len; ++i)
            {
                const uint8_t left = (i > 0) ? out[static_cast<size_t>(i - 1)] : 0;
                out[static_cast<size_t>(i)] = static_cast<uint8_t>((int(filtered[i]) + int(left)) & 0xFF);
            }
            break;
        case FILTER_UP:
            for (int i = 0; i < len; ++i)
            {
                const uint8_t up = prev ? prev[i] : 0;
                out[static_cast<size_t>(i)] = static_cast<uint8_t>((int(filtered[i]) + int(up)) & 0xFF);
            }
            break;
        case FILTER_AVG:
            for (int i = 0; i < len; ++i)
            {
                const uint8_t left = (i > 0) ? out[static_cast<size_t>(i - 1)] : 0;
                const uint8_t up = prev ? prev[i] : 0;
                const uint8_t avg = static_cast<uint8_t>((uint32_t(left) + uint32_t(up)) >> 1);
                out[static_cast<size_t>(i)] = static_cast<uint8_t>((int(filtered[i]) + int(avg)) & 0xFF);
            }
            break;
        case FILTER_PAETH:
            for (int i = 0; i < len; ++i)
            {
                const uint8_t left = (i > 0) ? out[static_cast<size_t>(i - 1)] : 0;
                const uint8_t up = prev ? prev[i] : 0;
                const uint8_t up_left = (prev && i > 0) ? prev[i - 1] : 0;
                const uint8_t p = paeth(left, up, up_left);
                out[static_cast<size_t>(i)] = static_cast<uint8_t>((int(filtered[i]) + int(p)) & 0xFF);
            }
            break;
        default:
            std::memcpy(out.data(), filtered, static_cast<size_t>(len));
            break;
        }
    }

    static bool unfilter_literal_residual_blocks(const uint8_t* mode_data,
                                                 size_t mode_size,
                                                 const uint8_t* filtered_data,
                                                 size_t filtered_size,
                                                 size_t run_blocks,
                                                 std::vector<uint8_t>& residual)
    {
        const size_t expected_filtered = run_blocks * BLOCK_SIZE * BLOCK_SIZE * CHANNELS;
        if (filtered_size < expected_filtered)
            return false;

        residual.assign(expected_filtered, 0);
        uint32_t bitpos = 0;
        size_t src_pos = 0;
        std::vector<uint8_t> row_out;
        std::vector<uint8_t> prev_row;

        for (size_t block = 0; block < run_blocks; ++block)
        {
            const size_t block_base = block * BLOCK_SIZE * BLOCK_SIZE * CHANNELS;
            for (int channel = 0; channel < CHANNELS; ++channel)
            {
                prev_row.clear();
                for (int y = 0; y < BLOCK_SIZE; ++y)
                {
                    if (src_pos + BLOCK_SIZE > filtered_size)
                        return false;

                    const uint8_t mode = bitpack_read3(mode_data, mode_size, bitpos);
                    if (mode > FILTER_PAETH)
                        return false;

                    const uint8_t* prev_ptr = prev_row.empty() ? nullptr : prev_row.data();
                    reverse_row_filter_literal(mode,
                                               filtered_data + src_pos,
                                               prev_ptr,
                                               BLOCK_SIZE,
                                               row_out);
                    src_pos += BLOCK_SIZE;

                    for (int x = 0; x < BLOCK_SIZE; ++x)
                    {
                        const size_t dst = block_base +
                                           static_cast<size_t>(y) * BLOCK_SIZE * CHANNELS +
                                           static_cast<size_t>(x) * CHANNELS +
                                           static_cast<size_t>(channel);
                        residual[dst] = row_out[static_cast<size_t>(x)];
                    }
                    prev_row = row_out;
                }
            }
        }

        return src_pos == expected_filtered;
    }

    static bool read_packed_indices(const uint8_t* data,
                                    size_t size,
                                    size_t& pos,
                                    uint32_t* dst,
                                    size_t count,
                                    uint8_t bits)
    {
        return pvx_read_packed_indices(data, size, pos, dst, count, bits);
    }

    static bool decode_keyframe_palette_indices(const uint8_t* data,
                                                size_t size,
                                                int width,
                                                int height,
                                                std::vector<uint32_t>& indices,
                                                uint8_t& bits)
    {
        static constexpr uint8_t kExtended = 0x80u;
        static constexpr uint8_t kPacked = 0u;
        static constexpr uint8_t kContext = 1u;
        static constexpr uint8_t kMixedTiled = 2u;
        static constexpr uint8_t kLocalRemap = 3u;

        if (!data || size == 0 || width <= 0 || height <= 0) return false;

        const uint8_t tag = data[0];
        const bool extended = (tag & kExtended) != 0;
        bits = extended ? static_cast<uint8_t>(tag & 0x7Fu) : tag;
        if (!pvx_is_valid_palette_bits(bits)) return false;

        const size_t total_pixels = static_cast<size_t>(width) * static_cast<size_t>(height);
        indices.assign(total_pixels, 0u);
        size_t pos = extended ? 2u : 1u;
        const uint32_t max_index = (bits == 24) ? 0xFFFFFFu : ((1u << bits) - 1u);

        if (!extended)
        {
            return read_packed_indices(data, size, pos, indices.data(), total_pixels, bits);
        }

        if (size < 2) return false;
        const uint8_t coding = data[1];
        if (coding == kPacked)
        {
            return read_packed_indices(data, size, pos, indices.data(), total_pixels, bits);
        }
        if (coding == kLocalRemap)
        {
            uint32_t table_count = 0;
            if (!read_uvar_bytes(data, size, pos, table_count)) return false;
            if (table_count == 0 || table_count - 1 > max_index) return false;
            if (pos >= size) return false;

            const uint8_t local_bits_tag = data[pos++];
            const bool delta_table = (local_bits_tag & 0x80u) != 0;
            const uint8_t local_bits = static_cast<uint8_t>(local_bits_tag & 0x7Fu);
            if (!pvx_is_valid_palette_bits(local_bits) || local_bits > bits) return false;

            std::vector<uint32_t> table(table_count);
            if (delta_table)
            {
                uint32_t prev = 0;
                for (uint32_t i = 0; i < table_count; ++i)
                {
                    uint32_t encoded = 0;
                    if (!read_uvar_bytes(data, size, pos, encoded)) return false;
                    if (i == 0)
                    {
                        prev = encoded;
                    }
                    else
                    {
                        if (encoded > static_cast<uint32_t>(std::numeric_limits<uint32_t>::max()) - prev) return false;
                        prev += encoded;
                    }
                    if (prev > max_index) return false;
                    table[i] = prev;
                }
            }
            else
            {
                if (!read_packed_indices(data, size, pos, table.data(), table_count, bits)) return false;
                for (uint32_t idx : table)
                {
                    if (idx > max_index) return false;
                }
            }

            if (!read_packed_indices(data, size, pos, indices.data(), total_pixels, local_bits)) return false;
            for (size_t i = 0; i < total_pixels; ++i)
            {
                if (indices[i] >= table_count) return false;
                indices[i] = table[indices[i]];
            }
            return true;
        }
        if (coding != kContext)
        {
            if (coding != kMixedTiled)
                return false;

            size_t row = 0;
            while (row < static_cast<size_t>(height))
            {
                uint32_t rows_u = 0;
                if (!read_uvar_bytes(data, size, pos, rows_u)) return false;
                if (rows_u == 0)
                    return row == static_cast<size_t>(height);
                if (rows_u > static_cast<uint32_t>(height) || row + rows_u > static_cast<size_t>(height)) return false;

                uint32_t submode = 0;
                uint32_t seg_size = 0;
                if (!read_uvar_bytes(data, size, pos, submode) ||
                    !read_uvar_bytes(data, size, pos, seg_size))
                    return false;
                if (size - pos < seg_size) return false;

                const uint8_t* seg = data + pos;
                const size_t count = static_cast<size_t>(rows_u) * static_cast<size_t>(width);
                const size_t dst_start = row * static_cast<size_t>(width);
                if (submode == kPacked)
                {
                    size_t seg_pos = 0;
                    if (!read_packed_indices(seg, seg_size, seg_pos, indices.data() + dst_start, count, bits))
                        return false;
                }
                else if (submode == kContext)
                {
                    std::vector<uint32_t> tile(count, 0u);
                    size_t seg_pos = 0;
                    for (size_t i = 0; i < count; ++i)
                    {
                        uint32_t zz = 0;
                        if (!read_uvar_bytes(seg, seg_size, seg_pos, zz)) return false;
                        const int32_t residual = zigzag_decode_i32(zz);
                        const uint32_t pred = palette_predictor(tile, i, width, 0u);
                        const int64_t value = static_cast<int64_t>(pred) + static_cast<int64_t>(residual);
                        if (value < 0 || value > static_cast<int64_t>(max_index)) return false;
                        tile[i] = static_cast<uint32_t>(value);
                    }
                    std::copy(tile.begin(), tile.end(), indices.begin() + static_cast<std::ptrdiff_t>(dst_start));
                }
                else
                {
                    return false;
                }
                pos += seg_size;
                row += rows_u;
            }
            return false;
        }

        for (size_t i = 0; i < total_pixels; ++i)
        {
            uint32_t zz = 0;
            if (!read_uvar_bytes(data, size, pos, zz)) return false;
            const int32_t residual = zigzag_decode_i32(zz);
            const uint32_t pred = palette_predictor(indices, i, width, 0u);
            const int64_t value = static_cast<int64_t>(pred) + static_cast<int64_t>(residual);
            if (value < 0 || value > static_cast<int64_t>(max_index)) return false;
            indices[i] = static_cast<uint32_t>(value);
        }
        return true;
    }

    static bool read_palette_rgb(const uint8_t* data,
                                 size_t size,
                                 size_t& pos,
                                 std::vector<uint32_t>& palette)
    {
        uint32_t count = 0;
        if (!read_uvar_bytes(data, size, pos, count)) return false;
        if (count == 0 || count > 4096) return false;
        if (size - pos < static_cast<size_t>(count) * 3u) return false;

        palette.resize(count);
        for (uint32_t i = 0; i < count; ++i)
        {
            const uint32_t r = data[pos++];
            const uint32_t g = data[pos++];
            const uint32_t b = data[pos++];
            palette[i] = r | (g << 8) | (b << 16);
        }
        return true;
    }

    static bool apply_palette_delta_payload(FramePaletteStream& prev_pal,
                                            const uint8_t* data,
                                            size_t size,
                                            int width,
                                            int height,
                                            std::vector<uint8_t>& out,
                                            bool allow_global_palette,
                                            std::string* error_out,
                                            std::vector<uint32_t>* out_indices,
                                            uint8_t* out_bits)
    {
        auto fail = [&](const char* reason) -> bool {
            const char* msg = reason ? reason : "unknown";
            if (error_out) *error_out = msg;
            DBG_LOGF("palette-delta: FAIL: %s", msg);
            return false;
        };

        if (!prev_pal.valid) return fail("prev palette stream invalid");

        size_t pos = 0;
        if (size < 2) return fail("payload too small for bits/mode");
        const uint8_t bits = data[pos++];
        const uint8_t mode = data[pos++];
        if (!pvx_is_valid_palette_bits(bits)) return fail("invalid packed index bit width");

        const size_t total_pixels = static_cast<size_t>(width) * static_cast<size_t>(height);
        const bool mode_uses_global_palette =
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirect) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectCtx) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectGmCtx) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectBlockMotionCtx) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectMultiScaleMotionCtx) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalFull) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDelta);

        std::unique_lock<std::mutex> globalPaletteReadLock;
        if (mode_uses_global_palette && allow_global_palette)
            globalPaletteReadLock = std::unique_lock<std::mutex>(g_gpalMutex);

        // ================================================================
        // GlobalDirect: no per-frame palette, indices are global palette indices.
        // ================================================================
        if (mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirect) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectCtx) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectGmCtx) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectBlockMotionCtx) ||
            mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectMultiScaleMotionCtx))
        {
            if (!allow_global_palette) return fail("global-direct mode not allowed");
            if (!g_engineGlobalPalette.loaded || g_engineGlobalPalette.colors.empty()) return fail("global palette not loaded");

            std::vector<uint32_t> curr_indices = prev_pal.indices;
            if (curr_indices.size() != total_pixels) return fail("prev indices size mismatch");
            int gm_dx = 0;
            int gm_dy = 0;

            PaletteUpdateCodingMode coding = PaletteUpdateCodingMode::LegacySkipRun;
            if (mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectCtx) ||
                mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectGmCtx) ||
                mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectBlockMotionCtx) ||
                mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectMultiScaleMotionCtx))
            {
                if (pos >= size) return fail("missing global_direct_ctx coding byte");
                coding = static_cast<PaletteUpdateCodingMode>(data[pos++]);
                if (mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectGmCtx))
                {
                    uint32_t dx_zz = 0;
                    uint32_t dy_zz = 0;
                    if (!read_uvar_bytes(data, size, pos, dx_zz) ||
                        !read_uvar_bytes(data, size, pos, dy_zz))
                        return fail("malformed global_direct_gm shift");
                    gm_dx = zigzag_decode_i32(dx_zz);
                    gm_dy = zigzag_decode_i32(dy_zz);
                    apply_palette_global_shift(prev_pal.indices, width, height, gm_dx, gm_dy, curr_indices);
                }
                else if (mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectBlockMotionCtx) ||
                         mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDirectMultiScaleMotionCtx))
                {
                    uint32_t tile_size = 0, vector_count = 0;
                    if (!read_uvar_bytes(data, size, pos, tile_size) ||
                        !read_uvar_bytes(data, size, pos, vector_count) ||
                        tile_size == 0u || tile_size > 1024u)
                        return fail("malformed block-motion field header");
                    const int motion_tile = static_cast<int>(tile_size);
                    const int tiles_x = (width + motion_tile - 1) / motion_tile;
                    const int tiles_y = (height + motion_tile - 1) / motion_tile;
                    if (vector_count != static_cast<uint32_t>(tiles_x * tiles_y))
                        return fail("block-motion vector count mismatch");
                    struct BlockMv { int dx; int dy; };
                    std::vector<BlockMv> vectors(vector_count);
                    if (mode == static_cast<uint8_t>(
                            PalettePayloadMode::GlobalDirectMultiScaleMotionCtx))
                    {
                        auto predictor = [&](size_t index) -> BlockMv {
                            const int tx = static_cast<int>(index % static_cast<size_t>(tiles_x));
                            const int ty = static_cast<int>(index / static_cast<size_t>(tiles_x));
                            if (tx > 0) return vectors[index - 1u];
                            if (ty > 0) return vectors[index - static_cast<size_t>(tiles_x)];
                            return {0, 0};
                        };
                        size_t index = 0u;
                        while (index < vectors.size())
                        {
                            uint32_t token = 0u;
                            if (!read_uvar_bytes(data, size, pos, token))
                                return fail("malformed spatial block-motion token");
                            if (token == 0u)
                            {
                                uint32_t run = 0u;
                                if (!read_uvar_bytes(data, size, pos, run) ||
                                    run == 0u || run > vectors.size() - index)
                                    return fail("malformed spatial block-motion run");
                                for (uint32_t k = 0; k < run; ++k, ++index)
                                    vectors[index] = predictor(index);
                                continue;
                            }
                            uint32_t dy_zz = 0u;
                            if (!read_uvar_bytes(data, size, pos, dy_zz))
                                return fail("malformed spatial block-motion vector");
                            const BlockMv pred = predictor(index);
                            const int dx = pred.dx + zigzag_decode_i32(token - 1u);
                            const int dy = pred.dy + zigzag_decode_i32(dy_zz);
                            if (std::abs(dx) > 4096 || std::abs(dy) > 4096)
                                return fail("spatial block-motion vector out of range");
                            vectors[index++] = {dx, dy};
                        }
                    }
                    else
                    {
                        int dx = 0, dy = 0;
                        for (auto &mv : vectors)
                        {
                            uint32_t dx_zz = 0, dy_zz = 0;
                            if (!read_uvar_bytes(data, size, pos, dx_zz) ||
                                !read_uvar_bytes(data, size, pos, dy_zz))
                                return fail("malformed block-motion vector");
                            dx += zigzag_decode_i32(dx_zz);
                            dy += zigzag_decode_i32(dy_zz);
                            if (std::abs(dx) > 4096 || std::abs(dy) > 4096)
                                return fail("block-motion vector out of range");
                            mv = {dx, dy};
                        }
                    }
                    curr_indices = prev_pal.indices;
                    for (int ty = 0; ty < tiles_y; ++ty)
                        for (int tx = 0; tx < tiles_x; ++tx)
                        {
                            const auto mv = vectors[static_cast<size_t>(ty) * tiles_x + tx];
                            const int x0 = tx * motion_tile;
                            const int x1 = std::min(width, x0 + motion_tile);
                            const int y0 = ty * motion_tile;
                            const int y1 = std::min(height, y0 + motion_tile);
                            for (int y = y0; y < y1; ++y)
                                for (int x = x0; x < x1; ++x)
                                {
                                    const int sx = x + mv.dx, sy = y + mv.dy;
                                    if (sx >= 0 && sy >= 0 && sx < width && sy < height)
                                        curr_indices[static_cast<size_t>(y) * width + x] =
                                            prev_pal.indices[static_cast<size_t>(sy) * width + sx];
                                }
                        }
                }
            }

            std::vector<uint32_t> predictor_baseline;
            if (coding == PaletteUpdateCodingMode::StructuredArithmetic)
                predictor_baseline = curr_indices;
            auto restore_global_direct_baseline = [&]() {
                curr_indices = predictor_baseline;
            };

            uint32_t updates_size = 0;
            if (!read_uvar_bytes(data, size, pos, updates_size)) return fail("failed to read updates_size");
            if (size - pos < updates_size) return fail("updates_size exceeds payload bytes");

            const uint8_t* updates = data + pos;
            size_t updates_pos = 0;
            size_t idx_cursor = 0;

            if (coding == PaletteUpdateCodingMode::ContextResidual)
            {
                if (!apply_palette_ctx_updates(updates,
                                               updates_size,
                                               curr_indices,
                                               width,
                                               total_pixels,
                                               g_engineGlobalPalette.colors.size()))
                {
                    return fail("context update stream malformed");
                }
            }
            else if (coding == PaletteUpdateCodingMode::LocalRemap)
            {
                if (!apply_palette_local_remap_updates(updates,
                                                       updates_size,
                                                       curr_indices,
                                                       total_pixels,
                                                       g_engineGlobalPalette.colors.size(),
                                                       bits))
                {
                    return fail("local remap update stream malformed");
                }
            }
            else if (coding == PaletteUpdateCodingMode::TemporalDelta)
            {
                if (!apply_palette_temporal_delta_updates(updates,
                                                          updates_size,
                                                          curr_indices,
                                                          total_pixels,
                                                          g_engineGlobalPalette.colors.size()))
                {
                    return fail("temporal delta update stream malformed");
                }
            }
            else if (coding == PaletteUpdateCodingMode::StructuredArithmetic)
            {
                if (!apply_palette_ctx_structured_arith(updates,
                                                        updates_size,
                                                        curr_indices,
                                                        width,
                                                        total_pixels,
                                                        g_engineGlobalPalette.colors.size()))
                {
                    restore_global_direct_baseline();
                    if (!apply_palette_ctx_structured_arith_compat_mru(updates,
                                                                       updates_size,
                                                                       curr_indices,
                                                                       width,
                                                                       total_pixels,
                                                                       g_engineGlobalPalette.colors.size()))
                    {
                        return fail("structured arithmetic palette stream malformed");
                    }
                }
            }
            else if (coding == PaletteUpdateCodingMode::RecentColorCache)
            {
                if (!apply_palette_ctx_structured_arith_compat_mru(updates, updates_size,
                        curr_indices, width, total_pixels, g_engineGlobalPalette.colors.size()))
                    return fail("recent-color palette stream malformed");
            }
            else if (coding == PaletteUpdateCodingMode::ContextSymbolMap)
            {
                if (!apply_palette_context_symbols(updates, updates_size,
                        curr_indices, width, total_pixels,
                        g_engineGlobalPalette.colors.size()))
                    return fail("context-symbol palette stream malformed");
            }
            else if (coding == PaletteUpdateCodingMode::ContextSymbolMapWide)
            {
                if (!apply_palette_context_symbols(updates, updates_size,
                        curr_indices, width, total_pixels,
                        g_engineGlobalPalette.colors.size(), true))
                    return fail("wide context-symbol palette stream malformed");
            }
            else if (coding == PaletteUpdateCodingMode::ContextSymbolMapTable)
            {
                if (!apply_palette_context_symbols(updates, updates_size,
                        curr_indices, width, total_pixels,
                        g_engineGlobalPalette.colors.size(), true, true))
                    return fail("table context-symbol palette stream malformed");
            }
            else if (coding == PaletteUpdateCodingMode::MixedTiled)
            {
                size_t tile_cursor = 0;
                while (updates_pos < updates_size)
                {
                    const uint8_t cmd = updates[updates_pos++];
                    if (cmd == 0u) break;
                    if (cmd != 4u) return fail("unknown mixed-tiled command");

                    uint32_t rows = 0;
                    uint32_t submode = 0;
                    uint32_t seg_size = 0;
                    if (!read_uvar_bytes(updates, updates_size, updates_pos, rows) ||
                        !read_uvar_bytes(updates, updates_size, updates_pos, submode) ||
                        !read_uvar_bytes(updates, updates_size, updates_pos, seg_size))
                        return fail("malformed mixed-tiled header");
                    if (updates_size - updates_pos < seg_size) return fail("mixed-tiled segment overruns updates");

                    const size_t tile_count = static_cast<size_t>(rows) * static_cast<size_t>(width);
                    if (tile_cursor + tile_count > total_pixels) return fail("mixed-tiled cursor overrun");

                    std::vector<uint32_t> tile_prev(curr_indices.begin() + static_cast<std::ptrdiff_t>(tile_cursor),
                                                    curr_indices.begin() + static_cast<std::ptrdiff_t>(tile_cursor + tile_count));
                    std::vector<uint32_t> tile_next = tile_prev;

                    const uint8_t* seg = updates + updates_pos;
                    size_t seg_pos = 0;

                    if (submode == 0u)
                    {
                        size_t local_cursor = 0;
                        while (seg_pos < seg_size)
                        {
                            uint32_t skip = 0;
                            uint32_t run = 0;
                            if (!read_uvar_bytes(seg, seg_size, seg_pos, skip) ||
                                !read_uvar_bytes(seg, seg_size, seg_pos, run))
                                return fail("mixed-tiled legacy skip/run parse failed");
                            if (skip == 0 && run == 0) break;
                            if (local_cursor + skip > tile_count) return fail("mixed-tiled legacy skip overrun");
                            local_cursor += skip;
                            if (local_cursor + run > tile_count) return fail("mixed-tiled legacy run overrun");
                            if (!read_packed_indices(seg, seg_size, seg_pos, tile_next.data() + local_cursor, run, bits))
                                return fail("mixed-tiled legacy packed stream malformed");
                            for (size_t i = 0; i < run; ++i)
                            {
                                if (tile_next[local_cursor + i] >= g_engineGlobalPalette.colors.size())
                                    return fail("mixed-tiled legacy index out of range");
                            }
                            local_cursor += run;
                        }
                    }
                    else if (submode == 1u)
                    {
                        size_t local_cursor = 0;
                        while (seg_pos < seg_size)
                        {
                            const uint8_t scmd = seg[seg_pos++];
                            if (scmd == 0u) break;
                            if (scmd == 1u)
                            {
                                uint32_t skip = 0;
                                if (!read_uvar_bytes(seg, seg_size, seg_pos, skip))
                                    return fail("mixed-tiled ctx skip parse failed");
                                if (local_cursor + skip > tile_count) return fail("mixed-tiled ctx skip overrun");
                                local_cursor += skip;
                            }
                            else if (scmd == 2u)
                            {
                                uint32_t run = 0;
                                if (!read_uvar_bytes(seg, seg_size, seg_pos, run))
                                    return fail("mixed-tiled ctx run parse failed");
                                if (local_cursor + run > tile_count) return fail("mixed-tiled ctx run overrun");
                                for (uint32_t k = 0; k < run; ++k)
                                {
                                    uint32_t zz = 0;
                                    if (!read_uvar_bytes(seg, seg_size, seg_pos, zz))
                                        return fail("mixed-tiled ctx residual parse failed");
                                    const int32_t res = zigzag_decode_i32(zz);
                                    const uint32_t pred = palette_predictor(tile_next, local_cursor, width, tile_prev[local_cursor]);
                                    const int64_t v = static_cast<int64_t>(pred) + static_cast<int64_t>(res);
                                    if (v < 0 || v >= static_cast<int64_t>(g_engineGlobalPalette.colors.size()))
                                        return fail("mixed-tiled ctx residual out of range");
                                    tile_next[local_cursor++] = static_cast<uint32_t>(v);
                                }
                            }
                            else if (scmd == 3u)
                            {
                                uint32_t rows_copy = 0;
                                if (!read_uvar_bytes(seg, seg_size, seg_pos, rows_copy))
                                    return fail("mixed-tiled ctx row-copy parse failed");
                                for (uint32_t r = 0; r < rows_copy; ++r)
                                {
                                    if (local_cursor % static_cast<size_t>(width) != 0) return fail("mixed-tiled ctx row-copy misaligned");
                                    if (local_cursor < static_cast<size_t>(width)) return fail("mixed-tiled ctx row-copy missing previous row");
                                    if (local_cursor + static_cast<size_t>(width) > tile_count) return fail("mixed-tiled ctx row-copy overrun");
                                    for (int x = 0; x < width; ++x)
                                    {
                                        tile_next[local_cursor + static_cast<size_t>(x)] =
                                            tile_next[local_cursor - static_cast<size_t>(width) + static_cast<size_t>(x)];
                                    }
                                    local_cursor += static_cast<size_t>(width);
                                }
                            }
                            else if (scmd == 4u)
                            {
                                uint32_t run = 0;
                                uint32_t value = 0;
                                if (!read_uvar_bytes(seg, seg_size, seg_pos, run) ||
                                    !read_uvar_bytes(seg, seg_size, seg_pos, value))
                                    return fail("mixed-tiled ctx single-index-run parse failed");
                                if (run == 0 || local_cursor + run > tile_count)
                                    return fail("mixed-tiled ctx single-index-run overrun");
                                if (value >= g_engineGlobalPalette.colors.size())
                                    return fail("mixed-tiled ctx single-index-run index out of range");
                                for (uint32_t k = 0; k < run; ++k)
                                    tile_next[local_cursor++] = value;
                            }
                            else if (scmd == 5u)
                            {
                                if (!apply_palette_ctx_wash_run(seg,
                                                                seg_size,
                                                                seg_pos,
                                                                tile_next,
                                                                local_cursor,
                                                                tile_count,
                                                                g_engineGlobalPalette.colors.size()))
                                {
                                    return fail("mixed-tiled ctx wash stream malformed");
                                }
                            }
                            else
                            {
                                return fail("unknown mixed-tiled ctx command");
                            }
                        }
                    }
                    else if (submode == 2u)
                    {
                        if (!apply_palette_local_remap_updates(seg,
                                                               seg_size,
                                                               tile_next,
                                                               tile_count,
                                                               g_engineGlobalPalette.colors.size(),
                                                               bits))
                        {
                            return fail("mixed-tiled local-remap stream malformed");
                        }
                        seg_pos = seg_size;
                    }
                    else
                    {
                        return fail("unknown mixed-tiled submode");
                    }

                    std::copy(tile_next.begin(), tile_next.end(), curr_indices.begin() + static_cast<std::ptrdiff_t>(tile_cursor));
                    tile_cursor += tile_count;
                    updates_pos += seg_size;
                }
            }
            else
            {
                while (updates_pos < updates_size)
                {
                    uint32_t skip = 0;
                    uint32_t run = 0;
                    if (!read_uvar_bytes(updates, updates_size, updates_pos, skip) ||
                        !read_uvar_bytes(updates, updates_size, updates_pos, run))
                        return fail("failed to read skip/run varints");

                    if (skip == 0 && run == 0) break;

                    if (idx_cursor + skip > total_pixels) return fail("skip overruns pixel count");
                    idx_cursor += skip;
                    if (idx_cursor + run > total_pixels) return fail("run overruns pixel count");

                    if (!read_packed_indices(updates, updates_size, updates_pos,
                                             curr_indices.data() + idx_cursor, run, bits))
                        return fail("packed index stream truncated/corrupt");

                    for (size_t i = 0; i < run; ++i)
                    {
                        if (curr_indices[idx_cursor + i] >= g_engineGlobalPalette.colors.size()) return fail("decoded global index out of range");
                    }
                    idx_cursor += run;
                }
            }

            // Resolve global palette indices to RGB
            out.resize(total_pixels * CHANNELS);
            for (size_t i = 0; i < total_pixels; ++i)
            {
                const uint32_t rgb = g_engineGlobalPalette.colors[curr_indices[i]];
                out[i * CHANNELS + 0] = static_cast<uint8_t>(rgb & 0xFF);
                out[i * CHANNELS + 1] = static_cast<uint8_t>((rgb >> 8) & 0xFF);
                out[i * CHANNELS + 2] = static_cast<uint8_t>((rgb >> 16) & 0xFF);
            }

            if (out_indices) *out_indices = std::move(curr_indices);
            if (out_bits) *out_bits = bits;
            return true;
        }

        // ================================================================
        // Legacy local palette modes
        // ================================================================
        std::vector<uint32_t> curr_palette;
        if (mode == static_cast<uint8_t>(PalettePayloadMode::Delta))
        {
            uint32_t palette_count = 0;
            uint32_t changed_count = 0;
            if (!read_uvar_bytes(data, size, pos, palette_count)) return false;
            if (!read_uvar_bytes(data, size, pos, changed_count)) return false;
            if (palette_count == 0 || palette_count > 4096) return false;

            curr_palette = prev_pal.palette;
            curr_palette.resize(palette_count, 0);
            for (uint32_t i = 0; i < changed_count; ++i)
            {
                uint32_t idx = 0;
                if (!read_uvar_bytes(data, size, pos, idx)) return false;
                if (idx >= curr_palette.size()) return false;
                if (size - pos < 3) return false;
                const uint32_t r = data[pos++];
                const uint32_t g = data[pos++];
                const uint32_t b = data[pos++];
                curr_palette[idx] = r | (g << 8) | (b << 16);
            }
        }
        else if (mode == static_cast<uint8_t>(PalettePayloadMode::Full))
        {
            if (!read_palette_rgb(data, size, pos, curr_palette)) return false;
        }
        else if (mode == static_cast<uint8_t>(PalettePayloadMode::Reuse))
        {
            curr_palette = prev_pal.palette;
            if (curr_palette.empty()) return false;
        }
        else if (mode == static_cast<uint8_t>(PalettePayloadMode::GlobalFull))
        {
            if (!allow_global_palette) return false;
            if (!g_engineGlobalPalette.loaded) return false;
            uint32_t palette_count = 0;
            if (!read_uvar_bytes(data, size, pos, palette_count)) return false;
            if (palette_count == 0 || palette_count > 4096) return false;
            if (size - pos < static_cast<size_t>(palette_count) * 2u) return false;
            curr_palette.resize(palette_count);
            for (uint32_t i = 0; i < palette_count; ++i)
            {
                const uint16_t gidx = static_cast<uint16_t>(data[pos]) |
                                      (static_cast<uint16_t>(data[pos + 1]) << 8);
                pos += 2;
                if (gidx >= g_engineGlobalPalette.colors.size()) return false;
                curr_palette[i] = g_engineGlobalPalette.colors[gidx];
            }
        }
        else if (mode == static_cast<uint8_t>(PalettePayloadMode::GlobalDelta))
        {
            if (!allow_global_palette) return false;
            if (!g_engineGlobalPalette.loaded) return false;
            uint32_t palette_count = 0;
            uint32_t changed_count = 0;
            if (!read_uvar_bytes(data, size, pos, palette_count)) return false;
            if (!read_uvar_bytes(data, size, pos, changed_count)) return false;
            if (palette_count == 0 || palette_count > 4096) return false;

            curr_palette = prev_pal.palette;
            curr_palette.resize(palette_count, 0);
            for (uint32_t i = 0; i < changed_count; ++i)
            {
                uint32_t idx = 0;
                if (!read_uvar_bytes(data, size, pos, idx)) return false;
                if (idx >= curr_palette.size()) return false;
                if (size - pos < 2) return false;
                const uint16_t gidx = static_cast<uint16_t>(data[pos]) |
                                      (static_cast<uint16_t>(data[pos + 1]) << 8);
                pos += 2;
                if (gidx >= g_engineGlobalPalette.colors.size()) return false;
                curr_palette[idx] = g_engineGlobalPalette.colors[gidx];
            }
        }
        else
        {
            return fail("unsupported palette payload mode");
        }

        uint32_t updates_size = 0;
        if (!read_uvar_bytes(data, size, pos, updates_size)) return fail("failed to read updates_size");
        if (size - pos < updates_size) return fail("updates_size exceeds payload bytes");

        const uint8_t* updates = data + pos;
        size_t updates_pos = 0;
        std::vector<uint32_t> curr_indices = prev_pal.indices;
        if (curr_indices.size() != total_pixels) return fail("prev indices size mismatch");

        size_t idx_cursor = 0;
        while (updates_pos < updates_size)
        {
            uint32_t skip = 0;
            uint32_t run = 0;
            if (!read_uvar_bytes(updates, updates_size, updates_pos, skip) ||
                !read_uvar_bytes(updates, updates_size, updates_pos, run))
            {
                return fail("failed to read skip/run varints");
            }

            if (skip == 0 && run == 0)
                break;

            if (idx_cursor + skip > total_pixels) return fail("skip overruns pixel count");
            idx_cursor += skip;
            if (idx_cursor + run > total_pixels) return fail("run overruns pixel count");

            if (!read_packed_indices(updates,
                                     updates_size,
                                     updates_pos,
                                     curr_indices.data() + idx_cursor,
                                     run,
                                     bits))
            {
                return fail("packed index stream truncated/corrupt");
            }
            for (size_t i = 0; i < run; ++i)
            {
                if (curr_indices[idx_cursor + i] >= curr_palette.size()) return fail("decoded local palette index out of range");
            }
            idx_cursor += run;
        }

        out.resize(total_pixels * CHANNELS);
        for (size_t i = 0; i < total_pixels; ++i)
        {
            const uint32_t rgb = curr_palette[curr_indices[i]];
            out[i * CHANNELS + 0] = static_cast<uint8_t>(rgb & 0xFF);
            out[i * CHANNELS + 1] = static_cast<uint8_t>((rgb >> 8) & 0xFF);
            out[i * CHANNELS + 2] = static_cast<uint8_t>((rgb >> 16) & 0xFF);
        }
        if (out_indices) *out_indices = curr_indices;
        if (out_bits) *out_bits = bits;
        if (error_out) error_out->clear();
        return true;
    }

    static void decode_quadtree_payload(
        const uint8_t* data,
        size_t size,
        const uint8_t* ref,
        uint8_t* output,
        int frame_width,
        int frame_height,
        bool residual_literals)
    {
        if (!phantom::pvx_decode::decode_quadtree<CHANNELS, 8>(
                data, size, ref, output, frame_width, frame_height,
                residual_literals))
            throw std::runtime_error("PVX malformed quadtree payload");
    }

    static std::vector<size_t> build_edge_offsets(int width, int height)
    {
        const int covered_w = (width / BLOCK_SIZE) * BLOCK_SIZE;
        const int covered_h = (height / BLOCK_SIZE) * BLOCK_SIZE;

        if (covered_w == width && covered_h == height)
        {
            return {};
        }

        std::vector<size_t> offsets;
        const size_t right_strip = static_cast<size_t>(height) * static_cast<size_t>(width - covered_w);
        const size_t bottom_strip = static_cast<size_t>(covered_w) * static_cast<size_t>(height - covered_h);
        offsets.reserve(right_strip + bottom_strip);

        for (int y = 0; y < height; ++y)
        {
            for (int x = 0; x < width; ++x)
            {
                if (x >= covered_w || y >= covered_h)
                {
                    offsets.push_back((static_cast<size_t>(y) * width + x) * CHANNELS);
                }
            }
        }
        return offsets;
    }

    static void apply_edge_updates(
        uint8_t* current, size_t current_size,
        const uint8_t* data,
        size_t size,
        int width,
        int height,
        const std::vector<size_t>& edge_offsets)
    {
        if (size == 0) return;

        if (edge_offsets.empty())
        {
            throw std::runtime_error("PVX unexpected edge payload");
        }

        size_t pos = 0;
        size_t edge_cursor = 0;
        bool saw_terminator = false;

        while (pos < size)
        {
            uint32_t skip_len = 0;
            uint32_t run_len = 0;
            if (!read_uvar_bytes(data, size, pos, skip_len) ||
                !read_uvar_bytes(data, size, pos, run_len))
            {
                throw std::runtime_error("PVX edge payload varint truncated");
            }

            if (skip_len == 0 && run_len == 0)
            {
                saw_terminator = true;
                break;
            }

            if (edge_cursor + skip_len > edge_offsets.size())
            {
                throw std::runtime_error("PVX edge payload skip out of bounds");
            }
            edge_cursor += skip_len;

            if (edge_cursor + run_len > edge_offsets.size())
            {
                throw std::runtime_error("PVX edge payload run out of bounds");
            }

            const size_t required_bytes = static_cast<size_t>(run_len) * CHANNELS;
            if (size - pos < required_bytes)
            {
                throw std::runtime_error("PVX edge payload truncated");
            }

            for (uint32_t j = 0; j < run_len; ++j)
            {
                const size_t off = edge_offsets[edge_cursor + j];
                current[off + 0] = data[pos++];
                current[off + 1] = data[pos++];
                current[off + 2] = data[pos++];
            }
            edge_cursor += run_len;
        }

        if (!saw_terminator || pos != size)
        {
            throw std::runtime_error("PVX edge payload missing terminator");
        }
    }

    static bool tile_v2_read_palette_literal(const uint8_t* data,
                                             size_t size,
                                             size_t& pos,
                                             uint8_t* current,
                                             int strideWidth,
                                             int x,
                                             int y,
                                             int w,
                                             int h,
                                             uint8_t bits)
    {
        if (!g_engineGlobalPalette.loaded ||
            g_engineGlobalPalette.colors.empty() ||
            !pvx_is_valid_palette_bits(bits))
            return false;

        const uint32_t mask = pvx_palette_index_mask(bits);
        uint64_t bitbuf = 0;
        int bitcount = 0;
        for (int yy = 0; yy < h; ++yy)
        {
            uint8_t* row = current + (static_cast<size_t>(y + yy) * strideWidth + x) * CHANNELS;
            for (int xx = 0; xx < w; ++xx)
            {
                while (bitcount < bits)
                {
                    if (pos >= size)
                        return false;
                    bitbuf |= (static_cast<uint64_t>(data[pos++]) << bitcount);
                    bitcount += 8;
                }

                const uint32_t idx = static_cast<uint32_t>(bitbuf & mask);
                bitbuf >>= bits;
                bitcount -= bits;
                if (idx >= g_engineGlobalPalette.colors.size())
                    return false;

                const uint32_t rgb = g_engineGlobalPalette.colors[idx];
                uint8_t* px = row + static_cast<size_t>(xx) * CHANNELS;
                px[0] = static_cast<uint8_t>(rgb & 0xFFu);
                px[1] = static_cast<uint8_t>((rgb >> 8) & 0xFFu);
                px[2] = static_cast<uint8_t>((rgb >> 16) & 0xFFu);
            }
        }
        return true;
    }

    static bool tile_v2_decode_node(const uint8_t* data,
                                    size_t size,
                                    size_t& pos,
                                    const uint8_t* ref,
                                    uint8_t* current,
                                    int strideWidth,
                                    int x,
                                    int y,
                                    int w,
                                    int h,
                                    uint8_t paletteBits)
    {
        if (w <= 0 || h <= 0 || pos >= size)
            return false;

        const uint8_t mode = data[pos++];
        if (mode == 0u)
        {
            const size_t rowBytes = static_cast<size_t>(w) * CHANNELS;
            for (int yy = 0; yy < h; ++yy)
            {
                const size_t off = (static_cast<size_t>(y + yy) * strideWidth + x) * CHANNELS;
                std::memcpy(current + off, ref + off, rowBytes);
            }
            return true;
        }
        if (mode == 1u)
        {
            if (size - pos < 3u)
                return false;
            const uint8_t r = data[pos++];
            const uint8_t g = data[pos++];
            const uint8_t b = data[pos++];
            for (int yy = 0; yy < h; ++yy)
            {
                uint8_t* row = current + (static_cast<size_t>(y + yy) * strideWidth + x) * CHANNELS;
                for (int xx = 0; xx < w; ++xx)
                {
                    uint8_t* px = row + static_cast<size_t>(xx) * CHANNELS;
                    px[0] = r;
                    px[1] = g;
                    px[2] = b;
                }
            }
            return true;
        }
        if (mode == 2u)
        {
            if (w >= h && w > 1)
            {
                const int leftW = w / 2;
                return tile_v2_decode_node(data, size, pos, ref, current, strideWidth, x, y, leftW, h, paletteBits) &&
                       tile_v2_decode_node(data, size, pos, ref, current, strideWidth, x + leftW, y, w - leftW, h, paletteBits);
            }
            if (h > 1)
            {
                const int topH = h / 2;
                return tile_v2_decode_node(data, size, pos, ref, current, strideWidth, x, y, w, topH, paletteBits) &&
                       tile_v2_decode_node(data, size, pos, ref, current, strideWidth, x, y + topH, w, h - topH, paletteBits);
            }
            return false;
        }
        if (mode == 3u)
        {
            const size_t rowBytes = static_cast<size_t>(w) * CHANNELS;
            const size_t needed = rowBytes * static_cast<size_t>(h);
            if (size - pos < needed)
                return false;
            for (int yy = 0; yy < h; ++yy)
            {
                const size_t off = (static_cast<size_t>(y + yy) * strideWidth + x) * CHANNELS;
                uint8_t* dstRow = current + off;
                const uint8_t* refRow = ref + off;
                for (size_t i = 0; i < rowBytes; ++i)
                    dstRow[i] = static_cast<uint8_t>((int(refRow[i]) + int(data[pos + i])) & 0xFF);
                pos += rowBytes;
            }
            return true;
        }
        if (mode == 4u)
        {
            return tile_v2_read_palette_literal(data, size, pos, current, strideWidth, x, y, w, h, paletteBits);
        }

        return false;
    }

    static bool decode_tile_v2_payload(const uint8_t* data,
                                       size_t size,
                                       const uint8_t* ref,
                                       uint8_t* current,
                                       int width,
                                       int height)
    {
        if (!data || !ref || !current || size < 1u)
            return false;

        size_t pos = 1u;
        uint8_t paletteBits = 0;
        if (data[0] == 2u)
        {
            if (pos >= size || !g_engineGlobalPalette.loaded || g_engineGlobalPalette.colors.empty())
                return false;
            paletteBits = data[pos++];
            // The stream width belongs to the encoded index space. A project can append
            // colors to its embedded palette without changing an existing clip's width.
            if (!pvx_is_valid_palette_bits(paletteBits))
                return false;
        }
        else if (data[0] != 1u)
        {
            return false;
        }

        if (!tile_v2_decode_node(data, size, pos, ref, current, width, 0, 0, width, height, paletteBits))
            return false;
        return pos == size;
    }

    // ========================================================================
    // Delta Frame Decoding
    // ========================================================================

    // Zero-allocation variant: decodes into pre-allocated output/scratch buffers.
    // outputBuf and globalMotionBuf are resized-on-demand persistent scratch.
    void decode_delta_into(
        const uint8_t* payload,
        size_t payloadSize,
        const uint8_t* ref,
        size_t refSize,
        FramePaletteStream& ref_pal,
        int width, int height,
        std::vector<uint8_t>& outputBuf,
        std::vector<uint8_t>& globalMotionBuf,
        const std::vector<size_t>& edgeOffsets,
        std::vector<uint32_t>& runLengths,
        std::vector<uint8_t>& residualScratch,
        bool allow_global_palette,
        FramePaletteStream* out_decoded_palette)
    {
        const size_t frame_size = static_cast<size_t>(width) * height * CHANNELS;

        // Ensure output buffer is large enough (no-op after first frame).
        if (outputBuf.size() < frame_size) outputBuf.resize(frame_size);

        if (!payload || payloadSize == 0)
        {
            std::memcpy(outputBuf.data(), ref, frame_size);
            return;
        }

        size_t pos = 0;
        uint8_t flags = payload[pos++];
        bool use_motion = (flags & DELTA_FLAG_MOTION) != 0;
        bool use_palette = (flags & DELTA_FLAG_PALETTE) != 0;
        bool use_quadtree = (flags & DELTA_FLAG_QUADTREE) != 0;
        bool use_quadtree_residual =
            (flags & DELTA_FLAG_QUADTREE_RESIDUAL) != 0;
        bool use_halfpel = (flags & DELTA_FLAG_HALFPEL) != 0;

        DBG_LOGF("delta: flags=0x%02X motion=%d palette=%d quadtree=%d halfpel=%d payload=%zu", flags, use_motion ? 1 : 0, use_palette ? 1 : 0, use_quadtree ? 1 : 0, use_halfpel ? 1 : 0, payloadSize);

        if (use_motion)
        {
            const bool use_global_motion = (flags & DELTA_FLAG_GLOBAL_MOTION) != 0;
            const bool use_tile_v2 = (flags & DELTA_FLAG_TILE_V2) != 0;
            int8_t global_dx = 0;
            int8_t global_dy = 0;
            if (use_global_motion)
            {
                if (payloadSize - pos < 2)
                    throw std::runtime_error("PVX malformed global motion header");
                global_dx = static_cast<int8_t>(payload[pos++]);
                global_dy = static_cast<int8_t>(payload[pos++]);
            }

            const uint8_t* motion_ref = ref;
            if (use_global_motion)
            {
                if (globalMotionBuf.size() < frame_size) globalMotionBuf.resize(frame_size);
                build_global_motion_reference_into(ref, globalMotionBuf.data(), width, height, global_dx, global_dy);
                motion_ref = globalMotionBuf.data();
            }

            if (use_tile_v2)
            {
                uint32_t stream_size = 0;
                if (!read_uvar_bytes(payload, payloadSize, pos, stream_size))
                    throw std::runtime_error("PVX malformed tile-v2 delta header");

                const size_t remaining = payloadSize - pos;
                if (remaining != static_cast<size_t>(stream_size))
                    throw std::runtime_error("PVX malformed tile-v2 delta size");

                if (!decode_tile_v2_payload(payload + pos,
                                            stream_size,
                                            motion_ref,
                                            outputBuf.data(),
                                            width,
                                            height))
                    throw std::runtime_error("PVX malformed tile-v2 delta payload");
                return;
            }

            uint32_t block_size = 0;
            uint32_t edge_size = 0;
            if (!read_uvar_bytes(payload, payloadSize, pos, block_size) ||
                !read_uvar_bytes(payload, payloadSize, pos, edge_size))
                throw std::runtime_error("PVX malformed motion delta header");

            DBG_LOGF("delta-motion: global=%d dx=%d dy=%d block=%u edge=%u", use_global_motion ? 1 : 0, int(global_dx), int(global_dy), block_size, edge_size);

            const size_t remaining = payloadSize - pos;
            if (remaining != static_cast<size_t>(block_size) + static_cast<size_t>(edge_size))
                throw std::runtime_error("PVX malformed motion delta sizes");

            decode_motion_blocks(
                payload + pos, block_size,
                motion_ref, outputBuf.data(),
                width, height, use_halfpel, runLengths, residualScratch);

            pos += block_size;
            apply_edge_updates(outputBuf.data(), frame_size, payload + pos, edge_size, width, height, edgeOffsets);
            return;
        }

        if (use_palette)
        {
            // If the cached palette is not yet valid, rebuild from raw ref data.
            if (!ref_pal.valid)
            {
                bool triedGlobalPalette = false;
                bool rebuiltGlobalPalette = false;
                if (allow_global_palette)
                {
                    std::lock_guard<std::mutex> lock(g_gpalMutex);
                    if (g_engineGlobalPalette.loaded)
                    {
                        triedGlobalPalette = true;
                        rebuiltGlobalPalette = build_global_palette_stream(ref, refSize, width, height, g_engineGlobalPalette, ref_pal);
                    }
                }

                if (triedGlobalPalette)
                {
                    if (!rebuiltGlobalPalette)
                    {
                        throw std::runtime_error(
                            std::string("PVX malformed palette delta payload: prev palette stream invalid; ") +
                            describe_global_palette_rebuild_failure(ref, refSize, width, height));
                    }
                }
                else
                {
                    if (!build_frame_palette_stream(ref, refSize, width, height, 4096, ref_pal))
                    {
                        throw std::runtime_error(
                            std::string("PVX malformed palette delta payload: prev palette stream invalid; ") +
                            describe_local_palette_rebuild_failure(refSize, width, height));
                    }
                }
            }

            std::string palette_delta_error;
            std::vector<uint32_t> decoded_indices;
            uint8_t decoded_bits = 0;
            if (!apply_palette_delta_payload(ref_pal,
                                             payload + pos,
                                             payloadSize - pos,
                                             width,
                                             height,
                                             outputBuf,
                                             allow_global_palette,
                                             &palette_delta_error,
                                             &decoded_indices,
                                             &decoded_bits))
            {
                if (!palette_delta_error.empty())
                    throw std::runtime_error(std::string("PVX malformed palette delta payload: ") + palette_delta_error);
                throw std::runtime_error("PVX malformed palette delta payload");
            }

            if (out_decoded_palette)
            {
                out_decoded_palette->palette.clear();
                out_decoded_palette->indices = std::move(decoded_indices);
                out_decoded_palette->bits = decoded_bits;
                out_decoded_palette->valid = !out_decoded_palette->indices.empty();
            }

            DBG_LOG("delta-palette: applied");
            return;
        }

        if (use_quadtree)
        {
            decode_quadtree_payload(payload + pos,
                                    payloadSize - pos,
                                    ref,
                                    outputBuf.data(),
                                    width,
                                    height,
                                    use_quadtree_residual);

            DBG_LOG("delta-quadtree: applied");
            return;
        }

        throw std::runtime_error("PVX malformed delta flags: unsupported payload mode");
    }

    // Legacy wrapper that allocates output internally (used by batch decoder).
    std::vector<uint8_t> decode_delta(
        const uint8_t* payload,
        size_t payloadSize,
        const std::vector<uint8_t>& ref,
        FramePaletteStream& ref_pal,
        int width, int height,
        bool allow_global_palette)
    {
        struct Scratch
        {
            std::vector<uint8_t> outputBuf;
            std::vector<uint8_t> globalMotionBuf;
            std::vector<uint8_t> residualScratch;
            std::vector<size_t> edgeOffsets;
            std::vector<uint32_t> runLengths;
            int edgeWidth = 0;
            int edgeHeight = 0;
        };
        thread_local Scratch scratch;

        if (scratch.edgeOffsets.empty() || scratch.edgeWidth != width || scratch.edgeHeight != height)
        {
            scratch.edgeOffsets = build_edge_offsets(width, height);
            scratch.edgeWidth = width;
            scratch.edgeHeight = height;
        }

        decode_delta_into(payload, payloadSize, ref.data(), ref.size(), ref_pal, width, height,
                          scratch.outputBuf, scratch.globalMotionBuf, scratch.edgeOffsets,
                          scratch.runLengths, scratch.residualScratch, allow_global_palette, nullptr);
        std::vector<uint8_t> outputBuf;
        outputBuf.swap(scratch.outputBuf);
        return outputBuf;
    }

    // ========================================================================
    // Main Decoder
    // ========================================================================

    static uint64_t max_pvx_payload_size_for_frame(int width, int height)
    {
        const uint64_t frame_bytes = static_cast<uint64_t>(width) *
                                     static_cast<uint64_t>(height) *
                                     static_cast<uint64_t>(CHANNELS);
        constexpr uint64_t kFloor = 1ull * 1024ull * 1024ull;
        constexpr uint64_t kCeiling = 1024ull * 1024ull * 1024ull;
        constexpr uint64_t kSlack = 16ull * 1024ull * 1024ull;
        const uint64_t scaled = (frame_bytes > (kCeiling - kSlack) / 8ull)
            ? kCeiling
            : (frame_bytes * 8ull + kSlack);
        return std::clamp(scaled, kFloor, kCeiling);
    }

    static void validate_pvx_frame_record_sizes(
        uint8_t frame_type,
        uint64_t uncompressed_size,
        uint64_t compressed_size,
        uint64_t max_payload_size)
    {
        const uint64_t max_size_t = static_cast<uint64_t>(std::numeric_limits<size_t>::max());
        const uint64_t max_streamsize = static_cast<uint64_t>(std::numeric_limits<std::streamsize>::max());
        if (uncompressed_size > max_size_t ||
            compressed_size > max_size_t ||
            compressed_size > max_streamsize)
        {
            throw std::runtime_error("PVX frame payload size exceeds platform limits");
        }

        if (frame_type == PVX_REPEAT)
        {
            if (compressed_size != 0 || uncompressed_size == 0 ||
                uncompressed_size > std::numeric_limits<uint32_t>::max())
            {
                throw std::runtime_error("PVX malformed repeat frame");
            }
            return;
        }

        if (frame_type == PVX_REPEAT_DELTA)
        {
            if (uncompressed_size == 0 ||
                uncompressed_size > std::numeric_limits<uint32_t>::max() ||
                compressed_size == 0 ||
                compressed_size > max_payload_size)
            {
                throw std::runtime_error("PVX malformed repeat-delta frame");
            }
            return;
        }

        if (uncompressed_size > max_payload_size || compressed_size > max_payload_size)
            throw std::runtime_error("PVX frame payload size is unreasonable");

        const bool raw_payload = (frame_type == PVX_KEYFRAME_RAW ||
                                  frame_type == PVX_KEYFRAME_HAD_RAW ||
                                  frame_type == PVX_KEYFRAME_HAD8_RAW ||
                                  frame_type == PVX_KEYFRAME_HAD16_RAW ||
                                  frame_type == PVX_KEYFRAME_PAL_RAW ||
                                  frame_type == PVX_DELTA_RAW ||
                                  frame_type == PVX_DELTA_BI_RAW);
        if (raw_payload && compressed_size != uncompressed_size)
            throw std::runtime_error("PVX raw payload size mismatch");
    }

    static size_t pvx_fixed_size_width_for_class(uint8_t size_class)
    {
        switch (size_class)
        {
            case 0: return 1;
            case 1: return 2;
            case 2: return 4;
            default: return 0;
        }
    }

    static bool pvx_read_sized_value_stream(std::istream& in, uint8_t size_class, uint64_t& value)
    {
        value = 0;
        const size_t fixed = pvx_fixed_size_width_for_class(size_class);
        if (fixed == 0)
        {
            value = read_uleb_stream(in);
            return in.good();
        }

        for (size_t i = 0; i < fixed; ++i)
        {
            const int c = in.get();
            if (c == std::char_traits<char>::eof())
                return false;
            value |= (static_cast<uint64_t>(static_cast<uint8_t>(c)) << (i * 8u));
        }
        return true;
    }

    static uint8_t pvx_nibble_to_logical_frame_type(uint8_t type_nibble)
    {
        switch (type_nibble)
        {
            case 0: return PVX_KEYFRAME;
            case 1: return PVX_KEYFRAME_HAD;
            case 2: return PVX_KEYFRAME_PAL;
            case 3: return PVX_KEYFRAME_HAD8;
            case 4: return PVX_KEYFRAME_HAD16;
            case 5: return PVX_DELTA;
            case 6: return PVX_REPEAT;
            case 7: return PVX_REPEAT_DELTA;
            case 8: return PVX_DELTA_BI;
            default: return 0xFFu;
        }
    }

    static uint8_t pvx_raw_variant_of_logical_type(uint8_t logical_type)
    {
        switch (logical_type)
        {
            case PVX_KEYFRAME: return PVX_KEYFRAME_RAW;
            case PVX_KEYFRAME_HAD: return PVX_KEYFRAME_HAD_RAW;
            case PVX_KEYFRAME_HAD8: return PVX_KEYFRAME_HAD8_RAW;
            case PVX_KEYFRAME_HAD16: return PVX_KEYFRAME_HAD16_RAW;
            case PVX_KEYFRAME_PAL: return PVX_KEYFRAME_PAL_RAW;
            case PVX_DELTA: return PVX_DELTA_RAW;
            case PVX_DELTA_BI: return PVX_DELTA_BI_RAW;
            default: return logical_type;
        }
    }

    static bool read_pvx_compact_frame_record(std::istream& in,
                                              uint8_t& frame_type,
                                              uint64_t& uncompressed_size,
                                              uint64_t& compressed_size,
                                              uint8_t& delta_ref_idx)
    {
        delta_ref_idx = 0;
        const int first = in.get();
        if (first == std::char_traits<char>::eof())
            return false;

        const uint8_t header = static_cast<uint8_t>(first);
        const uint8_t type_nibble = static_cast<uint8_t>(header >> 4);
        const uint8_t size_class = static_cast<uint8_t>((header >> 2) & 0x3u);
        const bool raw_payload = (header & 0x02u) != 0;
        const bool aux = (header & 0x01u) != 0;

        const uint8_t logical_type = pvx_nibble_to_logical_frame_type(type_nibble);
        if (logical_type == 0xFFu)
            return false;

        if (logical_type == PVX_REPEAT && aux)
        {
            const int repeat = in.get();
            if (repeat == std::char_traits<char>::eof())
                return false;
            frame_type = PVX_REPEAT;
            uncompressed_size = static_cast<uint64_t>(static_cast<uint8_t>(repeat));
            compressed_size = 0;
            return true;
        }

        if (!pvx_read_sized_value_stream(in, size_class, uncompressed_size) ||
            !pvx_read_sized_value_stream(in, size_class, compressed_size))
        {
            return false;
        }

        if (logical_type == PVX_DELTA)
        {
            const int ref = in.get();
            if (ref == std::char_traits<char>::eof())
                return false;
            delta_ref_idx = static_cast<uint8_t>(ref);
        }

        frame_type = raw_payload ? pvx_raw_variant_of_logical_type(logical_type) : logical_type;
        return true;
    }

    static bool parse_repeat_delta_payload(const std::vector<uint8_t>& payload,
                                           uint8_t& ref_idx,
                                           std::vector<uint8_t>& delta_payload)
    {
        delta_payload.clear();
        if (payload.size() < 4)
            return false;

        size_t pos = 0;
        const uint8_t flags = payload[pos++];
        const bool inner_raw = (flags & 0x01u) != 0;
        ref_idx = payload[pos++];

        uint32_t delta_uncompressed = 0;
        uint32_t delta_stored = 0;
        if (!read_uvar_bytes(payload.data(), payload.size(), pos, delta_uncompressed) ||
            !read_uvar_bytes(payload.data(), payload.size(), pos, delta_stored))
            return false;
        if (payload.size() - pos != delta_stored)
            return false;

        if (inner_raw)
        {
            if (payload.size() - pos != delta_uncompressed)
                return false;
            delta_payload.assign(payload.begin() + static_cast<std::ptrdiff_t>(pos), payload.end());
            return true;
        }

        if (!phantom::pvx_entropy::decode(std::span<const uint8_t>(payload.data() + pos, payload.size() - pos),
                                          static_cast<size_t>(delta_uncompressed),
                                          delta_payload))
            return false;
        return true;
    }

    PVXFile decode_pvx_stream(const std::string& path)
    {
        DBG_LOGF("decode_pvx_stream(\"%s\")", path.c_str());
        
        std::ifstream in(path, std::ios::binary);
        if (!in)
        {
            DBG_LOGF("FAILED to open file: %s", path.c_str());
            throw std::runtime_error("PVX open failed: " + path);
        }
        DBG_LOG("File opened successfully");

        PVXHeader h{};
        if (!read_pvx_header(in, h))
        {
            DBG_LOG("FAILED to read header");
            throw std::runtime_error("PVX header read failed");
        }
        
        DBG_LOGF("Header: magic=0x%08X channels=%d depth=%d version=%u", h.magic, h.channels, h.bit_depth, static_cast<unsigned>(h.version));
        DBG_LOGF("Header: width=%u height=%u fps=%d", h.width, h.height, h.fps);
        
        if (h.magic != 0x30585650u || h.channels != 3 || h.bit_depth != 8)
        {
            DBG_LOG("FAILED: bad header/magic");
            throw std::runtime_error("PVX bad header/magic");
        }
        if (h.version != PVX_FORMAT_VERSION)
            throw std::runtime_error("PVX unsupported format version");

        if (h.palette_mode != PVX_PALETTE_MODE_LOCAL &&
            h.palette_mode != PVX_PALETTE_MODE_GLOBAL)
        {
            DBG_LOG("FAILED: unsupported PVX palette mode");
            throw std::runtime_error("PVX unsupported palette mode");
        }
        
        // Validate reasonable dimensions (8K max).
        if (h.width == 0 || h.height == 0 || h.width > 7680 || h.height > 4320)
        {
            DBG_LOGF("FAILED: invalid dimensions %ux%u", h.width, h.height);
            throw std::runtime_error("PVX invalid dimensions");
        }

        const bool allow_global_palette = (h.palette_mode == PVX_PALETTE_MODE_GLOBAL);
        if (allow_global_palette && !ensureGlobalPaletteForPvxStream(h, path))
        {
            DBG_LOG("FAILED: PVX global palette could not be loaded");
            throw std::runtime_error("PVX global palette unavailable");
        }
        
        DBG_LOG("Header validated OK");

        const int width = static_cast<int>(h.width);
        const int height = static_cast<int>(h.height);
        const size_t frame_size = static_cast<size_t>(width) * height * CHANNELS;
        const uint64_t max_payload_size = max_pvx_payload_size_for_frame(width, height);

        PVXFile out{};
        out.filename = path;
        out.width = width;
        out.height = height;
        out.fps = h.fps ? h.fps : 24;
        
        ReferenceFrameBuffer ref_buffer;
        if (allow_global_palette)
            ref_buffer.setGlobalPaletteMode(true);
        std::vector<uint8_t> compressedBuf;
        std::vector<uint8_t> payloadBuf;
        std::vector<uint8_t> planarBuf;
        std::vector<uint8_t> frameBuf;
        std::vector<uint8_t> futureFrameBuf;
        std::vector<uint8_t> globalMotionBuf;
        std::vector<uint8_t> residualScratch;
        std::vector<int16_t> hadCoeffBuf;
        std::vector<int32_t> hadCoeff32Buf;
        std::vector<size_t> edgeOffsets;
        std::vector<uint32_t> runLengths;
        DBG_LOG("Starting frame decode loop...");
        for (;;)
        {
            int t = in.peek();
            if (t == EOF) break;

            uint8_t frame_type = 0;
            uint64_t uncompressed_size = 0;
            uint64_t compressed_size = 0;
            uint8_t deltaRefIdx = 0;
            if (!read_pvx_compact_frame_record(in, frame_type, uncompressed_size, compressed_size, deltaRefIdx))
                throw std::runtime_error("PVX malformed compact frame record");
            validate_pvx_frame_record_sizes(frame_type, uncompressed_size, compressed_size, max_payload_size);

            compressedBuf.resize(static_cast<size_t>(compressed_size));
            if (compressed_size)
            {
                in.read(reinterpret_cast<char*>(compressedBuf.data()), static_cast<std::streamsize>(compressed_size));
            }
            if (!in) throw std::runtime_error("PVX truncated frame");

            if (frame_type == PVX_REPEAT)
            {
                uint64_t repeat_count = uncompressed_size;
                if (ref_buffer.empty()) throw std::runtime_error("PVX repeat before keyframe");
                
                const std::vector<uint8_t>& last = *ref_buffer.get(ref_buffer.size() - 1);
                for (uint64_t r = 0; r < repeat_count; ++r)
                {
                    out.frameData.push_back(last);
                }
                continue;
            }

            if (frame_type == PVX_REPEAT_DELTA)
            {
                if (ref_buffer.empty()) throw std::runtime_error("PVX repeat-delta before keyframe");
            }

            const bool raw_payload = (frame_type == PVX_KEYFRAME_RAW ||
                                      frame_type == PVX_KEYFRAME_HAD_RAW ||
                                      frame_type == PVX_KEYFRAME_HAD8_RAW ||
                                      frame_type == PVX_KEYFRAME_HAD16_RAW ||
                                      frame_type == PVX_KEYFRAME_PAL_RAW ||
                                      frame_type == PVX_DELTA_RAW ||
                                      frame_type == PVX_DELTA_BI_RAW);
            const uint8_t logical_type =
                (frame_type == PVX_KEYFRAME_RAW) ? PVX_KEYFRAME :
                (frame_type == PVX_KEYFRAME_HAD_RAW) ? PVX_KEYFRAME_HAD :
                (frame_type == PVX_KEYFRAME_HAD8_RAW) ? PVX_KEYFRAME_HAD8 :
                (frame_type == PVX_KEYFRAME_HAD16_RAW) ? PVX_KEYFRAME_HAD16 :
                (frame_type == PVX_KEYFRAME_PAL_RAW) ? PVX_KEYFRAME_PAL :
                (frame_type == PVX_DELTA_RAW) ? PVX_DELTA :
                (frame_type == PVX_DELTA_BI_RAW) ? PVX_DELTA_BI :
                frame_type;

            // Decompress payload
            if (compressed_size)
            {
                if (raw_payload)
                {
                    payloadBuf = compressedBuf;
                    if (payloadBuf.size() != static_cast<size_t>(uncompressed_size))
                        throw std::runtime_error("PVX raw payload size mismatch");
                }
                else if (logical_type == PVX_REPEAT_DELTA)
                {
                    payloadBuf = compressedBuf;
                }
                else
                {
                    if (!phantom::pvx_entropy::decode(compressedBuf,
                                                      static_cast<size_t>(uncompressed_size),
                                                      payloadBuf))
                        throw std::runtime_error("PVX payload entropy decode failed");
                }
            }
            else
            {
                payloadBuf.clear();
            }

            if (logical_type == PVX_KEYFRAME)
            {
                decode_keyframe_into(payloadBuf.data(), payloadBuf.size(),
                                     width, height, planarBuf, frameBuf, runLengths);
                out.frameData.push_back(frameBuf);
                
                // Reset reference buffer on keyframe
                ref_buffer.clear();
                ref_buffer.push(std::make_shared<std::vector<uint8_t>>(frameBuf), width, height);
            }
            else if (logical_type == PVX_KEYFRAME_HAD)
            {
                decode_keyframe_hadamard_into(payloadBuf.data(), payloadBuf.size(),
                                              width, height, planarBuf, frameBuf, hadCoeffBuf, runLengths);
                out.frameData.push_back(frameBuf);
                
                // Reset reference buffer on keyframe
                ref_buffer.clear();
                ref_buffer.push(std::make_shared<std::vector<uint8_t>>(frameBuf), width, height);
            }
            else if (logical_type == PVX_KEYFRAME_HAD8 || logical_type == PVX_KEYFRAME_HAD16)
            {
                const int block_size = (logical_type == PVX_KEYFRAME_HAD16) ? 16 : 8;
                decode_keyframe_hadamard_block_into(payloadBuf.data(), payloadBuf.size(),
                                                    width, height, block_size,
                                                    planarBuf, frameBuf, hadCoeffBuf, hadCoeff32Buf, runLengths);
                out.frameData.push_back(frameBuf);

                // Reset reference buffer on keyframe
                ref_buffer.clear();
                ref_buffer.push(std::make_shared<std::vector<uint8_t>>(frameBuf), width, height);
            }
            else if (logical_type == PVX_KEYFRAME_PAL)
            {
                if (payloadBuf.empty())
                    throw std::runtime_error("PVX keyframe palette payload is empty");

                const size_t total_pixels = static_cast<size_t>(width) * height;
                std::vector<uint32_t> indices;
                uint8_t bits = 0;
                if (!decode_keyframe_palette_indices(payloadBuf.data(), payloadBuf.size(),
                                                     width, height, indices, bits) ||
                    indices.size() != total_pixels)
                    throw std::runtime_error("PVX keyframe palette packed indices malformed");

                if (frameBuf.size() < frame_size) frameBuf.resize(frame_size);
                {
                    std::lock_guard<std::mutex> lock(g_gpalMutex);
                    if (!g_engineGlobalPalette.loaded || g_engineGlobalPalette.colors.empty())
                        throw std::runtime_error("PVX keyframe palette requires loaded global palette");
                    for (size_t i = 0; i < total_pixels; ++i)
                    {
                        if (indices[i] >= g_engineGlobalPalette.colors.size())
                        {
                            std::ostringstream oss;
                            oss << "PVX keyframe palette index out of bounds"
                                << " index=" << indices[i]
                                << " palette_size=" << g_engineGlobalPalette.colors.size()
                                << " pixel=" << i
                                << " bits=" << static_cast<unsigned>(bits)
                                << " palette_source=baked project palette";
                            throw std::runtime_error(oss.str());
                        }
                        const uint32_t rgb = g_engineGlobalPalette.colors[indices[i]];
                        frameBuf[i * CHANNELS + 0] = static_cast<uint8_t>(rgb & 0xFF);
                        frameBuf[i * CHANNELS + 1] = static_cast<uint8_t>((rgb >> 8) & 0xFF);
                        frameBuf[i * CHANNELS + 2] = static_cast<uint8_t>((rgb >> 16) & 0xFF);
                    }
                }
                out.frameData.push_back(frameBuf);
                ref_buffer.clear();
                ref_buffer.push(std::make_shared<std::vector<uint8_t>>(frameBuf), width, height);
            }
            else if (logical_type == PVX_DELTA)
            {
                if (ref_buffer.empty()) throw std::runtime_error("PVX delta before keyframe");
                
                if (payloadBuf.empty()) throw std::runtime_error("PVX empty delta payload");
                
                if (deltaRefIdx >= ref_buffer.size())
                {
                    throw std::runtime_error("PVX invalid reference index");
                }

                if (edgeOffsets.empty())
                    edgeOffsets = build_edge_offsets(width, height);
                
                decode_delta_into(payloadBuf.data(), payloadBuf.size(),
                                  ref_buffer.get(deltaRefIdx)->data(), ref_buffer.get(deltaRefIdx)->size(),
                                  *ref_buffer.get_palette(deltaRefIdx),
                                  width, height,
                                  frameBuf, globalMotionBuf, edgeOffsets, runLengths, residualScratch,
                                  allow_global_palette, nullptr);
                out.frameData.push_back(frameBuf);
                ref_buffer.push(std::make_shared<std::vector<uint8_t>>(frameBuf), width, height);
            }
            else if (logical_type == PVX_DELTA_BI)
            {
                phantom::pvx_decode::BiContainerView bi;
                if (!phantom::pvx_decode::parse_bi_container(payloadBuf, bi) ||
                    bi.future_delta_ref >= ref_buffer.size())
                    throw std::runtime_error("PVX malformed bidirectional delta container");
                if (edgeOffsets.empty()) edgeOffsets = build_edge_offsets(width, height);
                decode_delta_into(
                    bi.future_delta.data(), bi.future_delta.size(),
                    ref_buffer.get(bi.future_delta_ref)->data(),
                    ref_buffer.get(bi.future_delta_ref)->size(),
                    *ref_buffer.get_palette(bi.future_delta_ref),
                    width, height, futureFrameBuf, globalMotionBuf, edgeOffsets,
                    runLengths, residualScratch, allow_global_palette, nullptr);
                auto futureFrame = std::make_shared<std::vector<uint8_t>>(futureFrameBuf);
                ref_buffer.push(futureFrame, width, height);
                const size_t future_ref = ref_buffer.size() - 1u;
                if (bi.past_ref >= ref_buffer.size() || bi.past_ref == future_ref ||
                    !phantom::pvx_decode::decode_bi_blocks(
                        bi.bi_payload,
                        ref_buffer.get(bi.past_ref)->data(),
                        futureFrame->data(), width, height, frameBuf))
                    throw std::runtime_error("PVX malformed bidirectional block payload");
                out.frameData.push_back(frameBuf);
                out.frameData.push_back(*futureFrame);
            }
            else if (logical_type == PVX_REPEAT_DELTA)
            {
                const uint64_t repeat_count = uncompressed_size;
                uint8_t inner_ref_idx = 0;
                std::vector<uint8_t> inner_delta;
                if (!parse_repeat_delta_payload(payloadBuf, inner_ref_idx, inner_delta))
                    throw std::runtime_error("PVX malformed repeat-delta payload");
                if (inner_ref_idx >= ref_buffer.size())
                    throw std::runtime_error("PVX repeat-delta invalid reference index");

                const std::vector<uint8_t>& last = *ref_buffer.get(ref_buffer.size() - 1);
                for (uint64_t r = 0; r < repeat_count; ++r)
                {
                    out.frameData.push_back(last);
                }

                if (edgeOffsets.empty())
                    edgeOffsets = build_edge_offsets(width, height);

                decode_delta_into(inner_delta.data(), inner_delta.size(),
                                  ref_buffer.get(inner_ref_idx)->data(), ref_buffer.get(inner_ref_idx)->size(),
                                  *ref_buffer.get_palette(inner_ref_idx),
                                  width, height,
                                  frameBuf, globalMotionBuf, edgeOffsets, runLengths, residualScratch,
                                  allow_global_palette, nullptr);
                out.frameData.push_back(frameBuf);
                ref_buffer.push(std::make_shared<std::vector<uint8_t>>(frameBuf), width, height);
            }
            else
            {
                throw std::runtime_error("PVX unknown frame type");
            }
        }
        
        return out;
    }
    
    // ========================================================================
    // Single Frame Decoder (used by streaming player)
    // ========================================================================
    
    struct StreamingDecoderState
    {
        std::ifstream file;
        std::string currentPath;
        ReferenceFrameBuffer refBuffer;
        uint8_t paletteMode = PVX_PALETTE_MODE_LOCAL;
        int fps = 24;
        int width = 0;
        int height = 0;
        uint64_t maxPayloadSize = 0;
        size_t totalFrames = 0; // Unknown in streaming mode unless explicitly pre-scanned
        std::streamoff frameDataOffset = static_cast<std::streamoff>(PVX_HEADER_WIRE_SIZE);
        bool headerRead = false;
        bool finished = false;
        uint32_t pendingRepeats = 0;
        FramePtr lastFrame;
        FramePtr pendingBiAnchor;
        std::shared_ptr<FramePaletteStream> pendingPaletteForLastFrame;
        std::shared_ptr<FramePool> pool = FramePool::create();

        // Reusable scratch buffers to avoid per-frame heap allocations.
        std::vector<uint8_t> compressedBuf;
        std::vector<uint8_t> payloadBuf;

        // Persistent decode scratch buffers — eliminates 12 MB/frame heap churn.
        std::vector<uint8_t> planarBuf;  // 3 × pixel_count (planar YCoCg)

        // Persistent Hadamard coefficient buffer — avoids 12.4 MB/keyframe alloc.
        std::vector<int16_t> hadCoeffBuf;
        std::vector<int32_t> hadCoeff32Buf;

        // Persistent delta decode scratch buffers — avoids 6.2-12.4 MB/delta alloc.
        std::vector<uint8_t> globalMotionBuf;
        std::vector<uint8_t> residualScratch;
        
        // Cached edge offsets
        std::vector<size_t> edgeOffsets;
        
        // Cached run lengths
        std::vector<uint32_t> runLengths;

        // Decoded keyframe cache keyed by frame file offset.
        std::unordered_map<uint64_t, FramePtr> keyframeCache;
        std::deque<uint64_t> keyframeCacheOrder;
        size_t keyframeCacheBytes = 0;
        uint64_t keyframeCacheHits = 0;
        uint64_t keyframeCacheMisses = 0;
        static constexpr size_t kKeyframeCacheBudgetBytes = 768ull * 1024ull * 1024ull;
        mutable std::mutex keyframeCacheMutex;

    #ifdef _WIN32
        const char* debugTag = "stream";
        double timingIoAccMs = 0.0;
        double timingDecompAccMs = 0.0;
        double timingDecodeAccMs = 0.0;
        double timingTotalAccMs = 0.0;
        uint32_t timingCount = 0;
        static constexpr uint32_t kTimingReportInterval = 60;
        static constexpr double kSlowFrameMs = 8.0;
    #endif

        StreamingDecoderState() = default;
        ~StreamingDecoderState() = default;

        // Move-only because the stream and frame-pool state are non-copyable.
        StreamingDecoderState(StreamingDecoderState&& o) noexcept
            : file(std::move(o.file)), refBuffer(std::move(o.refBuffer)),
                            currentPath(std::move(o.currentPath)),
                            paletteMode(o.paletteMode), fps(o.fps), width(o.width), height(o.height),
                            maxPayloadSize(o.maxPayloadSize),
              totalFrames(o.totalFrames), frameDataOffset(o.frameDataOffset),
              headerRead(o.headerRead),
              finished(o.finished), pendingRepeats(o.pendingRepeats),
              lastFrame(std::move(o.lastFrame)),
              pendingBiAnchor(std::move(o.pendingBiAnchor)),
              pendingPaletteForLastFrame(std::move(o.pendingPaletteForLastFrame)),
              pool(std::move(o.pool)),
              compressedBuf(std::move(o.compressedBuf)),
              payloadBuf(std::move(o.payloadBuf)),
              planarBuf(std::move(o.planarBuf)),
              hadCoeffBuf(std::move(o.hadCoeffBuf)),
              hadCoeff32Buf(std::move(o.hadCoeff32Buf)),
              globalMotionBuf(std::move(o.globalMotionBuf)),
              residualScratch(std::move(o.residualScratch)),
              edgeOffsets(std::move(o.edgeOffsets)),
              runLengths(std::move(o.runLengths)),
              keyframeCache(std::move(o.keyframeCache)),
              keyframeCacheOrder(std::move(o.keyframeCacheOrder)),
              keyframeCacheBytes(o.keyframeCacheBytes),
              keyframeCacheHits(o.keyframeCacheHits),
              keyframeCacheMisses(o.keyframeCacheMisses)
        {}

        StreamingDecoderState& operator=(StreamingDecoderState&& o) noexcept
        {
            if (this != &o)
            {
                file = std::move(o.file);
                refBuffer = std::move(o.refBuffer);
                currentPath = std::move(o.currentPath);
                paletteMode = o.paletteMode;
                fps = o.fps; width = o.width; height = o.height;
                maxPayloadSize = o.maxPayloadSize;
                totalFrames = o.totalFrames; headerRead = o.headerRead;
                frameDataOffset = o.frameDataOffset;
                finished = o.finished; pendingRepeats = o.pendingRepeats;
                lastFrame = std::move(o.lastFrame);
                pendingPaletteForLastFrame = std::move(o.pendingPaletteForLastFrame);
                pool = std::move(o.pool);
                compressedBuf = std::move(o.compressedBuf);
                payloadBuf = std::move(o.payloadBuf);
                planarBuf = std::move(o.planarBuf);
                hadCoeffBuf = std::move(o.hadCoeffBuf);
                hadCoeff32Buf = std::move(o.hadCoeff32Buf);
                globalMotionBuf = std::move(o.globalMotionBuf);
                residualScratch = std::move(o.residualScratch);
                edgeOffsets = std::move(o.edgeOffsets);
                runLengths = std::move(o.runLengths);
                keyframeCache = std::move(o.keyframeCache);
                keyframeCacheOrder = std::move(o.keyframeCacheOrder);
                keyframeCacheBytes = o.keyframeCacheBytes;
                keyframeCacheHits = o.keyframeCacheHits;
                keyframeCacheMisses = o.keyframeCacheMisses;
            }
            return *this;
        }

        StreamingDecoderState(const StreamingDecoderState&) = delete;
        StreamingDecoderState& operator=(const StreamingDecoderState&) = delete;

        void clearKeyframeCache()
        {
            std::lock_guard<std::mutex> lock(keyframeCacheMutex);
            keyframeCache.clear();
            keyframeCacheOrder.clear();
            keyframeCacheBytes = 0;
            keyframeCacheHits = 0;
            keyframeCacheMisses = 0;
        }

        void cacheKeyframe(uint64_t frameOffset, const FramePtr& frame)
        {
            if (!frame) return;
            std::lock_guard<std::mutex> lock(keyframeCacheMutex);
            if (keyframeCache.find(frameOffset) != keyframeCache.end()) return;

            const size_t frameBytes = frame->size();
            if (keyframeCacheBytes + frameBytes > kKeyframeCacheBudgetBytes)
                return;

            keyframeCache.emplace(frameOffset, frame);
            keyframeCacheOrder.push_back(frameOffset);
            keyframeCacheBytes += frameBytes;
        }

        void importKeyframeCacheSnapshot(const std::unordered_map<uint64_t, FramePtr>& cache,
                                         const std::deque<uint64_t>& order,
                                         size_t bytes)
        {
            std::lock_guard<std::mutex> lock(keyframeCacheMutex);
            keyframeCache = cache;
            keyframeCacheOrder = order;
            keyframeCacheBytes = bytes;
            keyframeCacheHits = 0;
            keyframeCacheMisses = 0;
        }

        void exportKeyframeCacheSnapshot(std::unordered_map<uint64_t, FramePtr>& outCache,
                                         std::deque<uint64_t>& outOrder,
                                         size_t& outBytes) const
        {
            std::lock_guard<std::mutex> lock(keyframeCacheMutex);
            outCache = keyframeCache;
            outOrder = keyframeCacheOrder;
            outBytes = keyframeCacheBytes;
        }

#ifdef _WIN32
        void setDebugTag(const char* tag)
        {
            debugTag = tag ? tag : "stream";
        }

        void logFrameTiming(uint8_t frameType,
                            uint64_t compressedSize,
                            uint64_t uncompressedSize,
                            double ioMs,
                            double decompMs,
                            double decodeMs,
                            double totalMs)
        {
            timingIoAccMs += ioMs;
            timingDecompAccMs += decompMs;
            timingDecodeAccMs += decodeMs;
            timingTotalAccMs += totalMs;
            ++timingCount;

            if (totalMs >= kSlowFrameMs || decodeMs >= kSlowFrameMs)
            {
                DBG_LOGF("%s frame slow type=0x%02X comp=%llu uncomp=%llu io=%.3fms decomp=%.3fms decode=%.3fms total=%.3fms",
                         debugTag,
                         static_cast<unsigned>(frameType),
                         static_cast<unsigned long long>(compressedSize),
                         static_cast<unsigned long long>(uncompressedSize),
                         ioMs, decompMs, decodeMs, totalMs);
            }

            if (timingCount >= kTimingReportInterval)
            {
                uint64_t cacheHits = 0;
                uint64_t cacheMisses = 0;
                size_t cacheEntries = 0;
                size_t cacheBytes = 0;
                {
                    std::lock_guard<std::mutex> lock(keyframeCacheMutex);
                    cacheHits = keyframeCacheHits;
                    cacheMisses = keyframeCacheMisses;
                    cacheEntries = keyframeCache.size();
                    cacheBytes = keyframeCacheBytes;
                }

                const uint64_t cacheTotal = cacheHits + cacheMisses;
                const double cacheHitPct = cacheTotal ? (100.0 * static_cast<double>(cacheHits) / static_cast<double>(cacheTotal)) : 0.0;
                DBG_LOGF("%s frame avg n=%u io=%.3fms decomp=%.3fms decode=%.3fms total=%.3fms",
                         debugTag,
                         timingCount,
                         timingIoAccMs / timingCount,
                         timingDecompAccMs / timingCount,
                         timingDecodeAccMs / timingCount,
                         timingTotalAccMs / timingCount);
                DBG_LOGF("%s keyframe cache: hit=%.1f%% entries=%zu bytes=%.1fMB",
                         debugTag,
                         cacheHitPct,
                         cacheEntries,
                         static_cast<double>(cacheBytes) / (1024.0 * 1024.0));
                timingIoAccMs = timingDecompAccMs = timingDecodeAccMs = timingTotalAccMs = 0.0;
                timingCount = 0;
            }
        }
#endif
        
        bool openFile(const std::string& path)
        {
            file.open(path, std::ios::binary);
            if (!file)
            {
                DBG_LOGF("stream openFile: failed to open \"%s\"", path.c_str());
                return false;
            }
            
            PVXHeader h{};
            if (!read_pvx_header(file, h))
            {
                DBG_LOGF("stream openFile: failed to read header from \"%s\"", path.c_str());
                return false;
            }
            
            if (h.magic != 0x30585650u || h.channels != 3 || h.bit_depth != 8)
            {
                DBG_LOGF("stream openFile: bad header in \"%s\" (magic=0x%08X ch=%u depth=%u)",
                         path.c_str(), h.magic, static_cast<unsigned>(h.channels), static_cast<unsigned>(h.bit_depth));
                return false;
            }
            if (h.version != PVX_FORMAT_VERSION)
            {
                DBG_LOGF("stream openFile: unsupported format version in \"%s\" (version=%u)",
                         path.c_str(), static_cast<unsigned>(h.version));
                return false;
            }

            if (h.palette_mode != PVX_PALETTE_MODE_LOCAL &&
                h.palette_mode != PVX_PALETTE_MODE_GLOBAL)
            {
                DBG_LOGF("stream openFile: unsupported palette mode in \"%s\" (mode=%u)",
                         path.c_str(), static_cast<unsigned>(h.palette_mode));
                return false;
            }

            // Validate reasonable dimensions (up to 8K)
            if (h.width == 0 || h.height == 0 || h.width > 7680 || h.height > 4320)
            {
                DBG_LOGF("stream openFile: invalid dimensions in \"%s\" (%ux%u)",
                         path.c_str(), h.width, h.height);
                return false;
            }

            if (h.palette_mode == PVX_PALETTE_MODE_GLOBAL)
            {
                if (!ensureGlobalPaletteForPvxStream(h, path))
                {
                    DBG_LOGF("stream openFile: global palette unavailable for \"%s\"", path.c_str());
                    return false;
                }
            }
            
            paletteMode = h.palette_mode;
            currentPath = path;
            fps = h.fps ? h.fps : 24;
            width = static_cast<int>(h.width);
            height = static_cast<int>(h.height);
            maxPayloadSize = max_pvx_payload_size_for_frame(width, height);
            const std::streampos frameDataPos = file.tellg();
            if (frameDataPos == std::streampos(-1))
            {
                DBG_LOGF("stream openFile: failed to capture frame data offset for \"%s\"", path.c_str());
                return false;
            }
            frameDataOffset = static_cast<std::streamoff>(frameDataPos);
            totalFrames = 0;
            headerRead = true;
            finished = false;
            pendingRepeats = 0;
            pendingBiAnchor.reset();
            lastFrame.reset();
            pendingPaletteForLastFrame.reset();
            refBuffer.clear();
            clearKeyframeCache();
            refBuffer.setGlobalPaletteMode(paletteMode == PVX_PALETTE_MODE_GLOBAL);

#ifdef _WIN32
            timingIoAccMs = timingDecompAccMs = timingDecodeAccMs = timingTotalAccMs = 0.0;
            timingCount = 0;
#endif

            return true;
        }

        void prewarmKeyframeCache(const std::string& path,
                                  size_t maxKeyframes,
                                  double maxMillis)
        {
            if (maxKeyframes == 0) return;

            std::ifstream in(path, std::ios::binary);
            if (!in) return;

            PVXHeader h{};
            if (!read_pvx_header(in, h)) return;
            if (h.magic != 0x30585650u || h.channels != 3 || h.bit_depth != 8) return;
            if (h.version != PVX_FORMAT_VERSION) return;
            if (h.palette_mode != PVX_PALETTE_MODE_LOCAL &&
                h.palette_mode != PVX_PALETTE_MODE_GLOBAL) return;

            if (h.width == 0 || h.height == 0 || h.width > 7680 || h.height > 4320)
                return;

            if (h.palette_mode == PVX_PALETTE_MODE_GLOBAL &&
                !ensureGlobalPaletteForPvxStream(h, path))
                return;

            const int localWidth = static_cast<int>(h.width);
            const int localHeight = static_cast<int>(h.height);
            const uint64_t maxPayloadSize = max_pvx_payload_size_for_frame(localWidth, localHeight);

            std::vector<uint8_t> compressed;
            std::vector<uint8_t> payload;
            std::vector<uint8_t> planar;
            std::vector<int16_t> coeffs;
            std::vector<uint32_t> localRunLengths;
            const auto t0 = std::chrono::steady_clock::now();
            size_t warmed = 0;
            size_t seenKeyframes = 0;

            for (;;)
            {
                if (warmed >= maxKeyframes) break;
                const auto now = std::chrono::steady_clock::now();
                const double elapsedMs = std::chrono::duration<double, std::milli>(now - t0).count();
                if (elapsedMs >= maxMillis) break;

                int t = in.peek();
                if (t == EOF) break;

                uint8_t frame_type = 0;
                uint64_t uncompressed_size = 0;
                uint64_t compressed_size = 0;
                uint8_t deltaRefIdx = 0;
                if (!read_pvx_compact_frame_record(in, frame_type, uncompressed_size, compressed_size, deltaRefIdx))
                    break;
                try
                {
                    validate_pvx_frame_record_sizes(frame_type, uncompressed_size, compressed_size, maxPayloadSize);
                }
                catch (...)
                {
                    break;
                }
                const uint64_t frameOffset = static_cast<uint64_t>(in.tellg());

                compressed.resize(static_cast<size_t>(compressed_size));
                if (compressed_size)
                    in.read(reinterpret_cast<char*>(compressed.data()), static_cast<std::streamsize>(compressed_size));
                if (!in) break;

                const uint8_t logical_type =
                    (frame_type == PVX_KEYFRAME_RAW) ? PVX_KEYFRAME :
                    (frame_type == PVX_KEYFRAME_HAD_RAW) ? PVX_KEYFRAME_HAD :
                    (frame_type == PVX_KEYFRAME_HAD8_RAW) ? PVX_KEYFRAME_HAD8 :
                    (frame_type == PVX_KEYFRAME_HAD16_RAW) ? PVX_KEYFRAME_HAD16 :
                    (frame_type == PVX_KEYFRAME_PAL_RAW) ? PVX_KEYFRAME_PAL :
                    frame_type;

                if (logical_type != PVX_KEYFRAME &&
                    logical_type != PVX_KEYFRAME_HAD &&
                    logical_type != PVX_KEYFRAME_HAD8 &&
                    logical_type != PVX_KEYFRAME_HAD16 &&
                    logical_type != PVX_KEYFRAME_PAL)
                    continue;

                ++seenKeyframes;

                if (keyframeCache.find(frameOffset) != keyframeCache.end())
                    continue;

                const bool raw_payload = (frame_type == PVX_KEYFRAME_RAW ||
                                          frame_type == PVX_KEYFRAME_HAD_RAW ||
                                          frame_type == PVX_KEYFRAME_HAD8_RAW ||
                                          frame_type == PVX_KEYFRAME_HAD16_RAW ||
                                          frame_type == PVX_KEYFRAME_PAL_RAW);
                payload.resize(static_cast<size_t>(uncompressed_size));
                if (compressed_size)
                {
                    if (raw_payload)
                    {
                        if (compressed.size() != payload.size())
                            continue;
                        payload.swap(compressed);
                    }
                    else
                    {
                        if (!phantom::pvx_entropy::decode(compressed,
                                                          static_cast<size_t>(uncompressed_size),
                                                          payload))
                            continue;
                    }
                }
                else
                {
                    payload.clear();
                }

                FramePtr frame = pool->get(static_cast<size_t>(localWidth) * localHeight * CHANNELS);
                if (logical_type == PVX_KEYFRAME)
                {
                    decode_keyframe_into(payload.data(), payload.size(),
                                         localWidth, localHeight,
                                         planar, *frame, localRunLengths);
                }
                else if (logical_type == PVX_KEYFRAME_HAD)
                {
                    decode_keyframe_hadamard_into(payload.data(), payload.size(),
                                                  localWidth, localHeight,
                                                  planar, *frame, coeffs, localRunLengths);
                }
                else if (logical_type == PVX_KEYFRAME_HAD8 || logical_type == PVX_KEYFRAME_HAD16)
                {
                    static thread_local std::vector<int32_t> coeffs32;
                    const int block_size = (logical_type == PVX_KEYFRAME_HAD16) ? 16 : 8;
                    decode_keyframe_hadamard_block_into(payload.data(), payload.size(),
                                                        localWidth, localHeight,
                                                        block_size,
                                                        planar, *frame, coeffs, coeffs32, localRunLengths);
                }
                else
                {
                    if (payload.empty())
                        continue;

                    const size_t total_pixels = static_cast<size_t>(localWidth) * localHeight;
                    std::vector<uint32_t> indices;
                    uint8_t bits = 0;
                    if (!decode_keyframe_palette_indices(payload.data(), payload.size(),
                                                         localWidth, localHeight, indices, bits) ||
                        indices.size() != total_pixels)
                        continue;

                    bool oob = false;
                    {
                        std::lock_guard<std::mutex> lock(g_gpalMutex);
                        if (!g_engineGlobalPalette.loaded || g_engineGlobalPalette.colors.empty())
                            continue;

                        for (size_t i = 0; i < total_pixels; ++i)
                        {
                            if (indices[i] >= g_engineGlobalPalette.colors.size())
                            {
                                oob = true;
                                break;
                            }
                            const uint32_t rgb = g_engineGlobalPalette.colors[indices[i]];
                            (*frame)[i * CHANNELS + 0] = static_cast<uint8_t>(rgb & 0xFF);
                            (*frame)[i * CHANNELS + 1] = static_cast<uint8_t>((rgb >> 8) & 0xFF);
                            (*frame)[i * CHANNELS + 2] = static_cast<uint8_t>((rgb >> 16) & 0xFF);
                        }
                    }
                    if (oob)
                        continue;
                }

                cacheKeyframe(frameOffset, frame);
                ++warmed;
            }

#ifdef _WIN32
        DBG_LOGF("%s keyframe prewarm warmed=%zu seen=%zu cacheEntries=%zu cacheMB=%.1f",
                     debugTag,
                     warmed,
             seenKeyframes,
                     keyframeCache.size(),
                     static_cast<double>(keyframeCacheBytes) / (1024.0 * 1024.0));
#endif
        }
        
        FramePtr decodeNextFrame()
        {
            if (finished) return nullptr;

#ifdef _WIN32
            QPCTimer totalTimer;
            QPCTimer stageTimer;
            totalTimer.begin();
            stageTimer.begin();
            double ioMs = 0.0;
            double decompMs = 0.0;
            double decodeMs = 0.0;
#endif
            
            // A DELTA_BI access unit decodes its future anchor first but
            // presents the intervening B frame first. Return that retained
            // anchor on the following display tick without consuming input.
            if (pendingBiAnchor)
            {
                lastFrame = std::move(pendingBiAnchor);
                ++totalFrames;
                return lastFrame;
            }

            // Handle pending repeat frames
            if (pendingRepeats > 0)
            {
                --pendingRepeats;
                return lastFrame;
            }
            
            int t = file.peek();
            if (t == EOF)
            {
                finished = true;
                return nullptr;
            }
            
            uint8_t frame_type = 0;
            uint64_t uncompressed_size = 0;
            uint64_t compressed_size = 0;
            uint8_t deltaRefIdx = 0;
            if (!read_pvx_compact_frame_record(file, frame_type, uncompressed_size, compressed_size, deltaRefIdx))
                throw std::runtime_error("PVX malformed compact frame record");
            validate_pvx_frame_record_sizes(frame_type, uncompressed_size, compressed_size, maxPayloadSize);
            const uint64_t frameOffset = static_cast<uint64_t>(file.tellg());
            const size_t streamFrameIndex = totalFrames;
            DBG_LOGF("decodeNextFrame: type=0x%02X uncomp=%llu comp=%llu frame#%zu", 
                     frame_type, (unsigned long long)uncompressed_size, (unsigned long long)compressed_size, streamFrameIndex);

            // Reuse the persistent compressed-data buffer to avoid per-frame heap alloc.
            compressedBuf.resize(static_cast<size_t>(compressed_size));
            if (compressed_size)
            {
                file.read(reinterpret_cast<char*>(compressedBuf.data()), static_cast<std::streamsize>(compressed_size));
            }
            
            if (!file)
            {
                throw std::runtime_error("PVX truncated frame payload");
            }

#ifdef _WIN32
            ioMs = stageTimer.elapsedMs();
            stageTimer.begin();
#endif
            
            if (frame_type == PVX_REPEAT)
            {
                uint64_t repeat_count = uncompressed_size;

                // Lazily populate refBuffer from lastFrame if a prior keyframe
                // deferred the push.
                if (refBuffer.empty() && lastFrame)
                {
                    refBuffer.push(lastFrame, width, height, pendingPaletteForLastFrame);
                    pendingPaletteForLastFrame.reset();
                }

                if ((refBuffer.empty() && !lastFrame) || repeat_count == 0)
                {
                    throw std::runtime_error("PVX malformed repeat frame");
                }
                
                if (!lastFrame)
                    lastFrame = refBuffer.get(refBuffer.size() - 1);
                pendingRepeats = static_cast<uint32_t>(repeat_count - 1);
                ++totalFrames;

#ifdef _WIN32
                decompMs = 0.0;
                decodeMs = stageTimer.elapsedMs();
                logFrameTiming(frame_type, compressed_size, uncompressed_size,
                               ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                return lastFrame;
            }

            const uint8_t logical_type_for_cache =
                (frame_type == PVX_KEYFRAME_RAW) ? PVX_KEYFRAME :
                (frame_type == PVX_KEYFRAME_HAD_RAW) ? PVX_KEYFRAME_HAD :
                (frame_type == PVX_KEYFRAME_HAD8_RAW) ? PVX_KEYFRAME_HAD8 :
                (frame_type == PVX_KEYFRAME_HAD16_RAW) ? PVX_KEYFRAME_HAD16 :
                (frame_type == PVX_KEYFRAME_PAL_RAW) ? PVX_KEYFRAME_PAL :
                (frame_type == PVX_DELTA_BI_RAW) ? PVX_DELTA_BI :
                frame_type;

            if (logical_type_for_cache == PVX_KEYFRAME ||
                logical_type_for_cache == PVX_KEYFRAME_HAD ||
                logical_type_for_cache == PVX_KEYFRAME_HAD8 ||
                logical_type_for_cache == PVX_KEYFRAME_HAD16 ||
                logical_type_for_cache == PVX_KEYFRAME_PAL)
            {
                FramePtr cachedFrame;
                {
                    std::lock_guard<std::mutex> lock(keyframeCacheMutex);
                    auto it = keyframeCache.find(frameOffset);
                    if (it != keyframeCache.end())
                    {
                        ++keyframeCacheHits;
                        cachedFrame = it->second;
                    }
                    else
                    {
                        ++keyframeCacheMisses;
                    }
                }

                if (cachedFrame)
                {
                    refBuffer.clear();
                    lastFrame = std::move(cachedFrame);
                    pendingPaletteForLastFrame.reset();
                    ++totalFrames;
#ifdef _WIN32
                    decompMs = 0.0;
                    decodeMs = stageTimer.elapsedMs();
                    logFrameTiming(frame_type, compressed_size, uncompressed_size,
                                   ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                    return lastFrame;
                }
            }
            
            // Decode the current structure-aware PVX payload envelope.
            if (compressed_size)
            {
                const bool raw_payload = (frame_type == PVX_KEYFRAME_RAW ||
                                          frame_type == PVX_KEYFRAME_HAD_RAW ||
                                          frame_type == PVX_KEYFRAME_HAD8_RAW ||
                                          frame_type == PVX_KEYFRAME_HAD16_RAW ||
                                          frame_type == PVX_KEYFRAME_PAL_RAW ||
                                          frame_type == PVX_DELTA_RAW ||
                                          frame_type == PVX_DELTA_BI_RAW);
                if (raw_payload)
                {
                    payloadBuf = compressedBuf;
                    if (payloadBuf.size() != static_cast<size_t>(uncompressed_size))
                        throw std::runtime_error("PVX raw payload size mismatch");
                }
                else if (frame_type == PVX_REPEAT_DELTA)
                {
                    payloadBuf = compressedBuf;
                }
                else
                {
                    if (!phantom::pvx_entropy::decode(compressedBuf,
                                                      static_cast<size_t>(uncompressed_size),
                                                      payloadBuf))
                        throw std::runtime_error("PVX payload entropy decode failed");
                }
            }
            else
            {
                payloadBuf.clear();
            }

#ifdef _WIN32
            decompMs = stageTimer.elapsedMs();
            stageTimer.begin();
#endif
            
            const uint8_t logical_type =
                (frame_type == PVX_KEYFRAME_RAW) ? PVX_KEYFRAME :
                (frame_type == PVX_KEYFRAME_HAD_RAW) ? PVX_KEYFRAME_HAD :
                (frame_type == PVX_KEYFRAME_HAD8_RAW) ? PVX_KEYFRAME_HAD8 :
                (frame_type == PVX_KEYFRAME_HAD16_RAW) ? PVX_KEYFRAME_HAD16 :
                (frame_type == PVX_KEYFRAME_PAL_RAW) ? PVX_KEYFRAME_PAL :
                (frame_type == PVX_DELTA_RAW) ? PVX_DELTA :
                (frame_type == PVX_DELTA_BI_RAW) ? PVX_DELTA_BI :
                frame_type;

            if (logical_type == PVX_KEYFRAME)
            {
                FramePtr frame = pool->get(static_cast<size_t>(width) * height * CHANNELS);
                // Decode directly into persistent scratch buffers (no heap churn).
                decode_keyframe_into(payloadBuf.data(), payloadBuf.size(),
                                     width, height, planarBuf, *frame, runLengths);
                // Keyframes reset the reference buffer.  Defer the push.
                refBuffer.clear();
                cacheKeyframe(frameOffset, frame);
                
                lastFrame = frame;
                pendingPaletteForLastFrame.reset();
                ++totalFrames;
#ifdef _WIN32
                decodeMs = stageTimer.elapsedMs();
                logFrameTiming(frame_type, compressed_size, uncompressed_size,
                               ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                return lastFrame;
            }
            else if (logical_type == PVX_KEYFRAME_HAD)
            {
                FramePtr frame = pool->get(static_cast<size_t>(width) * height * CHANNELS);
                decode_keyframe_hadamard_into(payloadBuf.data(), payloadBuf.size(),
                                              width, height, planarBuf, *frame, hadCoeffBuf, runLengths);
                refBuffer.clear();
                cacheKeyframe(frameOffset, frame);
                
                lastFrame = frame;
                pendingPaletteForLastFrame.reset();
                ++totalFrames;
#ifdef _WIN32
                decodeMs = stageTimer.elapsedMs();
                logFrameTiming(frame_type, compressed_size, uncompressed_size,
                               ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                return lastFrame;
            }
            else if (logical_type == PVX_KEYFRAME_HAD8 || logical_type == PVX_KEYFRAME_HAD16)
            {
                const int block_size = (logical_type == PVX_KEYFRAME_HAD16) ? 16 : 8;
                FramePtr frame = pool->get(static_cast<size_t>(width) * height * CHANNELS);
                decode_keyframe_hadamard_block_into(payloadBuf.data(), payloadBuf.size(),
                                                    width, height, block_size,
                                                    planarBuf, *frame, hadCoeffBuf, hadCoeff32Buf, runLengths);
                refBuffer.clear();
                cacheKeyframe(frameOffset, frame);

                lastFrame = frame;
                pendingPaletteForLastFrame.reset();
                ++totalFrames;
#ifdef _WIN32
                decodeMs = stageTimer.elapsedMs();
                logFrameTiming(frame_type, compressed_size, uncompressed_size,
                               ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                return lastFrame;
            }
            else if (logical_type == PVX_KEYFRAME_PAL)
            {
                FramePtr frame = pool->get(static_cast<size_t>(width) * height * CHANNELS);
                if (!payloadBuf.empty())
                {
                    size_t total_pixels = static_cast<size_t>(width) * height;
                    uint8_t bits = 0;
                    std::vector<uint32_t> indices;
                    if (decode_keyframe_palette_indices(payloadBuf.data(), payloadBuf.size(),
                                                        width, height, indices, bits) &&
                        indices.size() == total_pixels)
                    {
                        DBG_LOGF("KEYFRAME_PAL: bits=%u pixels=%zu payloadSize=%zu", (unsigned)bits, total_pixels, payloadBuf.size());
                        {
                            std::lock_guard<std::mutex> lock(g_gpalMutex);
                            DBG_LOGF("KEYFRAME_PAL: gpal.loaded=%d gpal.colors=%zu", g_engineGlobalPalette.loaded ? 1 : 0, g_engineGlobalPalette.colors.size());
                            if (!g_engineGlobalPalette.loaded || g_engineGlobalPalette.colors.empty())
                                throw std::runtime_error("PVX keyframe palette requires loaded global palette");

                            for (size_t i = 0; i < total_pixels; ++i)
                            {
                                if (indices[i] >= g_engineGlobalPalette.colors.size())
                                {
                                    DBG_LOGF("KEYFRAME_PAL: OOB index[%zu]=%u >= palette_size=%zu", i, indices[i], g_engineGlobalPalette.colors.size());
                                    std::ostringstream oss;
                                    oss << "PVX keyframe palette index out of bounds"
                                        << " index=" << indices[i]
                                        << " palette_size=" << g_engineGlobalPalette.colors.size()
                                        << " pixel=" << i
                                        << " bits=" << static_cast<unsigned>(bits)
                                        << " palette_source=baked project palette";
                                    throw std::runtime_error(oss.str());
                                }
                                const uint32_t rgb = g_engineGlobalPalette.colors[indices[i]];
                                (*frame)[i * CHANNELS + 0] = static_cast<uint8_t>(rgb & 0xFF);
                                (*frame)[i * CHANNELS + 1] = static_cast<uint8_t>((rgb >> 8) & 0xFF);
                                (*frame)[i * CHANNELS + 2] = static_cast<uint8_t>((rgb >> 16) & 0xFF);
                            }
                        }
                        pendingPaletteForLastFrame = std::make_shared<FramePaletteStream>();
                        pendingPaletteForLastFrame->palette.clear();
                        pendingPaletteForLastFrame->indices = std::move(indices);
                        pendingPaletteForLastFrame->bits = bits;
                        pendingPaletteForLastFrame->valid = true;
                        DBG_LOG("KEYFRAME_PAL: decoded OK");
                    }
                    else
                    {
                        DBG_LOG("KEYFRAME_PAL: read_packed_indices FAILED");
                        throw std::runtime_error("PVX keyframe palette packed indices malformed");
                    }
                }
                else
                {
                    DBG_LOG("KEYFRAME_PAL: payloadBuf is empty!");
                    throw std::runtime_error("PVX keyframe palette payload is empty");
                }
                refBuffer.clear();
                cacheKeyframe(frameOffset, frame);
                
                lastFrame = frame;
                ++totalFrames;
#ifdef _WIN32
                decodeMs = stageTimer.elapsedMs();
                logFrameTiming(frame_type, compressed_size, uncompressed_size,
                               ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                return lastFrame;
            }
            else if (logical_type == PVX_DELTA)
            {
                if (payloadBuf.empty())
                {
                    throw std::runtime_error("PVX delta payload is empty");
                }

                // Lazily populate refBuffer from lastFrame if a prior keyframe
                // deferred the push.
                if (refBuffer.empty() && lastFrame)
                {
                    refBuffer.push(lastFrame, width, height, pendingPaletteForLastFrame);
                    pendingPaletteForLastFrame.reset();
                }

                if (refBuffer.empty())
                {
                    throw std::runtime_error("PVX delta without reference frame");
                }
                
                if (deltaRefIdx >= refBuffer.size())
                {
                    throw std::runtime_error("PVX delta reference index out of range");
                }
                
                const auto& refFrame = refBuffer.get(deltaRefIdx);
                const auto refPalette = refBuffer.get_palette(deltaRefIdx);

                auto buildDeltaContext = [&](const std::string& detail) -> std::string {
                    std::ostringstream oss;
                    oss << detail << "\n"
                        << "--- PVX DELTA DECODE ERROR STATE ---\n"
                        << "media=\"" << currentPath << "\"\n"
                        << "stream_frame=" << streamFrameIndex << "\n"
                        << "frame_type=PVX_DELTA\n"
                        << "frame_offset=" << frameOffset << "\n"
                        << "ref_idx=" << static_cast<unsigned>(deltaRefIdx) << "\n"
                        << "ref_count=" << refBuffer.size() << "\n"
                        << "palette_mode=" << (paletteMode == PVX_PALETTE_MODE_GLOBAL ? "global" : "local") << "\n"
                        << "palette_source=baked project palette\n"
                        << "ref_palette_valid=" << ((refPalette && refPalette->valid) ? "yes" : "no") << "\n"
                        << "deferred_ref_push=" << ((lastFrame && refBuffer.size() == 1) ? "yes" : "no") << "\n"
                        << "ref_frame_bytes=" << (refFrame ? refFrame->size() : 0) << "\n"
                        << "dims=" << width << "x" << height << "\n"
                        << "payload_uncompressed=" << uncompressed_size << "\n"
                        << "payload_compressed=" << compressed_size << "\n";
                    if (paletteMode == PVX_PALETTE_MODE_GLOBAL && refFrame)
                    {
                        oss << "ref_palette_reason="
                            << describe_global_palette_rebuild_failure(refFrame->data(), refFrame->size(), width, height) << "\n";
                    }
                    else if (refFrame)
                    {
                        oss << "ref_palette_reason="
                            << describe_local_palette_rebuild_failure(refFrame->size(), width, height) << "\n";
                    }
                    oss << "------------------------------------\n";
                    
                    // Directly dump to DebugView so it's guaranteed to be seen before bubble-up
                    OutputDebugStringA(oss.str().c_str());

                    return oss.str();
                };

                if (!refPalette)
                {
                    throw std::runtime_error(buildDeltaContext("PVX delta reference has no palette state object"));
                }
                
                // Pass edgeOffsets to decode_delta_into
                if (edgeOffsets.empty()) {
                    edgeOffsets = build_edge_offsets(width, height);
                }
                
                FramePtr frame = pool->get(static_cast<size_t>(width) * height * CHANNELS);
                FramePaletteStream decodedPalette;
                try
                {
                    decode_delta_into(payloadBuf.data(), payloadBuf.size(),
                                      refFrame->data(), refFrame->size(),
                                      *refPalette,
                                      width, height,
                                      *frame, globalMotionBuf, edgeOffsets, runLengths, residualScratch,
                                      paletteMode == PVX_PALETTE_MODE_GLOBAL,
                                      &decodedPalette);
                }
                catch (const std::exception& e)
                {
                    throw std::runtime_error(buildDeltaContext(e.what()));
                }

                std::shared_ptr<FramePaletteStream> decodedPalettePtr;
                if (decodedPalette.valid)
                    decodedPalettePtr = std::make_shared<FramePaletteStream>(std::move(decodedPalette));

                refBuffer.push(frame, width, height, decodedPalettePtr);
                lastFrame = nullptr;
                ++totalFrames;
#ifdef _WIN32
                decodeMs = stageTimer.elapsedMs();
                logFrameTiming(frame_type, compressed_size, uncompressed_size,
                               ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                return frame;
            }
            else if (logical_type == PVX_DELTA_BI)
            {
                if (refBuffer.empty() && lastFrame)
                {
                    refBuffer.push(lastFrame, width, height, pendingPaletteForLastFrame);
                    pendingPaletteForLastFrame.reset();
                }
                phantom::pvx_decode::BiContainerView bi;
                if (refBuffer.empty() ||
                    !phantom::pvx_decode::parse_bi_container(payloadBuf, bi) ||
                    bi.future_delta_ref >= refBuffer.size())
                    throw std::runtime_error("PVX malformed bidirectional delta container");
                if (edgeOffsets.empty()) edgeOffsets = build_edge_offsets(width, height);

                FramePtr future = pool->get(static_cast<size_t>(width) * height * CHANNELS);
                FramePaletteStream futurePalette;
                decode_delta_into(
                    bi.future_delta.data(), bi.future_delta.size(),
                    refBuffer.get(bi.future_delta_ref)->data(),
                    refBuffer.get(bi.future_delta_ref)->size(),
                    *refBuffer.get_palette(bi.future_delta_ref),
                    width, height, *future, globalMotionBuf, edgeOffsets,
                    runLengths, residualScratch,
                    paletteMode == PVX_PALETTE_MODE_GLOBAL, &futurePalette);
                std::shared_ptr<FramePaletteStream> futurePalettePtr;
                if (futurePalette.valid)
                    futurePalettePtr = std::make_shared<FramePaletteStream>(
                        std::move(futurePalette));
                refBuffer.push(future, width, height, futurePalettePtr);
                const size_t future_ref = refBuffer.size() - 1u;
                if (bi.past_ref >= refBuffer.size() || bi.past_ref == future_ref)
                    throw std::runtime_error("PVX bidirectional reference index out of range");

                FramePtr frame = pool->get(static_cast<size_t>(width) * height * CHANNELS);
                if (!phantom::pvx_decode::decode_bi_blocks(
                        bi.bi_payload, refBuffer.get(bi.past_ref)->data(),
                        future->data(), width, height, *frame))
                    throw std::runtime_error("PVX malformed bidirectional block payload");
                pendingBiAnchor = future;
                lastFrame = frame;
                ++totalFrames;
#ifdef _WIN32
                decodeMs = stageTimer.elapsedMs();
                logFrameTiming(frame_type, compressed_size, uncompressed_size,
                               ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                return frame;
            }
            else if (logical_type == PVX_REPEAT_DELTA)
            {
                const uint64_t repeat_count = uncompressed_size;
                if ((refBuffer.empty() && !lastFrame) || repeat_count == 0)
                {
                    throw std::runtime_error("PVX malformed repeat-delta frame");
                }

                uint8_t inner_ref_idx = 0;
                std::vector<uint8_t> inner_delta;
                if (!parse_repeat_delta_payload(payloadBuf, inner_ref_idx, inner_delta))
                    throw std::runtime_error("PVX malformed repeat-delta payload");

                if (refBuffer.empty() && lastFrame)
                {
                    refBuffer.push(lastFrame, width, height, pendingPaletteForLastFrame);
                    pendingPaletteForLastFrame.reset();
                }
                if (inner_ref_idx >= refBuffer.size())
                    throw std::runtime_error("PVX repeat-delta reference index out of range");

                if (!lastFrame)
                    lastFrame = refBuffer.get(refBuffer.size() - 1);
                pendingRepeats = static_cast<uint32_t>(repeat_count - 1);

                if (edgeOffsets.empty())
                    edgeOffsets = build_edge_offsets(width, height);

                FramePtr frame = pool->get(static_cast<size_t>(width) * height * CHANNELS);
                decode_delta_into(inner_delta.data(), inner_delta.size(),
                                  refBuffer.get(inner_ref_idx)->data(), refBuffer.get(inner_ref_idx)->size(),
                                  *refBuffer.get_palette(inner_ref_idx),
                                  width, height,
                                  *frame, globalMotionBuf, edgeOffsets, runLengths, residualScratch,
                                  paletteMode == PVX_PALETTE_MODE_GLOBAL, nullptr);

                refBuffer.push(frame, width, height, nullptr);
                lastFrame = frame;
                ++totalFrames;
#ifdef _WIN32
                decodeMs = stageTimer.elapsedMs();
                logFrameTiming(frame_type, compressed_size, uncompressed_size,
                               ioMs, decompMs, decodeMs, totalTimer.elapsedMs());
#endif
                return lastFrame;
            }
            else
            {
                throw std::runtime_error("PVX unknown streaming frame type");
            }
        }
    };
    
    // Global streaming decoder instance for pvxPlay
    static StreamingDecoderState g_streamDecoder;
    
    // Global streaming decoder instance for menu (separate so they don't conflict)
    static StreamingDecoderState g_menuDecoder;
    static std::string g_menuPath;
    static FramePtr g_menuCurrentFrame;
    static std::mutex g_menuQueueMutex;
    static std::condition_variable g_menuQueueCv;
    static std::deque<FramePtr> g_menuFrameQueue;
    static std::thread g_menuDecodeThread;
    static bool g_menuDecodeStop = false;
    static constexpr size_t kMenuQueueCapacity = 12;
    static std::thread g_menuPrewarmThread;
    static std::mutex g_menuPrewarmMutex;
    static std::string g_menuPrewarmPath;
    static bool g_menuPrewarmDone = true;
    static std::unordered_map<uint64_t, FramePtr> g_menuPrewarmCache;
    static std::deque<uint64_t> g_menuPrewarmOrder;
    static size_t g_menuPrewarmBytes = 0;
#ifdef _WIN32
    static uint64_t g_menuUnderrunCount = 0;
#endif

    static void maybeApplyMenuPrewarmCache(const std::string& path)
    {
        std::unordered_map<uint64_t, FramePtr> cache;
        std::deque<uint64_t> order;
        size_t bytes = 0;

        {
            std::lock_guard<std::mutex> lock(g_menuPrewarmMutex);
            if (!g_menuPrewarmDone || g_menuPrewarmPath != path || g_menuPrewarmCache.empty())
                return;
            cache = g_menuPrewarmCache;
            order = g_menuPrewarmOrder;
            bytes = g_menuPrewarmBytes;
        }

        g_menuDecoder.importKeyframeCacheSnapshot(cache, order, bytes);
#ifdef _WIN32
        DBG_LOGF("menu async prewarm cache applied entries=%zu cacheMB=%.1f",
                 cache.size(),
                 static_cast<double>(bytes) / (1024.0 * 1024.0));
#endif
    }

    static void startMenuPrewarmWorker(const std::string& path,
                                       size_t maxKeyframes,
                                       double maxMillis)
    {
        if (path.empty() || maxKeyframes == 0) return;
        if (g_menuDecoder.headerRead && g_menuPath == path)
        {
            bool prewarmDone = false;
            {
                std::lock_guard<std::mutex> lock(g_menuPrewarmMutex);
                prewarmDone = g_menuPrewarmDone;
            }
            if (prewarmDone && g_menuPrewarmThread.joinable())
                g_menuPrewarmThread.join();
            return;
        }

        {
            std::lock_guard<std::mutex> lock(g_menuPrewarmMutex);
            if (!g_menuPrewarmDone && g_menuPrewarmPath == path)
                return;
        }

        if (g_menuPrewarmThread.joinable())
            g_menuPrewarmThread.join();

        {
            std::lock_guard<std::mutex> lock(g_menuPrewarmMutex);
            g_menuPrewarmPath = path;
            g_menuPrewarmDone = false;
            g_menuPrewarmCache.clear();
            g_menuPrewarmOrder.clear();
            g_menuPrewarmBytes = 0;
        }

        g_menuPrewarmThread = std::thread([path, maxKeyframes, maxMillis]()
        {
            StreamingDecoderState warm;
#ifdef _WIN32
            warm.setDebugTag("menu-prewarm");
#endif
            if (!warm.openFile(path))
            {
                std::lock_guard<std::mutex> lock(g_menuPrewarmMutex);
                g_menuPrewarmDone = true;
                return;
            }

            warm.prewarmKeyframeCache(path, maxKeyframes, maxMillis);

            std::unordered_map<uint64_t, FramePtr> cache;
            std::deque<uint64_t> order;
            size_t bytes = 0;
            warm.exportKeyframeCacheSnapshot(cache, order, bytes);

            {
                std::lock_guard<std::mutex> lock(g_menuPrewarmMutex);
                g_menuPrewarmCache = std::move(cache);
                g_menuPrewarmOrder = std::move(order);
                g_menuPrewarmBytes = bytes;
                g_menuPrewarmDone = true;
            }

            if (g_menuDecoder.headerRead && g_menuPath == path)
                maybeApplyMenuPrewarmCache(path);
        });
    }

    static void stopMenuDecodeWorker()
    {
        {
            std::lock_guard<std::mutex> lock(g_menuQueueMutex);
            g_menuDecodeStop = true;
            g_menuQueueCv.notify_all();
        }
        if (g_menuDecodeThread.joinable())
            g_menuDecodeThread.join();
        {
            std::lock_guard<std::mutex> lock(g_menuQueueMutex);
            g_menuFrameQueue.clear();
            g_menuDecodeStop = false;
        }
    }

    static void startMenuDecodeWorker()
    {
        g_menuDecodeThread = std::thread([]()
        {
#ifdef _WIN32
            // The engine's main thread runs ABOVE_NORMAL. Match it here so a
            // full-HD streamed menu cannot be starved by render/UI work and
            // fall below the FPS declared in the PVX header.
            SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_ABOVE_NORMAL);
#endif
            try
            {
                for (;;)
                {
                    // Wait until the queue has room (or we're told to stop).
                    size_t currentSize;
                    {
                        std::unique_lock<std::mutex> lock(g_menuQueueMutex);
                        g_menuQueueCv.wait(lock, []() { return g_menuDecodeStop || g_menuFrameQueue.size() < kMenuQueueCapacity; });
                        if (g_menuDecodeStop)
                            break;
                        currentSize = g_menuFrameQueue.size();
                    }

                    // Decode only a small burst each wake to avoid monopolizing
                    // CPU during expensive keyframe runs.
                    size_t slotsAvailable = kMenuQueueCapacity - currentSize;
                    const size_t burstLimit = std::min<size_t>(slotsAvailable, 3);
                    size_t decoded = 0;

                    while (decoded < burstLimit)
                    {
                        FramePtr frame = g_menuDecoder.decodeNextFrame();

                        // Handle seamless loop at EOF.
                        if (!frame && g_menuDecoder.finished && !g_menuPath.empty())
                        {
                            // Re-open without destroying the whole decoder so the
                            // persistent decoder state and scratch buffers survive.
                            g_menuDecoder.file.close();
                            g_menuDecoder.file.clear();
                            g_menuDecoder.finished = false;
                            g_menuDecoder.pendingRepeats = 0;
                            g_menuDecoder.pendingBiAnchor.reset();
                            g_menuDecoder.refBuffer.clear();
                            g_menuDecoder.lastFrame = nullptr;
                            g_menuDecoder.file.open(g_menuPath, std::ios::binary);
                            if (g_menuDecoder.file)
                            {
                                g_menuDecoder.file.seekg(g_menuDecoder.frameDataOffset, std::ios::beg);
                                frame = g_menuDecoder.decodeNextFrame();
                            }
                        }

                        if (!frame)
                            break;

                        {
                            std::lock_guard<std::mutex> lock(g_menuQueueMutex);
                            if (g_menuDecodeStop)
                                return;  // exit thread
                            g_menuFrameQueue.emplace_back(std::move(frame));
                        }
                        ++decoded;

                        // decodeNextFrame is already a substantial scheduling
                        // boundary for full-HD media. Yielding here handed the
                        // worker back to the higher-priority main thread after
                        // every frame and caused chronic menu underruns.
                    }

                    // Wake the consumer so it knows frames are available.
                    if (decoded > 0)
                        g_menuQueueCv.notify_one();
                    else
                        std::this_thread::sleep_for(std::chrono::milliseconds(1));
                }
            }
            catch (const std::exception& ex)
            {
                DBG_LOGF("menu decode worker exception: %s", ex.what());
                std::lock_guard<std::mutex> lock(g_menuQueueMutex);
                g_menuDecodeStop = true;
                g_menuQueueCv.notify_all();
            }
            catch (...)
            {
                DBG_LOG("menu decode worker exception: unknown");
                std::lock_guard<std::mutex> lock(g_menuQueueMutex);
                g_menuDecodeStop = true;
                g_menuQueueCv.notify_all();
            }
        });
    }
    
    // Wrapper functions to access streaming decoder
    bool streamOpen(const std::string& path) { 
        g_streamDecoder = StreamingDecoderState();  // Reset
#ifdef _WIN32
        g_streamDecoder.setDebugTag("stream");
#endif
        return g_streamDecoder.openFile(path); 
    }
    FramePtr streamDecodeNext() { 
        return g_streamDecoder.decodeNextFrame(); 
    }
    void streamClose() {
        g_streamDecoder = StreamingDecoderState();
    }
    int streamGetFPS() { return g_streamDecoder.fps; }
    int streamGetWidth() { return g_streamDecoder.width; }
    int streamGetHeight() { return g_streamDecoder.height; }
    bool streamIsFinished() { return g_streamDecoder.finished; }
    
    // Menu streaming wrappers
    bool menuStreamOpen(const std::string& path) {
        setPvxLastError(std::string());
        stopMenuDecodeWorker();
        g_menuDecoder = StreamingDecoderState();
#ifdef _WIN32
        g_menuDecoder.setDebugTag("menu");
        g_menuUnderrunCount = 0;
#endif
        g_menuPath = path;
        g_menuCurrentFrame = nullptr;
        {
            std::lock_guard<std::mutex> lock(g_menuQueueMutex);
            g_menuFrameQueue.clear();
        }
        if (!g_menuDecoder.openFile(path))
        {
            setPvxLastError("PVX stream openFile failed: " + path);
            return false;
        }
        maybeApplyMenuPrewarmCache(path);
        startMenuPrewarmWorker(path, 128, 5000.0);

        try
        {
            // Decode one frame synchronously so the menu has immediate content.
            g_menuCurrentFrame = g_menuDecoder.decodeNextFrame();
            if (!g_menuCurrentFrame)
            {
                setPvxLastError("PVX stream produced no first frame: " + path);
                return false;
            }

            // Prefetch a small burst so initial menu playback does not stutter while
            // the worker thread spins up.
            constexpr size_t kMenuInitialPrefetch = 6;
            for (size_t i = 0; i < kMenuInitialPrefetch; ++i)
            {
                FramePtr frame = g_menuDecoder.decodeNextFrame();
                if (!frame)
                    break;
                std::lock_guard<std::mutex> lock(g_menuQueueMutex);
                g_menuFrameQueue.emplace_back(std::move(frame));
            }
        }
        catch (const std::exception& ex)
        {
            DBG_LOGF("menuStreamOpen decode exception: %s", ex.what());
            setPvxLastError("PVX menu decode failed: " + std::string(ex.what()) + " (" + path + ")");
            g_menuCurrentFrame = nullptr;
            return false;
        }
        catch (...)
        {
            DBG_LOG("menuStreamOpen decode exception: unknown");
            setPvxLastError("PVX menu decode failed with an unknown exception: " + path);
            g_menuCurrentFrame = nullptr;
            return false;
        }

        d2dCtx.forceFullUpdate = true;
        vkCtx.forceFullUpdate = true;
        startMenuDecodeWorker();
        return true;
    }
    
    const std::vector<uint8_t>* menuStreamCurrentFrame()
    {
        if (!g_menuDecoder.headerRead || !g_menuCurrentFrame)
            return nullptr;
        return g_menuCurrentFrame.get();
    }
    
    const std::vector<uint8_t>* menuStreamNextFrame() {
        if (!g_menuDecoder.headerRead) return nullptr;

        bool advanced = false;
        bool wasFull = false;
        {
            std::lock_guard<std::mutex> lock(g_menuQueueMutex);
            wasFull = (g_menuFrameQueue.size() >= kMenuQueueCapacity);
            if (!g_menuFrameQueue.empty())
            {
                g_menuCurrentFrame = std::move(g_menuFrameQueue.front());
                g_menuFrameQueue.pop_front();
                advanced = true;
            }
        }
        // Only wake the producer when we freed a slot from a full queue.
        if (advanced && wasFull)
            g_menuQueueCv.notify_one();

        // On decode underrun, keep presenting the previous frame so output
        // cadence stays stable even if decode briefly falls behind.
        if (!advanced)
        {
#ifdef _WIN32
            ++g_menuUnderrunCount;
            if ((g_menuUnderrunCount % 120) == 0)
            {
                DBG_LOGF("menu queue underrun count=%llu size=%zu",
                         static_cast<unsigned long long>(g_menuUnderrunCount),
                         g_menuFrameQueue.size());
            }
#endif
            return g_menuCurrentFrame ? g_menuCurrentFrame.get() : nullptr;
        }

        if (!g_menuCurrentFrame)
            return nullptr;
        return g_menuCurrentFrame.get();
    }
    
    void menuStreamClose() {
        stopMenuDecodeWorker();
        if (g_menuPrewarmThread.joinable())
            g_menuPrewarmThread.join();
        g_menuDecoder = StreamingDecoderState();
        g_menuPath.clear();
        g_menuCurrentFrame = nullptr;
#ifdef _WIN32
        g_menuUnderrunCount = 0;
#endif
        d2dCtx.forceFullUpdate = true;
        vkCtx.forceFullUpdate = true;
    }
    
    void menuStreamSeek(size_t frameIndex) {
        // Only supports seek to 0 (restart)
        if (frameIndex == 0 && !g_menuPath.empty()) {
            stopMenuDecodeWorker();
            g_menuDecoder = StreamingDecoderState();
#ifdef _WIN32
            g_menuDecoder.setDebugTag("menu");
            g_menuUnderrunCount = 0;
#endif
            {
                std::lock_guard<std::mutex> lock(g_menuQueueMutex);
                g_menuFrameQueue.clear();
            }
            if (g_menuDecoder.openFile(g_menuPath))
            {
                maybeApplyMenuPrewarmCache(g_menuPath);
                startMenuPrewarmWorker(g_menuPath, 128, 5000.0);
                try
                {
                    g_menuCurrentFrame = g_menuDecoder.decodeNextFrame();
                    constexpr size_t kMenuInitialPrefetch = 6;
                    for (size_t i = 0; i < kMenuInitialPrefetch; ++i)
                    {
                        FramePtr frame = g_menuDecoder.decodeNextFrame();
                        if (!frame)
                            break;
                        std::lock_guard<std::mutex> lock(g_menuQueueMutex);
                        g_menuFrameQueue.emplace_back(std::move(frame));
                    }
                }
                catch (const std::exception& ex)
                {
                    DBG_LOGF("menuStreamSeek decode exception: %s", ex.what());
                    g_menuCurrentFrame.reset();
                }
                catch (...)
                {
                    DBG_LOG("menuStreamSeek decode exception: unknown");
                    g_menuCurrentFrame.reset();
                }
            }
            else
                g_menuCurrentFrame.reset();
            d2dCtx.forceFullUpdate = true;
            vkCtx.forceFullUpdate = true;
            startMenuDecodeWorker();
        }
    }
    
    int menuStreamGetFPS() { return g_menuDecoder.fps; }
    int menuStreamGetWidth() { return g_menuDecoder.width; }
    int menuStreamGetHeight() { return g_menuDecoder.height; }
    size_t menuStreamGetTotalFrames() { return 0; }
    bool menuStreamIsOpen() { return g_menuDecoder.headerRead; }
}

// ============================================================================
// Public API
// ============================================================================

static std::unordered_map<std::string, std::unique_ptr<PVXFile>> g_pvxCache;

PVXFile loadPVX(const std::string& diskPath)
{
    DBG_LOGF("loadPVX(\"%s\") - starting decode", diskPath.c_str());
    PVXFile result = decode_pvx_stream(resolvePlayablePvxPath(diskPath));
    DBG_LOGF("loadPVX(\"%s\") - decoded %zu frames", diskPath.c_str(), result.frameData.size());
    return result;
}

PVXFile& getOrLoadPVX(const std::string& diskPath)
{
    DBG_LOGF("getOrLoadPVX(\"%s\")", diskPath.c_str());
    const std::string playablePath = resolvePlayablePvxPath(diskPath);
    if (auto it = g_pvxCache.find(playablePath); it != g_pvxCache.end())
    {
        DBG_LOG("  -> found in cache");
        return *it->second;
    }
    DBG_LOG("  -> not in cache, loading...");
    auto pvx = std::make_unique<PVXFile>(loadPVX(diskPath));
    auto [it, inserted] = g_pvxCache.emplace(playablePath, std::move(pvx));
    DBG_LOG("  -> loaded and cached");
    return *it->second;
}

void unloadPVX(const std::string& diskPath)
{
    DBG_LOGF("unloadPVX(\"%s\")", diskPath.c_str());
    g_pvxCache.erase(resolvePlayablePvxPath(diskPath));
}

namespace {
    bool pvxPlayInternal(
        const std::string& diskPath,
        PVXFile* outLastFrame,
        bool allowSpaceToSkip,
        bool hideCursorDuringPlayback,
        bool mouseHoldToPause,
        const std::function<void()>& onFirstFramePresented)
    {
        const std::string playablePath = resolvePlayablePvxPath(diskPath);
        DBG_LOGF("pvxPlay(\"%s\") - starting streamed playback", diskPath.c_str());

        if (!streamOpen(playablePath))
        {
            DBG_LOG("pvxPlay: failed to open file");
            return false;
        }

        DBG_LOGF("pvxPlay: opened %dx%d @ %d fps", streamGetWidth(), streamGetHeight(), streamGetFPS());

        // Resize the content texture to match the PVX dimensions so the
        // renderer reads pixel data with the correct stride.  The texture is
        // restored to CONTENT_WIDTH x CONTENT_HEIGHT when playback ends.
        const uint32_t pvxW = static_cast<uint32_t>(streamGetWidth());
        const uint32_t pvxH = static_cast<uint32_t>(streamGetHeight());
        if (pvxW != static_cast<uint32_t>(CONTENT_WIDTH) || pvxH != static_cast<uint32_t>(CONTENT_HEIGHT))
        {
            DBG_LOGF("pvxPlay: resizing content texture %ux%u -> %ux%u", CONTENT_WIDTH, CONTENT_HEIGHT, pvxW, pvxH);
            resizeContentTexture(pvxW, pvxH);
        }

        // Save state
        double prevFPS = state.frameTiming.currentFPS;
        size_t prevFrame = state.currentFrameIndex;
        AnimationState prevAnim = state.animation;
        PVXFile* prevPVX = state.currentPVX;

        // Create a temporary PVXFile to hold current frame for rendering
        PVXFile streamingPVX;
        streamingPVX.filename = diskPath;
        streamingPVX.width = streamGetWidth();
        streamingPVX.height = streamGetHeight();
        streamingPVX.fps = streamGetFPS();
        streamingPVX.frameData.resize(1);  // Single frame buffer

        std::mutex decodeMutex;
        std::condition_variable decodeCv;
        std::deque<FramePtr> decodeQueue;
        bool decodeStop = false;
        bool decodeFinished = false;
        bool decodeErrored = false;
        std::string decodeErrorMessage;
        constexpr size_t kDecodeQueueCapacity = 12;

        std::thread decodeThread([&]()
        {
          try {
            for (;;)
            {
                {
                    std::unique_lock<std::mutex> lock(decodeMutex);
                    decodeCv.wait(lock, [&]() { return decodeStop || decodeQueue.size() < kDecodeQueueCapacity; });
                    if (decodeStop)
                        break;
                }

                FramePtr frame = streamDecodeNext();

                {
                    std::lock_guard<std::mutex> lock(decodeMutex);
                    if (decodeStop)
                        break;
                    if (!frame)
                    {
                        decodeFinished = true;
                        decodeCv.notify_all();
                        break;
                    }
                    decodeQueue.emplace_back(std::move(frame));
                }
                decodeCv.notify_all();
            }
          } catch (const std::exception& ex) {
            DBG_LOGF("pvxPlay decode thread EXCEPTION: %s", ex.what());
            std::lock_guard<std::mutex> lock(decodeMutex);
                        decodeErrored = true;
                        decodeErrorMessage = ex.what();
            decodeFinished = true;
            decodeCv.notify_all();
          } catch (...) {
            DBG_LOG("pvxPlay decode thread EXCEPTION: unknown");
            std::lock_guard<std::mutex> lock(decodeMutex);
                        decodeErrored = true;
                        decodeErrorMessage = "unknown decoder exception";
            decodeFinished = true;
            decodeCv.notify_all();
          }
        });

        auto stopDecodeThread = [&]()
        {
            {
                std::lock_guard<std::mutex> lock(decodeMutex);
                decodeStop = true;
                decodeCv.notify_all();
            }
            if (decodeThread.joinable())
                decodeThread.join();
        };

        auto popDecodedFrame = [&](FramePtr& outFrame) -> bool
        {
            std::lock_guard<std::mutex> lock(decodeMutex);
            if (decodeQueue.empty())
                return false;
            outFrame = std::move(decodeQueue.front());
            decodeQueue.pop_front();
            decodeCv.notify_one();
            return true;
        };

        // Wait for first decoded frame while keeping the app responsive.
        for (;;)
        {
            if (!processEvents())
            {
                stopDecodeThread();
                streamClose();
                return false;
            }

            FramePtr firstFrame;
            bool noFramesPossible = false;
            bool localDecodeErrored = false;
            std::string localDecodeErrorMessage;
            {
                std::unique_lock<std::mutex> lock(decodeMutex);
                decodeCv.wait_for(lock, std::chrono::milliseconds(8), [&]()
                {
                    return !decodeQueue.empty() || decodeFinished || decodeStop;
                });
                if (!decodeQueue.empty())
                {
                    firstFrame = std::move(decodeQueue.front());
                    decodeQueue.pop_front();
                    decodeCv.notify_one();
                }
                noFramesPossible = decodeFinished && decodeQueue.empty();
                localDecodeErrored = decodeErrored;
                localDecodeErrorMessage = decodeErrorMessage;
            }

            if (firstFrame)
            {
                // Never steal buffer ownership from decoder-owned shared frames.
                // The streaming decoder can still reference this frame as the
                // deferred delta base (lastFrame) on the next decode step.
                streamingPVX.frameData[0] = *firstFrame;
                break;
            }
            if (noFramesPossible)
            {
                if (localDecodeErrored)
                {
                    DBG_LOGF("pvxPlay: decode failed before first frame: %s",
                             localDecodeErrorMessage.empty() ? "unknown" : localDecodeErrorMessage.c_str());
                }
                DBG_LOG("pvxPlay: stream finished before first frame");
                stopDecodeThread();
                streamClose();
                return false;
            }

            maybeRenderFrame();
        }

        // Do not open/prewarm a second global-palette PVX while the intro is
        // Menu streaming opens after intro playback; both streams reference
        // the same immutable project palette baked into the executable.

#ifdef _WIN32
    if (hideCursorDuringPlayback)
    {
        while (ShowCursor(FALSE) >= 0);
    }
#endif

        state.frameTiming.currentFPS = streamGetFPS();
        state.currentPVX = &streamingPVX;
        state.animation.isPlaying = true;
        state.animation.totalFrames = 1;
        state.currentFrameIndex = 0;
        state.animation.lastFrameTime = std::chrono::steady_clock::now();
        state.frameTiming.dirtyFrame = true;
        d2dCtx.forceFullUpdate = true;
        vkCtx.forceFullUpdate = true;
        maybeRenderFrame();
        if (onFirstFramePresented)
            onFirstFramePresented();

        bool playing = true;
        bool paused = false;
        while (playing)
        {
            if (!processEvents()) break;
#ifdef _WIN32
            if (allowSpaceToSkip && (GetAsyncKeyState(VK_SPACE) & 1)) break;
#endif

#ifdef _WIN32
            const bool wantPause = mouseHoldToPause && ((GetAsyncKeyState(VK_LBUTTON) & 0x8000) != 0);
#else
            const bool wantPause = false;
#endif
            if (wantPause)
            {
                paused = true;
                state.frameTiming.dirtyFrame = true;
                maybeRenderFrame(false);
                continue;
            }
            if (paused)
            {
                // Resume: reset timing so we don't fast-forward after a long pause.
                paused = false;
                state.animation.lastFrameTime = std::chrono::steady_clock::now();
                state.frameTiming.dirtyFrame = true;
            }

            auto now = std::chrono::steady_clock::now();
            auto elapsed = now - state.animation.lastFrameTime;
            auto frameDuration = state.animation.getFrameDuration(state.frameTiming.currentFPS);

            if (elapsed >= frameDuration)
            {
                bool uploadedAny = false;

                // Bound stale clocks to one cadence tick so cinematic playback
                // never drains a burst of queued frames faster than the PVX FPS.
                if (elapsed > frameDuration * 4)
                {
                    state.animation.lastFrameTime = now - frameDuration;
                }

                FramePtr nextFrame;
                if (popDecodedFrame(nextFrame))
                {
                    // Keep decoder reference frames intact; copy pixels for display.
                    streamingPVX.frameData[0] = *nextFrame;
                    state.animation.lastFrameTime += frameDuration;
                    uploadedAny = true;
                }
                else
                {
                    bool streamEnded = false;
                    bool localDecodeErrored = false;
                    std::string localDecodeErrorMessage;
                    {
                        std::lock_guard<std::mutex> lock(decodeMutex);
                        streamEnded = decodeFinished && decodeQueue.empty();
                        localDecodeErrored = decodeErrored;
                        localDecodeErrorMessage = decodeErrorMessage;
                    }
                    if (streamEnded)
                    {
                        if (localDecodeErrored)
                        {
                            DBG_LOGF("pvxPlay: stream decode error: %s",
                                     localDecodeErrorMessage.empty() ? "unknown" : localDecodeErrorMessage.c_str());
                            stopDecodeThread();
                            streamClose();
                            throw std::runtime_error(std::string("PVX streaming decode failed: ") +
                                                     (localDecodeErrorMessage.empty() ? "unknown" : localDecodeErrorMessage));
                        }
                        playing = false;
                        DBG_LOG("pvxPlay: stream ended");
                    }
                }

                if (uploadedAny)
                    state.frameTiming.dirtyFrame = true;
            }

            maybeRenderFrame();
        }

        stopDecodeThread();
        streamClose();

        // Restore the content texture to the default dimensions.
        if (pvxW != static_cast<uint32_t>(CONTENT_WIDTH) || pvxH != static_cast<uint32_t>(CONTENT_HEIGHT))
        {
            DBG_LOGF("pvxPlay: restoring content texture %ux%u", CONTENT_WIDTH, CONTENT_HEIGHT);
            resizeContentTexture(static_cast<uint32_t>(CONTENT_WIDTH), static_cast<uint32_t>(CONTENT_HEIGHT));
        }

        // Capture the last displayed frame before restoring state.
        if (outLastFrame && !streamingPVX.frameData.empty() && !streamingPVX.frameData[0].empty())
        {
            outLastFrame->filename = diskPath;
            outLastFrame->width = streamingPVX.width;
            outLastFrame->height = streamingPVX.height;
            outLastFrame->fps = streamingPVX.fps;
            outLastFrame->frameData.clear();
            outLastFrame->frameData.resize(1);
            outLastFrame->frameData[0] = std::move(streamingPVX.frameData[0]);
        }

        // Restore state
        state.frameTiming.currentFPS = prevFPS;
        state.currentFrameIndex = prevFrame;
        state.animation = prevAnim;
        state.currentPVX = prevPVX;
        d2dCtx.forceFullUpdate = true;
        vkCtx.forceFullUpdate = true;

#ifdef _WIN32
    if (hideCursorDuringPlayback)
    {
        while (ShowCursor(TRUE) < 0);
    }
#endif
        state.frameTiming.dirtyFrame = true;

        return true;
    }
}

bool pvxPlayCaptureLastFrame(const std::string& diskPath, PVXFile& outLastFrame)
{
    // CLI playback mode uses Space to *replay*, so do not treat Space as "skip".
    // Also: do not hide the cursor in CLI mode; allow mouse-hold pause.
    return pvxPlayInternal(diskPath, &outLastFrame, false, false, true, {});
}

void pvxPlay(const std::string& diskPath)
{
    // Legacy behavior: Space skips intro playback.
    (void)pvxPlayInternal(diskPath, nullptr, true, true, false, {});
}

void pvxPlay(const std::string& diskPath,
             const std::function<void()>& onFirstFramePresented)
{
    (void)pvxPlayInternal(
        diskPath, nullptr, true, true, false, onFirstFramePresented);
}

// ============================================================================
// Menu Streaming API
// ============================================================================

bool pvxMenuOpen(const std::string &diskPath)
{
    DBG_LOGF("pvxMenuOpen(\"%s\")", diskPath.c_str());
    return menuStreamOpen(resolvePlayablePvxPath(diskPath));
}

const std::vector<uint8_t>* pvxMenuNextFrame()
{
    return menuStreamNextFrame();
}

const std::vector<uint8_t>* pvxMenuCurrentFrame()
{
    return menuStreamCurrentFrame();
}

void pvxMenuClose()
{
    DBG_LOG("pvxMenuClose()");
    menuStreamClose();
}

int pvxMenuGetFPS() { return menuStreamGetFPS(); }
int pvxMenuGetWidth() { return menuStreamGetWidth(); }
int pvxMenuGetHeight() { return menuStreamGetHeight(); }
size_t pvxMenuGetTotalFrames() { return menuStreamGetTotalFrames(); }
bool pvxMenuIsOpen() { return menuStreamIsOpen(); }

void pvxMenuSeek(size_t frameIndex)
{
    DBG_LOGF("pvxMenuSeek(%zu)", frameIndex);
    menuStreamSeek(frameIndex);
}

const uint8_t* pvxMenuGetPlanarData(size_t* outSize)
{
    // The GPU compute path needs access to the raw planar YCoCg-R data
    // (post-row-filter, pre-color-transform).  Currently the menu frame queue
    // stores fully-decoded RGB frames.  To wire up the GPU path, the queue
    // would need to carry (planarBuf, rgbBuf) pairs so the renderer can
    // choose GPU or CPU at present time.
    //
    // For now, return nullptr — the SIMD CPU path handles the YCoCg→RGB
    // conversion.  The GPU compute shader infrastructure in d2d.cpp is
    // fully functional and can be activated by extending the queue to
    // carry planar data alongside the RGB frames.
    if (outSize) *outSize = 0;
    return nullptr;
}

#pragma clang diagnostic pop
