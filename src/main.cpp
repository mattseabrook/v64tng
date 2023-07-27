// main.cpp

/*
 * GROOVIE 2023
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

#include "game.h"
#include "window.h"
#include "extract.h"

bool devMode = false;	// God Mode :)

/*
====================
	MAIN ENTRY POINT
====================
*/

int main(int argc, char* argv[])
{
	std::vector<std::string_view> args(argv, argv + argc);

	if (args.size() <= 1)
	{
		// gameLoop();
		return 0;
	}

	//
	// Start the Game Engine normally
	//
	if (args[1] == "@")
	{
		wchar_t selfPath[MAX_PATH];
		if (!GetModuleFileNameW(NULL, selfPath, MAX_PATH)) {
			std::cerr << "Failed to get module file name, error: " << GetLastError() << std::endl;
			return 1;
		}

		wchar_t params[] = L"e8e801e69cd548fab61b999a344b48d6\0";

		STARTUPINFO si = { sizeof(STARTUPINFO) };
		PROCESS_INFORMATION pi;

		if (!CreateProcessW(selfPath, params, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi))
		{
			std::cerr << "CreateProcess failed with error: " << GetLastError() << std::endl;
			return 1;
		}

		CloseHandle(pi.hProcess);
		CloseHandle(pi.hThread);
		exit(0);
	}
	else if (args[1] == "e8e801e69cd548fab61b999a344b48d6")
	{
		/*
		HINSTANCE hInstance = GetModuleHandle(NULL);
		if (FAILED(InitWindow(hInstance, SW_SHOWDEFAULT)))
		{
			std::cerr << "Window initialization failed." << std::endl;
			return 1;
		}

		if (FAILED(InitDevice()))
		{
			std::cerr << "Device initialization failed." << std::endl;
			return 1;
		}

		// Windows message loop.
		MSG msg = {};
		while (GetMessage(&msg, NULL, 0, 0))
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}

		// Don't forget to release Direct2D resources before exiting.
		DiscardDeviceResources();

		return 0;
		*/
		std::cout << "GAME STARTING BRO!" << std::endl;
		return 0;
	}
	else if (args[1] == "-i")
	{
		if (args.size() < 3)
		{
			std::cerr << "ERROR: a *.RL file was not specified.\n" << std::endl;
			std::cerr << "Example: v64tng.exe -i DR.RL" << std::endl;
			return 1;
		}
		GJDInfo(args[2]);
	}
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
	else if (args[1] == "-x")
	{
		if (args.size() < 3)
		{
			std::cerr << "ERROR: a *.GJD file was not specified.\n" << std::endl;
			std::cerr << "Example: v64tng.exe -x DR.GJD" << std::endl;
			return 1;
		}
		extractVDX(args[2]);
	}
	else
	{
		std::cerr << "ERROR: Invalid option: " << args[1] << std::endl;
		std::cerr << "\nUsage: " << args[0] << " [@|-i|-p|-x] file" << std::endl;
		return 1;
	}

	return 0;
}