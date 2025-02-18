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
	{ "f_", &foyer },		// Foyer - Stationary Animations
	{ "f1", &foyer }		// Foyer - Connector Animations
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
	if (state.current_room != state.previous_room) {
		state.VDXFiles = parseGJDFile(ROOM_DATA.at(state.current_room));
		state.previous_room = state.current_room;
	}

	// Parse the current_view to get the animation sequence
	if (state.animation_sequence.empty()) {
		std::stringstream ss(state.current_view);
		std::string view;

		while (std::getline(ss, view, ',')) {
			state.animation_sequence.push_back(view);
		}

		state.animation_queue_index = 0;
	}

	const View* newView = getView(state.animation_sequence[state.animation_queue_index]);
	state.view = *newView;

	auto it = std::ranges::find_if(state.VDXFiles, [&](const VDXFile& file) {
		return file.filename == state.animation_sequence[state.animation_queue_index];
		});
	state.currentVDX = &(*it);

	if (!state.currentVDX->parsed) {
		parseVDXChunks(*state.currentVDX);
		state.currentVDX->parsed = true;
	}

	state.animation.totalFrames = state.currentVDX->chunks.size();
	state.currentFrameIndex = 0;
	state.animation.isPlaying = true;
	state.animation.lastFrameTime = std::chrono::steady_clock::now();

	renderFrame();

	state.previous_view = state.animation_sequence[state.animation_queue_index];
}

//
// Click event handler
//
void handleClick() {
	// Actual implementation in window.cpp WM_LBUTTONDOWN handler
	POINT cursorPos;
	GetCursorPos(&cursorPos);
	ScreenToClient(hwnd, &cursorPos);

	// Simulate a click event
	SendMessage(hwnd, WM_LBUTTONDOWN, 0, MAKELPARAM(cursorPos.x, cursorPos.y));
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
			// If we have more animations in the sequence, load the next one
			if (state.animation_queue_index < state.animation_sequence.size() - 1) {
				state.animation_queue_index++;
				loadView();
			}
			else {
				state.animation.isPlaying = false;
				state.currentFrameIndex = state.animation.totalFrames - 1; // Hold on last frame
				state.animation_sequence.clear();  // Clear the sequence for next navigation
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