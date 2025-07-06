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
Function Name: parseViewQueue

Description:
	- Parses comma-separated view names into the queue
===============================================================================
*/
static void parseViewQueue()
{
	std::string_view seq{state.current_view};
	size_t pos = 0;
	while (pos < seq.size())
	{
		size_t next = seq.find(',', pos);
		auto part = seq.substr(pos, next == std::string_view::npos ? seq.size() - pos : next - pos);
		if (!part.empty())
			state.viewQueue.emplace_back(part);
		if (next == std::string_view::npos)
			break;
		pos = next + 1;
	}
	state.queueIndex = 0;
}

/*
===============================================================================
Function Name: parseViewToken

Description:
	- Parses a view token, handling room transitions and modifiers

Parameters:
	- token: The view token to parse
	- is_static: Set to true if "static" modifier found
===============================================================================
*/
static std::string parseViewToken(const std::string &token, bool &is_static)
{
	std::string_view view{token};
	
	// Handle room transitions (room:view)
	auto colon = view.find(':');
	if (colon != std::string_view::npos && colon > 0)
	{
		std::string_view room = view.substr(0, colon);
		if (state.current_room != room)
		{
			state.current_room.assign(room);
			state.VDXFiles = parseGJDFile(state.current_room + ".RL");
			state.previous_room = state.current_room;
		}
		view.remove_prefix(colon + 1);
	}

	// Handle modifiers (view;static)
	auto semi = view.find(';');
	if (semi != std::string_view::npos)
	{
		std::string_view mods = view.substr(semi + 1);
		if (mods.find("static") != std::string_view::npos)
			is_static = true;
		view = view.substr(0, semi);
	}

	return std::string{view};
}

//======================================================

/*
===============================================================================
Function Name: loadView

Description:
	- Loads and starts playing a view with optional queue support
===============================================================================
*/
void loadView()
{
	ensureRoomLoaded();

	// Skip if already playing the same view
	if (state.player.isPlaying && state.current_view == state.previous_view)
		return;

	// Parse queue if empty
	if (state.viewQueue.empty())
		parseViewQueue();

	// Check if queue is valid
	if (state.viewQueue.empty() || state.queueIndex >= state.viewQueue.size())
	{
		state.currentVDX = nullptr;
		return;
	}

	// Parse current view token
	bool isStatic = false;
	std::string viewName = parseViewToken(state.viewQueue[state.queueIndex], isStatic);
	state.current_view = viewName;

	// Debug output
	std::string logMessage = "Current Room: " + state.current_room + ", View: " + state.current_view + "\n";
	OutputDebugStringA(logMessage.c_str());

	// Get view data (null for standalone)
	state.view = getView(state.current_view);

	// Find VDX file
	auto it = std::ranges::find(state.VDXFiles, state.current_view, &VDXFile::filename);
	if (it == state.VDXFiles.end())
		throw std::runtime_error("VDX missing: " + state.current_view);

	// Setup VDX
	state.currentVDX = &*it;
	if (!state.currentVDX->parsed)
	{
		parseVDXChunks(*state.currentVDX);
		state.currentVDX->parsed = true;
	}

	// Setup animation
	state.player.totalFrames = state.currentVDX->frameData.size();
	state.player.hasViewData = (state.view != nullptr);
	
	if (isStatic)
	{
		state.player.currentFrame = state.player.totalFrames ? state.player.totalFrames - 1 : 0;
		state.player.isPlaying = false;
		forceUpdateCursor();
	}
	else
	{
		state.player.currentFrame = 0;
		state.player.isPlaying = state.player.totalFrames > 0;
	}

	state.player.markFrameRendered();
	state.previous_view = state.current_view;
	state.dirtyFrame = true;
}

