#pragma once

#include <array>
#include <cstdint>
#include <string_view>

namespace phantom::project_overrides
{
struct EmbeddedResourceEntry
{
    std::string_view logicalPath;
    std::string_view resourceName;
};

inline constexpr std::string_view kBuiltProjectTitle = "";
inline constexpr std::string_view kBuiltProjectVersion = "";
inline constexpr std::string_view kBuiltProjectGameStateJson = "";
inline constexpr std::string_view kMenuTitleText = "SUMMERCAMP";
inline constexpr int kMenuTitleFontPixelHeight = 420;
inline constexpr int kMenuTitleColorR = 255;
inline constexpr int kMenuTitleColorG = 0;
inline constexpr int kMenuTitleColorB = 0;
inline constexpr float kMenuTitleXRatio = 0.5f;
inline constexpr float kMenuTitlePaddingTopRatio = 0.02f;
inline constexpr int kMenuTitleGapPadPx = 30;
inline constexpr int kMenuTitleMinHeightPx = 220;
inline constexpr int kMenuTitleMaxHeightPx = 480;
inline constexpr float kMenuTitleMaxWidthRatio = 0.9f;
inline constexpr float kMenuXRatio = 0.5f;
inline constexpr float kMenuYRatio = 0.57f;
inline constexpr int kMenuItemHeightPx = 100;
inline constexpr int kMenuSelectedScale = 12;
inline constexpr int kMenuNormalScale = 9;
inline constexpr int kMenuHighlightFlickerMs = 125;
inline constexpr uint32_t kMenuHighlightColorA = 0xFFFFB4A0u;
inline constexpr uint32_t kMenuHighlightColorB = 0xFF8CDCFFu;
inline constexpr uint32_t kMenuTextColor = 0xFFFFFFFFu;
inline constexpr uint32_t kMenuShadowColor = 0xFF000000u;
inline constexpr std::array<std::string_view, 4> kMenuItems = {
    "NEW GAME",
    "MULTIPLAYER",
    "OPTIONS",
    "EXIT",
};
inline constexpr std::array<EmbeddedResourceEntry, 0> kEmbeddedPvxResources = {};
inline constexpr std::array<EmbeddedResourceEntry, 0> kEmbeddedRaycastModelResources = {};
inline constexpr std::array<EmbeddedResourceEntry, 0> kEmbeddedRaycastTextureResources = {};
inline constexpr int kMenuItemCount = static_cast<int>(kMenuItems.size());
}
