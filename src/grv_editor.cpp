#include "grv_editor.h"

#include "assets.h"
#include "audio.h"
#include "grv.h"
#include "rl.h"
#include "vdx.h"

#include <algorithm>
#include <array>
#include <cctype>
#include <commctrl.h>
#include <commdlg.h>
#include <windowsx.h>
#include <filesystem>
#include <fstream>
#include <format>
#include <memory>
#include <optional>
#include <string>
#include <vector>

namespace {

constexpr wchar_t kEditorClass[] = L"v64tngGrvEditor";
constexpr wchar_t kPreviewClass[] = L"v64tngGrvPreview";
constexpr UINT_PTR kPlaybackTimer = 0x475256;
constexpr UINT kPlaybackIntervalMs = 67;

enum ControlId : int {
    ID_GRV_LIST = 5100,
    ID_ASM_EDIT,
    ID_LOOP_COMBO,
    ID_SCENE_COMBO,
    ID_RELOAD,
    ID_SAVE_ASM,
    ID_ASSEMBLE,
    ID_PREVIOUS_FRAME,
    ID_PLAY_PAUSE,
    ID_STOP,
    ID_NEXT_FRAME,
    ID_STATUS,
    ID_DECOMPILE_CONTEXT
};

constexpr std::array<const char*, 21> kArchives{{
    "AT", "B", "CH", "D", "DR", "FH", "GA", "HDISK", "HTBD", "INTRO", "JHEK",
    "K", "LA", "LI", "MB", "MC", "MU", "N", "P", "XMI", "GAMWAV"
}};

HWND g_window = nullptr;
HWND g_list = nullptr;
HWND g_edit = nullptr;
HWND g_preview = nullptr;
HWND g_loopCombo = nullptr;
HWND g_sceneCombo = nullptr;
HWND g_playButton = nullptr;
HWND g_status = nullptr;
HFONT g_codeFont = nullptr;
std::vector<std::filesystem::path> g_grvFiles;
GrvResourceNames g_resourceNames;
std::optional<GrvProgram> g_program;
std::optional<VDXFile> g_vdx;
size_t g_selectedLoop = 0;
size_t g_selectedScene = 0;
size_t g_frame = 0;
bool g_playing = false;

std::wstring widen(std::string_view value)
{
    if (value.empty())
        return {};
    const int count = MultiByteToWideChar(CP_UTF8, 0, value.data(),
        static_cast<int>(value.size()), nullptr, 0);
    std::wstring result(static_cast<size_t>(count), L'\0');
    MultiByteToWideChar(CP_UTF8, 0, value.data(), static_cast<int>(value.size()),
        result.data(), count);
    return result;
}

std::string narrow(std::wstring_view value)
{
    if (value.empty())
        return {};
    const int count = WideCharToMultiByte(CP_UTF8, 0, value.data(),
        static_cast<int>(value.size()), nullptr, 0, nullptr, nullptr);
    std::string result(static_cast<size_t>(count), '\0');
    WideCharToMultiByte(CP_UTF8, 0, value.data(), static_cast<int>(value.size()),
        result.data(), count, nullptr, nullptr);
    return result;
}

std::string lower(std::string value)
{
    std::ranges::transform(value, value.begin(),
        [](unsigned char ch) { return static_cast<char>(std::tolower(ch)); });
    return value;
}

void setStatus(std::string_view text)
{
    SetWindowTextW(g_status, widen(text).c_str());
}

std::optional<std::vector<uint8_t>> readArchiveEntry(
    const std::filesystem::path& rlPath, const RLEntry& entry)
{
    auto gjdPath = rlPath;
    gjdPath.replace_extension(".GJD");
    if (!std::filesystem::exists(gjdPath)) {
        gjdPath.replace_extension(".gjd");
        if (!std::filesystem::exists(gjdPath))
            return std::nullopt;
    }
    std::ifstream file(gjdPath, std::ios::binary);
    if (!file)
        return std::nullopt;
    file.seekg(static_cast<std::streamoff>(entry.offset));
    std::vector<uint8_t> bytes(entry.length);
    file.read(reinterpret_cast<char*>(bytes.data()), static_cast<std::streamsize>(bytes.size()));
    if (file.gcount() != static_cast<std::streamsize>(bytes.size()))
        return std::nullopt;
    return bytes;
}

std::optional<VDXFile> loadVDXByRef(uint16_t ref)
{
    const size_t archive = ref >> 10;
    const size_t index = ref & 0x3ff;
    if (archive >= kArchives.size())
        return std::nullopt;
    const auto rlPath = assetPath(std::string(kArchives[archive]) + ".RL");
    const auto entries = parseRLFile(rlPath.string());
    if (!entries || index >= entries->size())
        return std::nullopt;
    auto bytes = readArchiveEntry(rlPath, (*entries)[index]);
    if (!bytes)
        return std::nullopt;
    auto vdx = parseVDXFile((*entries)[index].filename, std::move(*bytes));
    parseVDXChunks(vdx);
    return vdx;
}

std::optional<VDXFile> loadVDXByName(std::string name)
{
    name = lower(name);
    if (!name.ends_with(".vdx"))
        name += ".vdx";
    for (const char* archive : kArchives) {
        const auto rlPath = assetPath(std::string(archive) + ".RL");
        if (!std::filesystem::exists(rlPath))
            continue;
        const auto entries = parseRLFile(rlPath.string());
        if (!entries)
            continue;
        for (const auto& entry : *entries) {
            std::string candidate = entry.filename.substr(0, entry.filename.find('\0'));
            if (lower(candidate) != name)
                continue;
            auto bytes = readArchiveEntry(rlPath, entry);
            if (!bytes)
                return std::nullopt;
            auto vdx = parseVDXFile(candidate, std::move(*bytes));
            parseVDXChunks(vdx);
            return vdx;
        }
    }
    return std::nullopt;
}

void stopPlayback(bool reset)
{
    g_playing = false;
    KillTimer(g_window, kPlaybackTimer);
    wavStop();
    SetWindowTextW(g_playButton, L"Play");
    if (reset) {
        g_frame = 0;
        InvalidateRect(g_preview, nullptr, FALSE);
    }
}

void loadLoopPreview()
{
    stopPlayback(true);
    g_vdx.reset();
    if (!g_program || g_selectedLoop >= g_program->inputLoops.size()) {
        InvalidateRect(g_preview, nullptr, TRUE);
        return;
    }
    const auto& loop = g_program->inputLoops[g_selectedLoop];
    try {
        if (g_selectedScene < loop.videoCandidates.size()) {
            const auto& candidate = loop.videoCandidates[g_selectedScene];
            if (candidate.ref)
                g_vdx = loadVDXByRef(*candidate.ref);
            else if (!candidate.name.empty())
                g_vdx = loadVDXByName(candidate.name);
        } else if (loop.videoRef) {
            g_vdx = loadVDXByRef(*loop.videoRef);
        } else if (!loop.videoName.empty()) {
            g_vdx = loadVDXByName(loop.videoName);
        }
    } catch (const std::exception& error) {
        setStatus(std::string("VDX preview: ") + error.what());
    }
    if (g_vdx && !g_vdx->frameData.empty()) {
        g_frame = g_vdx->frameData.size() - 1;
        setStatus(std::format("{} — input loop {} — {} hotspots — {} VDX frames",
            g_program->sourcePath.filename().string(), g_selectedLoop + 1,
            loop.hotspots.size(), g_vdx->frameData.size()));
    } else {
        setStatus(std::format("{} — input loop {} — {} hotspots — no resolvable VDX",
            g_program->sourcePath.filename().string(), g_selectedLoop + 1,
            loop.hotspots.size()));
    }
    InvalidateRect(g_preview, nullptr, TRUE);
}

void populateScenes()
{
    SendMessageW(g_sceneCombo, CB_RESETCONTENT, 0, 0);
    if (!g_program || g_selectedLoop >= g_program->inputLoops.size())
        return;
    const auto& loop = g_program->inputLoops[g_selectedLoop];
    int defaultSelection = 0;
    for (size_t index = 0; index < loop.videoCandidates.size(); ++index) {
        const auto& candidate = loop.videoCandidates[index];
        std::string resource = candidate.name;
        if (resource.empty() && candidate.ref) {
            if (const auto it = g_resourceNames.find(*candidate.ref); it != g_resourceNames.end())
                resource = it->second;
            else
                resource = std::format("ref 0x{:04X}", *candidate.ref);
        }
        const auto label = widen(std::format("Scene {:02}: 0x{:04X} {} {}",
            index + 1, candidate.instructionOffset, candidate.mnemonic, resource));
        SendMessageW(g_sceneCombo, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(label.c_str()));
        if ((candidate.ref && candidate.ref == loop.videoRef)
            || (!candidate.name.empty() && candidate.name == loop.videoName))
            defaultSelection = static_cast<int>(index);
    }
    if (loop.videoCandidates.empty()) {
        SendMessageW(g_sceneCombo, CB_ADDSTRING, 0,
            reinterpret_cast<LPARAM>(L"No statically resolvable scene candidate"));
        SendMessageW(g_sceneCombo, CB_SETCURSEL, 0, 0);
        g_selectedScene = 0;
    } else {
        SendMessageW(g_sceneCombo, CB_SETCURSEL, defaultSelection, 0);
        g_selectedScene = static_cast<size_t>(defaultSelection);
    }
}

void populateLoops()
{
    SendMessageW(g_loopCombo, CB_RESETCONTENT, 0, 0);
    SendMessageW(g_sceneCombo, CB_RESETCONTENT, 0, 0);
    if (!g_program)
        return;
    for (size_t index = 0; index < g_program->inputLoops.size(); ++index) {
        const auto& loop = g_program->inputLoops[index];
        std::string video = loop.videoName;
        if (video.empty() && loop.videoRef) {
            if (const auto it = g_resourceNames.find(*loop.videoRef); it != g_resourceNames.end())
                video = it->second;
            else
                video = std::format("ref 0x{:04X}", *loop.videoRef);
        }
        const auto label = widen(std::format("{:03}  0x{:04X}  {} hotspot{}  {}",
            index + 1, loop.start, loop.hotspots.size(),
            loop.hotspots.size() == 1 ? "" : "s", video));
        SendMessageW(g_loopCombo, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(label.c_str()));
    }
    if (!g_program->inputLoops.empty()) {
        g_selectedLoop = 0;
        SendMessageW(g_loopCombo, CB_SETCURSEL, 0, 0);
        populateScenes();
        loadLoopPreview();
    }
}

void loadSelectedGrv()
{
    const int selected = static_cast<int>(SendMessageW(g_list, LB_GETCURSEL, 0, 0));
    if (selected < 0 || static_cast<size_t>(selected) >= g_grvFiles.size())
        return;
    stopPlayback(true);
    try {
        g_program = decodeGrv(g_grvFiles[static_cast<size_t>(selected)], g_resourceNames);
        const auto assembly = decompileGrv(*g_program);
        SetWindowTextW(g_edit, widen(assembly).c_str());
        populateLoops();
        if (g_program->inputLoops.empty())
            setStatus(std::format("{} — {} instructions — no input loops",
                g_program->sourcePath.filename().string(), g_program->instructions.size()));
    } catch (const std::exception& error) {
        g_program.reset();
        g_vdx.reset();
        SetWindowTextW(g_edit, widen(std::string("; Decode failed: ") + error.what()).c_str());
        SendMessageW(g_loopCombo, CB_RESETCONTENT, 0, 0);
        setStatus(error.what());
    }
    InvalidateRect(g_preview, nullptr, TRUE);
}

std::optional<std::filesystem::path> saveDialog(
    HWND owner, const wchar_t* title, const std::filesystem::path& suggested,
    const wchar_t* filter, const wchar_t* extension)
{
    std::array<wchar_t, MAX_PATH> filename{};
    const auto initial = suggested.wstring();
    std::copy_n(initial.c_str(), std::min(initial.size(), filename.size() - 1), filename.begin());
    OPENFILENAMEW dialog{};
    dialog.lStructSize = sizeof(dialog);
    dialog.hwndOwner = owner;
    dialog.lpstrFilter = filter;
    dialog.lpstrFile = filename.data();
    dialog.nMaxFile = static_cast<DWORD>(filename.size());
    dialog.lpstrTitle = title;
    dialog.lpstrDefExt = extension;
    dialog.Flags = OFN_OVERWRITEPROMPT | OFN_PATHMUSTEXIST;
    if (!GetSaveFileNameW(&dialog))
        return std::nullopt;
    return std::filesystem::path(filename.data());
}

void saveAssembly()
{
    if (!g_program)
        return;
    auto suggested = g_program->sourcePath.filename();
    suggested += ".asm";
    const auto destination = saveDialog(g_window, L"Decompile GRV As",
        suggested, L"GRV assembly (*.grv.asm)\0*.grv.asm\0All files\0*.*\0\0", L"asm");
    if (!destination)
        return;
    try {
        saveGrvAssembly(*g_program, *destination);
        setStatus("Decompiled to " + destination->string());
    } catch (const std::exception& error) {
        MessageBoxA(g_window, error.what(), "GRV decompile failed", MB_ICONERROR);
    }
}

void assembleAs()
{
    const int length = GetWindowTextLengthW(g_edit);
    std::wstring wide(static_cast<size_t>(length) + 1, L'\0');
    GetWindowTextW(g_edit, wide.data(), length + 1);
    wide.resize(static_cast<size_t>(length));
    try {
        const auto bytes = rebuildGrvAssembly(narrow(wide));
        const std::filesystem::path suggested = g_program
            ? g_program->sourcePath.filename() : std::filesystem::path("SCRIPT.GRV");
        const auto destination = saveDialog(g_window, L"Assemble GRV As",
            suggested, L"Groovie scripts (*.grv)\0*.grv\0All files\0*.*\0\0", L"grv");
        if (!destination)
            return;
        std::ofstream file(*destination, std::ios::binary);
        if (!file)
            throw std::runtime_error("Cannot create " + destination->string());
        file.write(reinterpret_cast<const char*>(bytes.data()),
            static_cast<std::streamsize>(bytes.size()));
        file.close();
        setStatus(std::format("Assembled {} bytes to {}", bytes.size(), destination->string()));
    } catch (const std::exception& error) {
        MessageBoxA(g_window, error.what(), "GRV assembly failed", MB_ICONERROR);
    }
}

void scanGrvFiles()
{
    g_grvFiles.clear();
    SendMessageW(g_list, LB_RESETCONTENT, 0, 0);
    std::error_code error;
    for (const auto& entry : std::filesystem::directory_iterator(assetRoot(), error)) {
        if (!entry.is_regular_file())
            continue;
        if (lower(entry.path().extension().string()) == ".grv")
            g_grvFiles.push_back(entry.path());
    }
    std::ranges::sort(g_grvFiles, [](const auto& left, const auto& right) {
        return lower(left.filename().string()) < lower(right.filename().string());
    });
    int defaultSelection = 0;
    for (size_t index = 0; index < g_grvFiles.size(); ++index) {
        const auto name = g_grvFiles[index].filename().wstring();
        SendMessageW(g_list, LB_ADDSTRING, 0, reinterpret_cast<LPARAM>(name.c_str()));
        if (lower(g_grvFiles[index].filename().string()) == "script.grv")
            defaultSelection = static_cast<int>(index);
    }
    if (!g_grvFiles.empty()) {
        SendMessageW(g_list, LB_SETCURSEL, static_cast<WPARAM>(defaultSelection), 0);
        loadSelectedGrv();
    } else {
        setStatus("No GRV files found in " + assetRoot().string());
    }
}

RECT canvasRect(HWND window)
{
    RECT client{};
    GetClientRect(window, &client);
    const int width = client.right - client.left;
    const int height = client.bottom - client.top;
    int canvasWidth = width;
    int canvasHeight = canvasWidth * 3 / 4;
    if (canvasHeight > height) {
        canvasHeight = height;
        canvasWidth = canvasHeight * 4 / 3;
    }
    const int x = (width - canvasWidth) / 2;
    const int y = (height - canvasHeight) / 2;
    return {x, y, x + canvasWidth, y + canvasHeight};
}

RECT scaleRect(const RECT& canvas, uint16_t left, uint16_t top, uint16_t right, uint16_t bottom)
{
    const int width = canvas.right - canvas.left;
    const int height = canvas.bottom - canvas.top;
    return {
        canvas.left + static_cast<int>(left) * width / 640,
        canvas.top + static_cast<int>(top) * height / 480,
        canvas.left + static_cast<int>(right) * width / 640,
        canvas.top + static_cast<int>(bottom) * height / 480
    };
}

void drawPreview(HWND window, HDC target)
{
    RECT client{};
    GetClientRect(window, &client);
    FillRect(target, &client, static_cast<HBRUSH>(GetStockObject(BLACK_BRUSH)));
    const RECT canvas = canvasRect(window);
    FrameRect(target, &canvas, static_cast<HBRUSH>(GetStockObject(GRAY_BRUSH)));

    if (g_vdx && g_frame < g_vdx->frameData.size() && g_vdx->frameData[g_frame]
        && !g_vdx->frameData[g_frame]->empty()) {
        const auto& rgb = *g_vdx->frameData[g_frame];
        std::vector<uint8_t> bgr(rgb.size());
        for (size_t index = 0; index + 2 < rgb.size(); index += 3) {
            bgr[index] = rgb[index + 2];
            bgr[index + 1] = rgb[index + 1];
            bgr[index + 2] = rgb[index];
        }
        BITMAPINFO info{};
        info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
        info.bmiHeader.biWidth = g_vdx->width;
        info.bmiHeader.biHeight = -g_vdx->height;
        info.bmiHeader.biPlanes = 1;
        info.bmiHeader.biBitCount = 24;
        info.bmiHeader.biCompression = BI_RGB;
        const int top = g_vdx->height == 320 ? 80 : 0;
        const int bottom = g_vdx->height == 320 ? 400 : 480;
        const RECT image = scaleRect(canvas, 0, static_cast<uint16_t>(top), 640,
            static_cast<uint16_t>(bottom));
        StretchDIBits(target, image.left, image.top, image.right - image.left,
            image.bottom - image.top, 0, 0, g_vdx->width, g_vdx->height,
            bgr.data(), &info, DIB_RGB_COLORS, SRCCOPY);
    }

    if (g_program && g_selectedLoop < g_program->inputLoops.size()) {
        SetBkMode(target, TRANSPARENT);
        SetTextColor(target, RGB(255, 255, 255));
        HPEN pen = CreatePen(PS_SOLID, 2, RGB(255, 64, 64));
        HBRUSH brush = CreateHatchBrush(HS_DIAGCROSS, RGB(190, 32, 48));
        const auto oldPen = SelectObject(target, pen);
        const auto oldBrush = SelectObject(target, brush);
        for (const auto& hotspot : g_program->inputLoops[g_selectedLoop].hotspots) {
            RECT rectangle = scaleRect(canvas, hotspot.left, hotspot.top,
                hotspot.right, hotspot.bottom);
            Rectangle(target, rectangle.left, rectangle.top, rectangle.right, rectangle.bottom);
            const auto label = widen(std::format("{} -> 0x{:04X}",
                hotspot.kind, hotspot.target));
            TextOutW(target, rectangle.left + 4, rectangle.top + 3, label.c_str(),
                static_cast<int>(label.size()));
        }
        SelectObject(target, oldBrush);
        SelectObject(target, oldPen);
        DeleteObject(brush);
        DeleteObject(pen);
    }

    std::wstring footer = L"No VDX frame";
    if (g_vdx && !g_vdx->frameData.empty())
        footer = std::format(L"{}  —  frame {} / {}", widen(g_vdx->filename),
            g_frame + 1, g_vdx->frameData.size());
    SetBkMode(target, TRANSPARENT);
    SetTextColor(target, RGB(220, 220, 220));
    TextOutW(target, canvas.left + 8, canvas.bottom - 22, footer.c_str(),
        static_cast<int>(footer.size()));
}

LRESULT CALLBACK PreviewProc(HWND window, UINT message, WPARAM wParam, LPARAM lParam)
{
    if (message == WM_PAINT) {
        PAINTSTRUCT paint{};
        HDC target = BeginPaint(window, &paint);
        drawPreview(window, target);
        EndPaint(window, &paint);
        return 0;
    }
    return DefWindowProcW(window, message, wParam, lParam);
}

void layout(HWND window)
{
    RECT client{};
    GetClientRect(window, &client);
    const int width = client.right;
    const int height = client.bottom;
    constexpr int margin = 8;
    constexpr int listWidth = 190;
    const int contentTop = 42;
    const int statusHeight = 24;
    const int contentHeight = std::max(100, height - contentTop - statusHeight - margin);
    const int remaining = std::max(400, width - listWidth - margin * 4);
    const int editWidth = remaining * 48 / 100;
    const int previewWidth = remaining - editWidth;

    MoveWindow(g_list, margin, contentTop, listWidth, contentHeight, TRUE);
    const int toolbarX = margin + listWidth + margin;
    const int loopWidth = remaining * 38 / 100;
    const int sceneWidth = remaining - loopWidth - 132;
    MoveWindow(g_loopCombo, toolbarX, margin, loopWidth, 350, TRUE);
    MoveWindow(g_sceneCombo, toolbarX + loopWidth + 4, margin,
        std::max(120, sceneWidth), 350, TRUE);
    MoveWindow(g_edit, margin + listWidth + margin, contentTop,
        editWidth, contentHeight, TRUE);
    MoveWindow(g_preview, margin + listWidth + margin + editWidth + margin,
        contentTop, previewWidth - margin, contentHeight - 36, TRUE);

    int buttonX = margin + listWidth + margin + editWidth + margin;
    const int buttonY = contentTop + contentHeight - 30;
    const std::array<int, 4> ids{{ID_PREVIOUS_FRAME, ID_PLAY_PAUSE, ID_STOP, ID_NEXT_FRAME}};
    for (int id : ids) {
        MoveWindow(GetDlgItem(window, id), buttonX, buttonY, 72, 25, TRUE);
        buttonX += 76;
    }
    MoveWindow(GetDlgItem(window, ID_RELOAD), margin, margin, 58, 25, TRUE);
    MoveWindow(GetDlgItem(window, ID_SAVE_ASM), margin + 62, margin, 118, 25, TRUE);
    MoveWindow(GetDlgItem(window, ID_ASSEMBLE), margin + listWidth + margin + remaining - 124,
        margin + 4, 120, 25, TRUE);
    MoveWindow(g_status, 0, height - statusHeight, width, statusHeight, TRUE);
}

LRESULT CALLBACK EditorProc(HWND window, UINT message, WPARAM wParam, LPARAM lParam)
{
    switch (message) {
    case WM_CREATE: {
        g_list = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTBOXW, nullptr,
            WS_CHILD | WS_VISIBLE | WS_VSCROLL | LBS_NOTIFY | LBS_NOINTEGRALHEIGHT,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_GRV_LIST), nullptr, nullptr);
        g_edit = CreateWindowExW(WS_EX_CLIENTEDGE, L"EDIT", nullptr,
            WS_CHILD | WS_VISIBLE | WS_VSCROLL | WS_HSCROLL | ES_MULTILINE |
            ES_AUTOVSCROLL | ES_AUTOHSCROLL | ES_WANTRETURN | ES_NOHIDESEL,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_ASM_EDIT), nullptr, nullptr);
        g_loopCombo = CreateWindowExW(0, WC_COMBOBOXW, nullptr,
            WS_CHILD | WS_VISIBLE | CBS_DROPDOWNLIST | WS_VSCROLL,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_LOOP_COMBO), nullptr, nullptr);
        g_sceneCombo = CreateWindowExW(0, WC_COMBOBOXW, nullptr,
            WS_CHILD | WS_VISIBLE | CBS_DROPDOWNLIST | WS_VSCROLL,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_SCENE_COMBO), nullptr, nullptr);
        g_preview = CreateWindowExW(WS_EX_CLIENTEDGE, kPreviewClass, nullptr,
            WS_CHILD | WS_VISIBLE, 0, 0, 0, 0, window, nullptr, nullptr, nullptr);
        CreateWindowExW(0, L"BUTTON", L"Reload", WS_CHILD | WS_VISIBLE,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_RELOAD), nullptr, nullptr);
        CreateWindowExW(0, L"BUTTON", L"Decompile...", WS_CHILD | WS_VISIBLE,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_SAVE_ASM), nullptr, nullptr);
        CreateWindowExW(0, L"BUTTON", L"Assemble As...", WS_CHILD | WS_VISIBLE,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_ASSEMBLE), nullptr, nullptr);
        CreateWindowExW(0, L"BUTTON", L"Previous", WS_CHILD | WS_VISIBLE,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_PREVIOUS_FRAME), nullptr, nullptr);
        g_playButton = CreateWindowExW(0, L"BUTTON", L"Play", WS_CHILD | WS_VISIBLE,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_PLAY_PAUSE), nullptr, nullptr);
        CreateWindowExW(0, L"BUTTON", L"Stop", WS_CHILD | WS_VISIBLE,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_STOP), nullptr, nullptr);
        CreateWindowExW(0, L"BUTTON", L"Next", WS_CHILD | WS_VISIBLE,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_NEXT_FRAME), nullptr, nullptr);
        g_status = CreateWindowExW(0, STATUSCLASSNAMEW, L"", WS_CHILD | WS_VISIBLE,
            0, 0, 0, 0, window, reinterpret_cast<HMENU>(ID_STATUS), nullptr, nullptr);
        g_codeFont = CreateFontW(-15, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE,
            DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY,
            FIXED_PITCH | FF_MODERN, L"Consolas");
        SendMessageW(g_edit, WM_SETFONT, reinterpret_cast<WPARAM>(g_codeFont), TRUE);
        SendMessageW(g_list, WM_SETFONT, reinterpret_cast<WPARAM>(g_codeFont), TRUE);
        g_resourceNames = loadGrvResourceNames(assetRoot());
        scanGrvFiles();
        layout(window);
        return 0;
    }
    case WM_SIZE:
        layout(window);
        return 0;
    case WM_CONTEXTMENU:
        if (reinterpret_cast<HWND>(wParam) == g_list) {
            POINT point{GET_X_LPARAM(lParam), GET_Y_LPARAM(lParam)};
            if (point.x == -1 && point.y == -1) {
                RECT rectangle{};
                GetWindowRect(g_list, &rectangle);
                point = {rectangle.left + 12, rectangle.top + 12};
            }
            POINT clientPoint = point;
            ScreenToClient(g_list, &clientPoint);
            const int item = static_cast<int>(SendMessageW(g_list, LB_ITEMFROMPOINT, 0,
                MAKELPARAM(clientPoint.x, clientPoint.y)));
            if (HIWORD(item) == 0) {
                SendMessageW(g_list, LB_SETCURSEL, LOWORD(item), 0);
                loadSelectedGrv();
            }
            HMENU menu = CreatePopupMenu();
            AppendMenuW(menu, MF_STRING, ID_DECOMPILE_CONTEXT, L"Decompile...");
            TrackPopupMenu(menu, TPM_RIGHTBUTTON, point.x, point.y, 0, window, nullptr);
            DestroyMenu(menu);
            return 0;
        }
        break;
    case WM_COMMAND:
        switch (LOWORD(wParam)) {
        case ID_GRV_LIST:
            if (HIWORD(wParam) == LBN_SELCHANGE)
                loadSelectedGrv();
            return 0;
        case ID_LOOP_COMBO:
            if (HIWORD(wParam) == CBN_SELCHANGE) {
                const auto selection = SendMessageW(g_loopCombo, CB_GETCURSEL, 0, 0);
                if (selection != CB_ERR) {
                    g_selectedLoop = static_cast<size_t>(selection);
                    populateScenes();
                    loadLoopPreview();
                }
            }
            return 0;
        case ID_SCENE_COMBO:
            if (HIWORD(wParam) == CBN_SELCHANGE) {
                const auto selection = SendMessageW(g_sceneCombo, CB_GETCURSEL, 0, 0);
                if (selection != CB_ERR) {
                    g_selectedScene = static_cast<size_t>(selection);
                    loadLoopPreview();
                }
            }
            return 0;
        case ID_RELOAD:
            g_resourceNames = loadGrvResourceNames(assetRoot());
            scanGrvFiles();
            return 0;
        case ID_SAVE_ASM:
        case ID_DECOMPILE_CONTEXT:
            saveAssembly();
            return 0;
        case ID_ASSEMBLE:
            assembleAs();
            return 0;
        case ID_PREVIOUS_FRAME:
            if (g_vdx && !g_vdx->frameData.empty()) {
                g_frame = g_frame == 0 ? g_vdx->frameData.size() - 1 : g_frame - 1;
                InvalidateRect(g_preview, nullptr, FALSE);
            }
            return 0;
        case ID_NEXT_FRAME:
            if (g_vdx && !g_vdx->frameData.empty()) {
                g_frame = (g_frame + 1) % g_vdx->frameData.size();
                InvalidateRect(g_preview, nullptr, FALSE);
            }
            return 0;
        case ID_PLAY_PAUSE:
            if (!g_vdx || g_vdx->frameData.empty())
                return 0;
            if (g_playing) {
                g_playing = false;
                KillTimer(g_window, kPlaybackTimer);
                wavPause();
                SetWindowTextW(g_playButton, L"Play");
            } else {
                if (g_frame + 1 >= g_vdx->frameData.size())
                    g_frame = 0;
                g_playing = true;
                SetTimer(g_window, kPlaybackTimer, kPlaybackIntervalMs, nullptr);
                if (g_frame == 0 && !g_vdx->audioData.empty())
                    wavPlay(std::span<const uint8_t>(g_vdx->audioData));
                else
                    wavResume();
                SetWindowTextW(g_playButton, L"Pause");
            }
            return 0;
        case ID_STOP:
            stopPlayback(true);
            return 0;
        }
        break;
    case WM_TIMER:
        if (wParam == kPlaybackTimer && g_playing && g_vdx && !g_vdx->frameData.empty()) {
            ++g_frame;
            if (g_frame >= g_vdx->frameData.size()) {
                stopPlayback(true);
            } else {
                InvalidateRect(g_preview, nullptr, FALSE);
            }
            return 0;
        }
        break;
    case WM_CLOSE:
        DestroyWindow(window);
        return 0;
    case WM_DESTROY:
        stopPlayback(false);
        if (g_codeFont) {
            DeleteObject(g_codeFont);
            g_codeFont = nullptr;
        }
        g_window = nullptr;
        g_list = g_edit = g_preview = g_loopCombo = g_sceneCombo =
            g_playButton = g_status = nullptr;
        g_program.reset();
        g_vdx.reset();
        return 0;
    }
    return DefWindowProcW(window, message, wParam, lParam);
}

