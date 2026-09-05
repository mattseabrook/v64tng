// config.cpp

#include "config.h"
#include "project_overrides.h"
#include "window.h"
#include "game.h"

#include <fstream>
#include <filesystem>
#include <cstdio>
#include <iomanip>
#include <system_error>
#include <windows.h>

#ifdef _WIN32
#define DBG_LOG(msg) OutputDebugStringA("[Phantom:Config] " msg "\n")
#define DBG_LOGF(fmt, ...) do { char _dbg_buf[4096]; snprintf(_dbg_buf, sizeof(_dbg_buf), "[Phantom:Config] " fmt "\n", __VA_ARGS__); OutputDebugStringA(_dbg_buf); } while(0)
#else
#define DBG_LOG(msg) ((void)0)
#define DBG_LOGF(fmt, ...) ((void)0)
#endif

nlohmann::json config;
std::string windowTitle = "Phantom Engine";
int MIN_CLIENT_WIDTH = 1280;
int MIN_CLIENT_HEIGHT = 720;
int CONTENT_WIDTH = 1920;   // PVX video content resolution
int CONTENT_HEIGHT = 1080;

namespace
{
std::filesystem::path get_runtime_base_dir()
{
	#ifdef _WIN32
	char modulePath[MAX_PATH] = {};
	const DWORD length = GetModuleFileNameA(nullptr, modulePath, MAX_PATH);
	if (length > 0 && length < MAX_PATH)
		return std::filesystem::path(std::string(modulePath, length)).parent_path();
	#endif

	std::error_code ec;
	const std::filesystem::path cwd = std::filesystem::current_path(ec);
	return ec ? std::filesystem::path(".") : cwd;
}

std::filesystem::path resolve_runtime_path(const std::string &filename)

{
	const std::filesystem::path requested(filename);
	if (requested.is_absolute())
		return requested;
	return (get_runtime_base_dir() / requested).lexically_normal();
}

void apply_built_project_window_title()
{
	if (phantom::project_overrides::kBuiltProjectTitle.empty())
		return;

	std::string title(phantom::project_overrides::kBuiltProjectTitle);
	if (!phantom::project_overrides::kBuiltProjectVersion.empty())
		title += " - " + std::string(phantom::project_overrides::kBuiltProjectVersion);
	windowTitle = std::move(title);
}

bool apply_built_project_game_state(nlohmann::json &cfg)
{
	if (phantom::project_overrides::kBuiltProjectGameStateJson.empty())
		return false;

	auto parsed = nlohmann::json::parse(
		phantom::project_overrides::kBuiltProjectGameStateJson.begin(),
		phantom::project_overrides::kBuiltProjectGameStateJson.end(),
		nullptr,
		false);
	if (!parsed.is_object())
	{
		DBG_LOG("Built project overrides contain invalid gameState JSON");
		return false;
	}

	cfg["gameState"] = std::move(parsed);
	return true;
}

std::string normalize_runtime_music_mode(std::string value)
{
	std::transform(value.begin(), value.end(), value.begin(),
		[](unsigned char ch)
		{
			return static_cast<char>(std::tolower(ch));
		});

	if (value == "general" || value == "wavetable")
		return value;

	return "opl";
}

void merge_missing_defaults(nlohmann::json &target, const nlohmann::json &defaults)
{
	if (!defaults.is_object())
	{
		if (target.is_null())
			target = defaults;
		return;
	}

	if (!target.is_object())
		return;

	for (const auto &[key, value] : defaults.items())
	{
		if (!target.contains(key))
		{
			target[key] = value;
			continue;
		}

		if (target[key].is_object() && value.is_object())
			merge_missing_defaults(target[key], value);
	}
}

void strip_project_only_runtime_config_keys(nlohmann::json &cfg)
{
	cfg.erase("title");
	cfg.erase("version");
	cfg.erase("gameState");
	cfg.erase("pcmSampleRate");
	cfg.erase("pcmChannels");
	cfg.erase("pcmBitsPerSample");
	cfg.erase("midiBank");
	cfg.erase("soundFont");
}
}

