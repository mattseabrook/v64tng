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

#include <print>
#include <cstdio>
#include "cli_options.h"
#include <vector>
#include <string>
#include <filesystem>
#include <fstream>
#include <algorithm>
#include "assets.h"
#include <cctype>

#include "config.h"
#include "system.h"
#include "game.h"
#include "extract.h"
#include "lzss.h"
#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "music.h"

#ifdef _WIN32
#include <windows.h>
#include "update.h"
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
			std::string arg(length, '\0');
			WideCharToMultiByte(CP_UTF8, 0, wargv[i], -1, arg.data(), length, nullptr, nullptr);
			arg.pop_back();
			args.push_back(arg);
		}
	}

	LocalFree(wargv);
	return args;
}
#endif

static bool isHelp(std::string_view arg)
{
	return cli::isHelp(arg);
}

static void printUsage()
{
	std::println(R"(v64tng

Usage: v64tng.exe COMMAND [arguments]

	(no arguments)              					Open the game launcher/settings window.
	!                           					Start the game directly.
	-c, --c, -cursor, --cursor ROB.GJD				Extract retail cursor animations to ./ROB_GJD/*/PNG/.
	-g, --g, -gjd, --gjd FILE.RL					Extract VDX files from the matching FILE.GJD into FILE/.
	-r, --r, -rl, --rl FILE.RL						List RL names, offsets and lengths; no GJD is required.
	-v, --v, -vdx, --vdx FILE.VDX|FILE.GJD			Show VDX header, bitmap geometry and chunk/compression table.
                              						GJD input inspects each VDX using the matching FILE.RL index.
	-p, --p, -png, --png FILE.VDX [raw|video]		Export full frames beside the VDX in FILE/; also export WAV audio.
                              							Default:	indexed PNG where available.
														raw:		RGB24 .raw files.
                              							video:		make a silent MKV at the VDX header frame rate using FFmpeg,
                              										then preview with ffplay. Requires both programs on PATH.
	-x, --x, -xmi, --xmi SONG [extract|play]		Convert a song from XMI.RL/XMI.GJD to SONG.mid (default),
                              						or play it with the configured MIDI backend. SONG omits .XMI.
	-h, --h, -help, --help							Show the command overview.
)");
}

//
// Process command-line arguments
//
int process_args(const std::vector<std::string> &inputArgs)
{
	auto args = inputArgs;
	if (args.size() > 1) args[1] = cli::engineCommand(args[1]);
	if (args.size() > 3 && args[1] == "-p")
		for (size_t i = 3; i < args.size(); ++i) args[i] = cli::exportMode(args[i]);
	if (args.size() > 3 && args[1] == "-x") args[3] = cli::musicAction(args[3]);
	if (args.size() < 2) { printUsage(); return 0; }
	if (std::ranges::any_of(args | std::ranges::views::drop(1), isHelp))
	{ printUsage(); return 0; }
	const auto &command = args[1];
	const bool fileCommand = command == "-c" || command == "-g" || command == "-p" ||
		command == "-r" || command == "-v" || command == "-x";
	if (fileCommand && args.size() < 3)
	{
		std::println(stderr, "ERROR: {} requires a file or song argument. Use --help for usage.", command);
		return 1;
	}
	const size_t maxArgs = command == "-p" ? 5 :
		(command == "-x" ? 4 : (fileCommand ? 3 : 2));
	if (args.size() > maxArgs)
	{
		std::println(stderr, "ERROR: Too many arguments for {}. Use --help for usage.", command);
		return 1;
	}
	if (command == "-p")
	{
		bool raw = false, video = false;
		for (size_t i = 3; i < args.size(); ++i)
		{
			if (args[i] == "raw") raw = true;
			else if (args[i] == "video") video = true;
			else { std::println(stderr, "ERROR: Unsupported -p option: {}. Use --help.", args[i]); return 1; }
		}
		if (raw && video) { std::println(stderr, "ERROR: raw and video cannot be combined."); return 1; }
	}
	if (command == "-x" && args.size() == 4 && args[3] != "play" && args[3] != "extract")
	{ std::println(stderr, "ERROR: -x action must be play or extract."); return 1; }
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
		extractVDX(args[2]);
	}
	//
	// Extract individual bitmap frames (RAW or PNG format,) or create an MKV movie, from a *.VDX file
	//
	else if (args[1] == "-p" && args.size() >= 3)
	{

		bool raw = std::ranges::any_of(args | std::ranges::views::drop(3), [](const auto &arg)
									   { return arg == "raw"; });
		bool video = std::ranges::any_of(args | std::ranges::views::drop(3), [](const auto &arg)
										 { return arg == "video"; });
		std::filesystem::path filePath(args[2]);
		std::string baseName = filePath.stem().string();

		extractPNG(args[2], raw);

		if (video && !raw)
		{
			std::ifstream source(args[2], std::ios::binary);
			std::array<uint8_t, 8> header{};
			if (!source.read(reinterpret_cast<char *>(header.data()), header.size()))
				throw std::runtime_error("Cannot read VDX frame rate");
			const unsigned rate = header[6] | (unsigned(header[7]) << 8);
			createVideoFromImages((filePath.parent_path() / baseName).string(), rate ? rate : 15);
		}
	}
	//
	// Output information about how data is packed in the GJD resource file
	//
	else if (args[1] == "-r" && args.size() >= 3)
	{
		GJDInfo(args[2]);
	}
	//
	// Inspect a standalone VDX or each indexed VDX in a GJD archive.
	//
	else if (args[1] == "-v" && args.size() >= 3)
	{
		std::string extension = std::filesystem::path(args[2]).extension().string();
		std::transform(extension.begin(), extension.end(), extension.begin(),
			[](unsigned char c) { return static_cast<char>(std::tolower(c)); });
		if (extension == ".vdx") VDXInfo(args[2]);
		else if (extension == ".gjd") GJDVInfo(args[2]);
		else
		{
			std::println(stderr, "ERROR: -v requires a .VDX file or a .GJD archive with its matching .RL index.");
			return 1;
		}
	}
	//
	// Extract or Play a specific XMI file from the XMI.RL file
	//
	else if (args[1] == "-x" && args.size() >= 3)
	{

		auto xmiResult = parseRLFile(assetPath("XMI.RL").string());
		if (!xmiResult)
		{
			std::println(stderr, "{}", xmiResult.error());
			return 1;
		}
		auto xmiFiles = std::move(*xmiResult);

		// Find the song by comparing base names (before the period)
		auto song = xmiFiles.end();
		for (auto it = xmiFiles.begin(); it != xmiFiles.end(); ++it)
		{
			std::string baseName = it->filename.substr(0, it->filename.find('.'));
			if (_stricmp(baseName.c_str(), args[2].c_str()) == 0)
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
				PlayMIDI(xmiConverter(*song), true);
			}
			else
			{
				extractXMI(xmiConverter(*song), baseName);
			}
		}
		else
		{
			std::println(stderr, "ERROR: XMI file not found.");
			return 1;
		}
	}
	else
	{
		std::println(stderr, "ERROR: Invalid option: {}", args[1]);
		std::println(stderr, "Use -h, --h, -help or --help for available commands.");
		return -1;
	}

	return 0;
}

////////////////////////////////////////////////////////////////////////
// MAIN ENTRY POINT
////////////////////////////////////////////////////////////////////////
// A console subsystem executable uses the CRT's normal startup and standard
// streams. The ! path detaches before opening the Win32/Vulkan UI in this
// process; ordinary CLI commands retain their original console and streams.
#ifdef _WIN32
int main()
#else
int main(int argc, char *argv[])
#endif
{
#ifdef _WIN32
	bool guiDetached = false;
#endif
	try
	{
#ifdef _WIN32
		auto args = get_args_windows();
		if (const auto updateResult = handleUpdateStartup(args)) return *updateResult;
#else
		const std::vector<std::string> args = get_args(argc, argv);
#endif
		if (args.empty()) throw std::runtime_error("Cannot read command line");
		if (std::ranges::any_of(args | std::ranges::views::drop(1), isHelp))
		{ printUsage(); return 0; }

		load_config("config.json");
		DetectCPUFeatures();
#ifdef _WIN32
		SetBestSIMDLevel();
		if (args.size() == 1)
		{
			if (ShowSystemInfoWindow()) init();
			return 0;
		}
#endif
		if (args.size() > 1 && args[1] == "!")
		{
			if (args.size() != 2) throw std::runtime_error("! takes no arguments");
#ifdef _WIN32
			// Release this process's console connection before starting the GUI.
			// A console shared with the calling shell remains owned by that shell.
			std::fflush(stdout);
			std::fflush(stderr);
			if (!FreeConsole())
				throw std::runtime_error("Failed to detach from the console");
			guiDetached = true;
#endif
			init();
			return 0;
		}
		return process_args(args);
	}
	catch (const std::exception &e)
	{
#ifdef _WIN32
		if (guiDetached) MessageBoxA(nullptr, e.what(), "Fatal Error", MB_OK | MB_ICONERROR);
		else
#endif
		std::println(stderr, "ERROR: {}", e.what());
		return 1;
	}
	catch (...)
	{
#ifdef _WIN32
		if (guiDetached) MessageBoxA(nullptr, "Unknown fatal error", "Fatal Error", MB_OK | MB_ICONERROR);
		else
#endif
		std::println(stderr, "ERROR: Unknown fatal error");
		return 1;
	}
}
