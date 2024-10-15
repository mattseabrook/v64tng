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
// Load the VDX files into game state
//
void loadRoom(GameState& state) {
	state.VDXFiles = parseGJDFile(ROOM_DATA.at(state.current_room));
	//std::ranges::for_each(state.VDXFiles, parseVDXChunks);
	state.previous_room = state.current_room;
}

//
//  Send animation sequence to VULKAN renderer
//
void loadView(GameState& state) {
	static auto lastFrameTime = std::chrono::high_resolution_clock::now();
	constexpr auto frameDuration = std::chrono::milliseconds(67); // 15 FPS = ~67 ms per frame
	static size_t currentFrameIndex = 0;

	if (auto it = std::ranges::find_if(state.VDXFiles, [&](const auto& file) {
		return file.filename == state.current_view;
		}); it != state.VDXFiles.end()) {

		VDXFile vdxFile = *it;
		parseVDXChunks(vdxFile);

		auto currentTime = std::chrono::high_resolution_clock::now();
		auto elapsedTime = currentTime - lastFrameTime;

		if (elapsedTime >= frameDuration) {
			// Render the current frame
			renderFrame(it->chunks[currentFrameIndex].data);

			// Update the time
			lastFrameTime = currentTime;

			// Move to the next frame, wrapping around if needed
			currentFrameIndex = (currentFrameIndex + 1) % it->chunks.size();
		}

		state.previous_view = state.current_view;
	}
}

//
// Start the game engine
//
void run() {
	initializeRenderer();

	GameState state;

	// Initial asset rendering
	loadRoom(state);
	loadView(state);

	// Main game loop
	while (!glfwWindowShouldClose(window)) {
		if (state.current_room != state.previous_room) {
			loadRoom(state);
		}

		if (state.current_view != state.previous_view) {
			loadView(state);
		}

		glfwPollEvents();
	}

	cleanup();
}