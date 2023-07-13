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

#include <iostream>
#include <string>

#include "game.h"
#include "window.h"
#include "extract.h"

 /*
 ====================
     MAIN ENTRY POINT
 ====================
 */

int main(int argc, char* argv[])
{
    std::string_view option = argv[1];
    std::string_view filename;
    if (argc > 2)
    {
        filename = argv[2];
    }

    if (option == "-g")
    {
        //... Test Direct2D window
        // Test gameloop
        gameLoop();
    }
    else if (option == "-i")
    {
        GJDInfo(filename);
    }
    else if (option == "-p")
    {
        bool raw = false;
        if (argc == 4 && argv[3] == "raw")
        {
            extractPNG(filename, raw = true);
        }
        else
        {
            extractPNG(filename, raw);
        }
    }
    else if (option == "-x")
    {
        extractVDX(filename);
    }
    else
    {
        std::cerr << "Invalid option: " << option << std::endl;
        std::cerr << "Usage: " << argv[0] << " [-i|-p|-x] file" << std::endl;
        return 1;
    }

    return 0;
}