// game.cpp

#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <string>
#include <string_view>
#include <ranges>
#include <algorithm>
#include <chrono>
#include <thread>
#include <sstream>

#include "game.h"
#include "window.h"
#include "gjd.h"
#include "music.h"
#include "config.h"
#include "cursor.h"
#include "raycast.h"

#include "fh.h"
#include "dr.h"

// Global game state
GameState state;

//=====================================================

//
// View Prefixes
//
const std::unordered_map<std::string_view, const std::unordered_map<std::string, View> *> viewPrefixes = {
	{"f_", &foyer}, // Foyer - Stationary Animations
	{"f1", &foyer}, // Foyer - Connector Animations
	{"f2", &foyer},
	{"f3", &foyer},
	{"f4", &foyer},
	{"f5", &foyer},
	{"f6", &foyer},

	{"dr", &diningRoom} // Dining Room
						// ...
};

////////////////////////////////////////////////////////////////////////
// Utility Functions
////////////////////////////////////////////////////////////////////////

/*
===============================================================================
Function Name: getView

Description:
	- Retrieves the View object corresponding to the current view string.
	- Searches through predefined view prefixes to find a matching view.

Parameters:
	- current_view: The current view string to search for.
===============================================================================
*/
const View *getView(const std::string &current_view)
{
	for (const auto &[prefix, view_map_ptr] : viewPrefixes)
	{
		if (current_view.starts_with(prefix))
		{
			auto it = view_map_ptr->find(current_view);
			if (it != view_map_ptr->end())
			{
				return &it->second;
			}
		}
	}
	return nullptr;
}

/*
===============================================================================
Function Name: ensureRoomLoaded

Description:
	- Ensures that the current room's VDX files are loaded.
===============================================================================
*/
static void ensureRoomLoaded()
{
	if (state.VDXFiles.empty())
	{
		state.VDXFiles = parseGJDFile(state.current_room + ".RL");
		state.previous_room = state.current_room;
	}
}

/*
===============================================================================
Function Name: clearTransient

Description:
	- Clears the transient animation state.
	- Resets the transient animation name and playback state.
===============================================================================
*/
static void clearTransient()
{
	state.transient_animation_name.clear();
	state.transient_animation.isPlaying = false;
	state.transient_frame_index = 0;
}

/*
===============================================================================
Function Name: parseAnimationSequence

Description:
	- Parses the current animation sequence from the state.
	- Splits the sequence by commas and stores each part
	in the animation_sequence vector.
===============================================================================
*/
static void parseAnimationSequence()
{
	std::string_view seq{state.current_view};
	size_t pos = 0;
	while (pos < seq.size())
	{
		size_t next = seq.find(',', pos);
		auto part = seq.substr(pos, next == std::string_view::npos ? seq.size() - pos : next - pos);
		if (!part.empty())
			state.animation_sequence.emplace_back(part);
		if (next == std::string_view::npos)
			break;
		pos = next + 1;
	}
	state.animation_queue_index = 0;
}

/*
===============================================================================
Function Name: parseViewToken

Description:
	- Parses the current view token from the animation sequence.
	- Handles room transitions and modifiers (e.g., "static").

Parameters:
	- is_static: Reference to a boolean that will be set to true
	if the "static" modifier is found.
===============================================================================
*/
static void parseViewToken(bool &is_static)
{
	std::string_view token{state.animation_sequence[state.animation_queue_index]};
	auto colon = token.find(':');
	if (colon != std::string_view::npos && colon > 0)
	{
		std::string_view room = token.substr(0, colon);
		if (state.current_room != room)
		{
			state.current_room.assign(room);
			state.VDXFiles = parseGJDFile(state.current_room + ".RL");
			state.previous_room = state.current_room;
			state.animation.reset();
		}
		token.remove_prefix(colon + 1);
	}

	auto semi = token.find(';');
	if (semi != std::string_view::npos)
	{
		std::string_view mods = token.substr(semi + 1);
		while (!mods.empty())
		{
			size_t next = mods.find(';');
			std::string_view mod = mods.substr(0, next);
			if (mod == "static")
				is_static = true;
			if (next == std::string_view::npos)
				break;
			mods.remove_prefix(next + 1);
		}
		token = token.substr(0, semi);
	}

	state.current_view.assign(token);
}

//======================================================

/*
===============================================================================
Function Name: loadView

Description:
	- Loads the current view based on the animation sequence.
	- Parses the VDX files and sets up the animation state.
===============================================================================
*/
void loadView()
{
	ensureRoomLoaded();

	if ((state.animation.isPlaying || state.transient_animation.isPlaying) &&
		state.current_view == state.previous_view)
		return;

	if (!state.transient_animation.isPlaying)
		clearTransient();

	if (state.animation_sequence.empty())
		parseAnimationSequence();

	if (state.animation_sequence.empty() ||
		state.animation_queue_index >= state.animation_sequence.size())
	{
		state.currentVDX = nullptr;
		return;
	}

	bool is_static = false;
	parseViewToken(is_static);

	const View *view = getView(state.current_view);
	if (!view)
		throw std::runtime_error("View not found: " + state.current_view);
	state.view = *view;

	auto it = std::ranges::find(state.VDXFiles, state.current_view, &VDXFile::filename);
	if (it == state.VDXFiles.end())
		throw std::runtime_error("VDX missing: " + state.current_view);

	state.currentVDX = &*it;
	if (!state.currentVDX->parsed)
	{
		parseVDXChunks(*state.currentVDX);
		state.currentVDX->parsed = true;
	}

	state.animation.totalFrames = state.currentVDX->chunks.size();
	if (is_static)
	{
		state.currentFrameIndex = state.animation.totalFrames ? state.animation.totalFrames - 1 : 0;
		state.animation.isPlaying = false;
		forceUpdateCursor();
	}
	else
	{
		state.currentFrameIndex = 0;
		state.animation.isPlaying = state.animation.totalFrames > 0;
	}

	state.animation.lastFrameTime = std::chrono::steady_clock::now();
	state.previous_view = state.current_view;
	state.dirtyFrame = true;
}

