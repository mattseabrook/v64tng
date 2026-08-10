// game.cpp

#include <print>
#include <unordered_map>
#include <string>
#include <string_view>
#include <algorithm>
#include <chrono>
#include <cctype>
#include <thread>
#include <filesystem>
#include <fstream>
#include <utility>
#include <cstring>
#include <type_traits>

#include "game.h"
#include "window.h"
#include "music.h"
#include "audio.h"
#include "config.h"
#include "cursor.h"
#include "raycast.h"
#include "assets.h"
#include "grv_runtime.h"

#ifdef _WIN32
#endif

// Global game state
GameState state;

//=====================================================

static std::optional<GrvRuntime> grvRuntime;
static std::string pendingGrvBackgroundSong;
static std::string activeGrvBackgroundSong;
static bool pendingGrvPaletteMerge = false;
static bool grvVideoPlayback = false;
static void applyGrvTransition(const GrvTransition &transition);

namespace
{
constexpr size_t kCanvasWidth = 640;
constexpr size_t kCanvasHeight = 480;
constexpr size_t kVideoHeight = 320;
constexpr size_t kVideoTop = 80;
constexpr size_t kPixelBytes = 3;

void materializeIndexedFrame(
	std::span<const uint8_t> indices,
	std::span<const RGBColor> palette,
	std::vector<uint8_t> &frame)
{
	if (palette.size() < 256)
		return;
	frame.resize(indices.size() * kPixelBytes);
	for (size_t pixel = 0; pixel < indices.size(); ++pixel)
	{
		const RGBColor colour = palette[indices[pixel]];
		frame[pixel * kPixelBytes] = colour.r;
		frame[pixel * kPixelBytes + 1] = colour.g;
		frame[pixel * kPixelBytes + 2] = colour.b;
	}
}

void composeGrvForegroundFromBackground()
{
	// The copy covers only the 640x320 game band. Native COPY_BG_TO_FG does
	// not clear either 80-row bar, so retain any PRINTSTRING pixels there.
	if (state.grvForegroundIndices.size() != kCanvasWidth * kCanvasHeight)
		state.grvForegroundIndices.assign(kCanvasWidth * kCanvasHeight, 0);
	if (state.grvBackgroundIndices.size() == kCanvasWidth * kVideoHeight)
	{
		std::memcpy(
			state.grvForegroundIndices.data() + kVideoTop * kCanvasWidth,
			state.grvBackgroundIndices.data(), state.grvBackgroundIndices.size());
	}
	materializeIndexedFrame(
		state.grvForegroundIndices, state.grvPalette, state.grvForegroundFrame);
	// Keep the already decoded RGB background authoritative as well. This is
	// required when a native overlay inherited pixels that have no standalone
	// indexed representation in the current VDX.
	if (state.grvBackgroundFrame.size() ==
		kCanvasWidth * kVideoHeight * kPixelBytes)
	{
		std::memcpy(
			state.grvForegroundFrame.data() +
				kVideoTop * kCanvasWidth * kPixelBytes,
			state.grvBackgroundFrame.data(), state.grvBackgroundFrame.size());
	}
	state.grvForegroundActive = true;
	state.frameTiming.dirtyFrame = true;
}

void copyGrvForegroundRectangleToBackground(const GrvCopyRectCommand &rectangle)
{
	if (state.grvForegroundIndices.size() != kCanvasWidth * kCanvasHeight ||
		state.grvBackgroundIndices.size() != kCanvasWidth * kVideoHeight)
		return;
	const size_t left = (std::min<size_t>)(rectangle.left, kCanvasWidth);
	const size_t right = (std::min<size_t>)(rectangle.right, kCanvasWidth);
	const size_t top = (std::max<size_t>)(rectangle.top, kVideoTop);
	const size_t bottom = (std::min<size_t>)(rectangle.bottom, kVideoTop + kVideoHeight);
	if (right <= left || bottom <= top)
		return;
	// Retail V.EXE semantics: copy the foreground rectangle into the persistent
	// VDX background with half-open right/bottom bounds. The Win32 1.02b1 beta
	// reverses this copy and includes the bottom row; v64tng follows retail V.
	const size_t rowBytes = right - left;
	for (size_t y = top; y < bottom; ++y)
	{
		const size_t source = y * kCanvasWidth + left;
		const size_t destination = (y - kVideoTop) * kCanvasWidth + left;
		std::memcpy(state.grvBackgroundIndices.data() + destination,
			state.grvForegroundIndices.data() + source, rowBytes);
	}
	materializeIndexedFrame(
		state.grvBackgroundIndices, state.grvPalette, state.grvBackgroundFrame);
	state.grvForegroundActive = true;
	state.frameTiming.dirtyFrame = true;
}

std::vector<uint8_t> loadSphinxFont()
{
	std::ifstream file(assetPath("SPHINX.FNT"), std::ios::binary);
	if (!file)
		return {};
	return {std::istreambuf_iterator<char>(file), {}};
}

void printGrvString(const GrvPrintCommand &command)
{
	if (state.grvForegroundIndices.size() != kCanvasWidth * kCanvasHeight)
		composeGrvForegroundFromBackground();
	static const std::vector<uint8_t> font = loadSphinxFont();
	if (font.size() < 0xca)
		return;

	// Both native players clear the entire foreground band before drawing.
	std::fill_n(state.grvForegroundIndices.begin(),
		kCanvasWidth * kVideoTop, 0);
	auto glyphOffset = [&](unsigned char ch) -> std::optional<size_t>
	{
		const size_t table = 0x80 + static_cast<size_t>(font[ch]) * 2;
		if (table + 1 >= font.size())
			return std::nullopt;
		return static_cast<size_t>(font[table] | font[table + 1] << 8);
	};
	size_t textWidth = 0;
	for (const unsigned char ch : command.text)
		if (const auto offset = glyphOffset(ch); offset && *offset < font.size())
			textWidth += static_cast<size_t>(font[*offset]) + 1;
	size_t x = textWidth < kCanvasWidth ? (kCanvasWidth - textWidth) / 2 : 0;

	for (const unsigned char ch : command.text)
	{
		const auto start = glyphOffset(ch);
		if (!start || *start + 2 > font.size())
			continue;
		const size_t width = font[*start];
		const size_t leadingBlankRows = font[*start + 1];
		size_t source = *start + 2;
		size_t row = leadingBlankRows;
		// Native glyphs are width, leading-blank-row count, then packed indexed
		// rows terminated by FFh. Retail V advances one extra blank column after
		// every character; that column is included in its centering measurement.
		while (source < font.size() && font[source] != 0xff)
		{
			if (source + width > font.size() || 16 + row >= kVideoTop)
				break;
			for (size_t column = 0; column < width && x + column < kCanvasWidth; ++column)
			{
				const size_t pixel = (16 + row) * kCanvasWidth + x + column;
				state.grvForegroundIndices[pixel] = font[source + column];
			}
			source += width;
			++row;
		}
		x += width + 1;
	}
	materializeIndexedFrame(
		state.grvForegroundIndices, state.grvPalette, state.grvForegroundFrame);
	state.grvForegroundActive = true;
	state.frameTiming.dirtyFrame = true;
}
} // namespace

