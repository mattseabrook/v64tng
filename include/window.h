// window.h

#ifndef WINDOW_H
#define WINDOW_H

/*
===============================================================================

    7th Guest - Windowing with GLFW and Vulkan

    This is the main entry point for the game engine. It will handle the
    windowing and Vulkan initialization.

===============================================================================
*/

void run();

void initWindow();
void initVulkan();
void mainLoop();
void cleanup();

#endif // WINDOW_H