/*
===============================================================================
Function Name: updateAnimation

Description:
	- Unified animation update - handles all animation types
===============================================================================
*/
void updateAnimation()
{
	updateCursorAnimation();

	// Handle raycast mode
	if (state.raycast.enabled)
	{
		updateRaycasterMovement();
		return;
	}

	// Handle VDX animation
	if (!state.player.isPlaying || !state.currentVDX)
		return;

	if (state.player.shouldAdvance(state.currentFPS))
	{
		state.player.currentFrame++;
		
		if (state.player.currentFrame >= state.player.totalFrames)
		{
			state.player.isPlaying = false;
			state.player.currentFrame = state.player.totalFrames - 1;
			
			// Check for next view in queue
			if (state.queueIndex < state.viewQueue.size() - 1)
			{
				state.queueIndex++;
				loadView();
			}
			else
			{
				// Queue finished, reset
				state.viewQueue.clear();
				state.queueIndex = 0;
				forceUpdateCursor();
			}
		}
		
		state.player.markFrameRendered();
		state.dirtyFrame = true;
	}
}

/*
===============================================================================
Function Name: playVDX

Description:
	- Unified VDX player - handles all animation types
	
Parameters:
	- name: Animation name, comma-separated sequence, or file path
	- isStandalone: If true, ignores view data and can load from disk
	- canSkip: If true, allows skipping with Space key
===============================================================================
*/
void playVDX(const std::string &name, bool isStandalone, bool canSkip)
{
	// Stop current animation
	state.player.reset();
	state.viewQueue.clear();
	state.queueIndex = 0;
	
	// Handle file-based standalone animations
	if (isStandalone && std::filesystem::exists(name))
	{
		std::ifstream file(name, std::ios::binary);
		if (!file)
		{
			MessageBoxA(nullptr, ("Failed to open " + name).c_str(), "Error", MB_OK | MB_ICONERROR);
			return;
		}

		// Parse VDX file
		std::vector<uint8_t> buffer((std::istreambuf_iterator<char>(file)), {});
		static VDXFile standaloneVDX; // Static to keep it alive during playback
		standaloneVDX = parseVDXFile(name, std::span(buffer));
		parseVDXChunks(standaloneVDX);

		// Backup current state
		state.player.backupVDX = state.currentVDX;
		
		// Setup standalone playback
		if (!standaloneVDX.audioData.empty())
		{
			state.currentFPS = 15.0;
			wavPlay(standaloneVDX.audioData);
		}

		state.currentVDX = &standaloneVDX;
		state.view = nullptr;
		state.player.currentFrame = 0;
		state.player.totalFrames = standaloneVDX.frameData.size();
		state.player.isPlaying = true;
		state.player.hasViewData = false;
		state.player.isSkippable = canSkip;
		state.player.markFrameRendered();

		// Playback loop for skippable animations
		if (canSkip)
		{
			while (state.player.isPlaying)
			{
				if (!processEvents() || (GetAsyncKeyState(VK_SPACE) & 1))
					break;

				if (state.player.shouldAdvance(state.currentFPS))
				{
					state.player.currentFrame++;
					if (state.player.currentFrame >= state.player.totalFrames)
					{
						state.player.isPlaying = false;
						state.player.currentFrame = state.player.totalFrames - 1;
					}
					state.player.markFrameRendered();
					state.dirtyFrame = true;
				}

				maybeRenderFrame();
			}
			
			// Restore state
			wavStop();
			state.currentVDX = state.player.backupVDX;
			state.player.reset();
			state.dirtyFrame = true;
		}
	}
	else
	{
		// Handle view-based animations
		state.current_view = name;
		
		// For standalone animations, clear view to disable hotspots/navigation
		if (isStandalone)
			state.view = nullptr;
		
		loadView();
	}
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
#ifdef _WIN32
	timeBeginPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_ABOVE_NORMAL);
	SetPriorityClass(GetCurrentProcess(), ABOVE_NORMAL_PRIORITY_CLASS);
#endif
	initWindow();

	buildViewMap();

	// Intro Videos
	playVDX("Vielogo.vdx", true, true);
	playVDX("TRILOGO.VDX", true, true);

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
			state.viewQueue.clear();
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