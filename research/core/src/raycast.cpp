// raycast.cpp

#include <cmath>
#include <algorithm>
#include <thread>
#include <vector>
#include <array>
#include <numbers>
#include <functional>
#include <mutex>
#include <condition_variable>
#include <barrier>
#include <memory>
#include <string>
#include <string_view>
#include <cctype>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <limits>
#include <cstdint>
#include <unordered_map>
#include <immintrin.h>
#include <nlohmann/json.hpp>

#ifdef _WIN32
#include <windows.h>
#endif

#include "raycast.h"
#include "window.h"
#include "game.h"
#include "megatexture.h"
#include "project_overrides.h"
#include "system.h"

// Constants
static constexpr float PI = std::numbers::pi_v<float>;
static constexpr float TWO_PI = 2.0f * PI;
static constexpr float kRaycastCameraZ = 0.55f;

// Local state for raycasting
static std::array<bool, 256> g_keys = {};

// Cached config values - read once per frame, not per pixel
struct RaycastConfig
{
    float visualScale = 3.0f;
    float wallHeightUnits = 1.0f;
    float falloffMul = 0.85f;
    float fovMul = 1.0f;
    int supersample = 1;
    float baseTorchRange = 20.0f;
    float ambientLight = 0.05f;
    float modelLightHeight = 1.35f;
    float cornerAOStrength = 0.22f;
    float cornerAOWidth = 0.35f;
    std::array<uint8_t, 3> ceilingColor = {120, 120, 120};
    std::array<uint8_t, 3> floorColor = {90, 70, 50};
    std::array<uint8_t, 3> wallColor = {120, 120, 120};
    std::array<uint8_t, 3> wallLineColor = {77, 77, 77};
    std::array<uint8_t, 3> skyColor = {94, 178, 229};
    bool flatCeiling = false;
    bool flatFloor = false;
    bool verticalWallStripes = false;
    bool blackBoundaryWalls = false;
    bool modelLight = false;
};
static RaycastConfig g_rayConfig;

struct RaycastVec3
{
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
};

struct RaycastModelMesh
{
    std::vector<RaycastVec3> vertices;
    std::vector<RaycastVec3> normals;
    std::vector<uint32_t> indices;
    RaycastVec3 minBounds;
    RaycastVec3 maxBounds;
    RaycastVec3 center;
    bool valid = false;
};

struct RaycastLoadedModel
{
    const RaycastModelMesh *mesh = nullptr;
    RaycastModelInstance instance;
    float scale = 1.0f;
    float groundOffsetZ = 0.0f;
};

static std::unordered_map<std::string, RaycastModelMesh> g_modelCache;
static std::vector<RaycastLoadedModel> g_loadedModels;
static uint64_t g_modelGeometryVersion = 0;
static uint64_t g_modelInstanceSignature = 0;

struct RaycastSceneLight
{
    bool active = false;
    RaycastVec3 position;
    float range = 20.0f;
    float ambient = 0.05f;
};

static RaycastSceneLight getRaycastSceneLight()
{
    RaycastSceneLight light;
    light.range = std::max(1.0f, g_rayConfig.baseTorchRange * g_rayConfig.visualScale);
    light.ambient = std::clamp(g_rayConfig.ambientLight, 0.0f, 1.0f);
    if (!g_rayConfig.modelLight || state.raycast.models.empty())
        return light;

    const RaycastModelInstance &instance = state.raycast.models.front();
    light.active = true;
    light.position.x = instance.x;
    light.position.y = instance.y;
    light.position.z = instance.z + std::max(0.1f, g_rayConfig.modelLightHeight);
    return light;
}

static float computeRaycastSceneLightFactor(const RaycastSceneLight &light, const RaycastVec3 &point)
{
    if (!light.active)
        return 1.0f;

    const float dx = point.x - light.position.x;
    const float dy = point.y - light.position.y;
    const float dz = point.z - light.position.z;
    const float distance = std::sqrt(dx * dx + dy * dy + dz * dz);
    const float normalized = std::clamp(1.0f - distance / std::max(light.range, 0.001f), 0.0f, 1.0f);
    const float boosted = normalized * normalized;
    return std::clamp(light.ambient + (1.0f - light.ambient) * boosted, light.ambient, 1.0f);
}

static bool projectScreenPixelToPlane(const RaycastPlayer &player,
                                      int screenWidth,
                                      int screenHeight,
                                      int x,
                                      float yf,
                                      float halfH,
                                      float halfFovTan,
                                      float planeZ,
                                      RaycastVec3 &out)
{
    const float deltaY = halfH - yf;
    if (std::abs(deltaY) < 0.001f || screenWidth <= 0 || screenHeight <= 0)
        return false;

    const float relY = ((planeZ - kRaycastCameraZ) * static_cast<float>(screenHeight) * g_rayConfig.visualScale) /
                       (deltaY * std::max(halfFovTan, 0.001f));
    if (!std::isfinite(relY) || relY <= 0.0f)
        return false;

    const float camX = 2.0f * ((static_cast<float>(x) + 0.5f) / static_cast<float>(screenWidth)) - 1.0f;
    const float relX = camX * halfFovTan * relY;
    const float sinA = std::sin(player.angle);
    const float cosA = std::cos(player.angle);

    out.x = player.x + relX * sinA + relY * cosA;
    out.y = player.y - relX * cosA + relY * sinA;
    out.z = planeZ;
    return std::isfinite(out.x) && std::isfinite(out.y);
}

static std::string normalizeEmbeddedModelPathKey(std::string value)
{
    std::replace(value.begin(), value.end(), '\\', '/');
#ifdef _WIN32
    std::transform(value.begin(), value.end(), value.begin(), [](unsigned char ch) {
        return static_cast<char>(std::tolower(ch));
    });
#endif
    return value;
}

static std::string_view lookupEmbeddedRaycastModelResource(const std::string &path)
{
#ifdef _WIN32
    const std::string normalizedPath = normalizeEmbeddedModelPathKey(path);
    for (const auto &entry : phantom::project_overrides::kEmbeddedRaycastModelResources)
    {
        if (normalizeEmbeddedModelPathKey(std::string(entry.logicalPath)) == normalizedPath)
            return entry.resourceName;
    }
#else
    (void)path;
#endif
    return {};
}

static std::string_view lookupEmbeddedRaycastTextureResource(const std::string &path)
{
#ifdef _WIN32
    const std::string normalizedPath = normalizeEmbeddedModelPathKey(path);
    for (const auto &entry : phantom::project_overrides::kEmbeddedRaycastTextureResources)
    {
        if (normalizeEmbeddedModelPathKey(std::string(entry.logicalPath)) == normalizedPath)
            return entry.resourceName;
    }
#else
    (void)path;
#endif
    return {};
}

static const nlohmann::json* getRaycastEnvironmentConfig()
{
    if (!config.contains("gameState") || !config["gameState"].is_object())
        return nullptr;
    const auto& gameState = config["gameState"];
    if (!gameState.contains("raycast") || !gameState["raycast"].is_object())
        return nullptr;
    const auto& raycast = gameState["raycast"];
    if (!raycast.contains("environment") || !raycast["environment"].is_object())
        return nullptr;
    return &raycast["environment"];
}

static bool loadConfiguredBackWallTexture()
{
#ifdef _WIN32
    const nlohmann::json* environment = getRaycastEnvironmentConfig();
    if (!environment || !environment->contains("backWallTexture") ||
        !(*environment)["backWallTexture"].is_string())
        return false;

    const std::string logicalPath = (*environment)["backWallTexture"].get<std::string>();
    const std::string_view resourceName = lookupEmbeddedRaycastTextureResource(logicalPath);
    if (resourceName.empty())
        return false;

    int width = 0;
    int height = 0;
    int channels = 0;
    const std::string resourceNameString(resourceName);
    unsigned char* rgba = LoadImageFromNamedResource(resourceNameString.c_str(), &width, &height, &channels);
    if (!rgba)
        return false;

    int pixelWidth = 384;
    if (environment->contains("backWallTexturePixelWidth") &&
        (*environment)["backWallTexturePixelWidth"].is_number_integer())
        pixelWidth = std::clamp((*environment)["backWallTexturePixelWidth"].get<int>(), 32, 4096);
    const bool nearestNeighbor =
        !environment->contains("backWallTextureFilter") ||
        !(*environment)["backWallTextureFilter"].is_string() ||
        (*environment)["backWallTextureFilter"].get<std::string>() != "linear";

    const bool loaded = loadRaycastWallTexture(
        map, rgba, width, height, pixelWidth, 0xFDu, 2, nearestNeighbor);
    FreeImage(rgba);
    if (loaded)
        state.raycast.useMegatexture = true;
    return loaded;
#else
    return false;
#endif
}

#ifdef _WIN32
static bool loadEmbeddedBinaryResource(std::string_view resourceName, std::vector<uint8_t> &bytes)
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

    const void *data = LockResource(loaded);
    const DWORD size = SizeofResource(module, resource);
    if (!data || size == 0)
        return false;

    const auto *start = static_cast<const uint8_t *>(data);
    bytes.assign(start, start + size);
    return true;
}
#endif

static RaycastVec3 operator-(const RaycastVec3 &a, const RaycastVec3 &b)
{
    return {a.x - b.x, a.y - b.y, a.z - b.z};
}

static RaycastVec3 crossVec3(const RaycastVec3 &a, const RaycastVec3 &b)
{
    return {
        a.y * b.z - a.z * b.y,
        a.z * b.x - a.x * b.z,
        a.x * b.y - a.y * b.x
    };
}

static float dotVec3(const RaycastVec3 &a, const RaycastVec3 &b)
{
    return a.x * b.x + a.y * b.y + a.z * b.z;
}

static RaycastVec3 normalizeVec3(RaycastVec3 v)
{
    const float lenSq = dotVec3(v, v);
    if (lenSq <= 1e-8f)
        return {0.0f, 0.0f, 1.0f};
    const float invLen = 1.0f / std::sqrt(lenSq);
    return {v.x * invLen, v.y * invLen, v.z * invLen};
}

static std::filesystem::path getRuntimeBaseDirectory()
{
#ifdef _WIN32
    char modulePath[MAX_PATH] = {};
    DWORD len = GetModuleFileNameA(nullptr, modulePath, MAX_PATH);
    if (len > 0 && len < MAX_PATH)
        return std::filesystem::path(std::string(modulePath, len)).parent_path();
#endif

    std::error_code ec;
    std::filesystem::path cwd = std::filesystem::current_path(ec);
    return ec ? std::filesystem::path(".") : cwd;
}

static std::filesystem::path findExistingRelativePathFromAncestors(const std::filesystem::path &base,
                                                                   const std::filesystem::path &requested)
{
    std::error_code ec;
    for (std::filesystem::path current = base; !current.empty(); )
    {
        const std::filesystem::path candidate = (current / requested).lexically_normal();
        if (std::filesystem::exists(candidate, ec))
            return candidate;

        ec.clear();
        const std::filesystem::path parent = current.parent_path();
        if (parent.empty() || parent == current)
            break;
        current = parent;
    }

    return {};
}

static std::filesystem::path resolveModelPath(const std::string &path)
{
    std::filesystem::path requested(path);
    if (requested.is_absolute())
        return requested;

    const std::filesystem::path runtimeBase = getRuntimeBaseDirectory();
    if (const std::filesystem::path runtimeCandidate =
            findExistingRelativePathFromAncestors(runtimeBase, requested);
        !runtimeCandidate.empty())
    {
        return runtimeCandidate;
    }

    std::error_code ec;
    const std::filesystem::path cwd = std::filesystem::current_path(ec);
    if (!ec)
    {
        if (const std::filesystem::path cwdCandidate =
                findExistingRelativePathFromAncestors(cwd, requested);
            !cwdCandidate.empty())
        {
            return cwdCandidate;
        }
    }

    return (runtimeBase / requested).lexically_normal();
}

static bool jsonArrayContainsString(const nlohmann::json &arr, const char *needle)
{
    if (!arr.is_array())
        return false;
    for (const auto &value : arr)
    {
        if (value.is_string() && value.get<std::string>() == needle)
            return true;
    }
    return false;
}

static bool parseGlbBytes(const uint8_t *data, size_t size, nlohmann::json &doc, std::vector<uint8_t> &bin)
{
    if (!data || size < 20u)
        return false;

    auto readU32 = [&](size_t offset) -> uint32_t {
        uint32_t value = 0;
        std::memcpy(&value, data + offset, sizeof(value));
        return value;
    };

    const uint32_t magic = readU32(0);
    const uint32_t version = readU32(4);
    const uint32_t length = readU32(8);
    if (magic != 0x46546C67u || version != 2u || length < 20u || length > size)
        return false;

    bool sawJson = false;
    bool sawBin = false;
    size_t offset = 12u;
    while (offset + 8u <= length)
    {
        const uint32_t chunkLength = readU32(offset);
        const uint32_t chunkType = readU32(offset + 4u);
        offset += 8u;
        if (chunkLength > length - offset)
            return false;

        const uint8_t *chunkBegin = data + offset;
        const uint8_t *chunkEnd = chunkBegin + chunkLength;
        offset += chunkLength;

        if (chunkType == 0x4E4F534Au)
        {
            doc = nlohmann::json::parse(chunkBegin, chunkEnd, nullptr, false);
            sawJson = doc.is_object();
        }
        else if (chunkType == 0x004E4942u)
        {
            bin.assign(chunkBegin, chunkEnd);
            sawBin = true;
        }
    }

    return sawJson && sawBin;
}

static bool readGlb(const std::filesystem::path &path,
                    nlohmann::json &doc,
                    std::vector<uint8_t> &bin,
                    std::string_view embeddedResourceName = {})
{
#ifdef _WIN32
    if (!embeddedResourceName.empty())
    {
        std::vector<uint8_t> embeddedBytes;
        if (loadEmbeddedBinaryResource(embeddedResourceName, embeddedBytes))
            return parseGlbBytes(embeddedBytes.data(), embeddedBytes.size(), doc, bin);
    }
#else
    (void)embeddedResourceName;
#endif

    std::ifstream in(path, std::ios::binary | std::ios::ate);
    if (!in)
        return false;

    const std::streamsize fileSize = in.tellg();
    if (fileSize < 0)
        return false;

    std::vector<uint8_t> bytes(static_cast<size_t>(fileSize));
    in.seekg(0, std::ios::beg);
    if (!bytes.empty())
        in.read(reinterpret_cast<char *>(bytes.data()), fileSize);
    if (!in && !bytes.empty())
        return false;

    return parseGlbBytes(bytes.data(), bytes.size(), doc, bin);
}

static const nlohmann::json *jsonArrayItem(const nlohmann::json &doc, const char *key, int index)
{
    if (index < 0 || !doc.contains(key) || !doc[key].is_array())
        return nullptr;
    const auto &arr = doc[key];
    if (static_cast<size_t>(index) >= arr.size())
        return nullptr;
    return &arr[static_cast<size_t>(index)];
}

static bool loadAccessorPositions(const nlohmann::json &doc,
                                  const std::vector<uint8_t> &bin,
                                  int accessorIndex,
                                  std::vector<RaycastVec3> &vertices)
{
    const nlohmann::json *accessor = jsonArrayItem(doc, "accessors", accessorIndex);
    if (!accessor || !accessor->is_object())
        return false;
    if (accessor->value("componentType", 0) != 5126 || accessor->value("type", std::string()) != "VEC3")
        return false;

    const nlohmann::json *view = jsonArrayItem(doc, "bufferViews", accessor->value("bufferView", -1));
    if (!view || !view->is_object())
        return false;

    const size_t count = accessor->value("count", 0);
    const size_t accessorOffset = accessor->value("byteOffset", 0);
    const size_t viewOffset = view->value("byteOffset", 0);
    const size_t stride = view->value("byteStride", 12);
    const size_t baseOffset = viewOffset + accessorOffset;
    if (count == 0 || stride < 12 || baseOffset + (count - 1) * stride + 12 > bin.size())
        return false;

    vertices.resize(count);
    for (size_t i = 0; i < count; ++i)
    {
        const size_t offset = baseOffset + i * stride;
        float values[3] = {};
        std::memcpy(values, bin.data() + offset, sizeof(values));
        vertices[i] = {values[0], values[1], values[2]};
    }
    return true;
}

static bool loadAccessorIndices(const nlohmann::json &doc,
                                const std::vector<uint8_t> &bin,
                                int accessorIndex,
                                std::vector<uint32_t> &indices)
{
    const nlohmann::json *accessor = jsonArrayItem(doc, "accessors", accessorIndex);
    if (!accessor || !accessor->is_object())
        return false;

    const nlohmann::json *view = jsonArrayItem(doc, "bufferViews", accessor->value("bufferView", -1));
    if (!view || !view->is_object())
        return false;

    const int componentType = accessor->value("componentType", 0);
    size_t componentSize = 0;
    if (componentType == 5121)
        componentSize = 1;
    else if (componentType == 5123)
        componentSize = 2;
    else if (componentType == 5125)
        componentSize = 4;
    else
        return false;

    const size_t count = accessor->value("count", 0);
    const size_t accessorOffset = accessor->value("byteOffset", 0);
    const size_t viewOffset = view->value("byteOffset", 0);
    const size_t stride = view->value("byteStride", componentSize);
    const size_t baseOffset = viewOffset + accessorOffset;
    if (count == 0 || stride < componentSize || baseOffset + (count - 1) * stride + componentSize > bin.size())
        return false;

    indices.resize(count);
    for (size_t i = 0; i < count; ++i)
    {
        const size_t offset = baseOffset + i * stride;
        if (componentType == 5121)
        {
            indices[i] = bin[offset];
        }
        else if (componentType == 5123)
        {
            uint16_t value = 0;
            std::memcpy(&value, bin.data() + offset, sizeof(value));
            indices[i] = value;
        }
        else
        {
            uint32_t value = 0;
            std::memcpy(&value, bin.data() + offset, sizeof(value));
            indices[i] = value;
        }
    }
    return true;
}