std::span<const uint8_t> presentationPixels(const VDXFile *vdx, size_t frameIndex)
{
	if (!vdx || vdx->frameData.empty())
		return {};
	frameIndex = (std::min)(frameIndex, vdx->frameData.size() - 1);
	const auto &source = *vdx->frameData[frameIndex];
	if (state.grvForegroundActive && vdx == state.currentVDX.get() &&
		state.grvForegroundIndices.size() == kCanvasWidth * kCanvasHeight)
	{
		if (!grvVideoPlayback && state.grvForegroundFrame.size() ==
			kCanvasWidth * kCanvasHeight * kPixelBytes)
		{
			return std::span<const uint8_t>{state.grvForegroundFrame}.subspan(
				kVideoTop * kCanvasWidth * kPixelBytes,
				kCanvasWidth * kVideoHeight * kPixelBytes);
		}
	}
	if (source.size() == kCanvasWidth * kVideoHeight * kPixelBytes)
		return source;
	if (source.size() == kCanvasWidth * kCanvasHeight * kPixelBytes)
	{
		return std::span<const uint8_t>{source}.subspan(
			kVideoTop * kCanvasWidth * kPixelBytes,
			kCanvasWidth * kVideoHeight * kPixelBytes);
	}
	state.composedPresentationFrame.assign(
		kCanvasWidth * kVideoHeight * kPixelBytes, 0);
	const size_t rowBytes = kCanvasWidth * kPixelBytes;
	if (source.size() % rowBytes == 0)
	{
		const size_t sourceRows = source.size() / rowBytes;
		const size_t copyRows = (std::min)(sourceRows, kVideoHeight);
		const size_t sourceTop = (sourceRows - copyRows) / 2;
		const size_t destinationTop = (kVideoHeight - copyRows) / 2;
		std::memcpy(state.composedPresentationFrame.data() + destinationTop * rowBytes,
			source.data() + sourceTop * rowBytes, copyRows * rowBytes);
	}
	return state.composedPresentationFrame;
}

