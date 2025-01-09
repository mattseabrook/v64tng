// config.cpp

#include "config.h"

#include <fstream>
#include <filesystem>

nlohmann::json config;
std::string windowTitle = "v64tng";

//
// Load configuration from file
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
		config_file >> config;
	}
	else {
		throw std::runtime_error("Failed to open configuration file: " + filename);
	}
}