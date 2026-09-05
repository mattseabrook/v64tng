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
#include <format>
#include <future>
#include <utility>
#include <cstring>
#include <type_traits>
#include <unordered_set>

#include "game.h"
#include "window.h"
#include "music.h"
#include "audio.h"
#include "config.h"
#include "cursor.h"
#include "raycast.h"
#include "assets.h"
#include "grv_runtime.h"
#include "console.h"

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
static bool grvHoldBlackFrame = false;
static uint8_t grvPresentationLevel = 0xff;
static std::vector<uint8_t> grvFadedPresentationFrame;
static bool previousGrvVideoWasForegroundStill = false;
static bool optionalVielogoPlayed = false;
static uint8_t activeRedbookSelection = 0;
static bool raycasterMenuOpen = false;
static bool grvGameMenuOpen = false;
struct PreparedGrvVideo
{
	std::unique_ptr<VDXFile> file;
	std::string error;
};
using PreparedGrvVideos = std::vector<PreparedGrvVideo>;
static void syncSceneMusicMix();
static void applyGrvTransition(
	const GrvTransition &transition,
	bool synchronizeMusicWithFirstVideo = false,
	std::future<PreparedGrvVideos> *preloadFuture = nullptr);

namespace
{
constexpr size_t kCanvasWidth = 640;
constexpr size_t kCanvasHeight = 480;
constexpr size_t kVideoHeight = 320;
constexpr size_t kVideoTop = 80;
constexpr size_t kPixelBytes = 3;

constexpr uint16_t effectiveGrvVideoFlags(
	uint16_t flags, bool &previousForegroundStill)
{
	// The native VDX player implicitly enables foreground compositing when a
	// normal animation immediately follows a VIDEO_TRANSITION_REF. LI.GRV uses
	// this exact stateful rule: li_stnXX installs a protection mask, then the
	// shared li_let_i animation is clipped to the selected letter. Without the
	// inherited flag, that common animation draws every solution letter.
	uint16_t effective = flags;
	const bool foregroundStill = (flags & (1u << 1)) != 0;
	const bool firstFrameOnly = (flags & (1u << 8)) != 0;
	if (previousForegroundStill && !foregroundStill && !firstFrameOnly)
		effective |= 1u << 7;
	previousForegroundStill = foregroundStill;
	return effective;
}

static_assert([]
{
	bool previousForegroundStill = false;
	const uint16_t station = effectiveGrvVideoFlags(
		(1u << 1) | (1u << 2), previousForegroundStill);
	const uint16_t letter = effectiveGrvVideoFlags(0, previousForegroundStill);
	return (station & (1u << 7)) == 0 &&
		(letter & (1u << 7)) != 0 && !previousForegroundStill;
}(), "a foreground still must mask the immediately following animation");

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

void copyGrvBackgroundRectangleToForeground(const GrvCopyRectCommand &rectangle)
{
	if (state.grvForegroundIndices.size() != kCanvasWidth * kCanvasHeight ||
		state.grvBackgroundIndices.size() != kCanvasWidth * kVideoHeight)
		return;
	const size_t left = (std::min<size_t>)(rectangle.left, kCanvasWidth);
	const size_t right = (std::min<size_t>)(rectangle.right, kCanvasWidth);
	const size_t top = (std::max<size_t>)(rectangle.top, kVideoTop);
	const size_t bottom = (std::min<size_t>)(
		rectangle.bottom, kVideoTop + kVideoHeight - 1);
	if (right <= left || bottom < top)
		return;
	// Despite its historical COPY_RECT_TO_BG name, opcode 37h restores the
	// persistent VDX background into the displayed foreground in both native
	// engines. Win32 1.02b1 copies (right-left) bytes for rows top..bottom.
	// Trace 20260825-223925 confirms that LI.GRV uses this after every letter.
	const size_t rowBytes = right - left;
	for (size_t y = top; y <= bottom; ++y)
	{
		const size_t source = (y - kVideoTop) * kCanvasWidth + left;
		const size_t destination = y * kCanvasWidth + left;
		std::memcpy(state.grvForegroundIndices.data() + destination,
			state.grvBackgroundIndices.data() + source, rowBytes);
	}
	materializeIndexedFrame(
		state.grvForegroundIndices, state.grvPalette, state.grvForegroundFrame);
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
	// PRINTSTRING draws only in the discarded 80-row top bar. Keep the retained
	// puzzle matte in its indexed surface, but present the current background in
	// the visible game band. Re-materializing the old matte with the menu palette
	// is what produced the corrupted telescope image on the save-name screen.
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

std::span<const uint8_t> applyGrvPresentationLevel(
	std::span<const uint8_t> pixels)
{
	if (grvPresentationLevel == 0xff || pixels.empty())
		return pixels;
	grvFadedPresentationFrame.resize(pixels.size());
	for (size_t index = 0; index < pixels.size(); ++index)
	{
		grvFadedPresentationFrame[index] = static_cast<uint8_t>(
			(static_cast<unsigned>(pixels[index]) * grvPresentationLevel + 127u) /
			255u);
	}
	return grvFadedPresentationFrame;
}
} // namespace

std::span<const uint8_t> presentationPixels(const VDXFile *vdx, size_t frameIndex)
{
	if (grvHoldBlackFrame && !grvVideoPlayback)
	{
		static const std::vector<uint8_t> blackFrame(
			kCanvasWidth * kVideoHeight * kPixelBytes, 0);
		return blackFrame;
	}
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
			return applyGrvPresentationLevel(
				std::span<const uint8_t>{state.grvForegroundFrame}.subspan(
					kVideoTop * kCanvasWidth * kPixelBytes,
					kCanvasWidth * kVideoHeight * kPixelBytes));
		}
	}
	if (source.size() == kCanvasWidth * kVideoHeight * kPixelBytes)
		return applyGrvPresentationLevel(source);
	if (source.size() == kCanvasWidth * kCanvasHeight * kPixelBytes)
	{
		return applyGrvPresentationLevel(
			std::span<const uint8_t>{source}.subspan(
				kVideoTop * kCanvasWidth * kPixelBytes,
				kCanvasWidth * kVideoHeight * kPixelBytes));
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
	return applyGrvPresentationLevel(state.composedPresentationFrame);
}

