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
#include <exception>
#include <cstring>
#include <memory>

#include "game.h"
#include "window.h"
#include "music.h"
#include "audio.h"
#include "config.h"
#include "raycast.h"
#include "pvx.h"
#include "d2d.h"
#include "vulkan.h"
#include "plugin_api.h"
#include "cursor.h"

//
// Debug logging macro - writes to DebugView/debugger output
//
#ifdef _WIN32
#define DBG_LOG(msg) OutputDebugStringA("[Phantom] " msg "\n")
#define DBG_LOGF(fmt, ...) do { char _dbg_buf[4096]; snprintf(_dbg_buf, sizeof(_dbg_buf), "[Phantom] " fmt "\n", __VA_ARGS__); OutputDebugStringA(_dbg_buf); } while(0)
#else
#define DBG_LOG(msg) ((void)0)
#define DBG_LOGF(fmt, ...) ((void)0)
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
void registerView(const char *name, const View *view)
{
	view_map[name] = view;
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
// Setup PVX and view
//

// Try to load frames from an active plugin into state.pluginPVX.
// Returns true if the plugin handled this view, false to fall back to PVX.
static bool setupViewFromPlugin(const std::string &view_name)
{
	EnginePlugin *plug = enginePluginGet();
	if (!plug || !plug->GetArchiveCount || !plug->ExtractFrame || !plug->GetItemInfo)
		return false;

	int archiveCount = plug->GetArchiveCount();
	DBG_LOGF("setupViewFromPlugin('%s'): archiveCount=%d", view_name.c_str(), archiveCount);
	if (archiveCount <= 0)
		return false;

	char archiveBuf[256];
	for (int ai = 0; ai < archiveCount; ++ai)
	{
		if (!plug->GetArchiveName(ai, archiveBuf, sizeof(archiveBuf)))
			continue;

		int w = 0, h = 0, frameCount = 0, fps = 24;
		if (!plug->GetItemInfo(archiveBuf, view_name.c_str(), &w, &h, &frameCount, &fps))
			continue;
		if (w <= 0 || h <= 0 || frameCount <= 0)
			continue;
		DBG_LOGF("Plugin candidate '%s' can provide '%s' (%dx%d, %d frames @ %d fps)",
			archiveBuf, view_name.c_str(), w, h, frameCount, fps);

		// Found — extract all frames into pluginPVX
		const int frameBytes = w * h * 3;
		state.pluginRGBBuf.resize(static_cast<size_t>(frameBytes));
		state.pluginPVX = {};
		state.pluginPVX.filename = view_name;
		state.pluginPVX.width = w;
		state.pluginPVX.height = h;
		state.pluginPVX.fps = fps;
		state.pluginPVX.frameData.resize(static_cast<size_t>(frameCount));

		if (plug->PrepareItem)
		{
			const int prepared = plug->PrepareItem(archiveBuf, view_name.c_str());
			DBG_LOGF("PrepareItem('%s','%s') => %d", archiveBuf, view_name.c_str(), prepared);
		}

		for (int fi = 0; fi < frameCount; ++fi)
		{
			if (plug->ExtractFrame(archiveBuf, view_name.c_str(), fi,
								   state.pluginRGBBuf.data(), frameBytes))
			{
				state.pluginPVX.frameData[fi].assign(
					state.pluginRGBBuf.begin(), state.pluginRGBBuf.end());
			}
			else
			{
				DBG_LOGF("ExtractFrame('%s','%s',%d) failed; substituting blank frame",
					archiveBuf, view_name.c_str(), fi);
				state.pluginPVX.frameData[fi].assign(static_cast<size_t>(frameBytes), 0);
			}
		}

		if (plug->ReleaseItem)
			plug->ReleaseItem(archiveBuf, view_name.c_str());

		state.currentPVX = &state.pluginPVX;
		DBG_LOGF("Plugin provided %d frames for '%s' (%dx%d @ %d fps)",
				 frameCount, view_name.c_str(), w, h, fps);
		return true;
	}

	return false;
}

// Load transient animation frames from an active plugin into state.transientPluginPVX.
// Returns true if the plugin handled this animation, false to fall back to PVX file.
static bool setupTransientFromPlugin(const std::string &anim_name)
{
	EnginePlugin *plug = enginePluginGet();
	if (!plug || !plug->GetArchiveCount || !plug->ExtractFrame || !plug->GetItemInfo)
		return false;

	int archiveCount = plug->GetArchiveCount();
	if (archiveCount <= 0)
		return false;

	char archiveBuf[256];
	for (int ai = 0; ai < archiveCount; ++ai)
	{
		if (!plug->GetArchiveName(ai, archiveBuf, sizeof(archiveBuf)))
			continue;

		int w = 0, h = 0, frameCount = 0, fps = 24;
		if (!plug->GetItemInfo(archiveBuf, anim_name.c_str(), &w, &h, &frameCount, &fps))
			continue;
		if (w <= 0 || h <= 0 || frameCount <= 0)
			continue;

		const int frameBytes = w * h * 3;
		state.pluginRGBBuf.resize(static_cast<size_t>(frameBytes));
		state.transientPluginPVX = {};
		state.transientPluginPVX.filename = anim_name;
		state.transientPluginPVX.width = w;
		state.transientPluginPVX.height = h;
		state.transientPluginPVX.fps = fps;
		state.transientPluginPVX.frameData.resize(static_cast<size_t>(frameCount));

		if (plug->PrepareItem)
			plug->PrepareItem(archiveBuf, anim_name.c_str());

		for (int fi = 0; fi < frameCount; ++fi)
		{
			if (plug->ExtractFrame(archiveBuf, anim_name.c_str(), fi,
								   state.pluginRGBBuf.data(), frameBytes))
			{
				state.transientPluginPVX.frameData[fi].assign(
					state.pluginRGBBuf.begin(), state.pluginRGBBuf.end());
			}
			else
			{
				state.transientPluginPVX.frameData[fi].assign(static_cast<size_t>(frameBytes), 0);
			}
		}

		if (plug->ReleaseItem)
			plug->ReleaseItem(archiveBuf, anim_name.c_str());

		state.transientPVX = &state.transientPluginPVX;
		return true;
	}

	return false;
}

static void ensureCurrentViewFrameReady(const std::string &view_name)
{
	if (!state.currentPVX)
		throw std::runtime_error("View loaded without PVX data: " + view_name);

	if (state.currentPVX->width <= 0 || state.currentPVX->height <= 0)
		throw std::runtime_error("View has invalid dimensions: " + view_name);

	if (state.currentPVX->frameData.empty())
		throw std::runtime_error("View has no frames: " + view_name);

	const size_t expectedFrameBytes =
		static_cast<size_t>(state.currentPVX->width) *
		static_cast<size_t>(state.currentPVX->height) * 3ull;
	if (state.currentPVX->frameData[0].size() < expectedFrameBytes)
	{
		throw std::runtime_error("View frame buffer is smaller than declared dimensions: " + view_name);
	}

	const uint32_t targetW = static_cast<uint32_t>(state.currentPVX->width);
	const uint32_t targetH = static_cast<uint32_t>(state.currentPVX->height);
	const uint32_t currentW = d2dCtx.textureWidth ? d2dCtx.textureWidth : vkCtx.textureWidth;
	const uint32_t currentH = d2dCtx.textureHeight ? d2dCtx.textureHeight : vkCtx.textureHeight;

	if (currentW != targetW || currentH != targetH)
	{
		DBG_LOGF("Resizing content texture for view '%s': %ux%u -> %ux%u",
			view_name.c_str(), currentW, currentH, targetW, targetH);
		resizeContentTexture(targetW, targetH);
		d2dCtx.forceFullUpdate = true;
		vkCtx.forceFullUpdate = true;
	}
}

static void syncPlaybackFPSToPVX(const PVXFile *pvx)
{
	if (!pvx)
		return;

	const int fps = pvx->fps > 0 ? pvx->fps : 24;
	state.frameTiming.currentFPS = static_cast<double>((std::max)(1, fps));
}

static uint16_t readU16LE(const std::vector<uint8_t>& data, size_t offset)
{
	if (offset + 2 > data.size())
		return 0;
	return static_cast<uint16_t>(data[offset] | (static_cast<uint16_t>(data[offset + 1]) << 8));
}

static uint32_t readU32LE(const std::vector<uint8_t>& data, size_t offset)
{
	if (offset + 4 > data.size())
		return 0;
	return static_cast<uint32_t>(data[offset]) |
		(static_cast<uint32_t>(data[offset + 1]) << 8) |
		(static_cast<uint32_t>(data[offset + 2]) << 16) |
		(static_cast<uint32_t>(data[offset + 3]) << 24);
}

static bool decodePcmFromWav(const std::vector<uint8_t>& wavBytes,
	std::shared_ptr<const std::vector<uint8_t>>& outPcm,
	AudioPlaybackFormat& outFormat)
{
	if (wavBytes.size() < 44 ||
		std::memcmp(wavBytes.data(), "RIFF", 4) != 0 ||
		std::memcmp(wavBytes.data() + 8, "WAVE", 4) != 0)
	{
		return false;
	}

	bool sawFmt = false;
	bool sawData = false;
	size_t dataOffset = 0;
	uint32_t dataSize = 0;
	AudioPlaybackFormat format{};

	for (size_t pos = 12; pos + 8 <= wavBytes.size();)
	{
		const char* chunkId = reinterpret_cast<const char*>(wavBytes.data() + pos);
		const uint32_t chunkSize = readU32LE(wavBytes, pos + 4);
		const size_t chunkData = pos + 8;
		if (chunkData + chunkSize > wavBytes.size())
			break;

		if (std::memcmp(chunkId, "fmt ", 4) == 0 && chunkSize >= 16)
		{
			const uint16_t audioFormat = readU16LE(wavBytes, chunkData + 0);
			const uint16_t channels = readU16LE(wavBytes, chunkData + 2);
			const uint32_t sampleRate = readU32LE(wavBytes, chunkData + 4);
			const uint16_t bitsPerSample = readU16LE(wavBytes, chunkData + 14);
			if (audioFormat != 1 || sampleRate == 0 ||
				(channels != 1 && channels != 2) ||
				(bitsPerSample != 8 && bitsPerSample != 16))
			{
				return false;
			}
			format.sampleRate = sampleRate;
			format.channels = channels;
			format.bitsPerSample = bitsPerSample;
			sawFmt = true;
		}
		else if (std::memcmp(chunkId, "data", 4) == 0)
		{
			dataOffset = chunkData;
			dataSize = chunkSize;
			sawData = true;
		}

		pos = chunkData + chunkSize + (chunkSize & 1u);
	}

	if (!sawFmt || !sawData || dataSize == 0 || dataOffset + dataSize > wavBytes.size())
		return false;

	auto pcm = std::make_shared<std::vector<uint8_t>>(
		wavBytes.begin() + static_cast<std::ptrdiff_t>(dataOffset),
		wavBytes.begin() + static_cast<std::ptrdiff_t>(dataOffset + dataSize));
	outPcm = std::shared_ptr<const std::vector<uint8_t>>(std::move(pcm));
	outFormat = format;
	return true;
}

static void playConfiguredStartupPluginAudio()
{
	static bool played = false;
	if (played)
		return;
	played = true;

	if (!config.contains("gameState") || !config["gameState"].is_object())
		return;

	const auto& gameState = config["gameState"];
	if (!gameState.contains("audio") || !gameState["audio"].is_object())
		return;

	const auto& audio = gameState["audio"];
	if (!audio.contains("startupPluginAudio") || !audio["startupPluginAudio"].is_object())
		return;

	const auto& startup = audio["startupPluginAudio"];
	const std::string archive = startup.value("archive", std::string("ROOT"));
	const std::string item = startup.value("item", std::string());
	if (item.empty())
		return;

	EnginePlugin* plug = enginePluginGet();
	if (!plug || !plug->ExtractArchiveItemAudioWav)
	{
		DBG_LOG("Startup plugin audio requested, but active plugin has no audio export");
		return;
	}

	int wavSize = 0;
	plug->ExtractArchiveItemAudioWav(archive.c_str(), item.c_str(), nullptr, 0, &wavSize);
	if (wavSize <= 0)
	{
		DBG_LOGF("Startup plugin audio '%s/%s' is unavailable", archive.c_str(), item.c_str());
		return;
	}

	std::vector<uint8_t> wavBytes(static_cast<size_t>(wavSize));
	if (!plug->ExtractArchiveItemAudioWav(archive.c_str(), item.c_str(),
		wavBytes.data(), static_cast<int>(wavBytes.size()), &wavSize))
	{
		DBG_LOGF("Startup plugin audio '%s/%s' extraction failed", archive.c_str(), item.c_str());
		return;
	}
	if (wavSize > 0 && static_cast<size_t>(wavSize) < wavBytes.size())
		wavBytes.resize(static_cast<size_t>(wavSize));

	std::shared_ptr<const std::vector<uint8_t>> pcm;
	AudioPlaybackFormat format{};
	if (!decodePcmFromWav(wavBytes, pcm, format))
	{
		DBG_LOGF("Startup plugin audio '%s/%s' did not return PCM WAV data", archive.c_str(), item.c_str());
		return;
	}

	DBG_LOGF("Playing startup plugin audio '%s/%s' (%u Hz, %u ch, %u-bit, %zu bytes)",
		archive.c_str(), item.c_str(), format.sampleRate, format.channels,
		format.bitsPerSample, pcm ? pcm->size() : 0);
	wavPlay(std::move(pcm), format);
}

static void setupView(const std::string &view_name, bool is_static, auto now)
{
	DBG_LOGF("setupView('%s', static=%d)", view_name.c_str(), is_static ? 1 : 0);
	state.view = getView(view_name);
	if (!state.view && !enginePluginActive())
		throw std::runtime_error("View not found: " + view_name);

	// Try plugin first, fall back to PVX
	if (!setupViewFromPlugin(view_name))
	{
		std::string pvxPath = view_name + ".pvx";
		if (!std::filesystem::exists(pvxPath))
		{
			std::string msg = "Cannot load view \"" + view_name + "\": ";
			EnginePlugin *plug = enginePluginGet();
			if (!plug)
				msg += "no plugin loaded and no PVX file found";
			else if (!enginePluginActive())
				msg += "plugin loaded but not initialized (check pluginAssetPath in config.json)";
			else
				msg += "plugin could not provide frames and no PVX fallback exists";
			throw std::runtime_error(msg);
		}
		state.currentPVX = &getOrLoadPVX(pvxPath);
		DBG_LOGF("PVX fallback loaded for '%s' from %s", view_name.c_str(), pvxPath.c_str());
	}

	ensureCurrentViewFrameReady(view_name);
	syncPlaybackFPSToPVX(state.currentPVX);

	state.animation.totalFrames = state.currentPVX->frameData.size();
	state.currentFrameIndex = is_static ? (state.animation.totalFrames ? state.animation.totalFrames - 1 : 0) : 0;
	state.animation.isPlaying = !is_static && state.animation.totalFrames > 0;
	state.animation.lastFrameTime = now;
	state.previous_view = state.current_view;
	state.frameTiming.dirtyFrame = true;
	DBG_LOGF("setupView('%s') ready: %dx%d frames=%zu currentFrame=%zu",
		view_name.c_str(),
		state.currentPVX->width,
		state.currentPVX->height,
		state.animation.totalFrames,
		state.currentFrameIndex);
}

static void unloadCurrentPVXIfLoaded()
{
	if (!state.currentPVX)
		return;

	const std::string key = state.currentPVX->filename;
	state.currentPVX = nullptr;
	unloadPVX(key);
}

static void unloadTransientPVXIfLoaded()
{
	if (state.transientPVX)
	{
		if (state.transientPVX == &state.transientPluginPVX)
		{
			state.transientPluginPVX = {};
		}
		else
		{
			const std::string key = state.transientPVX->filename;
			unloadPVX(key);
		}
		state.transientPVX = nullptr;
		return;
	}

	if (!state.transient_animation_name.empty())
		unloadPVX(state.transient_animation_name + ".pvx");
}

void viewHandler()
{
	// Handle menu mode
	if (state.menu.enabled)
	{
		auto now = std::chrono::steady_clock::now();
		
			// Update menu background animation (streaming on-demand).
			// FPS comes from the PVX header; stream loops internally at EOF.
			const double menuFPS = static_cast<double>((std::max)(1, pvxMenuGetFPS()));

			// Keep the global render cadence in sync with the active content.
			// This prevents desync if the default (24) was never overwritten
			// or got restored by a previous pvxPlay() save/restore cycle.
			state.frameTiming.currentFPS = menuFPS;

			const auto menuFrameDuration = state.menu.animation.getFrameDuration(menuFPS);
			if (pvxMenuIsOpen() && state.menu.animation.isPlaying)
			{
				// If we've fallen very far behind (minimized, stall, etc.),
				// resync the clock to "almost now" so we don't burst through
				// 8 old frames trying to catch up.
				if (now - state.menu.animation.lastFrameTime > menuFrameDuration * 8)
					state.menu.animation.lastFrameTime = now - menuFrameDuration;

				// Consume frames that are DUE, but only advance the clock
				// for frames we actually got from the queue.  The old code
				// advanced the clock unconditionally, so when the decode
				// thread was starved (queue empty) the video appeared to
				// "speed up" once frames became available again — the clock
				// had run ahead and those frames were permanently skipped.
				const std::vector<uint8_t>* newestFrame = nullptr;
				int framesConsumed = 0;
				while (now - state.menu.animation.lastFrameTime >= menuFrameDuration && framesConsumed < 8)
				{
					const std::vector<uint8_t>* nextMenuFrame = pvxMenuNextFrame();
					if (!nextMenuFrame)
						break;  // Queue empty — stop advancing clock
					newestFrame = nextMenuFrame;
					state.menu.animation.lastFrameTime += menuFrameDuration;
					++framesConsumed;
				}

				if (newestFrame)
				{
					state.menu.currentFrame = newestFrame;
					state.frameTiming.dirtyFrame = true;
				}
			}
		
		// Handle menu item clicks
		if (state.menu.itemClicked)
		{
			state.menu.itemClicked = false;
			
			switch (state.menu.selectedItem)
			{
			case 0: // NEW GAME
				MessageBoxA(nullptr, "new game", "Menu", MB_ICONINFORMATION | MB_OK);
				break;
			case 1: // MULTIPLAYER
				MessageBoxA(nullptr, "multiplayer", "Menu", MB_ICONINFORMATION | MB_OK);
				break;
			case 2: // OPTIONS
				MessageBoxA(nullptr, "options", "Menu", MB_ICONINFORMATION | MB_OK);
				break;
			case 3: // EXIT
				// Use same cleanup as File->Exit menu
				save_config("config.json");
				::PostQuitMessage(0);
				break;
			}
		}
		
		return;
	}

	if (state.raycast.enabled)
	{
		updateRaycasterMovement();
		return;
	}

	auto now = std::chrono::steady_clock::now();

	// Handle transient animations (load/unload symmetric to main view)
	if (!state.transient_animation_name.empty() && state.transient_animation.isPlaying)
	{
		if (!state.transientPVX)
		{
			// Try plugin first, fall back to PVX file
			if (!setupTransientFromPlugin(state.transient_animation_name))
			{
				std::string pvxPath = state.transient_animation_name + ".pvx";
				if (std::filesystem::exists(pvxPath))
					state.transientPVX = &getOrLoadPVX(pvxPath);
			}
			if (!state.transientPVX)
			{
				DBG_LOGF("Transient '%s' not found via plugin or PVX", state.transient_animation_name.c_str());
				state.transient_animation.isPlaying = false;
				state.transient_animation_name.clear();
				return;
			}
		}
		syncPlaybackFPSToPVX(state.transientPVX);
		if (!state.transient_animation.totalFrames)
			state.transient_animation.totalFrames = state.transientPVX->frameData.size();

		if (now - state.transient_animation.lastFrameTime >= state.transient_animation.getFrameDuration(state.frameTiming.currentFPS))
		{
				if (++state.transient_frame_index >= state.transient_animation.totalFrames)
			{
				state.transient_animation.isPlaying = false;
				state.transient_frame_index = state.transient_animation.totalFrames - 1;
				
				if (!state.current_song.empty()) 
					xmiPlay(state.current_song, false);

				unloadTransientPVXIfLoaded();
				state.transient_animation_name.clear();
				syncPlaybackFPSToPVX(state.currentPVX);
				state.frameTiming.dirtyFrame = true; // Ensure re-render after transient

				// Refresh view to restore hotspots without restarting animation
				auto [room, view, is_static, action] = parseToken(state.current_view);
				state.view = getView(view);
				if (!state.view)
				{
					throw std::runtime_error("View not found after transient: " + view);
				}
				// Ensure animation is stopped to allow hotspot interaction
				state.animation.isPlaying = false;
				forceUpdateCursor();
			}
			else
			{
				state.transient_animation.lastFrameTime += state.transient_animation.getFrameDuration(state.frameTiming.currentFPS);
				state.frameTiming.dirtyFrame = true;
			}
		}
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
				unloadCurrentPVXIfLoaded();
				unloadTransientPVXIfLoaded();
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
	if (state.animation.isPlaying && state.currentPVX &&
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
					unloadCurrentPVXIfLoaded();
					unloadTransientPVXIfLoaded();
					state.current_room = room;
					state.previous_room = room;
					state.animation.reset();
				}
				// Unload previous PVX before loading next
				unloadCurrentPVXIfLoaded();
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

				// Unload previous sequence PVX files (if not current)
				for (size_t i = 0; i < state.animation_sequence.size() - 1; ++i)
				{
					auto [room_i, view_i, is_static_i, action_i] = parseToken(state.animation_sequence[i]);
					if (view_i != view)
						unloadPVX(view_i + ".pvx"); // Safe if not loaded
				}

				state.animation_sequence.clear();
				state.animation_queue_index = 0;
				setupView(view, true, now);
			}
		}
		else
		{
			state.animation.lastFrameTime += state.animation.getFrameDuration(state.frameTiming.currentFPS);
			state.frameTiming.dirtyFrame = true;
		}
	}
}

