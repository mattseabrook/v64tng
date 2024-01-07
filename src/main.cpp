// main.cpp

/*
 * v64tng.exe - GROOVIE 2023
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
 * Copyright (c) 2023 Matt Seabrook
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
#include <vector>
#include <thread>
#include <string>

#include "window.h"
#include "game.h"
#include "extract.h"
#include "xmi.h"
#include "rl.h"

bool devMode = false;	// God Mode :)

/*
====================
	MAIN ENTRY POINT
====================
*/
int WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int) {
	if (!AttachConsole(ATTACH_PARENT_PROCESS)) {
		AllocConsole();
	}

	freopen_s(reinterpret_cast<FILE**>(stdout), "CONOUT$", "w", stdout);
	freopen_s(reinterpret_cast<FILE**>(stderr), "CONOUT$", "w", stderr);
	freopen_s(reinterpret_cast<FILE**>(stdin), "CONIN$", "r", stdin);

	std::cout.clear();
	std::clog.clear();
	std::cerr.clear();
	std::cin.clear();

	std::ios::sync_with_stdio(false);	// Synchronize C++ standard streams with standard C streams

	int argc;
	LPWSTR* argv = CommandLineToArgvW(GetCommandLineW(), &argc);
	if (!argv) {
		return 1;  // Error handling here; decide what you want to do if this fails
	}

	std::vector<std::string> args;
	for (int i = 0; i < argc; ++i)
	{
		int length = WideCharToMultiByte(CP_UTF8, 0, argv[i], -1, NULL, 0, NULL, NULL);
		std::vector<char> buffer(length);
		WideCharToMultiByte(CP_UTF8, 0, argv[i], -1, &buffer[0], length, NULL, NULL);
		args.push_back(std::string(buffer.begin(), buffer.end() - 1));
	}

	//
	// Start the Game Engine
	//
	if (args.size() <= 1)
	{
		run();
	}
	//
	// Print out RL/GJD information
	//
	else if (args[1] == "-r")
	{
		if (args.size() < 3)
		{
			std::cerr << "ERROR: a *.RL file was not specified.\n" << std::endl;
			std::cerr << "Example: v64tng.exe -r DR.RL" << std::endl;
			return 1;
		}
		GJDInfo(args[2]);
	}
	//
	// Extract bitmaps from VDX files
	//
	else if (args[1] == "-p")
	{
		if (args.size() < 3)
		{
			std::cerr << "ERROR: a *.VDX file was not specified.\n" << std::endl;
			std::cerr << "Example: v64tng.exe -p dr_00f.vdx {raw} {alpha}" << std::endl;
			return 1;
		}

		bool raw = false;

		for (auto arg = args.begin() + 3; arg != args.end(); ++arg)
		{
			if (*arg == "raw")
			{
				raw = true;
			}
			else if (*arg == "alpha")
			{
				devMode = true;
			}
		}
		extractPNG(args[2], raw);
	}
	//
	// Extract VDX files from GJD files
	//
	else if (args[1] == "-g")
	{
		if (args.size() < 3)
		{
			std::cerr << "ERROR: a *.GJD file was not specified.\n" << std::endl;
			std::cerr << "Example: v64tng.exe -x DR.GJD" << std::endl;
			return 1;
		}
		extractVDX(args[2]);
	}
	//
	// Play or Extract XMI files from XMI.GJD
	//
	else if (args[1] == "-x")
	{
		if (args.size() < 3)
		{
			std::cerr << "ERROR: an action was not specified.\n" << std::endl;
			std::cerr << "Example: v64tng.exe -x agu16 {play|extract (xmi)}" << std::endl;
			return 1;
		}

		std::vector<RLEntry> xmiFiles = parseRLFile("XMI.RL");

		auto song = std::find_if(xmiFiles.begin(), xmiFiles.end(),
			[&](const RLEntry& entry) { return entry.filename == args[2]; });

		if (song != xmiFiles.end()) {
			args[3] == "play" ? PlayMIDI(xmiConverter(*song)) : extractXMI(xmiConverter(*song),
				song->filename);
		}
		else {
			std::cout << "ERROR: XMI file not found." << std::endl;
			return 1;
		}
	}
	else
	{
		std::cerr << "ERROR: Invalid option: " << args[1] << std::endl;
		std::cerr << "\nUsage: " << args[0] << " [-r|-p|-g|-x] file" << std::endl;
		return 1;
	}

	LocalFree(argv);

	return 0;
}