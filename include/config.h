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

extern nlohmann::json config;

void load_config(const std::string& filename);

template <typename T>
T get_config_value(const std::string& key);

#endif // CONFIG_H