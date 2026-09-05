// system.cpp

#include <windows.h>
#include <objidl.h>
#include <intrin.h>
#include <string>
#include <cstdio>
#include <cstring>
#include <set>
#include <algorithm>
#include <cstdlib>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

// No PNG dependency - using BMP format with Windows GDI

#include "../resource.h"
#include "bitmap_font.h"
#include "system.h"
#include "config.h"
#include "window.h"
#include "game.h"

// Forward declaration of window procedure
LRESULT CALLBACK SystemInfoWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);

unsigned char* LoadImageFromResource(int resourceID, int* width, int* height, int* channels)
{
    char buf[256];
    HRSRC hRes = FindResource(NULL, MAKEINTRESOURCE(resourceID), RT_RCDATA);
    if (!hRes) {
        snprintf(buf, sizeof(buf), "[System] FindResource failed for ID %d, error: %lu\n", resourceID, GetLastError());
        OutputDebugStringA(buf);
        return nullptr;
    }

    HGLOBAL hMem = LoadResource(NULL, hRes);
    if (!hMem) {
        snprintf(buf, sizeof(buf), "[System] LoadResource failed, error: %lu\n", GetLastError());
        OutputDebugStringA(buf);
        return nullptr;
    }

    void* data = LockResource(hMem);
    DWORD size = SizeofResource(NULL, hRes);

    if (!data || size == 0) {
        OutputDebugStringA("[System] LockResource failed or size is 0\n");
        return nullptr;
    }

    snprintf(buf, sizeof(buf), "[System] Resource ID %d loaded: %lu bytes\n", resourceID, size);
    OutputDebugStringA(buf);

    unsigned char* result = stbi_load_from_memory((const stbi_uc*)data, size, width, height, channels, 4); // Force 4 channels (RGBA)
    
    if (!result) {
        snprintf(buf, sizeof(buf), "[System] stbi_load_from_memory failed: %s\n", stbi_failure_reason());
        OutputDebugStringA(buf);
    } else {
        snprintf(buf, sizeof(buf), "[System] Image decoded: %dx%d %d channels\n", *width, *height, *channels);
        OutputDebugStringA(buf);
    }
    
    return result;
}

unsigned char* LoadImageFromNamedResource(const char* resourceName, int* width, int* height, int* channels)
{
    if (!resourceName || !*resourceName)
        return nullptr;

    HRSRC hRes = FindResourceA(nullptr, resourceName, MAKEINTRESOURCEA(10)); // RT_RCDATA
    if (!hRes)
    {
        char buf[256];
        snprintf(buf, sizeof(buf), "[System] FindResource failed for %s, error: %lu\n", resourceName, GetLastError());
        OutputDebugStringA(buf);
        return nullptr;
    }

    HGLOBAL hMem = LoadResource(nullptr, hRes);
    const void* data = hMem ? LockResource(hMem) : nullptr;
    const DWORD size = hMem ? SizeofResource(nullptr, hRes) : 0;
    if (!data || size == 0)
        return nullptr;

    unsigned char* result = stbi_load_from_memory(static_cast<const stbi_uc*>(data),
                                                   static_cast<int>(size),
                                                   width, height, channels, 4);
    if (!result)
    {
        char buf[256];
        snprintf(buf, sizeof(buf), "[System] Image decode failed for %s: %s\n", resourceName, stbi_failure_reason());
        OutputDebugStringA(buf);
    }
    return result;
}

static std::string resolvePathFromModuleDir(const char* path)
{
    if (!path || !*path)
        return std::string();

    std::string input(path);
    if ((input.size() >= 2 && input[1] == ':') || input[0] == '\\' || input[0] == '/')
        return input;

    char modulePath[MAX_PATH] = {};
    DWORD len = GetModuleFileNameA(nullptr, modulePath, MAX_PATH);
    if (len == 0 || len >= MAX_PATH)
        return input;

    std::string base(modulePath, len);
    size_t slashPos = base.find_last_of("\\/");
    if (slashPos == std::string::npos)
        return input;

    return base.substr(0, slashPos + 1) + input;
}

static int CALLBACK enumFontFamilyProc(const LOGFONTA* lf,
                                       const TEXTMETRICA*,
                                       DWORD,
                                       LPARAM lParam)
{
    if (!lf || !lParam)
        return 1;
    auto* out = reinterpret_cast<std::set<std::string>*>(lParam);
    out->insert(lf->lfFaceName);
    return 1;
}

static void collectInstalledFontFamilies(HDC hdc, std::set<std::string>& outFamilies)
{
    LOGFONTA query = {};
    query.lfCharSet = DEFAULT_CHARSET;
    EnumFontFamiliesExA(hdc, &query, enumFontFamilyProc, reinterpret_cast<LPARAM>(&outFamilies), 0);
}