static void computeModelBounds(RaycastModelMesh &mesh)
{
    if (mesh.vertices.empty())
        return;

    mesh.minBounds = mesh.maxBounds = mesh.vertices[0];
    for (const RaycastVec3 &v : mesh.vertices)
    {
        mesh.minBounds.x = std::min(mesh.minBounds.x, v.x);
        mesh.minBounds.y = std::min(mesh.minBounds.y, v.y);
        mesh.minBounds.z = std::min(mesh.minBounds.z, v.z);
        mesh.maxBounds.x = std::max(mesh.maxBounds.x, v.x);
        mesh.maxBounds.y = std::max(mesh.maxBounds.y, v.y);
        mesh.maxBounds.z = std::max(mesh.maxBounds.z, v.z);
    }
    mesh.center = {
        (mesh.minBounds.x + mesh.maxBounds.x) * 0.5f,
        (mesh.minBounds.y + mesh.maxBounds.y) * 0.5f,
        (mesh.minBounds.z + mesh.maxBounds.z) * 0.5f
    };
}

static void autoUprightModel(RaycastModelMesh &mesh)
{
    if (mesh.vertices.size() < 3u)
        return;

    computeModelBounds(mesh);
    const float extentX = mesh.maxBounds.x - mesh.minBounds.x;
    const float extentY = mesh.maxBounds.y - mesh.minBounds.y;
    const float extentZ = mesh.maxBounds.z - mesh.minBounds.z;
    if (extentZ < std::max(extentX, extentY) * 1.5f)
        return;

    RaycastVec3 centroid{};
    for (const RaycastVec3 &v : mesh.vertices)
    {
        centroid.x += v.x;
        centroid.y += v.y;
        centroid.z += v.z;
    }
    const float invCount = 1.0f / static_cast<float>(mesh.vertices.size());
    centroid.x *= invCount;
    centroid.y *= invCount;
    centroid.z *= invCount;

    auto regressionSlopeToZ = [&](int axis) {
        double covariance = 0.0;
        double varianceZ = 0.0;
        for (const RaycastVec3 &v : mesh.vertices)
        {
            const double dz = static_cast<double>(v.z - centroid.z);
            const double lateral = axis == 0
                ? static_cast<double>(v.x - centroid.x)
                : static_cast<double>(v.y - centroid.y);
            covariance += lateral * dz;
            varianceZ += dz * dz;
        }
        return varianceZ > 1e-9 ? static_cast<float>(covariance / varianceZ) : 0.0f;
    };

    const float pitch = std::atan(regressionSlopeToZ(1));
    const float cp = std::cos(pitch);
    const float sp = std::sin(pitch);
    for (RaycastVec3 &v : mesh.vertices)
    {
        const float y = v.y - centroid.y;
        const float z = v.z - centroid.z;
        v.y = centroid.y + y * cp - z * sp;
        v.z = centroid.z + y * sp + z * cp;
    }

    computeModelBounds(mesh);
    centroid = {};
    for (const RaycastVec3 &v : mesh.vertices)
    {
        centroid.x += v.x;
        centroid.y += v.y;
        centroid.z += v.z;
    }
    centroid.x *= invCount;
    centroid.y *= invCount;
    centroid.z *= invCount;

    const float roll = -std::atan(regressionSlopeToZ(0));
    const float cr = std::cos(roll);
    const float sr = std::sin(roll);
    for (RaycastVec3 &v : mesh.vertices)
    {
        const float x = v.x - centroid.x;
        const float z = v.z - centroid.z;
        v.x = centroid.x + x * cr + z * sr;
        v.z = centroid.z - x * sr + z * cr;
    }

    computeModelBounds(mesh);
}

static void computeModelNormals(RaycastModelMesh &mesh)
{
    mesh.normals.assign(mesh.vertices.size(), {0.0f, 0.0f, 0.0f});
    for (size_t i = 0; i + 2 < mesh.indices.size(); i += 3)
    {
        const uint32_t i0 = mesh.indices[i + 0];
        const uint32_t i1 = mesh.indices[i + 1];
        const uint32_t i2 = mesh.indices[i + 2];
        if (i0 >= mesh.vertices.size() || i1 >= mesh.vertices.size() || i2 >= mesh.vertices.size())
            continue;

        const RaycastVec3 n = crossVec3(mesh.vertices[i1] - mesh.vertices[i0], mesh.vertices[i2] - mesh.vertices[i0]);
        mesh.normals[i0] = {mesh.normals[i0].x + n.x, mesh.normals[i0].y + n.y, mesh.normals[i0].z + n.z};
        mesh.normals[i1] = {mesh.normals[i1].x + n.x, mesh.normals[i1].y + n.y, mesh.normals[i1].z + n.z};
        mesh.normals[i2] = {mesh.normals[i2].x + n.x, mesh.normals[i2].y + n.y, mesh.normals[i2].z + n.z};
    }

    for (RaycastVec3 &n : mesh.normals)
        n = normalizeVec3(n);
}

struct RaycastModelLocalBounds
{
    float minZ = 0.0f;
    float maxZ = 0.0f;
    float supportZ = 0.0f;
};

static RaycastModelLocalBounds computeModelLocalBounds(const RaycastModelMesh &mesh,
                                                       float pitch,
                                                       float roll,
                                                       float scale)
{
    RaycastModelLocalBounds bounds{};
    if (mesh.vertices.empty())
        return bounds;

    bounds.minZ = std::numeric_limits<float>::infinity();
    bounds.maxZ = -std::numeric_limits<float>::infinity();
    std::vector<float> localZValues;
    localZValues.reserve(mesh.vertices.size());

    const float cp = std::cos(pitch);
    const float sp = std::sin(pitch);
    const float cr = std::cos(roll);
    const float sr = std::sin(roll);

    for (const RaycastVec3 &src : mesh.vertices)
    {
        const float lx = (src.x - mesh.center.x) * scale;
        const float ly = (src.y - mesh.center.y) * scale;
        const float lz = (src.z - mesh.minBounds.z) * scale;
        const float pz = ly * sp + lz * cp;
        const float rz = -lx * sr + pz * cr;
        bounds.minZ = std::min(bounds.minZ, rz);
        bounds.maxZ = std::max(bounds.maxZ, rz);
        localZValues.push_back(rz);
    }

    if (!std::isfinite(bounds.minZ) || !std::isfinite(bounds.maxZ))
        return {};

    bounds.supportZ = bounds.minZ;
    if (localZValues.size() >= 32u)
    {
        const size_t supportIndex = std::min(localZValues.size() - 1u,
                                             std::max<size_t>(1u, localZValues.size() / 200u));
        auto supportIt = localZValues.begin() + static_cast<std::ptrdiff_t>(supportIndex);
        std::nth_element(localZValues.begin(), supportIt, localZValues.end());
        const float maxLift = (bounds.maxZ - bounds.minZ) * 0.02f;
        bounds.supportZ = std::clamp(*supportIt, bounds.minZ, bounds.minZ + maxLift);
    }
    return bounds;
}

static RaycastModelMesh loadGlbModelMesh(const std::filesystem::path &path,
                                         std::string_view embeddedResourceName = {},
                                         bool autoUpright = false)
{
    RaycastModelMesh mesh;
    nlohmann::json doc;
    std::vector<uint8_t> bin;
    if (!readGlb(path, doc, bin, embeddedResourceName))
        return mesh;

    if (jsonArrayContainsString(doc.value("extensionsRequired", nlohmann::json::array()), "EXT_meshopt_compression") ||
        jsonArrayContainsString(doc.value("extensionsRequired", nlohmann::json::array()), "KHR_draco_mesh_compression"))
    {
        return mesh;
    }

    if (!doc.contains("meshes") || !doc["meshes"].is_array())
        return mesh;

    for (const auto &meshJson : doc["meshes"])
    {
        if (!meshJson.is_object() || !meshJson.contains("primitives") || !meshJson["primitives"].is_array())
            continue;

        for (const auto &primitive : meshJson["primitives"])
        {
            if (!primitive.is_object() || primitive.value("mode", 4) != 4)
                continue;
            if (!primitive.contains("attributes") || !primitive["attributes"].is_object())
                continue;
            const auto &attributes = primitive["attributes"];
            if (!attributes.contains("POSITION") || !attributes["POSITION"].is_number_integer())
                continue;

            std::vector<RaycastVec3> vertices;
            std::vector<uint32_t> indices;
            if (!loadAccessorPositions(doc, bin, attributes["POSITION"].get<int>(), vertices))
                continue;

            if (primitive.contains("indices") && primitive["indices"].is_number_integer())
            {
                if (!loadAccessorIndices(doc, bin, primitive["indices"].get<int>(), indices))
                    continue;
            }
            else
            {
                indices.resize(vertices.size());
                for (size_t i = 0; i < indices.size(); ++i)
                    indices[i] = static_cast<uint32_t>(i);
            }

            if (vertices.empty() || indices.size() < 3)
                continue;

            mesh.vertices = std::move(vertices);
            mesh.indices = std::move(indices);
            if (autoUpright)
                autoUprightModel(mesh);
            computeModelBounds(mesh);
            computeModelNormals(mesh);
            mesh.valid = true;
            return mesh;
        }
    }

    return mesh;
}

static void loadRaycastModelInstances()
{
    uint64_t signature = 1469598103934665603ull;
    auto hashBytes = [&](const void* data, size_t size) {
        const uint8_t* bytes = static_cast<const uint8_t*>(data);
        for (size_t i = 0; i < size; ++i)
        {
            signature ^= bytes[i];
            signature *= 1099511628211ull;
        }
    };
    for (const RaycastModelInstance& instance : state.raycast.models)
    {
        hashBytes(instance.path.data(), instance.path.size());
        const std::array<float, 8> values = {
            instance.x, instance.y, instance.z, instance.yaw,
            instance.pitch, instance.roll, instance.scale, instance.height
        };
        hashBytes(values.data(), sizeof(values));
        const std::array<uint8_t, 4> flagsAndColor = {
            static_cast<uint8_t>(instance.autoUpright), instance.r, instance.g, instance.b
        };
        hashBytes(flagsAndColor.data(), sizeof(flagsAndColor));
    }
    if (g_modelGeometryVersion != 0 && signature == g_modelInstanceSignature)
        return;
    g_modelInstanceSignature = signature;

    g_loadedModels.clear();

    for (const RaycastModelInstance &instance : state.raycast.models)
    {
        const std::string_view embeddedResourceName = lookupEmbeddedRaycastModelResource(instance.path);
        const std::filesystem::path resolved = resolveModelPath(instance.path);
        const std::string cacheKey = embeddedResourceName.empty()
                                         ? resolved.lexically_normal().string()
                                         : ("embedded:" + std::string(embeddedResourceName));
        const std::string orientedCacheKey =
            cacheKey + (instance.autoUpright ? ":upright" : ":source");
        auto it = g_modelCache.find(orientedCacheKey);
        if (it == g_modelCache.end())
            it = g_modelCache.emplace(
                orientedCacheKey,
                loadGlbModelMesh(resolved, embeddedResourceName, instance.autoUpright)).first;
        if (!it->second.valid)
            continue;

        const RaycastModelMesh &mesh = it->second;
        const RaycastModelLocalBounds unscaledBounds = computeModelLocalBounds(mesh, instance.pitch, instance.roll, 1.0f);
        const float meshHeight = std::max(0.0001f, unscaledBounds.maxZ - unscaledBounds.supportZ);
        float scale = instance.scale > 0.0f ? instance.scale : (std::max(0.1f, instance.height) / meshHeight);
        const RaycastModelLocalBounds scaledBounds = computeModelLocalBounds(mesh, instance.pitch, instance.roll, scale);

        g_loadedModels.push_back({&mesh, instance, scale, scaledBounds.supportZ});
    }
    ++g_modelGeometryVersion;
}

void refreshRaycastModelInstances()
{
    loadRaycastModelInstances();
}

bool raycastHasActiveModels()
{
    return !g_loadedModels.empty();
}

uint64_t getRaycastModelGeometryVersion()
{
    return g_modelGeometryVersion;
}

static inline bool isPlayerStartTile(uint8_t tile)
{
    return tile >= 0xF0 && tile <= 0xF3;
}

static constexpr uint8_t kSolidBlackWallTile = 0xFE;

static inline bool isSolidBlackWallTile(uint8_t tile)
{
    return tile == kSolidBlackWallTile;
}

static inline bool isArchitectureFeatureTile(uint8_t tile)
{
    return tile >= 0xE0 && tile <= 0xEF;
}

static inline bool isDoorFeatureTile(uint8_t tile)
{
    return isArchitectureFeatureTile(tile) && ((tile & 0x0Fu) == 0x4u);
}

struct RaycastWindowSpec
{
    bool isWindow = false;
    float openTop = 0.32f;
    float openBottom = 0.68f;
};

static RaycastWindowSpec getWindowSpec(uint8_t tile)
{
    if (!isArchitectureFeatureTile(tile))
        return {};

    switch (tile & 0x0Fu)
    {
    case 0x0: return {true, 0.32f, 0.68f}; // Standard cabin window
    case 0x1: return {true, 0.24f, 0.76f}; // Tall window
    case 0x2: return {true, 0.40f, 0.62f}; // Short, high window
    case 0x3: return {true, 0.52f, 0.78f}; // Low window
    case 0x4: return {};                    // Door
    default:
    {
        const float center = 0.34f + 0.08f * static_cast<float>((tile & 0x0Fu) % 4u);
        const float height = 0.24f + 0.06f * static_cast<float>(((tile & 0x0Fu) >> 2u) % 3u);
        return {true,
                std::clamp(center - height * 0.5f, 0.08f, 0.86f),
                std::clamp(center + height * 0.5f, 0.14f, 0.92f)};
    }
    }
}

static inline bool isSolidTile(uint8_t tile)
{
    return tile >= 0x01 && !isPlayerStartTile(tile);
}

static bool isSolidBlackWall(const TileMap& tileMap, int x, int y, uint8_t tile)
{
    if (isSolidBlackWallTile(tile))
        return true;
    if (!g_rayConfig.blackBoundaryWalls || !isSolidTile(tile) || tileMap.empty() || tileMap[0].empty())
        return false;

    const int lastY = static_cast<int>(tileMap.size()) - 1;
    const int lastX = static_cast<int>(tileMap[0].size()) - 1;
    return x == 0 || y == 0 || x == lastX || y == lastY;
}

bool raycastMapHasArchitecturalFeatures(const TileMap &tileMap)
{
    if (state.raycast.map == &tileMap && state.raycast.mapPropertiesValid)
        return state.raycast.mapHasArchitecturalFeatures;

    bool hasArchitecturalFeatures = false;
    bool hasSolidBlackWalls = false;
    for (const auto &row : tileMap)
    {
        for (uint8_t tile : row)
        {
            if (isArchitectureFeatureTile(tile))
                hasArchitecturalFeatures = true;
            if (isSolidBlackWallTile(tile))
                hasSolidBlackWalls = true;
        }
    }
    if (state.raycast.map == &tileMap)
    {
        state.raycast.mapHasArchitecturalFeatures = hasArchitecturalFeatures;
        state.raycast.mapHasSolidBlackWalls = hasSolidBlackWalls;
        state.raycast.mapPropertiesValid = true;
    }
    return hasArchitecturalFeatures;
}

bool raycastMapHasSolidBlackWalls(const TileMap &tileMap)
{
    if (state.raycast.map == &tileMap && state.raycast.mapPropertiesValid)
        return state.raycast.mapHasSolidBlackWalls;

    // Populate both properties in one scan.
    (void)raycastMapHasArchitecturalFeatures(tileMap);
    if (state.raycast.map == &tileMap && state.raycast.mapPropertiesValid)
        return state.raycast.mapHasSolidBlackWalls;

    for (const auto &row : tileMap)
    {
        for (uint8_t tile : row)
        {
            if (isSolidBlackWallTile(tile))
                return true;
        }
    }
    return false;
}

static int getRaycastSupersampleSetting()
{
    if (config.contains("raycastSupersample"))
        return std::clamp(config["raycastSupersample"].get<int>(), 1, 16);
    if (config.contains("raycastMultisample"))
        return std::clamp(config["raycastMultisample"].get<int>(), 1, 16);
    return 1;
}

static int resolveCpuRaycastSupersample(const TileMap& tileMap, int screenWidth, int screenHeight)
{
    int supersample = std::max(1, g_rayConfig.supersample);
    const uint64_t pixels = static_cast<uint64_t>(std::max(0, screenWidth)) *
                            static_cast<uint64_t>(std::max(0, screenHeight));

    if (raycastHasActiveModels() || raycastMapHasArchitecturalFeatures(tileMap))
        return std::min(supersample, 1);
    if (pixels >= kPixelCount1080p)
        return std::min(supersample, 1);
    if (pixels >= kPixelCount720p)
        return std::min(supersample, 2);
    return supersample;
}

