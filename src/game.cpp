// game.cpp

#include <iostream>
#include <unordered_map>
#include <string>
#include <string_view>
#include <algorithm>
#include <chrono>
#include <thread>
#include <filesystem>
#include <fstream>

#include "game.h"
#include "window.h"
#include "music.h"
#include "audio.h"
#include "config.h"
#include "cursor.h"
#include "raycast.h"

#include "fh.h"
#include "dr.h"

#ifdef _WIN32
#ifndef NOMINMAX
#define NOMINMAX
#endif
#endif

// Global game state
GameState state;

//=====================================================

//
// Lookup map for views - uses transparent hash for string_view lookups without allocation
//
struct StringHash {
    using is_transparent = void;
    size_t operator()(std::string_view sv) const { return std::hash<std::string_view>{}(sv); }
    size_t operator()(const std::string& s) const { return std::hash<std::string_view>{}(s); }
};
std::unordered_map<std::string, const View *, StringHash, std::equal_to<>> view_map;

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
// Uses string_view for zero-allocation lookups via transparent hash
//
const View *getView(std::string_view current_view)
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
	state.view = getView(view_name);
	if (!state.view)
		throw std::runtime_error("View not found: " + view_name);

	state.currentVDX = &getOrLoadVDX(view_name);
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
	state.frameTiming.dirtyFrame = true;
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

	// Transient animation  // COMPLETED: Full transients handling (load/unload symmetric to main)
	if (!state.transient_animation_name.empty() && state.transient_animation.isPlaying)
	{
		state.transientVDX = &getOrLoadVDX(state.transient_animation_name); // FIXED: Load for transients (replaces broken find)
		if (!state.transientVDX->parsed)
		{
			parseVDXChunks(*state.transientVDX);
			state.transientVDX->parsed = true;
		}
		if (!state.transient_animation.totalFrames)
			state.transient_animation.totalFrames = state.transientVDX->frameData.size();

			if (now - state.transient_animation.lastFrameTime >= state.transient_animation.getFrameDuration(state.frameTiming.currentFPS))
		{
			if (++state.transient_frame_index >= state.transient_animation.totalFrames)
			{
				state.transient_animation.isPlaying = false;
				state.transient_frame_index = state.transient_animation.totalFrames - 1;
				if (!state.current_song.empty())
					xmiPlay(state.current_song, false);

				unloadVDX(state.transient_animation_name);
				state.transient_animation_name.clear();
				state.transientVDX = nullptr;
				state.frameTiming.dirtyFrame = true; // Ensure re-render after transient

				// FIXED: Refresh view to restore hotspots without restarting animation
				auto [room, view, is_static, action] = parseToken(state.current_view);
				state.view = getView(view);
				if (!state.view)
				{
					throw std::runtime_error("View not found after transient: " + view);
				}
				// CRITICAL: Ensure animation is stopped to allow hotspot interaction
				state.animation.isPlaying = false;
				forceUpdateCursor(); // CRITICAL: Force cursor system to recognize new hotspots
			}
			else
			{
				state.transient_animation.lastFrameTime += state.transient_animation.getFrameDuration(state.frameTiming.currentFPS);
				state.frameTiming.dirtyFrame = true;
			}
		}
		updateCursorAnimation();
		return;
	}

	// Load new view/sequence
	if (state.current_view != state.previous_view || state.animation_sequence.empty())
	{
		// Clear and parse sequence
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
				if (state.currentVDX)
					unloadVDX(state.currentVDX->filename);
				if (state.transientVDX) // NEW: Unload transient on room change
					unloadVDX(state.transientVDX->filename);
				state.current_room = room;
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

			// If this is a single static view, complete the setup to prevent reloads
			if (state.animation_queue_index == 0 && state.animation_sequence.size() == 1 && is_static)
			{
				// Sequence complete for static
				auto [_, view_complete, __, ___] = parseToken(state.animation_sequence.back());
				state.current_view = view_complete + ";static";
				state.previous_view = state.current_view;
				state.animation_sequence.clear();
				state.animation_queue_index = 0;
				// No additional setup needed
			}
		}
	}

	// Update animation
	if (state.animation.isPlaying && state.currentVDX &&
		now - state.animation.lastFrameTime >= state.animation.getFrameDuration(state.frameTiming.currentFPS))
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
					if (state.currentVDX)
						unloadVDX(state.currentVDX->filename);
					if (state.transientVDX)
						unloadVDX(state.transientVDX->filename);
					state.current_room = room;
					state.previous_room = room;
					state.animation.reset();
				}
				// Unload previous VDX before loading next
				if (state.currentVDX)
					unloadVDX(state.currentVDX->filename);
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
				// Sequence complete
				auto [_, view, __, ___] = parseToken(state.animation_sequence.back());
				state.current_view = view + ";static";
				state.previous_view = state.current_view;

				// Unload previous sequence VDX if not current  // FIXED: Moved loop BEFORE clear() to fix empty loop bug
				for (size_t i = 0; i < state.animation_sequence.size() - 1; ++i)
				{
					auto [room_i, view_i, is_static_i, action_i] = parseToken(state.animation_sequence[i]);
					if (view_i != view)
						unloadVDX(view_i); // Safe if not loaded
				}

				state.animation_sequence.clear();
				state.animation_queue_index = 0;
				setupView(view, true, now);
				forceUpdateCursor();
			}
		}
		else
		{
			state.animation.lastFrameTime += state.animation.getFrameDuration(state.frameTiming.currentFPS);
			state.frameTiming.dirtyFrame = true;
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
		static_cast<long long>(1000000.0 / state.frameTiming.currentFPS));
	auto now = steady_clock::now();
	auto timeSinceLast = now - state.frameTiming.lastRenderTime;

	if (!force && timeSinceLast < frameDuration && !state.frameTiming.dirtyFrame)
		return;

	if (timeSinceLast < frameDuration)
	{
#ifdef _WIN32
		// Use a high-resolution waitable timer to reduce jitter compared to sleep_for
		static HANDLE s_timer = nullptr;
		if (!s_timer)
		{
			s_timer = CreateWaitableTimerExW(nullptr, nullptr, CREATE_WAITABLE_TIMER_HIGH_RESOLUTION, TIMER_ALL_ACCESS);
			if (!s_timer)
			{
				// Fallback to normal timer if high-res not supported
				s_timer = CreateWaitableTimerW(nullptr, FALSE, nullptr);
			}
		}
		auto remaining = duration_cast<microseconds>(frameDuration - timeSinceLast);
		// SetWaitableTimer expects relative time in 100-ns units (negative for relative)
		LARGE_INTEGER dueTime;
		long long hundredNs = -static_cast<long long>(remaining.count()) * 10; // microseconds to 100ns
		dueTime.QuadPart = hundredNs;
		// Use a small period of 0; do not resume; no completion routine
		if (s_timer && SetWaitableTimer(s_timer, &dueTime, 0, nullptr, nullptr, FALSE))
		{
			WaitForSingleObject(s_timer, INFINITE);
		}
		else
		{
			std::this_thread::sleep_for(remaining);
		}
#else
		std::this_thread::sleep_for(frameDuration - timeSinceLast);
#endif
	}

	renderFrame();
	state.frameTiming.lastRenderTime = steady_clock::now();
	state.frameTiming.dirtyFrame = false;
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
	musicInit();

	buildViewMap();

	// Intro Videos and initial music: skip entirely in raycast mode
	if (!state.raycast.enabled && !g_quitRequested)
	{
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
			if (!g_quitRequested)
				vdxPlay("TRILOGO.VDX");
		}

		if (!g_quitRequested)
			xmiPlay("gu61");
	}

	if (!g_quitRequested)
	{
		viewHandler();
		maybeRenderFrame(true);

		if (!initCursors("ROB.GJD", scaleFactor))
		{
			std::cerr << "WARNING: Failed to initialize cursors, using system defaults\n";
		}
		else
		{
			// Ensure the correctly scaled cursor is shown immediately at startup
			forceUpdateCursor();
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
	musicShutdown();

	// PCM
	wavStop();

	// Resources
	if (state.currentVDX)
	{
		unloadVDX(state.currentVDX->filename);
	}
	if (state.transientVDX)
	{
		unloadVDX(state.transientVDX->filename);
	}
	cleanupCursors();
	cleanupWindow();
#ifdef _WIN32
	timeEndPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_NORMAL);
	SetPriorityClass(GetCurrentProcess(), NORMAL_PRIORITY_CLASS);
#endif
}