static std::string deriveFaceNameFromPath(const std::string& path)
{
    size_t slashPos = path.find_last_of("\\/");
    size_t start = (slashPos == std::string::npos) ? 0 : slashPos + 1;
    size_t dotPos = path.find_last_of('.');
    if (dotPos == std::string::npos || dotPos < start)
        dotPos = path.size();

    std::string face = path.substr(start, dotPos - start);
    for (char& ch : face)
    {
        if (ch == '-' || ch == '_' || ch == '.')
            ch = ' ';
    }

    // Collapse repeated spaces.
    std::string normalized;
    normalized.reserve(face.size());
    bool prevSpace = false;
    for (char ch : face)
    {
        bool isSpace = (ch == ' ');
        if (isSpace && prevSpace)
            continue;
        normalized.push_back(ch);
        prevSpace = isSpace;
    }

    return normalized;
}

static uint16_t readBE16(const uint8_t* p)
{
    return static_cast<uint16_t>((static_cast<uint16_t>(p[0]) << 8) | static_cast<uint16_t>(p[1]));
}

static uint32_t readBE32(const uint8_t* p)
{
    return (static_cast<uint32_t>(p[0]) << 24) |
           (static_cast<uint32_t>(p[1]) << 16) |
           (static_cast<uint32_t>(p[2]) << 8) |
           static_cast<uint32_t>(p[3]);
}

static std::string trimAndCollapseSpaces(std::string s)
{
    for (char& ch : s)
    {
        if (static_cast<unsigned char>(ch) < 32)
            ch = ' ';
    }

    std::string collapsed;
    collapsed.reserve(s.size());
    bool prevSpace = false;
    for (char ch : s)
    {
        bool isSpace = (ch == ' ');
        if (isSpace && prevSpace)
            continue;
        collapsed.push_back(ch);
        prevSpace = isSpace;
    }

    size_t begin = 0;
    while (begin < collapsed.size() && collapsed[begin] == ' ')
        ++begin;

    size_t end = collapsed.size();
    while (end > begin && collapsed[end - 1] == ' ')
        --end;

    return collapsed.substr(begin, end - begin);
}

static std::string decodeNameString(const uint8_t* bytes, size_t len, uint16_t platformID)
{
    std::string out;
    if (platformID == 3)
    {
        if ((len & 1u) != 0u)
            --len;
        out.reserve(len / 2);
        for (size_t i = 0; i + 1 < len; i += 2)
        {
            uint16_t ch = readBE16(bytes + i);
            if (ch == 0)
                continue;
            if (ch <= 0x7F)
                out.push_back(static_cast<char>(ch));
            else
                out.push_back('?');
        }
    }
    else
    {
        out.assign(reinterpret_cast<const char*>(bytes), len);
    }
    return trimAndCollapseSpaces(out);
}

static bool extractTTFNameFromMemory(const uint8_t* fontData,
                                     size_t fontSize,
                                     uint16_t wantedNameID,
                                     std::string& outName)
{
    if (!fontData || fontSize < 12)
        return false;

    uint16_t numTables = readBE16(fontData + 4);
    size_t tableDirOffset = 12;
    if (tableDirOffset + static_cast<size_t>(numTables) * 16ull > fontSize)
        return false;

    uint32_t nameOffset = 0;
    uint32_t nameLength = 0;
    bool foundNameTable = false;
    for (uint16_t i = 0; i < numTables; ++i)
    {
        const uint8_t* rec = fontData + tableDirOffset + static_cast<size_t>(i) * 16ull;
        if (rec[0] == 'n' && rec[1] == 'a' && rec[2] == 'm' && rec[3] == 'e')
        {
            nameOffset = readBE32(rec + 8);
            nameLength = readBE32(rec + 12);
            foundNameTable = true;
            break;
        }
    }
    if (!foundNameTable)
        return false;

    if (static_cast<size_t>(nameOffset) >= fontSize)
        return false;
    if (static_cast<size_t>(nameLength) > fontSize - static_cast<size_t>(nameOffset))
        return false;
    if (nameLength < 6)
        return false;

    const uint8_t* nameTable = fontData + nameOffset;
    uint16_t count = readBE16(nameTable + 2);
    uint16_t stringOffset = readBE16(nameTable + 4);
    size_t recordsSize = static_cast<size_t>(count) * 12ull;
    if (6ull + recordsSize > static_cast<size_t>(nameLength))
        return false;

    int bestScore = -1;
    std::string best;
    for (uint16_t i = 0; i < count; ++i)
    {
        const uint8_t* rec = nameTable + 6 + static_cast<size_t>(i) * 12ull;
        uint16_t platformID = readBE16(rec + 0);
        uint16_t encodingID = readBE16(rec + 2);
        uint16_t languageID = readBE16(rec + 4);
        uint16_t nameID = readBE16(rec + 6);
        uint16_t strLen = readBE16(rec + 8);
        uint16_t strOff = readBE16(rec + 10);

        if (nameID != wantedNameID)
            continue;

        size_t relOff = static_cast<size_t>(stringOffset) + static_cast<size_t>(strOff);
        if (relOff > static_cast<size_t>(nameLength))
            continue;
        if (static_cast<size_t>(strLen) > static_cast<size_t>(nameLength) - relOff)
            continue;

        const uint8_t* strData = nameTable + relOff;
        std::string decoded = decodeNameString(strData, strLen, platformID);
        if (decoded.empty())
            continue;

        int score = 0;
        if (platformID == 3)
            score += 100;
        else if (platformID == 1)
            score += 50;
        if (languageID == 0x0409)
            score += 20;
        if (platformID == 3 && (encodingID == 1 || encodingID == 10))
            score += 10;

        if (score > bestScore)
        {
            bestScore = score;
            best = decoded;
        }
    }

    if (best.empty())
        return false;

    outName = best;
    return true;
}