static inline float smoothstep01(float t)
{
    t = std::clamp(t, 0.0f, 1.0f);
    return t * t * (3.0f - 2.0f * t);
}

static bool isSolidTileInBounds(const TileMap& tileMap, int x, int y)
{
    if (x < 0 || y < 0 || y >= static_cast<int>(tileMap.size()) ||
        x >= static_cast<int>(tileMap[0].size()))
        return false;
    return isSolidTile(tileMap[y][x]);
}

struct FaceEdgeOffsets
{
    int dx0;
    int dy0;
    int dx1;
    int dy1;
    int px;
    int py;
};

static bool getFaceEdgeOffsets(int cardinalSide, FaceEdgeOffsets& offsets)
{
    switch (cardinalSide)
    {
    case 0: offsets = {-1, 0, 1, 0, 0, -1}; return true; // North face: runs along X, player at y-1
    case 1: offsets = {0, -1, 0, 1, 1, 0}; return true;  // East face: runs along Y, player at x+1
    case 2: offsets = {-1, 0, 1, 0, 0, 1}; return true;  // South face: runs along X, player at y+1
    case 3: offsets = {0, -1, 0, 1, -1, 0}; return true; // West face: runs along Y, player at x-1
    default: return false;
    }
}


// Detect whether the current wallX position lies on a visible face seam.
// A seam exists when the wall face does not continue into the adjacent cell
// along the same plane, so this catches both concave and convex turns while
// skipping straight runs of coplanar wall cells.
static bool isVisibleCornerEdge(int mx, int my, int cardinalSide, float wallX, float threshold)
{
    const TileMap* tileMap = state.raycast.map;
    if (!tileMap)
        return false;

    auto isWall = [&](int x, int y) -> bool {
        if (x < 0 || y < 0 || x >= static_cast<int>((*tileMap)[0].size()) ||
            y >= static_cast<int>(tileMap->size()))
            return true; // Out of bounds = solid
        uint8_t tile = (*tileMap)[y][x];
        return isSolidTile(tile);
    };

    FaceEdgeOffsets offsets{};
    if (!getFaceEdgeOffsets(cardinalSide, offsets))
        return false;

    auto checkSeamEdge = [&](int nx, int ny) -> bool {
        const bool neighborHasFace = isWall(nx, ny) && !isWall(nx + offsets.px, ny + offsets.py);
        return !neighborHasFace;
    };

    if (wallX < threshold)
        return checkSeamEdge(mx + offsets.dx0, my + offsets.dy0);
    if (wallX > 1.0f - threshold)
        return checkSeamEdge(mx + offsets.dx1, my + offsets.dy1);
    return false;
}

// Soft corner AO is only for concave inside corners. Straight wall tile
// boundaries must stay clean, even when there is another wall tile adjacent
// along the same plane.
static float computeInsideCornerAO(int mx, int my, int cardinalSide, float wallX, float width)
{
    const TileMap* tileMap = state.raycast.map;
    if (!tileMap || g_rayConfig.cornerAOStrength <= 0.0f || g_rayConfig.cornerAOWidth <= 0.0f)
        return 1.0f;

    FaceEdgeOffsets offsets{};
    if (!getFaceEdgeOffsets(cardinalSide, offsets))
        return 1.0f;

    if (isSolidTileInBounds(*tileMap, mx + offsets.px, my + offsets.py))
        return 1.0f;

    auto isInsideCornerEdge = [&](int nx, int ny, bool lowEdge) -> bool {
        // The perpendicular face must point toward the player. Without this
        // ownership test, a topological concavity viewed from its back side
        // produces a detached vertical band in the middle of a flat wall.
        const float tangentPlayer = (cardinalSide == 0 || cardinalSide == 2)
                                        ? state.raycast.player.x
                                        : state.raycast.player.y;
        const float cornerCoord = (cardinalSide == 0 || cardinalSide == 2)
                                      ? static_cast<float>(lowEdge ? mx : mx + 1)
                                      : static_cast<float>(lowEdge ? my : my + 1);
        const bool perpendicularFacesPlayer = lowEdge
                                                  ? tangentPlayer >= cornerCoord
                                                  : tangentPlayer <= cornerCoord;
        return isSolidTileInBounds(*tileMap, nx, ny) &&
               isSolidTileInBounds(*tileMap, nx + offsets.px, ny + offsets.py) &&
               perpendicularFacesPlayer;
    };

    const float u = std::clamp(wallX, 0.0f, 1.0f);
    width = std::clamp(width, 0.001f, g_rayConfig.cornerAOWidth);
    auto edgeFeather = [&](float distanceToEdge) -> float {
        const float t = distanceToEdge / std::max(width, 0.0001f);
        return t < 1.0f ? std::exp2(-4.0f * t * t) : 0.0f;
    };
    const float edge0 = isInsideCornerEdge(mx + offsets.dx0, my + offsets.dy0, true)
                            ? edgeFeather(u)
                            : 0.0f;
    const float edge1 = isInsideCornerEdge(mx + offsets.dx1, my + offsets.dy1, false)
                            ? edgeFeather(1.0f - u)
                            : 0.0f;
    const float ao = std::min(1.0f, std::max(edge0, edge1));
    return std::clamp(1.0f - ao * g_rayConfig.cornerAOStrength, 0.45f, 1.0f);
}

static bool hasAdjacentWindowFeature(int mx, int my, int cardinalSide, bool leadingEdge)
{
    const TileMap* tileMap = state.raycast.map;
    if (!tileMap)
        return false;

    FaceEdgeOffsets offsets{};
    if (!getFaceEdgeOffsets(cardinalSide, offsets))
        return false;

    const int nx = mx + (leadingEdge ? offsets.dx0 : offsets.dx1);
    const int ny = my + (leadingEdge ? offsets.dy0 : offsets.dy1);
    if (nx < 0 || ny < 0 || nx >= static_cast<int>((*tileMap)[0].size()) ||
        ny >= static_cast<int>(tileMap->size()))
    {
        return false;
    }

    return getWindowSpec((*tileMap)[ny][nx]).isWindow;
}

static RaycastHit castRayPastHit(const TileMap& tileMap,
                                 const RaycastPlayer& player,
                                 const RaycastHit& blockingHit,
                                 float rayDirX,
                                 float rayDirY)
{
    constexpr float kWindowThroughEpsilon = 0.02f;
    float startX = player.x + rayDirX * (blockingHit.distance + kWindowThroughEpsilon);
    float startY = player.y + rayDirY * (blockingHit.distance + kWindowThroughEpsilon);
    float throughDistance = blockingHit.distance + kWindowThroughEpsilon;

    switch (blockingHit.side)
    {
    case 0: // North face: continue beyond the south side of the tile.
        if (std::abs(rayDirY) > 0.0001f)
        {
            startY = static_cast<float>(blockingHit.mapY + 1) + kWindowThroughEpsilon;
            throughDistance = (startY - player.y) / rayDirY;
            startX = player.x + rayDirX * throughDistance;
        }
        break;
    case 1: // East face: continue beyond the west side of the tile.
        if (std::abs(rayDirX) > 0.0001f)
        {
            startX = static_cast<float>(blockingHit.mapX) - kWindowThroughEpsilon;
            throughDistance = (startX - player.x) / rayDirX;
            startY = player.y + rayDirY * throughDistance;
        }
        break;
    case 2: // South face: continue beyond the north side of the tile.
        if (std::abs(rayDirY) > 0.0001f)
        {
            startY = static_cast<float>(blockingHit.mapY) - kWindowThroughEpsilon;
            throughDistance = (startY - player.y) / rayDirY;
            startX = player.x + rayDirX * throughDistance;
        }
        break;
    case 3: // West face: continue beyond the east side of the tile.
        if (std::abs(rayDirX) > 0.0001f)
        {
            startX = static_cast<float>(blockingHit.mapX + 1) + kWindowThroughEpsilon;
            throughDistance = (startX - player.x) / rayDirX;
            startY = player.y + rayDirY * throughDistance;
        }
        break;
    default:
        break;
    }

    if (!std::isfinite(throughDistance) || throughDistance <= blockingHit.distance)
        throughDistance = blockingHit.distance + kWindowThroughEpsilon;

    const int mapW = static_cast<int>(tileMap[0].size());
    const int mapH = static_cast<int>(tileMap.size());
    const int startCellX = static_cast<int>(std::floor(startX));
    const int startCellY = static_cast<int>(std::floor(startY));
    if (startCellX < 0 || startCellY < 0 || startCellX >= mapW || startCellY >= mapH)
        return {throughDistance, blockingHit.side, false, startCellX, startCellY, 0.0f, 0x00};

    RaycastHit through = castRay(tileMap, startX, startY, rayDirX, rayDirY);
    through.distance += throughDistance;
    return through;
}

static void shadeOutdoorPixel(float yf,
                              float halfH,
                              uint8_t& rr,
                              uint8_t& gg,
                              uint8_t& bb)
{
    if (yf < halfH)
    {
        const float t = std::clamp(yf / std::max(1.0f, halfH), 0.0f, 1.0f);
        const float shade = 1.08f - 0.26f * t;
        rr = static_cast<uint8_t>(std::clamp(g_rayConfig.skyColor[0] * shade, 0.0f, 255.0f));
        gg = static_cast<uint8_t>(std::clamp(g_rayConfig.skyColor[1] * shade, 0.0f, 255.0f));
        bb = static_cast<uint8_t>(std::clamp(g_rayConfig.skyColor[2] * shade, 0.0f, 255.0f));
    }
    else
    {
        const float t = std::clamp((yf - halfH) / std::max(1.0f, halfH), 0.0f, 1.0f);
        const float shade = 0.42f + 0.52f * t;
        rr = static_cast<uint8_t>(std::clamp(g_rayConfig.floorColor[0] * shade, 0.0f, 255.0f));
        gg = static_cast<uint8_t>(std::clamp(g_rayConfig.floorColor[1] * shade, 0.0f, 255.0f));
        bb = static_cast<uint8_t>(std::clamp(g_rayConfig.floorColor[2] * shade, 0.0f, 255.0f));
    }

    const float band = std::max(8.0f, halfH * 0.10f);
    const float signedDistance = yf - halfH;
    if (std::abs(signedDistance) < band)
    {
        uint8_t skyR = static_cast<uint8_t>(std::clamp(g_rayConfig.skyColor[0] * 0.82f, 0.0f, 255.0f));
        uint8_t skyG = static_cast<uint8_t>(std::clamp(g_rayConfig.skyColor[1] * 0.82f, 0.0f, 255.0f));
        uint8_t skyB = static_cast<uint8_t>(std::clamp(g_rayConfig.skyColor[2] * 0.82f, 0.0f, 255.0f));
        uint8_t groundR = static_cast<uint8_t>(std::clamp(g_rayConfig.floorColor[0] * 0.42f, 0.0f, 255.0f));
        uint8_t groundG = static_cast<uint8_t>(std::clamp(g_rayConfig.floorColor[1] * 0.42f, 0.0f, 255.0f));
        uint8_t groundB = static_cast<uint8_t>(std::clamp(g_rayConfig.floorColor[2] * 0.42f, 0.0f, 255.0f));
        const float mix = smoothstep01((signedDistance + band) / (band * 2.0f));
        rr = static_cast<uint8_t>(skyR * (1.0f - mix) + groundR * mix);
        gg = static_cast<uint8_t>(skyG * (1.0f - mix) + groundG * mix);
        bb = static_cast<uint8_t>(skyB * (1.0f - mix) + groundB * mix);
    }
}

static bool shadePassThroughPixel(const TileMap& tileMap,
                                  const RaycastPlayer& player,
                                  const RaycastHit& blockingHit,
                                  float rayDirX,
                                  float rayDirY,
                                  float yf,
                                  float halfH,
                                  float visualScale,
                                  float torchRange,
                                  float cosCorrection,
                                  float halfFovTan,
                                  uint8_t& rr,
                                  uint8_t& gg,
                                  uint8_t& bb)
{
    const RaycastHit through = castRayPastHit(tileMap, player, blockingHit, rayDirX, rayDirY);
    if (!through.hitWall)
    {
        shadeOutdoorPixel(yf, halfH, rr, gg, bb);
        return true;
    }

    const float perpWallDist = std::max(through.distance * cosCorrection / visualScale, 0.01f);
    const float lineHeight = (halfH * 2.0f * g_rayConfig.wallHeightUnits) / (perpWallDist * halfFovTan);
    const float drawStart = halfH - lineHeight / 2.0f;
    const float drawEnd = halfH + lineHeight / 2.0f;
    if (yf < drawStart || yf > drawEnd)
    {
        shadeOutdoorPixel(yf, halfH, rr, gg, bb);
        return true;
    }
    if (isSolidBlackWall(tileMap, through.mapX, through.mapY, through.tile))
    {
        rr = 0;
        gg = 0;
        bb = 0;
        return true;
    }

    float v = (yf - drawStart) / std::max(1.0f, (drawEnd - drawStart));
    v = std::clamp(v, 0.0f, 1.0f);
    const float lightFactor = std::max(0.05f, 1.0f - through.distance / torchRange);
    rr = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[0] * lightFactor, 0.0f, 255.0f));
    gg = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[1] * lightFactor, 0.0f, 255.0f));
    bb = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[2] * lightFactor, 0.0f, 255.0f));

    if (g_rayConfig.verticalWallStripes)
    {
        const float plank = std::fmod(through.wallX * 4.0f, 1.0f);
        if (plank < 0.055f)
        {
            rr = static_cast<uint8_t>(g_rayConfig.wallLineColor[0] * lightFactor);
            gg = static_cast<uint8_t>(g_rayConfig.wallLineColor[1] * lightFactor);
            bb = static_cast<uint8_t>(g_rayConfig.wallLineColor[2] * lightFactor);
        }
    }

    if (v < 0.075f || v > 0.925f)
    {
        rr = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[0] * lightFactor, 0.0f, 255.0f));
        gg = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[1] * lightFactor, 0.0f, 255.0f));
        bb = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[2] * lightFactor, 0.0f, 255.0f));
    }
    return true;
}

// Persistent thread pool to avoid thread creation overhead per frame.
// Uses a generation counter so workers can't miss a dispatch if another worker
// clears shared task state early.
struct ThreadPool
{
    std::vector<std::jthread> workers;
    // Set once per dispatch() under mtx, read by every worker after it observes
    // the generation bump -- safe without per-task std::function rebuilds because
    // dispatch() never overwrites it until the previous round's barrier releases
    // (see dispatch()/arrive_and_wait below), and the mutex acquire/release around
    // the generation check is what publishes it to the workers.
    std::function<void(int)> currentWork;
    std::mutex mtx;
    std::condition_variable cvWork;
    // Reusable rendezvous for "all workers finished this round": sized
    // threadCount + 1 (workers plus the dispatching thread). Replaces the old
    // completed-counter + cvDone condvar dance with a single arrive_and_wait per
    // side -- automatically rolls over to the next round, so it's reused across
    // every dispatch() call without resetting anything.
    std::unique_ptr<std::barrier<>> doneBarrier;
    unsigned int threadCount = 0;
    bool stopping = false;
    uint64_t generation = 0;

    void ensureThreadCount(unsigned int count)
    {
        count = (std::max)(1u, count);
        if (threadCount == count)
            return;

        shutdown();

        threadCount = count;
        stopping = false;
        doneBarrier = std::make_unique<std::barrier<>>(static_cast<std::ptrdiff_t>(count) + 1);
        generation = 0;
        workers.clear();
        workers.reserve(count);

        for (unsigned int i = 0; i < count; ++i)
        {
            workers.emplace_back([this, i](std::stop_token) {
                uint64_t seenGeneration = 0;
                while (true)
                {
                    {
                        std::unique_lock lk(mtx);
                        cvWork.wait(lk, [this, &seenGeneration] {
                            return stopping || generation != seenGeneration;
                        });
                        if (stopping)
                            return;

                        seenGeneration = generation;
                    }

                    if (currentWork)
                        currentWork(static_cast<int>(i));

                    doneBarrier->arrive_and_wait();
                }
            });
        }
    }

    void dispatch(unsigned int count, std::function<void(int)> work)
    {
        ensureThreadCount(count);
        {
            std::lock_guard lk(mtx);
            currentWork = std::move(work);
            ++generation;
        }

        cvWork.notify_all();
        doneBarrier->arrive_and_wait();
    }

    void shutdown()
    {
        if (threadCount == 0)
            return;

        {
            std::lock_guard lk(mtx);
            stopping = true;
        }
        cvWork.notify_all();
        workers.clear(); // joins all jthreads
        doneBarrier.reset();

        threadCount = 0;
        generation = 0;
        stopping = false;
    }

    ~ThreadPool() { shutdown(); }
};
static ThreadPool g_threadPool;