//
// Load configuration from file
//
void load_config(const std::string &filename)
{
	const std::filesystem::path configPath = resolve_runtime_path(filename);
	DBG_LOGF("Loading %s", configPath.string().c_str());
	if (!std::filesystem::exists(configPath))
	{
		std::ofstream config_file(configPath);
		if (config_file.is_open())
		{
			DBG_LOG("Config file missing; writing default config");
			config_file << default_config;
		}
	}

	std::ifstream config_file(configPath);
	if (config_file.is_open())
	{
		try
		{
			config_file >> config;
		}
		catch (const nlohmann::json::exception &)
		{
			// Malformed JSON — start from defaults so the engine can still run.
			DBG_LOG("Config parse failed; falling back to defaults");
			config = nlohmann::json::parse(default_config);
		}
	}
	else
	{
		throw std::runtime_error("Failed to open configuration file: " + configPath.string());
	}

	// Merge defaults for any missing keys (e.g. build-generated config with only plugin fields)
	nlohmann::json defaults = nlohmann::json::parse(default_config);
	if (!config.is_object())
	{
		config = defaults;
	}
	else
	{
		merge_missing_defaults(config, defaults);
	}

	// Set window title from project metadata if present
	if (config.contains("title") && config["title"].is_string())
	{
		std::string title = config["title"].get<std::string>();
		if (config.contains("version") && config["version"].is_string())
			title += " - " + config["version"].get<std::string>();
		if (!title.empty())
			windowTitle = title;
	}
	else
	{
		apply_built_project_window_title();
	}

	const std::string rendererName = config.value("renderer", std::string("Vulkan"));
	const std::string pluginName = config.value("plugin", std::string());
	const std::string assetPath = config.value("pluginAssetPath", std::string());
	DBG_LOGF("Config ready: renderer=%s fullscreen=%d plugin=%s assetPath=%s title=%s",
		rendererName.c_str(),
		config.value("fullscreen", false) ? 1 : 0,
		pluginName.empty() ? "(none)" : pluginName.c_str(),
		assetPath.empty() ? "(none)" : assetPath.c_str(),
		windowTitle.c_str());
}

