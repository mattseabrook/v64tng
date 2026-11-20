// gjd.cpp

#include <vector>
#include <string>
#include <stdexcept>
#include <memory>

#ifdef _WIN32
#include <windows.h>
#else
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#endif

#include "rl.h"
#include "gjd.h"
#include "vdx.h"

std::expected<std::pair<std::shared_ptr<const uint8_t>, size_t>, std::string> mapFileReadOnly(const std::filesystem::path &path)
{
#ifdef _WIN32
    HANDLE hFile = CreateFileW(path.c_str(), GENERIC_READ, FILE_SHARE_READ, nullptr,
                               OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        return std::unexpected("Cannot open " + path.string());
    }

    LARGE_INTEGER sizeLi{};
    if (!GetFileSizeEx(hFile, &sizeLi) || sizeLi.QuadPart <= 0)
    {
        CloseHandle(hFile);
        return std::unexpected("Cannot size " + path.string());
    }
    const size_t fileSize = static_cast<size_t>(sizeLi.QuadPart);

    HANDLE hMapFile = CreateFileMappingW(hFile, nullptr, PAGE_READONLY, 0, 0, nullptr);
    if (hMapFile == nullptr)
    {
        CloseHandle(hFile);
        return std::unexpected("Cannot map " + path.string());
    }

    const uint8_t *fileData = static_cast<const uint8_t *>(MapViewOfFile(hMapFile, FILE_MAP_READ, 0, 0, 0));
    if (fileData == nullptr)
    {
        CloseHandle(hMapFile);
        CloseHandle(hFile);
        return std::unexpected("Cannot view " + path.string());
    }

    std::shared_ptr<const uint8_t> owner(fileData, [hMapFile, hFile](const uint8_t *p) {
        UnmapViewOfFile(p);
        CloseHandle(hMapFile);
        CloseHandle(hFile);
    });
    return std::pair{std::move(owner), fileSize};
#else
    const int fd = open(path.c_str(), O_RDONLY);
    if (fd == -1)
    {
        return std::unexpected("Cannot open " + path.string());
    }

    struct stat st {};
    if (fstat(fd, &st) != 0 || st.st_size <= 0)
    {
        close(fd);
        return std::unexpected("Cannot size " + path.string());
    }
    const size_t fileSize = static_cast<size_t>(st.st_size);

    const uint8_t *fileData = static_cast<const uint8_t *>(mmap(nullptr, fileSize, PROT_READ, MAP_PRIVATE, fd, 0));
    close(fd);
    if (fileData == MAP_FAILED)
        return std::unexpected("Cannot map " + path.string());

    std::shared_ptr<const uint8_t> owner(fileData, [fileSize](const uint8_t *p) {
        munmap(const_cast<uint8_t *>(p), fileSize);
    });
    return std::pair{std::move(owner), fileSize};
#endif
}

std::vector<VDXFile> parseGJDFile(std::string_view rlFilename)
{
    auto rlResult = parseRLFile(std::filesystem::path(rlFilename));
    if (!rlResult)
    {
        throw std::runtime_error(rlResult.error());
    }
    std::vector<RLEntry> rlEntries = std::move(*rlResult);
    if (rlEntries.empty())
    {
        return {};
    }

    std::string gjdFilename = std::string(rlFilename.substr(0, rlFilename.find_last_of('.'))) + ".GJD";

    auto mapped = mapFileReadOnly(gjdFilename);
    if (!mapped)
        throw std::runtime_error(mapped.error());
    const auto &[owner, fileSize] = *mapped;

    std::vector<VDXFile> gjdData;
    gjdData.reserve(rlEntries.size());

    for (const auto &entry : rlEntries)
    {
        if (entry.offset > fileSize || entry.length > fileSize - entry.offset)
        {
            throw std::runtime_error("Entry extends beyond file size for: " + entry.filename);
        }
        std::span<const uint8_t> vdxSpan{owner.get() + entry.offset, entry.length};
        gjdData.push_back(parseVDXFileBorrowed(entry.filename, vdxSpan, owner));
    }
    return gjdData;
}
