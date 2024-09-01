// window.h

#ifndef WINDOW_H
#define WINDOW_H

#define VK_USE_PLATFORM_WIN32_KHR
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

/*
===============================================================================

	7th Guest - Windowing with GLFW and Vulkan

	This is the main entry point for the game engine. It will handle the
	windowing and Vulkan initialization.

===============================================================================
*/

void initWindow();
void initVulkan();
void createInstance();
void createSurface();
void pickPhysicalDevice();
bool isDeviceSuitable(VkPhysicalDevice device);
void createLogicalDevice();
void createSwapChain();
void createImageViews();
void createRenderPass();
void createGraphicsPipeline();
void createFramebuffers();
void createCommandPool();
void createCommandBuffer();
void cleanup();

void mainLoop();
void run();

#endif // WINDOW_H