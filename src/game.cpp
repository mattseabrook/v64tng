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
#include "config.h"

/* ============================================================================
							Game Engine Feature
   ============================================================================
*/

// Globals
GameState state;

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
void loadRoom() {
	state.VDXFiles = parseGJDFile(ROOM_DATA.at(state.current_room));
	/* We may go back to front-loading decompression activities */
	state.previous_room = state.current_room;
}

//
//  Setup VDX animation sequence
//
void loadView() {
	if (auto it = std::ranges::find_if(state.VDXFiles, [&](const auto& file) {
		return file.filename == state.current_view;
		}); it != state.VDXFiles.end()) {

		state.currentVDX = &(*it);           // Store pointer to current VDX
		parseVDXChunks(*state.currentVDX);   // Parse chunks directly from pointed VDX
		renderFrame();

		/*

		static auto lastFrameTime = std::chrono::high_resolution_clock::now();
		constexpr auto frameDuration = std::chrono::milliseconds(67); // 15 FPS = ~67 ms per frame

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
		*/
	}
	else {
		throw std::runtime_error("VDXFile matching " + state.current_view + " not found!");
	}
}

//
// Start the game engine
//
void init() {
	initWindow();

	// Initial asset rendering
	loadRoom();
	loadView();

	state.ui.enabled = true;

	// Main game loop
	bool running = true;
	while (running) {
		running = processEvents();

		if (state.current_room != state.previous_room) {
			loadRoom();
		}

		if (state.current_view != state.previous_view) {
			loadView();
		}

		// Handle input and game logic here
		// ...
	}

	save_config("config.json");

	cleanupWindow();
}