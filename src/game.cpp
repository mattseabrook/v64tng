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
#include <filesystem>
#include <fstream>

// REMOVE LATER (this is for output debugging in x64dbg - Line 229)
#include <Windows.h>

#include "game.h"
#include "window.h"
#include "gjd.h"
#include "music.h"
#include "audio.h"
#include "config.h"
#include "cursor.h"
#include "raycast.h"

#include "fh.h"
#include "dr.h"

// Global game state
GameState state;

//=====================================================

//
// Lookup map for views
//
std::unordered_map<std::string, const View *> view_map;

//
// Builds the view map from predefined view groups
//
void buildViewMap()
{
	const std::vector<const std::vector<ViewGroup> *> room_data = {
		&foyer,
		&diningRoom,
		// Add other rooms here...
	};
	for (const auto *entries : room_data)
	{
		for (const auto &group : *entries)
		{
			for (const char *name : group.names)
			{
				view_map[name] = &group.data;
			}
		}
	}
}

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
	auto it = view_map.find(current_view);
	return (it != view_map.end()) ? it->second : nullptr;
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

	// REMOVE LATER
	std::string logMessage = "Current Room: " + state.current_room + ", View: " + state.current_view + "\n";
	OutputDebugStringA(logMessage.c_str());

	const View *view = getView(state.current_view);
	if (!view)
		throw std::runtime_error("View not found: " + state.current_view);
	state.view = view;

	auto it = std::ranges::find(state.VDXFiles, state.current_view, &VDXFile::filename);
	if (it == state.VDXFiles.end())
		throw std::runtime_error("VDX missing: " + state.current_view);

	state.currentVDX = &*it;
	if (!state.currentVDX->parsed)
	{
		parseVDXChunks(*state.currentVDX);
		state.currentVDX->parsed = true;
	}

	state.animation.totalFrames = state.currentVDX->frameData.size();
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

/*
===============================================================================
Function Name: handleTransientAnimation

Description:
	- Handles the playback of transient animations.
	- Checks if a transient animation is active and updates the frame index
===============================================================================
*/
void handleTransientAnimation()
{
	if (!state.transient_animation_name.empty())
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
				state.transient_animation.totalFrames = vdx.frameData.size();
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
}

