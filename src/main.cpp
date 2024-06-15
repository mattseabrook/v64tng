// main.cpp

/*
 * v64tng.exe - GROOVIE 2024
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
 * Copyright (c) 2024 Matt Seabrook
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
#include <memory>
#include <filesystem>
#include <algorithm>

#include "window.h"
#include "config.h"
#include "game.h"
#include "extract.h"
#include "xmi.h"
#include "rl.h"

 /*
 ====================
	 MAIN ENTRY POINT
 ====================
 */
int WINAPI WinMain(
	_In_ HINSTANCE hInstance,
	_In_opt_ HINSTANCE hPrevInstance,
	_In_ LPSTR lpCmdLine,
	_In_ int nCmdShow)
{
	load_config("config.json");

	int argc;
	LPWSTR* argv = CommandLineToArgvW(GetCommandLineW(), &argc);
	if (!argv) {
		return 1;
	}

	std::vector<std::string> args;
	for (int i = 0; i < argc; ++i) {
		int length = WideCharToMultiByte(CP_UTF8, 0, argv[i], -1, nullptr, 0, nullptr, nullptr);
		std::vector<char> buffer(length);
		WideCharToMultiByte(CP_UTF8, 0, argv[i], -1, buffer.data(), length, nullptr, nullptr);
		args.emplace_back(buffer.data(), buffer.size() - 1);
	}

	bool isConsoleApp = (args.size() > 1);

	if (isConsoleApp) {
		if (AttachConsole(ATTACH_PARENT_PROCESS) || AllocConsole()) {
			freopen_s(reinterpret_cast<FILE**>(stdout), "CONOUT$", "w", stdout);
			freopen_s(reinterpret_cast<FILE**>(stderr), "CONOUT$", "w", stderr);
			freopen_s(reinterpret_cast<FILE**>(stdin), "CONIN$", "r", stdin);

			if (args[1] == "-r") {
				if (args.size() < 3) {
					std::cerr << "ERROR: a *.RL file was not specified.\n\nExample: v64tng.exe -r DR.RL" << std::endl;
					return 1;
				}
				GJDInfo(args[2]);
			}
			else if (args[1] == "-p") {
				if (args.size() < 3) {
					std::cerr << "ERROR: a *.VDX file was not specified.\n\nExample: v64tng.exe -p f_1bb.vdx {raw} {alpha} {video}" << std::endl;
					return 1;
				}

				bool raw = false;
				bool video = false;

				for (auto arg = args.begin() + 3; arg != args.end(); ++arg) {
					if (*arg == "raw") {
						raw = true;
					}
					else if (*arg == "alpha") {
						devMode = true;
					}
					else if (*arg == "video") {
						video = true;
					}
				}
				extractPNG(args[2], raw);

				std::string fullPath = args[2];
				std::string directory;
				std::string filename;
				size_t lastSlashPos = fullPath.find_last_of("\\/");

				if (lastSlashPos != std::string::npos) {
					directory = fullPath.substr(0, lastSlashPos);
					filename = fullPath.substr(lastSlashPos + 1);
				}
				else {
					filename = fullPath;
				}

				size_t lastDotPos = filename.find_last_of('.');
				if (lastDotPos != std::string::npos) {
					filename[lastDotPos] = '_';
				}

				if (video && !raw) {
					createVideoFromImages(directory.empty() ? filename : directory + "\\" + filename);
				}
			}
			else if (args[1] == "-g") {
				if (args.size() < 3) {
					std::cerr << "ERROR: a *.RL file was not specified.\n\nExample: v64tng.exe -g DR.RL" << std::endl;
					return 1;
				}
				extractVDX(args[2]);
			}
			else if (args[1] == "-x") {
				if (args.size() < 3) {
					std::cerr << "ERROR: an action was not specified.\n\nExample: v64tng.exe -x agu16 {play|extract (xmi)}" << std::endl;
					return 1;
				}

				auto xmiFiles = parseRLFile("XMI.RL");
				for (auto& entry : xmiFiles) {
					entry.filename.erase(entry.filename.find_last_of('.'));
				}

				auto song = std::find_if(xmiFiles.begin(), xmiFiles.end(),
					[&](const RLEntry& entry) { return entry.filename == args[2]; });

				if (song != xmiFiles.end()) {
					if (args.size() > 3 && args[3] == "play") {
						PlayMIDI(xmiConverter(*song));
					}
					else {
						extractXMI(xmiConverter(*song), song->filename);
					}
				}
				else {
					std::cerr << "ERROR: XMI file not found." << std::endl;
					return 1;
				}
			}
			else {
				std::cerr << "ERROR: Invalid option: " << args[1] << std::endl;
				std::cerr << "\nUsage: " << args[0] << " [-r|-p|-g|-x] file" << std::endl;
				return 1;
			}

			if (AllocConsole()) {
				FreeConsole();
			}
		}
	}
	else {
		run();
	}

	LocalFree(argv);
	return 0;
}
