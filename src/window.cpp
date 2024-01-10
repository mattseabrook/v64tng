// window.cpp

#include <Windows.h>
#include <cstdlib>

#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

#include "window.h"

GLFWwindow* window;

const uint32_t WIDTH = 1280;
const uint32_t HEIGHT = 640;

//
// Start the Game Engine
//
void run() {
    HWND hWnd = GetConsoleWindow();
    ShowWindow(hWnd, SW_HIDE);

    initWindow();
    initVulkan();
    mainLoop();
    cleanup();
}

// Initialize the window
void initWindow() {
    glfwInit();

    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
    glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

    window = glfwCreateWindow(WIDTH, HEIGHT, "v64tng", nullptr, nullptr);
}

// Initialize Vulkan
void initVulkan() {
    // Initialization code for Vulkan
}

// Main loop to keep the application running
void mainLoop() {
    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();
    }
}

// Clean up Vulkan and other resources
void cleanup() {
    glfwDestroyWindow(window);

    glfwTerminate();
}