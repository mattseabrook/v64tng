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
// Lookup table for named actions
//
static std::unordered_map<std::string, std::function<void()>> action_map = {
	{"raycast", initRaycaster}};

////////////////////////////////////////////////////////////////////////
// Utility Functions
////////////////////////////////////////////////////////////////////////

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

//
// Retrieves the current view based on the current_view string
//
const View *getView(const std::string &current_view)
{
	auto it = view_map.find(current_view);
	return (it != view_map.end()) ? it->second : nullptr;
}

//
// Parse animation token (room:view;mods)
//
static std::tuple<std::string, std::string, bool, std::string> parseToken(std::string_view token)
{
	std::string room, view, action;
	bool is_static = false;

	if (auto colon = token.find(':'); colon != std::string_view::npos)
	{
		room = token.substr(0, colon);
		token.remove_prefix(colon + 1);
	}

	if (auto semi = token.find(';'); semi != std::string_view::npos)
	{
		action = std::string(token.substr(semi + 1));
		is_static = action.find("static") != std::string_view::npos;
		token = token.substr(0, semi);
	}

	view = token;
	return {room, view, is_static, action};
}

//
// Setup VDX and view
//
static void setupView(const std::string &view_name, bool is_static, auto now)
{
	if (!state.current_room.empty() && state.VDXFiles.empty())
	{
		state.VDXFiles = parseGJDFile(state.current_room + ".RL");
		state.previous_room = state.current_room;
	}

	state.view = getView(view_name);
	if (!state.view)
		throw std::runtime_error("View not found: " + view_name);

	auto it = std::ranges::find(state.VDXFiles, view_name, &VDXFile::filename);
	if (it == state.VDXFiles.end())
		throw std::runtime_error("VDX missing: " + view_name);

	state.currentVDX = &*it;
	if (!state.currentVDX->parsed)
	{
		parseVDXChunks(*state.currentVDX);
		state.currentVDX->parsed = true;
	}

	state.animation.totalFrames = state.currentVDX->frameData.size();
	state.currentFrameIndex = is_static ? (state.animation.totalFrames ? state.animation.totalFrames - 1 : 0) : 0;
	state.animation.isPlaying = !is_static && state.animation.totalFrames > 0;
	state.animation.lastFrameTime = now;
	state.previous_view = state.current_view;
	state.dirtyFrame = true;
}

/*
===============================================================================
Function Name: viewHandler

Description:
		- Renders a frame if enough time has passed since the last render.
		- If `force` is true, it will render immediately regardless of timing.
		- Handles transient animations and view changes.
===============================================================================
*/
void viewHandler()
{
	if (state.raycast.enabled)
	{
		updateRaycasterMovement();
		return;
	}

	auto now = std::chrono::steady_clock::now();

	// Transient animation
	if (!state.transient_animation_name.empty() && state.transient_animation.isPlaying)
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
			if (!state.transient_animation.totalFrames)
				state.transient_animation.totalFrames = vdx.frameData.size();

			if (now - state.transient_animation.lastFrameTime >= state.transient_animation.getFrameDuration(state.currentFPS))
			{
				if (++state.transient_frame_index >= state.transient_animation.totalFrames)
				{
					state.transient_animation.isPlaying = false;
					state.transient_frame_index = state.transient_animation.totalFrames - 1;
					if (!state.current_song.empty())
						xmiPlay(state.current_song, false);
					forceUpdateCursor();
					state.transient_animation_name.clear();
				}
				else
				{
					state.transient_animation.lastFrameTime += state.transient_animation.getFrameDuration(state.currentFPS);
					state.dirtyFrame = true;
				}
			}
		}
		else
		{
			state.transient_animation.isPlaying = false;
			state.transient_animation_name.clear();
		}
		updateCursorAnimation();
		return;
	}

	// Load new view/sequence
	if (state.current_view != state.previous_view || state.animation_sequence.empty())
	{
		// Parse sequence
		state.animation_sequence.clear();
		std::string_view seq{state.current_view};
		for (size_t pos = 0; pos < seq.size();)
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

		// Setup first token
		if (!state.animation_sequence.empty())
		{
			auto [room, view, is_static, action] = parseToken(state.animation_sequence[0]);
			if (!room.empty() && state.current_room != room)
			{
				state.current_room = room;
				state.VDXFiles = parseGJDFile(room + ".RL");
				state.previous_room = room;
				state.animation.reset();
			}
			state.current_view = view;
			setupView(view, is_static, now);
			state.pending_action = nullptr;
			if (!action.empty())
			{
				if (auto it = action_map.find(action); it != action_map.end())
					state.pending_action = it->second;
			}
		}
	}

	// Update animation
	if (state.animation.isPlaying && state.currentVDX &&
		now - state.animation.lastFrameTime >= state.animation.getFrameDuration(state.currentFPS))
	{
		if (++state.currentFrameIndex >= state.animation.totalFrames)
		{
			state.animation.isPlaying = false;
			state.currentFrameIndex = state.animation.totalFrames - 1;

			if (state.pending_action)
			{
				auto action = std::move(state.pending_action);
				state.pending_action = nullptr;
				action();
				if (state.raycast.enabled)
					return;
			}

			if (state.animation_queue_index < state.animation_sequence.size() - 1)
			{
				// Next in sequence
				auto [room, view, is_static, action] = parseToken(state.animation_sequence[++state.animation_queue_index]);
				if (!room.empty() && state.current_room != room)
				{
					state.current_room = room;
					state.VDXFiles = parseGJDFile(room + ".RL");
					state.previous_room = room;
					state.animation.reset();
				}
				state.current_view = view;
				setupView(view, is_static, now);
				state.pending_action = nullptr;
				if (!action.empty())
				{
					if (auto it = action_map.find(action); it != action_map.end())
						state.pending_action = it->second;
				}
			}
			else
			{
				// Sequence complete - mark static
				auto [_, view, __, ___] = parseToken(state.animation_sequence.back());
				state.current_view = view + ";static";
				state.previous_view = state.current_view;
				state.animation_sequence.clear();
				state.animation_queue_index = 0;
				setupView(view, true, now);
				forceUpdateCursor();
			}
		}
		else
		{
			state.animation.lastFrameTime += state.animation.getFrameDuration(state.currentFPS);
			state.dirtyFrame = true;
		}
	}

	updateCursorAnimation();
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

/*
===============================================================================
Function Name: init

Description:
		- Initializes the game environment.
		- Sets up the window, loads views, and plays intro videos.
		- Starts the main game loop.
		- Cleans up resources on exit.
===============================================================================
*/
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

			vdxPlay("Vielogo.vdx", &vdx);
		}
		vdxPlay("TRILOGO.VDX");
	}

	xmiPlay("gu61");

	viewHandler();
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
		viewHandler();
		maybeRenderFrame();
	}

	save_config("config.json");

	//
	// Cleanup
	//

	// Music
	state.music_playing = false;
	if (state.music_thread.joinable())
	{
		state.music_thread.join();
	}

	// PCM
	wavStop();

	// Resources
	cleanupCursors();
	cleanupWindow();
#ifdef _WIN32
	timeEndPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_NORMAL);
	SetPriorityClass(GetCurrentProcess(), NORMAL_PRIORITY_CLASS);
#endif
}