// config.cpp

#include "config.h"
#include "window.h"
#include "game.h"

#include <fstream>
#include <filesystem>
#include <iomanip>
#include <windows.h>

nlohmann::json config;
std::string windowTitle = "v64tng";
const int MIN_CLIENT_WIDTH = 640;
const int MIN_CLIENT_HEIGHT = 320;

//
// Load configuration from file
//
void load_config(const std::string &filename)
{
	if (!std::filesystem::exists(filename))
	{
		std::ofstream config_file(filename);
		if (config_file.is_open())
		{
			config_file << default_config;
		}
	}

	std::ifstream config_file(filename);
	if (config_file.is_open())
	{
		config_file >> config;
	}
	else
	{
		throw std::runtime_error("Failed to open configuration file: " + filename);
	}
}

//
// Save configuration to file
//
void save_config(const std::string &filename)
{
	if (g_hwnd)
	{
		RECT windowRect;
		GetWindowRect(g_hwnd, &windowRect);
		HMONITOR hMonitor = MonitorFromWindow(g_hwnd, MONITOR_DEFAULTTONEAREST);
		MONITORINFOEX monitorInfo = {};
		monitorInfo.cbSize = sizeof(MONITORINFOEX);
		if (GetMonitorInfo(hMonitor, &monitorInfo))
		{
			state.ui.x = windowRect.left - monitorInfo.rcMonitor.left;
			state.ui.y = windowRect.top - monitorInfo.rcMonitor.top;

			if (!config["fullscreen"].get<bool>())
			{
				RECT clientRect;
				GetClientRect(g_hwnd, &clientRect);
				config["width"] = clientRect.right - clientRect.left;
				config["x"] = state.ui.x;
				config["y"] = state.ui.y;
			}

			for (const auto &display : state.ui.displays)
				if (EqualRect(&display.bounds, &monitorInfo.rcMonitor))
				{
					config["display"] = display.number;
					break;
				}
		}
	}

	std::ofstream config_file(filename);
	if (config_file.is_open())
	{
		config_file << std::setw(4) << config << std::endl;
	}
	else
	{
		throw std::runtime_error("Failed to save configuration file: " + filename);
	}
}