// Call once per frame before rendering to cache config values
void prepareRaycastFrameConfig()
{
    const nlohmann::json *raycastConfig = nullptr;
    const nlohmann::json *environmentConfig = nullptr;
    if (config.contains("gameState") && config["gameState"].is_object())
    {
        const auto &gameState = config["gameState"];
        if (gameState.contains("raycast") && gameState["raycast"].is_object())
        {
            raycastConfig = &gameState["raycast"];
            if (raycastConfig->contains("environment") && (*raycastConfig)["environment"].is_object())
                environmentConfig = &(*raycastConfig)["environment"];
        }
    }

    auto readFloat = [&](const nlohmann::json *obj, const char *key, float fallback) {
        if (obj && obj->contains(key) && (*obj)[key].is_number())
            return (*obj)[key].get<float>();
        if (config.contains(key) && config[key].is_number())
            return config[key].get<float>();
        return fallback;
    };

    auto readBool = [&](const nlohmann::json *obj, const char *key, bool fallback) {
        if (obj && obj->contains(key) && (*obj)[key].is_boolean())
            return (*obj)[key].get<bool>();
        if (config.contains(key) && config[key].is_boolean())
            return config[key].get<bool>();
        return fallback;
    };

    auto readColor = [](const nlohmann::json *obj,
                        const char *key,
                        std::array<uint8_t, 3> fallback) {
        if (!obj || !obj->contains(key) || !(*obj)[key].is_array())
            return fallback;
        const auto &value = (*obj)[key];
        std::array<uint8_t, 3> out = fallback;
        for (size_t i = 0; i < out.size() && i < value.size(); ++i)
        {
            if (value[i].is_number())
                out[i] = static_cast<uint8_t>(std::clamp(value[i].get<int>(), 0, 255));
        }
        return out;
    };

    g_rayConfig.visualScale = readFloat(raycastConfig, "visualScale", readFloat(environmentConfig, "visualScale", 3.0f));
    g_rayConfig.visualScale = readFloat(environmentConfig, "scale", g_rayConfig.visualScale);
    g_rayConfig.visualScale = config.contains("raycastScale") && config["raycastScale"].is_number()
                                  ? config["raycastScale"].get<float>()
                                  : g_rayConfig.visualScale;
    float wallHeightUnits = readFloat(raycastConfig, "wallHeightUnits", 1.0f);
    wallHeightUnits = readFloat(environmentConfig, "wallHeightUnits", wallHeightUnits);
    g_rayConfig.wallHeightUnits = std::clamp(wallHeightUnits, 0.1f, 16.0f);
    g_rayConfig.falloffMul = config.contains("raycastFalloffMul") && config["raycastFalloffMul"].is_number()
                                 ? config["raycastFalloffMul"].get<float>()
                                 : readFloat(environmentConfig, "falloffMul", 0.85f);
    g_rayConfig.fovMul = config.contains("raycastFovMul") && config["raycastFovMul"].is_number()
                             ? config["raycastFovMul"].get<float>()
                             : readFloat(raycastConfig, "fovMul", 1.0f);
    int supersample = getRaycastSupersampleSetting();
    if (!g_loadedModels.empty())
    {
        const int modelSupersample = config.contains("raycastModelSupersample")
                                         ? std::clamp(config["raycastModelSupersample"].get<int>(), 1, 16)
                                         : 1;
        supersample = std::min(supersample, modelSupersample);
    }
    g_rayConfig.supersample = supersample;
    g_rayConfig.baseTorchRange = readFloat(environmentConfig, "torchRange", 20.0f);
    g_rayConfig.ambientLight = std::clamp(readFloat(environmentConfig, "ambientLight", 0.05f), 0.0f, 1.0f);
    g_rayConfig.modelLightHeight = std::max(0.1f, readFloat(environmentConfig, "modelLightHeight", 1.35f));
    g_rayConfig.cornerAOStrength = config.contains("raycastCornerAOStrength")
                                      ? std::clamp(config["raycastCornerAOStrength"].get<float>(), 0.0f, 0.8f)
                                      : 0.22f;
    g_rayConfig.cornerAOWidth = config.contains("raycastCornerAOWidth")
                                  ? std::clamp(config["raycastCornerAOWidth"].get<float>(), 0.0f, 1.0f)
                                      : 0.35f;
    g_rayConfig.ceilingColor = readColor(environmentConfig, "ceilingColor", {120, 120, 120});
    g_rayConfig.floorColor = readColor(environmentConfig, "floorColor", {90, 70, 50});
    g_rayConfig.wallColor = readColor(environmentConfig, "wallColor", {120, 120, 120});
    g_rayConfig.wallLineColor = readColor(environmentConfig, "wallLineColor", {77, 77, 77});
    g_rayConfig.skyColor = readColor(environmentConfig, "skyColor", {94, 178, 229});
    g_rayConfig.flatCeiling = readBool(environmentConfig, "flatCeiling", false);
    g_rayConfig.flatFloor = readBool(environmentConfig, "flatFloor", false);
    g_rayConfig.verticalWallStripes = readBool(environmentConfig, "verticalWallStripes", false);
    g_rayConfig.blackBoundaryWalls = readBool(environmentConfig, "blackBoundaryWalls", false);
    g_rayConfig.modelLight = readBool(environmentConfig, "modelLight", false);

    if (state.raycast.map && raycastMapHasSolidBlackWalls(*state.raycast.map))
    {
        g_rayConfig.ceilingColor = {0, 0, 0};
        g_rayConfig.wallColor = {0, 0, 0};
        g_rayConfig.wallLineColor = {0, 0, 0};
        g_rayConfig.flatCeiling = true;
    }
}

RaycastFrameConfig getRaycastFrameConfig()
{
    return {
        g_rayConfig.visualScale,
        g_rayConfig.wallHeightUnits,
        g_rayConfig.falloffMul,
        g_rayConfig.fovMul,
        g_rayConfig.supersample,
        g_rayConfig.baseTorchRange,
        g_rayConfig.ambientLight,
        g_rayConfig.modelLightHeight,
        g_rayConfig.ceilingColor,
        g_rayConfig.floorColor,
        g_rayConfig.wallColor,
        g_rayConfig.wallLineColor,
        g_rayConfig.flatCeiling,
        g_rayConfig.flatFloor,
        g_rayConfig.blackBoundaryWalls,
        g_rayConfig.modelLight
    };
}

// Normalize angle to [0, 2π) using std::fmod (branchless)
static inline float normalizeAngle(float angle)
{
    angle = std::fmod(angle, TWO_PI);
    return angle < 0.0f ? angle + TWO_PI : angle;
}

//
// Initialize player position and orientation from the map
//
bool initializePlayerFromMap(const TileMap &tileMap, RaycastPlayer &player)
{
    int mapH = static_cast<int>(tileMap.size());
    int mapW = static_cast<int>(tileMap[0].size());

    // Search for player start position markers (0xF0-0xF3)
    for (int y = 0; y < mapH; ++y)
    {
        for (int x = 0; x < mapW; ++x)
        {
            uint8_t tile = tileMap[y][x];
            if (isPlayerStartTile(tile))
            {
                // Set player position to center of the tile
                player.x = static_cast<float>(x) + 0.5f;
                player.y = static_cast<float>(y) + 0.5f;

                // Set player orientation based on the marker
                switch (tile)
                {
                case 0xF0: // North
                    player.angle = deg2rad(270.0f);
                    break;
                case 0xF1: // East
                    player.angle = deg2rad(0.0f);
                    break;
                case 0xF2: // South
                    player.angle = deg2rad(90.0f);
                    break;
                case 0xF3: // West
                    player.angle = deg2rad(180.0f);
                    break;
                }

                return true;
            }
        }
    }

    return false;
}

// Cast ray with DDA algorithm (branchless inner loop)
RaycastHit castRay(const TileMap &tileMap,
                   float posX,
                   float posY,
                   float rayDirX,
                   float rayDirY)
{
    const int mapW = static_cast<int>(tileMap[0].size());
    const int mapH = static_cast<int>(tileMap.size());
    int mapX = static_cast<int>(posX);
    int mapY = static_cast<int>(posY);

    // Avoid division by zero with small epsilon
    const float epsX = (rayDirX == 0.0f) ? 1e-10f : rayDirX;
    const float epsY = (rayDirY == 0.0f) ? 1e-10f : rayDirY;
    const float deltaDistX = std::abs(1.0f / epsX);
    const float deltaDistY = std::abs(1.0f / epsY);

    // Branchless step calculation using sign
    const int stepX = (rayDirX >= 0.0f) ? 1 : -1;
    const int stepY = (rayDirY >= 0.0f) ? 1 : -1;

    // Branchless initial side distance calculation
    float sideDistX = (stepX > 0)
                          ? (mapX + 1.0f - posX) * deltaDistX
                          : (posX - mapX) * deltaDistX;
    float sideDistY = (stepY > 0)
                          ? (mapY + 1.0f - posY) * deltaDistY
                          : (posY - mapY) * deltaDistY;

    int side = 0;
    bool hitWall = false;

    // DDA loop with branchless step selection
    const int maxSteps = std::clamp(mapW + mapH + 64, 64, 4096);
    for (int i = 0; i < maxSteps; ++i)
    {
        // Branchless: select which axis to step based on comparison
        const bool stepInX = (sideDistX < sideDistY);

        // Conditional updates (compiler optimizes to cmov)
        sideDistX += stepInX ? deltaDistX : 0.0f;
        sideDistY += stepInX ? 0.0f : deltaDistY;
        mapX += stepInX ? stepX : 0;
        mapY += stepInX ? 0 : stepY;
        side = stepInX ? 0 : 1;

        // Bounds check
        if (mapX < 0 || mapY < 0 || mapX >= mapW || mapY >= mapH)
        {
            const float dist = side ? (sideDistY - deltaDistY) : (sideDistX - deltaDistX);
            return {dist, side, false, mapX, mapY, 0.0f, 0x00};
        }

        // Wall check
        const uint8_t tile = tileMap[mapY][mapX];
        if (isSolidTile(tile))
        {
            hitWall = true;
            break;
        }
    }

    const float dist = side ? (sideDistY - deltaDistY) : (sideDistX - deltaDistX);
    if (!hitWall)
        return {dist, side, false, mapX, mapY, 0.0f, 0x00};

    // Calculate exact hit position on wall for texture U coordinate
    float wallX;
    if (side == 0) // Vertical wall (hit on X side)
        wallX = posY + dist * rayDirY;
    else // Horizontal wall (hit on Y side)
        wallX = posX + dist * rayDirX;
    wallX -= std::floor(wallX); // Get fractional part [0..1]

    // Determine cardinal direction for megatexture lookup
    // side 0 = North/South walls (Y-aligned), side 1 = East/West walls (X-aligned)
    // Megatexture sides: 0=North, 1=East, 2=South, 3=West
    int cardinalSide;
    if (side == 0) // Vertical wall (stepped in X)
    {
        cardinalSide = (stepX > 0) ? 3 : 1; // Stepped right = hit west wall, stepped left = hit east wall
    }
    else // Horizontal wall (stepped in Y)
    {
        cardinalSide = (stepY > 0) ? 0 : 2; // Stepped down = hit north wall, stepped up = hit south wall
    }

    const uint8_t tile = (mapX >= 0 && mapY >= 0 && mapX < mapW && mapY < mapH)
                             ? tileMap[mapY][mapX]
                             : 0x00;
    return {dist, cardinalSide, true, mapX, mapY, wallX, tile};
}

static void castRayPacket4(const TileMap &tileMap,
                           float posX,
                           float posY,
                           const float rayDirX[4],
                           const float rayDirY[4],
                           RaycastHit outHits[4],
                           int lanes)
{
    const int mapW = static_cast<int>(tileMap[0].size());
    const int mapH = static_cast<int>(tileMap.size());

    int mapX[4]{};
    int mapY[4]{};
    int stepX[4]{};
    int stepY[4]{};
    int side[4]{};
    bool done[4]{};
    bool hitWall[4]{};

    float deltaDistX[4]{};
    float deltaDistY[4]{};
    float sideDistX[4]{};
    float sideDistY[4]{};

    for (int lane = 0; lane < lanes; ++lane)
    {
        mapX[lane] = static_cast<int>(posX);
        mapY[lane] = static_cast<int>(posY);

        const float epsX = (rayDirX[lane] == 0.0f) ? 1e-10f : rayDirX[lane];
        const float epsY = (rayDirY[lane] == 0.0f) ? 1e-10f : rayDirY[lane];

        deltaDistX[lane] = std::abs(1.0f / epsX);
        deltaDistY[lane] = std::abs(1.0f / epsY);
        stepX[lane] = (rayDirX[lane] >= 0.0f) ? 1 : -1;
        stepY[lane] = (rayDirY[lane] >= 0.0f) ? 1 : -1;

        sideDistX[lane] = (stepX[lane] > 0)
                              ? (mapX[lane] + 1.0f - posX) * deltaDistX[lane]
                              : (posX - mapX[lane]) * deltaDistX[lane];
        sideDistY[lane] = (stepY[lane] > 0)
                              ? (mapY[lane] + 1.0f - posY) * deltaDistY[lane]
                              : (posY - mapY[lane]) * deltaDistY[lane];
    }

    const int maxSteps = std::clamp(mapW + mapH + 64, 64, 4096);
    for (int i = 0; i < maxSteps; ++i)
    {
        bool anyActive = false;
        for (int lane = 0; lane < lanes; ++lane)
        {
            if (done[lane])
                continue;
            anyActive = true;

            const bool stepInX = (sideDistX[lane] < sideDistY[lane]);
            sideDistX[lane] += stepInX ? deltaDistX[lane] : 0.0f;
            sideDistY[lane] += stepInX ? 0.0f : deltaDistY[lane];
            mapX[lane] += stepInX ? stepX[lane] : 0;
            mapY[lane] += stepInX ? 0 : stepY[lane];
            side[lane] = stepInX ? 0 : 1;

            if (mapX[lane] < 0 || mapY[lane] < 0 || mapX[lane] >= mapW || mapY[lane] >= mapH)
            {
                done[lane] = true;
                hitWall[lane] = false;
                continue;
            }

            const uint8_t tile = tileMap[mapY[lane]][mapX[lane]];
            if (isSolidTile(tile))
            {
                done[lane] = true;
                hitWall[lane] = true;
            }
        }

        if (!anyActive)
            break;
    }

    for (int lane = 0; lane < lanes; ++lane)
    {
        const float dist = side[lane] ? (sideDistY[lane] - deltaDistY[lane]) : (sideDistX[lane] - deltaDistX[lane]);
        if (!hitWall[lane])
        {
            outHits[lane] = {dist, side[lane], false, mapX[lane], mapY[lane], 0.0f, 0x00};
            continue;
        }

        float wallX = (side[lane] == 0) ? (posY + dist * rayDirY[lane]) : (posX + dist * rayDirX[lane]);
        wallX -= std::floor(wallX);
        int cardinalSide = (side[lane] == 0) ? ((stepX[lane] > 0) ? 3 : 1) : ((stepY[lane] > 0) ? 0 : 2);
        const uint8_t tile = (mapX[lane] >= 0 && mapY[lane] >= 0 && mapX[lane] < mapW && mapY[lane] < mapH)
                                 ? tileMap[mapY[lane]][mapX[lane]]
                                 : 0x00;
        outHits[lane] = {dist, cardinalSide, true, mapX[lane], mapY[lane], wallX, tile};
    }
}

static inline uint32_t packBGRA(float b, float g, float r)
{
    const auto channel = [](float value) {
        return static_cast<uint32_t>(std::clamp(value, 0.0f, 255.0f) + 0.5f);
    };
    return channel(b) |
           (channel(g) << 8u) |
           (channel(r) << 16u) |
           0xFF000000u;
}

struct RaycastVerticalGradientLut
{
    std::vector<std::array<uint8_t, 3>> ceiling;
    std::vector<std::array<uint8_t, 3>> floor;
};

static RaycastVerticalGradientLut g_verticalGradientLut;

static void updateVerticalGradientLut(int screenHeight)
{
    if (screenHeight <= 0)
        return;
    g_verticalGradientLut.ceiling.resize(static_cast<size_t>(screenHeight));
    g_verticalGradientLut.floor.resize(static_cast<size_t>(screenHeight));
    const float halfHeight = static_cast<float>(screenHeight) * 0.5f;
    for (int y = 0; y < screenHeight; ++y)
    {
        const float yf = static_cast<float>(y) + 0.5f;
        const float ceilingFactor = g_rayConfig.flatCeiling
                                        ? 1.0f
                                        : std::clamp(1.0f - yf / halfHeight, 0.0f, 1.0f);
        const float floorRatio = std::clamp((yf - halfHeight) / halfHeight, 0.0f, 1.0f);
        const float floorFactor = g_rayConfig.flatFloor ? 1.0f : floorRatio;
        for (size_t channel = 0; channel < 3; ++channel)
        {
            g_verticalGradientLut.ceiling[static_cast<size_t>(y)][channel] =
                static_cast<uint8_t>(g_rayConfig.ceilingColor[channel] * ceilingFactor);
            g_verticalGradientLut.floor[static_cast<size_t>(y)][channel] =
                static_cast<uint8_t>(g_rayConfig.floorColor[channel] * floorFactor);
        }
    }
}