void apply_game_state_overrides()
{
	if (!config.contains("gameState") || !config["gameState"].is_object())
	{
		DBG_LOG("No gameState overrides found in config.json. Applying built project overrides...");
		apply_built_project_window_title();
		if (!apply_built_project_game_state(config))
		{
			return;
		}
	}

	const auto &gameState = config["gameState"];
	auto readTrimmedString = [&](const nlohmann::json &obj, const char *key, std::string &dst)
	{
		if (obj.contains(key) && obj[key].is_string())
			dst = obj[key].get<std::string>();
	};

	auto readBool = [&](const nlohmann::json &obj, const char *key, bool &dst)
	{
		if (obj.contains(key) && obj[key].is_boolean())
			dst = obj[key].get<bool>();
	};

	auto readNumber = [&](const nlohmann::json &obj, const char *key, auto &dst)
	{
		if (obj.contains(key) && obj[key].is_number())
			dst = obj[key].get<std::decay_t<decltype(dst)>>();
	};

	readTrimmedString(gameState, "current_room", state.current_room);
	readTrimmedString(gameState, "previous_room", state.previous_room);
	readTrimmedString(gameState, "current_view", state.current_view);
	readTrimmedString(gameState, "previous_view", state.previous_view);
	readTrimmedString(gameState, "cursorAsset", state.cursorAsset);

	if (gameState.contains("renderMode") && gameState["renderMode"].is_string())
	{
		const std::string mode = gameState["renderMode"].get<std::string>();
		if (mode == "CPU")
			state.renderMode = GameState::RenderMode::CPU;
		else if (mode == "GPU")
			state.renderMode = GameState::RenderMode::GPU;
		else
			state.renderMode = GameState::RenderMode::Auto;
	}

	if (gameState.contains("frameTiming") && gameState["frameTiming"].is_object())
	{
		const auto &frameTiming = gameState["frameTiming"];
		readBool(frameTiming, "dirtyFrame", state.frameTiming.dirtyFrame);
		if (frameTiming.contains("currentFPS") && frameTiming["currentFPS"].is_number())
		{
			state.frameTiming.currentFPS = (std::max)(1.0, frameTiming["currentFPS"].get<double>());
		}
	}

	if (gameState.contains("raycast") && gameState["raycast"].is_object())
	{
		const auto &raycast = gameState["raycast"];
		readBool(raycast, "enabled", state.raycast.enabled);
		state.raycast.models.clear();
		if (raycast.contains("player") && raycast["player"].is_object())
		{
			const auto &player = raycast["player"];
			readNumber(player, "x", state.raycast.player.x);
			readNumber(player, "y", state.raycast.player.y);
			readNumber(player, "angle", state.raycast.player.angle);
			readNumber(player, "fov", state.raycast.player.fov);
			readNumber(player, "walkSpeed", state.raycast.player.walkSpeed);
			readNumber(player, "runSpeed", state.raycast.player.runSpeed);
		}
		if (raycast.contains("models") && raycast["models"].is_array())
		{
			for (const auto &model : raycast["models"])
			{
				if (!model.is_object())
					continue;
				if (model.contains("enabled") && model["enabled"].is_boolean() && !model["enabled"].get<bool>())
					continue;

				RaycastModelInstance inst;
				readTrimmedString(model, "path", inst.path);
				readNumber(model, "x", inst.x);
				readNumber(model, "y", inst.y);
				readNumber(model, "z", inst.z);
				readNumber(model, "yaw", inst.yaw);
				readNumber(model, "pitch", inst.pitch);
				readNumber(model, "roll", inst.roll);
				readNumber(model, "scale", inst.scale);
				readNumber(model, "height", inst.height);
				readBool(model, "autoUpright", inst.autoUpright);

				if (model.contains("yawDegrees") && model["yawDegrees"].is_number())
					inst.yaw = deg2rad(model["yawDegrees"].get<float>());
				if (model.contains("pitchDegrees") && model["pitchDegrees"].is_number())
					inst.pitch = deg2rad(model["pitchDegrees"].get<float>());
				if (model.contains("rollDegrees") && model["rollDegrees"].is_number())
					inst.roll = deg2rad(model["rollDegrees"].get<float>());

				if (model.contains("position") && model["position"].is_array())
				{
					const auto &position = model["position"];
					if (position.size() > 0 && position[0].is_number())
						inst.x = position[0].get<float>();
					if (position.size() > 1 && position[1].is_number())
						inst.y = position[1].get<float>();
					if (position.size() > 2 && position[2].is_number())
						inst.z = position[2].get<float>();
				}

				if (model.contains("color") && model["color"].is_array())
				{
					const auto &color = model["color"];
					auto readColor = [&](size_t index, uint8_t &dst)
					{
						if (color.size() <= index || !color[index].is_number())
							return;
						dst = static_cast<uint8_t>(std::clamp(color[index].get<int>(), 0, 255));
					};
					readColor(0, inst.r);
					readColor(1, inst.g);
					readColor(2, inst.b);
				}

				if (!inst.path.empty())
					state.raycast.models.push_back(std::move(inst));
			}
		}
	}

	if (gameState.contains("menu") && gameState["menu"].is_object())
	{
		const auto &menu = gameState["menu"];
		readNumber(menu, "selectedItem", state.menu.selectedItem);
	}

	if (gameState.contains("music") && gameState["music"].is_object())
	{
		const auto &music = gameState["music"];
		std::string projectMusicMode = state.music_mode;
		std::string projectSoundfontPath = state.soundfont_path;
		int projectMidiBank = state.midi_bank;
		float projectMusicVolume = state.music_volume;

		readTrimmedString(music, "current_song", state.current_song);
		readTrimmedString(music, "transient_song", state.transient_song);
		readTrimmedString(music, "music_mode", projectMusicMode);
		readNumber(music, "main_song_position", state.main_song_position);
		readNumber(music, "midi_bank", projectMidiBank);
		readTrimmedString(music, "soundfont_path", projectSoundfontPath);
		if (projectSoundfontPath.empty() && music.contains("soundfont") && music["soundfont"].is_string())
			projectSoundfontPath = music["soundfont"].get<std::string>();
		readBool(music, "hasPlayedFirstSong", state.hasPlayedFirstSong);
		readBool(music, "is_transient_playing", state.is_transient_playing);
		if (music.contains("music_volume") && music["music_volume"].is_number())
		{
			projectMusicVolume = std::clamp(music["music_volume"].get<float>(), 0.0f, 1.0f);
		}

		state.music_mode = normalize_runtime_music_mode(config.value("midiMode", projectMusicMode));
		state.midi_bank = (std::max)(0, projectMidiBank);
		state.soundfont_path = projectSoundfontPath;
		const int projectVolume = static_cast<int>(std::clamp(projectMusicVolume * 100.0f, 0.0f, 100.0f));
		const int runtimeVolume = std::clamp(config.value("midiVolume", projectVolume), 0, 100);
		state.music_volume = runtimeVolume / 100.0f;

		config["midiMode"] = state.music_mode;
		config["midiVolume"] = runtimeVolume;
	}

	// Content dimensions override (e.g. 640x320 for The 7th Guest)
	if (gameState.contains("contentWidth") && gameState["contentWidth"].is_number_integer())
	{
		int w = gameState["contentWidth"].get<int>();
		if (w > 0)
		{
			CONTENT_WIDTH = w;
			MIN_CLIENT_WIDTH = w;
		}
	}
	if (gameState.contains("contentHeight") && gameState["contentHeight"].is_number_integer())
	{
		int h = gameState["contentHeight"].get<int>();
		if (h > 0)
		{
			CONTENT_HEIGHT = h;
			MIN_CLIENT_HEIGHT = h;
		}
	}
	setMinimumClientSize(MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);

	DBG_LOGF("Applied gameState overrides: room=%s view=%s song=%s renderMode=%d cursorAsset=%s fps=%.2f content=%dx%d",
		state.current_room.empty() ? "(none)" : state.current_room.c_str(),
		state.current_view.empty() ? "(none)" : state.current_view.c_str(),
		state.current_song.empty() ? "(none)" : state.current_song.c_str(),
		static_cast<int>(state.renderMode),
		state.cursorAsset.empty() ? "(none)" : state.cursorAsset.c_str(),
		state.frameTiming.currentFPS,
		CONTENT_WIDTH, CONTENT_HEIGHT);
}

