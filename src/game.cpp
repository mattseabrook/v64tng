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
//  Setup VDX animation sequence
//
void loadView() {
	if (state.current_room != state.previous_room) {
		state.VDXFiles = parseGJDFile(ROOM_DATA.at(state.current_room));
		state.previous_room = state.current_room;
	}

	if (auto it = std::ranges::find_if(state.VDXFiles, [&](const auto& file) {
		return file.filename == state.current_view;
		}); it != state.VDXFiles.end()) {
		state.currentVDX = &(*it);
		parseVDXChunks(*state.currentVDX);

		state.animation.totalFrames = state.currentVDX->chunks.size();
		state.currentFrameIndex = 0;
		state.animation.isPlaying = true;
		state.animation.lastFrameTime = std::chrono::steady_clock::now();

		renderFrame();
	}
	else {
		throw std::runtime_error("VDXFile matching " + state.current_view + " not found!");
	}
}

//
// Click event handler
//
void handleClick() {
	if (!state.animation.isPlaying && state.currentVDX) {
		state.currentFrameIndex = 0;
		state.animation.isPlaying = true;
		state.animation.lastFrameTime = std::chrono::steady_clock::now();
		renderFrame();
	}
}

//
// Animate the VDX sequence
//
void updateAnimation() {
	if (!state.animation.isPlaying || !state.currentVDX) {
		return;
	}

	auto currentTime = std::chrono::steady_clock::now();
	auto elapsedTime = currentTime - state.animation.lastFrameTime;

	// Check if it's time for next frame based on current FPS setting
	if (elapsedTime >= state.animation.getFrameDuration(state.currentFPS)) {
		state.currentFrameIndex++;

		// Check for end of animation
		if (state.currentFrameIndex >= state.animation.totalFrames) {
			state.animation.isPlaying = false;
			state.currentFrameIndex = state.animation.totalFrames - 1; // Hold on last frame
			renderFrame();
			return;
		}

		state.animation.lastFrameTime = currentTime;
		renderFrame();
	}
}

//
// Start the game engine
//
void init() {
	initWindow();
	loadView();

	state.previous_room = state.current_room;
	state.ui.enabled = true;

	bool running = true;
	while (running) {
		running = processEvents();

		if (state.current_view != state.previous_view) {
			loadView();
		}

		updateAnimation();
	}

	save_config("config.json");

	cleanupWindow();
}