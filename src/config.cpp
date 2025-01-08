// config.cpp

#include "config.h"
#include <fstream>
#include <filesystem>

//=============================================================================

nlohmann::json cfg_data;

std::string cfg_windowTitle = "v64tng";
bool cfg_devMode;
bool cfg_fullscreen;
int cfg_width;
std::string cfg_renderer;
int cfg_display;
int cfg_x;
int cfg_y;
bool cfg_pcmEnabled;
int cfg_pcmVolume;
bool cfg_midiEnabled;
int cfg_midiVolume;

//=============================================================================

//
// Load Configuration
//
void load_config(const std::string& filename) {
    if (!std::filesystem::exists(filename)) {
        std::ofstream config_file(filename);
        if (config_file.is_open()) {
            config_file << default_config;
        }
    }

    std::ifstream config_file(filename);
    if (config_file.is_open()) {
        config_file >> cfg_data;
    }

    cfg_devMode = get_config_value<bool>("devMode");
    cfg_fullscreen = get_config_value<bool>("fullscreen");
    cfg_width = get_config_value<int>("width");
    cfg_renderer = get_config_value<std::string>("renderer");
    cfg_display = get_config_value<int>("display");
    cfg_x = get_config_value<int>("x");
    cfg_y = get_config_value<int>("y");
    cfg_pcmEnabled = get_config_value<bool>("pcmEnabled");
    cfg_pcmVolume = get_config_value<int>("pcmVolume");
    cfg_midiEnabled = get_config_value<bool>("midiEnabled");
    cfg_midiVolume = get_config_value<int>("midiVolume");
}

//
// Template Specializations
//
template <>
bool get_config_value<bool>(const std::string& key) {
    return cfg_data[key].get<bool>();
}

template <>
int get_config_value<int>(const std::string& key) {
    return cfg_data[key].get<int>();
}

template <>
std::string get_config_value<std::string>(const std::string& key) {
    return cfg_data[key].get<std::string>();
}