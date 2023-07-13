// config.cpp

#include "config.h"
#include <fstream>

nlohmann::json config;

// Load the configuration file into a global JSON object
void load_config(const std::string& filename)
{
    // Open the file and load the JSON
    std::ifstream config_file(filename);
    if (config_file.is_open())
    {
        config_file >> config;
    }
}

// Template specialization for bool
template <>
bool get_config_value<bool>(const std::string& key)
{
    return config[key].get<bool>();
}

// Template specialization for int
template <>
int get_config_value<int>(const std::string& key)
{
    return config[key].get<int>();
}

// Template specialization for string
template <>
std::string get_config_value<std::string>(const std::string& key)
{
    return config[key].get<std::string>();
}