/*
===============================================================================
Function Name: handleRegularAnimation

Description:
	- Handles the playback of regular animations.
	- Checks if a regular animation is active and updates the frame index.
===============================================================================
*/
void handleRegularAnimation()
{
	if (state.currentVDX)
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
// Animate the VDX sequence
//
void updateAnimation()
{
	// Update cursor animation
	updateCursorAnimation();

	// Update raycaster movement continuously with FPS control
	if (state.raycast.enabled)
	{
		updateRaycasterMovement();
		return; // Skip regular animation processing in raycast mode
	}

	// Handle transient animations first
	if (state.transient_animation.isPlaying && !state.transient_animation_name.empty())
	{
		handleTransientAnimation();
	}
	// Handle regular animations
	else if (state.animation.isPlaying && state.currentVDX)
	{
		handleRegularAnimation();
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

/*
===============================================================================
Function Name: PlayVDX

Description:
		- Plays a standalone VDX animation from disk.
		- Skippable with the Space key.

Parameters:
		- filename: Name of the VDX file to play. Must reside in the
		  current directory.
===============================================================================
*/
void PlayVDX(const std::string &filename)
{
	if (!std::filesystem::exists(filename))
	{
		MessageBoxA(nullptr, (filename + " not found!").c_str(), "Error", MB_OK | MB_ICONERROR);
		return;
	}
	// Open the file if it exists:
	std::ifstream file(filename, std::ios::binary);
	if (!file)
	{
		MessageBoxA(nullptr, ("Failed to open " + filename).c_str(), "Error", MB_OK | MB_ICONERROR);
		return;
	}

	std::vector<uint8_t> buffer((std::istreambuf_iterator<char>(file)), {});
	VDXFile vdx = parseVDXFile(filename, std::span(buffer));
	parseVDXChunks(vdx);

	double prevFPS = state.currentFPS;
	if (!vdx.audioData.empty())
	{
		state.currentFPS = 15.0;
		wavPlay(vdx.audioData);
	}

	VDXFile *prevVDX = state.currentVDX;
	size_t prevFrame = state.currentFrameIndex;
	AnimationState prevAnim = state.animation;

	state.currentVDX = &vdx;
	state.currentFrameIndex = 0;
	state.animation.isPlaying = true;
	state.animation.totalFrames = vdx.frameData.size();
	state.animation.lastFrameTime = std::chrono::steady_clock::now();

	bool playing = true;
	while (playing)
	{
		if (!processEvents())
			break;

		if (GetAsyncKeyState(VK_SPACE) & 1)
			break;

		auto now = std::chrono::steady_clock::now();
		auto elapsed = now - state.animation.lastFrameTime;
		auto frameDuration = state.animation.getFrameDuration(state.currentFPS);
		if (elapsed >= frameDuration)
		{
			state.currentFrameIndex++;
			if (state.currentFrameIndex >= state.animation.totalFrames)
			{
				playing = false;
				state.currentFrameIndex = state.animation.totalFrames - 1;
			}
			state.animation.lastFrameTime += frameDuration;
			state.dirtyFrame = true;
		}

		maybeRenderFrame();
	}

	wavStop();
	state.currentFPS = prevFPS;
	state.currentVDX = prevVDX;
	state.currentFrameIndex = prevFrame;
	state.animation = prevAnim;
	state.dirtyFrame = true;
}

/*
===============================================================================
Function Name: PlayVDXFromMemory

Description:
		- Plays a VDX animation from memory.
		- Skippable with the Space key.
Parameters:
		- vdx: Reference to the VDXFile object containing the animation data.
===============================================================================
*/
void PlayVDXFromMemory(VDXFile &vdx)
{
	if (!vdx.parsed)
	{
		parseVDXChunks(vdx);
		vdx.parsed = true;
	}

	double prevFPS = state.currentFPS;
	if (!vdx.audioData.empty())
	{
		state.currentFPS = 15.0;
		wavPlay(vdx.audioData);
	}

	VDXFile *prevVDX = state.currentVDX;
	size_t prevFrame = state.currentFrameIndex;
	AnimationState prevAnim = state.animation;

	state.currentVDX = &vdx;
	state.currentFrameIndex = 0;
	state.animation.isPlaying = true;
	state.animation.totalFrames = vdx.frameData.size();
	state.animation.lastFrameTime = std::chrono::steady_clock::now();

	bool playing = true;
	while (playing)
	{
		if (!processEvents())
			break;

		if (GetAsyncKeyState(VK_SPACE) & 1)
			break;

		auto now = std::chrono::steady_clock::now();
		auto elapsed = now - state.animation.lastFrameTime;
		auto frameDuration = state.animation.getFrameDuration(state.currentFPS);
		if (elapsed >= frameDuration)
		{
			state.currentFrameIndex++;
			if (state.currentFrameIndex >= state.animation.totalFrames)
			{
				playing = false;
				state.currentFrameIndex = state.animation.totalFrames - 1;
			}
			state.animation.lastFrameTime += frameDuration;
			state.dirtyFrame = true;
		}

		maybeRenderFrame();
	}

	wavStop();
	state.currentFPS = prevFPS;
	state.currentVDX = prevVDX;
	state.currentFrameIndex = prevFrame;
	state.animation = prevAnim;
	state.dirtyFrame = true;
}

/*
===============================================================================
Function Name: maybeRenderFrame

Description:
		- Renders a frame if enough time has passed since the last render.
		- If `force` is true, it will render immediately regardless of timing.

Parameters:
		- force: If true, forces a render regardless of timing.
		  If false, waits for the appropriate frame duration.
===============================================================================
*/
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
#ifdef _WIN32
	timeBeginPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_ABOVE_NORMAL);
	SetPriorityClass(GetCurrentProcess(), ABOVE_NORMAL_PRIORITY_CLASS);
#endif
	initWindow();

	buildViewMap();

	// Intro Videos
	{
		std::ifstream file("Vielogo.vdx", std::ios::binary);
		if (file)
		{
			std::vector<uint8_t> buffer((std::istreambuf_iterator<char>(file)), {});
			VDXFile vdx = parseVDXFile("Vielogo.vdx", std::span(buffer));
			parseVDXChunks(vdx);
			const size_t cropSize = 640 * 80 * 3;
			for (auto &frame : vdx.frameData)
				if (frame.size() > cropSize)
					frame.erase(frame.begin(), frame.begin() + cropSize);

			PlayVDXFromMemory(vdx);
		}
		PlayVDX("TRILOGO.VDX");
	}

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
			maybeRenderFrame(true);
		}

		updateAnimation();
		maybeRenderFrame();
	}

	save_config("config.json");

	// Music cleanup
	state.music_playing = false;
	if (state.music_thread.joinable())
	{
		state.music_thread.join();
	}

	cleanupCursors();
	cleanupWindow();
#ifdef _WIN32
	timeEndPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_NORMAL);
	SetPriorityClass(GetCurrentProcess(), NORMAL_PRIORITY_CLASS);
#endif
}