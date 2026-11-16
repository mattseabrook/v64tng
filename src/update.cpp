// Native Windows release discovery, download, and transactional self-update.
#include "update.h"
#include "version.h"
#include "../resource.h"
#include "nlohmann/json.hpp"

#include <winhttp.h>
#include <bcrypt.h>
#include <sddl.h>
#include <shellapi.h>
#include <commctrl.h>
#include <richedit.h>
#include <algorithm>
#include <array>
#include <atomic>
#include <charconv>
#include <chrono>
#include <cstdint>
#include <cstring>
#include <cwchar>
#include <filesystem>
#include <functional>
#include <memory>
#include <optional>
#include <sstream>
#include <stdexcept>
#include <string_view>
#include <thread>
#include <utility>

namespace {
namespace fs = std::filesystem;
using Json = nlohmann::json;
constexpr wchar_t projectUrl[] = L"https://github.com/mattseabrook/v64tng";
constexpr wchar_t releasesUrl[] = L"https://github.com/mattseabrook/v64tng/releases";
constexpr size_t mappingSize = 64 * 1024;
constexpr uint64_t maxAssetSize = 256 * 1024 * 1024;
constexpr UINT workerDone = WM_APP + 481;
constexpr UINT progressTimer = 1;

struct Handle {
    HANDLE value = nullptr;
    Handle() = default;
    explicit Handle(HANDLE handle) : value(handle) {}
    ~Handle() { if (value && value != INVALID_HANDLE_VALUE) CloseHandle(value); }
    Handle(const Handle&) = delete;
    Handle& operator=(const Handle&) = delete;
    Handle(Handle&& other) noexcept : value(std::exchange(other.value, nullptr)) {}
    Handle& operator=(Handle&& other) noexcept {
        if (this != &other) {
            if (value && value != INVALID_HANDLE_VALUE) CloseHandle(value);
            value = std::exchange(other.value, nullptr);
        }
        return *this;
    }
    explicit operator bool() const { return value && value != INVALID_HANDLE_VALUE; }
};
struct Internet {
    HINTERNET value = nullptr;
    explicit Internet(HINTERNET handle) : value(handle) {
        if (!value) throw std::runtime_error("Cannot create a Windows HTTPS handle.");
    }
    ~Internet() { WinHttpCloseHandle(value); }
    Internet(const Internet&) = delete;
    Internet& operator=(const Internet&) = delete;
};
struct LocalMemory {
    void* value = nullptr;
    ~LocalMemory() { if (value) LocalFree(value); }
};
struct MappedMemory {
    void* value;
    explicit MappedMemory(HANDLE handle, DWORD access) : value(MapViewOfFile(handle, access, 0, 0, mappingSize)) {
        if (!value) throw std::runtime_error("Cannot map the update handoff.");
    }
    ~MappedMemory() { UnmapViewOfFile(value); }
};

std::wstring wide(std::string_view text) {
    if (text.empty()) return {};
    const int size = MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS, text.data(), static_cast<int>(text.size()), nullptr, 0);
    if (!size) throw std::runtime_error("Invalid UTF-8 in update metadata.");
    std::wstring result(static_cast<size_t>(size), L'\0');
    MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS, text.data(), static_cast<int>(text.size()), result.data(), size);
    return result;
}
std::string utf8(std::wstring_view text) {
    if (text.empty()) return {};
    const int size = WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, text.data(), static_cast<int>(text.size()), nullptr, 0, nullptr, nullptr);
    if (!size) throw std::runtime_error("Invalid Unicode update path.");
    std::string result(static_cast<size_t>(size), '\0');
    WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, text.data(), static_cast<int>(text.size()), result.data(), size, nullptr, nullptr);
    return result;
}
std::runtime_error winError(const char* operation, DWORD code = GetLastError()) {
    wchar_t message[1024]{};
    FormatMessageW(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS, nullptr, code, 0, message, 1024, nullptr);
    return std::runtime_error(std::string(operation) + " (Windows " + std::to_string(code) + "): " + utf8(message));
}
void require(BOOL result, const char* operation) { if (!result) throw winError(operation); }
void cryptoRequire(NTSTATUS status) {
    if (status < 0) throw std::runtime_error("Windows cryptography failed (status " + std::to_string(status) + ").");
}
fs::path executablePath() {
    std::wstring buffer(32768, L'\0');
    const DWORD length = GetModuleFileNameW(nullptr, buffer.data(), static_cast<DWORD>(buffer.size()));
    if (!length || length >= buffer.size()) throw winError("Cannot locate the running executable");
    buffer.resize(length);
    return fs::path(buffer);
}
std::wstring currentDirectory() {
    const DWORD length = GetCurrentDirectoryW(0, nullptr);
    if (!length) throw winError("Cannot read the working directory");
    std::wstring result(length, L'\0');
    const DWORD written = GetCurrentDirectoryW(length, result.data());
    if (!written || written >= length) throw winError("Cannot read the working directory");
    result.resize(written);
    return result;
}
void checkCancelled(const std::atomic_bool& cancelled) {
    if (cancelled.load()) throw std::runtime_error("Update cancelled.");
}

using Version = std::array<uint32_t, 4>;
std::optional<Version> parseVersion(std::string_view text) {
    if (text.starts_with("v.")) text.remove_prefix(2);
    else if (text.starts_with('v')) text.remove_prefix(1);
    Version result{};
    for (size_t part = 0; part < result.size(); ++part) {
        const auto end = text.find('.');
        const auto digits = text.substr(0, end);
        if (digits.empty()) return {};
        const auto parsed = std::from_chars(digits.data(), digits.data() + digits.size(), result[part]);
        if (parsed.ec != std::errc{} || parsed.ptr != digits.data() + digits.size()) return {};
        if (part + 1 == result.size()) { if (end != std::string_view::npos) return {}; }
        else { if (end == std::string_view::npos) return {}; text.remove_prefix(end + 1); }
    }
    return result;
}
std::string stringValue(const Json& object, const char* key) {
    const auto it = object.find(key);
    return it != object.end() && it->is_string() ? it->get<std::string>() : std::string{};
}
struct Release {
    Version version{};
    std::string tag, title, body, published, author, page, download, digest, unavailable;
    struct Asset { std::string name, url; uint64_t size; };
    std::vector<Asset> assets;
    uint64_t size = 0;
    bool prerelease = false;
};