unsigned char* RenderTextImageFromTTF(const char* ttfPath,
                                      const char* text,
                                      int fontPixelHeight,
                                      uint8_t red,
                                      uint8_t green,
                                      uint8_t blue,
                                      int* width,
                                      int* height,
                                      int* channels)
{
    if (!width || !height || !channels)
        return nullptr;

    *width = 0;
    *height = 0;
    *channels = 0;

    if (!ttfPath || !*ttfPath || !text || !*text)
        return nullptr;

    std::string resolvedPath = resolvePathFromModuleDir(ttfPath);
    HDC hdc = CreateCompatibleDC(nullptr);
    if (!hdc)
        return nullptr;

    std::set<std::string> beforeFamilies;
    std::set<std::string> afterFamilies;
    collectInstalledFontFamilies(hdc, beforeFamilies);

    bool fontLoaded = AddFontResourceExA(resolvedPath.c_str(), FR_PRIVATE, 0) > 0;
    if (!fontLoaded)
    {
        char buf[256];
        snprintf(buf, sizeof(buf), "[System] AddFontResourceExA failed for %s\n", resolvedPath.c_str());
        OutputDebugStringA(buf);
        DeleteDC(hdc);
        return nullptr;
    }

    collectInstalledFontFamilies(hdc, afterFamilies);

    std::string familyName;
    for (const auto& fam : afterFamilies)
    {
        if (fam.empty() || fam[0] == '@')
            continue;
        if (beforeFamilies.find(fam) == beforeFamilies.end())
        {
            familyName = fam;
            break;
        }
    }

    if (familyName.empty())
        familyName = deriveFaceNameFromPath(resolvedPath);

    int requestedHeight = (fontPixelHeight > 0) ? fontPixelHeight : 256;
    HFONT font = CreateFontA(
        -requestedHeight,
        0,
        0,
        0,
        FW_NORMAL,
        FALSE,
        FALSE,
        FALSE,
        DEFAULT_CHARSET,
        OUT_TT_ONLY_PRECIS,
        CLIP_DEFAULT_PRECIS,
        ANTIALIASED_QUALITY,
        DEFAULT_PITCH | FF_DONTCARE,
        familyName.empty() ? nullptr : familyName.c_str());

    if (!font)
    {
        RemoveFontResourceExA(resolvedPath.c_str(), FR_PRIVATE, 0);
        DeleteDC(hdc);
        return nullptr;
    }

    HGDIOBJ oldFont = SelectObject(hdc, font);
    SetBkMode(hdc, TRANSPARENT);
    SetTextColor(hdc, RGB(255, 255, 255));

    RECT measureRect = {0, 0, 0, 0};
    DrawTextA(hdc, text, -1, &measureRect, DT_SINGLELINE | DT_LEFT | DT_TOP | DT_NOPREFIX | DT_CALCRECT);
    int textW = measureRect.right - measureRect.left;
    int textH = measureRect.bottom - measureRect.top;
    int padX = std::max(8, requestedHeight / 12);
    int padY = std::max(8, requestedHeight / 12);
    int outW = std::max(1, textW + padX * 2);
    int outH = std::max(1, textH + padY * 2);

    BITMAPINFO bmi = {};
    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = outW;
    bmi.bmiHeader.biHeight = -outH; // Top-down bitmap.
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 32;
    bmi.bmiHeader.biCompression = BI_RGB;

    void* dibBits = nullptr;
    HBITMAP dib = CreateDIBSection(hdc, &bmi, DIB_RGB_COLORS, &dibBits, nullptr, 0);
    if (!dib || !dibBits)
    {
        if (dib)
            DeleteObject(dib);
        SelectObject(hdc, oldFont);
        DeleteObject(font);
        RemoveFontResourceExA(resolvedPath.c_str(), FR_PRIVATE, 0);
        DeleteDC(hdc);
        return nullptr;
    }

    HGDIOBJ oldBitmap = SelectObject(hdc, dib);
    std::memset(dibBits, 0, static_cast<size_t>(outW) * static_cast<size_t>(outH) * 4ull);

    RECT drawRect = {padX, padY, outW - padX, outH - padY};
    DrawTextA(hdc, text, -1, &drawRect, DT_SINGLELINE | DT_LEFT | DT_TOP | DT_NOPREFIX);

    unsigned char* rgba = static_cast<unsigned char*>(std::malloc(static_cast<size_t>(outW) * static_cast<size_t>(outH) * 4ull));
    if (rgba)
    {
        const unsigned char* bgra = static_cast<const unsigned char*>(dibBits);
        size_t pixelCount = static_cast<size_t>(outW) * static_cast<size_t>(outH);
        uint8_t maxCoverage = 0;
        for (size_t i = 0; i < pixelCount; ++i)
        {
            uint8_t b = bgra[i * 4 + 0];
            uint8_t g = bgra[i * 4 + 1];
            uint8_t r = bgra[i * 4 + 2];
            uint8_t coverage = std::max(r, std::max(g, b));
            maxCoverage = std::max(maxCoverage, coverage);
            rgba[i * 4 + 0] = red;
            rgba[i * 4 + 1] = green;
            rgba[i * 4 + 2] = blue;
            rgba[i * 4 + 3] = coverage;
        }
        if (maxCoverage == 0)
        {
            std::free(rgba);
            rgba = nullptr;
        }
        else
        {
            *width = outW;
            *height = outH;
            *channels = 4;
        }
    }

    SelectObject(hdc, oldBitmap);
    DeleteObject(dib);
    SelectObject(hdc, oldFont);
    DeleteObject(font);
    RemoveFontResourceExA(resolvedPath.c_str(), FR_PRIVATE, 0);
    DeleteDC(hdc);
    return rgba;
}