//
// Save configuration to file
//
void save_config(const std::string &filename)
{
	const std::filesystem::path configPath = resolve_runtime_path(filename);
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

	nlohmann::json persistable = config;
	strip_project_only_runtime_config_keys(persistable);

	std::filesystem::path tempPath = configPath;
	tempPath += ".tmp";

	{
		std::ofstream config_file(tempPath, std::ios::trunc);
		if (!config_file.is_open())
			throw std::runtime_error("Failed to save temporary configuration file: " + tempPath.string());

		config_file << std::setw(4) << persistable << std::endl;
		config_file.flush();
		if (!config_file.good())
		{
			config_file.close();
			std::error_code ec;
			std::filesystem::remove(tempPath, ec);
			throw std::runtime_error("Failed while writing configuration file: " + tempPath.string());
		}
	}

#ifdef _WIN32
	if (!MoveFileExW(tempPath.wstring().c_str(),
	                 configPath.wstring().c_str(),
	                 MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH))
	{
		const DWORD error = GetLastError();
		std::error_code ec;
		std::filesystem::remove(tempPath, ec);
		throw std::runtime_error("Failed to replace configuration file: " + configPath.string() +
		                         " (error " + std::to_string(error) + ")");
	}
#else
	std::error_code ec;
	std::filesystem::rename(tempPath, configPath, ec);
	if (ec)
	{
		std::filesystem::remove(tempPath, ec);
		throw std::runtime_error("Failed to replace configuration file: " + configPath.string());
	}
#endif
}
