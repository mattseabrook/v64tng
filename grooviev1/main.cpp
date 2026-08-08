#define NOMINMAX
#include <windows.h>
#include <wincodec.h>

#include <algorithm>
#include <array>
#include <cctype>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <limits>
#include <map>
#include <span>
#include <string>
#include <string_view>
#include <unordered_map>
#include <utility>
#include <vector>

namespace fs = std::filesystem;

struct RGB
{
    uint8_t r;
    uint8_t g;
    uint8_t b;
};

struct Options
{
    std::vector<std::string> framePaths;
    std::string inputDir;
    std::string outputPath;
    std::string wavPath;
    int width = 0;
    int height = 0;
    int resizeWidth = 0;
    int resizeHeight = 0;
    int fps = 15;
    int lowerIntermediateQuality = -1;
    size_t audioChunkBytes = 2048;
    int maxLocalPaletteUpdates = 32;
    bool rawInput = false;
    bool compress = true;
    bool validate = true;
    uint8_t lengthMask = 0x7F;
    uint8_t lengthBits = 7;
};

struct Block
{
    uint8_t type = 0;
    std::vector<uint8_t> data;
};

static constexpr std::array<uint8_t, 192> kMapField = {
    0x00, 0xc8, 0x80, 0xec, 0xc8, 0xfe, 0xec, 0xff, 0xfe, 0xff, 0x00, 0x31, 0x10, 0x73, 0x31, 0xf7,
    0x73, 0xff, 0xf7, 0xff, 0x80, 0x6c, 0xc8, 0x36, 0x6c, 0x13, 0x10, 0x63, 0x31, 0xc6, 0x63, 0x8c,
    0x00, 0xf0, 0x00, 0xff, 0xf0, 0xff, 0x11, 0x11, 0x33, 0x33, 0x77, 0x77, 0x66, 0x66, 0xcc, 0xcc,
    0xf0, 0x0f, 0xff, 0x00, 0xcc, 0xff, 0x76, 0x00, 0x33, 0xff, 0xe6, 0x0e, 0xff, 0xcc, 0x70, 0x67,
    0xff, 0x33, 0xe0, 0x6e, 0x00, 0x48, 0x80, 0x24, 0x48, 0x12, 0x24, 0x00, 0x12, 0x00, 0x00, 0x21,
    0x10, 0x42, 0x21, 0x84, 0x42, 0x00, 0x84, 0x00, 0x88, 0xf8, 0x44, 0x00, 0x32, 0x00, 0x1f, 0x11,
    0xe0, 0x22, 0x00, 0x4c, 0x8f, 0x88, 0x70, 0x44, 0x00, 0x23, 0x11, 0xf1, 0x22, 0x0e, 0xc4, 0x00,
    0x3f, 0xf3, 0xcf, 0xfc, 0x99, 0xff, 0xff, 0x99, 0x44, 0x44, 0x22, 0x22, 0xee, 0xcc, 0x33, 0x77,
    0xf8, 0x00, 0xf1, 0x00, 0xbb, 0x00, 0xdd, 0x0c, 0x0f, 0x0f, 0x88, 0x0f, 0xf1, 0x13, 0xb3, 0x19,
    0x80, 0x1f, 0x6f, 0x22, 0xec, 0x27, 0x77, 0x30, 0x67, 0x32, 0xe4, 0x37, 0xe3, 0x38, 0x90, 0x3f,
    0xcf, 0x44, 0xd9, 0x4c, 0x99, 0x4c, 0x55, 0x55, 0x3f, 0x60, 0x77, 0x60, 0x37, 0x62, 0xc9, 0x64,
    0xcd, 0x64, 0xd9, 0x6c, 0xef, 0x70, 0x00, 0x0f, 0xf0, 0x00, 0x00, 0x00, 0x44, 0x44, 0x22, 0x22};

struct EncodeStats
{
    size_t opMap = 0;
    size_t op60 = 0;
    size_t op61 = 0;
    size_t opSkip = 0;
    size_t opSolidRun = 0;
    size_t opSolidSeq = 0;
    size_t opGeneric = 0;
    size_t localPaletteUpdates = 0;
};

static void printUsage()
{
    std::cout
        << "grooviev1 - standalone VDX encoder (0x20/0x25/0x00/0x80)\n\n"
        << "Commands:\n"
        << "  encode         Encode image sequence to VDX (default when no subcommand is given)\n"
        << "  archive-pack   Pack loose files into .GJD and generate matching .RL\n"
        << "  archive-list   List entries from an .RL/.GJD pair\n"
        << "  archive-unpack Extract entries from an .RL/.GJD pair\n\n"
        << "Usage:\n"
        << "  grooviev1.exe --output out.vdx [options] frame1 frame2 ...\n"
        << "  grooviev1.exe --output out.vdx --input-dir frames [options]\n\n"
        << "Options:\n"
        << "  --output PATH                      Output VDX file (required)\n"
        << "  --input-dir DIR                    Read frames from DIR (sorted by name)\n"
        << "  --raw                              Treat frames as raw RGB24 files\n"
        << "  --width N                          Required for --raw\n"
        << "  --height N                         Required for --raw\n"
        << "  --resize WxH                       Resize all frames before encoding\n"
        << "  --dos-canonical                    Alias for --resize 640x320\n"
        << "  --fps N                            VDX header frame rate (default: 15)\n"
        << "  --wav PATH                         Optional WAV audio for 0x80 interleave\n"
        << "  --audio-chunk-bytes N              0x80 chunk payload size (default: 2048)\n"
        << "  --lower-intermediate-quality 0..9  Lower quality for frames 1..N-1 only\n"
        << "  --max-local-palette-updates N      Max per 0x25 local palette edits\n"
        << "  --no-compress                      Disable VDX LZSS compression\n"
        << "  --length-mask N                    LZSS length mask (default: 127)\n"
        << "  --length-bits N                    LZSS length bits (default: 7)\n"
        << "  --no-validate                      Skip internal round-trip validation\n\n"
        << "Archive usage:\n"
        << "  grooviev1.exe archive-pack --rl ROOM.RL --gjd ROOM.GJD [--input-dir DIR] [files...]\n"
        << "  grooviev1.exe archive-list --rl ROOM.RL [--gjd ROOM.GJD]\n"
        << "  grooviev1.exe archive-unpack --rl ROOM.RL --out-dir DIR [--gjd ROOM.GJD]\n";
}

static bool parseInt(const std::string &s, int &out)
{
    try
    {
        size_t idx = 0;
        const int v = std::stoi(s, &idx, 0);
        if (idx != s.size())
            return false;
        out = v;
        return true;
    }
    catch (...)
    {
        return false;
    }
}

static bool parseSizeT(const std::string &s, size_t &out)
{
    try
    {
        size_t idx = 0;
        const unsigned long long v = std::stoull(s, &idx, 0);
        if (idx != s.size())
            return false;
        out = static_cast<size_t>(v);
        return true;
    }
    catch (...)
    {
        return false;
    }
}

static bool parseSizeSpec(const std::string &s, int &w, int &h)
{
    const size_t x = s.find_first_of("xX");
    if (x == std::string::npos)
        return false;
    int pw = 0;
    int ph = 0;
    if (!parseInt(s.substr(0, x), pw) || !parseInt(s.substr(x + 1), ph))
        return false;
    if (pw <= 0 || ph <= 0)
        return false;
    w = pw;
    h = ph;
    return true;
}

