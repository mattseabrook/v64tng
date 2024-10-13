// game.cpp

#include <iostream>
#include <unordered_map>
#include <string>
#include <string_view>
#include <ranges>
#include <algorithm>
#include <chrono>

#include "game.h"
#include "window.h"
#include "gjd.h"
#include "fh.h"

/* ============================================================================
							Game Engine Feature
   ============================================================================
*/

//
// View Prefixes
//
const std::unordered_map<std::string_view, const std::unordered_map<std::string, View>*> viewPrefixes = {
	{ "f_", &f_ },      // Foyer sequences
	// ...
};

//
// Retrieve the View string from one of the view prefix maps
// 
const View* getView(const std::string& current_view) {
	for (const auto& [prefix, view_map_ptr] : viewPrefixes)
		if (current_view.starts_with(prefix))
			return &view_map_ptr->at(current_view);
}

//
// State update function
//
void updateGame(GameState& state) {
	static auto lastFrameTime = std::chrono::high_resolution_clock::now();
	constexpr auto frameDuration = std::chrono::milliseconds(67); // 15 FPS = ~67 ms per frame

	if (state.current_room != state.previous_room) {
		state.VDXFiles = parseGJDFile(ROOM_DATA.at(state.current_room));
		std::ranges::for_each(state.VDXFiles, parseVDXChunks);
		state.previous_room = state.current_room;
	}

	if (state.current_view != state.previous_view) {
		if (auto it = std::ranges::find_if(state.VDXFiles, [&](const auto& file) {
			return file.filename == state.current_view;
			}); it != state.VDXFiles.end())
		{
			auto currentTime = std::chrono::high_resolution_clock::now();
			auto elapsedTime = currentTime - lastFrameTime;

			if (elapsedTime >= frameDuration) {
				for (auto& chunk : it->chunks) {
					renderFrame(chunk.data);
				}
				lastFrameTime = currentTime;
			}

			state.previous_view = state.current_view;
		}
	}
}

//
// Start the game engine
//
void run() {
	initializeRenderer();

	GameState state;

	// Main game loop
	while (!glfwWindowShouldClose(window)) {
		updateGame(state);
		glfwPollEvents(); // Handle window events
	}

	// Cleanup Vulkan resources
	cleanup();
}