struct Url {
    std::wstring host, path;
};
Url githubUrl(const std::wstring& url) {
    URL_COMPONENTS parts{};
    parts.dwStructSize = sizeof(parts);
    parts.dwHostNameLength = parts.dwUrlPathLength = parts.dwExtraInfoLength = static_cast<DWORD>(-1);
    parts.dwUserNameLength = parts.dwPasswordLength = static_cast<DWORD>(-1);
    require(WinHttpCrackUrl(url.c_str(), 0, 0, &parts), "Invalid GitHub URL");
    Url result;
    result.host.assign(parts.lpszHostName, parts.dwHostNameLength);
    std::transform(result.host.begin(), result.host.end(), result.host.begin(), [](wchar_t c) {
        return c >= L'A' && c <= L'Z' ? static_cast<wchar_t>(c + (L'a' - L'A')) : c;
    });
    if (parts.nScheme != INTERNET_SCHEME_HTTPS || parts.nPort != INTERNET_DEFAULT_HTTPS_PORT ||
        parts.dwUserNameLength || parts.dwPasswordLength ||
        (result.host != L"api.github.com" && result.host != L"github.com" &&
         result.host != L"release-assets.githubusercontent.com" && result.host != L"objects.githubusercontent.com"))
        throw std::runtime_error("The update URL is not an approved GitHub HTTPS endpoint.");
    result.path.assign(parts.lpszUrlPath, parts.dwUrlPathLength);
    if (parts.dwExtraInfoLength) result.path.append(parts.lpszExtraInfo, parts.dwExtraInfoLength);
    if (result.path.empty()) result.path = L"/";
    return result;
}
std::wstring responseHeader(HINTERNET request, DWORD query) {
    DWORD length = 0;
    WinHttpQueryHeaders(request, query, WINHTTP_HEADER_NAME_BY_INDEX, nullptr, &length, WINHTTP_NO_HEADER_INDEX);
    if (GetLastError() != ERROR_INSUFFICIENT_BUFFER) return {};
    std::wstring text(length / sizeof(wchar_t), L'\0');
    require(WinHttpQueryHeaders(request, query, WINHTTP_HEADER_NAME_BY_INDEX, text.data(), &length, WINHTTP_NO_HEADER_INDEX), "Cannot read HTTPS response header");
    text.resize(length / sizeof(wchar_t));
    while (!text.empty() && text.back() == L'\0') text.pop_back();
    return text;
}
void fetch(const std::wstring& initialUrl, const std::atomic_bool& cancelled, uint64_t limit,
           const std::function<void(const char*, DWORD)>& consume) {
    Internet session(WinHttpOpen(L"v64tng/" V64TNG_VERSION_WSTRING, WINHTTP_ACCESS_TYPE_AUTOMATIC_PROXY,
        WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0));
    require(WinHttpSetTimeouts(session.value, 5000, 5000, 10000, 10000), "Cannot set HTTPS timeouts");
    std::wstring url = initialUrl;
    const auto deadline = std::chrono::steady_clock::now() + std::chrono::minutes(5);
    for (unsigned redirect = 0; redirect < 8; ++redirect) {
        checkCancelled(cancelled);
        const auto parts = githubUrl(url);
        Internet connection(WinHttpConnect(session.value, parts.host.c_str(), INTERNET_DEFAULT_HTTPS_PORT, 0));
        Internet request(WinHttpOpenRequest(connection.value, L"GET", parts.path.c_str(), nullptr,
            WINHTTP_NO_REFERER, WINHTTP_DEFAULT_ACCEPT_TYPES, WINHTTP_FLAG_SECURE | WINHTTP_FLAG_REFRESH));
        DWORD policy = WINHTTP_OPTION_REDIRECT_POLICY_NEVER;
        require(WinHttpSetOption(request.value, WINHTTP_OPTION_REDIRECT_POLICY, &policy, sizeof(policy)), "Cannot restrict HTTPS redirects");
        constexpr wchar_t apiHeaders[] = L"Accept: application/vnd.github+json\r\nX-GitHub-Api-Version: 2022-11-28\r\n";
        constexpr wchar_t assetHeaders[] = L"Accept: application/octet-stream\r\n";
        const wchar_t* headers = parts.host == L"api.github.com" ? apiHeaders : assetHeaders;
        require(WinHttpSendRequest(request.value, headers, static_cast<DWORD>(-1), WINHTTP_NO_REQUEST_DATA, 0, 0, 0), "GitHub HTTPS request failed");
        require(WinHttpReceiveResponse(request.value, nullptr), "GitHub HTTPS response failed");
        DWORD status = 0, statusSize = sizeof(status);
        require(WinHttpQueryHeaders(request.value, WINHTTP_QUERY_STATUS_CODE | WINHTTP_QUERY_FLAG_NUMBER,
            WINHTTP_HEADER_NAME_BY_INDEX, &status, &statusSize, WINHTTP_NO_HEADER_INDEX), "Cannot read HTTPS status");
        if (status == 301 || status == 302 || status == 303 || status == 307 || status == 308) {
            url = responseHeader(request.value, WINHTTP_QUERY_LOCATION);
            if (url.empty()) throw std::runtime_error("GitHub returned an empty download redirect.");
            continue; // Every redirect is independently restricted to approved HTTPS hosts.
        }
        if (status == 403 || status == 429) throw std::runtime_error("GitHub refused the request or its public API rate limit was reached. Please try again later.");
        if (status != 200) throw std::runtime_error("GitHub returned HTTP " + std::to_string(status) + ".");
        std::array<char, 64 * 1024> buffer{};
        uint64_t total = 0;
        for (;;) {
            checkCancelled(cancelled);
            if (std::chrono::steady_clock::now() > deadline) throw std::runtime_error("GitHub download timed out.");
            DWORD read = 0;
            require(WinHttpReadData(request.value, buffer.data(), static_cast<DWORD>(buffer.size()), &read), "GitHub download failed");
            if (!read) break;
            total += read;
            if (total > limit) throw std::runtime_error("GitHub response exceeds the permitted size.");
            consume(buffer.data(), read);
        }
        return;
    }
    throw std::runtime_error("GitHub returned too many download redirects.");
}
Release findRelease(const std::atomic_bool& cancelled) {
    std::optional<Release> newest;
    bool finished = false;
    for (unsigned page = 1; page <= 10; ++page) {
        std::string response;
        fetch(L"https://api.github.com/repos/mattseabrook/v64tng/releases?per_page=100&page=" + std::to_wstring(page),
            cancelled, 16 * 1024 * 1024, [&](const char* bytes, DWORD size) { response.append(bytes, size); });
        const auto releases = Json::parse(response);
        if (!releases.is_array()) throw std::runtime_error("Invalid GitHub releases response.");
        for (const auto& item : releases) {
            if (item.value("draft", false)) continue;
            const auto tag = stringValue(item, "tag_name");
            const auto version = parseVersion(tag);
            if (!version || (newest && *version <= newest->version)) continue;
            Release release;
            release.version = *version;
            release.tag = tag;
            release.title = stringValue(item, "name");
            if (release.title.empty()) release.title = tag;
            release.body = stringValue(item, "body");
            release.published = stringValue(item, "published_at");
            if (item.contains("author") && item["author"].is_object()) release.author = stringValue(item["author"], "login");
            release.prerelease = item.value("prerelease", false);
            release.page = stringValue(item, "html_url");
            if (!release.page.starts_with("https://github.com/mattseabrook/v64tng/releases/tag/"))
                throw std::runtime_error("Unexpected official release page URL.");
            if (item.contains("assets") && item["assets"].is_array()) {
                for (const auto& asset : item["assets"]) {
                    release.assets.push_back({stringValue(asset, "name"), stringValue(asset, "browser_download_url"), asset.value("size", uint64_t{})});
                    if (stringValue(asset, "name") != "v64tng.exe" || stringValue(asset, "state") != "uploaded") continue;
                    release.download = stringValue(asset, "browser_download_url");
                    release.digest = stringValue(asset, "digest");
                    release.size = asset.value("size", uint64_t{});
                }
            }
            if (release.download.empty()) release.unavailable = "This release has no uploaded v64tng.exe asset.";
            else if (!release.download.starts_with("https://github.com/mattseabrook/v64tng/releases/download/" + tag + "/") ||
                     !release.download.ends_with("/v64tng.exe")) release.unavailable = "The executable download URL does not match this official release.";
            else if (release.size < 1024 || release.size > maxAssetSize) release.unavailable = "The executable asset size is invalid.";
            else if (!release.digest.starts_with("sha256:") || release.digest.size() != 71 ||
                     !std::all_of(release.digest.begin() + 7, release.digest.end(), [](char c) {
                         return (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f');
                     })) release.unavailable = "GitHub did not publish a valid SHA-256 digest for this executable.";
            newest = std::move(release);
        }
        if (releases.size() < 100) { finished = true; break; }
    }
    if (!finished) throw std::runtime_error("Release history exceeds the updater's pagination limit.");
    if (!newest) throw std::runtime_error("No published release with a recognized version was found.");
    return std::move(*newest);
}

std::string sha256(const fs::path& path) {
    Handle file(CreateFileW(path.c_str(), GENERIC_READ, FILE_SHARE_READ, nullptr, OPEN_EXISTING, FILE_FLAG_SEQUENTIAL_SCAN, nullptr));
    if (!file) throw winError("Cannot open update for SHA-256 validation");
    BCRYPT_ALG_HANDLE algorithm = nullptr;
    cryptoRequire(BCryptOpenAlgorithmProvider(&algorithm, BCRYPT_SHA256_ALGORITHM, nullptr, 0));
    struct AlgorithmCleanup { BCRYPT_ALG_HANDLE value; ~AlgorithmCleanup() { BCryptCloseAlgorithmProvider(value, 0); } } closeAlgorithm{algorithm};
    DWORD objectSize = 0, returned = 0;
    cryptoRequire(BCryptGetProperty(algorithm, BCRYPT_OBJECT_LENGTH, reinterpret_cast<PUCHAR>(&objectSize), sizeof(objectSize), &returned, 0));
    std::vector<UCHAR> object(objectSize);
    BCRYPT_HASH_HANDLE hash = nullptr;
    cryptoRequire(BCryptCreateHash(algorithm, &hash, object.data(), objectSize, nullptr, 0, 0));
    struct HashCleanup { BCRYPT_HASH_HANDLE value; ~HashCleanup() { BCryptDestroyHash(value); } } closeHash{hash};
    std::array<UCHAR, 64 * 1024> buffer{};
    DWORD read = 0;
    for (;;) {
        require(ReadFile(file.value, buffer.data(), static_cast<DWORD>(buffer.size()), &read, nullptr), "Cannot read update for SHA-256 validation");
        if (!read) break;
        cryptoRequire(BCryptHashData(hash, buffer.data(), read, 0));
    }
    std::array<UCHAR, 32> digest{};
    cryptoRequire(BCryptFinishHash(hash, digest.data(), static_cast<ULONG>(digest.size()), 0));
    std::string result = "sha256:";
    constexpr char hex[] = "0123456789abcdef";
    for (const auto byte : digest) { result += hex[byte >> 4]; result += hex[byte & 15]; }
    return result;
}
void validateExecutable(const fs::path& path, uint64_t expectedSize, const std::string& digest, const Version& version) {
    if (fs::file_size(path) != expectedSize) throw std::runtime_error("The downloaded executable size does not match GitHub metadata.");
    if (sha256(path) != digest) throw std::runtime_error("SHA-256 mismatch. The downloaded executable will not be installed.");
    Handle file(CreateFileW(path.c_str(), GENERIC_READ, FILE_SHARE_READ, nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr));
    if (!file) throw winError("Cannot inspect the downloaded executable");
    auto readExact = [&](void* data, DWORD size) {
        DWORD read = 0;
        require(ReadFile(file.value, data, size, &read, nullptr), "Cannot inspect the downloaded executable");
        if (read != size) throw std::runtime_error("The executable has a truncated PE header.");
    };
    IMAGE_DOS_HEADER dos{};
    readExact(&dos, sizeof(dos));
    if (dos.e_magic != IMAGE_DOS_SIGNATURE || dos.e_lfanew < static_cast<LONG>(sizeof(dos)) ||
        static_cast<uint64_t>(dos.e_lfanew) + sizeof(IMAGE_NT_HEADERS64) > expectedSize)
        throw std::runtime_error("The download is not a Windows executable.");
    LARGE_INTEGER offset{};
    offset.QuadPart = dos.e_lfanew;
    require(SetFilePointerEx(file.value, offset, nullptr, FILE_BEGIN), "Cannot inspect the PE header");
    IMAGE_NT_HEADERS64 pe{};
    readExact(&pe, sizeof(pe));
    if (pe.Signature != IMAGE_NT_SIGNATURE || pe.FileHeader.Machine != IMAGE_FILE_MACHINE_AMD64 ||
        pe.OptionalHeader.Magic != IMAGE_NT_OPTIONAL_HDR64_MAGIC ||
        !(pe.FileHeader.Characteristics & IMAGE_FILE_EXECUTABLE_IMAGE) || (pe.FileHeader.Characteristics & IMAGE_FILE_DLL))
        throw std::runtime_error("The download is not a native Windows x64 executable.");
    DWORD ignored = 0;
    const DWORD versionSize = GetFileVersionInfoSizeW(path.c_str(), &ignored);
    if (!versionSize) throw winError("The executable has no version resource");
    std::vector<BYTE> resource(versionSize);
    require(GetFileVersionInfoW(path.c_str(), 0, versionSize, resource.data()), "Cannot read executable version");
    struct Translation { WORD language, codepage; };
    Translation* translations = nullptr;
    UINT translationSize = 0;
    require(VerQueryValueW(resource.data(), L"\\VarFileInfo\\Translation", reinterpret_cast<void**>(&translations), &translationSize), "Cannot read executable version language");
    bool matches = false;
    for (UINT i = 0; i < translationSize / sizeof(Translation); ++i) {
        wchar_t key[80]{};
        swprintf_s(key, L"\\StringFileInfo\\%04x%04x\\FileVersion",
            static_cast<unsigned>(translations[i].language), static_cast<unsigned>(translations[i].codepage));
        wchar_t* text = nullptr;
        UINT length = 0;
        if (VerQueryValueW(resource.data(), key, reinterpret_cast<void**>(&text), &length) && length > 1) {
            const auto actual = parseVersion(utf8(std::wstring_view(text, length - 1)));
            if (actual && *actual == version) matches = true;
        }
    }
    if (!matches) throw std::runtime_error("The executable's version resource does not match the release tag.");
}

fs::path createStage(const fs::path& target) {
    // Restrict the staging directory to this user, Administrators and SYSTEM.
    // Downloaded programs are never placed in a shared writable temp directory.
    Handle token;
    require(OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &token.value), "Cannot read the current user");
    DWORD size = 0;
    GetTokenInformation(token.value, TokenUser, nullptr, 0, &size);
    if (!size) throw winError("Cannot read the current user SID");
    std::vector<BYTE> user(size);
    require(GetTokenInformation(token.value, TokenUser, user.data(), size, &size), "Cannot read the current user SID");
    LocalMemory sid;
    require(ConvertSidToStringSidW(reinterpret_cast<TOKEN_USER*>(user.data())->User.Sid,
        reinterpret_cast<LPWSTR*>(&sid.value)), "Cannot format the current user SID");
    const std::wstring acl = L"D:P(A;OICI;FA;;;SY)(A;OICI;FA;;;BA)(A;OICI;FA;;;" +
        std::wstring(static_cast<const wchar_t*>(sid.value)) + L")";
    LocalMemory descriptor;
    require(ConvertStringSecurityDescriptorToSecurityDescriptorW(acl.c_str(), SDDL_REVISION_1,
        reinterpret_cast<PSECURITY_DESCRIPTOR*>(&descriptor.value), nullptr), "Cannot create private update permissions");
    SECURITY_ATTRIBUTES security{sizeof(security), descriptor.value, FALSE};
    for (unsigned attempt = 0; attempt < 8; ++attempt) {
        std::array<UCHAR, 16> random{};
        cryptoRequire(BCryptGenRandom(nullptr, random.data(), static_cast<ULONG>(random.size()), BCRYPT_USE_SYSTEM_PREFERRED_RNG));
        std::wstring suffix;
        constexpr wchar_t hex[] = L"0123456789abcdef";
        for (const auto byte : random) { suffix += hex[byte >> 4]; suffix += hex[byte & 15]; }
        const fs::path directory = target.parent_path() / (L".v64tng-update-" + suffix);
        if (CreateDirectoryW(directory.c_str(), &security)) return directory;
        if (GetLastError() != ERROR_ALREADY_EXISTS)
            throw winError("Cannot stage an in-place update beside the executable; check installation-directory permissions");
    }
    throw std::runtime_error("Cannot create a unique private update directory.");
}
void cleanStage(const fs::path& directory) noexcept {
    // Delete known files only. Never recursively follow a path supplied in a release.
    for (const auto* name : {L"download.exe", L"helper.exe", L"previous.exe", L"failed.exe"})
        DeleteFileW((directory / name).c_str());
    RemoveDirectoryW(directory.c_str());
}
Handle inherited(HANDLE source, DWORD access) {
    Handle result;
    require(DuplicateHandle(GetCurrentProcess(), source, GetCurrentProcess(), &result.value, access, TRUE, 0), "Cannot prepare an update process handle");
    return result;
}
Handle event() {
    Handle result(CreateEventW(nullptr, TRUE, FALSE, nullptr));
    if (!result) throw winError("Cannot create an update event");
    return result;
}
uint64_t handleNumber(HANDLE value) { return static_cast<uint64_t>(reinterpret_cast<uintptr_t>(value)); }
HANDLE jsonHandle(const Json& plan, const char* key) {
    const auto number = plan.at(key).get<uint64_t>();
    if (!number || number > UINTPTR_MAX) throw std::runtime_error("Invalid inherited update handle.");
    return reinterpret_cast<HANDLE>(static_cast<uintptr_t>(number));
}
HANDLE argumentHandle(const std::string& text) {
    uint64_t number = 0;
    const auto parsed = std::from_chars(text.data(), text.data() + text.size(), number);
    if (parsed.ec != std::errc{} || parsed.ptr != text.data() + text.size() || !number || number > UINTPTR_MAX)
        throw std::runtime_error("Invalid inherited update handle.");
    return reinterpret_cast<HANDLE>(static_cast<uintptr_t>(number));
}
Handle makeMapping(const Json& plan) {
    const auto bytes = plan.dump();
    if (bytes.size() > mappingSize - sizeof(uint32_t)) throw std::runtime_error("Update restart arguments are too long.");
    Handle mapping(CreateFileMappingW(INVALID_HANDLE_VALUE, nullptr, PAGE_READWRITE, 0, static_cast<DWORD>(mappingSize), nullptr));
    if (!mapping) throw winError("Cannot prepare the update handoff");
    MappedMemory view(mapping.value, FILE_MAP_WRITE);
    const auto length = static_cast<uint32_t>(bytes.size());
    std::memcpy(view.value, &length, sizeof(length));
    std::memcpy(static_cast<char*>(view.value) + sizeof(length), bytes.data(), length);
    return mapping;
}
Json readMapping(HANDLE mapping) {
    MappedMemory view(mapping, FILE_MAP_READ);
    uint32_t length = 0;
    std::memcpy(&length, view.value, sizeof(length));
    if (!length || length > mappingSize - sizeof(length)) throw std::runtime_error("Invalid update handoff length.");
    const auto* bytes = static_cast<const char*>(view.value) + sizeof(length);
    auto plan = Json::parse(bytes, bytes + length);
    if (plan.at("protocol").get<unsigned>() != 1) throw std::runtime_error("Unsupported update handoff protocol.");
    return plan;
}
Handle startProcess(const fs::path& application, std::wstring command, const std::wstring& directory,
                    std::vector<HANDLE> handles) {
    if (command.size() >= 32767) throw std::runtime_error("The restart command line is too long.");
    // Only these explicitly duplicated handles cross the process boundary.
    SIZE_T size = 0;
    InitializeProcThreadAttributeList(nullptr, 1, 0, &size);
    std::vector<BYTE> storage(size);
    auto* attributes = reinterpret_cast<LPPROC_THREAD_ATTRIBUTE_LIST>(storage.data());
    require(InitializeProcThreadAttributeList(attributes, 1, 0, &size), "Cannot initialize process handle isolation");
    struct AttributeCleanup { LPPROC_THREAD_ATTRIBUTE_LIST value; ~AttributeCleanup() { DeleteProcThreadAttributeList(value); } } cleanup{attributes};
    require(UpdateProcThreadAttribute(attributes, 0, PROC_THREAD_ATTRIBUTE_HANDLE_LIST, handles.data(),
        handles.size() * sizeof(HANDLE), nullptr, nullptr), "Cannot isolate update process handles");
    STARTUPINFOEXW startup{};
    startup.StartupInfo.cb = sizeof(startup);
    startup.lpAttributeList = attributes;
    PROCESS_INFORMATION process{};
    require(CreateProcessW(application.c_str(), command.data(), nullptr, nullptr, TRUE,
        CREATE_NO_WINDOW | EXTENDED_STARTUPINFO_PRESENT, nullptr, directory.c_str(), &startup.StartupInfo, &process), "Cannot start update process");
    Handle thread(process.hThread);
    return Handle(process.hProcess);
}
struct PendingUpdate {
    fs::path stage;
    Handle go = event(), cancel = event(), helper;
    bool committed = false;
    ~PendingUpdate() {
        if (committed) return;
        if (helper) {
            SetEvent(cancel.value);
            try {
                auto process = std::make_shared<Handle>(std::move(helper));
                const auto directory = stage;
                std::thread([process, directory] {
                    if (WaitForSingleObject(process->value, INFINITE) == WAIT_OBJECT_0) cleanStage(directory);
                }).detach();
                return;
            } catch (...) {
                // A cleanup-thread allocation failure must not abort the game.
            }
        }
        if (!stage.empty()) cleanStage(stage);
    }
};
std::unique_ptr<PendingUpdate> prepareUpdate(const Release& release, const fs::path& target,
        const std::wstring& commandLine, const std::wstring& directory,
        const std::atomic_bool& cancelled, std::atomic_uint64_t& progress) {
    const auto installed = parseVersion(V64TNG_VERSION_STRING);
    if (!installed || release.version <= *installed || !release.unavailable.empty())
        throw std::runtime_error("This release is not a newer installable version.");
    auto pending = std::make_unique<PendingUpdate>();
    pending->stage = createStage(target);
    const fs::path download = pending->stage / L"download.exe";
    {
        Handle file(CreateFileW(download.c_str(), GENERIC_WRITE, 0, nullptr, CREATE_NEW, FILE_ATTRIBUTE_NORMAL, nullptr));
        if (!file) throw winError("Cannot create the update download");
        fetch(wide(release.download), cancelled, release.size, [&](const char* bytes, DWORD size) {
            DWORD written = 0;
            require(WriteFile(file.value, bytes, size, &written, nullptr), "Cannot write the downloaded update");
            if (written != size) throw std::runtime_error("The update download could not be completely written.");
            progress.fetch_add(size);
        });
        require(FlushFileBuffers(file.value), "Cannot flush the downloaded executable");
    }
    checkCancelled(cancelled);
    validateExecutable(download, release.size, release.digest, release.version);
    const fs::path helper = pending->stage / L"helper.exe";
    require(CopyFileW(target.c_str(), helper.c_str(), TRUE), "Cannot prepare the temporary update helper");
    checkCancelled(cancelled);
    auto parent = inherited(GetCurrentProcess(), SYNCHRONIZE);
    auto ready = event();
    auto childReady = inherited(ready.value, EVENT_MODIFY_STATE);
    auto childGo = inherited(pending->go.value, SYNCHRONIZE);
    auto childCancel = inherited(pending->cancel.value, SYNCHRONIZE);
    Json plan = {
        {"protocol", 1}, {"target", utf8(target.wstring())}, {"stage", utf8(pending->stage.wstring())},
        {"command", utf8(commandLine)}, {"cwd", utf8(directory)}, {"version", release.tag},
        {"size", release.size}, {"digest", release.digest}, {"parent", handleNumber(parent.value)},
        {"ready", handleNumber(childReady.value)}, {"go", handleNumber(childGo.value)},
        {"cancel", handleNumber(childCancel.value)}
    };
    auto mapping = makeMapping(plan);
    auto childMapping = inherited(mapping.value, FILE_MAP_READ);
    const auto command = L"\"" + helper.wstring() + L"\" --internal-update " + std::to_wstring(handleNumber(childMapping.value));
    pending->helper = startProcess(helper, command, directory,
        {parent.value, childReady.value, childGo.value, childCancel.value, childMapping.value});
    HANDLE waitHandles[] = {ready.value, pending->helper.value};
    const DWORD wait = WaitForMultipleObjects(2, waitHandles, FALSE, 15000);
    if (wait != WAIT_OBJECT_0) throw std::runtime_error("The temporary updater could not prepare safely. The running game was left unchanged.");
    checkCancelled(cancelled);
    return pending;
}

