// window.cpp

#include <stdexcept>
#include <string>
#include <functional>
#include <map>
#include <vector>

#include "window.h"
#include "vulkan.h"
#include "d2d.h"
#include "config.h"
#include "game.h"

// Maps
static std::map<std::string, void(*)()> initializeFuncs;
static std::map<std::string, void(*)(const std::vector<uint8_t>&)> renderFrameFuncs;
static std::map<std::string, bool(*)()> processEventsFuncs;
static std::map<std::string, void(*)()> cleanupFuncs;

//
// Initialize the window and renderer
//
void initializeWindow() {
	if (fullscreen) {
		state.ui.width = GetSystemMetrics(SM_CXSCREEN);
		state.ui.height = GetSystemMetrics(SM_CYSCREEN);
	}
	else {
		if (width % 2 != 0) {
			width += 1;
		}
		state.ui.width = width;
		state.ui.height = width / 2;
	}

	static bool initialized = false;
	if (!initialized) {
		initializeFuncs["VULKAN"] = initializeVulkan;
		initializeFuncs["Direct2D"] = initializeD2D;

		renderFrameFuncs["VULKAN"] = renderFrameVk;
		renderFrameFuncs["Direct2D"] = renderFrameD2D;

		processEventsFuncs["VULKAN"] = []() {
			glfwPollEvents();
			return !glfwWindowShouldClose(window);
			};
		processEventsFuncs["Direct2D"] = []() {
			MSG msg = {};
			while (PeekMessage(&msg, nullptr, 0, 0, PM_REMOVE)) {
				if (msg.message == WM_QUIT) {
					return false;
				}
				TranslateMessage(&msg);
				DispatchMessage(&msg);
			}
			return true;
			};

		cleanupFuncs["VULKAN"] = cleanupVulkan;
		cleanupFuncs["Direct2D"] = cleanupD2D;

		initialized = true;
	}

	if (initializeFuncs.count(renderer)) {
		initializeFuncs[renderer]();
	}
	else {
		throw std::runtime_error("Unsupported renderer type: " + renderer);
	}
}

//
// Abstract the rendering of a frame
//
void renderFrame(const std::vector<uint8_t>& frameData) {
	if (renderFrameFuncs.count(renderer)) {
		renderFrameFuncs[renderer](frameData);
	}
}

//
// Process window events
//
bool processEvents() {
	if (processEventsFuncs.count(renderer)) {
		return processEventsFuncs[renderer]();
	}
	return false;
}

//
// Cleanup the window and renderer
//
void cleanupWindow() {
	if (cleanupFuncs.count(renderer)) {
		cleanupFuncs[renderer]();
	}
}