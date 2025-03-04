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
// Load and process the current view or animation sequence
//
void loadView() {
    // Ensure VDXFiles are loaded for the current room
    if (state.VDXFiles.empty()) {
        state.VDXFiles = parseGJDFile(state.current_room + ".RL");
        state.previous_room = state.current_room;
    }

    // If an animation is playing and the view hasn't changed, wait for it to finish
    if (state.animation.isPlaying && state.current_view == state.previous_view) {
        return;
    }

    // Parse the animation sequence if empty
    if (state.animation_sequence.empty()) {
        std::stringstream ss(state.current_view);
        std::string token;
        while (std::getline(ss, token, ',')) {
            if (token.empty()) continue;
            state.animation_sequence.push_back(token);
        }
        state.animation_queue_index = 0;

        if (state.animation_sequence.empty()) {
            state.currentVDX = nullptr;
            return;
        }
    }

    // Check if we've exhausted the animation sequence
    if (state.animation_queue_index >= state.animation_sequence.size()) {
        state.currentVDX = nullptr;
        return;
    }

    // Get the current token and process room transition if specified
    std::string token = state.animation_sequence[state.animation_queue_index];
    size_t colon = token.find(':');
    if (colon != std::string::npos) {
        // Room transition specified (e.g., "DR:dr_tbc")
        std::string room_prefix = token.substr(0, colon);
        state.current_view = token.substr(colon + 1);

        // Directly set current_room to the prefix (e.g., "DR")
        if (state.current_room != room_prefix) {
            state.current_room = room_prefix;
            // Load the corresponding RL file (e.g., "DR.RL")
            state.VDXFiles = parseGJDFile(state.current_room + ".RL");
            state.previous_room = state.current_room;
            state.animation.reset();
        }
    }
    else {
        // No room transition, use the current room
        state.current_view = token;
    }

    // Load the view
    const View* view = getView(state.current_view);
    if (!view) throw std::runtime_error("View not found: " + state.current_view);
    state.view = *view;

    // Find the VDX file for the current view
    auto it = std::ranges::find(state.VDXFiles, state.current_view, &VDXFile::filename);
    if (it == state.VDXFiles.end()) throw std::runtime_error("VDX missing: " + state.current_view);

    state.currentVDX = &(*it);
    if (!state.currentVDX->parsed) {
        parseVDXChunks(*state.currentVDX);
        state.currentVDX->parsed = true;
    }

    // Initialize animation state
    state.animation.totalFrames = state.currentVDX->chunks.size();
    state.currentFrameIndex = 0;
    state.animation.isPlaying = state.animation.totalFrames > 0;
    state.animation.lastFrameTime = std::chrono::steady_clock::now();
    state.previous_view = state.current_view;

    renderFrame();
}

//
// Animate the VDX sequence
//
void updateAnimation() {
    if (!state.animation.isPlaying || !state.currentVDX) return;

    auto currentTime = std::chrono::steady_clock::now();
    auto elapsedTime = currentTime - state.animation.lastFrameTime;

    if (elapsedTime >= state.animation.getFrameDuration(state.currentFPS)) {
        state.currentFrameIndex++;

        if (state.currentFrameIndex >= state.animation.totalFrames) {
            state.animation.isPlaying = false;
            state.currentFrameIndex = state.animation.totalFrames - 1;

            // Move to the next animation in the sequence
            if (state.animation_queue_index < state.animation_sequence.size() - 1) {
                state.animation_queue_index++;
                loadView();
            }
            else {
                // Sequence complete
                state.animation_sequence.clear();
                state.animation_queue_index = 0;
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