bool startAndAwaitWindow(const Json& plan, HANDLE mapping) {
    const auto target = fs::path(wide(plan.at("target").get<std::string>()));
    auto ready = event();
    auto childReady = inherited(ready.value, EVENT_MODIFY_STATE);
    auto helper = inherited(GetCurrentProcess(), SYNCHRONIZE);
    auto childMapping = inherited(mapping, FILE_MAP_READ);
    auto command = wide(plan.at("command").get<std::string>());
    command += L" --internal-update-restart " + std::to_wstring(handleNumber(childMapping.value)) + L" " +
        std::to_wstring(handleNumber(childReady.value)) + L" " + std::to_wstring(handleNumber(helper.value));
    auto child = startProcess(target, command, wide(plan.at("cwd").get<std::string>()),
        {childMapping.value, childReady.value, helper.value});
    HANDLE waitHandles[] = {ready.value, child.value};
    const DWORD wait = WaitForMultipleObjects(2, waitHandles, FALSE, 90000);
    if (wait == WAIT_OBJECT_0 && WaitForSingleObject(child.value, 0) == WAIT_TIMEOUT) return true;
    if (WaitForSingleObject(child.value, 0) == WAIT_TIMEOUT) {
        // Only the newly created, unacknowledged startup is stopped. The user's
        // original process always exits through its ordinary cleanup path.
        require(TerminateProcess(child.value, ERROR_TIMEOUT), "Cannot stop an unresponsive update startup");
        if (WaitForSingleObject(child.value, 10000) != WAIT_OBJECT_0)
            throw std::runtime_error("The replacement process did not exit; the backup was retained for recovery.");
    }
    return false;
}
void runHelper(HANDLE mapping) {
    const auto plan = readMapping(mapping);
    Handle parent(jsonHandle(plan, "parent")), ready(jsonHandle(plan, "ready")),
        go(jsonHandle(plan, "go")), cancelled(jsonHandle(plan, "cancel"));
    const fs::path target(wide(plan.at("target").get<std::string>()));
    const fs::path stage(wide(plan.at("stage").get<std::string>()));
    const fs::path download = stage / L"download.exe", backup = stage / L"previous.exe";
    // Require the helper to be the copied executable in the private sibling stage.
    if (stage.parent_path() != target.parent_path() || !stage.filename().wstring().starts_with(L".v64tng-update-") ||
        !fs::equivalent(executablePath(), stage / L"helper.exe"))
        throw std::runtime_error("Invalid private update directory.");
    const auto version = parseVersion(plan.at("version").get<std::string>());
    const auto installed = parseVersion(V64TNG_VERSION_STRING);
    if (!version || !installed || *version <= *installed) throw std::runtime_error("The update must be newer than the installed version.");
    validateExecutable(download, plan.at("size").get<uint64_t>(), plan.at("digest").get<std::string>(), *version);
    require(SetEvent(ready.value), "Cannot acknowledge the prepared updater");
    HANDLE commitHandles[] = {go.value, cancelled.value, parent.value};
    if (WaitForMultipleObjects(3, commitHandles, FALSE, 120000) != WAIT_OBJECT_0) return;
    HANDLE shutdownHandles[] = {parent.value, cancelled.value};
    if (WaitForMultipleObjects(2, shutdownHandles, FALSE, 120000) != WAIT_OBJECT_0)
        throw std::runtime_error("The game did not finish shutting down. Its executable has not been replaced.");
    std::string failure;
    try {
        // Revalidate after shutdown, immediately before changing the installation.
        validateExecutable(download, plan.at("size").get<uint64_t>(), plan.at("digest").get<std::string>(), *version);
        bool replaced = false;
        DWORD replaceError = ERROR_SUCCESS;
        for (unsigned attempt = 0; attempt < 40; ++attempt) {
            if (ReplaceFileW(target.c_str(), download.c_str(), backup.c_str(), 0, nullptr, nullptr)) { replaced = true; break; }
            replaceError = GetLastError();
            if (replaceError != ERROR_SHARING_VIOLATION && replaceError != ERROR_LOCK_VIOLATION && replaceError != ERROR_ACCESS_DENIED) break;
            if (WaitForSingleObject(cancelled.value, 150) != WAIT_TIMEOUT) break;
        }
        if (!replaced) throw winError("Cannot replace the executable", replaceError);
        if (startAndAwaitWindow(plan, mapping)) { DeleteFileW(backup.c_str()); return; }
        failure = "The new version exited or did not finish starting.";
    } catch (const std::exception& error) { failure = error.what(); }
    // ReplaceFile has documented partial-failure states. Restore the backup
    // whenever one exists, including when a failed replace moved the old file.
    if (GetFileAttributesW(backup.c_str()) != INVALID_FILE_ATTRIBUTES) {
        if (GetFileAttributesW(target.c_str()) == INVALID_FILE_ATTRIBUTES)
            require(MoveFileExW(backup.c_str(), target.c_str(), MOVEFILE_WRITE_THROUGH), "Cannot restore the previous executable");
        else
            require(ReplaceFileW(target.c_str(), backup.c_str(), (stage / L"failed.exe").c_str(), 0, nullptr, nullptr), "Cannot restore the previous executable");
    }
    // The old executable is restarted even if replacement failed before moving it.
    if (!startAndAwaitWindow(plan, mapping))
        throw std::runtime_error(failure + "\nThe previous version could not restart. Recovery files: " + utf8(stage.wstring()));
    MessageBoxW(nullptr, wide(failure + "\n\nThe previous version has been restored and restarted.").c_str(),
        L"v64tng update was not installed", MB_OK | MB_ICONERROR);
}

