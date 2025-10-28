// main.cpp

/*
 * v64tng.exe - GROOVIE 2025
 *
 * Game Engine Re-creation, including tooling designed for the extraction and
 * processing of resource files related to the 7th Guest game.
 *
 * Author: Matt Seabrook
 * Email: info@mattseabrook.net
 * Website: www.mattseabrook.net
 *
 * MIT License
 *
 * Copyright (c) 2025 Matt Seabrook
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
#include <io.h>
#include <cctype>

#include "config.h"
#include "system.h"
#include "game.h"
#include "basement.h"
#include "extract.h"
#include "lzss.h"
#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "music.h"
#include "megatexture.h"

#ifdef _WIN32
#include <windows.h>
#endif

//
// Windows-specific console handling
//
#ifdef _WIN32
struct ConsoleGuard
{
	bool allocated = false;
	bool attached = false;

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
			GetConsoleMode(hInput, &mode);
			SetConsoleMode(hInput, mode & ~(ENABLE_QUICK_EDIT_MODE | ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT));
			FlushConsoleInputBuffer(hInput);
		}

		HANDLE hOutput = GetStdHandle(STD_OUTPUT_HANDLE);
		if (hOutput != INVALID_HANDLE_VALUE)
		{
			DWORD mode = 0;
			GetConsoleMode(hOutput, &mode);
			SetConsoleMode(hOutput, mode | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
		}
	}

	~ConsoleGuard()
	{
		fflush(stdout);
		fflush(stderr);

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
	//
	// Extract cursors from the user-specified *.ROB file (ROB.GJD for 7th Guest)
	//
	if (args[1] == "-c" && args.size() >= 3)
	{
		extractCursors(args[2]);
	}
	//
	// Extract all of the *.VDX files from the user-specified *.RL/GJD file pair
	//
	else if (args[1] == "-g" && args.size() >= 3)
	{
		if (args.size() < 3)
		{
			constexpr std::string_view errorMsg = "ERROR: a *.RL file was not specified.\n\nExample: v64tng.exe -g DR.RL\n";
			std::cerr << errorMsg;
			return 1;
		}
		extractVDX(args[2]);
	}
	//
	// Extract individual bitmap frames (RAW or PNG format,) or create an MKV movie, from a *.VDX file
	//
	else if (args[1] == "-p" && args.size() >= 3)
	{
		if (args.size() < 3)
		{
			constexpr std::string_view errorMsg = "ERROR: a *.VDX file was not specified.\n\nExample: v64tng.exe -p f_1bb.vdx {raw} {alpha} {video}\n";
			std::cerr << errorMsg;
			return 1;
		}

		bool raw = std::ranges::any_of(args | std::ranges::views::drop(3), [](const auto &arg)
									   { return arg == "raw"; });
		bool video = std::ranges::any_of(args | std::ranges::views::drop(3), [](const auto &arg)
										 { return arg == "video"; });
		if (std::ranges::any_of(args | std::ranges::views::drop(3), [](const auto &arg)
								{ return arg == "alpha"; }))
		{
			config["devMode"] = true;
		}

		std::filesystem::path filePath(args[2]);
		std::string basePath = filePath.parent_path().string();
		std::string baseName = filePath.stem().string();

		extractPNG(args[2], raw);

		if (video && !raw)
		{
			createVideoFromImages(basePath.empty() ? baseName : basePath + "\\" + baseName);
		}
	}
	//
	// Output information about how data is packed in the GJD resource file
	//
	else if (args[1] == "-r" && args.size() >= 3)
	{
		if (args.size() < 3)
		{
			constexpr std::string_view errorMsg = "ERROR: a *.RL file was not specified.\n\nExample: v64tng.exe -r DR.RL\n";
			std::cerr << errorMsg;
			return 1;
		}
		GJDInfo(args[2]);
	}
	//
	// Output information about how data is packed in the VDX resource file
	//
	else if (args[1] == "-v" && args.size() >= 3)
	{
		if (args.size() < 3)
		{
			std::cerr << "ERROR: a file was not specified.\n\nExample: v64tng.exe -i f_1bc.vdx/*.GJD\n";
			return 1;
		}
		VDXInfo(args[2]);
	}
	//
	// Extract or Play a specific XMI file from the XMI.RL file
	//
	else if (args[1] == "-x" && args.size() >= 3)
	{
		if (args.size() < 3)
		{
			constexpr std::string_view errorMsg = "ERROR: an action was not specified.\n\nExample: v64tng.exe -x agu16 {play|extract (xmi)}\n";
			std::cerr << errorMsg;
			return 1;
		}

		auto xmiFiles = parseRLFile("XMI.RL");

		// Find the song by comparing base names (before the period)
		auto song = xmiFiles.end();
		for (auto it = xmiFiles.begin(); it != xmiFiles.end(); ++it)
		{
			std::string baseName = it->filename.substr(0, it->filename.find('.'));
			if (baseName == args[2])
			{
				song = it;
				break;
			}
		}

		if (song != xmiFiles.end())
		{
			// Extract the base name to send to extractXMI
			std::string baseName = song->filename.substr(0, song->filename.find('.'));
			if (args.size() > 3 && args[3] == "play")
			{
				PlayMIDI(xmiConverter(*song));
			}
			else
			{
				extractXMI(xmiConverter(*song), baseName);
			}
		}
		else
		{
			constexpr std::string_view errorMsg = "ERROR: XMI file not found.\n";
			std::cerr << errorMsg;
			return 1;
		}
	}
	else if (args[1] == "-raycast")
	{
		// Enable raycasting mode - Development/Testing purposes only
		state.raycast.enabled = true;
		state.raycast.map = &map; // From basement.h * make dynamic later
		state.currentFPS = 60.0;
		float fovDeg = config.contains("raycastFov") ? static_cast<float>(config["raycastFov"]) : 90.0f;
		state.raycast.player.fov = deg2rad(fovDeg);

		if (!initializePlayerFromMap(*state.raycast.map, state.raycast.player))
		{
			MessageBoxA(nullptr, "No player start position found in the map!", "Error", MB_ICONERROR | MB_OK);
			save_config("config.json");
			return -1;
		}

		// Launch the game engine in raycasting mode
		init();
	}
	else if (args[1] == "-megatexture" || args[1] == "-mt")
	{
		MegatextureParams params = getDefaultMegatextureParams();
		params.perlinOctaves = 2;       // Domain warp octaves
		params.perlinScale = 1.7f;      // Domain warp frequency
		params.worleyScale = 2.0f;      // Vein network density (cells per unit)
		params.worleyStrength = 0.4f;   // Domain warp strength
		params.mortarWidth = 0.005f;    // Vein thickness
		params.mortarGray = 0.30f;      // Dark gray
		
		// Check if megatexture/ folder already exists with PNG files
		bool hasExistingTiles = false;
		if (std::filesystem::exists("megatexture") && std::filesystem::is_directory("megatexture"))
		{
			// Count PNG files in directory
			int pngCount = 0;
			for (const auto& entry : std::filesystem::directory_iterator("megatexture"))
			{
				if (entry.is_regular_file() && entry.path().extension() == ".png")
				{
					pngCount++;
				}
			}
			
			if (pngCount > 0)
			{
				std::cout << "Found existing megatexture/ folder with " << pngCount << " PNG tiles.\n";
				std::cout << "Skipping procedural generation...\n";
				hasExistingTiles = true;
			}
		}
		
		// Generate tiles if needed
		if (!hasExistingTiles)
		{
			std::cout << "Generating megatexture tiles from basement map...\n";
			
			if (!analyzeMapEdges(map))
			{
				std::cerr << "ERROR: Failed to analyze map for megatexture generation.\n";
				return -1;
			}
			
			if (!generateMegatextureTilesOnly(params, "megatexture"))
			{
				std::cerr << "ERROR: Failed to generate megatexture tiles.\n";
				return -1;
			}
		}
		
		// Pack into MTX archive (always in current working directory)
		std::cout << "\nPacking tiles into MTX archive...\n";
		if (!saveMTX("megatexture.mtx", "megatexture", params))
		{
			std::cerr << "ERROR: Failed to create MTX archive.\n";
			return -1;
		}
		
		std::cout << "\nMegatexture complete.\n";
		std::cout << "Archive: megatexture.mtx\n";
		std::cout << "Source tiles: megatexture/\n";
	}
	else if (args[1] == "-decodemtx" && args.size() >= 3)
	{
		// Decode MTX archive back to PNG tiles for validation
		std::string mtxPath = args[2];
		std::string outDir = (args.size() >= 4) ? args[3] : "megatexture_decoded";
		
		if (!decodeMTX(mtxPath, outDir))
		{
			std::cerr << "ERROR: Failed to decode MTX archive.\n";
			return -1;
		}
		
		std::cout << "\nDecode complete. Compare with original tiles to verify bit-exactness.\n";
	}
	else
	{
		std::cerr << "ERROR: Invalid option: " << args[1] << std::endl;
		std::cerr << "\nUsage: " << args[0] << " [!|-g|-l|-p|-r|-v|-x|-raycast|-megatexture|-decodemtx] [options...]\n";
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
	load_config("config.json");

	DetectCPUFeatures();
	SetBestSIMDLevel();

	// Configure render mode from config.json (auto|cpu|gpu). Default remains 'gpu' in default_config.
	if (config.contains("renderMode") && config["renderMode"].is_string())
	{
		std::string mode = config["renderMode"];
		for (auto &c : mode) c = static_cast<char>(::toupper(static_cast<unsigned char>(c)));
		if (mode == "CPU")
			state.renderMode = GameState::RenderMode::CPU;
		else if (mode == "GPU")
			state.renderMode = GameState::RenderMode::GPU;
		else
			state.renderMode = GameState::RenderMode::Auto;
	}
	else
	{
		state.renderMode = GameState::RenderMode::Auto;
	}

	std::vector<std::string> args = get_args_windows();

	if (args.size() == 1)
	{
		ShowSystemInfoWindow();
		return 0;
	}
	else if (args.size() > 1 && args[1] == "!")
	{
		init(); // Start game engine
		return 0;
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
		FreeConsole();	  // Close the console
		ExitProcess(ret); // Exit with the return code from process_args
	}
}
#else
// Standard entry point for non-Windows platforms
int main(int argc, char *argv[])
{
	load_config("config.json");

	DetectCPUFeatures();

	std::vector<std::string> args = get_args(argc, argv);

	if (args.size() > 1 && args[1] == "!")
	{
		init(); // Start game engine
		return 0;
	}

	return process_args(args);
}
#endif