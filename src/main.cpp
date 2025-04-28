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

#include <windows.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <filesystem>
#include <algorithm>

#include "config.h"
#include "game.h"
#include "extract.h"
#include "lzss.h"
#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "music.h"

//
// Console guard to ensure that the console is properly allocated and attached
//
struct ConsoleGuard
{
	bool allocated = false;
	bool attached = false;
	~ConsoleGuard()
	{
		fclose(stdout);
		fclose(stderr);
		fclose(stdin);
		if (allocated)
			FreeConsole();
	}
};

/*
 ====================
	 MAIN ENTRY POINT
 ====================
 */
int WINAPI WinMain(
	_In_ HINSTANCE,
	_In_opt_ HINSTANCE,
	_In_ LPSTR,
	_In_ int)
{
	load_config("config.json");

	int argc;
	LPWSTR *argv = CommandLineToArgvW(GetCommandLineW(), &argc);
	if (!argv)
	{
		return 1;
	}

	std::vector<std::string> args;
	args.reserve(argc);

	std::vector<char> buffer;
	for (int i = 0; i < argc; ++i)
	{
		int length = WideCharToMultiByte(CP_UTF8, 0, argv[i], -1, nullptr, 0, nullptr, nullptr);
		buffer.resize(length);
		WideCharToMultiByte(CP_UTF8, 0, argv[i], -1, buffer.data(), length, nullptr, nullptr);
		args.emplace_back(buffer.data(), length - 1);
	}

	bool isConsoleApp = (args.size() > 1);
	bool consoleAllocated = false;
	bool consoleAttached = false;
	(void)consoleAllocated;
	(void)consoleAttached;

	if (isConsoleApp)
	{
		ConsoleGuard guard;
		if ((guard.attached = AttachConsole(ATTACH_PARENT_PROCESS)) || (guard.allocated = AllocConsole()))
		{
			freopen_s(reinterpret_cast<FILE **>(stdout), "CONOUT$", "w", stdout);
			freopen_s(reinterpret_cast<FILE **>(stderr), "CONOUT$", "w", stderr);
			freopen_s(reinterpret_cast<FILE **>(stdin), "CONIN$", "r", stdin);

			//
			// Extract all of the *.VDX files from the user-specified *.RL/GJD file pair
			//
			if (args[1] == "-g")
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
			// Exposed LZSS compression/decompression functions to test with the last frame of a *.VDX file
			//
			else if (args[1] == "-l")
			{
				// Need at least: -l  <compress|decompress>  <file>
				if (args.size() < 4)
				{
					constexpr std::string_view errorMsg =
						"ERROR: action/file not specified.\n\n"
						"Example: v64tng.exe -l decompress foo.lzss\n";
					std::cerr << errorMsg;
					return 1;
				}

				const bool doCompress = (args[2] == "compress");
				const bool doDecompress = (args[2] == "decompress");
				if (!doCompress && !doDecompress)
				{
					constexpr std::string_view errorMsg =
						"ERROR: action must be either \"compress\" or \"decompress\".\n";
					std::cerr << errorMsg;
					return 1;
				}

				// Read input file
				std::filesystem::path inPath(args[3]);
				std::ifstream in(inPath, std::ios::binary | std::ios::ate);
				if (!in)
				{
					std::cerr << "ERROR: Unable to open \"" << inPath.string() << "\"\n";
					return 1;
				}
				std::vector<uint8_t> input(static_cast<std::size_t>(in.tellg()));
				in.seekg(0, std::ios::beg);
				in.read(reinterpret_cast<char *>(input.data()), input.size());
				in.close();

				// GROOVIE defaults (see Wiki / code)  lengthBits = 4  → mask = 0x0F
				constexpr uint8_t LENGTH_BITS = 4;
				constexpr uint8_t LENGTH_MASK = (1u << LENGTH_BITS) - 1u; // 0x0F

				if (doCompress)
				{
					auto output = lzssCompress(input, LENGTH_MASK, LENGTH_BITS);
					std::ofstream outFile(inPath.string() + ".lzss", std::ios::binary);
					outFile.write(reinterpret_cast<const char *>(output.data()), output.size());
				}
				else
				{ // decompress
					auto output = lzssDecompress(
						std::span<const uint8_t>(input.data(), input.size()),
						LENGTH_MASK, LENGTH_BITS);
					std::ofstream outFile(inPath.string() + ".decomp", std::ios::binary);
					outFile.write(reinterpret_cast<const char *>(output.data()), output.size());
				}
			}
			//
			// Extract individual bitmap frames (RAW or PNG format,) or create an MKV movie, from a *.VDX file
			//
			else if (args[1] == "-p")
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
			else if (args[1] == "-r")
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
			else if (args[1] == "-v")
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
			else if (args[1] == "-x")
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
			else
			{
				std::cerr << "ERROR: Invalid option: " << args[1] << std::endl;
				std::cerr << "\nUsage: " << args[0] << " [-r|-p|-g|-x] file" << std::endl;
				return 1;
			}
		}
	}
	else
	{
		init();
	}

	LocalFree(argv);

	return 0;
}