// config.cpp

#include "config.h"

#include <fstream>
#include <filesystem>

nlohmann::json config;
std::string windowTitle = "v64tng";
const int MIN_CLIENT_WIDTH = 640;
const int MIN_CLIENT_HEIGHT = 320;

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

//
// Save configuration to file
//
void save_config(const std::string& filename) {
	std::ofstream config_file(filename);
	if (config_file.is_open()) {
		config_file << std::setw(4) << config << std::endl;
	}
	else {
		throw std::runtime_error("Failed to save configuration file: " + filename);
	}
}