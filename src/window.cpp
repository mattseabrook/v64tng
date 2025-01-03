// window.cpp

#include "window.h"
#include "vulkan.h"
#include "d2d.h"
#include "config.h"

#include <stdexcept>
#include <string>

//
// Initialize the window and renderer
//
void initializeWindow() {
	if (renderer == "VULKAN") {
		initializeVulkan();
	}
	else if (renderer == "Direct2D") {
		initializeD2D();
	}
	else {
		throw std::runtime_error("Unsupported renderer type");
	}
}

//
// Abstract the rendering of a frame
//
void renderFrame(const std::vector<uint8_t>& frameData) {
	if (renderer == "VULKAN") {
		renderFrameVk(frameData);
	}
	else if (renderer == "Direct2D") {
		renderFrameD2D(frameData);
	}
}

//
// Process window events
//
bool processEvents() {
	if (renderer == "VULKAN") {
		glfwPollEvents();
		return !glfwWindowShouldClose(window);
	}
	else if (renderer == "Direct2D") {
		MSG msg = {};
		while (PeekMessage(&msg, nullptr, 0, 0, PM_REMOVE)) {
			if (msg.message == WM_QUIT) {
				return false;
			}
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
		return true;
	}

	return false;
}

//
// Cleanup the window and renderer
//
void cleanupWindow() {
	if (renderer == "VULKAN") {
		cleanupVulkan();
	}
	else if (renderer == "Direct2D") {
		cleanupD2D();
	}
}