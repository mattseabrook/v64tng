// game.cpp

#include <iostream>
#include <unordered_map>
#include <string>
#include <string_view>
#include <ranges>
#include <algorithm>
#include <chrono>
#include <sstream>

#include "game.h"
#include "window.h"
#include "gjd.h"
#include "config.h"

#include "fh.h"
#include "dr.h"

/* ============================================================================
							Game Engine Feature
   ============================================================================
*/

GameState state;

//
// View Prefixes
//
const std::unordered_map<std::string_view, const std::unordered_map<std::string, View>*> viewPrefixes = {
	{ "f_", &foyer },		// Foyer - Stationary Animations
	{ "f1", &foyer },		// Foyer - Connector Animations
	{ "f2", &foyer },		// Foyer - Connector Animations
	{ "dr", &diningRoom }	// Dining Room
	// ...
};

//
// Retrieve the View string from one of the view prefix maps
// 
const View* getView(const std::string& current_view) {
	for (const auto& [prefix, view_map_ptr] : viewPrefixes) {
		if (current_view.starts_with(prefix)) {
			auto it = view_map_ptr->find(current_view);
			if (it != view_map_ptr->end()) {
				return &it->second;
			}
		}
	}
	return nullptr;
}

//
//  Setup VDX animation sequence
//
void loadView() {
	if (state.animation.isPlaying) return;

	// If the room has changed, reload the VDXFiles and reset the animation sequence.
	if (state.current_room != state.previous_room) {
		state.VDXFiles = parseGJDFile(ROOM_DATA.at(state.current_room));
		state.previous_room = state.current_room;
		state.animation.reset();
	}

	// If no animation sequence has been set up yet, split the CSV stored in current_view.
	if (state.animation_sequence.empty()) {
		std::stringstream ss(state.current_view);
		std::string token;
		while (std::getline(ss, token, ',')) {
			if (!token.empty())
				state.animation_sequence.push_back(token);
		}
		state.animation_queue_index = 0;

		if (!state.animation_sequence.empty()) {
			state.current_view = state.animation_sequence[state.animation_queue_index];
		}
	}

	// Load the view based on the current (single) animation token.
	const View* newView = getView(state.current_view);
	if (!newView) {
		throw std::runtime_error("View not found: " + state.current_view);
	}
	state.view = *newView;

	auto it = std::ranges::find_if(state.VDXFiles, [&](const VDXFile& file) {
		return file.filename == state.current_view;
		});
	if (it == state.VDXFiles.end()) {
		throw std::runtime_error("VDX file not found for view: " + state.current_view);
	}
	state.currentVDX = &(*it);

	if (!state.currentVDX->parsed) {
		parseVDXChunks(*state.currentVDX);
		state.currentVDX->parsed = true;
	}

	// Initialize animation state.
	state.animation.totalFrames = state.currentVDX->chunks.size();
	state.currentFrameIndex = 0;
	state.animation.isPlaying = true;
	state.animation.lastFrameTime = std::chrono::steady_clock::now();

	renderFrame();
	state.previous_view = state.current_view;
}

//
// Animate the VDX sequence
//
void updateAnimation() {
	if (!state.animation.isPlaying || !state.currentVDX)
		return;

	auto currentTime = std::chrono::steady_clock::now();
	auto elapsedTime = currentTime - state.animation.lastFrameTime;

	if (elapsedTime >= state.animation.getFrameDuration(state.currentFPS)) {
		state.currentFrameIndex++;

		if (state.currentFrameIndex >= state.animation.totalFrames) {
			if (state.animation_queue_index < state.animation_sequence.size() - 1) {
				state.animation_queue_index++;
				state.current_view = state.animation_sequence[state.animation_queue_index];
				loadView();
			}
			else {
				state.animation.isPlaying = false;
				state.currentFrameIndex = state.animation.totalFrames - 1;
				state.animation_sequence.clear();
				state.animation_queue_index = 0;
				renderFrame();
				return;
			}
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
			state.animation_sequence.clear();  // Clear previous animation sequence
			loadView();
		}

		updateAnimation();
	}

	save_config("config.json");

	cleanupWindow();
}