//
// Get the active cursor types for the current View
//
std::unordered_set<CursorType> getActiveCursorsForView(const View &view)
{
	std::unordered_set<CursorType> active;
	// Navigations
	for (const auto &nav : view.navigations)
		active.insert(static_cast<CursorType>(nav.area.cursorType));
	// Hotspots
	for (const auto &hs : view.hotspots)
		active.insert(static_cast<CursorType>(hs.area.cursorType));
	return active;
}

//
// Animate the VDX sequence
//
void updateAnimation()
{
	// Update cursor animation
	updateCursorAnimation();

	// Update raycaster movement continuously with FPS control
	if (state.raycast.enabled)
	{
		static std::chrono::steady_clock::time_point lastRaycastUpdate = std::chrono::steady_clock::now();
		auto currentTime = std::chrono::steady_clock::now();
		auto elapsedTime = currentTime - lastRaycastUpdate;
		auto frameDuration = std::chrono::microseconds(static_cast<long long>(1000000.0 / state.currentFPS));

		if (elapsedTime >= frameDuration)
		{
			updateRaycasterMovement();
			lastRaycastUpdate = currentTime;
		}
		return; // Skip regular animation processing in raycast mode
	}

	// Handle transient animations first
	if (state.transient_animation.isPlaying && !state.transient_animation_name.empty())
	{
		auto it = std::ranges::find(state.VDXFiles, state.transient_animation_name, &VDXFile::filename);
		if (it != state.VDXFiles.end())
		{
			VDXFile &vdx = *it;
			if (!vdx.parsed)
			{
				parseVDXChunks(vdx);
				vdx.parsed = true;
			}

			if (state.transient_animation.totalFrames == 0)
			{
				state.transient_animation.totalFrames = vdx.chunks.size();
			}

			auto currentTime = std::chrono::steady_clock::now();
			auto elapsedTime = currentTime - state.transient_animation.lastFrameTime;
			auto frameDuration = state.transient_animation.getFrameDuration(state.currentFPS);
			if (elapsedTime >= frameDuration)
			{
				state.transient_frame_index++;
				if (state.transient_frame_index >= state.transient_animation.totalFrames)
				{
					state.transient_animation.isPlaying = false;
					state.transient_frame_index = state.transient_animation.totalFrames - 1;
					// Resume main song if applicable
					if (!state.current_song.empty())
					{
						xmiPlay(state.current_song, false);
					}
					forceUpdateCursor(); // Updates cursor based on mouse position
				}
				state.transient_animation.lastFrameTime += frameDuration;

				state.dirtyFrame = true;
			}
		}
	}
	// Handle regular animations
	else if (state.animation.isPlaying && state.currentVDX)
	{
		auto currentTime = std::chrono::steady_clock::now();
		auto elapsedTime = currentTime - state.animation.lastFrameTime;

		if (elapsedTime >= state.animation.getFrameDuration(state.currentFPS))
		{
			state.currentFrameIndex++;
			if (state.currentFrameIndex >= state.animation.totalFrames)
			{
				state.animation.isPlaying = false;
				state.currentFrameIndex = state.animation.totalFrames - 1;
				if (state.animation_queue_index < state.animation_sequence.size() - 1)
				{
					state.animation_queue_index++;
					loadView();
				}
				else
				{
					state.animation_sequence.clear();
					state.animation_queue_index = 0;

					forceUpdateCursor();
				}
			}
			state.animation.lastFrameTime = currentTime;

			state.dirtyFrame = true;
		}
	}
}

//
// Play a transient animation
//
void playTransientAnimation(const std::string &animation_name)
{
	state.transient_animation_name = animation_name; // e.g., "dr_r"
	state.transient_animation.totalFrames = 0;
	state.transient_animation.isPlaying = true;
	state.transient_animation.lastFrameTime = std::chrono::steady_clock::now();
	state.transient_frame_index = 0;
}

//
// Render a frame if enough time has elapsed or a redraw was requested
//
void maybeRenderFrame(bool force)
{
	using namespace std::chrono;

	auto frameDuration = microseconds(
		static_cast<long long>(1000000.0 / state.currentFPS));
	auto now = steady_clock::now();
	auto timeSinceLast = now - state.lastRenderTime;

	if (!force && timeSinceLast < frameDuration && !state.dirtyFrame)
		return;

	if (timeSinceLast < frameDuration)
		std::this_thread::sleep_for(frameDuration - timeSinceLast);

	renderFrame();
	state.lastRenderTime = steady_clock::now();
	state.dirtyFrame = false;
}

//
// Start the game engine
//
void init()
{
	initWindow();

	xmiPlay("gu61");

	loadView();
	maybeRenderFrame(true);

	if (!initCursors("ROB.GJD", scaleFactor))
	{
		std::cerr << "WARNING: Failed to initialize cursors, using system defaults\n";
	}

	state.previous_room = state.current_room;
	state.ui.enabled = true;

	bool running = true;
	while (running)
	{
		running = processEvents();

		if (state.current_view != state.previous_view)
		{
			state.animation_sequence.clear();
			loadView();
			maybeRenderFrame(true); // show new view immediately
		}

		updateAnimation();
		maybeRenderFrame();
	}

	save_config("config.json");

	// Stop and cleanup music playback
	state.music_playing = false;
	if (state.music_thread.joinable())
	{
		state.music_thread.join();
	}

	cleanupCursors();
	cleanupWindow();
}