// Render a column with vertical smoothing
void accumulateColumn(int x,
                      const RaycastHit &hit,
                      int screenH,
                      float halfW,
                      float halfH,
                      float maxRadius,
                      float torchRange,
                      float cosCorrection,
                      float halfFovTan,
                      float rayDirX,
                      float rayDirY,
                      const RaycastPlayer& player,
                      const TileMap& tileMap,
                      std::vector<float> &acc_r,
                      std::vector<float> &acc_g,
                      std::vector<float> &acc_b,
                      bool overwrite)
{
    // Use cached config values (read once per frame, not per pixel)
    const float visualScale = g_rayConfig.visualScale;
    const float falloffMul = g_rayConfig.falloffMul;
    const RaycastSceneLight sceneLight = getRaycastSceneLight();

    // Wall rendering parameters (only used if hitWall is true)
    float perpWallDist = 0.0f;
    float drawStart = 0.0f;
    float drawEnd = 0.0f;
    float projectedUnitPixels = 1.0f;
    uint8_t wallR = 0, wallG = 0, wallB = 0;
    float lightFactor = 1.0f;

    bool hitSolidBlackWall = false;
    if (hit.hitWall)
    {
        hitSolidBlackWall = isSolidBlackWall(tileMap, hit.mapX, hit.mapY, hit.tile);
        // Project ray distance onto camera forward direction (cosine correction)
        // and scale by FOV tangent for proper 3D perspective.
        // At 90° FOV: halfFovTan=1, cosCorrection≈1 at center → identical to old formula.
        perpWallDist = std::max(hit.distance * cosCorrection / visualScale, 0.01f);
        float lineHeight = (static_cast<float>(screenH) * g_rayConfig.wallHeightUnits) / (perpWallDist * halfFovTan);
        drawStart = halfH - lineHeight / 2.0f;
        drawEnd = halfH + lineHeight / 2.0f;
        projectedUnitPixels = std::max(lineHeight / std::max(g_rayConfig.wallHeightUnits, 0.001f), 1.0f);

        lightFactor = sceneLight.active ? 1.0f : std::max(0.05f, 1.0f - hit.distance / torchRange);

        // Initialize fallback wall color
        wallR = hitSolidBlackWall ? 0 : static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[0] * lightFactor, 0.0f, 255.0f));
        wallG = hitSolidBlackWall ? 0 : static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[1] * lightFactor, 0.0f, 255.0f));
        wallB = hitSolidBlackWall ? 0 : static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[2] * lightFactor, 0.0f, 255.0f));
    }

    // Keep AO in wall space so nearby architectural corners naturally cast a
    // broader taper instead of being forced into a tiny fixed screen width.
    const float cornerAOWidth = std::clamp(g_rayConfig.cornerAOWidth, 0.02f, 0.50f);
    const float cornerAO = hit.hitWall
                               ? computeInsideCornerAO(hit.mapX, hit.mapY, hit.side, hit.wallX,
                                     cornerAOWidth)
                               : 1.0f;

    for (int y = 0; y < screenH; ++y)
    {
        float yf = static_cast<float>(y) + 0.5f; // Pixel center
        float dx = static_cast<float>(x) - halfW;
        float dy = yf - halfH;
        float screenDist = std::sqrt(dx * dx + dy * dy);
        // Use cached falloff value (was previously shadowed and read from config per-pixel)
        float screenFactor = sceneLight.active ? 1.0f : std::max(0.0f, 1.0f - (screenDist / maxRadius) * falloffMul);

        const auto &ceiling = g_verticalGradientLut.ceiling[static_cast<size_t>(y)];
        const auto &floor = g_verticalGradientLut.floor[static_cast<size_t>(y)];
        const uint8_t ceilingR = hitSolidBlackWall ? 0 : ceiling[0];
        const uint8_t ceilingG = hitSolidBlackWall ? 0 : ceiling[1];
        const uint8_t ceilingB = hitSolidBlackWall ? 0 : ceiling[2];
        const uint8_t floorR = floor[0];
        const uint8_t floorG = floor[1];
        const uint8_t floorB = floor[2];

        uint8_t rr, gg, bb;
        float wallV = 0.0f;
        bool usedWallSample = false;

        // If no wall hit, just render floor/ceiling
        if (!hit.hitWall)
        {
            if (yf < halfH)
            {
                // Ceiling
                rr = ceilingR;
                gg = ceilingG;
                bb = ceilingB;
            }
            else
            {
                // Floor
                rr = floorR;
                gg = floorG;
                bb = floorB;
            }
        }
        else if (yf < drawStart)
        {
            // Pure ceiling
            rr = ceilingR;
            gg = ceilingG;
            bb = ceilingB;
        }
        else if (yf > drawEnd)
        {
            // Pure floor
            rr = floorR;
            gg = floorG;
            bb = floorB;
        }
        else
        {
            // Wall with per-pixel megatexture sampling.
            float weight = 1.0f;

            // Compute per-pixel wall color from megatexture
            // Map screen y to [0..1] along the wall segment
            float v = (yf - drawStart) / std::max(1.0f, (drawEnd - drawStart));
            v = std::max(0.0f, std::min(1.0f, v));
            wallV = v;
            usedWallSample = true;

            const bool solidBlackWall = isSolidBlackWall(tileMap, hit.mapX, hit.mapY, hit.tile);
            uint8_t wallR_px = wallR, wallG_px = wallG, wallB_px = wallB; // defaults
            bool skyPixel = false;
            const float baseR = solidBlackWall ? 0.0f : static_cast<float>(g_rayConfig.wallColor[0]);
            const float baseG = solidBlackWall ? 0.0f : static_cast<float>(g_rayConfig.wallColor[1]);
            const float baseB = solidBlackWall ? 0.0f : static_cast<float>(g_rayConfig.wallColor[2]);

            const float cornerThreshold = std::clamp(1.0f / projectedUnitPixels, 0.00075f, 0.02f);
            const bool cornerLine =
                !solidBlackWall &&
                isVisibleCornerEdge(hit.mapX, hit.mapY, hit.side, hit.wallX, cornerThreshold);
            const float seamDistance = std::min(hit.wallX, 1.0f - hit.wallX);
            const float seamCoverage = cornerLine
                                           ? 1.0f - smoothstep01(seamDistance / cornerThreshold)
                                           : 0.0f;

            if (!solidBlackWall && state.raycast.useMegatexture)
            {
                uint32_t texSample = sampleMegatexture(hit.mapX, hit.mapY, hit.side, hit.wallX, v);
                uint8_t texR = (texSample >> 0) & 0xFF;
                uint8_t texG = (texSample >> 8) & 0xFF;
                uint8_t texB = (texSample >> 16) & 0xFF;
                uint8_t texA = (texSample >> 24) & 0xFF;

                if (texA > 0)
                {
                    float alpha = texA / 255.0f;
                    wallR_px = static_cast<uint8_t>((texR * alpha + baseR * (1.0f - alpha)) * lightFactor);
                    wallG_px = static_cast<uint8_t>((texG * alpha + baseG * (1.0f - alpha)) * lightFactor);
                    wallB_px = static_cast<uint8_t>((texB * alpha + baseB * (1.0f - alpha)) * lightFactor);
                }
                else
                {
                    wallR_px = static_cast<uint8_t>(baseR * lightFactor);
                    wallG_px = static_cast<uint8_t>(baseG * lightFactor);
                    wallB_px = static_cast<uint8_t>(baseB * lightFactor);
                }
            }
            else
            {
                wallR_px = static_cast<uint8_t>(baseR * lightFactor);
                wallG_px = static_cast<uint8_t>(baseG * lightFactor);
                wallB_px = static_cast<uint8_t>(baseB * lightFactor);
                if (!solidBlackWall && g_rayConfig.verticalWallStripes)
                {
                    const float plank = std::fmod(hit.wallX * 4.0f, 1.0f);
                    if (plank < 0.055f)
                    {
                        wallR_px = static_cast<uint8_t>(g_rayConfig.wallLineColor[0] * lightFactor);
                        wallG_px = static_cast<uint8_t>(g_rayConfig.wallLineColor[1] * lightFactor);
                        wallB_px = static_cast<uint8_t>(g_rayConfig.wallLineColor[2] * lightFactor);
                    }
                }
            }

            if (!solidBlackWall && !state.raycast.useMegatexture &&
                !isDoorFeatureTile(hit.tile) && (v < 0.075f || v > 0.925f))
            {
                wallR_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[0] * lightFactor, 0.0f, 255.0f));
                wallG_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[1] * lightFactor, 0.0f, 255.0f));
                wallB_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[2] * lightFactor, 0.0f, 255.0f));
            }

            if (!solidBlackWall && isDoorFeatureTile(hit.tile))
            {
                const bool outerEdge = hit.wallX < 0.075f || hit.wallX > 0.925f || v < 0.06f || v > 0.98f;
                const bool centerSplit = std::abs(hit.wallX - 0.5f) < 0.018f;
                const bool upperPanel = v > 0.17f && v < 0.42f && ((hit.wallX > 0.16f && hit.wallX < 0.42f) || (hit.wallX > 0.58f && hit.wallX < 0.84f));
                const bool lowerPanel = v > 0.54f && v < 0.84f && ((hit.wallX > 0.16f && hit.wallX < 0.42f) || (hit.wallX > 0.58f && hit.wallX < 0.84f));
                const bool knob = hit.wallX > 0.58f && hit.wallX < 0.64f && v > 0.48f && v < 0.54f;
                const float doorLight = std::clamp(0.60f + 0.40f * lightFactor, 0.0f, 1.0f);
                if (outerEdge || centerSplit)
                {
                    wallR_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallLineColor[0] * doorLight, 0.0f, 255.0f));
                    wallG_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallLineColor[1] * doorLight, 0.0f, 255.0f));
                    wallB_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallLineColor[2] * doorLight, 0.0f, 255.0f));
                }
                else if (upperPanel || lowerPanel)
                {
                    wallR_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[0] * doorLight * 0.82f, 0.0f, 255.0f));
                    wallG_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[1] * doorLight * 0.82f, 0.0f, 255.0f));
                    wallB_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[2] * doorLight * 0.82f, 0.0f, 255.0f));
                }
                else if (knob)
                {
                    wallR_px = static_cast<uint8_t>(190.0f * doorLight);
                    wallG_px = static_cast<uint8_t>(145.0f * doorLight);
                    wallB_px = static_cast<uint8_t>(52.0f * doorLight);
                }
                else
                {
                    wallR_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[0] * doorLight, 0.0f, 255.0f));
                    wallG_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[1] * doorLight, 0.0f, 255.0f));
                    wallB_px = static_cast<uint8_t>(std::clamp(g_rayConfig.wallColor[2] * doorLight, 0.0f, 255.0f));
                }
            }

            const RaycastWindowSpec window = solidBlackWall ? RaycastWindowSpec{} : getWindowSpec(hit.tile);
            if (window.isWindow && v >= window.openTop && v <= window.openBottom)
            {
                constexpr float kFrameV = 0.045f;
                constexpr float kFrameU = 0.065f;
                const bool leftFrame = hit.wallX < kFrameU && !hasAdjacentWindowFeature(hit.mapX, hit.mapY, hit.side, true);
                const bool rightFrame = hit.wallX > 1.0f - kFrameU && !hasAdjacentWindowFeature(hit.mapX, hit.mapY, hit.side, false);
                const bool horizontalFrame = v < window.openTop + kFrameV || v > window.openBottom - kFrameV;
                if (leftFrame || rightFrame || horizontalFrame)
                {
                    wallR_px = static_cast<uint8_t>(g_rayConfig.wallLineColor[0] * lightFactor);
                    wallG_px = static_cast<uint8_t>(g_rayConfig.wallLineColor[1] * lightFactor);
                    wallB_px = static_cast<uint8_t>(g_rayConfig.wallLineColor[2] * lightFactor);
                }
                else
                {
                    shadePassThroughPixel(tileMap,
                                          player,
                                          hit,
                                          rayDirX,
                                          rayDirY,
                                          yf,
                                          halfH,
                                          visualScale,
                                          torchRange,
                                          cosCorrection,
                                          halfFovTan,
                                          wallR_px,
                                          wallG_px,
                                          wallB_px);
                    skyPixel = true;
                }
            }

            if (solidBlackWall)
            {
                wallR_px = 0;
                wallG_px = 0;
                wallB_px = 0;
            }
            else if (!skyPixel)
            {
                wallR_px = static_cast<uint8_t>(std::clamp(wallR_px * cornerAO, 0.0f, 255.0f));
                wallG_px = static_cast<uint8_t>(std::clamp(wallG_px * cornerAO, 0.0f, 255.0f));
                wallB_px = static_cast<uint8_t>(std::clamp(wallB_px * cornerAO, 0.0f, 255.0f));
            }

            // Vertical seam line on real geometric corners only.
            if (cornerLine && !skyPixel)
            {
                // Megatexture seams share the sampled texel instead of replacing
                // it with a razor-sharp unrelated line.
                const float opacity = seamCoverage * (state.raycast.useMegatexture ? 0.72f : 1.0f);
                const float lineR = g_rayConfig.wallLineColor[0] * lightFactor;
                const float lineG = g_rayConfig.wallLineColor[1] * lightFactor;
                const float lineB = g_rayConfig.wallLineColor[2] * lightFactor;
                wallR_px = static_cast<uint8_t>(std::clamp(wallR_px * (1.0f - opacity) + lineR * opacity, 0.0f, 255.0f));
                wallG_px = static_cast<uint8_t>(std::clamp(wallG_px * (1.0f - opacity) + lineG * opacity, 0.0f, 255.0f));
                wallB_px = static_cast<uint8_t>(std::clamp(wallB_px * (1.0f - opacity) + lineB * opacity, 0.0f, 255.0f));
            }

            if (yf < drawStart + 1.0f)
            {
                weight = (yf - drawStart) / 1.0f; // Blend over 1 pixel
                weight = std::max(0.0f, std::min(weight, 1.0f));
                rr = static_cast<uint8_t>((1.0f - weight) * ceilingR + weight * wallR_px);
                gg = static_cast<uint8_t>((1.0f - weight) * ceilingG + weight * wallG_px);
                bb = static_cast<uint8_t>((1.0f - weight) * ceilingB + weight * wallB_px);
            }
            else if (yf > drawEnd - 1.0f)
            {
                weight = (drawEnd - yf) / 1.0f;
                weight = std::max(0.0f, std::min(weight, 1.0f));
                rr = static_cast<uint8_t>((1.0f - weight) * floorR + weight * wallR_px);
                gg = static_cast<uint8_t>((1.0f - weight) * floorG + weight * wallG_px);
                bb = static_cast<uint8_t>((1.0f - weight) * floorB + weight * wallB_px);
            }
            else
            {
                // Pure wall
                rr = wallR_px;
                gg = wallG_px;
                bb = wallB_px;
            }
        }

        float finalFactor = screenFactor;
        if (sceneLight.active)
        {
            RaycastVec3 shadedPoint{};
            bool hasShadedPoint = false;
            if (usedWallSample)
            {
                shadedPoint.x = player.x + rayDirX * hit.distance;
                shadedPoint.y = player.y + rayDirY * hit.distance;
                shadedPoint.z = (1.0f - wallV) * g_rayConfig.wallHeightUnits;
                hasShadedPoint = true;
            }
            else if (yf >= halfH)
            {
                hasShadedPoint = projectScreenPixelToPlane(player,
                                                           static_cast<int>(halfW * 2.0f),
                                                           screenH,
                                                           x,
                                                           yf,
                                                           halfH,
                                                           halfFovTan,
                                                           0.0f,
                                                           shadedPoint);
            }
            else
            {
                hasShadedPoint = projectScreenPixelToPlane(player,
                                                           static_cast<int>(halfW * 2.0f),
                                                           screenH,
                                                           x,
                                                           yf,
                                                           halfH,
                                                           halfFovTan,
                                                           g_rayConfig.wallHeightUnits,
                                                           shadedPoint);
            }
            finalFactor = hasShadedPoint ? computeRaycastSceneLightFactor(sceneLight, shadedPoint)
                                         : sceneLight.ambient;
        }
        // First sample of a column writes (not adds) so callers with a single
        // sample (the common supersample==1 case) can skip pre-zeroing acc_r/g/b.
        if (overwrite)
        {
            acc_r[y] = rr * finalFactor;
            acc_g[y] = gg * finalFactor;
            acc_b[y] = bb * finalFactor;
        }
        else
        {
            acc_r[y] += rr * finalFactor;
            acc_g[y] += gg * finalFactor;
            acc_b[y] += bb * finalFactor;
        }
    }
}