unsigned char* RenderTextImageFromTTFResource(int resourceID,
                                              const char* text,
                                              int fontPixelHeight,
                                              uint8_t red,
                                              uint8_t green,
                                              uint8_t blue,
                                              int* width,
                                              int* height,
                                              int* channels)
{
    if (!width || !height || !channels)
        return nullptr;

    *width = 0;
    *height = 0;
    *channels = 0;

    if (!text || !*text)
        return nullptr;

    auto renderBitmapFallback = [&]() -> unsigned char*
    {
        int len = static_cast<int>(std::strlen(text));
        int scale = std::clamp((fontPixelHeight > 0 ? fontPixelHeight : 256) / 16, 8, 32);
        int glyphW = 8 * scale;
        int glyphH = 8 * scale;
        int charSpacing = glyphW + scale * 2;
        int pad = scale * 2;
        int outW = std::max(1, len * charSpacing - scale + pad * 2);
        int outH = glyphH + pad * 2;
        unsigned char* rgba = static_cast<unsigned char*>(
            std::calloc(static_cast<size_t>(outW) * static_cast<size_t>(outH), 4));
        if (!rgba)
            return nullptr;

        for (int i = 0; i < len; ++i)
        {
            unsigned char c = static_cast<unsigned char>(text[i]);
            int charIndex = 0;
            if (c == ' ') charIndex = 0;
            else if (c >= 'a' && c <= 'z') charIndex = c - 'a' + 1;
            else if (c >= 'A' && c <= 'Z') charIndex = c - 'A' + 1;
            else if (c >= '0' && c <= '9') charIndex = c - '0' + 27;
            else continue;

            const uint8_t* glyph = g_font8x8[charIndex];
            for (int row = 0; row < 8; ++row)
            {
                uint8_t rowData = glyph[row];
                if (!rowData) continue;
                for (int col = 0; col < 8; ++col)
                {
                    if (!(rowData & (1 << col)))
                        continue;
                    int bx = pad + i * charSpacing + col * scale;
                    int by = pad + row * scale;
                    for (int py = by; py < by + scale; ++py)
                    {
                        unsigned char* dst = rgba + (static_cast<size_t>(py) * outW + bx) * 4;
                        for (int px = 0; px < scale; ++px)
                        {
                            dst[0] = red;
                            dst[1] = green;
                            dst[2] = blue;
                            dst[3] = 255;
                            dst += 4;
                        }
                    }
                }
            }
        }

        *width = outW;
        *height = outH;
        *channels = 4;
        return rgba;
    };

    HRSRC hRes = FindResource(NULL, MAKEINTRESOURCE(resourceID), RT_RCDATA);
    if (!hRes)
        return renderBitmapFallback();

    HGLOBAL hMem = LoadResource(NULL, hRes);
    if (!hMem)
        return renderBitmapFallback();

    void* fontData = LockResource(hMem);
    DWORD fontSize = SizeofResource(NULL, hRes);
    if (!fontData || fontSize == 0)
        return renderBitmapFallback();

    HDC hdc = CreateCompatibleDC(nullptr);
    if (!hdc)
        return renderBitmapFallback();

    std::set<std::string> beforeFamilies;
    std::set<std::string> afterFamilies;
    collectInstalledFontFamilies(hdc, beforeFamilies);

    DWORD fontCount = 0;
    HANDLE fontHandle = AddFontMemResourceEx(fontData, fontSize, nullptr, &fontCount);
    if (!fontHandle || fontCount == 0)
    {
        DeleteDC(hdc);
        return renderBitmapFallback();
    }

    collectInstalledFontFamilies(hdc, afterFamilies);

    std::string familyName;
    for (const auto& fam : afterFamilies)
    {
        if (fam.empty() || fam[0] == '@')
            continue;
        if (beforeFamilies.find(fam) == beforeFamilies.end())
        {
            familyName = fam;
            break;
        }
    }

    if (familyName.empty())
    {
        const uint8_t* fontBytes = static_cast<const uint8_t*>(fontData);
        extractTTFNameFromMemory(fontBytes, static_cast<size_t>(fontSize), 16, familyName);
        if (familyName.empty())
            extractTTFNameFromMemory(fontBytes, static_cast<size_t>(fontSize), 1, familyName);
    }

    if (familyName.empty())
    {
        OutputDebugStringA("[System] Could not resolve embedded font family name; falling back to Arial\n");
        familyName = "Arial";
    }

    int requestedHeight = (fontPixelHeight > 0) ? fontPixelHeight : 256;
    HFONT font = CreateFontA(
        -requestedHeight,
        0,
        0,
        0,
        FW_NORMAL,
        FALSE,
        FALSE,
        FALSE,
        DEFAULT_CHARSET,
        OUT_TT_ONLY_PRECIS,
        CLIP_DEFAULT_PRECIS,
        ANTIALIASED_QUALITY,
        DEFAULT_PITCH | FF_DONTCARE,
        familyName.c_str());

    if (!font)
    {
        RemoveFontMemResourceEx(fontHandle);
        DeleteDC(hdc);
        return renderBitmapFallback();
    }

    HGDIOBJ oldFont = SelectObject(hdc, font);
    SetBkMode(hdc, TRANSPARENT);
    SetTextColor(hdc, RGB(255, 255, 255));

    RECT measureRect = {0, 0, 0, 0};
    DrawTextA(hdc, text, -1, &measureRect, DT_SINGLELINE | DT_LEFT | DT_TOP | DT_NOPREFIX | DT_CALCRECT);
    int textW = measureRect.right - measureRect.left;
    int textH = measureRect.bottom - measureRect.top;
    int padX = std::max(8, requestedHeight / 12);
    int padY = std::max(8, requestedHeight / 12);
    int outW = std::max(1, textW + padX * 2);
    int outH = std::max(1, textH + padY * 2);

    BITMAPINFO bmi = {};
    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = outW;
    bmi.bmiHeader.biHeight = -outH;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 32;
    bmi.bmiHeader.biCompression = BI_RGB;

    void* dibBits = nullptr;
    HBITMAP dib = CreateDIBSection(hdc, &bmi, DIB_RGB_COLORS, &dibBits, nullptr, 0);
    if (!dib || !dibBits)
    {
        if (dib)
            DeleteObject(dib);
        SelectObject(hdc, oldFont);
        DeleteObject(font);
        RemoveFontMemResourceEx(fontHandle);
        DeleteDC(hdc);
        return renderBitmapFallback();
    }

    HGDIOBJ oldBitmap = SelectObject(hdc, dib);
    std::memset(dibBits, 0, static_cast<size_t>(outW) * static_cast<size_t>(outH) * 4ull);

    RECT drawRect = {padX, padY, outW - padX, outH - padY};
    DrawTextA(hdc, text, -1, &drawRect, DT_SINGLELINE | DT_LEFT | DT_TOP | DT_NOPREFIX);

    unsigned char* rgba = static_cast<unsigned char*>(std::malloc(static_cast<size_t>(outW) * static_cast<size_t>(outH) * 4ull));
    bool hasCoverage = false;
    if (rgba)
    {
        const unsigned char* bgra = static_cast<const unsigned char*>(dibBits);
        size_t pixelCount = static_cast<size_t>(outW) * static_cast<size_t>(outH);
        for (size_t i = 0; i < pixelCount; ++i)
        {
            uint8_t b = bgra[i * 4 + 0];
            uint8_t g = bgra[i * 4 + 1];
            uint8_t r = bgra[i * 4 + 2];
            uint8_t coverage = std::max(r, std::max(g, b));
            hasCoverage = hasCoverage || coverage != 0;
            rgba[i * 4 + 0] = red;
            rgba[i * 4 + 1] = green;
            rgba[i * 4 + 2] = blue;
            rgba[i * 4 + 3] = coverage;
        }
        *width = outW;
        *height = outH;
        *channels = 4;
    }

    SelectObject(hdc, oldBitmap);
    DeleteObject(dib);
    SelectObject(hdc, oldFont);
    DeleteObject(font);
    RemoveFontMemResourceEx(fontHandle);
    DeleteDC(hdc);
    if (rgba && !hasCoverage)
    {
        std::free(rgba);
        return renderBitmapFallback();
    }
    return rgba;
}

