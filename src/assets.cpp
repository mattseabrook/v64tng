#include "assets.h"

#include <algorithm>
#include <cctype>
#include <stdexcept>

namespace {

std::filesystem::path chooseDefaultRoot()
{
    const auto current = std::filesystem::current_path();
    if (std::filesystem::exists(current / "SCRIPT.GRV"))
        return current;
    if (std::filesystem::is_directory(current / "T7G"))
        return current / "T7G";
    return current;
}

std::filesystem::path g_assetRoot = chooseDefaultRoot();

std::string lower(std::string value)
{
    std::transform(value.begin(), value.end(), value.begin(),
        [](unsigned char ch) { return static_cast<char>(std::tolower(ch)); });
    return value;
}

} // namespace

const std::filesystem::path& assetRoot()
{
    return g_assetRoot;
}

void setAssetRoot(const std::filesystem::path& root)
{
    if (!std::filesystem::is_directory(root))
        throw std::runtime_error("Asset root is not a directory: " + root.string());
    g_assetRoot = std::filesystem::absolute(root);
}

std::filesystem::path assetPath(const std::filesystem::path& relative)
{
    if (relative.is_absolute())
        return relative;
    const auto direct = g_assetRoot / relative;
    if (std::filesystem::exists(direct))
        return direct;

    const std::string wanted = lower(relative.filename().string());
    for (const auto& item : std::filesystem::directory_iterator(g_assetRoot)) {
        if (item.is_regular_file() && lower(item.path().filename().string()) == wanted)
            return item.path();
    }
    return direct;
}
