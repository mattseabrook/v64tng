// config.h

#ifndef CONFIG_H
#define CONFIG_H

#include <string>
#include <nlohmann/json.hpp>

//=============================================================================

extern nlohmann::json config;
extern std::string windowTitle;
extern int MIN_CLIENT_WIDTH;
extern int MIN_CLIENT_HEIGHT;
extern int CONTENT_WIDTH;   // PVX video content resolution
extern int CONTENT_HEIGHT;

//=============================================================================

constexpr const char *default_config = R"({
    "fullscreen": false,
    "width": 1280,
    "renderer": "Vulkan",
    "display": 1,
    "x": 100,
    "y": 100,
    "pcmEnabled": true,
    "pcmVolume": 100,
    "midiEnabled": true,
    "midiMode": "opl",
    "midiVolume": 100,
    "mlookSensitivity": 50,
    "raycastFov": 90,
    "raycastSupersample": 4,
    "devMode": false
})";

//=============================================================================

void load_config(const std::string &filename);
void save_config(const std::string &filename);
void apply_game_state_overrides();

#endif // CONFIG_H