void maybeRenderFrame(bool force)
{
	using namespace std::chrono;

	double activeFPS = state.frameTiming.currentFPS;
	if (state.menu.enabled && pvxMenuIsOpen())
		activeFPS = static_cast<double>((std::max)(1, pvxMenuGetFPS()));

	const auto frameDuration = microseconds(static_cast<long long>(1000000.0 / activeFPS));
	const auto minDuration = microseconds(
		static_cast<long long>(1000000.0 / (std::max)(1, getDisplayRefreshRate())));
	const auto now = steady_clock::now();
	const auto elapsed = now - state.frameTiming.lastRenderTime;

	auto waitUntil = [&](auto duration) {
		const auto remaining = duration_cast<milliseconds>(duration - elapsed);
		MsgWaitForMultipleObjects(
			0, nullptr, FALSE,
			static_cast<DWORD>((std::max)(
				static_cast<long long>(remaining.count()), 0LL)),
			QS_ALLINPUT);
	};
	if (!force && state.raycast.enabled && !state.frameTiming.dirtyFrame)
	{
		// A static raycast scene has nothing to redraw. Wake frequently enough
		// for held-key simulation while letting input messages interrupt at once.
		const auto idleWait = duration_cast<milliseconds>(minDuration);
		MsgWaitForMultipleObjects(0, nullptr, FALSE,
			static_cast<DWORD>(std::max<long long>(1, idleWait.count())), QS_ALLINPUT);
		return;
	}
	if (!force && elapsed < minDuration)
	{
		waitUntil(minDuration);
		return;
	}
	if (!force && elapsed < frameDuration && !state.frameTiming.dirtyFrame)
	{
		waitUntil(frameDuration);
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
		// Dirty-frame gating can leave long idle gaps between otherwise fast
		// renders. Report renderer throughput from time actually spent rendering,
		// rather than folding those intentional idle gaps into the FPS result.
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

void init()
{
	DBG_LOG("init() entered");
	const bool startupRaycastRequested = state.raycast.enabled;
	const bool startupRaycasterAlreadyInitialized = startupRaycastRequested && state.raycast.map;
	const bool startupMenuRequested = state.menu.enabled;
	const bool playStartupIntro = !startupMenuRequested && !startupRaycasterAlreadyInitialized;
	if (startupRaycastRequested && playStartupIntro)
		state.raycast.enabled = false;
	else if (state.raycast.enabled && !state.raycast.map)
		initRaycaster();
	const bool musicEnabled = !startupRaycastRequested;
	
#ifdef _WIN32
	DBG_LOG("Setting thread priority...");
	timeBeginPeriod(1);
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_ABOVE_NORMAL);
	SetPriorityClass(GetCurrentProcess(), ABOVE_NORMAL_PRIORITY_CLASS);
	DBG_LOG("Thread priority set");
#endif
	struct RuntimeCleanup
	{
		~RuntimeCleanup()
		{
			musicShutdown();
			audioShutdown();
			pvxMenuClose();
			enginePluginsUnload();
			cleanupCursors();
			cleanupWindow();
#ifdef _WIN32
			timeEndPeriod(1);
			SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_NORMAL);
			SetPriorityClass(GetCurrentProcess(), NORMAL_PRIORITY_CLASS);
#endif
		}
	} runtimeCleanup;

	try
	{
		std::thread startupLoadThread;
		struct StartupThreadJoinGuard
		{
			std::thread &thread;
			~StartupThreadJoinGuard()
			{
				if (thread.joinable())
					thread.join();
			}
		} startupThreadJoinGuard{startupLoadThread};
		std::exception_ptr startupLoadError;
		std::string startView;
		auto joinStartupLoad = [&]() {
			if (startupLoadThread.joinable())
				startupLoadThread.join();
			if (startupLoadError)
				std::rethrow_exception(startupLoadError);
		};
		auto loadStartupContent = [&]() {
			DBG_LOG("Loading plugins...");
			enginePluginsLoad();
			DBG_LOG("Plugin loading complete");
			DBG_LOG("Building view map...");
			startView = buildViewMap();
		};

		DBG_LOG("Calling initWindow()...");
		initWindow();
		DBG_LOG("initWindow() returned successfully");
		// Intro PVX then transition to the requested startup mode.
        if (playStartupIntro)
        {
            bool startupLoadStarted = false;
            DBG_LOG("Playing intro PVX: lakeshore.pvx");
            pvxPlay("lakeshore.pvx", [&]() {
                startupLoadStarted = true;
                DBG_LOG("First intro frame presented; starting background startup load...");
                startupLoadThread = std::thread([&]() {
                    try
                    {
                        loadStartupContent();
                    }
                    catch (...)
                    {
                        startupLoadError = std::current_exception();
                    }
                });
            });
            DBG_LOG("Intro PVX finished");
            if (startupLoadStarted)
                joinStartupLoad();
            else
                loadStartupContent();
		}
		else
		{
			loadStartupContent();
		}

		if (startupRaycastRequested && !state.raycast.enabled)
		{
			DBG_LOG("Starting raycaster after intro playback...");
			state.menu.enabled = false;
			state.raycast.enabled = true;
			if (!state.raycast.map)
				initRaycaster();
			resizeContentTexture(static_cast<uint32_t>(state.ui.width), static_cast<uint32_t>(state.ui.height));
			scaleFactor = 1.0f;
#ifdef _WIN32
			while (ShowCursor(FALSE) >= 0)
				;
#endif
		}

		if (!state.current_view.empty())
		{
			DBG_LOGF("Using configured startup view override '%s'", state.current_view.c_str());
			startView = state.current_view;
		}
		DBG_LOGF("buildViewMap() returned \"%s\" (%zu views registered)",
				 startView.c_str(), view_map.size());

		if (!state.raycast.enabled && !state.menu.enabled)
		{
			if (!startView.empty())
			{
				// Direct-to-game mode: project registered views and a start point.
				// Skip menu and go straight into the game.
				DBG_LOGF("Direct-to-game mode: starting at \"%s\"", startView.c_str());
				state.current_view = startView;
				state.previous_view = "";
			}
			else
			{
			// Initialize main menu with streaming
			DBG_LOG("Initializing main menu...");
			state.menu.enabled = true;
			DBG_LOG("Opening menu.pvx for streaming...");
			if (!pvxMenuOpen("menu.pvx"))
			{
				const std::string pvxError = pvxGetLastError();
				const std::string message = pvxError.empty()
					? "Failed to open menu.pvx"
					: "Failed to open menu.pvx\n\n" + pvxError;
				MessageBoxA(nullptr, message.c_str(), "Error", MB_ICONERROR | MB_OK);
				return;
			}
			DBG_LOG("menu.pvx opened for streaming");
			const int menuFPS = (std::max)(1, pvxMenuGetFPS());
			state.menu.animation.totalFrames = 0; // Unknown in streaming mode (no startup pre-scan).
			DBG_LOGF("Menu stream opened at %d FPS", menuFPS);
			state.menu.animation.isPlaying = true;
			state.menu.animation.lastFrameTime = std::chrono::steady_clock::now();
			state.menu.currentFrameIndex = 0;
			state.frameTiming.currentFPS = static_cast<double>(menuFPS);
			
				// Zero-copy: point to decoded frame buffer. If prefetch queue is
				// temporarily empty, fall back to current decoded frame.
				state.menu.currentFrame = pvxMenuNextFrame();
				if (!state.menu.currentFrame)
					state.menu.currentFrame = pvxMenuCurrentFrame();
				d2dCtx.forceFullUpdate = true;
				vkCtx.forceFullUpdate = true;
			
			state.frameTiming.dirtyFrame = true;
			DBG_LOG("Main menu initialized");
			} // else (menu mode)
		}

		// Start the main song BEFORE viewHandler/cursors (matches v64tng)
		if (musicEnabled && !state.current_song.empty())
		{
			DBG_LOGF("Starting configured main song '%s'", state.current_song.c_str());
			xmiPlay(state.current_song, false);
			state.hasPlayedFirstSong = true;
		}

		DBG_LOG("Calling viewHandler()...");
		viewHandler();
		playConfiguredStartupPluginAudio();
		DBG_LOG("Calling maybeRenderFrame(true)...");
		maybeRenderFrame(true);
		{
			const std::string cursorAsset = state.cursorAsset.empty() ? "ROB.GJD" : state.cursorAsset;
			DBG_LOGF("Initializing cursors from '%s'", cursorAsset.c_str());
			if (!initCursors(cursorAsset, scaleFactor))
				DBG_LOG("Cursor initialization failed; falling back to system cursor");
			else
				resumeCursorTimer();
		}
		DBG_LOG("Initial render complete");
	}
	catch (const std::exception& e)
	{
		DBG_LOGF("EXCEPTION in init(): %s", e.what());
#ifdef _WIN32
		OutputDebugStringA("Phantom Engine Error: ");
		OutputDebugStringA(e.what());
		OutputDebugStringA("\n");
		MessageBoxA(nullptr, e.what(), "Phantom Engine Error", MB_ICONERROR | MB_OK);
#endif
		return;
	}
	catch (...)
	{
		DBG_LOG("UNKNOWN EXCEPTION in init()");
#ifdef _WIN32
		MessageBoxA(nullptr, "Unknown error during initialization", "Phantom Engine Error", MB_ICONERROR | MB_OK);
#endif
		return;
	}

	state.previous_room = state.current_room;
	state.ui.enabled = true;
	DBG_LOG("Entering main game loop...");

	bool running = true;
	while (running)
	{
		try
		{
			running = processEvents();
			if (!running)
				break;
			viewHandler();
			maybeRenderFrame();
		}
		catch (const std::exception& e)
		{
			DBG_LOGF("EXCEPTION in main loop: %s", e.what());
			state.animation.isPlaying = false;
			state.transient_animation.isPlaying = false;
			state.frameTiming.dirtyFrame = true;
#ifdef _WIN32
			MessageBoxA(nullptr, e.what(), "Phantom Engine Runtime Error", MB_ICONERROR | MB_OK);
#endif
			running = false;
		}
		catch (...)
		{
			DBG_LOG("UNKNOWN EXCEPTION in main loop");
			state.animation.isPlaying = false;
			state.transient_animation.isPlaying = false;
			state.frameTiming.dirtyFrame = true;
#ifdef _WIN32
			MessageBoxA(nullptr, "Unknown runtime error", "Phantom Engine Runtime Error", MB_ICONERROR | MB_OK);
#endif
			running = false;
		}
	}
	
	DBG_LOG("Main loop exited, saving config...");
	try
	{
		save_config("config.json");
	}
	catch (const std::exception& e)
	{
		DBG_LOGF("FAILED to save config on exit: %s", e.what());
#ifdef _WIN32
		MessageBoxA(nullptr, e.what(), "Phantom Engine Config Save Error", MB_ICONERROR | MB_OK);
#endif
	}

}