static void startPendingGrvBackgroundSong()
{
	if (pendingGrvBackgroundSong.empty())
		return;
	// A foreground PLAYSONG owns the device until it ends. An already-looping
	// background song, however, is replaced when GRV selects a new background.
	if (state.music_playing)
	{
		if (activeGrvBackgroundSong.empty() ||
			activeGrvBackgroundSong == pendingGrvBackgroundSong)
			return;
	}
	activeGrvBackgroundSong = pendingGrvBackgroundSong;
	xmiPlay(activeGrvBackgroundSong, false, true);
}

//
// Lookup table for named actions
//
static std::unordered_map<std::string, std::function<void()>> action_map = {
	{"raycast", initRaycaster}};

////////////////////////////////////////////////////////////////////////
// Utility Functions
////////////////////////////////////////////////////////////////////////

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
// Load a transient VDX independently of the current view's VDX.
// This is critical: using getOrLoadVDX for transients would evict the
// current VDX and leave the main view without assets after the transient ends.
//
static std::unique_ptr<VDXFile> loadTransientVDX(const std::string &name)
{
	auto result = loadSingleVDX(state.current_room, name);
	if (!result)
		throw std::runtime_error(result.error());

	auto vdx = std::make_unique<VDXFile>(std::move(*result));
	parseVDXChunks(*vdx);
	vdx->parsed = true;
	return vdx;
}