// Render a chunk of the screen with threading
// Uses thread-local accumulators to avoid per-column allocations
void renderChunk(const TileMap &tileMap,
                 const RaycastPlayer &player,
                 uint8_t *framebuffer,
                 size_t pitch,
                 int screenWidth,
                 int screenHeight,
                 int supersample,
                 int startX,
                 int endX,
                 std::vector<float> *wallDepth)
{
    const float halfWidth = screenWidth * 0.5f;
    const float halfHeight = screenHeight * 0.5f;
    const float maxRadius = std::sqrt(halfWidth * halfWidth + halfHeight * halfHeight);
    // Use cached config values
    const float torchRange = g_rayConfig.baseTorchRange * g_rayConfig.visualScale;
    const float fovMul = g_rayConfig.fovMul;
    const float fov = state.raycast.player.fov;

    // Tangent-based FOV projection: at 90° FOV, halfFovTan=1.0 (unchanged behavior).
    // At higher FOV, halfFovTan > 1 → walls render shorter → proper zoom-out.
    const float halfFovTan = std::tan(fov * 0.5f * fovMul);

    // Thread-local accumulators - 4-column packet to reduce DDA dispatch overhead
    thread_local std::array<std::vector<float>, 4> accumR4;
    thread_local std::array<std::vector<float>, 4> accumG4;
    thread_local std::array<std::vector<float>, 4> accumB4;
    for (int lane = 0; lane < 4; ++lane)
    {
        if (accumR4[lane].size() < static_cast<size_t>(screenHeight))
        {
            accumR4[lane].resize(screenHeight);
            accumG4[lane].resize(screenHeight);
            accumB4[lane].resize(screenHeight);
        }
    }

    for (int x = startX; x < endX; x += 4)
    {
        const int lanes = std::min(4, endX - x);
        float columnDepth[4];
        for (int lane = 0; lane < lanes; ++lane)
        {
            // accumR4/G4/B4 no longer need zeroing here: accumulateColumn's first
            // sample (sampleIdx == 0 below) overwrites instead of adding, which is
            // the actual common case (supersample == 1 at most resolutions, see
            // resolveCpuRaycastSupersample). Avoids 3 full-column float fills per
            // lane per dispatch that would otherwise just get overwritten anyway.
            columnDepth[lane] = std::numeric_limits<float>::infinity();
        }

        for (int sampleIdx = 0; sampleIdx < supersample; ++sampleIdx)
        {
            float rayDirX[4]{};
            float rayDirY[4]{};
            float cosCorr[4]{};
            for (int lane = 0; lane < lanes; ++lane)
            {
                const float xPos = static_cast<float>(x + lane);
                float camX = 2.0f * (xPos + (sampleIdx + 0.5f) / supersample) / screenWidth - 1.0f;
                float viewX = camX * halfFovTan;
                float rayAngle = player.angle + std::atan(viewX);
                cosCorr[lane] = 1.0f / std::sqrt(1.0f + viewX * viewX);
                rayDirX[lane] = std::cos(rayAngle);
                rayDirY[lane] = std::sin(rayAngle);
            }

            RaycastHit hits[4]{};
            castRayPacket4(tileMap, player.x, player.y, rayDirX, rayDirY, hits, lanes);

            for (int lane = 0; lane < lanes; ++lane)
            {
                if (hits[lane].hitWall)
                    columnDepth[lane] = std::min(columnDepth[lane], hits[lane].distance * cosCorr[lane]);

                accumulateColumn(x + lane,
                                 hits[lane],
                                 screenHeight,
                                 halfWidth,
                                 halfHeight,
                                 maxRadius,
                                 torchRange,
                                 cosCorr[lane],
                                 halfFovTan,
                                 rayDirX[lane],
                                 rayDirY[lane],
                                 player,
                                 tileMap,
                                 accumR4[lane],
                                 accumG4[lane],
                                 accumB4[lane],
                                 sampleIdx == 0);
            }
        }

        const float invSS = 1.0f / supersample;
        for (int lane = 0; lane < lanes; ++lane)
        {
            const int xPix = x + lane;
            if (wallDepth)
                (*wallDepth)[static_cast<size_t>(xPix)] = columnDepth[lane];
            for (int y = 0; y < screenHeight; ++y)
            {
                const uint32_t packed = packBGRA(accumB4[lane][y] * invSS,
                                                 accumG4[lane][y] * invSS,
                                                 accumR4[lane][y] * invSS);
                size_t idx = static_cast<size_t>(y) * pitch + static_cast<size_t>(xPix) * 4;
                std::memcpy(framebuffer + idx, &packed, sizeof(packed));
            }
        }
    }
}

struct ProjectedModelVertex
{
    float x = 0.0f;
    float y = 0.0f;
    float depth = 0.0f;
    RaycastVec3 world;
};

static RaycastVec3 transformModelVertex(const RaycastLoadedModel &model, const RaycastVec3 &src)
{
    const RaycastModelMesh &mesh = *model.mesh;
    float lx = (src.x - mesh.center.x) * model.scale;
    float ly = (src.y - mesh.center.y) * model.scale;
    float lz = (src.z - mesh.minBounds.z) * model.scale;
    const float cp = std::cos(model.instance.pitch);
    const float sp = std::sin(model.instance.pitch);
    const float cr = std::cos(model.instance.roll);
    const float sr = std::sin(model.instance.roll);
    const float cy = std::cos(model.instance.yaw);
    const float sy = std::sin(model.instance.yaw);

    const float py = ly * cp - lz * sp;
    const float pz = ly * sp + lz * cp;
    ly = py;
    lz = pz;

    const float rx = lx * cr + lz * sr;
    const float rz = -lx * sr + lz * cr;
    lx = rx;
    lz = rz;

    return {
        model.instance.x + lx * cy - ly * sy,
        model.instance.y + lx * sy + ly * cy,
        model.instance.z + lz - model.groundOffsetZ
    };
}

static RaycastVec3 transformModelNormal(const RaycastLoadedModel &model, const RaycastVec3 &src)
{
    float nx = src.x;
    float ny = src.y;
    float nz = src.z;
    const float cp = std::cos(model.instance.pitch);
    const float sp = std::sin(model.instance.pitch);
    const float cr = std::cos(model.instance.roll);
    const float sr = std::sin(model.instance.roll);
    const float cy = std::cos(model.instance.yaw);
    const float sy = std::sin(model.instance.yaw);

    const float py = ny * cp - nz * sp;
    const float pz = ny * sp + nz * cp;
    ny = py;
    nz = pz;

    const float rx = nx * cr + nz * sr;
    const float rz = -nx * sr + nz * cr;
    nx = rx;
    nz = rz;

    return normalizeVec3({
        nx * cy - ny * sy,
        nx * sy + ny * cy,
        nz
    });
}

bool buildRaycastGpuModelGeometry(std::vector<RaycastGpuModelVertex> &vertices,
                                  std::vector<uint32_t> &indices)
{
    vertices.clear();
    indices.clear();
    if (g_loadedModels.empty())
        return false;

    size_t totalVertices = 0;
    size_t totalIndices = 0;
    for (const RaycastLoadedModel &model : g_loadedModels)
    {
        if (!model.mesh || !model.mesh->valid)
            continue;
        totalVertices += model.mesh->vertices.size();
        totalIndices += model.mesh->indices.size();
    }
    if (totalVertices == 0 || totalIndices == 0)
        return false;

    vertices.reserve(totalVertices);
    indices.reserve(totalIndices);
    for (const RaycastLoadedModel &model : g_loadedModels)
    {
        if (!model.mesh || !model.mesh->valid)
            continue;

        const uint32_t vertexBase = static_cast<uint32_t>(vertices.size());
        const float r = static_cast<float>(model.instance.r) / 255.0f;
        const float g = static_cast<float>(model.instance.g) / 255.0f;
        const float b = static_cast<float>(model.instance.b) / 255.0f;
        for (size_t i = 0; i < model.mesh->vertices.size(); ++i)
        {
            const RaycastVec3 w = transformModelVertex(model, model.mesh->vertices[i]);
            const RaycastVec3 n = i < model.mesh->normals.size()
                                      ? transformModelNormal(model, model.mesh->normals[i])
                                      : RaycastVec3{0.0f, 0.0f, 1.0f};
            vertices.push_back({w.x, w.y, w.z, n.x, n.y, n.z, r, g, b});
        }

        for (uint32_t idx : model.mesh->indices)
        {
            if (idx < model.mesh->vertices.size())
                indices.push_back(vertexBase + idx);
        }
    }

    return !vertices.empty() && !indices.empty();
}

static float edgeFunction(float ax, float ay, float bx, float by, float px, float py)
{
    return (px - ax) * (by - ay) - (py - ay) * (bx - ax);
}

static void drawModelLine(uint8_t *framebuffer,
                          size_t pitch,
                          int screenWidth,
                          int screenHeight,
                          std::vector<float> &depthBuffer,
                          std::vector<uint32_t> &depthGeneration,
                          uint32_t currentGeneration,
                          const std::vector<float> &wallDepth,
                          const ProjectedModelVertex &a,
                          const ProjectedModelVertex &b,
                          uint8_t outR,
                          uint8_t outG,
                          uint8_t outB)
{
    if (std::max(a.x, b.x) < 0.0f || std::min(a.x, b.x) >= static_cast<float>(screenWidth) ||
        std::max(a.y, b.y) < 0.0f || std::min(a.y, b.y) >= static_cast<float>(screenHeight))
    {
        return;
    }

    const float dx = b.x - a.x;
    const float dy = b.y - a.y;
    const int steps = std::clamp(static_cast<int>(std::ceil(std::max(std::abs(dx), std::abs(dy)))), 1, 2048);
    for (int i = 0; i <= steps; ++i)
    {
        const float t = static_cast<float>(i) / static_cast<float>(steps);
        const int x = static_cast<int>(std::round(a.x + dx * t));
        const int y = static_cast<int>(std::round(a.y + dy * t));
        if (x < 0 || y < 0 || x >= screenWidth || y >= screenHeight)
            continue;

        const float depth = a.depth + (b.depth - a.depth) * t;
        const size_t pixelIndex = static_cast<size_t>(y) * static_cast<size_t>(screenWidth) + static_cast<size_t>(x);
        if (depth <= 0.0f || depth >= wallDepth[static_cast<size_t>(x)] ||
            (depthGeneration[pixelIndex] == currentGeneration && depth >= depthBuffer[pixelIndex]))
            continue;

        depthBuffer[pixelIndex] = depth;
        depthGeneration[pixelIndex] = currentGeneration;
        const size_t fbIndex = static_cast<size_t>(y) * pitch + static_cast<size_t>(x) * 4;
        framebuffer[fbIndex + 0] = outB;
        framebuffer[fbIndex + 1] = outG;
        framebuffer[fbIndex + 2] = outR;
        framebuffer[fbIndex + 3] = 255;
    }
}

static void renderRaycastModels(const RaycastPlayer &player,
                                uint8_t *framebuffer,
                                size_t pitch,
                                int screenWidth,
                                int screenHeight,
                                const std::vector<float> &wallDepth)
{
    if (g_loadedModels.empty() || screenWidth <= 0 || screenHeight <= 0)
        return;

    const size_t pixelCount = static_cast<size_t>(screenWidth) * static_cast<size_t>(screenHeight);
    static std::vector<float> depthBuffer;
    static std::vector<uint32_t> depthGeneration;
    static uint32_t currentGeneration = 0;
    if (depthBuffer.size() < pixelCount)
    {
        depthBuffer.resize(pixelCount);
        depthGeneration.resize(pixelCount, 0);
    }
    if (++currentGeneration == 0)
    {
        std::fill(depthGeneration.begin(), depthGeneration.end(), 0);
        currentGeneration = 1;
    }

    const float halfFovTan = std::tan(player.fov * 0.5f * g_rayConfig.fovMul);
    const float cameraForwardX = std::cos(player.angle);
    const float cameraForwardY = std::sin(player.angle);
    const float cameraRightX = -cameraForwardY;
    const float cameraRightY = cameraForwardX;
    const float halfW = static_cast<float>(screenWidth) * 0.5f;
    const float halfH = static_cast<float>(screenHeight) * 0.5f;
    const float projectionScale = std::max(halfFovTan, 0.001f);
    const float torchRange = std::max(1.0f, g_rayConfig.baseTorchRange * g_rayConfig.visualScale);
    const RaycastSceneLight sceneLight = getRaycastSceneLight();
    const RaycastVec3 lightPos = sceneLight.active
                                     ? sceneLight.position
                                     : RaycastVec3{player.x, player.y, kRaycastCameraZ};
    const float ambientLight = sceneLight.active ? sceneLight.ambient : 0.08f;
    const float lightRange = sceneLight.active ? sceneLight.range : torchRange;
    static std::vector<RaycastVec3> transformed;
    static std::vector<ProjectedModelVertex> projected;
    static std::vector<uint8_t> projectedValid;

    for (const RaycastLoadedModel &model : g_loadedModels)
    {
        const RaycastModelMesh &mesh = *model.mesh;
        const float cp = std::cos(model.instance.pitch);
        const float sp = std::sin(model.instance.pitch);
        const float cr = std::cos(model.instance.roll);
        const float sr = std::sin(model.instance.roll);
        const float cy = std::cos(model.instance.yaw);
        const float sy = std::sin(model.instance.yaw);

        transformed.resize(mesh.vertices.size());
        projected.resize(mesh.vertices.size());
        projectedValid.assign(mesh.vertices.size(), 0);
        for (size_t vertexIndex = 0; vertexIndex < mesh.vertices.size(); ++vertexIndex)
        {
            const RaycastVec3 &src = mesh.vertices[vertexIndex];
            float lx = (src.x - mesh.center.x) * model.scale;
            float ly = (src.y - mesh.center.y) * model.scale;
            float lz = (src.z - mesh.minBounds.z) * model.scale;
            const float pitchedY = ly * cp - lz * sp;
            const float pitchedZ = ly * sp + lz * cp;
            ly = pitchedY;
            lz = pitchedZ;
            const float rolledX = lx * cr + lz * sr;
            const float rolledZ = -lx * sr + lz * cr;
            lx = rolledX;
            lz = rolledZ;
            RaycastVec3 &world = transformed[vertexIndex];
            world = {
                model.instance.x + lx * cy - ly * sy,
                model.instance.y + lx * sy + ly * cy,
                model.instance.z + lz - model.groundOffsetZ
            };

            const float dx = world.x - player.x;
            const float dy = world.y - player.y;
            const float depth = dx * cameraForwardX + dy * cameraForwardY;
            if (depth <= 0.05f)
                continue;
            const float lateral = dx * cameraRightX + dy * cameraRightY;
            ProjectedModelVertex &out = projected[vertexIndex];
            out.x = halfW + (lateral / (depth * projectionScale)) * halfW;
            out.y = halfH - ((world.z - kRaycastCameraZ) * static_cast<float>(screenHeight) *
                             g_rayConfig.visualScale / (depth * projectionScale));
            out.depth = depth;
            out.world = world;
            projectedValid[vertexIndex] = 1;
        }

        for (size_t i = 0; i + 2 < mesh.indices.size(); i += 3)
        {
            const uint32_t i0 = mesh.indices[i + 0];
            const uint32_t i1 = mesh.indices[i + 1];
            const uint32_t i2 = mesh.indices[i + 2];
            if (i0 >= mesh.vertices.size() || i1 >= mesh.vertices.size() || i2 >= mesh.vertices.size())
                continue;

            if (!projectedValid[i0] || !projectedValid[i1] || !projectedValid[i2])
                continue;
            const RaycastVec3 &w0 = transformed[i0];
            const RaycastVec3 &w1 = transformed[i1];
            const RaycastVec3 &w2 = transformed[i2];
            const ProjectedModelVertex &p0 = projected[i0];
            const ProjectedModelVertex &p1 = projected[i1];
            const ProjectedModelVertex &p2 = projected[i2];

            const float area = edgeFunction(p0.x, p0.y, p1.x, p1.y, p2.x, p2.y);
            if (!std::isfinite(area))
                continue;

            const int minX = std::clamp(static_cast<int>(std::floor(std::min({p0.x, p1.x, p2.x}))), 0, screenWidth - 1);
            const int maxX = std::clamp(static_cast<int>(std::ceil(std::max({p0.x, p1.x, p2.x}))), 0, screenWidth - 1);
            const int minY = std::clamp(static_cast<int>(std::floor(std::min({p0.y, p1.y, p2.y}))), 0, screenHeight - 1);
            const int maxY = std::clamp(static_cast<int>(std::ceil(std::max({p0.y, p1.y, p2.y}))), 0, screenHeight - 1);
            if (minX > maxX || minY > maxY)
                continue;

            const RaycastVec3 normal = normalizeVec3(crossVec3(w1 - w0, w2 - w0));
            const RaycastVec3 center = {
                (w0.x + w1.x + w2.x) / 3.0f,
                (w0.y + w1.y + w2.y) / 3.0f,
                (w0.z + w1.z + w2.z) / 3.0f
            };
            RaycastVec3 lightDir = normalizeVec3({lightPos.x - center.x, lightPos.y - center.y, lightPos.z - center.z});
            if (std::abs(lightDir.x) < 0.0001f && std::abs(lightDir.y) < 0.0001f && std::abs(lightDir.z) < 0.0001f)
                lightDir = {0.0f, 0.0f, 1.0f};
            const float facing = std::abs(dotVec3(normal, lightDir));
            const float dx = center.x - lightPos.x;
            const float dy = center.y - lightPos.y;
            const float dz = center.z - lightPos.z;
            const float lightDistance = std::sqrt(dx * dx + dy * dy + dz * dz);
            const float normalized = std::clamp(1.0f - lightDistance / lightRange, 0.0f, 1.0f);
            const float distanceLight = std::clamp(ambientLight + (1.0f - ambientLight) * normalized * normalized,
                                                   ambientLight,
                                                   1.0f);
            float shade = std::clamp(0.10f + distanceLight * (0.28f + 0.62f * facing), 0.04f, 1.0f);
            if (sceneLight.active)
                shade = std::max(shade, 0.90f);

            const uint8_t outR = static_cast<uint8_t>(std::clamp(model.instance.r * shade, 0.0f, 255.0f));
            const uint8_t outG = static_cast<uint8_t>(std::clamp(model.instance.g * shade, 0.0f, 255.0f));
            const uint8_t outB = static_cast<uint8_t>(std::clamp(model.instance.b * shade, 0.0f, 255.0f));

            if (std::abs(area) < 1.0f || (maxX - minX) <= 1 || (maxY - minY) <= 1)
            {
                drawModelLine(framebuffer, pitch, screenWidth, screenHeight, depthBuffer, depthGeneration,
                              currentGeneration, wallDepth, p0, p1, outR, outG, outB);
                drawModelLine(framebuffer, pitch, screenWidth, screenHeight, depthBuffer, depthGeneration,
                              currentGeneration, wallDepth, p1, p2, outR, outG, outB);
                drawModelLine(framebuffer, pitch, screenWidth, screenHeight, depthBuffer, depthGeneration,
                              currentGeneration, wallDepth, p2, p0, outR, outG, outB);
                if (std::abs(area) < 1.0f)
                    continue;
            }

            const bool areaPositive = area > 0.0f;
            const float invArea = 1.0f / area;
            for (int y = minY; y <= maxY; ++y)
            {
                for (int x = minX; x <= maxX; ++x)
                {
                    const float px = static_cast<float>(x) + 0.5f;
                    const float py = static_cast<float>(y) + 0.5f;
                    const float wA = edgeFunction(p1.x, p1.y, p2.x, p2.y, px, py);
                    const float wB = edgeFunction(p2.x, p2.y, p0.x, p0.y, px, py);
                    const float wC = edgeFunction(p0.x, p0.y, p1.x, p1.y, px, py);
                    if (areaPositive)
                    {
                        if (wA < 0.0f || wB < 0.0f || wC < 0.0f)
                            continue;
                    }
                    else
                    {
                        if (wA > 0.0f || wB > 0.0f || wC > 0.0f)
                            continue;
                    }

                    const float b0 = wA * invArea;
                    const float b1 = wB * invArea;
                    const float b2 = wC * invArea;
                    const float depth = b0 * p0.depth + b1 * p1.depth + b2 * p2.depth;
                    const size_t pixelIndex = static_cast<size_t>(y) * static_cast<size_t>(screenWidth) + static_cast<size_t>(x);
                    if (depth <= 0.0f || depth >= wallDepth[static_cast<size_t>(x)] ||
                        (depthGeneration[pixelIndex] == currentGeneration && depth >= depthBuffer[pixelIndex]))
                        continue;

                    depthBuffer[pixelIndex] = depth;
                    depthGeneration[pixelIndex] = currentGeneration;
                    const size_t fbIndex = static_cast<size_t>(y) * pitch + static_cast<size_t>(x) * 4;
                    framebuffer[fbIndex + 0] = outB;
                    framebuffer[fbIndex + 1] = outG;
                    framebuffer[fbIndex + 2] = outR;
                    framebuffer[fbIndex + 3] = 255;
                }
            }
        }
    }
}

