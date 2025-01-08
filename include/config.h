// config.h

#ifndef CONFIG_H
#define CONFIG_H

#include <string>
#include "nlohmann/json.hpp"

//=============================================================================
// Global Configurations
//=============================================================================

extern nlohmann::json cfg_data;

extern std::string cfg_windowTitle;
extern bool cfg_devMode;
extern bool cfg_fullscreen;
extern int cfg_width;
extern std::string cfg_renderer;
extern int cfg_display;
extern int cfg_x;
extern int cfg_y;
extern bool cfg_pcmEnabled;
extern int cfg_pcmVolume;
extern bool cfg_midiEnabled;
extern int cfg_midiVolume;

//=============================================================================
// Default Configuration
//=============================================================================

constexpr const char* default_config = R"(
{
    "fullscreen": false,
    "width": 640,
    "renderer": "Direct2D",
    "display": 0,
    "x": 0,
    "y": 0,
    "pcmEnabled": true,
    "pcmVolume": 100,
    "midiEnabled": true,
    "midiVolume": 100,
    "devMode": false
}
)";

//=============================================================================

void load_config(const std::string& filename);

template <typename T>
T get_config_value(const std::string& key);

// Specializations
template <> bool get_config_value<bool>(const std::string& key);
template <> int get_config_value<int>(const std::string& key);
template <> std::string get_config_value<std::string>(const std::string& key);

#endif // CONFIG_H