void FreeImage(unsigned char* data)
{
    if (data) stbi_image_free(data);
}

// CPU feature detection structure
CPUFeatures cpuFeatures;

//
// Detect CPU features using CPUID instruction
//
void DetectCPUFeatures()
{
    int cpuInfo[4] = {0};

    // Check features with function 1
    __cpuid(cpuInfo, 1);
    cpuFeatures.sse = (cpuInfo[3] & (1 << 25)) != 0;    // EDX bit 25
    cpuFeatures.sse2 = (cpuInfo[3] & (1 << 26)) != 0;   // EDX bit 26
    cpuFeatures.sse3 = (cpuInfo[2] & (1 << 0)) != 0;    // ECX bit 0
    cpuFeatures.ssse3 = (cpuInfo[2] & (1 << 9)) != 0;   // ECX bit 9
    cpuFeatures.sse41 = (cpuInfo[2] & (1 << 19)) != 0;  // ECX bit 19
    cpuFeatures.sse42 = (cpuInfo[2] & (1 << 20)) != 0;  // ECX bit 20
    bool avxCpu = (cpuInfo[2] & (1 << 28)) != 0;        // ECX bit 28 AVX
    bool osxsave = (cpuInfo[2] & (1 << 27)) != 0;       // ECX bit 27 OSXSAVE

    // Check features with function 7
    __cpuid(cpuInfo, 7);
    bool avx2Cpu = (cpuInfo[1] & (1 << 5)) != 0;        // EBX bit 5
    cpuFeatures.avx512 = (cpuInfo[1] & (1 << 16)) != 0; // EBX bit 16 (broad brush)

    // OS support check for AVX state (XCR0: XMM bit1 and YMM bit2 must be set)
    bool avxOs = false;
#ifdef _XCR_XFEATURE_ENABLED_MASK
    if (osxsave)
    {
        unsigned long long xcr0 = _xgetbv(_XCR_XFEATURE_ENABLED_MASK);
        avxOs = (xcr0 & 0x6) == 0x6; // XMM (bit1) and YMM (bit2)
    }
#endif
    cpuFeatures.avx = avxCpu && avxOs;
    cpuFeatures.avx2 = avx2Cpu && avxOs;
}