struct GrvPreloadState
{
	std::vector<uint8_t> backgroundFrame;
	std::vector<uint8_t> backgroundIndices;
	std::vector<uint8_t> foregroundBandIndices;
	std::array<RGBColor, 256> palette{};
	bool paletteMergeOnce = false;
	bool previousForegroundStill = false;
};

static GrvPreloadState captureGrvPreloadState()
{
	GrvPreloadState result{
		.backgroundFrame = state.grvBackgroundFrame,
		.backgroundIndices = state.grvBackgroundIndices,
		.foregroundBandIndices = {},
		.palette = state.grvPalette,
		.paletteMergeOnce = pendingGrvPaletteMerge,
		.previousForegroundStill = previousGrvVideoWasForegroundStill};
	if (state.grvForegroundIndices.size() == kCanvasWidth * kCanvasHeight)
	{
		const auto first = state.grvForegroundIndices.begin() +
			static_cast<std::ptrdiff_t>(kVideoTop * kCanvasWidth);
		result.foregroundBandIndices.assign(
			first, first + static_cast<std::ptrdiff_t>(kVideoHeight * kCanvasWidth));
	}
	else
		result.foregroundBandIndices.assign(kVideoHeight * kCanvasWidth, 0);
	return result;
}

static size_t decodedVideoBytes(const VDXFile &video)
{
	size_t bytes = video.audioData.size();
	std::unordered_set<const std::vector<uint8_t> *> counted;
	for (const auto &frame : video.frameData)
		if (frame && counted.insert(frame.get()).second)
			bytes += frame->size();
	counted.clear();
	for (const auto &indices : video.frameIndices)
		if (indices && counted.insert(indices.get()).second)
			bytes += indices->size();
	bytes += video.framePalettes.size() * sizeof(video.framePalettes.front());
	return bytes;
}

