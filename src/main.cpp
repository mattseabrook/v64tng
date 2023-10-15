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
	if (args[1] == "vulkan")
	{
		std::cout << "Starting the Game Engine..." << std::endl;
	}
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
	else if (args[1] == "-x")
	{
		extractXMI();
	}
	else
	{
		std::cerr << "ERROR: Invalid option: " << args[1] << std::endl;
		std::cerr << "\nUsage: " << args[0] << " [vulkan|-r|-p|-g|-x] file" << std::endl;
		return 1;
	}

	return 0;
}