//
// Choose the highest supported SIMD level for hot-path conversions
//
void SetBestSIMDLevel()
{
    using SIMD = GameState::SIMDLevel;
    // Prefer AVX2 > SSSE3 > SSE2 > Scalar
    if (cpuFeatures.avx2)
    {
        state.simd = SIMD::AVX2;
    }
    else if (cpuFeatures.ssse3)
    {
        state.simd = SIMD::SSSE3;
    }
    else if (cpuFeatures.sse2)
    {
        state.simd = SIMD::SSE2;
    }
    else
    {
        state.simd = SIMD::Scalar;
    }

    if (config.contains("gameState") && config["gameState"].is_object() &&
        config["gameState"].contains("simd") && config["gameState"]["simd"].is_string())
    {
        const std::string requested = config["gameState"]["simd"].get<std::string>();
        if (requested == "AVX2" && cpuFeatures.avx2)
            state.simd = SIMD::AVX2;
        else if (requested == "SSSE3" && cpuFeatures.ssse3)
            state.simd = SIMD::SSSE3;
        else if (requested == "SSE2" && cpuFeatures.sse2)
            state.simd = SIMD::SSE2;
        else if (requested == "Scalar")
            state.simd = SIMD::Scalar;
    }
}

//
// Generate CPU feature text for system information
//
std::string GenerateSystemInfoText()
{
    std::string text;
    text.reserve(220);
    text += "  SSE: " + std::string(cpuFeatures.sse ? "Yes" : "No") + "\n";
    text += "  SSE2: " + std::string(cpuFeatures.sse2 ? "Yes" : "No") + "\n";
    text += "  SSE3: " + std::string(cpuFeatures.sse3 ? "Yes" : "No") + "\n";
    text += "  SSSE3: " + std::string(cpuFeatures.ssse3 ? "Yes" : "No") + "\n";
    text += "  SSE4.1: " + std::string(cpuFeatures.sse41 ? "Yes" : "No") + "\n";
    text += "  SSE4.2: " + std::string(cpuFeatures.sse42 ? "Yes" : "No") + "\n";
    text += "  AVX: " + std::string(cpuFeatures.avx ? "Yes" : "No") + "\n";
    text += "  AVX2: " + std::string(cpuFeatures.avx2 ? "Yes" : "No") + "\n";
    text += "  AVX-512: " + std::string(cpuFeatures.avx512 ? "Yes" : "No") + "\n";
    const char* selected = "Scalar";
    if (state.simd == GameState::SIMDLevel::SSE2)
        selected = "SSE2";
    else if (state.simd == GameState::SIMDLevel::SSSE3)
        selected = "SSSE3";
    else if (state.simd == GameState::SIMDLevel::AVX2)
        selected = "AVX2";
    text += "  Selected SIMD: " + std::string(selected) + "\n";
    return text;
}

