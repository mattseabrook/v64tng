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
Function Name: viewHandler

Description:
	- Handles the current view and animation state.
	- Updates the raycaster if enabled.
===============================================================================
*/
void viewHandler()
{
	// Handle raycast mode first
	if (state.raycast.enabled)
	{
		updateRaycasterMovement();
		return;
	}

	//
	// Handle transient animation
	//
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
					if (!state.current_song.empty())
					{
						xmiPlay(state.current_song, false);
					}
					forceUpdateCursor();
					state.transient_animation_name.clear();
				}
				else
				{
					state.transient_animation.lastFrameTime += frameDuration;
					state.dirtyFrame = true;
				}
			}
		}
		else
		{
			state.transient_animation.isPlaying = false;
			state.transient_animation_name.clear();
		}
	}
	else
	{
		//
		// Handle regular view loading and animation
		//
		if (state.current_view != state.previous_view || state.animation_sequence.empty())
		{
			if (state.VDXFiles.empty())
			{
				state.VDXFiles = parseGJDFile(state.current_room + ".RL");
				state.previous_room = state.current_room;
			}

			if (state.animation_sequence.empty())
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

			if (!state.animation_sequence.empty())
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

				bool is_static = false;
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

				//
				// Set up view
				//
				state.view = getView(state.current_view);
				if (!state.view)
					throw std::runtime_error("View not found: " + state.current_view);

				auto it = std::ranges::find(state.VDXFiles, state.current_view, &VDXFile::filename);
				if (it != state.VDXFiles.end())
				{
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
				else
				{
					throw std::runtime_error("VDX missing: " + state.current_view);
				}
			}
		}

		//
		// Update regular animation
		//
		if (state.animation.isPlaying && state.currentVDX)
		{
			auto currentTime = std::chrono::steady_clock::now();
			auto elapsedTime = currentTime - state.animation.lastFrameTime;
			auto frameDuration = state.animation.getFrameDuration(state.currentFPS);
			if (elapsedTime >= frameDuration)
			{
				state.currentFrameIndex++;
				if (state.currentFrameIndex >= state.animation.totalFrames)
				{
					state.animation.isPlaying = false;
					state.currentFrameIndex = state.animation.totalFrames - 1;
					if (state.animation_queue_index < state.animation_sequence.size() - 1)
					{
						state.animation_queue_index++;
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

						bool is_static = false;
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

						state.view = getView(state.current_view);
						if (!state.view)
							throw std::runtime_error("View not found: " + state.current_view);

						auto it = std::ranges::find(state.VDXFiles, state.current_view, &VDXFile::filename);
						if (it != state.VDXFiles.end())
						{
							state.currentVDX = &*it;
							if (!state.currentVDX->parsed)
							{
								parseVDXChunks(*state.currentVDX);
								state.currentVDX->parsed = true;
							}
							state.animation.totalFrames = state.currentVDX->frameData.size();
							state.currentFrameIndex = 0;
							state.animation.isPlaying = state.animation.totalFrames > 0;
							state.animation.lastFrameTime = currentTime;
							state.previous_view = state.current_view;
							state.dirtyFrame = true;
						}
						else
						{
							throw std::runtime_error("VDX missing: " + state.current_view);
						}
					}
					else
					{
						// Animation sequence is complete - set static frame and stop animation
						std::string_view final_token{state.animation_sequence.back()};
						auto colon = final_token.find(':');
						if (colon != std::string_view::npos && colon > 0)
							final_token.remove_prefix(colon + 1);
						auto semi = final_token.find(';');
						if (semi != std::string_view::npos)
							final_token = final_token.substr(0, semi);
						
						// Mark the view as static to prevent re-animation
						std::string static_view = std::string(final_token) + ";static";
						state.current_view = static_view;
						state.previous_view = state.current_view;
						state.animation_sequence.clear();
						state.animation_queue_index = 0;
						
						// Set static frame and stop animation
						auto it = std::ranges::find(state.VDXFiles, std::string(final_token), &VDXFile::filename);
						if (it != state.VDXFiles.end())
						{
							state.currentVDX = &*it;
							if (!state.currentVDX->parsed)
							{
								parseVDXChunks(*state.currentVDX);
								state.currentVDX->parsed = true;
							}
							state.animation.totalFrames = state.currentVDX->frameData.size();
							state.currentFrameIndex = state.animation.totalFrames ? state.animation.totalFrames - 1 : 0;
							state.animation.isPlaying = false;
							state.animation.lastFrameTime = currentTime;
							state.dirtyFrame = true;
						}
						forceUpdateCursor();
					}
				}
				else
				{
					state.animation.lastFrameTime += frameDuration;
					state.dirtyFrame = true;
				}
			}
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