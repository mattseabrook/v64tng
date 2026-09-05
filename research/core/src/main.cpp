// main.cpp

/*
 * Phantom Engine - 2025
 *
 * Core game engine bootstrap (legacy reverse-engineering tooling removed).
 *
 * Author: Matt Seabrook
 * Email: info@mattseabrook.net
 * Website: www.mattseabrook.net
 *
 * MIT License
 *
 * Copyright (c) 2026 Matt Seabrook
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#include <iostream>
#include <vector>
#include <string>
#include <filesystem>
#include <fstream>
#include <algorithm>
#include <cctype>

#ifdef _WIN32
#include <io.h>
#endif

#include "config.h"
#include "system.h"
#include "game.h"
#include "pvx.h"
#include "music.h"
#include "audio.h"
#include "megatexture.h"
#include "plugin_api.h"

#ifdef _WIN32
#include <windows.h>
#include <shellapi.h>

// Driver-recognized hints for hybrid laptops. These exports are visible before
// either renderer creates a graphics device.
extern "C"
{
	__declspec(dllexport) DWORD NvOptimusEnablement = 0x00000001;
	__declspec(dllexport) int AmdPowerXpressRequestHighPerformance = 1;
}
#endif

//
// Debug logging macro - writes to DebugView/debugger output
//
#ifdef _WIN32
#define DBG_LOG(msg) OutputDebugStringA("[Phantom] " msg "\n")
#define DBG_LOGF(fmt, ...) do { char _dbg_buf[4096]; snprintf(_dbg_buf, sizeof(_dbg_buf), "[Phantom] " fmt "\n", __VA_ARGS__); OutputDebugStringA(_dbg_buf); } while(0)
#else
#define DBG_LOG(msg) ((void)0)
#define DBG_LOGF(fmt, ...) ((void)0)
#endif

//
// Windows-specific console handling
//
#ifdef _WIN32
struct ConsoleGuard
{
	bool allocated = false;
	bool attached = false;
	DWORD inputModeOriginal = 0;
	DWORD outputModeOriginal = 0;
	bool hasInputModeOriginal = false;
	bool hasOutputModeOriginal = false;

	ConsoleGuard() = default;

	bool setup()
	{
		attached = AttachConsole(ATTACH_PARENT_PROCESS);
		if (!attached)
		{
			allocated = AllocConsole();
			if (!allocated)
				return false;
		}

		FILE *dummy;
		freopen_s(&dummy, "CONOUT$", "w", stdout);
		freopen_s(&dummy, "CONOUT$", "w", stderr);
		freopen_s(&dummy, "CONIN$", "r", stdin);

		configureConsole();
		return true;
	}

	void configureConsole()
	{
		HANDLE hInput = GetStdHandle(STD_INPUT_HANDLE);
		if (hInput != INVALID_HANDLE_VALUE)
		{
			// Disable input and QuickEdit to prevent hangs
			DWORD mode = 0;
			if (GetConsoleMode(hInput, &mode))
			{
				inputModeOriginal = mode;
				hasInputModeOriginal = true;
				SetConsoleMode(hInput, mode & ~(ENABLE_QUICK_EDIT_MODE | ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT));
			}
			FlushConsoleInputBuffer(hInput);
		}

		HANDLE hOutput = GetStdHandle(STD_OUTPUT_HANDLE);
		if (hOutput != INVALID_HANDLE_VALUE)
		{
			DWORD mode = 0;
			if (GetConsoleMode(hOutput, &mode))
			{
				outputModeOriginal = mode;
				hasOutputModeOriginal = true;
				SetConsoleMode(hOutput, mode | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
			}
		}
	}

	~ConsoleGuard()
	{
		fflush(stdout);
		fflush(stderr);

		if (attached)
		{
			HANDLE hInput = GetStdHandle(STD_INPUT_HANDLE);
			if (hInput != INVALID_HANDLE_VALUE && hasInputModeOriginal)
				SetConsoleMode(hInput, inputModeOriginal);

			HANDLE hOutput = GetStdHandle(STD_OUTPUT_HANDLE);
			if (hOutput != INVALID_HANDLE_VALUE && hasOutputModeOriginal)
				SetConsoleMode(hOutput, outputModeOriginal);
		}

		if (allocated)
		{
			HANDLE hInput = GetStdHandle(STD_INPUT_HANDLE);
			if (hInput != INVALID_HANDLE_VALUE)
				FlushConsoleInputBuffer(hInput);

			// Explicitly close streams
			fclose(stdin);
			fclose(stdout);
			fclose(stderr);

			FreeConsole();
		}
		else if (attached)
		{
			// Detach cleanly if we attached
			FreeConsole();
		}
	}
};
#endif

//
// Platform-independent argument handling
//
std::vector<std::string> get_args(int argc, char *argv[])
{
	std::vector<std::string> args;
	args.reserve(argc);
	for (int i = 0; i < argc; ++i)
	{
		args.emplace_back(argv[i]);
	}
	return args;
}

static bool ends_with_case_insensitive(const std::string& value, const std::string& suffix)
{
	if (value.size() < suffix.size())
		return false;
	const size_t start = value.size() - suffix.size();
	for (size_t i = 0; i < suffix.size(); ++i)
	{
		const unsigned char a = static_cast<unsigned char>(value[start + i]);
		const unsigned char b = static_cast<unsigned char>(suffix[i]);
		if (std::tolower(a) != std::tolower(b))
			return false;
	}
	return true;
}

static bool is_pvx_arg(const std::string& arg)
{
	return ends_with_case_insensitive(arg, ".pvx");
}

static int play_pvx_and_exit(const std::string& pvxPath)
{
	DBG_LOGF("play_pvx_and_exit: path=\"%s\"", pvxPath.c_str());
	// Ensure we render via the generic PVX path (not raycast/menu).
	state.raycast.enabled = false;
	state.menu.enabled = false;
	state.ui.enabled = true;
	state.frameTiming.dirtyFrame = true;

	// PVX playback mode: minimum window size is derived from the PVX dimensions
	// so the window cannot be shrunk too far below the content.
	{
		PVXInfo info;
		if (pvxPeekInfo(pvxPath, info) && info.width > 0 && info.height > 0)
		{
			int minW = static_cast<int>((static_cast<uint64_t>(info.width) * 80u) / 100u);
			int minH = static_cast<int>((static_cast<uint64_t>(info.height) * 80u) / 100u);
			if (minW > 0) minW &= ~1; // keep even widths (matches other paths)
			if (minW > 0 && minH > 0)
				setMinimumClientSize(minW, minH);
		}
	}

#ifdef _WIN32
	timeBeginPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_ABOVE_NORMAL);
	SetPriorityClass(GetCurrentProcess(), ABOVE_NORMAL_PRIORITY_CLASS);
#endif

	int ret = 0;
	try
	{
		initWindow();

		PVXFile holdFrame;
		if (!pvxPlayCaptureLastFrame(pvxPath, holdFrame) || holdFrame.frameData.empty() || holdFrame.frameData[0].empty())
			throw std::runtime_error("PVX playback failed");

		// Resize texture to match the PVX content if it differs from the default.
		{
			const uint32_t hw = static_cast<uint32_t>(holdFrame.width);
			const uint32_t hh = static_cast<uint32_t>(holdFrame.height);
			if (hw != static_cast<uint32_t>(CONTENT_WIDTH) || hh != static_cast<uint32_t>(CONTENT_HEIGHT))
				resizeContentTexture(hw, hh);
		}

		// Show the last frame and idle like ffplay. Space replays from the start.
		state.currentPVX = &holdFrame;
		state.currentFrameIndex = 0;
		state.animation.isPlaying = false;
		state.frameTiming.currentFPS = static_cast<double>((std::max)(1, holdFrame.fps));
		state.frameTiming.dirtyFrame = true;
		maybeRenderFrame(true);

		for (;;)
		{
			if (!processEvents())
				break;
#ifdef _WIN32
			if (GetAsyncKeyState(VK_SPACE) & 1)
			{
				if (!pvxPlayCaptureLastFrame(pvxPath, holdFrame))
					break; // Quit was requested during replay (WM_QUIT consumed inside)

				// Resize texture again for the new hold frame.
				{
					const uint32_t hw = static_cast<uint32_t>(holdFrame.width);
					const uint32_t hh = static_cast<uint32_t>(holdFrame.height);
					if (hw != static_cast<uint32_t>(CONTENT_WIDTH) || hh != static_cast<uint32_t>(CONTENT_HEIGHT))
						resizeContentTexture(hw, hh);
				}

				state.currentPVX = &holdFrame;
				state.currentFrameIndex = 0;
				state.animation.isPlaying = false;
				state.frameTiming.currentFPS = static_cast<double>((std::max)(1, holdFrame.fps));
				state.frameTiming.dirtyFrame = true;
				maybeRenderFrame(true);
			}
#endif
			maybeRenderFrame(false);
		}

		save_config("config.json");
		wavStop();
		cleanupWindow();
		ret = 0;
	}
	catch (const std::exception& e)
	{
		DBG_LOGF("play_pvx_and_exit EXCEPTION: %s", e.what());
#ifdef _WIN32
		OutputDebugStringA("Phantom Engine Error: ");
		OutputDebugStringA(e.what());
		OutputDebugStringA("\n");
		MessageBoxA(nullptr, e.what(), "Phantom Engine Error", MB_ICONERROR | MB_OK);
#else
		std::cerr << "ERROR: " << e.what() << "\n";
#endif
		// Best-effort save if the window exists.
		try { save_config("config.json"); } catch (...) {}
		ret = 1;
	}

#ifdef _WIN32
	timeEndPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_NORMAL);
	SetPriorityClass(GetCurrentProcess(), NORMAL_PRIORITY_CLASS);
#endif
	return ret;
}

//
// Convert Windows wide args to UTF-8
//
#ifdef _WIN32
std::vector<std::string> get_args_windows()
{
	int argc;
	LPWSTR *wargv = CommandLineToArgvW(GetCommandLineW(), &argc);
	if (!wargv)
		return {};

	std::vector<std::string> args;
	args.reserve(argc);

	for (int i = 0; i < argc; ++i)
	{
		int length = WideCharToMultiByte(CP_UTF8, 0, wargv[i], -1, nullptr, 0, nullptr, nullptr);
		if (length > 0)
		{
			std::string arg(length - 1, '\0');
			WideCharToMultiByte(CP_UTF8, 0, wargv[i], -1, arg.data(), length, nullptr, nullptr);
			args.push_back(arg);
		}
	}

	LocalFree(wargv);
	return args;
}
#endif

//
// Process command-line arguments
//
int process_args(const std::vector<std::string> &args)
{
	if (args.size() < 2)
	{
		std::cerr << "ERROR: Missing option." << std::endl;
		std::cerr << "\nUsage: " << args[0] << " [!|-raycast] [options...]\n";
		return -1;
	}

	#ifdef _WIN32
	auto tryLoadMTX = [](const std::string &path) -> bool
	{
		DBG_LOGF("Trying loadMTX('%s')", path.c_str());
		bool ok = loadMTX(path);
		DBG_LOGF("loadMTX('%s') => %s", path.c_str(), ok ? "OK" : "FAIL");
		return ok;
	};

	auto exeDir = []() -> std::filesystem::path
	{
		char buf[MAX_PATH] = {};
		DWORD len = GetModuleFileNameA(nullptr, buf, MAX_PATH);
		if (len == 0 || len >= MAX_PATH)
			return {};
		return std::filesystem::path(buf).parent_path();
	};
	#endif

	//
	// Raycasting mode
	//
	std::string mode = args[1];
	std::transform(mode.begin(), mode.end(), mode.begin(), [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
	if (mode == "-raycast")
	{
		bool useMegatexture = false;
		for (size_t i = 2; i < args.size(); ++i)
		{
			std::string arg = args[i];
			std::transform(arg.begin(), arg.end(), arg.begin(), [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
			if (arg == "megatexture" || arg == "-megatexture" || arg == "--megatexture")
			{
				useMegatexture = true;
			}
		}

		state.menu.enabled = false;
		state.current_view.clear();
		state.previous_view.clear();
		state.raycast.useMegatexture = useMegatexture;
		initRaycaster();

		// Launch the game engine in raycasting mode
		init();
	}
	else
	{
		std::cerr << "ERROR: Invalid option: " << args[1] << std::endl;
		std::cerr << "\nUsage: " << args[0] << " [!|-raycast] [options...]\n";
		return -1;
	}

	return 0;
}

////////////////////////////////////////////////////////////////////////
// MAIN ENTRY POINT
////////////////////////////////////////////////////////////////////////
#ifdef _WIN32
int WINAPI WinMain(_In_ HINSTANCE, _In_opt_ HINSTANCE, _In_ LPSTR, _In_ int)
{
	DBG_LOG("=== Phantom Engine Starting ===");
	DBG_LOG("WinMain entry point reached");
	
	DBG_LOG("Loading config.json...");
	load_config("config.json");
	DBG_LOG("Config loaded successfully");

	DBG_LOG("Detecting CPU features...");
	DetectCPUFeatures();
	DBG_LOG("Setting best SIMD level...");
	SetBestSIMDLevel();
	DBG_LOG("Applying gameState overrides...");
	apply_game_state_overrides();
	DBG_LOG("CPU detection complete");

	DBG_LOG("Parsing command line arguments...");
	std::vector<std::string> args = get_args_windows();
	DBG_LOGF("Got %zu arguments", args.size());

	if (args.size() == 1)
	{
		DBG_LOG("No arguments - showing SystemInfoWindow");
		ShowSystemInfoWindow();
		DBG_LOG("SystemInfoWindow closed, exiting");
		return 0;
	}
	else if (args.size() > 1 && args[1] == "!")
	{
		DBG_LOG("'!' argument detected - starting game engine");
		DBG_LOG("Calling init()...");
		init(); // Start game engine
		DBG_LOG("init() returned, exiting");
		return 0;
	}
	else if (args.size() > 2 && args[1] == "-pvx")
	{
		DBG_LOG("'-pvx' argument detected - playing PVX then exiting");
		int ret = play_pvx_and_exit(args[2]);
		ExitProcess(ret);
	}
	else if (args.size() > 1 && is_pvx_arg(args[1]))
	{
		DBG_LOG("PVX file argument detected - playing PVX then exiting");
		int ret = play_pvx_and_exit(args[1]);
		ExitProcess(ret);
	}
	else
	{
		// For all other cases, set up console and process arguments
		ConsoleGuard guard;
		if (!guard.setup())
		{
			MessageBoxW(NULL, L"Failed to initialize console.", L"Error", MB_OK | MB_ICONERROR);
			return 1;
		}

		int ret = process_args(args);
		return ret;
	}
}
#else
// Standard entry point for non-Windows platforms
int main(int argc, char *argv[])
{
	load_config("config.json");

	DetectCPUFeatures();
	SetBestSIMDLevel();
	apply_game_state_overrides();

	std::vector<std::string> args = get_args(argc, argv);

	if (args.size() > 1 && args[1] == "!")
	{
		init(); // Start game engine
		return 0;
	}
	if (args.size() > 2 && args[1] == "-pvx")
		return play_pvx_and_exit(args[2]);
	if (args.size() > 1 && is_pvx_arg(args[1]))
		return play_pvx_and_exit(args[1]);

	return process_args(args);
}
#endif