//
// Load BMP from resource and create GDI bitmap
//
HBITMAP LoadBMPResourceToBitmap(int resourceId, HDC hdc, int &width, int &height)
{
    HRSRC res = FindResource(nullptr, MAKEINTRESOURCE(resourceId), RT_RCDATA);
    if (!res)
        return nullptr;
    
    HGLOBAL hRes = LoadResource(nullptr, res);
    if (!hRes)
        return nullptr;
    
    void *pData = LockResource(hRes);
    DWORD dataSize = SizeofResource(nullptr, res);
    if (!pData || dataSize == 0)
        return nullptr;
    
    // Create a memory stream from the resource data
    HGLOBAL hGlobal = GlobalAlloc(GMEM_MOVEABLE, dataSize);
    if (!hGlobal)
        return nullptr;
    
    void *pGlobalData = GlobalLock(hGlobal);
    if (!pGlobalData)
    {
        GlobalFree(hGlobal);
        return nullptr;
    }
    
    memcpy(pGlobalData, pData, dataSize);
    GlobalUnlock(hGlobal);
    
    IStream *pStream = nullptr;
    if (CreateStreamOnHGlobal(hGlobal, TRUE, &pStream) != S_OK)
    {
        GlobalFree(hGlobal);
        return nullptr;
    }
    
    // Skip BMP header and get dimensions
    BITMAPFILEHEADER *bmfh = static_cast<BITMAPFILEHEADER*>(pData);
    BITMAPINFOHEADER *bmih = reinterpret_cast<BITMAPINFOHEADER*>(static_cast<char*>(pData) + sizeof(BITMAPFILEHEADER));
    
    if (bmfh->bfType != 0x4D42) // "BM" signature
    {
        pStream->Release();
        return nullptr;
    }
    
    width = bmih->biWidth;
    height = abs(bmih->biHeight);
    
    // Create bitmap from the BMP data
    BITMAPINFO *bmi = reinterpret_cast<BITMAPINFO*>(bmih);
    void *bits = static_cast<char*>(pData) + bmfh->bfOffBits;
    
    HBITMAP hBitmap = CreateDIBitmap(hdc, bmih, CBM_INIT, bits, bmi, DIB_RGB_COLORS);
    
    pStream->Release();
    return hBitmap;
}