struct RestartContext {
    Handle ready, helper;
    fs::path stage;
};
std::optional<RestartContext> restartContext;
std::optional<std::wstring> restartCommand;

void rtfCharacter(std::string& output, wchar_t character) {
    if (character == L'\\' || character == L'{' || character == L'}') { output += '\\'; output += static_cast<char>(character); }
    else if (character == L'\t') output += "\\tab ";
    else if (character == L'\n') output += "\\line ";
    else if (character >= 32 && character < 127) output += static_cast<char>(character);
    else output += "\\u" + std::to_string(static_cast<int16_t>(character)) + "?";
}
void rtfText(std::string& output, std::wstring_view text) {
    for (const wchar_t character : text) rtfCharacter(output, character);
}
std::wstring htmlAttribute(std::wstring_view tag, std::wstring_view name) {
    const auto offset = tag.find(name);
    if (offset == std::wstring_view::npos) return {};
    auto value = tag.substr(offset + name.size());
    if (value.empty() || value.front() != L'=') return {};
    value.remove_prefix(1);
    if (value.empty() || (value.front() != L'\"' && value.front() != L'\'')) return {};
    const wchar_t quote = value.front();
    value.remove_prefix(1);
    return std::wstring(value.substr(0, value.find(quote)));
}
void inlineRtf(std::string& output, std::wstring_view text) {
    bool bold = false, italic = false, code = false;
    for (size_t i = 0; i < text.size();) {
        if (text[i] == L'`') { code = !code; output += code ? "\\f1 " : "\\f0 "; ++i; continue; }
        if (!code && text.substr(i, 2) == L"**") { bold = !bold; output += bold ? "\\b " : "\\b0 "; i += 2; continue; }
        if (!code && text[i] == L'*') { italic = !italic; output += italic ? "\\i " : "\\i0 "; ++i; continue; }
        if (!code && (text[i] == L'[' || (text[i] == L'!' && i + 1 < text.size() && text[i + 1] == L'['))) {
            const bool image = text[i] == L'!';
            const size_t start = i + (image ? 2 : 1), middle = text.find(L"](", start);
            const size_t end = middle == std::wstring_view::npos ? middle : text.find(L')', middle + 2);
            if (end != std::wstring_view::npos) {
                if (image) output += "[Image: ";
                rtfText(output, text.substr(start, middle - start));
                if (image) output += ']';
                output += " (\\cf2 ";
                rtfText(output, text.substr(middle + 2, end - middle - 2));
                output += "\\cf1 )";
                i = end + 1;
                continue;
            }
        }
        if (!code && text[i] == L'<') {
            const size_t end = text.find(L'>', i);
            if (end != std::wstring_view::npos) {
                const auto tag = text.substr(i, end - i + 1);
                if (tag.starts_with(L"<img ")) {
                    output += "[Image: ";
                    rtfText(output, htmlAttribute(tag, L"alt"));
                    output += "] (\\cf2 ";
                    rtfText(output, htmlAttribute(tag, L"src"));
                    output += "\\cf1 )";
                    i = end + 1;
                    continue;
                }
                if (tag == L"<br>" || tag == L"<br/>" || tag == L"<br />" || tag == L"</p>") output += "\\line ";
                else if (tag == L"<b>" || tag == L"<strong>") output += "\\b ";
                else if (tag == L"</b>" || tag == L"</strong>") output += "\\b0 ";
                else if (tag == L"<i>" || tag == L"<em>") output += "\\i ";
                else if (tag == L"</i>" || tag == L"</em>") output += "\\i0 ";
                else if (tag.starts_with(L"<a ")) {
                    const auto href = htmlAttribute(tag, L"href");
                    if (!href.empty()) { output += "(\\cf2 "; rtfText(output, href); output += "\\cf1 ) "; }
                }
                else if (tag != L"<p>" && tag != L"</a>" && tag != L"<ul>" && tag != L"</ul>" && tag != L"<li>" && tag != L"</li>") {
                    // Unknown markup remains visible instead of losing release text.
                    rtfText(output, tag);
                }
                i = end + 1;
                continue;
            }
        }
        if (!code && text[i] == L'&') {
            constexpr std::pair<std::wstring_view, wchar_t> entities[] = {
                {L"&amp;", L'&'}, {L"&lt;", L'<'}, {L"&gt;", L'>'}, {L"&quot;", L'\"'}, {L"&#39;", L'\''}, {L"&nbsp;", L' '}
            };
            bool decoded = false;
            for (const auto& [entity, character] : entities) {
                if (text.substr(i).starts_with(entity)) {
                    rtfCharacter(output, character); i += entity.size(); decoded = true; break;
                }
            }
            if (decoded) continue;
        }
        rtfCharacter(output, text[i++]);
    }
}
std::string releaseRtf(const Release& release) {
    std::string result = "{\\rtf1\\ansi\\deff0\\uc1{\\fonttbl{\\f0 Segoe UI;}{\\f1 Consolas;}}"
        "{\\colortbl;\\red25\\green25\\blue25;\\red0\\green90\\blue180;}\\viewkind4\\f0\\fs20\\cf1 ";
    result += "{\\b\\fs32 "; rtfText(result, wide(release.title)); result += "}\\par\\par ";
    rtfText(result, wide("Installed: " V64TNG_VERSION_STRING "\nRelease: " + release.tag +
        "\nPublished: " + release.published + "\nAuthor: " + release.author + (release.prerelease ? "\nPre-release" : "\nRelease") +
        "\n" + release.page));
    result += "\\par\\par ";
    std::wistringstream lines(wide(release.body));
    std::wstring line;
    bool fenced = false;
    while (std::getline(lines, line)) {
        if (!line.empty() && line.back() == L'\r') line.pop_back();
        if (line.starts_with(L"```")) { fenced = !fenced; continue; }
        result += "{\\pard\\sa90 ";
        std::wstring_view content(line);
        if (fenced) { result += "\\f1 "; rtfText(result, content); }
        else {
            size_t heading = 0;
            while (heading < content.size() && content[heading] == L'#') ++heading;
            if (heading && heading <= 6 && heading < content.size() && content[heading] == L' ') {
                result += "\\b\\fs" + std::to_string(heading == 1 ? 32 : heading == 2 ? 28 : 24) + " ";
                content.remove_prefix(heading + 1);
            }
            else if (content.starts_with(L"- ") || content.starts_with(L"* ") || content.starts_with(L"+ ")) {
                result += "\\li280\\fi-220\\tx280\\bullet\\tab ";
                content.remove_prefix(2);
            }
            inlineRtf(result, content);
        }
        result += "\\par}";
    }
    if (release.body.empty()) result += "No release notes were provided.\\par ";
    result += "\\par {\\b Assets}\\par ";
    for (const auto& asset : release.assets) {
        rtfText(result, wide(asset.name + " (" + std::to_string(asset.size) + " bytes)\n" + asset.url));
        result += "\\par ";
    }
    result += "\\par {\\b Download: }v64tng.exe";
    rtfText(result, wide("\nSize: " + std::to_string(release.size) + " bytes\n" + release.digest));
    result += '}';
    return result;
}
struct RtfInput { std::string_view bytes; };
DWORD CALLBACK streamRtf(DWORD_PTR cookie, LPBYTE buffer, LONG requested, LONG* written) {
    auto& input = *reinterpret_cast<RtfInput*>(cookie);
    const size_t size = std::min(input.bytes.size(), static_cast<size_t>(requested));
    std::memcpy(buffer, input.bytes.data(), size);
    input.bytes.remove_prefix(size);
    *written = static_cast<LONG>(size);
    return 0;
}
void showRelease(HWND dialog, const Release& release) {
    const auto rtf = releaseRtf(release);
    RtfInput input{rtf};
    EDITSTREAM stream{};
    stream.dwCookie = reinterpret_cast<DWORD_PTR>(&input);
    stream.pfnCallback = streamRtf;
    const HWND notes = GetDlgItem(dialog, IDC_UPDATE_NOTES);
    SendMessageW(notes, EM_EXLIMITTEXT, 0, 16 * 1024 * 1024);
    SendMessageW(notes, EM_AUTOURLDETECT, TRUE, 0);
    SendMessageW(notes, EM_SETEVENTMASK, 0, ENM_LINK);
    SendMessageW(notes, EM_STREAMIN, SF_RTF, reinterpret_cast<LPARAM>(&stream));
    if (stream.dwError) throw std::runtime_error("Cannot format the release notes.");
    SendMessageW(notes, EM_SETSEL, 0, 0);
    SendMessageW(notes, EM_SCROLLCARET, 0, 0);
}
void openBrowser(HWND owner, const std::wstring& url) {
    if (!url.starts_with(L"https://") && !url.starts_with(L"http://"))
        throw std::runtime_error("Only web links can be opened from release notes.");
    const auto result = reinterpret_cast<INT_PTR>(ShellExecuteW(owner, L"open", url.c_str(), nullptr, nullptr, SW_SHOWNORMAL));
    if (result <= 32) throw std::runtime_error("Windows could not open the default browser (ShellExecute " + std::to_string(result) + ").");
}