static bool parseOptions(int argc, char **argv, Options &opt)
{
    for (int i = 1; i < argc; ++i)
    {
        const std::string arg = argv[i];
        auto needValue = [&](const char *name) -> const char * {
            if (i + 1 >= argc)
            {
                std::cerr << "Missing value for " << name << "\n";
                return nullptr;
            }
            return argv[++i];
        };

        if (arg == "--output")
        {
            const char *v = needValue("--output");
            if (!v)
                return false;
            opt.outputPath = v;
        }
        else if (arg == "--input-dir")
        {
            const char *v = needValue("--input-dir");
            if (!v)
                return false;
            opt.inputDir = v;
        }
        else if (arg == "--wav")
        {
            const char *v = needValue("--wav");
            if (!v)
                return false;
            opt.wavPath = v;
        }
        else if (arg == "--width")
        {
            const char *v = needValue("--width");
            if (!v || !parseInt(v, opt.width))
                return false;
        }
        else if (arg == "--height")
        {
            const char *v = needValue("--height");
            if (!v || !parseInt(v, opt.height))
                return false;
        }
        else if (arg == "--resize")
        {
            const char *v = needValue("--resize");
            if (!v || !parseSizeSpec(v, opt.resizeWidth, opt.resizeHeight))
                return false;
        }
        else if (arg == "--dos-canonical")
        {
            opt.resizeWidth = 640;
            opt.resizeHeight = 320;
        }
        else if (arg == "--fps")
        {
            const char *v = needValue("--fps");
            if (!v || !parseInt(v, opt.fps))
                return false;
        }
        else if (arg == "--lower-intermediate-quality")
        {
            const char *v = needValue("--lower-intermediate-quality");
            if (!v || !parseInt(v, opt.lowerIntermediateQuality))
                return false;
        }
        else if (arg == "--max-local-palette-updates")
        {
            const char *v = needValue("--max-local-palette-updates");
            if (!v || !parseInt(v, opt.maxLocalPaletteUpdates))
                return false;
        }
        else if (arg == "--audio-chunk-bytes")
        {
            const char *v = needValue("--audio-chunk-bytes");
            if (!v || !parseSizeT(v, opt.audioChunkBytes))
                return false;
        }
        else if (arg == "--length-mask")
        {
            int v = 0;
            const char *s = needValue("--length-mask");
            if (!s || !parseInt(s, v) || v < 0 || v > 255)
                return false;
            opt.lengthMask = static_cast<uint8_t>(v);
        }
        else if (arg == "--length-bits")
        {
            int v = 0;
            const char *s = needValue("--length-bits");
            if (!s || !parseInt(s, v) || v <= 0 || v > 8)
                return false;
            opt.lengthBits = static_cast<uint8_t>(v);
        }
        else if (arg == "--raw")
        {
            opt.rawInput = true;
        }
        else if (arg == "--no-compress")
        {
            opt.compress = false;
        }
        else if (arg == "--no-validate")
        {
            opt.validate = false;
        }
        else if (arg == "--help" || arg == "-h")
        {
            printUsage();
            return false;
        }
        else
        {
            opt.framePaths.push_back(arg);
        }
    }

    if (opt.outputPath.empty())
    {
        std::cerr << "--output is required\n";
        return false;
    }
    if (opt.fps < 1 || opt.fps > 65535)
    {
        std::cerr << "--fps must be in [1, 65535]\n";
        return false;
    }
    if (opt.lowerIntermediateQuality != -1 && (opt.lowerIntermediateQuality < 0 || opt.lowerIntermediateQuality > 9))
    {
        std::cerr << "--lower-intermediate-quality must be in [0, 9]\n";
        return false;
    }
    if (opt.maxLocalPaletteUpdates < 0 || opt.maxLocalPaletteUpdates > 256)
    {
        std::cerr << "--max-local-palette-updates must be in [0, 256]\n";
        return false;
    }
    if (opt.audioChunkBytes == 0)
    {
        std::cerr << "--audio-chunk-bytes must be > 0\n";
        return false;
    }

    if (!opt.inputDir.empty() && opt.framePaths.empty())
    {
        std::vector<std::string> discovered;
        const std::array<std::string, 9> exts = {
            ".png", ".bmp", ".jpg", ".jpeg", ".tif", ".tiff", ".gif", ".webp", ".raw"};

        for (const auto &entry : fs::directory_iterator(opt.inputDir))
        {
            if (!entry.is_regular_file())
                continue;
            const std::string ext = entry.path().extension().string();
            std::string lower = ext;
            std::transform(lower.begin(), lower.end(), lower.begin(), [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
            if (std::find(exts.begin(), exts.end(), lower) != exts.end())
                discovered.push_back(entry.path().string());
        }
        std::sort(discovered.begin(), discovered.end());
        opt.framePaths = std::move(discovered);
    }

    if (opt.framePaths.empty())
    {
        std::cerr << "No input frames provided\n";
        return false;
    }

    if (opt.rawInput && (opt.width <= 0 || opt.height <= 0 || (opt.width % 4) != 0 || (opt.height % 4) != 0))
    {
        std::cerr << "RAW mode requires --width/--height, each divisible by 4\n";
        return false;
    }

    if ((opt.resizeWidth != 0 || opt.resizeHeight != 0) && ((opt.resizeWidth % 4) != 0 || (opt.resizeHeight % 4) != 0))
    {
        std::cerr << "Resize dimensions must be divisible by 4\n";
        return false;
    }

    return true;
}

static std::wstring utf8ToWide(const std::string &s)
{
    if (s.empty())
        return {};
    const int count = MultiByteToWideChar(CP_UTF8, 0, s.c_str(), -1, nullptr, 0);
    if (count <= 0)
        throw std::runtime_error("UTF-8 to UTF-16 conversion failed");
    std::wstring out(static_cast<size_t>(count), L'\0');
    MultiByteToWideChar(CP_UTF8, 0, s.c_str(), -1, out.data(), count);
    if (!out.empty() && out.back() == L'\0')
        out.pop_back();
    return out;
}

class ComInit
{
public:
    ComInit()
    {
        HRESULT hr = CoInitializeEx(nullptr, COINIT_MULTITHREADED);
        if (FAILED(hr) && hr != RPC_E_CHANGED_MODE)
            throw std::runtime_error("CoInitializeEx failed");
    }
    ~ComInit() { CoUninitialize(); }
};

template <typename T>
class ComPtr
{
public:
    ComPtr() = default;
    ~ComPtr() { reset(); }
    T **put()
    {
        reset();
        return &p_;
    }
    T *get() const { return p_; }
    T *operator->() const { return p_; }
    void reset()
    {
        if (p_)
        {
            p_->Release();
            p_ = nullptr;
        }
    }

private:
    T *p_ = nullptr;
};

static std::vector<uint8_t> resizeNearestRGB(const std::vector<uint8_t> &src, int sw, int sh, int dw, int dh)
{
    if (sw == dw && sh == dh)
        return src;

    std::vector<uint8_t> out(static_cast<size_t>(dw) * static_cast<size_t>(dh) * 3);
    for (int y = 0; y < dh; ++y)
    {
        const int sy = (y * sh) / dh;
        for (int x = 0; x < dw; ++x)
        {
            const int sx = (x * sw) / dw;
            const size_t s = (static_cast<size_t>(sy) * static_cast<size_t>(sw) + static_cast<size_t>(sx)) * 3;
            const size_t d = (static_cast<size_t>(y) * static_cast<size_t>(dw) + static_cast<size_t>(x)) * 3;
            out[d + 0] = src[s + 0];
            out[d + 1] = src[s + 1];
            out[d + 2] = src[s + 2];
        }
    }
    return out;
}

static std::vector<uint8_t> loadImageWicRGB24(const std::string &path, int &width, int &height)
{
    ComPtr<IWICImagingFactory> factory;
    HRESULT hr = CoCreateInstance(CLSID_WICImagingFactory, nullptr, CLSCTX_INPROC_SERVER,
                                  IID_IWICImagingFactory, reinterpret_cast<void **>(factory.put()));
    if (FAILED(hr))
        throw std::runtime_error("Failed to create WIC factory");

    ComPtr<IWICBitmapDecoder> decoder;
    const std::wstring wpath = utf8ToWide(path);
    hr = factory->CreateDecoderFromFilename(wpath.c_str(), nullptr, GENERIC_READ,
                                            WICDecodeMetadataCacheOnDemand, decoder.put());
    if (FAILED(hr))
        throw std::runtime_error("WIC failed to open image: " + path);

    ComPtr<IWICBitmapFrameDecode> frame;
    hr = decoder->GetFrame(0, frame.put());
    if (FAILED(hr))
        throw std::runtime_error("WIC failed to read image frame: " + path);

    UINT w = 0;
    UINT h = 0;
    hr = frame->GetSize(&w, &h);
    if (FAILED(hr) || w == 0 || h == 0)
        throw std::runtime_error("WIC invalid image size: " + path);

    ComPtr<IWICFormatConverter> converter;
    hr = factory->CreateFormatConverter(converter.put());
    if (FAILED(hr))
        throw std::runtime_error("WIC failed to create format converter");

    hr = converter->Initialize(frame.get(), GUID_WICPixelFormat24bppRGB,
                               WICBitmapDitherTypeNone, nullptr, 0.0,
                               WICBitmapPaletteTypeCustom);
    if (FAILED(hr))
        throw std::runtime_error("WIC conversion to RGB24 failed: " + path);

    std::vector<uint8_t> rgb(static_cast<size_t>(w) * static_cast<size_t>(h) * 3);
    hr = converter->CopyPixels(nullptr, w * 3, static_cast<UINT>(rgb.size()), rgb.data());
    if (FAILED(hr))
        throw std::runtime_error("WIC failed to copy pixels: " + path);

    width = static_cast<int>(w);
    height = static_cast<int>(h);
    return rgb;
}

static std::vector<uint8_t> loadRawRGB24(const std::string &path, int width, int height)
{
    const size_t expected = static_cast<size_t>(width) * static_cast<size_t>(height) * 3;
    std::ifstream in(path, std::ios::binary);
    if (!in)
        throw std::runtime_error("Failed to open RAW frame: " + path);
    in.seekg(0, std::ios::end);
    const size_t size = static_cast<size_t>(in.tellg());
    in.seekg(0, std::ios::beg);
    if (size != expected)
        throw std::runtime_error("RAW size mismatch for frame: " + path);

    std::vector<uint8_t> data(size);
    in.read(reinterpret_cast<char *>(data.data()), static_cast<std::streamsize>(size));
    return data;
}

static uint8_t quantizeChannel(uint8_t v, int quality)
{
    const int bits = std::max(1, 1 + (quality * 7) / 9);
    const int levels = (1 << bits) - 1;
    const int q = static_cast<int>((static_cast<unsigned int>(v) * levels + 127) / 255);
    const int back = (q * 255 + levels / 2) / levels;
    return static_cast<uint8_t>(std::clamp(back, 0, 255));
}

static void applyQuality(std::vector<uint8_t> &rgb, int quality)
{
    for (size_t i = 0; i + 2 < rgb.size(); i += 3)
    {
        rgb[i + 0] = quantizeChannel(rgb[i + 0], quality);
        rgb[i + 1] = quantizeChannel(rgb[i + 1], quality);
        rgb[i + 2] = quantizeChannel(rgb[i + 2], quality);
    }
}

static inline uint32_t rgbKey(uint8_t r, uint8_t g, uint8_t b)
{
    return (static_cast<uint32_t>(r) << 16) | (static_cast<uint32_t>(g) << 8) | b;
}

static std::vector<RGB> buildPalette(const std::vector<uint8_t> &frame)
{
    std::unordered_map<uint32_t, uint32_t> hist;
    hist.reserve(1 << 15);

    for (size_t i = 0; i + 2 < frame.size(); i += 3)
        hist[rgbKey(frame[i], frame[i + 1], frame[i + 2])]++;

    std::vector<std::pair<uint32_t, uint32_t>> items;
    items.reserve(hist.size());
    for (const auto &kv : hist)
        items.push_back(kv);

    std::sort(items.begin(), items.end(), [](const auto &a, const auto &b) {
        if (a.second != b.second)
            return a.second > b.second;
        return a.first < b.first;
    });

    std::vector<RGB> palette;
    palette.reserve(256);
    for (size_t i = 0; i < items.size() && palette.size() < 256; ++i)
    {
        const uint32_t key = items[i].first;
        palette.push_back(RGB{
            static_cast<uint8_t>((key >> 16) & 0xFF),
            static_cast<uint8_t>((key >> 8) & 0xFF),
            static_cast<uint8_t>(key & 0xFF)});
    }

    for (int r = 0; palette.size() < 256 && r < 8; ++r)
        for (int g = 0; palette.size() < 256 && g < 8; ++g)
            for (int b = 0; palette.size() < 256 && b < 4; ++b)
                palette.push_back(RGB{static_cast<uint8_t>((r * 255) / 7), static_cast<uint8_t>((g * 255) / 7), static_cast<uint8_t>((b * 255) / 3)});

    while (palette.size() < 256)
        palette.push_back(RGB{0, 0, 0});

    return palette;
}

static uint8_t nearestPaletteIndex(const std::vector<RGB> &palette, uint8_t r, uint8_t g, uint8_t b, int *outError = nullptr)
{
    int best = std::numeric_limits<int>::max();
    uint8_t bestIdx = 0;
    for (size_t i = 0; i < palette.size(); ++i)
    {
        const int dr = static_cast<int>(r) - static_cast<int>(palette[i].r);
        const int dg = static_cast<int>(g) - static_cast<int>(palette[i].g);
        const int db = static_cast<int>(b) - static_cast<int>(palette[i].b);
        const int d = dr * dr + dg * dg + db * db;
        if (d < best)
        {
            best = d;
            bestIdx = static_cast<uint8_t>(i);
            if (d == 0)
                break;
        }
    }
    if (outError)
        *outError = best;
    return bestIdx;
}

static std::vector<uint8_t> rgbToIndexed(const std::vector<uint8_t> &rgb, const std::vector<RGB> &palette)
{
    std::vector<uint8_t> idx(rgb.size() / 3);
    std::unordered_map<uint32_t, uint8_t> cache;
    cache.reserve(1 << 15);

    for (size_t i = 0, p = 0; i + 2 < rgb.size(); i += 3, ++p)
    {
        const uint8_t r = rgb[i + 0];
        const uint8_t g = rgb[i + 1];
        const uint8_t b = rgb[i + 2];
        const uint32_t key = rgbKey(r, g, b);
        const auto it = cache.find(key);
        if (it != cache.end())
        {
            idx[p] = it->second;
        }
        else
        {
            const uint8_t found = nearestPaletteIndex(palette, r, g, b);
            cache.emplace(key, found);
            idx[p] = found;
        }
    }
    return idx;
}

static inline uint16_t readLE16(const uint8_t *p)
{
    return static_cast<uint16_t>(p[0]) | (static_cast<uint16_t>(p[1]) << 8);
}

static inline void writeLE16(std::vector<uint8_t> &out, uint16_t v)
{
    out.push_back(static_cast<uint8_t>(v & 0xFF));
    out.push_back(static_cast<uint8_t>((v >> 8) & 0xFF));
}

static std::vector<uint8_t> lzssCompress(const std::vector<uint8_t> &inputData, uint8_t lengthMask, uint8_t lengthBits)
{
    (void)lengthMask;
    const uint16_t N = 1 << (16 - lengthBits);
    const uint16_t F = 1 << lengthBits;
    const uint8_t threshold = 3;

    std::vector<uint8_t> compressedData;
    compressedData.reserve(inputData.size() / 2 + 16);
    std::vector<uint8_t> hisBuf(N);
    size_t hisBufPos = N - F;
    size_t pos = 0;

    while (pos < inputData.size())
    {
        uint8_t flags = 0;
        size_t flagsPos = compressedData.size();
        compressedData.push_back(0);

        for (int i = 0; i < 8 && pos < inputData.size(); ++i)
        {
            size_t maxMatchLength = 0;
            size_t matchOffset = 0;

            for (size_t j = 1; j <= N && pos >= j; ++j)
            {
                size_t k = (hisBufPos - j) & (N - 1);
                size_t matchLength = 0;
                while (matchLength < F && pos + matchLength < inputData.size() &&
                       hisBuf[(k + matchLength) & (N - 1)] == inputData[pos + matchLength])
                    ++matchLength;

                if (matchLength > maxMatchLength)
                {
                    maxMatchLength = matchLength;
                    matchOffset = j;
                }
                if (maxMatchLength == F)
                    break;
            }

            if (maxMatchLength >= threshold)
            {
                uint16_t length = static_cast<uint16_t>(maxMatchLength - threshold);
                uint16_t ofsLen = static_cast<uint16_t>((matchOffset << lengthBits) | length);
                compressedData.push_back(static_cast<uint8_t>(ofsLen & 0xFF));
                compressedData.push_back(static_cast<uint8_t>((ofsLen >> 8) & 0xFF));
                flags &= ~(1 << i);

                for (size_t j = 0; j < maxMatchLength; ++j)
                {
                    hisBuf[hisBufPos] = inputData[pos++];
                    hisBufPos = (hisBufPos + 1) & (N - 1);
                }
            }
            else
            {
                uint8_t b = inputData[pos++];
                compressedData.push_back(b);
                hisBuf[hisBufPos] = b;
                hisBufPos = (hisBufPos + 1) & (N - 1);
                flags |= (1 << i);
            }
        }
        compressedData[flagsPos] = flags;
    }

    compressedData.push_back(0);
    compressedData.push_back(0);
    return compressedData;
}

static std::vector<uint8_t> encodeStill0x20(const std::vector<uint8_t> &indexed,
                                            const std::vector<RGB> &palette,
                                            int width,
                                            int height)
{
    const int tilesX = width / 4;
    const int tilesY = height / 4;

    std::vector<uint8_t> out;
    out.reserve(6 + 768 + static_cast<size_t>(tilesX) * static_cast<size_t>(tilesY) * 4);

    writeLE16(out, static_cast<uint16_t>(tilesX));
    writeLE16(out, static_cast<uint16_t>(tilesY));
    writeLE16(out, 8);

    for (const auto &c : palette)
    {
        out.push_back(c.r);
        out.push_back(c.g);
        out.push_back(c.b);
    }

    std::array<uint8_t, 16> tile{};

    for (int ty = 0; ty < tilesY; ++ty)
    {
        for (int tx = 0; tx < tilesX; ++tx)
        {
            std::map<uint8_t, int> count;
            for (int py = 0; py < 4; ++py)
            {
                for (int px = 0; px < 4; ++px)
                {
                    const size_t idx = static_cast<size_t>((ty * 4 + py) * width + (tx * 4 + px));
                    const uint8_t v = indexed[idx];
                    tile[py * 4 + px] = v;
                    count[v]++;
                }
            }

            uint8_t c0 = tile[0];
            uint8_t c1 = tile[0];
            int bestA = -1;
            int bestB = -1;
            for (const auto &[k, v] : count)
            {
                if (v > bestA)
                {
                    bestB = bestA;
                    c1 = c0;
                    bestA = v;
                    c0 = k;
                }
                else if (v > bestB)
                {
                    bestB = v;
                    c1 = k;
                }
            }

            uint16_t map = 0;
            for (int i = 0; i < 16; ++i)
            {
                map <<= 1;
                const uint8_t v = tile[i];
                const bool pickC1 = (v == c1) || (v != c0 && v != c1);
                if (pickC1)
                    map |= 1;
            }

            out.push_back(c1);
            out.push_back(c0);
            writeLE16(out, map);
        }
    }

    return out;
}

static bool tileEqual(const std::vector<uint8_t> &a,
                      const std::vector<uint8_t> &b,
                      int width,
                      int tileX,
                      int tileY)
{
    for (int py = 0; py < 4; ++py)
        for (int px = 0; px < 4; ++px)
        {
            const size_t idx = static_cast<size_t>((tileY * 4 + py) * width + (tileX * 4 + px));
            if (a[idx] != b[idx])
                return false;
        }
    return true;
}

static bool tileSolid(const std::vector<uint8_t> &frame,
                      int width,
                      int tileX,
                      int tileY,
                      uint8_t &color)
{
    const size_t base = static_cast<size_t>((tileY * 4) * width + (tileX * 4));
    const uint8_t c = frame[base];
    for (int py = 0; py < 4; ++py)
        for (int px = 0; px < 4; ++px)
        {
            const size_t idx = static_cast<size_t>((tileY * 4 + py) * width + (tileX * 4 + px));
            if (frame[idx] != c)
                return false;
        }
    color = c;
    return true;
}

static void readTile(const std::vector<uint8_t> &frame,
                     int width,
                     int tileX,
                     int tileY,
                     std::array<uint8_t, 16> &tile)
{
    for (int py = 0; py < 4; ++py)
        for (int px = 0; px < 4; ++px)
        {
            const size_t idx = static_cast<size_t>((tileY * 4 + py) * width + (tileX * 4 + px));
            tile[py * 4 + px] = frame[idx];
        }
}

static void emitGeneric2Color(std::vector<uint8_t> &out,
                              const std::array<uint8_t, 16> &tile,
                              uint8_t c0,
                              uint8_t c1)
{
    uint16_t map = 0;
    for (int i = 0; i < 16; ++i)
    {
        map <<= 1;
        if (tile[i] == c1)
            map |= 1;
    }

    out.push_back(static_cast<uint8_t>(map & 0xFF));
    out.push_back(static_cast<uint8_t>((map >> 8) & 0xFF));
    out.push_back(c1);
    out.push_back(c0);
}

static bool chooseBestPairForMap(const std::array<uint8_t, 16> &tile,
                                 const std::unordered_map<uint16_t, uint8_t> &mapToOpcode,
                                 uint8_t &outOpcode,
                                 uint8_t &outC0,
                                 uint8_t &outC1)
{
    std::map<uint8_t, int> freq;
    for (uint8_t c : tile)
        freq[c]++;

    std::vector<uint8_t> colors;
    colors.reserve(freq.size());
    for (const auto &[c, _] : freq)
        colors.push_back(c);

    std::sort(colors.begin(), colors.end(), [&](uint8_t a, uint8_t b) {
        return freq[a] > freq[b];
    });

    if (colors.size() <= 2)
        return false;

    const size_t limit = std::min<size_t>(6, colors.size());

    int bestErr = std::numeric_limits<int>::max();
    uint8_t bestOp = 0;
    uint8_t bestA = colors[0];
    uint8_t bestB = colors[0];

    for (size_t ia = 0; ia < limit; ++ia)
    {
        for (size_t ib = 0; ib < limit; ++ib)
        {
            if (ia == ib)
                continue;
            const uint8_t c0 = colors[ia];
            const uint8_t c1 = colors[ib];

            for (int op = 0; op <= 0x5F; ++op)
            {
                const uint16_t map = readLE16(&kMapField[static_cast<size_t>(op) * 2]);
                int err = 0;
                for (int i = 0; i < 16; ++i)
                {
                    const uint8_t expected = (map & (0x8000u >> i)) ? c1 : c0;
                    if (tile[i] != expected)
                        ++err;
                }
                if (err < bestErr)
                {
                    bestErr = err;
                    bestOp = static_cast<uint8_t>(op);
                    bestA = c0;
                    bestB = c1;
                    if (err == 0)
                        break;
                }
            }
            if (bestErr == 0)
                break;
        }
        if (bestErr == 0)
            break;
    }

    if (bestErr <= 2)
    {
        outOpcode = bestOp;
        outC0 = bestA;
        outC1 = bestB;
        return true;
    }

    return false;
}

static void emitTile(std::vector<uint8_t> &out,
                     const std::array<uint8_t, 16> &tile,
                     const std::unordered_map<uint16_t, uint8_t> &mapToOpcode,
                     EncodeStats &stats)
{
    std::array<uint8_t, 16> unique{};
    int uniqueCount = 0;

    for (int i = 0; i < 16; ++i)
    {
        bool found = false;
        for (int j = 0; j < uniqueCount; ++j)
            if (unique[j] == tile[i])
            {
                found = true;
                break;
            }
        if (!found)
        {
            unique[uniqueCount++] = tile[i];
            if (uniqueCount > 2)
                break;
        }
    }

    if (uniqueCount <= 2)
    {
        const uint8_t c0 = unique[0];
        const uint8_t c1 = (uniqueCount == 1) ? unique[0] : unique[1];
        uint16_t map = 0;
        for (int i = 0; i < 16; ++i)
        {
            map <<= 1;
            if (tile[i] == c1)
                map |= 1;
        }

        auto it = mapToOpcode.find(map);
        if (it != mapToOpcode.end())
        {
            out.push_back(it->second);
            out.push_back(c1);
            out.push_back(c0);
            stats.opMap++;
            return;
        }

        emitGeneric2Color(out, tile, c0, c1);
        stats.opGeneric++;
        return;
    }

    uint8_t op = 0;
    uint8_t c0 = 0;
    uint8_t c1 = 0;
    if (chooseBestPairForMap(tile, mapToOpcode, op, c0, c1))
    {
        out.push_back(op);
        out.push_back(c1);
        out.push_back(c0);
        stats.opMap++;
        return;
    }

    out.push_back(0x60);
    for (int i = 0; i < 16; ++i)
        out.push_back(tile[i]);
    stats.op60++;
}

static std::vector<uint8_t> encodeDeltaImageOps(const std::vector<uint8_t> &prev,
                                                 const std::vector<uint8_t> &cur,
                                                 int width,
                                                 int height,
                                                 EncodeStats &stats)
{
    const int tilesX = width / 4;
    const int tilesY = height / 4;

    std::unordered_map<uint16_t, uint8_t> mapToOpcode;
    mapToOpcode.reserve(128);
    for (int op = 0; op <= 0x5F; ++op)
    {
        const uint16_t map = readLE16(&kMapField[static_cast<size_t>(op) * 2]);
        if (mapToOpcode.find(map) == mapToOpcode.end())
            mapToOpcode.emplace(map, static_cast<uint8_t>(op));
    }

    std::vector<uint8_t> out;
    out.reserve(static_cast<size_t>(tilesX) * static_cast<size_t>(tilesY));

    std::array<uint8_t, 16> tile{};

    for (int ty = 0; ty < tilesY; ++ty)
    {
        for (int tx = 0; tx < tilesX;)
        {
            if (tileEqual(prev, cur, width, tx, ty))
            {
                int run = 0;
                while (tx + run < tilesX && run < 9 && tileEqual(prev, cur, width, tx + run, ty))
                    ++run;
                if (run > 0)
                {
                    out.push_back(static_cast<uint8_t>(0x62 + run));
                    tx += run;
                    stats.opSkip++;
                    continue;
                }
            }

            uint8_t solidColor = 0;
            if (tileSolid(cur, width, tx, ty, solidColor))
            {
                int run = 0;
                while (tx + run < tilesX && run < 10)
                {
                    if (tileEqual(prev, cur, width, tx + run, ty))
                        break;
                    uint8_t c = 0;
                    if (!tileSolid(cur, width, tx + run, ty, c) || c != solidColor)
                        break;
                    ++run;
                }
                if (run > 0)
                {
                    out.push_back(static_cast<uint8_t>(0x6B + run));
                    out.push_back(solidColor);
                    tx += run;
                    stats.opSolidRun++;
                    continue;
                }
            }

            std::array<uint8_t, 10> seqColors{};
            int seqLen = 0;
            while (tx + seqLen < tilesX && seqLen < 10)
            {
                if (tileEqual(prev, cur, width, tx + seqLen, ty))
                    break;
                uint8_t c = 0;
                if (!tileSolid(cur, width, tx + seqLen, ty, c))
                    break;
                seqColors[seqLen++] = c;
            }
            if (seqLen >= 2)
            {
                out.push_back(static_cast<uint8_t>(0x75 + seqLen));
                for (int i = 0; i < seqLen; ++i)
                    out.push_back(seqColors[i]);
                tx += seqLen;
                stats.opSolidSeq++;
                continue;
            }

            readTile(cur, width, tx, ty, tile);
            emitTile(out, tile, mapToOpcode, stats);
            ++tx;
        }

        if (ty + 1 < tilesY)
        {
            out.push_back(0x61);
            stats.op61++;
        }
    }

    return out;
}

static std::vector<uint8_t> makeLocalPaletteSection(const std::vector<uint8_t> &rgb,
                                                     std::vector<RGB> &palette,
                                                     int maxUpdates,
                                                     EncodeStats &stats)
{
    std::vector<uint8_t> section;
    if (maxUpdates <= 0)
    {
        writeLE16(section, 0);
        return section;
    }

    struct Candidate
    {
        uint32_t key;
        int freq;
        int err;
    };

    std::unordered_map<uint32_t, int> freq;
    freq.reserve(1 << 14);
    for (size_t i = 0; i + 2 < rgb.size(); i += 3)
        freq[rgbKey(rgb[i], rgb[i + 1], rgb[i + 2])]++;

    std::vector<Candidate> cand;
    cand.reserve(freq.size());
    for (const auto &[k, f] : freq)
    {
        const uint8_t r = static_cast<uint8_t>((k >> 16) & 0xFF);
        const uint8_t g = static_cast<uint8_t>((k >> 8) & 0xFF);
        const uint8_t b = static_cast<uint8_t>(k & 0xFF);
        int err = 0;
        (void)nearestPaletteIndex(palette, r, g, b, &err);
        if (err > 0)
            cand.push_back({k, f, err});
    }

    std::sort(cand.begin(), cand.end(), [](const Candidate &a, const Candidate &b) {
        const long long wa = static_cast<long long>(a.freq) * static_cast<long long>(a.err);
        const long long wb = static_cast<long long>(b.freq) * static_cast<long long>(b.err);
        if (wa != wb)
            return wa > wb;
        return a.key < b.key;
    });

    std::array<bool, 256> updated{};
    int slot = 255;
    int used = 0;
    for (const auto &c : cand)
    {
        if (used >= maxUpdates || slot < 0)
            break;

        const uint8_t r = static_cast<uint8_t>((c.key >> 16) & 0xFF);
        const uint8_t g = static_cast<uint8_t>((c.key >> 8) & 0xFF);
        const uint8_t b = static_cast<uint8_t>(c.key & 0xFF);

        palette[static_cast<size_t>(slot)] = RGB{r, g, b};
        updated[static_cast<size_t>(slot)] = true;
        --slot;
        ++used;
    }

    if (used == 0)
    {
        writeLE16(section, 0);
        return section;
    }

    std::array<uint8_t, 32> map{};
    std::vector<uint8_t> entries;
    entries.reserve(static_cast<size_t>(used) * 3);

    for (int group = 0; group < 16; ++group)
    {
        uint16_t bits = 0;
        for (int bit = 0; bit < 16; ++bit)
        {
            const int idx = group * 16 + bit;
            if (updated[static_cast<size_t>(idx)])
                bits |= static_cast<uint16_t>(0x8000u >> bit);
        }
        map[static_cast<size_t>(group * 2 + 0)] = static_cast<uint8_t>(bits & 0xFF);
        map[static_cast<size_t>(group * 2 + 1)] = static_cast<uint8_t>((bits >> 8) & 0xFF);
    }

    for (int group = 0; group < 16; ++group)
    {
        const uint16_t bits = readLE16(&map[static_cast<size_t>(group * 2)]);
        for (int bit = 0; bit < 16; ++bit)
        {
            if ((bits & (0x8000u >> bit)) == 0)
                continue;
            const int idx = group * 16 + bit;
            const RGB c = palette[static_cast<size_t>(idx)];
            entries.push_back(c.r);
            entries.push_back(c.g);
            entries.push_back(c.b);
        }
    }

    const uint16_t localSize = static_cast<uint16_t>(32 + entries.size());
    writeLE16(section, localSize);
    section.insert(section.end(), map.begin(), map.end());
    section.insert(section.end(), entries.begin(), entries.end());

    stats.localPaletteUpdates += static_cast<size_t>(used);
    return section;
}

static std::vector<uint8_t> encodeDelta0x25WithLocalPalette(const std::vector<uint8_t> &prev,
                                                            const std::vector<uint8_t> &cur,
                                                            int width,
                                                            int height,
                                                            const std::vector<uint8_t> &localPaletteSection,
                                                            EncodeStats &stats)
{
    std::vector<uint8_t> out = localPaletteSection;
    const auto ops = encodeDeltaImageOps(prev, cur, width, height, stats);
    out.insert(out.end(), ops.begin(), ops.end());
    return out;
}

struct WavDecoded
{
    uint32_t sampleRate = 22050;
    uint16_t channels = 1;
    uint16_t bitsPerSample = 8;
    std::vector<uint8_t> pcm;
};

static uint32_t readLE32At(const std::vector<uint8_t> &b, size_t off)
{
    return static_cast<uint32_t>(b[off]) |
           (static_cast<uint32_t>(b[off + 1]) << 8) |
           (static_cast<uint32_t>(b[off + 2]) << 16) |
           (static_cast<uint32_t>(b[off + 3]) << 24);
}

static uint16_t readLE16At(const std::vector<uint8_t> &b, size_t off)
{
    return static_cast<uint16_t>(b[off]) | (static_cast<uint16_t>(b[off + 1]) << 8);
}

static WavDecoded loadWav(const std::string &path)
{
    std::ifstream in(path, std::ios::binary);
    if (!in)
        throw std::runtime_error("Failed to open WAV: " + path);

    in.seekg(0, std::ios::end);
    const size_t size = static_cast<size_t>(in.tellg());
    in.seekg(0, std::ios::beg);
    std::vector<uint8_t> data(size);
    in.read(reinterpret_cast<char *>(data.data()), static_cast<std::streamsize>(size));

    if (size < 44 || std::string_view(reinterpret_cast<const char *>(data.data()), 4) != "RIFF" ||
        std::string_view(reinterpret_cast<const char *>(data.data() + 8), 4) != "WAVE")
        throw std::runtime_error("Invalid WAV RIFF header: " + path);

    uint16_t audioFormat = 1;
    uint16_t channels = 1;
    uint32_t sampleRate = 22050;
    uint16_t bitsPerSample = 8;
    std::vector<uint8_t> pcm;

    size_t off = 12;
    while (off + 8 <= size)
    {
        const uint32_t chunkSize = readLE32At(data, off + 4);
        const size_t chunkStart = off + 8;
        if (chunkStart + chunkSize > size)
            break;

        const std::string_view id(reinterpret_cast<const char *>(data.data() + off), 4);
        if (id == "fmt ")
        {
            if (chunkSize < 16)
                throw std::runtime_error("Invalid WAV fmt chunk: " + path);
            audioFormat = readLE16At(data, chunkStart + 0);
            channels = readLE16At(data, chunkStart + 2);
            sampleRate = readLE32At(data, chunkStart + 4);
            bitsPerSample = readLE16At(data, chunkStart + 14);
        }
        else if (id == "data")
        {
            pcm.assign(data.begin() + static_cast<std::ptrdiff_t>(chunkStart),
                       data.begin() + static_cast<std::ptrdiff_t>(chunkStart + chunkSize));
        }

        off = chunkStart + chunkSize + (chunkSize & 1u);
    }

    if (audioFormat != 1)
        throw std::runtime_error("Only PCM WAV is supported for --wav");
    if (pcm.empty())
        throw std::runtime_error("WAV data chunk is empty");

    return WavDecoded{sampleRate, channels, bitsPerSample, std::move(pcm)};
}

static std::vector<uint8_t> convertToU8Mono22050(const WavDecoded &wav)
{
    std::vector<int16_t> mono16;

    const int bytesPerSample = wav.bitsPerSample / 8;
    if (bytesPerSample != 1 && bytesPerSample != 2)
        throw std::runtime_error("Unsupported WAV bit depth; expected 8 or 16-bit PCM");

    const size_t frameCount = wav.pcm.size() / (bytesPerSample * wav.channels);
    mono16.resize(frameCount);

    size_t src = 0;
    for (size_t i = 0; i < frameCount; ++i)
    {
        int accum = 0;
        for (uint16_t ch = 0; ch < wav.channels; ++ch)
        {
            int sample = 0;
            if (bytesPerSample == 1)
            {
                sample = (static_cast<int>(wav.pcm[src]) - 128) << 8;
                src += 1;
            }
            else
            {
                const int16_t s = static_cast<int16_t>(static_cast<uint16_t>(wav.pcm[src]) |
                                                       (static_cast<uint16_t>(wav.pcm[src + 1]) << 8));
                sample = s;
                src += 2;
            }
            accum += sample;
        }
        mono16[i] = static_cast<int16_t>(accum / std::max<int>(1, wav.channels));
    }

    std::vector<int16_t> resampled16;
    if (wav.sampleRate == 22050)
    {
        resampled16 = std::move(mono16);
    }
    else
    {
        const double ratio = 22050.0 / static_cast<double>(wav.sampleRate);
        const size_t outCount = static_cast<size_t>(mono16.size() * ratio);
        resampled16.resize(outCount);
        for (size_t i = 0; i < outCount; ++i)
        {
            const size_t srcIdx = std::min(mono16.size() - 1, static_cast<size_t>(i / ratio));
            resampled16[i] = mono16[srcIdx];
        }
    }

    std::vector<uint8_t> out(resampled16.size());
    for (size_t i = 0; i < resampled16.size(); ++i)
    {
        const int s = static_cast<int>(resampled16[i]);
        out[i] = static_cast<uint8_t>(std::clamp((s >> 8) + 128, 0, 255));
    }
    return out;
}

static void writeVDX(const std::string &path,
                     int fps,
                     const std::vector<Block> &blocks,
                     bool compress,
                     uint8_t lengthMask,
                     uint8_t lengthBits)
{
    std::ofstream out(path, std::ios::binary);
    if (!out)
        throw std::runtime_error("Failed to open output: " + path);

    const uint16_t id = 0x9267;
    const uint8_t unknown[4] = {0, 0, 0, 0};
    const uint16_t frameRate = static_cast<uint16_t>(fps);

    out.write(reinterpret_cast<const char *>(&id), sizeof(id));
    out.write(reinterpret_cast<const char *>(unknown), sizeof(unknown));
    out.write(reinterpret_cast<const char *>(&frameRate), sizeof(frameRate));

    for (const auto &b : blocks)
    {
        std::vector<uint8_t> payload = b.data;
        uint8_t coding = 0x67;
        uint8_t lm = 0;
        uint8_t lb = 0;

        if (compress && !payload.empty())
        {
            payload = lzssCompress(b.data, lengthMask, lengthBits);
            coding = 0x77;
            lm = lengthMask;
            lb = lengthBits;
        }

        const uint32_t size = static_cast<uint32_t>(payload.size());
        out.put(static_cast<char>(b.type));
        out.put(static_cast<char>(coding));
        out.write(reinterpret_cast<const char *>(&size), sizeof(size));
        out.put(static_cast<char>(lm));
        out.put(static_cast<char>(lb));
        if (!payload.empty())
            out.write(reinterpret_cast<const char *>(payload.data()), static_cast<std::streamsize>(payload.size()));
    }
}

static std::vector<uint8_t> readBinaryFile(const std::string &path)
{
    std::ifstream in(path, std::ios::binary);
    if (!in)
        throw std::runtime_error("Failed to open file: " + path);
    in.seekg(0, std::ios::end);
    const size_t size = static_cast<size_t>(in.tellg());
    in.seekg(0, std::ios::beg);
    std::vector<uint8_t> data(size);
    if (size > 0)
        in.read(reinterpret_cast<char *>(data.data()), static_cast<std::streamsize>(size));
    return data;
}

static std::string trimRlName(std::string s)
{
    const size_t nul = s.find('\0');
    if (nul != std::string::npos)
        s.resize(nul);
    while (!s.empty() && s.back() == '\0')
        s.pop_back();
    return s;
}

static std::vector<std::pair<std::string, std::vector<uint8_t>>> parseRlGjd(const std::string &rlPath, const std::string &gjdPath)
{
    const std::vector<uint8_t> rl = readBinaryFile(rlPath);
    const std::vector<uint8_t> gjd = readBinaryFile(gjdPath);
    if ((rl.size() % 20u) != 0)
        throw std::runtime_error("RL file size is not divisible by 20 bytes");

    std::vector<std::pair<std::string, std::vector<uint8_t>>> entries;
    entries.reserve(rl.size() / 20u);

    for (size_t off = 0; off < rl.size(); off += 20)
    {
        std::string name(reinterpret_cast<const char *>(rl.data() + off), 12);
        name = trimRlName(name);
        const uint32_t dataOff = readLE32At(rl, off + 12);
        const uint32_t dataLen = readLE32At(rl, off + 16);
        if (static_cast<size_t>(dataOff) > gjd.size() || static_cast<size_t>(dataLen) > gjd.size() - static_cast<size_t>(dataOff))
            throw std::runtime_error("RL entry extends beyond GJD: " + name);

        std::vector<uint8_t> blob(gjd.begin() + static_cast<std::ptrdiff_t>(dataOff),
                                  gjd.begin() + static_cast<std::ptrdiff_t>(dataOff + dataLen));
        entries.push_back({name, std::move(blob)});
    }

    return entries;
}

static std::string defaultGjdPathFromRl(const std::string &rlPath)
{
    fs::path path(rlPath);
    path.replace_extension(".GJD");
    return path.string();
}

static void archivePackCommand(int argc, char **argv)
{
    std::string rlPath;
    std::string gjdPath;
    std::string inputDir;
    std::vector<std::string> files;

    for (int i = 2; i < argc; ++i)
    {
        const std::string arg = argv[i];
        auto needValue = [&](const char *name) -> const char * {
            if (i + 1 >= argc)
                throw std::runtime_error(std::string("Missing value for ") + name);
            return argv[++i];
        };

        if (arg == "--rl")
            rlPath = needValue("--rl");
        else if (arg == "--gjd")
            gjdPath = needValue("--gjd");
        else if (arg == "--input-dir")
            inputDir = needValue("--input-dir");
        else
            files.push_back(arg);
    }

    if (rlPath.empty() || gjdPath.empty())
        throw std::runtime_error("archive-pack requires --rl and --gjd");

    if (!inputDir.empty())
    {
        for (const auto &entry : fs::directory_iterator(inputDir))
            if (entry.is_regular_file())
                files.push_back(entry.path().string());
    }
    if (files.empty())
        throw std::runtime_error("archive-pack requires one or more input files");

    std::sort(files.begin(), files.end());

    std::ofstream rlOut(rlPath, std::ios::binary);
    std::ofstream gjdOut(gjdPath, std::ios::binary);
    if (!rlOut)
        throw std::runtime_error("Failed to open RL output: " + rlPath);
    if (!gjdOut)
        throw std::runtime_error("Failed to open GJD output: " + gjdPath);

    uint32_t offset = 0;
    for (const auto &file : files)
    {
        const fs::path path(file);
        const std::string name = path.filename().string();
        if (name.empty() || name.size() > 12)
            throw std::runtime_error("RL/GJD names must fit in 12 bytes: " + name);

        std::array<char, 12> nameField{};
        std::copy(name.begin(), name.end(), nameField.begin());

        const std::vector<uint8_t> data = readBinaryFile(file);
        const uint32_t length = static_cast<uint32_t>(data.size());

        rlOut.write(nameField.data(), static_cast<std::streamsize>(nameField.size()));
        rlOut.write(reinterpret_cast<const char *>(&offset), sizeof(offset));
        rlOut.write(reinterpret_cast<const char *>(&length), sizeof(length));

        if (!data.empty())
            gjdOut.write(reinterpret_cast<const char *>(data.data()), static_cast<std::streamsize>(data.size()));
        offset += length;
    }

    std::cout << "Packed RL: " << rlPath << "\n";
    std::cout << "Packed GJD: " << gjdPath << "\n";
    std::cout << "Entries: " << files.size() << "\n";
}

static void archiveListCommand(int argc, char **argv)
{
    std::string rlPath;
    std::string gjdPath;
    for (int i = 2; i < argc; ++i)
    {
        const std::string arg = argv[i];
        if (arg == "--rl")
        {
            if (i + 1 >= argc)
                throw std::runtime_error("Missing value for --rl");
            rlPath = argv[++i];
        }
        else if (arg == "--gjd")
        {
            if (i + 1 >= argc)
                throw std::runtime_error("Missing value for --gjd");
            gjdPath = argv[++i];
        }
    }
    if (rlPath.empty())
        throw std::runtime_error("archive-list requires --rl");
    if (gjdPath.empty())
        gjdPath = defaultGjdPathFromRl(rlPath);

    const std::vector<uint8_t> rl = readBinaryFile(rlPath);
    const std::vector<uint8_t> gjd = readBinaryFile(gjdPath);
    if ((rl.size() % 20u) != 0)
        throw std::runtime_error("RL file size is not divisible by 20 bytes");

    std::cout << "RL: " << rlPath << "\n";
    std::cout << "GJD: " << gjdPath << "\n";
    std::cout << "Entries:\n";
    for (size_t off = 0; off < rl.size(); off += 20)
    {
        std::string name(reinterpret_cast<const char *>(rl.data() + off), 12);
        name = trimRlName(name);
        const uint32_t dataOff = readLE32At(rl, off + 12);
        const uint32_t dataLen = readLE32At(rl, off + 16);
        const bool inRange = static_cast<size_t>(dataOff) <= gjd.size() && static_cast<size_t>(dataLen) <= gjd.size() - std::min(static_cast<size_t>(dataOff), gjd.size());
        std::cout << "  " << name << " offset=" << dataOff << " length=" << dataLen << (inRange ? "" : " [OUT-OF-RANGE]") << "\n";
    }
}

static void archiveUnpackCommand(int argc, char **argv)
{
    std::string rlPath;
    std::string gjdPath;
    std::string outDir;
    for (int i = 2; i < argc; ++i)
    {
        const std::string arg = argv[i];
        if (arg == "--rl")
        {
            if (i + 1 >= argc)
                throw std::runtime_error("Missing value for --rl");
            rlPath = argv[++i];
        }
        else if (arg == "--gjd")
        {
            if (i + 1 >= argc)
                throw std::runtime_error("Missing value for --gjd");
            gjdPath = argv[++i];
        }
        else if (arg == "--out-dir")
        {
            if (i + 1 >= argc)
                throw std::runtime_error("Missing value for --out-dir");
            outDir = argv[++i];
        }
    }
    if (rlPath.empty() || outDir.empty())
        throw std::runtime_error("archive-unpack requires --rl and --out-dir");
    if (gjdPath.empty())
        gjdPath = defaultGjdPathFromRl(rlPath);

    fs::create_directories(outDir);
    const auto entries = parseRlGjd(rlPath, gjdPath);
    for (const auto &[name, data] : entries)
    {
        const fs::path outPath = fs::path(outDir) / name;
        std::ofstream out(outPath, std::ios::binary);
        if (!out)
            throw std::runtime_error("Failed to write extracted file: " + outPath.string());
        if (!data.empty())
            out.write(reinterpret_cast<const char *>(data.data()), static_cast<std::streamsize>(data.size()));
    }

    std::cout << "Unpacked entries: " << entries.size() << "\n";
    std::cout << "Output directory: " << outDir << "\n";
}

static void decodeStill0x20(const std::vector<uint8_t> &data,
                            std::vector<RGB> &palette,
                            std::vector<uint8_t> &frame,
                            int width,
                            int height)
{
    if (data.size() < 6 + 768)
        throw std::runtime_error("Validation: truncated 0x20 chunk");

    const int tilesX = readLE16(data.data() + 0);
    const int tilesY = readLE16(data.data() + 2);
    const int w = tilesX * 4;
    const int h = tilesY * 4;
    if (w != width || h != height)
        throw std::runtime_error("Validation: 0x20 dimensions mismatch");

    palette.resize(256);
    size_t off = 6;
    for (int i = 0; i < 256; ++i)
    {
        palette[static_cast<size_t>(i)] = RGB{data[off], data[off + 1], data[off + 2]};
        off += 3;
    }

    frame.assign(static_cast<size_t>(width) * static_cast<size_t>(height), 0);

    size_t imgOff = 6 + 768;
    for (int ty = 0; ty < tilesY; ++ty)
        for (int tx = 0; tx < tilesX; ++tx)
        {
            if (imgOff + 4 > data.size())
                throw std::runtime_error("Validation: 0x20 tile data truncated");
            const uint8_t c1 = data[imgOff + 0];
            const uint8_t c0 = data[imgOff + 1];
            const uint16_t map = readLE16(data.data() + imgOff + 2);
            imgOff += 4;

            for (int i = 0; i < 16; ++i)
            {
                const int x = tx * 4 + (i % 4);
                const int y = ty * 4 + (i / 4);
                const size_t p = static_cast<size_t>(y) * static_cast<size_t>(width) + static_cast<size_t>(x);
                frame[p] = (map & (0x8000u >> i)) ? c1 : c0;
            }
        }
}

static void applyDelta0x25(const std::vector<uint8_t> &data,
                           std::vector<RGB> &palette,
                           std::vector<uint8_t> &frame,
                           int width,
                           int height)
{
    if (data.size() < 2)
        throw std::runtime_error("Validation: truncated 0x25 chunk");

    const uint16_t localPaletteSize = readLE16(data.data());
    size_t off = 2;

    if (localPaletteSize > 0)
    {
        if (data.size() < off + 32 || data.size() < 2u + localPaletteSize)
            throw std::runtime_error("Validation: invalid local palette size");

        size_t entryOff = off + 32;
        for (int group = 0; group < 16; ++group)
        {
            const uint16_t bits = readLE16(data.data() + off + static_cast<size_t>(group * 2));
            for (int bit = 0; bit < 16; ++bit)
            {
                if ((bits & (0x8000u >> bit)) == 0)
                    continue;
                if (entryOff + 3 > data.size())
                    throw std::runtime_error("Validation: truncated local palette entries");
                const int idx = group * 16 + bit;
                palette[static_cast<size_t>(idx)] = RGB{data[entryOff], data[entryOff + 1], data[entryOff + 2]};
                entryOff += 3;
            }
        }
        off = 2u + localPaletteSize;
    }

    const int tilesX = width / 4;
    const int tilesY = height / 4;
    int xTile = 0;
    int yTile = 0;

    auto writeTileFromMap = [&](uint16_t map, uint8_t c1, uint8_t c0) {
        for (int i = 0; i < 16; ++i)
        {
            const int x = xTile * 4 + (i % 4);
            const int y = yTile * 4 + (i / 4);
            if (x >= width || y >= height)
                continue;
            const size_t p = static_cast<size_t>(y) * static_cast<size_t>(width) + static_cast<size_t>(x);
            frame[p] = (map & (0x8000u >> i)) ? c1 : c0;
        }
        ++xTile;
    };

    while (off < data.size())
    {
        const uint8_t opcode = data[off++];
        if (opcode <= 0x5F)
        {
            if (off + 2 > data.size())
                throw std::runtime_error("Validation: truncated map opcode");
            const uint16_t map = readLE16(&kMapField[static_cast<size_t>(opcode) * 2]);
            const uint8_t c1 = data[off++];
            const uint8_t c0 = data[off++];
            writeTileFromMap(map, c1, c0);
            continue;
        }

        if (opcode == 0x60)
        {
            if (off + 16 > data.size())
                throw std::runtime_error("Validation: truncated opcode 0x60");
            for (int i = 0; i < 16; ++i)
            {
                const int x = xTile * 4 + (i % 4);
                const int y = yTile * 4 + (i / 4);
                if (x < width && y < height)
                {
                    const size_t p = static_cast<size_t>(y) * static_cast<size_t>(width) + static_cast<size_t>(x);
                    frame[p] = data[off + static_cast<size_t>(i)];
                }
            }
            off += 16;
            ++xTile;
            continue;
        }

        if (opcode == 0x61)
        {
            ++yTile;
            xTile = 0;
            continue;
        }

        if (opcode >= 0x62 && opcode <= 0x6B)
        {
            xTile += static_cast<int>(opcode) - 0x62;
            continue;
        }

        if (opcode >= 0x6C && opcode <= 0x75)
        {
            if (off >= data.size())
                throw std::runtime_error("Validation: truncated opcode 0x6C..0x75");
            const uint8_t c = data[off++];
            const int run = static_cast<int>(opcode) - 0x6B;
            for (int r = 0; r < run; ++r)
                writeTileFromMap(0xFFFF, c, c);
            continue;
        }

        if (opcode >= 0x76 && opcode <= 0x7F)
        {
            const int run = static_cast<int>(opcode) - 0x75;
            if (off + static_cast<size_t>(run) > data.size())
                throw std::runtime_error("Validation: truncated opcode 0x76..0x7F");
            for (int r = 0; r < run; ++r)
            {
                const uint8_t c = data[off++];
                writeTileFromMap(0xFFFF, c, c);
            }
            continue;
        }

        if (off + 3 > data.size())
            throw std::runtime_error("Validation: truncated generic map opcode");
        const uint16_t map = static_cast<uint16_t>(opcode) | (static_cast<uint16_t>(data[off]) << 8);
        const uint8_t c1 = data[off + 1];
        const uint8_t c0 = data[off + 2];
        off += 3;
        writeTileFromMap(map, c1, c0);
    }

    if (yTile > tilesY)
        throw std::runtime_error("Validation: delta decode overflow");
}

static void validateVisualBlocks(const std::vector<Block> &visualBlocks,
                                 const std::vector<std::vector<uint8_t>> &expectedIndexed,
                                 int width,
                                 int height)
{
    std::vector<RGB> palette(256);
    std::vector<uint8_t> frame;
    std::vector<std::vector<uint8_t>> decoded;
    decoded.reserve(expectedIndexed.size());

    for (const auto &b : visualBlocks)
    {
        if (b.type == 0x20)
        {
            decodeStill0x20(b.data, palette, frame, width, height);
            decoded.push_back(frame);
        }
        else if (b.type == 0x25)
        {
            if (frame.empty())
                throw std::runtime_error("Validation: 0x25 before 0x20");
            applyDelta0x25(b.data, palette, frame, width, height);
            decoded.push_back(frame);
        }
        else if (b.type == 0x00)
        {
            if (frame.empty())
                throw std::runtime_error("Validation: 0x00 before 0x20");
            decoded.push_back(frame);
        }
    }

    if (decoded.size() != expectedIndexed.size())
        throw std::runtime_error("Validation: decoded frame count mismatch");

    size_t badFrames = 0;
    size_t badPixels = 0;
    for (size_t i = 0; i < decoded.size(); ++i)
    {
        size_t diff = 0;
        for (size_t p = 0; p < decoded[i].size(); ++p)
            if (decoded[i][p] != expectedIndexed[i][p])
                ++diff;

        if (diff > 0)
        {
            ++badFrames;
            badPixels += diff;
            std::cerr << "Validation mismatch frame " << i << ": " << diff << " indexed pixels differ\n";
        }
    }

    if (badFrames > 0)
        throw std::runtime_error("Validation failed: " + std::to_string(badFrames) + " frame(s), " + std::to_string(badPixels) + " pixel(s) differ");
}

int main(int argc, char **argv)
{
    try
    {
        if (argc >= 2)
        {
            const std::string command = argv[1];
            if (command == "archive-pack")
            {
                archivePackCommand(argc, argv);
                return 0;
            }
            if (command == "archive-list")
            {
                archiveListCommand(argc, argv);
                return 0;
            }
            if (command == "archive-unpack")
            {
                archiveUnpackCommand(argc, argv);
                return 0;
            }
            if (command == "encode")
            {
                --argc;
                ++argv;
            }
        }

        Options opt;
        if (!parseOptions(argc, argv, opt))
        {
            printUsage();
            return 1;
        }

        ComInit com;

        std::vector<std::vector<uint8_t>> rgbFrames;
        rgbFrames.reserve(opt.framePaths.size());

        int width = opt.width;
        int height = opt.height;

        for (const auto &p : opt.framePaths)
        {
            int w = width;
            int h = height;
            std::vector<uint8_t> rgb;

            if (opt.rawInput)
            {
                rgb = loadRawRGB24(p, width, height);
                w = width;
                h = height;
            }
            else
            {
                rgb = loadImageWicRGB24(p, w, h);
            }

            if (opt.resizeWidth > 0 && opt.resizeHeight > 0)
            {
                rgb = resizeNearestRGB(rgb, w, h, opt.resizeWidth, opt.resizeHeight);
                w = opt.resizeWidth;
                h = opt.resizeHeight;
            }

            if ((w % 4) != 0 || (h % 4) != 0)
                throw std::runtime_error("Frame dimensions must be divisible by 4: " + p);

            if (width == 0 || height == 0)
            {
                width = w;
                height = h;
            }

            if (w != width || h != height)
                throw std::runtime_error("Frame dimension mismatch: " + p);

            rgbFrames.push_back(std::move(rgb));
        }

        if (width <= 0 || height <= 0 || (width % 4) != 0 || (height % 4) != 0)
            throw std::runtime_error("Invalid output dimensions");

        std::vector<std::vector<uint8_t>> qualityFrames = rgbFrames;
        if (opt.lowerIntermediateQuality >= 0 && qualityFrames.size() >= 2)
        {
            for (size_t i = 0; i + 1 < qualityFrames.size(); ++i)
                applyQuality(qualityFrames[i], opt.lowerIntermediateQuality);
        }

        std::vector<RGB> workingPalette = buildPalette(qualityFrames[0]);

        std::vector<std::vector<uint8_t>> indexedFrames;
        indexedFrames.reserve(qualityFrames.size());

        std::vector<Block> visualBlocks;
        visualBlocks.reserve(qualityFrames.size());

        EncodeStats stats;

        const auto firstIndexed = rgbToIndexed(qualityFrames[0], workingPalette);
        indexedFrames.push_back(firstIndexed);
        visualBlocks.push_back(Block{0x20, encodeStill0x20(firstIndexed, workingPalette, width, height)});

        for (size_t i = 1; i < qualityFrames.size(); ++i)
        {
            std::vector<RGB> nextPalette = workingPalette;
            const std::vector<uint8_t> localPal = makeLocalPaletteSection(qualityFrames[i], nextPalette, opt.maxLocalPaletteUpdates, stats);
            const auto curIndexed = rgbToIndexed(qualityFrames[i], nextPalette);
            indexedFrames.push_back(curIndexed);

            if (curIndexed == indexedFrames[i - 1])
            {
                visualBlocks.push_back(Block{0x00, {}});
            }
            else
            {
                visualBlocks.push_back(Block{
                    0x25,
                    encodeDelta0x25WithLocalPalette(indexedFrames[i - 1], curIndexed, width, height, localPal, stats)});
            }

            workingPalette = std::move(nextPalette);
        }

        if (opt.validate)
            validateVisualBlocks(visualBlocks, indexedFrames, width, height);

        std::vector<Block> finalBlocks;
        finalBlocks.reserve(visualBlocks.size() * 2);

        std::vector<uint8_t> audio;
        if (!opt.wavPath.empty())
        {
            const WavDecoded decoded = loadWav(opt.wavPath);
            audio = convertToU8Mono22050(decoded);
        }

        if (audio.empty())
        {
            finalBlocks = visualBlocks;
        }
        else
        {
            size_t audioOff = 0;
            for (size_t i = 0; i < visualBlocks.size(); ++i)
            {
                finalBlocks.push_back(visualBlocks[i]);
                const size_t target = ((i + 1) * audio.size()) / visualBlocks.size();
                while (audioOff < target)
                {
                    const size_t take = std::min(opt.audioChunkBytes, target - audioOff);
                    Block b;
                    b.type = 0x80;
                    b.data.insert(b.data.end(), audio.begin() + static_cast<std::ptrdiff_t>(audioOff),
                                  audio.begin() + static_cast<std::ptrdiff_t>(audioOff + take));
                    finalBlocks.push_back(std::move(b));
                    audioOff += take;
                }
            }
            while (audioOff < audio.size())
            {
                const size_t take = std::min(opt.audioChunkBytes, audio.size() - audioOff);
                Block b;
                b.type = 0x80;
                b.data.insert(b.data.end(), audio.begin() + static_cast<std::ptrdiff_t>(audioOff),
                              audio.begin() + static_cast<std::ptrdiff_t>(audioOff + take));
                finalBlocks.push_back(std::move(b));
                audioOff += take;
            }
        }

        writeVDX(opt.outputPath, opt.fps, finalBlocks, opt.compress, opt.lengthMask, opt.lengthBits);

        std::cout << "Encoded VDX: " << opt.outputPath << "\n";
        std::cout << "Frames: " << indexedFrames.size() << " (" << width << "x" << height << ")\n";
        std::cout << "Visual chunks: " << visualBlocks.size() << "\n";
        std::cout << "Total chunks: " << finalBlocks.size() << "\n";
        std::cout << "Stats: opMap=" << stats.opMap
                  << " op60=" << stats.op60
                  << " op61=" << stats.op61
                  << " opSkip=" << stats.opSkip
                  << " opSolidRun=" << stats.opSolidRun
                  << " opSolidSeq=" << stats.opSolidSeq
                  << " opGeneric=" << stats.opGeneric
                  << " localPalUpdates=" << stats.localPaletteUpdates << "\n";
        if (opt.validate)
            std::cout << "Validation: PASS\n";
        if (!opt.wavPath.empty())
            std::cout << "Audio bytes (post-convert): " << audio.size() << "\n";
        if (width != 640 || height != 320)
            std::cout << "Note: DOS-canonical T7G content is typically 640x320. Use --dos-canonical if desired.\n";

        return 0;
    }
    catch (const std::exception &e)
    {
        std::cerr << "ERROR: " << e.what() << "\n";
        return 1;
    }
}
