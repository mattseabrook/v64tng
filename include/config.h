// config.h

#ifndef CONFIG_H
#define CONFIG_H

#include <string>
#include <nlohmann/json.hpp>

//=============================================================================

extern nlohmann::json config;
extern std::string windowTitle;
extern const int MIN_CLIENT_WIDTH;
extern const int MIN_CLIENT_HEIGHT;

//=============================================================================

constexpr const char* default_config = R"({
    "fullscreen": false,
    "width": 640,
    "renderer": "Direct2D",
    "display": 1,
    "x": 100,
    "y": 100,
    "pcmEnabled": true,
    "pcmVolume": 100,
    "midiEnabled": true,
    "midiVolume": 100,
    "devMode": false
})";

//=============================================================================

void load_config(const std::string& filename);
void save_config(const std::string& filename);

#endif // CONFIG_H