struct UpdateDialog {
    HWND window = nullptr;
    fs::path target;
    std::wstring command, directory;
    std::atomic_bool cancelled{false};
    std::atomic_uint64_t bytes{0};
    std::thread worker;
    std::optional<Release> release;
    std::unique_ptr<PendingUpdate> pending;
    std::string error;
    bool working = false, downloading = false, closeRequested = false;
    ~UpdateDialog() { cancelled.store(true); if (worker.joinable()) worker.join(); }
};
void launchWorker(UpdateDialog& dialog, bool download) {
    dialog.error.clear();
    dialog.cancelled.store(false);
    dialog.bytes.store(0);
    dialog.downloading = download;
    EnableWindow(GetDlgItem(dialog.window, IDC_UPDATE_INSTALL), FALSE);
    EnableWindow(GetDlgItem(dialog.window, IDC_UPDATE_RELEASE), FALSE);
    SetDlgItemTextW(dialog.window, IDCANCEL, L"Cancel");
    SetDlgItemTextW(dialog.window, IDC_UPDATE_STATUS, download ? L"Downloading and validating v64tng.exe..." : L"Checking official GitHub releases...");
    const HWND progress = GetDlgItem(dialog.window, IDC_UPDATE_PROGRESS);
    SetWindowLongPtrW(progress, GWL_STYLE, GetWindowLongPtrW(progress, GWL_STYLE) | PBS_MARQUEE);
    SendMessageW(progress, PBM_SETMARQUEE, TRUE, 30);
    SetTimer(dialog.window, progressTimer, 100, nullptr);
    dialog.worker = std::thread([&dialog, download] {
        try {
            if (download) dialog.pending = prepareUpdate(*dialog.release, dialog.target, dialog.command,
                dialog.directory, dialog.cancelled, dialog.bytes);
            else dialog.release = findRelease(dialog.cancelled);
        } catch (const std::exception& error) { dialog.error = error.what(); }
        catch (...) { dialog.error = "Unexpected update failure. The installed executable was left unchanged."; }
        PostMessageW(dialog.window, workerDone, 0, 0);
    });
    dialog.working = true;
}
INT_PTR processUpdateDialog(HWND window, UINT message, WPARAM wParam, LPARAM lParam) {
    auto* dialog = reinterpret_cast<UpdateDialog*>(GetWindowLongPtrW(window, DWLP_USER));
    if (message == WM_INITDIALOG) {
        dialog = reinterpret_cast<UpdateDialog*>(lParam);
        dialog->window = window;
        SetWindowLongPtrW(window, DWLP_USER, reinterpret_cast<LONG_PTR>(dialog));
        RECT parent{}, bounds{};
        GetWindowRect(GetParent(window), &parent);
        GetWindowRect(window, &bounds);
        SetWindowPos(window, nullptr, parent.left + ((parent.right - parent.left) - (bounds.right - bounds.left)) / 2,
            parent.top + ((parent.bottom - parent.top) - (bounds.bottom - bounds.top)) / 2, 0, 0, SWP_NOSIZE | SWP_NOZORDER);
        SendMessageW(window, WM_SETICON, ICON_BIG, reinterpret_cast<LPARAM>(LoadIconW(GetModuleHandleW(nullptr), MAKEINTRESOURCEW(IDI_ICON1))));
        launchWorker(*dialog, false);
        return TRUE;
    }
    if (!dialog) return FALSE;
    switch (message) {
    case workerDone: {
        if (dialog->worker.joinable()) dialog->worker.join();
        dialog->working = false;
        KillTimer(window, progressTimer);
        SendDlgItemMessageW(window, IDC_UPDATE_PROGRESS, PBM_SETMARQUEE, FALSE, 0);
        SetDlgItemTextW(window, IDCANCEL, L"Close");
        if (dialog->closeRequested) { EndDialog(window, IDCANCEL); return TRUE; }
        if (!dialog->error.empty()) {
            SetDlgItemTextW(window, IDC_UPDATE_STATUS, wide(dialog->error).c_str());
            SetDlgItemTextW(window, IDC_UPDATE_INSTALL, L"Retry");
            EnableWindow(GetDlgItem(window, IDC_UPDATE_INSTALL), TRUE);
            EnableWindow(GetDlgItem(window, IDC_UPDATE_RELEASE), dialog->release.has_value());
            MessageBoxW(window, wide(dialog->error).c_str(), L"v64tng update error", MB_OK | MB_ICONERROR);
            return TRUE;
        }
        if (dialog->pending) { EndDialog(window, IDOK); return TRUE; }
        showRelease(window, *dialog->release);
        const auto installed = parseVersion(V64TNG_VERSION_STRING);
        const bool newer = installed && dialog->release->version > *installed;
        std::wstring status;
        if (!newer) status = L"You're up to date. Installed: " V64TNG_VERSION_WSTRING;
        else if (!dialog->release->unavailable.empty()) status = wide(dialog->release->unavailable);
        else status = L"Version " + wide(dialog->release->tag) + L" is available. Download and restart to install it.";
        SetDlgItemTextW(window, IDC_UPDATE_STATUS, status.c_str());
        SetDlgItemTextW(window, IDC_UPDATE_INSTALL, L"Download and Restart");
        EnableWindow(GetDlgItem(window, IDC_UPDATE_INSTALL), newer && dialog->release->unavailable.empty());
        EnableWindow(GetDlgItem(window, IDC_UPDATE_RELEASE), TRUE);
        return TRUE;
    }
    case WM_TIMER:
        if (wParam == progressTimer && dialog->downloading && dialog->release) {
            const uint64_t bytes = dialog->bytes.load();
            if (bytes) {
                const HWND progress = GetDlgItem(window, IDC_UPDATE_PROGRESS);
                SendMessageW(progress, PBM_SETMARQUEE, FALSE, 0);
                SetWindowLongPtrW(progress, GWL_STYLE, GetWindowLongPtrW(progress, GWL_STYLE) & ~static_cast<LONG_PTR>(PBS_MARQUEE));
                SendMessageW(progress, PBM_SETRANGE32, 0, 1000);
                SendMessageW(progress, PBM_SETPOS, static_cast<WPARAM>(bytes * 1000 / dialog->release->size), 0);
                if (!dialog->closeRequested && bytes == dialog->release->size)
                    SetDlgItemTextW(window, IDC_UPDATE_STATUS, L"Download complete. Validating and preparing the restart...");
            }
        }
        return TRUE;
    case WM_NOTIFY: {
        const auto* notification = reinterpret_cast<NMHDR*>(lParam);
        if (notification->idFrom == IDC_UPDATE_NOTES && notification->code == EN_LINK) {
            const auto* link = reinterpret_cast<ENLINK*>(lParam);
            if (link->msg == WM_LBUTTONUP && link->chrg.cpMax > link->chrg.cpMin && link->chrg.cpMax - link->chrg.cpMin < 8192) {
                std::wstring url(static_cast<size_t>(link->chrg.cpMax - link->chrg.cpMin) + 1, L'\0');
                TEXTRANGEW range{link->chrg, url.data()};
                const auto length = SendDlgItemMessageW(window, IDC_UPDATE_NOTES, EM_GETTEXTRANGE, 0, reinterpret_cast<LPARAM>(&range));
                url.resize(static_cast<size_t>(length));
                openBrowser(window, url);
                return TRUE;
            }
        }
        break;
    }
    case WM_COMMAND:
        if (LOWORD(wParam) == IDC_UPDATE_RELEASE && !dialog->working && dialog->release) {
            openBrowser(window, wide(dialog->release->page)); return TRUE;
        }
        if (LOWORD(wParam) == IDC_UPDATE_INSTALL && !dialog->working) {
            launchWorker(*dialog, dialog->release.has_value()); return TRUE;
        }
        if (LOWORD(wParam) != IDCANCEL) break;
        [[fallthrough]];
    case WM_CLOSE:
        if (dialog->working) {
            dialog->closeRequested = true;
            dialog->cancelled.store(true);
            EnableWindow(GetDlgItem(window, IDCANCEL), FALSE);
            SetDlgItemTextW(window, IDC_UPDATE_STATUS, L"Cancelling the update request...");
        } else EndDialog(window, IDCANCEL);
        return TRUE;
    }
    return FALSE;
}
INT_PTR CALLBACK updateDialogProc(HWND window, UINT message, WPARAM wParam, LPARAM lParam) {
    try { return processUpdateDialog(window, message, wParam, lParam); }
    catch (const std::exception& error) {
        MessageBoxW(window, wide(error.what()).c_str(), L"v64tng update error", MB_OK | MB_ICONERROR);
        auto* dialog = reinterpret_cast<UpdateDialog*>(GetWindowLongPtrW(window, DWLP_USER));
        if (!dialog || !dialog->working) EndDialog(window, IDCANCEL);
        return TRUE;
    }
}
} // namespace