void drawMeasuredFpsOverlay(uint8_t* framebuffer, size_t pitch, int width, int height)
{
    if (!framebuffer || width <= 0 || height <= 0)
        return;

    static constexpr std::array<uint16_t, 13> glyphs = {
        0x7b6f, 0x749a, 0x73e7, 0x79e7, 0x49ed,
        0x79cf, 0x7bcf, 0x4927, 0x7bef, 0x79ef,
        0x12cf, 0x12eb, 0x79cf
    }; // 0-9, F, P, S in a compact 3x5 font.

    const int fps = std::clamp(static_cast<int>(std::lround(state.frameTiming.measuredFPS)), 0, 999);
    const std::array<int, 7> text = {
        10, 11, 12, -1,
        fps >= 100 ? fps / 100 : -1,
        fps >= 10 ? (fps / 10) % 10 : -1,
        fps % 10
    };
    const int scale = width >= 1200 ? 3 : 2;
    const int advance = 4 * scale;
    const int textWidth = static_cast<int>(text.size()) * advance - scale;
    const int textHeight = 5 * scale;
    const int startX = std::max(4, width - textWidth - 10);
    const int startY = 8;

    for (int y = std::max(0, startY - 3); y < std::min(height, startY + textHeight + 3); ++y)
    {
        uint8_t* row = framebuffer + static_cast<size_t>(y) * pitch;
        for (int x = std::max(0, startX - 4); x < std::min(width, startX + textWidth + 4); ++x)
        {
            row[static_cast<size_t>(x) * 4u + 0u] = static_cast<uint8_t>(row[static_cast<size_t>(x) * 4u + 0u] / 4u);
            row[static_cast<size_t>(x) * 4u + 1u] = static_cast<uint8_t>(row[static_cast<size_t>(x) * 4u + 1u] / 4u);
            row[static_cast<size_t>(x) * 4u + 2u] = static_cast<uint8_t>(row[static_cast<size_t>(x) * 4u + 2u] / 4u);
        }
    }

    for (size_t character = 0; character < text.size(); ++character)
    {
        const int glyph = text[character];
        if (glyph < 0)
            continue;
        const uint16_t bits = glyphs[static_cast<size_t>(glyph)];
        for (int gy = 0; gy < 5; ++gy)
        {
            for (int gx = 0; gx < 3; ++gx)
            {
                if ((bits & (1u << (gy * 3 + gx))) == 0)
                    continue;
                for (int sy = 0; sy < scale; ++sy)
                {
                    const int y = startY + gy * scale + sy;
                    if (y < 0 || y >= height)
                        continue;
                    uint8_t* row = framebuffer + static_cast<size_t>(y) * pitch;
                    for (int sx = 0; sx < scale; ++sx)
                    {
                        const int x = startX + static_cast<int>(character) * advance + gx * scale + sx;
                        if (x < 0 || x >= width)
                            continue;
                        row[static_cast<size_t>(x) * 4u + 0u] = 255;
                        row[static_cast<size_t>(x) * 4u + 1u] = 255;
                        row[static_cast<size_t>(x) * 4u + 2u] = 255;
                        row[static_cast<size_t>(x) * 4u + 3u] = 255;
                    }
                }
            }
        }
    }
}

// Main raycast rendering function
void renderRaycastView(const TileMap &tileMap,
                       const RaycastPlayer &p,
                       uint8_t *fb,
                       size_t pitch,
                       int w,
                       int h)
{
    // Cache config values once per frame (not per pixel)
    prepareRaycastFrameConfig();
    refreshRaycastModelInstances();
    updateVerticalGradientLut(h);

    // Update fog of war for CPU render path
    updateFogOfWar();

    if (w <= 0 || h <= 0)
        return;

    int nThreads = static_cast<int>(std::thread::hardware_concurrency());
    nThreads = std::clamp(nThreads, 1, w);
    const int ss = resolveCpuRaycastSupersample(tileMap, w, h);
    const int chunk = (w + nThreads - 1) / nThreads;
    std::vector<float> wallDepth(static_cast<size_t>(w), std::numeric_limits<float>::infinity());

    g_threadPool.dispatch(static_cast<unsigned int>(nThreads), [&](int i) {
        int s = i * chunk;
        if (s >= w)
            return;
        int e = (std::min)(w, s + chunk);
        renderChunk(tileMap, p, fb, pitch, w, h, ss, s, e, &wallDepth);
    });

    renderRaycastModels(p, fb, pitch, w, h, wallDepth);

    // Map overlay: CAD-style lines + fog of war + zoom centered on player
    if (state.raycast.showMapOverlay && state.raycast.map)
    {
        const TileMap& m = *state.raycast.map;
        const int mapW = static_cast<int>(m[0].size());
        const int mapH = static_cast<int>(m.size());
        const auto& explored = state.raycast.exploredMap;
        const float zoom = state.raycast.mapOverlayZoom;

        const float maxDim = static_cast<float>(std::max(mapW, mapH));
        float baseCellSize = (std::min(static_cast<float>(w), static_cast<float>(h)) * 0.70f) / maxDim;
        float cellSize = baseCellSize * zoom;
        cellSize = std::max(cellSize, 2.0f);

        // Center on player
        const float centerX = w * 0.5f;
        const float centerY = h * 0.5f;
        const float ox = centerX - p.x * cellSize;
        const float oy = centerY - p.y * cellSize;

        const float plyrPx = centerX;
        const float plyrPy = centerY;
        const float playerRadius = cellSize * 0.35f;

        const float halfFovTan = std::tan(p.fov * 0.5f * g_rayConfig.fovMul);
        const float fovHalf = std::atan(halfFovTan);

        auto pointToSegDist = [](float px2, float py2, float ax, float ay, float bx, float by) -> float {
            float abx = bx - ax, aby = by - ay;
            float dotv = abx * abx + aby * aby;
            if (dotv < 1e-6f) return std::sqrt((px2 - ax) * (px2 - ax) + (py2 - ay) * (py2 - ay));
            float t = std::clamp(((px2 - ax) * abx + (py2 - ay) * aby) / dotv, 0.0f, 1.0f);
            float cx2 = ax + t * abx, cy2 = ay + t * aby;
            return std::sqrt((px2 - cx2) * (px2 - cx2) + (py2 - cy2) * (py2 - cy2));
        };

        auto angleDiff = [](float a, float b) -> float {
            float d = a - b;
            while (d > 3.14159265f) d -= 6.28318531f;
            while (d < -3.14159265f) d += 6.28318531f;
            return d;
        };
        const float overlayRange = std::max(8.0f, std::min(maxDim, 24.0f));

        auto isExplored = [&](int ex, int ey) -> bool {
            if (ex < 0 || ey < 0 || ex >= mapW || ey >= mapH) return false;
            size_t ei = static_cast<size_t>(ey) * static_cast<size_t>(mapW) + static_cast<size_t>(ex);
            return ei < explored.size() && explored[ei] != 0;
        };
        auto isSolid = [&](int sx, int sy) -> bool {
            if (sx < 0 || sy < 0 || sx >= mapW || sy >= mapH) return true;
            uint8_t t = m[static_cast<size_t>(sy)][static_cast<size_t>(sx)];
            return isSolidTile(t);
        };

        for (int y = 0; y < h; ++y)
        {
            for (int x = 0; x < w; ++x)
            {
                size_t idx = static_cast<size_t>(y) * pitch + static_cast<size_t>(x) * 4;
                // Darken scene
                fb[idx]     = static_cast<uint8_t>(fb[idx] * 0.70f);
                fb[idx + 1] = static_cast<uint8_t>(fb[idx + 1] * 0.70f);
                fb[idx + 2] = static_cast<uint8_t>(fb[idx + 2] * 0.70f);

                float r = fb[idx + 2], g2 = fb[idx + 1], bv = fb[idx];

                // Player dot
                float dx2 = static_cast<float>(x) - plyrPx;
                float dy2 = static_cast<float>(y) - plyrPy;
                float distP = std::sqrt(dx2 * dx2 + dy2 * dy2);
                if (distP < playerRadius)
                {
                    float t = (1.0f - distP / playerRadius) * 0.9f;
                    r = r * (1.0f - t) + 255.0f * t;
                    g2 = g2 * (1.0f - t) + 64.0f * t;
                    bv = bv * (1.0f - t) + 64.0f * t;
                    fb[idx] = static_cast<uint8_t>(bv); fb[idx + 1] = static_cast<uint8_t>(g2); fb[idx + 2] = static_cast<uint8_t>(r);
                    continue;
                }

                // Keep the overlay O(screen pixels). Fog-of-war already carries the
                // wall visibility result, so casting another DDA ray per overlay
                // pixel only repeats work and made CPU map mode map-depth times slower.
                {
                    const float worldX = (static_cast<float>(x) - ox) / cellSize;
                    const float worldY = (static_cast<float>(y) - oy) / cellSize;
                    const float vx = worldX - p.x;
                    const float vy = worldY - p.y;
                    const float targetDist = std::sqrt(vx * vx + vy * vy);
                    if (targetDist > 0.001f && targetDist <= overlayRange)
                    {
                        const float ang = std::atan2(vy, vx);
                        if (std::abs(angleDiff(ang, p.angle)) <= fovHalf)
                        {
                            const float fadeStart = overlayRange * 0.65f;
                            const float fadeT = std::clamp((targetDist - fadeStart) /
                                                           std::max(overlayRange - fadeStart, 0.001f),
                                                           0.0f, 1.0f);
                            const float smooth = fadeT * fadeT * (3.0f - 2.0f * fadeT);
                            const float t = 0.22f * (1.0f - smooth);
                            r = r * (1.0f - t) + 255.0f * t;
                            g2 = g2 * (1.0f - t) + 51.0f * t;
                            bv = bv * (1.0f - t) + 51.0f * t;
                        }
                    }
                }

                // Map to world cell coords
                float wpx = (static_cast<float>(x) - ox) / cellSize;
                float wpy = (static_cast<float>(y) - oy) / cellSize;
                int cx = static_cast<int>(std::floor(wpx));
                int cy = static_cast<int>(std::floor(wpy));

                if (cx < 0 || cy < 0 || cx >= mapW || cy >= mapH)
                {
                    fb[idx] = static_cast<uint8_t>(std::clamp(bv, 0.0f, 255.0f));
                    fb[idx + 1] = static_cast<uint8_t>(std::clamp(g2, 0.0f, 255.0f));
                    fb[idx + 2] = static_cast<uint8_t>(std::clamp(r, 0.0f, 255.0f));
                    continue;
                }

                bool cellExplored = isExplored(cx, cy);
                bool solid = isSolid(cx, cy);
                auto isExploredOpen = [&](int tx, int ty) -> bool {
                    if (tx < 0 || ty < 0 || tx >= mapW || ty >= mapH)
                        return false;
                    return isExplored(tx, ty) && !isSolid(tx, ty);
                };

                // Fog of war: skip unexplored cells, UNLESS they are solid and touch an explored cell (to bridge corners)
                if (!cellExplored)
                {
                    if (!solid)
                    {
                    skip_fog:
                        fb[idx] = static_cast<uint8_t>(std::clamp(bv, 0.0f, 255.0f));
                        fb[idx + 1] = static_cast<uint8_t>(std::clamp(g2, 0.0f, 255.0f));
                        fb[idx + 2] = static_cast<uint8_t>(std::clamp(r, 0.0f, 255.0f));
                        continue;
                    }
                    
                    bool nExp = false;
                    for (int dy = -1; dy <= 1; ++dy) {
                        for (int dx = -1; dx <= 1; ++dx) {
                            if ((dx != 0 || dy != 0) && isExploredOpen(cx + dx, cy + dy)) nExp = true;
                        }
                    }
                    if (!nExp) {
                        goto skip_fog;
                    }
                }

                // Robust center-stroke wall rendering using distance-to-segment tests.
                // This avoids corner dropouts when cell centers fall between pixels.
                bool drawLine = false;

                if (solid)
                {
                    const float cfx = ox + (static_cast<float>(cx) + 0.5f) * cellSize;
                    const float cfy = oy + (static_cast<float>(cy) + 0.5f) * cellSize;
                    const float half = cellSize * 0.5f;
                    const float px2 = static_cast<float>(x) + 0.5f;
                    const float py2 = static_cast<float>(y) + 0.5f;
                    const float lineHalfW = 0.82f;

                    bool nConn = (cy > 0) && isSolid(cx, cy - 1);
                    bool sConn = (cy < mapH - 1) && isSolid(cx, cy + 1);
                    bool wConn = (cx > 0) && isSolid(cx - 1, cy);
                    bool eConn = (cx < mapW - 1) && isSolid(cx + 1, cy);

                    bool nVisible = isExploredOpen(cx - 1, cy) || isExploredOpen(cx - 1, cy - 1) ||
                                    isExploredOpen(cx + 1, cy) || isExploredOpen(cx + 1, cy - 1);
                    bool sVisible = isExploredOpen(cx - 1, cy) || isExploredOpen(cx - 1, cy + 1) ||
                                    isExploredOpen(cx + 1, cy) || isExploredOpen(cx + 1, cy + 1);
                    bool wVisible = isExploredOpen(cx, cy - 1) || isExploredOpen(cx - 1, cy - 1) ||
                                    isExploredOpen(cx, cy + 1) || isExploredOpen(cx - 1, cy + 1);
                    bool eVisible = isExploredOpen(cx, cy - 1) || isExploredOpen(cx + 1, cy - 1) ||
                                    isExploredOpen(cx, cy + 1) || isExploredOpen(cx + 1, cy + 1);

                    if (nConn && nVisible && pointToSegDist(px2, py2, cfx, cfy, cfx, cfy - half) <= lineHalfW) drawLine = true;
                    if (sConn && sVisible && pointToSegDist(px2, py2, cfx, cfy, cfx, cfy + half) <= lineHalfW) drawLine = true;
                    if (wConn && wVisible && pointToSegDist(px2, py2, cfx, cfy, cfx - half, cfy) <= lineHalfW) drawLine = true;
                    if (eConn && eVisible && pointToSegDist(px2, py2, cfx, cfy, cfx + half, cfy) <= lineHalfW) drawLine = true;

                    if (!nConn && !sConn && !wConn && !eConn)
                    {
                        const float dcx = px2 - cfx;
                        const float dcy = py2 - cfy;
                        const bool isolatedVisible = isExploredOpen(cx - 1, cy) || isExploredOpen(cx + 1, cy) ||
                                                     isExploredOpen(cx, cy - 1) || isExploredOpen(cx, cy + 1);
                        if (isolatedVisible && std::sqrt(dcx * dcx + dcy * dcy) <= lineHalfW)
                            drawLine = true;
                    }
                }

                if (drawLine)
                {
                    // CAD blue-white line
                    float t = 0.85f;
                    r = r * (1.0f - t) + 153.0f * t;   // 0.6 * 255
                    g2 = g2 * (1.0f - t) + 191.0f * t; // 0.75 * 255
                    bv = bv * (1.0f - t) + 230.0f * t;  // 0.9 * 255
                }

                fb[idx] = static_cast<uint8_t>(std::clamp(bv, 0.0f, 255.0f));
                fb[idx + 1] = static_cast<uint8_t>(std::clamp(g2, 0.0f, 255.0f));
                fb[idx + 2] = static_cast<uint8_t>(std::clamp(r, 0.0f, 255.0f));
            }
        }
    }

    drawMeasuredFpsOverlay(fb, pitch, w, h);
}