//
// Setup VDX and view
//
static void setupView(const std::string &view_name, bool is_static, auto now)
{
	getOrLoadVDX(view_name); // Sets state.currentVDX internally
	if (!state.currentVDX->parsed)
	{
		parseVDXChunks(*state.currentVDX);
		state.currentVDX->parsed = true;
	}
	state.animation.totalFrames = state.currentVDX->frameData.size();
	state.frameTiming.currentFPS = vdxPlaybackRate(*state.currentVDX);
	state.currentFrameIndex = is_static ? (state.animation.totalFrames ? state.animation.totalFrames - 1 : 0) : 0;
	state.animation.isPlaying = !is_static && state.animation.totalFrames > 0;
	state.animation.lastFrameTime = now;
	state.previous_view = state.current_view;
	state.grvForegroundActive = false;
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
	startPendingGrvBackgroundSong();

	if (state.raycast.enabled)
	{
		updateRaycasterMovement();
		return;
	}

	auto now = std::chrono::steady_clock::now();

	// Transient animation  // COMPLETED: Full transients handling (load/unload symmetric to main)
	if (!state.transient_animation_name.empty() && state.transient_animation.isPlaying)
	{
		state.transientVDX = loadTransientVDX(state.transient_animation_name);
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

				state.transientVDX.reset();
				state.transient_animation_name.clear();
				state.frameTiming.dirtyFrame = true; // Ensure re-render after transient

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
	if (state.current_view != state.previous_view)
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
			state.transientVDX.reset(); // Unload transient on room change
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
				state.transientVDX.reset();
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

	// Never render once shutdown has begun — the window (and its Vulkan
	// surface) may already be destroyed.
	if (g_quitRequested)
		return;

	const auto frameDuration = state.animation.getFrameDuration(state.frameTiming.currentFPS);
	const auto minDuration = microseconds(
		static_cast<long long>(1000000.0 / (std::max)(1, getDisplayRefreshRate())));
	const auto now = steady_clock::now();
	const auto elapsed = now - state.frameTiming.lastRenderTime;

	auto waitUntil = [&](auto duration) {
#ifdef _WIN32
		const auto remaining = duration_cast<milliseconds>(duration - elapsed);
		MsgWaitForMultipleObjects(
			0, nullptr, FALSE,
			static_cast<DWORD>((std::max)(
				static_cast<long long>(remaining.count()), 0LL)),
			QS_ALLINPUT);
#else
		std::this_thread::sleep_for(duration - elapsed);
#endif
	};
	if (!force && state.raycast.enabled && !state.frameTiming.dirtyFrame)
	{
#ifdef _WIN32
		const auto idleWait = duration_cast<milliseconds>(minDuration);
		MsgWaitForMultipleObjects(0, nullptr, FALSE,
			static_cast<DWORD>(std::max<long long>(1, idleWait.count())), QS_ALLINPUT);
#endif
		return;
	}
	if (!force && elapsed < minDuration)
	{
		waitUntil(minDuration);
		return;
	}
	// Outside of video playback, cap idle wait to the display refresh interval
	// so interactive input (cursor/click feedback) isn't tied to a slow video FPS.
	const auto idleDuration = (state.animation.isPlaying || state.transient_animation.isPlaying)
		? frameDuration
		: minDuration;
	if (!force && elapsed < idleDuration && !state.frameTiming.dirtyFrame)
	{
		waitUntil(idleDuration);
		return;
	}

	const auto renderStart = steady_clock::now();
	renderFrame();
	const auto renderEnd = steady_clock::now();
	if (state.frameTiming.fpsWindowStart.time_since_epoch().count() == 0)
		state.frameTiming.fpsWindowStart = renderStart;
	++state.frameTiming.measuredFrameCount;
	state.frameTiming.measuredRenderSeconds += duration<double>(renderEnd - renderStart).count();
	const double fpsWindowSeconds = duration<double>(renderEnd - state.frameTiming.fpsWindowStart).count();
	if (fpsWindowSeconds >= 0.5)
	{
		if (state.frameTiming.measuredRenderSeconds > 0.0)
			state.frameTiming.measuredFPS =
				state.frameTiming.measuredFrameCount / state.frameTiming.measuredRenderSeconds;
		state.frameTiming.measuredFrameCount = 0;
		state.frameTiming.measuredRenderSeconds = 0.0;
		state.frameTiming.fpsWindowStart = renderEnd;
	}
	state.frameTiming.lastRenderTime = renderStart;
	state.frameTiming.dirtyFrame = false;
}

/*
===============================================================================
Function Name: playIntroVideos

Description:
		- Plays the two logo cutscenes (Virgin / Trilobyte).
		- These only run when starting a new game; they are no longer
		  part of the boot sequence.
===============================================================================
*/
static void playIntroVideos()
{
	std::ifstream file("Vielogo.vdx", std::ios::binary);
	if (file)
	{
		try
		{
			std::vector<uint8_t> buffer((std::istreambuf_iterator<char>(file)), {});
			VDXFile vdx = parseVDXFile("Vielogo.vdx", std::move(buffer));
			parseVDXChunks(vdx);
			vdxPlay("Vielogo.vdx", &vdx);
		}
		catch (const std::exception &e)
		{
			std::println(stderr, "WARNING: Failed to play Vielogo.vdx: {}", e.what());
		}
	}
	if (!g_quitRequested)
	{
		try
		{
			vdxPlay("TRILOGO.VDX");
		}
		catch (const std::exception &e)
		{
			std::println(stderr, "WARNING: Failed to play TRILOGO.VDX: {}", e.what());
		}
	}
}

/*
===============================================================================
Function Name: enterFoyer

Description:
	- Leaves the boot main menu and enters the main foyer
	  (FH:f_1fb, the held frame at SCRIPT.GRV input loop 04FD).
===============================================================================
*/
static void enterFoyer()
{
	state.mainMenu.active = false;
	state.current_view = "FH:f_1fb;static";
	state.animation_sequence.clear();
	viewHandler();
	maybeRenderFrame(true);
	forceUpdateCursor();
}

/*
===============================================================================
Function Name: startNewGame

Description:
		- Starts a new game: logo cutscenes, then the main foyer.
		- Invoked by the new-game branch target read from SCRIPT.GRV.
===============================================================================
*/
void startNewGame()
{
	state.mainMenu.active = false;
	if (grvRuntime)
	{
		const auto transition = grvRuntime->follow(0x03E8);
		if (transition)
		{
			// SCRIPT.GRV owns the complete logo, story-book, mansion-entry, and
			// foyer sequence. Present its commands in order instead of discarding
			// them after advancing the VM to the foyer input loop.
			applyGrvTransition(*transition);
			return;
		}
		std::println(stderr, "WARNING: Cannot enter first GRV game loop: {}", transition.error());
	}
	// Compatibility fallback for an unavailable or malformed SCRIPT.GRV.
	playIntroVideos();
	if (g_quitRequested)
		return;
	enterFoyer();
}

static bool playGrvVideo(const GrvVideoCommand &command)
{
	if (!grvRuntime || !command.ref)
		return false;
	const auto resource = grvRuntime->resolve(command.ref);
	if (!resource)
	{
		std::println(stderr, "WARNING: Unresolved GRV video ref 0x{:04X}", command.ref);
		return false;
	}
	auto loaded = loadSingleVDX(std::string(resource->archive), resource->stem());
	if (!loaded)
	{
		std::println(stderr, "WARNING: Cannot load GRV video 0x{:04X}: {}",
			command.ref, loaded.error());
		return false;
	}
	try
	{
		if (state.grvForegroundIndices.size() != kCanvasWidth * kCanvasHeight)
			state.grvForegroundIndices.assign(kCanvasWidth * kCanvasHeight, 0);
		const auto foregroundBand = std::span<const uint8_t>{
			state.grvForegroundIndices}.subspan(
				kVideoTop * kCanvasWidth, kCanvasWidth * kVideoHeight);
		VDXDecodeContext context{
			.background = state.grvBackgroundFrame,
			.backgroundIndices = state.grvBackgroundIndices,
			.foregroundIndices = foregroundBand,
			.palette = state.grvPalette,
			.mergePaletteOnce = pendingGrvPaletteMerge};
		parseVDXChunks(*loaded, context, command.flags);
		if (loaded->paletteMergeConsumed)
			pendingGrvPaletteMerge = false;
		loaded->parsed = true;
		if (command.rateOverride)
			loaded->rateOverride = command.rateOverride;

		if ((command.flags & (1u << 1)) != 0)
		{
			// VIDEO_TRANSITION_REF is a one-frame foreground/matte operation.
			// It must not replace the held room background or current view.
			if (!loaded->frameIndices.empty() &&
				loaded->frameIndices.front()->size() == kCanvasWidth * kVideoHeight)
			{
				std::memcpy(
					state.grvForegroundIndices.data() + kVideoTop * kCanvasWidth,
					loaded->frameIndices.front()->data(),
					loaded->frameIndices.front()->size());
				materializeIndexedFrame(state.grvForegroundIndices,
					state.grvPalette, state.grvForegroundFrame);
			}
			return true;
		}

		// VIDEOREF is a blocking VM opcode: render every frame (and its
		// interleaved PCM stream) before the interpreter's next command becomes
		// visible. The decoded last frame then becomes the persistent backdrop
		// for BF5 delta overlays.
		state.grvForegroundActive = true;
		grvVideoPlayback = true;
		vdxPlay(std::string(resource->name()), &*loaded);
		grvVideoPlayback = false;

		if (!loaded->frameData.empty())
		{
			const size_t persistentFrame =
				(command.flags & (1u << 8)) != 0
					? 0 : loaded->frameData.size() - 1;
			state.grvBackgroundFrame = *loaded->frameData[persistentFrame];
			if (persistentFrame < loaded->frameIndices.size())
				state.grvBackgroundIndices = *loaded->frameIndices[persistentFrame];
			else
				state.grvBackgroundIndices.clear();
			state.grvPalette = persistentFrame < loaded->framePalettes.size()
				? loaded->framePalettes[persistentFrame] : loaded->palette;
			state.currentVDX =
				std::make_unique<VDXFile>(std::move(*loaded));
			state.current_room = std::string(resource->archive);
			state.previous_room = state.current_room;
			state.current_view = resource->stem() + ";static";
			state.previous_view = state.current_view;
			state.currentFrameIndex = persistentFrame;
			state.animation.isPlaying = false;
			state.animation.totalFrames = state.currentVDX->frameData.size();
			state.animation_sequence.clear();
			composeGrvForegroundFromBackground();
		}
		return true;
	}
	catch (const std::exception &error)
	{
		grvVideoPlayback = false;
		std::println(stderr, "WARNING: Cannot decode/play GRV video 0x{:04X}: {}",
			command.ref, error.what());
		return false;
	}
}

static void applyGrvTransition(const GrvTransition &transition)
{
	auto apply = [&](const GrvPresentationCommand &command)
	{
		if (g_quitRequested)
			return;
		std::visit([](const auto &value)
		{
			using T = std::decay_t<decltype(value)>;
			if constexpr (std::is_same_v<T, GrvVideoCommand>)
				playGrvVideo(value);
			else if constexpr (std::is_same_v<T, GrvCopyBackgroundCommand>)
				composeGrvForegroundFromBackground();
			else if constexpr (std::is_same_v<T, GrvCopyRectCommand>)
				copyGrvForegroundRectangleToBackground(value);
			else if constexpr (std::is_same_v<T, GrvPrintCommand>)
				printGrvString(value);
			else if constexpr (std::is_same_v<T, GrvSleepCommand>)
			{
				maybeRenderFrame(true);
				std::this_thread::sleep_for(
					std::chrono::milliseconds(value.ticks * 3u));
			}
			else if constexpr (std::is_same_v<T, GrvPlaySongCommand>)
			{
				if (grvRuntime)
					if (const auto song = grvRuntime->resolve(value.ref))
					{
						activeGrvBackgroundSong.clear();
						xmiPlay(song->stem(), false, false);
					}
			}
			else if constexpr (std::is_same_v<T, GrvSetBackgroundSongCommand>)
			{
				if (grvRuntime)
					if (const auto song = grvRuntime->resolve(value.ref))
						pendingGrvBackgroundSong = song->stem();
			}
			else if constexpr (std::is_same_v<T, GrvPaletteMergeOnceCommand>)
				pendingGrvPaletteMerge = true;
		}, command);
	};
	if (!transition.commands.empty())
	{
		for (const auto &command : transition.commands)
			apply(command);
	}
	else
	{
		for (const auto &video : transition.videos)
			apply(GrvPresentationCommand{video});
	}
	if (transition.ended)
	{
		PostQuitMessage(0);
		return;
	}
	startPendingGrvBackgroundSong();
	maybeRenderFrame(true);
	forceUpdateCursor();
}

bool initializeGrvMainMenu()
{
	auto runtime = GrvRuntime::load(assetPath("SCRIPT.GRV"), assetRoot());
	if (!runtime)
	{
		std::println(stderr, "WARNING: {}", runtime.error());
		return false;
	}
	grvRuntime.emplace(std::move(*runtime));
	const auto boot = grvRuntime->boot();
	if (!boot)
	{
		std::println(stderr, "WARNING: {}", boot.error());
		grvRuntime.reset();
		return false;
	}

	if (boot->transition.videos.empty())
	{
		std::println(stderr, "WARNING: SCRIPT.GRV boot emitted no VIDEOREF commands");
		grvRuntime.reset();
		return false;
	}
	state.mainMenu.active = true;
	applyGrvTransition(boot->transition);
	return true;
}

bool grvInputActive()
{
	return grvRuntime && grvRuntime->activeLoop() != 0;
}

uint8_t grvPointerCursor(int x, int y)
{
	if (!grvRuntime)
		return CURSOR_DEFAULT;
	return static_cast<uint8_t>(
		grvRuntime->cursorStyleAt(x, y, state.ui.width, state.ui.height) & 0xff);
}

bool grvPointerClick(int x, int y)
{
	if (!grvRuntime)
		return false;
	const auto target = grvRuntime->activateAt(x, y, state.ui.width, state.ui.height);
	if (!target)
		return false;

	// The original new-game target begins the full title/opening sequence.
	// Keep the existing native player for that sequence while taking the target
	// itself (and all geometry/cursor metadata) directly from SCRIPT.GRV.
	if (state.mainMenu.active && *target == 0x03E8)
	{
		startNewGame();
		return true;
	}
	const auto transition = grvRuntime->follow(*target);
	if (!transition)
	{
		std::println(stderr, "WARNING: GRV target 0x{:04X}: {}", *target, transition.error());
		return true;
	}
	applyGrvTransition(*transition);
	return true;
}

/*
===============================================================================
Function Name: mainMenuKeyDown

Description:
		- Handles cheat code entry on the boot main menu.
		- Feeds characters to SCRIPT.GRV's original case-sensitive
		  "Zaphod Beeblebrox" key-action state machine.
===============================================================================
*/
void mainMenuKeyDown(char c)
{
	if (!state.mainMenu.active)
		return;

	if (grvRuntime)
	{
		const auto transition = grvRuntime->handleKey(static_cast<uint8_t>(c));
		if (!transition)
			std::println(stderr, "WARNING: GRV key handler: {}", transition.error());
		else if (*transition)
			applyGrvTransition(**transition);
		return;
	}

	// Compatibility fallback if SCRIPT.GRV was unavailable at boot.
	static constexpr std::string_view cheat = "zaphodbeeblebrox";
	auto &buf = state.mainMenu.cheatBuffer;
	buf.push_back(static_cast<char>(std::tolower(static_cast<unsigned char>(c))));
	if (buf.size() > cheat.size())
		buf.erase(0, buf.size() - cheat.size());
	if (buf == cheat)
		enterFoyer();
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

	// Boot into the main menu: gu61 starts immediately, then sphinx.vdx from
	// INTRO.GJD plays once (synchronized with the music) and holds its last
	// frame as the menu backdrop. The two logo cutscenes only play on
	// "New Game" (see startNewGame). Skip the menu entirely in raycast mode.
	if (!state.raycast.enabled && !g_quitRequested)
	{
		if (!initializeGrvMainMenu())
		{
			xmiPlay("gu61");
			state.mainMenu.active = true;
			state.current_view = "INTRO:sphinx";
		}
	}

	if (!g_quitRequested)
	{
		viewHandler();
		maybeRenderFrame(true);

		if (!initCursors("ROB.GJD", scaleFactor))
		{
			std::println(stderr, "WARNING: Failed to initialize cursors, using system defaults");
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
			if (!running)
				break; // Window is gone — do not render after WM_QUIT
			viewHandler();
			maybeRenderFrame();
		}
	}

	save_config("config.json");

	//
	// Cleanup
	//

	// Music
	musicShutdown();

	// PCM
	audioShutdown();

	// Resources
	if (state.currentVDX)
	{
		unloadVDX(state.currentVDX->filename);
	}
	state.transientVDX.reset();
	cleanupCursors();
	cleanupWindow();
#ifdef _WIN32
	timeEndPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_NORMAL);
	SetPriorityClass(GetCurrentProcess(), NORMAL_PRIORITY_CLASS);
#endif
}