static PreparedGrvVideos preloadGrvTransition(
	GrvTransition transition,
	GrvPreloadState decodeState)
{
	const auto started = std::chrono::steady_clock::now();
	PreparedGrvVideos prepared;
	prepared.reserve(transition.videos.size());
	bool contextReliable = true;
	size_t decodedBytes = 0;

	auto process = [&](const GrvPresentationCommand &command)
	{
		std::visit([&](const auto &value)
		{
			using T = std::decay_t<decltype(value)>;
			if constexpr (std::is_same_v<T, GrvVideoCommand>)
			{
				const uint16_t effectiveFlags = effectiveGrvVideoFlags(
					value.flags, decodeState.previousForegroundStill);
				PreparedGrvVideo item;
				if (!contextReliable)
				item.error = "preload context unavailable after an earlier decode failure";
				else if (!grvRuntime)
				item.error = "GRV runtime unavailable";
				else if (const auto resource = grvRuntime->resolve(value.ref))
				{
					auto loaded = loadSingleVDX(
						std::string(resource->archive), resource->stem());
					if (!loaded)
						item.error = loaded.error();
					else
					{
						try
						{
							VDXDecodeContext context{
								.background = decodeState.backgroundFrame,
								.backgroundIndices = decodeState.backgroundIndices,
								.foregroundIndices = decodeState.foregroundBandIndices,
								.palette = decodeState.palette,
								.mergePaletteOnce = decodeState.paletteMergeOnce};
							parseVDXChunks(*loaded, context, effectiveFlags);
							loaded->parsed = true;
							loaded->rateOverride = value.rateOverride;
							if (loaded->paletteMergeConsumed)
								decodeState.paletteMergeOnce = false;

							if ((effectiveFlags & (1u << 1)) != 0)
							{
								if (!loaded->frameIndices.empty() &&
									loaded->frameIndices.front()->size() ==
										kVideoHeight * kCanvasWidth)
									decodeState.foregroundBandIndices =
										*loaded->frameIndices.front();
							}
							else if (!loaded->frameData.empty())
							{
								const size_t persistentFrame =
									(effectiveFlags & (1u << 8)) != 0
										? 0 : loaded->frameData.size() - 1;
								decodeState.backgroundFrame =
									*loaded->frameData[persistentFrame];
								if (persistentFrame < loaded->frameIndices.size())
									decodeState.backgroundIndices =
										*loaded->frameIndices[persistentFrame];
								else
									decodeState.backgroundIndices.clear();
								decodeState.palette =
									persistentFrame < loaded->framePalettes.size()
										? loaded->framePalettes[persistentFrame]
										: loaded->palette;
								// VIDEOREF updates the native background/display surface,
								// but it does not replace the persistent foreground matte.
								// GRATE.GRV installs mgpuzbkd there once, then every
								// flag-7 movement uses it to erase the old grate position.
								// Only explicit opcode 22h/37h copies modify the matte.
							}
							decodedBytes += decodedVideoBytes(*loaded);
							item.file =
								std::make_unique<VDXFile>(std::move(*loaded));
						}
						catch (const std::exception &error)
						{
							item.error = error.what();
						}
					}
				}
				else
					item.error = std::format(
						"unresolved GRV video ref 0x{:04X}", value.ref);
				if (!item.file)
					contextReliable = false;
				prepared.push_back(std::move(item));
			}
			else if constexpr (std::is_same_v<T, GrvCopyBackgroundCommand>)
			{
				if (decodeState.backgroundIndices.size() ==
					kVideoHeight * kCanvasWidth)
					decodeState.foregroundBandIndices =
						decodeState.backgroundIndices;
			}
			else if constexpr (std::is_same_v<T, GrvCopyRectCommand>)
			{
				if (decodeState.backgroundIndices.size() !=
						kVideoHeight * kCanvasWidth ||
					decodeState.foregroundBandIndices.size() !=
						kVideoHeight * kCanvasWidth)
					return;
				const size_t left =
					(std::min<size_t>)(value.left, kCanvasWidth);
				const size_t right =
					(std::min<size_t>)(value.right, kCanvasWidth);
				const size_t top =
					(std::max<size_t>)(value.top, kVideoTop);
				const size_t bottom = (std::min<size_t>)(
					value.bottom, kVideoTop + kVideoHeight - 1);
				if (right <= left || bottom < top)
					return;
				for (size_t y = top; y <= bottom; ++y)
				{
					const size_t offset =
						(y - kVideoTop) * kCanvasWidth + left;
					std::memcpy(
						decodeState.foregroundBandIndices.data() + offset,
						decodeState.backgroundIndices.data() + offset,
						right - left);
				}
			}
			else if constexpr (std::is_same_v<T, GrvPaletteMergeOnceCommand>)
				decodeState.paletteMergeOnce = true;
		}, command);
	};

	if (!transition.commands.empty())
		for (const auto &command : transition.commands)
			process(command);
	else
		for (const auto &video : transition.videos)
			process(GrvPresentationCommand{video});

	const double seconds = std::chrono::duration<double>(
		std::chrono::steady_clock::now() - started).count();
	consoleLogf("ENGINE",
		"intro preload complete: videos={} decoded={:.1f} MiB elapsed={:.3f}s",
		prepared.size(), static_cast<double>(decodedBytes) / (1024.0 * 1024.0),
		seconds);
	return prepared;
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
	consoleLogf("ENGINE", "setup view room={} view={} static={}",
		state.current_room, view_name, is_static);
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
				consoleLogf("ENGINE", "transient complete: {}", state.transient_animation_name);
				state.transient_animation.isPlaying = false;
				state.transient_frame_index = state.transient_animation.totalFrames - 1;
				if (!state.current_song.empty() && !g_quitRequested)
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
		consoleLogf("ENGINE", "view change requested: room={} '{}' -> '{}'",
			state.current_room, state.previous_view, state.current_view);
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
			consoleLogf("ENGINE", "animation complete: room={} view={} frames={}",
				state.current_room, state.current_view, state.animation.totalFrames);
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
	const auto vielogo = assetPath("Vielogo.vdx");
	std::ifstream file(vielogo, std::ios::binary);
	if (file)
	{
		try
		{
			std::vector<uint8_t> buffer((std::istreambuf_iterator<char>(file)), {});
			VDXFile vdx = parseVDXFile(vielogo.string(), std::move(buffer));
			parseVDXChunks(vdx);
			vdxPlay(vielogo.string(), &vdx);
		}
		catch (const std::exception &e)
		{
			std::println(stderr, "WARNING: Failed to play Vielogo.vdx: {}", e.what());
		}
	}
	if (!g_quitRequested)
	{
		const auto trilogo = assetPath("TRILOGO.VDX");
		if (std::filesystem::exists(trilogo))
		{
			try
			{
				vdxPlay(trilogo.string());
			}
			catch (const std::exception &e)
			{
				std::println(stderr, "WARNING: Failed to play TRILOGO.VDX: {}", e.what());
			}
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
	setGameplayMusicMix(true);
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
	setGameplayMusicMix(true);
	// Keep the pointer hidden for the entire scripted intro, including the
	// short gaps between blocking VDX files and GRV sleep/music commands. The
	// ordinary animation flags briefly restore between files and otherwise let
	// hotspot cursors (pyramids, hands, etc.) leak onto the presentation.
	struct IntroCursorGuard
	{
		IntroCursorGuard()
		{
			state.introSequencePlaying = true;
#ifdef _WIN32
			SetCursor(getCurrentCursor());
#endif
		}
		~IntroCursorGuard()
		{
			state.introSequencePlaying = false;
			forceUpdateCursor();
#ifdef _WIN32
			SetCursor(getCurrentCursor());
#endif
		}
	} introCursorGuard;
	if (grvRuntime)
	{
		const auto transition = grvRuntime->follow(0x03E8);
		if (transition)
		{
			// SCRIPT.GRV owns the complete logo, story-book, mansion-entry, and
			// foyer sequence. Present its commands in order instead of discarding
			// them after advancing the VM to the foyer input loop.
			// Decode the bounded transition on a worker while the loose logo and
			// intentional black-screen delays are playing. All dependent palette,
			// foreground, and background state is simulated from this immutable
			// snapshot, so playback can consume ready frames without changing VM
			// ordering or normal room-cache behavior.
			auto preloadFuture = std::async(std::launch::async,
				[preloadTransition = *transition,
				 preloadState = captureGrvPreloadState()]() mutable
				{
					return preloadGrvTransition(
						std::move(preloadTransition), std::move(preloadState));
				});
			applyGrvTransition(*transition, false, &preloadFuture);
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

static bool playGrvVideo(
	const GrvVideoCommand &command,
	bool startPreparedMusicAtFrameZero = false,
	PreparedGrvVideo *prepared = nullptr)
{
	if (!grvRuntime || !command.ref)
		return false;
	const auto resource = grvRuntime->resolve(command.ref);
	if (!resource)
	{
		std::println(stderr, "WARNING: Unresolved GRV video ref 0x{:04X}", command.ref);
		return false;
	}
	std::unique_ptr<VDXFile> loaded;
	if (prepared && prepared->file)
	{
		loaded = std::move(prepared->file);
		consoleLogf("ENGINE", "using predecoded GRV video {} / {}",
			resource->archive, resource->name());
	}
	else
	{
		if (prepared && !prepared->error.empty())
			consoleLogf("ENGINE",
				"predecode unavailable for {} / {}: {}; decoding on demand",
				resource->archive, resource->name(), prepared->error);
		auto onDemand = loadSingleVDX(
			std::string(resource->archive), resource->stem());
		if (onDemand)
			loaded = std::make_unique<VDXFile>(std::move(*onDemand));
		else
		{
			std::println(stderr, "WARNING: Cannot load GRV video 0x{:04X}: {}",
				command.ref, onDemand.error());
			return false;
		}
	}
	if (!loaded)
	{
		std::println(stderr, "WARNING: Cannot load GRV video 0x{:04X}",
			command.ref);
		return false;
	}
	const uint16_t effectiveFlags = effectiveGrvVideoFlags(
		command.flags, previousGrvVideoWasForegroundStill);
	consoleLogf("ENGINE",
		"GRV video request ref=0x{:04X} flags=0x{:04X} effective=0x{:04X} rate={}",
		command.ref, command.flags, effectiveFlags, command.rateOverride);
	try
	{
		if (!loaded->parsed)
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
			parseVDXChunks(*loaded, context, effectiveFlags);
			loaded->parsed = true;
		}
		if (loaded->paletteMergeConsumed)
			pendingGrvPaletteMerge = false;
		if (command.rateOverride)
			loaded->rateOverride = command.rateOverride;

		if ((effectiveFlags & (1u << 1)) != 0)
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
		consoleLogf("ENGINE", "GRV video decoded {} / {} frames={} audio={} bytes",
			resource->archive, resource->name(), loaded->frameData.size(), loaded->audioData.size());

		// VIDEOREF is a blocking VM opcode: render every frame (and its
		// interleaved PCM stream) before the interpreter's next command becomes
		// visible. The decoded last frame then becomes the persistent backdrop
		// for BF5 delta overlays.
		state.grvForegroundActive = true;
		grvVideoPlayback = true;
		const bool driverPreparationMode =
			state.music_mode == "general" ||
			state.music_mode == "wavetable" ||
			state.music_mode == "opl3" ||
			state.music_mode == "opl2" ||
			state.music_mode == "opl" ||
			state.music_mode == "dual_opl2";
		if (startPreparedMusicAtFrameZero && driverPreparationMode)
		{
			// SCRIPT.GRV subroutine 02F1 uses rolmid.vdx for Roland MT-32
			// initialization (PCs 0309-0311) and genmid.vdx for General MIDI
			// (PCs 02F7-0302). Present that native feedback while retaining v64's
			// existing deferred, sample-zero-exact soundfont/MIDI warm-up barrier.
			const std::string preparationName =
				state.music_mode == "general" ? "genmid" : "rolmid";
			auto preparation = loadSingleVDX("INTRO", preparationName);
			musicBeginPrepared();
			if (preparation)
			{
				consoleLogf("MUSIC",
					"native MIDI preparation screen INTRO/{}.vdx (SCRIPT.GRV 02F1)",
					preparationName);
				vdxPlayUntil("INTRO/" + preparationName + ".vdx", &*preparation,
					[] { return musicPreparedStarted(); });
			}
			else
				consoleLogf("MUSIC", "cannot load native preparation screen: {}",
					preparation.error());
			musicWaitPreparedStarted();
			grvHoldBlackFrame = false;
			vdxPlay(std::string(resource->name()), &*loaded, false);
		}
		else
		{
			grvHoldBlackFrame = false;
			vdxPlay(std::string(resource->name()), &*loaded,
				startPreparedMusicAtFrameZero);
		}
		grvVideoPlayback = false;

		if (!loaded->frameData.empty())
		{
			const size_t persistentFrame =
				(effectiveFlags & (1u << 8)) != 0
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
			// Playback leaves its final background frame on the display while
			// retaining the independently managed foreground matte. Conflating
			// those two native surfaces here caused flag-7 puzzle animations to
			// copy the old sprite back over their erase pixels (duplicate grates,
			// and the same first-click reveal seen by the library telescope).
			state.grvForegroundActive = false;
			state.frameTiming.dirtyFrame = true;
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

static bool isGrateRaycasterHandoff(const GrvVideoCommand &command)
{
	if (!grvRuntime || !grvRuntime->inChildScript())
		return false;
	const auto variables = grvRuntime->variables();
	if (variables.size() <= 0x0f8 || variables[0x0f8] != 0x31)
		return false;
	const auto resource = grvRuntime->resolve(command.ref);
	return resource && resource->archive == "MC" &&
		resource->stem() == "mg_thru";
}

static void fadeGrateTraversalToBlack()
{
	using namespace std::chrono_literals;
	constexpr unsigned fadeFrames = 18;
	for (unsigned frame = 1; frame <= fadeFrames && !g_quitRequested; ++frame)
	{
		grvPresentationLevel = static_cast<uint8_t>(
			255u * (fadeFrames - frame) / fadeFrames);
		state.frameTiming.dirtyFrame = true;
		maybeRenderFrame(true);
		if (!processEvents())
			break;
		std::this_thread::sleep_for(16ms);
	}
	grvPresentationLevel = 0xff;
	grvHoldBlackFrame = true;
	state.frameTiming.dirtyFrame = true;
	maybeRenderFrame(true);
}

static void enterRaycasterAfterGrate()
{
	consoleLog("ENGINE",
		"GRATE solved: mg_thru.vdx complete; fading into raycaster basement");
	fadeGrateTraversalToBlack();
	if (g_quitRequested)
		return;

	// Keep the MAZE.GRV runtime parked at its input loop. The raycaster replaces
	// its presentation and navigation, but the live runtime still owns the
	// original in-game menu reached by Escape.
	//
	// Music: do NOT stop the score here. The grate traversal is a continuous
	// scene transition into the basement; whatever background song MAZE.GRV had
	// looping should keep playing through the raycaster. Only foreground PCM is
	// silenced. (Reverts Codex's musicStop()+clear() that left the basement
	// silent.)
	state.mainMenu.active = false;
	state.introSequencePlaying = false;
	raycasterMenuOpen = false;
	grvGameMenuOpen = false;
	initRaycaster();
	grvHoldBlackFrame = false;
	state.frameTiming.dirtyFrame = true;
	maybeRenderFrame(true);
	forceUpdateCursor();
}

static void applyGrvTransition(
	const GrvTransition &transition,
	bool synchronizeMusicWithFirstVideo,
	std::future<PreparedGrvVideos> *preloadFuture)
{
	// VIDEOREF blocks the outer loop, so update the mix before any dialogue
	// starts (including LOADGAME directly from the title screen).
	syncSceneMusicMix();
	consoleLogf("ENGINE", "apply GRV transition commands={} videos={} ended={}",
		transition.commands.size(), transition.videos.size(), transition.ended);
	bool preparedMusicReleased = false;
	std::optional<PreparedGrvVideos> preloadedVideos;
	bool preloadFailed = false;
	size_t videoIndex = 0;
	auto apply = [&](const GrvPresentationCommand &command)
	{
		if (g_quitRequested || state.raycast.enabled)
			return;
		std::visit([&](const auto &value)
		{
			using T = std::decay_t<decltype(value)>;
			if constexpr (std::is_same_v<T, GrvVideoCommand>)
			{
				const bool grateRaycasterHandoff =
					isGrateRaycasterHandoff(value);
				if (preloadFuture && !preloadedVideos && !preloadFailed)
				{
					const auto waitStarted = std::chrono::steady_clock::now();
					try
					{
						preloadedVideos.emplace(preloadFuture->get());
						consoleLogf("ENGINE",
							"intro preload handoff wait={:.3f}s",
							std::chrono::duration<double>(
								std::chrono::steady_clock::now() - waitStarted).count());
					}
					catch (const std::exception &error)
					{
						preloadFailed = true;
						consoleLogf("ENGINE", "intro preload failed: {}", error.what());
					}
				}
				PreparedGrvVideo *preparedVideo = nullptr;
				if (preloadedVideos && videoIndex < preloadedVideos->size())
					preparedVideo = &(*preloadedVideos)[videoIndex];
				++videoIndex;
				const bool blockingVideo = (value.flags & (1u << 1)) == 0;
				const bool releaseMusic = synchronizeMusicWithFirstVideo &&
					!preparedMusicReleased && blockingVideo;
				if (playGrvVideo(value, releaseMusic, preparedVideo))
				{
					if (releaseMusic)
						preparedMusicReleased = true;
					if (grateRaycasterHandoff && !g_quitRequested)
						enterRaycasterAfterGrate();
				}
			}
			else if constexpr (std::is_same_v<T, GrvCopyBackgroundCommand>)
				composeGrvForegroundFromBackground();
			else if constexpr (std::is_same_v<T, GrvCopyRectCommand>)
				copyGrvBackgroundRectangleToForeground(value);
			else if constexpr (std::is_same_v<T, GrvPrintCommand>)
				printGrvString(value);
			else if constexpr (std::is_same_v<T, GrvSleepCommand>)
			{
				maybeRenderFrame(true);
				const auto deadline = std::chrono::steady_clock::now() +
					std::chrono::milliseconds(value.ticks * 3u);
				while (!g_quitRequested &&
					std::chrono::steady_clock::now() < deadline)
				{
					if (!processEvents())
						break;
					maybeRenderFrame();
					const auto remaining = deadline -
						std::chrono::steady_clock::now();
					if (remaining > std::chrono::milliseconds(1))
					{
						const auto maximumSlice =
							std::chrono::duration_cast<
								std::chrono::steady_clock::duration>(
									std::chrono::milliseconds(5));
						std::this_thread::sleep_for(
							(std::min)(remaining, maximumSlice));
					}
				}
			}
			else if constexpr (std::is_same_v<T, GrvPlaySongCommand>)
			{
				if (grvRuntime)
					if (const auto song = grvRuntime->resolve(value.ref))
					{
						activeGrvBackgroundSong.clear();
						if (synchronizeMusicWithFirstVideo)
							xmiPrepare(song->stem(), false, false);
						else
							xmiPlay(song->stem(), false, false);
					}
			}
			else if constexpr (std::is_same_v<T, GrvSetBackgroundSongCommand>)
			{
				if (grvRuntime)
					if (const auto song = grvRuntime->resolve(value.ref))
						pendingGrvBackgroundSong = song->stem();
			}
			else if constexpr (std::is_same_v<T, GrvPlayCdCommand>)
			{
				// Original CD track 1 is the data track. Modern GOG/Steam rips omit
				// it, so PLAYCD 02 maps to track1.ogg, 03 to track2.ogg, etc.
				// Win32 also consumes the loose Vielogo movie once before it
				// re-executes the first PLAYCD 02 request.
				if (value.selection == 0x02 && !optionalVielogoPlayed)
				{
					optionalVielogoPlayed = true;
					// PALFADEOUT precedes this path in SCRIPT.GRV. Keep that black
					// presentation through the intentional post-logo delay instead
					// of briefly restoring the held main-menu framebuffer.
					grvHoldBlackFrame = true;
					// Stop the menu/background score before entering the blocking loose
					// movie. Leaving this until after vdxPlay made Start New appear stuck
					// on the menu while two audio paths continued underneath it.
					musicStop();
					const auto logo = assetPath("Vielogo.vdx");
					if (std::filesystem::exists(logo))
					{
						consoleLogf("REDBOOK",
							"PLAYCD 02 native prelude: playing {} before track1.ogg",
							logo.string());
						grvVideoPlayback = true;
						try
						{
							vdxPlay(logo.string());
						}
						catch (...)
						{
							grvVideoPlayback = false;
							throw;
						}
						grvVideoPlayback = false;
						if (g_quitRequested)
							return;
					}
					else
						consoleLogf("REDBOOK", "optional PLAYCD prelude not found: {}",
							logo.string());
				}

				musicStop();
				if (value.selection == 0x62)
				{
					if (activeRedbookSelection == 0x03)
					{
						consoleLog("REDBOOK",
							"PLAYCD 62 stopping active selection 03 immediately");
						redbookStop();
					}
					else
					{
						consoleLogf("REDBOOK",
							"PLAYCD 62 waiting for selection {:02X} to finish naturally",
							activeRedbookSelection);
						while (redbookIsActive() && !g_quitRequested)
						{
							if (!processEvents())
								break;
							maybeRenderFrame();
						}
						redbookStop();
					}
					activeRedbookSelection = 0;
					return;
				}
				const unsigned trackNumber = redbookOggTrackNumber(value.selection);
				if (!trackNumber)
				{
					redbookStop();
					activeRedbookSelection = 0;
				}
				else
				{
					const auto track = assetPath(std::format("track{}.ogg", trackNumber));
					if (redbookPlayOgg(track))
						activeRedbookSelection = value.selection;
					else
					{
						activeRedbookSelection = 0;
						std::println(stderr, "WARNING: PLAYCD {:02X} cannot play {}",
							value.selection, track.string());
					}
				}
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
	if (synchronizeMusicWithFirstVideo && !preparedMusicReleased)
	{
		// A malformed boot transition might omit VIDEOREF. Never leave its prepared
		// song parked indefinitely if that happens.
		musicStartPrepared();
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
	previousGrvVideoWasForegroundStill = false;
	setGameplayMusicMix(false);
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
	applyGrvTransition(boot->transition, true);
	return true;
}

bool grvInputActive()
{
	return grvRuntime && grvRuntime->activeLoop() != 0;
}

namespace
{
constexpr uint16_t kGrvGameMenuEntry = 0x17AB;
constexpr uint16_t kGrvGameMenuLoop = 0x17D4;
constexpr uint16_t kGrvGameMenuResume = 0x1C55;

void resumeParkedRaycaster()
{
	// SCRIPT.GRV has already restored the parked MAZE.GRV input loop. Suppress
	// its obsolete 2D maze presentation and return to the exact raycaster state
	// that was parked when the menu opened.
	consoleLog("INPUT", "GRV menu Resume returning to parked raycaster");
	musicStop();
	redbookStop();
	wavStop();
	pendingGrvBackgroundSong.clear();
	activeGrvBackgroundSong.clear();
	activeRedbookSelection = 0;
	grvGameMenuOpen = false;
	raycasterMenuOpen = false;
	state.raycast.enabled = true;
	state.mainMenu.active = false;
	state.animation.reset();
	state.transient_animation.reset();
	state.transientVDX.reset();
	setGameplayMusicMix(true);
#ifdef _WIN32
	ShowCursor(FALSE);
#endif
	refreshRendererForCurrentMode();
	state.frameTiming.dirtyFrame = true;
	maybeRenderFrame(true);
	forceUpdateCursor();
}
} // namespace

uint8_t grvPointerCursor(int x, int y)
{
	if (!grvRuntime)
		return CURSOR_DEFAULT;
	return static_cast<uint8_t>(
		grvRuntime->cursorStyleAt(x, y, state.ui.width, state.ui.height) & 0xff);
}

bool grvPointerClick(int x, int y)
{
	consoleLogf("INPUT", "left click client=({}, {}) GRV-active={}", x, y,
		grvRuntime.has_value());
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
	const bool menuResume = grvGameMenuOpen && *target == kGrvGameMenuResume;
	const bool menuLoadedGame = grvGameMenuOpen && grvRuntime->inChildScript();
	if (menuResume || menuLoadedGame)
	{
		grvGameMenuOpen = false;
		setGameplayMusicMix(true);
	}
	if (raycasterMenuOpen && menuResume)
	{
		resumeParkedRaycaster();
		return true;
	}
	applyGrvTransition(*transition);
	return true;
}

bool grvEscapeAction()
{
	// Input can arrive before the outer loop synchronizes a script transition.
	syncSceneMusicMix();
	if (grvGameMenuOpen)
	{
		const bool closeMenu = grvRuntime &&
			grvRuntime->activeLoop() == kGrvGameMenuLoop;
		const uint16_t target = closeMenu
			? kGrvGameMenuResume : kGrvGameMenuEntry;
		consoleLog("INPUT", closeMenu
			? "Escape closing GRV game menu"
			: "Escape returning to GRV game menu");
		const auto transition = grvRuntime->follow(target);
		if (!transition)
		{
			std::println(stderr, "WARNING: GRV Escape target 0x{:04X}: {}",
				target, transition.error());
			return true;
		}
		if (closeMenu)
		{
			grvGameMenuOpen = false;
			if (raycasterMenuOpen)
			{
				resumeParkedRaycaster();
				return true;
			}
			setGameplayMusicMix(true);
		}
		applyGrvTransition(*transition);
		return true;
	}
	if (state.raycast.enabled)
	{
		if (!grvRuntime)
		{
			consoleLog("INPUT",
				"Escape ignored in standalone raycaster: no parked GRV game menu");
			return true;
		}
		const auto target = grvRuntime->topBarTarget();
		if (!target)
		{
			consoleLog("INPUT", "Escape could not find the parked GRV menu action");
			return true;
		}
		consoleLog("INPUT", "Escape parking raycaster and opening GRV game menu");
		resetRaycastInput();
		state.raycast.enabled = false;
		raycasterMenuOpen = true;
		grvGameMenuOpen = true;
		setGameplayMusicMix(false);
#ifdef _WIN32
		ShowCursor(TRUE);
#endif
		refreshRendererForCurrentMode();
		const auto transition = grvRuntime->follow(*target);
		// DIAGNOSTIC (ESC blank screen): capture why nothing presents after
		// parking the raycaster. If currentVDX is null/empty here, the parked
		// menu transition produced no presentable frame and the 2D renderer
		// early-outs -> blank screen with live input.
		consoleLogf("INPUT",
			"ESC park diag: transition={} currentVDX={} frames={}",
			transition ? "ok" : "null",
			state.currentVDX ? "set" : "null",
			state.currentVDX ? state.currentVDX->frameData.size() : 0);
		if (!transition)
		{
			grvGameMenuOpen = false;
			raycasterMenuOpen = false;
			state.raycast.enabled = true;
			setGameplayMusicMix(true);
#ifdef _WIN32
			ShowCursor(FALSE);
#endif
			refreshRendererForCurrentMode();
			std::println(stderr, "WARNING: GRV raycaster menu target 0x{:04X}: {}",
				*target, transition.error());
			return true;
		}
		applyGrvTransition(*transition);
		return true;
	}
	if (!grvRuntime)
		return false;
	if (state.mainMenu.active && !grvRuntime->inChildScript())
	{
		// The title screen already owns its New/Load/Quit choices. Routing Escape
		// through the persistent in-game top hotspot can jump into a stale menu
		// branch and reset the live variable table, making valid saves appear gone.
		consoleLog("INPUT",
			"Escape ignored on main menu; save data and GRV state left unchanged");
		return true;
	}
	consoleLog("INPUT", "Escape requested GRV top-bar action");
	const auto target = grvRuntime->topBarTarget();
	if (!target)
		return false;
	grvGameMenuOpen = true;
	setGameplayMusicMix(false);
	const auto transition = grvRuntime->follow(*target);
	if (!transition)
	{
		grvGameMenuOpen = false;
		setGameplayMusicMix(true);
		std::println(stderr, "WARNING: GRV top-bar target 0x{:04X}: {}",
			*target, transition.error());
		return true;
	}
	applyGrvTransition(*transition);
	return true;
}

/*
===============================================================================
Function Name: grvKeyInput

Description:
		- Feeds character input to the active GRV input loop.
		- This includes the boot-menu cheat and in-game save-name editor.
===============================================================================
*/
void grvKeyInput(char c)
{
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
	if (!state.mainMenu.active)
		return;
	static constexpr std::string_view cheat = "zaphodbeeblebrox";
	auto &buf = state.mainMenu.cheatBuffer;
	buf.push_back(static_cast<char>(std::tolower(static_cast<unsigned char>(c))));
	if (buf.size() > cheat.size())
		buf.erase(0, buf.size() - cheat.size());
	if (buf == cheat)
		enterFoyer();
}

// SCRIPT.GRV also runs the foyer and cheat room selector itself. Entering
// gameplay does not require LOADSCRIPT: those paths install the native
// game-menu top hotspot (17AB) while still in the top-level script.
static void syncSceneMusicMix()
{
	const bool scriptInGameplay = grvRuntime &&
		(grvRuntime->inChildScript() ||
			grvRuntime->topBarTarget() == kGrvGameMenuEntry);
	if (scriptInGameplay)
		state.mainMenu.active = false;
	setGameplayMusicMix(!grvGameMenuOpen && !state.mainMenu.active);
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
	consoleLog("ENGINE", "engine initialization begin");
#ifdef _WIN32
	timeBeginPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_ABOVE_NORMAL);
	SetPriorityClass(GetCurrentProcess(), ABOVE_NORMAL_PRIORITY_CLASS);
#endif
	initWindow();
	consoleLog("ENGINE", "window and renderer initialized");
	musicInit();
	setGameplayMusicMix(state.raycast.enabled);
	consoleLog("ENGINE", "music subsystem initialized");

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
			syncSceneMusicMix();
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
	consoleLog("ENGINE", "engine shutdown complete");
#ifdef _WIN32
	timeEndPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_NORMAL);
	SetPriorityClass(GetCurrentProcess(), NORMAL_PRIORITY_CLASS);
#endif
}