//
// Show the system information window
//
void ShowSystemInfoWindow()
{
    HINSTANCE hInstance = GetModuleHandle(NULL);
    const char *className = "PhantomSystemInfoClass";

    // Initialize window class structure
    WNDCLASSEXA wc = {};
    wc.cbSize = sizeof(WNDCLASSEXA);
    wc.lpfnWndProc = SystemInfoWndProc;
    wc.hInstance = hInstance;
    wc.lpszClassName = className;
    wc.hCursor = LoadCursor(NULL, IDC_ARROW);
    wc.hbrBackground = GetSysColorBrush(COLOR_WINDOW);
    wc.style = CS_HREDRAW | CS_VREDRAW;

    // Register window class
    if (!RegisterClassExA(&wc))
    {
        DWORD error = GetLastError();
        char buffer[256];
        snprintf(buffer, sizeof(buffer),
                 "Failed to register window class. Error: 0x%lX", error);
        MessageBoxA(NULL, buffer, "Error", MB_OK | MB_ICONERROR);
        return;
    }

    // Get display info using existing code from window.cpp
    state.ui.displays.clear();
    EnumDisplayMonitors(NULL, NULL, MonitorEnumProc, 0);

    // Find target display
    int targetDisplay = config["display"];
    const DisplayInfo *selectedDisplay = nullptr;
    for (const auto &display : state.ui.displays)
    {
        if (display.number == targetDisplay)
        {
            selectedDisplay = &display;
            break;
        }
    }

    // Fallback to primary display if not found
    if (!selectedDisplay)
    {
        for (const auto &display : state.ui.displays)
        {
            if (display.isPrimary)
            {
                selectedDisplay = &display;
                break;
            }
        }
    }

    // Fallback to first display if still not found
    if (!selectedDisplay && !state.ui.displays.empty())
    {
        selectedDisplay = &state.ui.displays[0];
    }

    // Set window size to 1280x720 (DVD resolution)
    const int WINDOW_WIDTH = 1280;
    const int WINDOW_HEIGHT = 720;

    // Calculate centered position
    int x = 0, y = 0;
    if (selectedDisplay)
    {
        RECT bounds = selectedDisplay->bounds;
        x = bounds.left + (bounds.right - bounds.left - WINDOW_WIDTH) / 2;
        y = bounds.top + (bounds.bottom - bounds.top - WINDOW_HEIGHT) / 2;
    }
    else
    {
        // Fallback to screen center
        x = (GetSystemMetrics(SM_CXSCREEN) - WINDOW_WIDTH) / 2;
        y = (GetSystemMetrics(SM_CYSCREEN) - WINDOW_HEIGHT) / 2;
    }

    // Create borderless window
    HWND hwnd = CreateWindowExA(
        0, // No extended styles
        className,
    "Phantom Engine System Info",
        WS_POPUP, // Borderless window
        x, y,
        WINDOW_WIDTH, WINDOW_HEIGHT,
        NULL, NULL, hInstance, NULL);

    if (!hwnd)
    {
        DWORD error = GetLastError();
        char buffer[256];
        snprintf(buffer, sizeof(buffer),
                 "Failed to create window. Error: 0x%lX", error);
        MessageBoxA(NULL, buffer, "Error", MB_OK | MB_ICONERROR);
        return;
    }

    // Show and update window
    ShowWindow(hwnd, SW_SHOW);
    UpdateWindow(hwnd);

    // Message loop
    MSG msg;
    while (GetMessage(&msg, NULL, 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
}

////////////////////////////////////////////////////////////////////////
// Window Procedure
////////////////////////////////////////////////////////////////////////
LRESULT CALLBACK SystemInfoWndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch (msg)
    {
    case WM_PAINT:
    {
        PAINTSTRUCT ps;
        HDC hdc = BeginPaint(hwnd, &ps);

        static HBITMAP hBmp = nullptr;
        static int bmpW = 0, bmpH = 0;
        if (!hBmp)
        {
            hBmp = LoadBMPResourceToBitmap(IDB_SYSINFO_BG, hdc, bmpW, bmpH);
        }

        if (hBmp)
        {
            HDC memDC = CreateCompatibleDC(hdc);
            HGDIOBJ oldBmp = SelectObject(memDC, hBmp);
            BitBlt(hdc, 0, 0, bmpW, bmpH, memDC, 0, 0, SRCCOPY);
            SelectObject(memDC, oldBmp);
            DeleteDC(memDC);
        }

        // Draw text in bottom-left corner, with padding
        const int pad_x = 32;
        const int pad_y = 32;
        RECT clientRect;
        GetClientRect(hwnd, &clientRect);

        RECT textRect;
        textRect.left = pad_x;
        textRect.right = clientRect.right - pad_x;
        textRect.bottom = clientRect.bottom - pad_y;
        textRect.top = textRect.bottom - 200; // Height for text

        SetBkMode(hdc, TRANSPARENT);
        SetTextColor(hdc, RGB(255, 255, 255));
        std::string text = GenerateSystemInfoText();
        DrawTextA(hdc, text.c_str(), -1, &textRect, DT_LEFT | DT_BOTTOM | DT_WORDBREAK | DT_NOCLIP);

        EndPaint(hwnd, &ps);
        return 0;
    }
    case WM_KEYDOWN:
        // Close on ESC, Enter, or Space
        if (wParam == VK_ESCAPE || wParam == VK_RETURN || wParam == VK_SPACE)
        {
            DestroyWindow(hwnd);
        }
        break;

    case WM_DESTROY:
        PostQuitMessage(0);
        return 0;

    default:
        return DefWindowProcA(hwnd, msg, wParam, lParam);
    }
    return 0;
}
