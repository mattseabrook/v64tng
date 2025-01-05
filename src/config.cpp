// config.cpp

#include "config.h"
#include <fstream>

nlohmann::json config;

//=============================================================================

bool devMode;
bool fullscreen;
int width;
std::string renderer;
std::string windowTitle = "v64tng";

//=============================================================================

// Load the configuration file into a global JSON object
void load_config(const std::string& filename)
{
	if (!std::filesystem::exists(filename))
	{
		std::ofstream config_file(filename);
		if (config_file.is_open())
		{
			config_file << default_config;
			config_file.close();
		}
	}

	std::ifstream config_file(filename);
	if (config_file.is_open())
	{
		config_file >> config;
	}

	// Initialization
	devMode = get_config_value<bool>("devMode");
	fullscreen = get_config_value<bool>("fullscreen");
	width = get_config_value<int>("width");
	renderer = get_config_value<std::string>("renderer");
}

//
// Specializations
//
template <>
bool get_config_value<bool>(const std::string& key) {
	return config[key].get<bool>();
}

template <>
int get_config_value<int>(const std::string& key) {
	return config[key].get<int>();
}

template <>
std::string get_config_value<std::string>(const std::string& key) {
	return config[key].get<std::string>();
}