void registerClasses(HINSTANCE instance)
{
    WNDCLASSEXW preview{};
    preview.cbSize = sizeof(preview);
    preview.style = CS_HREDRAW | CS_VREDRAW;
    preview.lpfnWndProc = PreviewProc;
    preview.hInstance = instance;
    preview.hCursor = LoadCursorW(nullptr, IDC_CROSS);
    preview.hbrBackground = static_cast<HBRUSH>(GetStockObject(BLACK_BRUSH));
    preview.lpszClassName = kPreviewClass;
    RegisterClassExW(&preview);

    WNDCLASSEXW editor{};
    editor.cbSize = sizeof(editor);
    editor.style = CS_HREDRAW | CS_VREDRAW;
    editor.lpfnWndProc = EditorProc;
    editor.hInstance = instance;
    editor.hIcon = LoadIconW(instance, IDI_APPLICATION);
    editor.hCursor = LoadCursorW(nullptr, IDC_ARROW);
    editor.hbrBackground = reinterpret_cast<HBRUSH>(COLOR_BTNFACE + 1);
    editor.lpszClassName = kEditorClass;
    RegisterClassExW(&editor);
}

} // namespace

void ShowGrvEditor(HWND parent)
{
    if (g_window) {
        ShowWindow(g_window, SW_RESTORE);
        SetForegroundWindow(g_window);
        return;
    }
    const HINSTANCE instance = GetModuleHandleW(nullptr);
    registerClasses(instance);
    g_window = CreateWindowExW(WS_EX_APPWINDOW, kEditorClass,
        L"v64tng — GRV Editor", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
        CW_USEDEFAULT, CW_USEDEFAULT, 1550, 920, parent, nullptr, instance, nullptr);
    if (!g_window)
        MessageBoxW(parent, L"Could not create the GRV Editor window.",
            L"GRV Editor", MB_ICONERROR);
}

void CloseGrvEditor()
{
    if (g_window)
        DestroyWindow(g_window);
}