void openProjectGitHub(HWND owner) {
    try { openBrowser(owner, projectUrl); }
    catch (const std::exception& error) { MessageBoxW(owner, wide(error.what()).c_str(), L"v64tng", MB_OK | MB_ICONERROR); }
}
void showUpdateDialog(HWND owner) {
    // Rich Edit is a Windows component, loaded only from the system directory.
    HMODULE richEdit = LoadLibraryExW(L"Msftedit.dll", nullptr, LOAD_LIBRARY_SEARCH_SYSTEM32);
    if (!richEdit) { MessageBoxW(owner, L"Windows Rich Edit could not be loaded.", L"v64tng update error", MB_OK | MB_ICONERROR); return; }
    struct ModuleCleanup { HMODULE value; ~ModuleCleanup() { FreeLibrary(value); } } closeModule{richEdit};
    try {
        UpdateDialog dialog;
        dialog.target = executablePath();
        dialog.command = restartCommand ? *restartCommand : GetCommandLineW();
        // Updates are requested from the active game window. A game originally
        // opened through the launcher should reopen directly after installation.
        int argumentCount = 0;
        LocalMemory originalArguments;
        originalArguments.value = CommandLineToArgvW(dialog.command.c_str(), &argumentCount);
        if (!originalArguments.value) throw winError("Cannot preserve the restart arguments");
        if (argumentCount == 1) dialog.command += L" !";
        dialog.directory = currentDirectory();
        const auto result = DialogBoxParamW(GetModuleHandleW(nullptr), MAKEINTRESOURCEW(IDD_UPDATE_DIALOG), owner,
            updateDialogProc, reinterpret_cast<LPARAM>(&dialog));
        if (result == -1) throw winError("Cannot create the update dialog");
        if (result == IDOK && dialog.pending) {
            require(SetEvent(dialog.pending->go.value), "Cannot commit the prepared update");
            if (!PostMessageW(owner, WM_CLOSE, 0, 0)) {
                SetEvent(dialog.pending->cancel.value);
                throw winError("Cannot request the game's normal shutdown");
            }
            dialog.pending->committed = true;
        }
    } catch (const std::exception& error) { MessageBoxW(owner, wide(error.what()).c_str(), L"v64tng update error", MB_OK | MB_ICONERROR); }
}

