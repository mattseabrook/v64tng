// config.h

#ifndef CONFIG_H
#define CONFIG_H

#include <string>
#include "nlohmann/json.hpp"

/*
===============================================================================

	7th Guest - Config

	Loads and parses the configuration file

===============================================================================
*/

const std::string default_config = R"(
{
    "fullscreen": false,
	"renderer": "Direct2D",
    "devMode": false
}
)";

extern nlohmann::json config;

//=============================================================================

extern bool devMode;
extern bool fullscreen;
extern std::string renderer;

//=============================================================================

void load_config(const std::string& filename);

template <typename T>
T get_config_value(const std::string& key);

// Forward declaration of specializations
template <>
bool get_config_value<bool>(const std::string& key);

template <>
int get_config_value<int>(const std::string& key);

template <>
std::string get_config_value<std::string>(const std::string& key);

#endif // CONFIG_H