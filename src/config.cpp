// config.cpp

#include "config.h"
#include "window.h"
#include "game.h"

#include <fstream>
#include <filesystem>
#include <iomanip>
#include <system_error>
#include <windows.h>

nlohmann::json config;
std::string windowTitle = "v64tng";
const int MIN_CLIENT_WIDTH = 640;
// v64tng deliberately presents only the native 640x320 cinematic band. The
// original players' 640x480 foreground remains an internal GRV coordinate
// space; its 80-row top and bottom bars never become host-window content.
const int MIN_CLIENT_HEIGHT = 320;

namespace
{
std::filesystem::path getRuntimeBaseDirectory()
{
	char modulePath[MAX_PATH] = {};
	const DWORD length = GetModuleFileNameA(nullptr, modulePath, MAX_PATH);
	if (length > 0 && length < MAX_PATH)
		return std::filesystem::path(
			std::string(modulePath, length)).parent_path();

	std::error_code error;
	const auto cwd = std::filesystem::current_path(error);
	return error ? std::filesystem::path(".") : cwd;
}

std::filesystem::path resolveRuntimePath(const std::string& filename)
{
	const std::filesystem::path requested(filename);
	if (requested.is_absolute())
		return requested;
	return (getRuntimeBaseDirectory() / requested).lexically_normal();
}

void mergeMissingDefaults(
	nlohmann::json& target, const nlohmann::json& defaults)
{
	if (!target.is_object() || !defaults.is_object())
		return;

	for (const auto& [key, value] : defaults.items())
	{
		if (!target.contains(key))
			target[key] = value;
		else if (target[key].is_object() && value.is_object())
			mergeMissingDefaults(target[key], value);
	}
}
}

//
// Load configuration from file
//
void load_config(const std::string &filename)
{
	const auto configPath = resolveRuntimePath(filename);
	if (!std::filesystem::exists(configPath))
	{
		std::ofstream config_file(configPath);
		if (config_file.is_open())
			config_file << default_config;
	}

	std::ifstream config_file(configPath);
	if (config_file.is_open())
	{
		try
		{
			config_file >> config;
		}
		catch (const nlohmann::json::exception&)
		{
			config = nlohmann::json::parse(default_config);
		}
	}
	else
	{
		throw std::runtime_error(
			"Failed to open configuration file: " + configPath.string());
	}

	const nlohmann::json defaults = nlohmann::json::parse(default_config);
	if (!config.is_object())
		config = defaults;
	else
		mergeMissingDefaults(config, defaults);
}

//
// Save configuration to file
//
void save_config(const std::string &filename)
{
	const auto configPath = resolveRuntimePath(filename);
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

	std::filesystem::path temporaryPath = configPath;
	temporaryPath += ".tmp";
	{
		std::ofstream config_file(temporaryPath, std::ios::trunc);
		if (!config_file.is_open())
			throw std::runtime_error(
				"Failed to save temporary configuration file: " +
				temporaryPath.string());

		config_file << std::setw(4) << config << std::endl;
		config_file.flush();
		if (!config_file.good())
		{
			config_file.close();
			std::error_code ignored;
			std::filesystem::remove(temporaryPath, ignored);
			throw std::runtime_error(
				"Failed while writing configuration file: " +
				temporaryPath.string());
		}
	}

	if (!MoveFileExW(
			temporaryPath.wstring().c_str(),
			configPath.wstring().c_str(),
			MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH))
	{
		const DWORD error = GetLastError();
		std::error_code ignored;
		std::filesystem::remove(temporaryPath, ignored);
		throw std::runtime_error(
			"Failed to replace configuration file: " + configPath.string() +
			" (error " + std::to_string(error) + ")");
	}
}