std::optional<int> handleUpdateStartup(std::vector<std::string>& arguments) {
    if (arguments.size() > 1 && arguments[1] == "--internal-update") {
        try {
            if (arguments.size() != 3) throw std::runtime_error("Invalid internal updater invocation.");
            Handle mapping(argumentHandle(arguments[2]));
            runHelper(mapping.value);
            return 0;
        } catch (const std::exception& error) {
            const auto message = wide(error.what()) + L"\n\nRecovery files, if any, remain in the .v64tng-update-* directory beside the executable.\nOfficial releases: " + releasesUrl;
            MessageBoxW(nullptr, message.c_str(), L"v64tng update error", MB_OK | MB_ICONERROR);
            return 1;
        }
    }
    if (arguments.size() >= 5 && arguments[arguments.size() - 4] == "--internal-update-restart") {
        Handle mapping(argumentHandle(arguments[arguments.size() - 3]));
        const auto plan = readMapping(mapping.value);
        RestartContext context;
        context.ready = Handle(argumentHandle(arguments[arguments.size() - 2]));
        context.helper = Handle(argumentHandle(arguments.back()));
        context.stage = fs::path(wide(plan.at("stage").get<std::string>()));
        const auto target = fs::path(wide(plan.at("target").get<std::string>()));
        if (context.stage.parent_path() != target.parent_path() ||
            !context.stage.filename().wstring().starts_with(L".v64tng-update-") || !fs::equivalent(executablePath(), target))
            throw std::runtime_error("Invalid update restart context.");
        restartContext = std::move(context);
        restartCommand = wide(plan.at("command").get<std::string>());
        arguments.resize(arguments.size() - 4);
    }
    return {};
}
void completeUpdateStartup() {
    if (!restartContext) return;
    auto context = std::make_shared<RestartContext>(std::move(*restartContext));
    restartContext.reset();
    // Start the cleanup waiter before acknowledgement, so a thread-creation
    // failure still leaves the helper's backup available for rollback.
    std::thread([context] {
        if (WaitForSingleObject(context->helper.value, INFINITE) == WAIT_OBJECT_0) cleanStage(context->stage);
    }).detach();
    require(SetEvent(context->ready.value), "Cannot acknowledge the updated application's startup");
}