static float raycastModelCollisionRadius(const RaycastLoadedModel &model)
{
    if (!model.mesh)
        return 0.0f;

    const RaycastModelMesh &mesh = *model.mesh;
    const float radiusX = (mesh.maxBounds.x - mesh.minBounds.x) * model.scale * 0.5f;
    const float radiusY = (mesh.maxBounds.y - mesh.minBounds.y) * model.scale * 0.5f;
    return std::clamp(std::max(radiusX, radiusY), 0.34f, 0.58f);
}

static bool raycastModelBlocksPoint(float x, float y, float playerRadius)
{
    for (const RaycastLoadedModel &model : g_loadedModels)
    {
        const float radius = raycastModelCollisionRadius(model);
        if (radius <= 0.0f)
            continue;

        const float dx = x - model.instance.x;
        const float dy = y - model.instance.y;
        const float blockRadius = radius + playerRadius;
        if (dx * dx + dy * dy < blockRadius * blockRadius)
            return true;
    }
    return false;
}

// Mouse handling for raycast mode
void handleRaycastMouseMove()
{
    if (!state.raycast.enabled)
        return;

    POINT cursorPos;
    if (!GetCursorPos(&cursorPos))
        return;

    RECT clientRect;
    if (!GetClientRect(g_hwnd, &clientRect))
        return;

    POINT clientCenter = {
        (clientRect.right - clientRect.left) / 2,
        (clientRect.bottom - clientRect.top) / 2};

    if (!ClientToScreen(g_hwnd, &clientCenter))
        return;

    // Calculate mouse delta from the center
    int deltaX = cursorPos.x - clientCenter.x;
    int deltaY = cursorPos.y - clientCenter.y;

    if (deltaX != 0 || deltaY != 0)
    {
        const int clampedDeltaX = std::clamp(deltaX, -320, 320);
        float sensitivitySetting = 50.0f;
        if (config.contains("mlookSensitivity") && config["mlookSensitivity"].is_number())
            sensitivitySetting = std::clamp(config["mlookSensitivity"].get<float>(), 1.0f, 200.0f);
        float sensitivity = (sensitivitySetting / 50.0f) * 0.0050f;
        state.raycast.player.angle += clampedDeltaX * sensitivity;

        // Normalize angle to [0, 2π)
        state.raycast.player.angle = normalizeAngle(state.raycast.player.angle);

        // Reset cursor to center immediately
        SetCursorPos(clientCenter.x, clientCenter.y);

        state.frameTiming.dirtyFrame = true;
    }
}

void handleRaycastMouseDelta(int deltaX, int deltaY)
{
    (void)deltaY; // Reserved for pitch once the raycaster supports vertical look.
    if (!state.raycast.enabled || deltaX == 0)
        return;

    float sensitivitySetting = 50.0f;
    if (config.contains("mlookSensitivity") && config["mlookSensitivity"].is_number())
        sensitivitySetting = std::clamp(config["mlookSensitivity"].get<float>(), 1.0f, 200.0f);

    // Raw counts bypass Windows pointer acceleration. The default is close to
    // classic low-latency FPS mouse scaling while preserving the existing 1..200 UI.
    // Raw mouse counts are much smaller than the recentered Windows cursor
    // deltas used by the legacy path. Keep the default fast enough for an FPS
    // turn without requiring a full mouse-pad sweep.
    constexpr float kRadiansPerRawCountAtDefault = 0.0050f;
    const float sensitivity = (sensitivitySetting / 50.0f) * kRadiansPerRawCountAtDefault;
    state.raycast.player.angle = normalizeAngle(
        state.raycast.player.angle + static_cast<float>(deltaX) * sensitivity);
    state.frameTiming.dirtyFrame = true;
}

// Keyboard input handling
void raycastKeyDown(WPARAM k)
{
    if (k < 256)
        g_keys[k] = true;
}
void raycastKeyUp(WPARAM k)
{
    if (k < 256)
        g_keys[k] = false;
}

void resetRaycastInput()
{
    g_keys.fill(false);
}

//
// Update raycaster movement based on keyboard input
//
void updateRaycasterMovement()
{
    if (!state.raycast.enabled)
        return;

    static std::chrono::steady_clock::time_point lastRaycastUpdate = std::chrono::steady_clock::now();
    const auto currentTime = std::chrono::steady_clock::now();
    float deltaSeconds = std::chrono::duration<float>(currentTime - lastRaycastUpdate).count();
    lastRaycastUpdate = currentTime;

    // Clamp long gaps to keep movement stable after stalls, breakpoints, or focus changes.
    deltaSeconds = std::clamp(deltaSeconds, 0.0f, 0.1f);
    if (deltaSeconds <= 0.0f)
        return;

    if (!state.raycast.map || state.raycast.map->empty())
        return;

    int mapW = static_cast<int>(state.raycast.map->at(0).size());
    int mapH = static_cast<int>(state.raycast.map->size());
    float x = state.raycast.player.x, y = state.raycast.player.y, angle = state.raycast.player.angle;
    float speed = g_keys[VK_SHIFT] ? state.raycast.player.runSpeed : state.raycast.player.walkSpeed;
    // Existing walk/run tuning was authored as a per-frame amount at 60 Hz.
    constexpr float kLegacyMovementHz = 60.0f;
    const float speedPerSecond = speed * kLegacyMovementHz;
    float dx = 0, dy = 0;

    if (g_keys['W'] || g_keys[VK_UP])
    {
        dx += std::cos(angle) * speedPerSecond;
        dy += std::sin(angle) * speedPerSecond;
    }
    if (g_keys['S'] || g_keys[VK_DOWN])
    {
        dx -= std::cos(angle) * speedPerSecond;
        dy -= std::sin(angle) * speedPerSecond;
    }
    if (g_keys['A'] || g_keys[VK_LEFT])
    {
        dx += std::sin(angle) * speedPerSecond;
        dy -= std::cos(angle) * speedPerSecond;
    }
    if (g_keys['D'] || g_keys[VK_RIGHT])
    {
        dx -= std::sin(angle) * speedPerSecond;
        dy += std::cos(angle) * speedPerSecond;
    }

    // Normalize combined input so diagonal travel speed matches forward/back strafe speed.
    const float moveLenSq = dx * dx + dy * dy;
    if (moveLenSq > speedPerSecond * speedPerSecond)
    {
        const float invLen = 1.0f / std::sqrt(moveLenSq);
        dx *= invLen * speedPerSecond;
        dy *= invLen * speedPerSecond;
    }

    dx *= deltaSeconds;
    dy *= deltaSeconds;

    if (dx != 0.0f || dy != 0.0f)
    {
        constexpr float COLLISION_RADIUS = 0.3f;
        constexpr float MAX_MOVE_STEP = 0.15f;

        auto isWallAt = [&](int cx, int cy) -> bool {
            if (cx < 0 || cy < 0 || cx >= mapW || cy >= mapH)
                return true;
            const uint8_t t = (*state.raycast.map)[static_cast<size_t>(cy)][static_cast<size_t>(cx)];
            return isSolidTile(t);
        };

        auto blockedAt = [&](float px, float py) -> bool {
            const int minX = static_cast<int>(std::floor(px - COLLISION_RADIUS));
            const int maxX = static_cast<int>(std::floor(px + COLLISION_RADIUS));
            const int minY = static_cast<int>(std::floor(py - COLLISION_RADIUS));
            const int maxY = static_cast<int>(std::floor(py + COLLISION_RADIUS));
            for (int cy = minY; cy <= maxY; ++cy)
            {
                for (int cx = minX; cx <= maxX; ++cx)
                {
                    if (!isWallAt(cx, cy))
                        continue;
                    const float nearestX = std::clamp(px, static_cast<float>(cx), static_cast<float>(cx + 1));
                    const float nearestY = std::clamp(py, static_cast<float>(cy), static_cast<float>(cy + 1));
                    const float ox = px - nearestX;
                    const float oy = py - nearestY;
                    if (ox * ox + oy * oy < COLLISION_RADIUS * COLLISION_RADIUS)
                        return true;
                }
            }
            return raycastModelBlocksPoint(px, py, COLLISION_RADIUS);
        };

        // Substeps prevent sprinting through a one-cell wall after a long frame.
        // Axis-separated resolution retains the fast, Quake-like wall slide.
        const int moveSteps = std::max(1, static_cast<int>(std::ceil(
            std::max(std::abs(dx), std::abs(dy)) / MAX_MOVE_STEP)));
        const float stepDx = dx / static_cast<float>(moveSteps);
        const float stepDy = dy / static_cast<float>(moveSteps);
        float newX = x;
        float newY = y;
        for (int step = 0; step < moveSteps; ++step)
        {
            if (!blockedAt(newX + stepDx, newY))
                newX += stepDx;
            if (!blockedAt(newX, newY + stepDy))
                newY += stepDy;
        }

        state.raycast.player.x = newX;
        state.raycast.player.y = newY;

        state.frameTiming.dirtyFrame = true;
    }
}

/*
===============================================================================
Function Name: updateFogOfWar

Description:
    - Casts rays inside the camera FOV to reveal only what the player can see.
        - Once a cell is explored, it stays explored permanently.
===============================================================================
*/
void updateFogOfWar()
{
    if (!state.raycast.map || state.raycast.map->empty())
        return;
    const TileMap& m = *state.raycast.map;
    const int mapH = static_cast<int>(m.size());
    const int mapW = static_cast<int>(m[0].size());
    const size_t total = static_cast<size_t>(mapW) * static_cast<size_t>(mapH);
    bool exploredChanged = false;
    if (state.raycast.exploredMap.size() != total)
    {
        state.raycast.exploredMap.assign(total, 0);
        exploredChanged = true;
    }

    auto& explored = state.raycast.exploredMap;
    const float px = state.raycast.player.x;
    const float py = state.raycast.player.y;

    struct FogPose
    {
        const TileMap *map = nullptr;
        uint64_t mapRevision = 0;
        float x = 0.0f;
        float y = 0.0f;
        float angle = 0.0f;
        float fov = 0.0f;
        float fovMul = 0.0f;
        bool valid = false;
    };
    static FogPose lastPose;
    const auto poseUnchanged = [&]() {
        constexpr float epsilon = 0.0001f;
        return lastPose.valid &&
               lastPose.map == state.raycast.map &&
               lastPose.mapRevision == state.raycast.mapRevision &&
               std::abs(lastPose.x - px) < epsilon &&
               std::abs(lastPose.y - py) < epsilon &&
               std::abs(lastPose.angle - state.raycast.player.angle) < epsilon &&
               std::abs(lastPose.fov - state.raycast.player.fov) < epsilon &&
               std::abs(lastPose.fovMul - g_rayConfig.fovMul) < epsilon;
    };
    if (!exploredChanged && poseUnchanged())
        return;
    lastPose = {state.raycast.map, state.raycast.mapRevision, px, py,
                state.raycast.player.angle, state.raycast.player.fov,
                g_rayConfig.fovMul, true};

    // Mark the player's cell as explored
    int pcx = static_cast<int>(px);
    int pcy = static_cast<int>(py);
    if (pcx >= 0 && pcx < mapW && pcy >= 0 && pcy < mapH)
    {
        uint8_t &cell = explored[static_cast<size_t>(pcy) * static_cast<size_t>(mapW) + static_cast<size_t>(pcx)];
        exploredChanged |= cell == 0;
        cell = 1;
    }

    // Match exploration to the rendered camera frustum instead of 360-degree reveal.
    const int NUM_RAYS = std::clamp(state.ui.width / 4, 128, 384);
    constexpr float MAX_DIST = 50.0f;
    const float halfFovTan = std::tan(state.raycast.player.fov * 0.5f * g_rayConfig.fovMul);
    const float forwardX = std::cos(state.raycast.player.angle);
    const float forwardY = std::sin(state.raycast.player.angle);
    const float rightX = -forwardY;
    const float rightY = forwardX;
    for (int r = 0; r < NUM_RAYS; ++r)
    {
        float camX = 2.0f * ((static_cast<float>(r) + 0.5f) / static_cast<float>(NUM_RAYS)) - 1.0f;
        float viewX = camX * halfFovTan;
        const float invLength = 1.0f / std::sqrt(1.0f + viewX * viewX);
        const float dirX = (forwardX + rightX * viewX) * invLength;
        const float dirY = (forwardY + rightY * viewX) * invLength;

        // DDA setup
        int mapX = static_cast<int>(std::floor(px));
        int mapY = static_cast<int>(std::floor(py));
        float deltaDistX = (dirX == 0.0f) ? 1e30f : std::abs(1.0f / dirX);
        float deltaDistY = (dirY == 0.0f) ? 1e30f : std::abs(1.0f / dirY);
        int stepX, stepY;
        float sideDistX, sideDistY;

        if (dirX < 0.0f) { stepX = -1; sideDistX = (px - mapX) * deltaDistX; }
        else              { stepX =  1; sideDistX = (mapX + 1.0f - px) * deltaDistX; }
        if (dirY < 0.0f) { stepY = -1; sideDistY = (py - mapY) * deltaDistY; }
        else              { stepY =  1; sideDistY = (mapY + 1.0f - py) * deltaDistY; }

        // Step through cells
        for (int step = 0; step < 200; ++step)
        {
            if (sideDistX < sideDistY)
            {
                sideDistX += deltaDistX;
                mapX += stepX;
            }
            else
            {
                sideDistY += deltaDistY;
                mapY += stepY;
            }

            // Bounds check
            if (mapX < 0 || mapX >= mapW || mapY < 0 || mapY >= mapH)
                break;

            // Distance check
            float dist = std::min(sideDistX, sideDistY);
            if (dist > MAX_DIST)
                break;

            uint8_t tile = m[static_cast<size_t>(mapY)][static_cast<size_t>(mapX)];
            if (isSolidTile(tile))
                break;

            // Only walkable/view-through cells become explored state.
            uint8_t &cell = explored[static_cast<size_t>(mapY) * static_cast<size_t>(mapW) + static_cast<size_t>(mapX)];
            exploredChanged |= cell == 0;
            cell = 1;
        }
    }
    if (exploredChanged)
        ++state.raycast.exploredRevision;
}

/*
===============================================================================
Function Name: initRaycaster

Description:
        - Initializes the raycaster with default player position and settings.
        - Sets the field of view based on configuration.
===============================================================================
*/
void initRaycaster()
{
    state.raycast.enabled = true;
    state.raycast.map = &map;
    ++state.raycast.mapRevision;
    state.raycast.mapPropertiesValid = false;
    (void)raycastMapHasArchitecturalFeatures(map);
    // Rendering is already presented with vsync; drive simulation/render requests
    // at the active monitor's cadence instead of imposing a 60 Hz ceiling.
    state.frameTiming.currentFPS = static_cast<double>(std::max(1, getDisplayRefreshRate()));
    bool hasStateFov = false;
    if (config.contains("gameState") && config["gameState"].is_object())
    {
        const auto& gameState = config["gameState"];
        if (gameState.contains("raycast") && gameState["raycast"].is_object())
        {
            const auto& raycast = gameState["raycast"];
            if (raycast.contains("player") && raycast["player"].is_object())
            {
                const auto& player = raycast["player"];
                hasStateFov = player.contains("fov") && player["fov"].is_number();
            }
        }
    }
    if (config.contains("raycastFov") && config["raycastFov"].is_number())
    {
        state.raycast.player.fov = deg2rad(std::clamp(config["raycastFov"].get<float>(), 30.0f, 170.0f));
    }
    else if (!hasStateFov)
    {
        float fovDeg = config.contains("raycastFov") && config["raycastFov"].is_number()
                           ? static_cast<float>(config["raycastFov"])
                           : 90.0f;
        state.raycast.player.fov = deg2rad(fovDeg);
    }
    if (!std::isfinite(state.raycast.player.fov) || state.raycast.player.fov <= 0.0f)
        state.raycast.player.fov = deg2rad(90.0f);

    // Initialize fog-of-war explored map
    if (!map.empty() && !map[0].empty())
    {
        size_t total = map.size() * map[0].size();
        state.raycast.exploredMap.assign(total, 0);
        ++state.raycast.exploredRevision;
    }

    loadRaycastModelInstances();
    loadConfiguredBackWallTexture();

    // Hide the OS cursor in raycast mode to avoid visible system pointer
    ShowCursor(FALSE);

    // Megatexture is optional in raycast mode.
    if (state.raycast.useMegatexture)
    {
        // Ensure megatexture is ready (avoid duplicate heavy work if main already did it)
        if (megatex.edges.empty())
            analyzeMapEdges(map);
        if (!megatex.loaded)
        {
            if (!loadMTX("basement.mtx"))
                loadMTX("megatexture.mtx");
        }
    }

    if (!initializePlayerFromMap(*state.raycast.map, state.raycast.player))
    {
#ifdef _WIN32
        MessageBoxA(nullptr, "No player start position found in the map!", "Error", MB_ICONERROR | MB_OK);
#endif
    }

    state.animation.reset();
    state.transient_animation.reset();
}
