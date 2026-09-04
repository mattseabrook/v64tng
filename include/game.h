// game.h

#ifndef GAME_H
#define GAME_H

#include <map>
#include <functional>
#include <string>
#include <string_view>
#include <chrono>
#include <vector>
#include <thread>
#include <atomic>
#include <memory>
#include <cmath>
#include <mutex>
#include <span>

#ifdef _WIN32
#include <windows.h>
#include <mmeapi.h>
#endif

#include "vdx.h"
#include "config.h"
#include "cursor.h"
#include "window.h"
#include "raycast.h"

/*
===============================================================================

	This header file defines the Game Engine Feature

===============================================================================
*/

//
// Animation state structure
//
struct AnimationState
{
	bool isPlaying = false;
	std::chrono::steady_clock::time_point lastFrameTime;
	size_t totalFrames = 0;

	void reset()
	{
		isPlaying = false;
		totalFrames = 0;
	}

	std::chrono::microseconds getFrameDuration(double currentFPS) const
	{
		if (!std::isfinite(currentFPS) || currentFPS <= 0.0)
			currentFPS = 24.0;

		const double frameMicros = 1000000.0 / currentFPS;
		if (!std::isfinite(frameMicros) || frameMicros < 1.0)
			return std::chrono::microseconds(1);

		const auto maxMicros = std::chrono::microseconds::max().count();
		if (frameMicros >= static_cast<double>(maxMicros))
			return std::chrono::microseconds::max();

		return std::chrono::microseconds(static_cast<std::chrono::microseconds::rep>(frameMicros));
	}
};

///////////////////////////////////////////////////////////////////////////////
//     Per-frame timing state kept hot in cache
///////////////////////////////////////////////////////////////////////////////
struct FrameTiming
{
	std::chrono::steady_clock::time_point lastRenderTime{};
	std::chrono::steady_clock::time_point fpsWindowStart{};
	bool dirtyFrame = true;
	double currentFPS = 24.0;
	double measuredFPS = 0.0;
	double measuredRenderSeconds = 0.0;
	uint32_t measuredFrameCount = 0;
};

///////////////////////////////////////////////////////////////////////////////
//		Struct for managing game state
///////////////////////////////////////////////////////////////////////////////
struct GameState
{
	//
	// SIMD selection for hot-path pixel conversion
	//
	enum class SIMDLevel
	{
		Scalar = 0,
		SSE2,
		SSSE3,
		AVX2
	};

	//
	// UI
	//
	struct
	{
		bool enabled = false;
		int width = 0;
		int height = 0;
		std::vector<DisplayInfo> displays;
		int x = 0;
		int y = 0;
	} ui;

	//
	// Assets
	//
	std::string current_room = "FH";			// Default room (corresponds to RL/GJD file set)
	std::string previous_room;					// Avoid re-rendering
	std::string current_view = "f_1bc;static";	// Default view (corresponds to VDXFile .filename struct member)
	std::string previous_view = ""; 			// Avoid re-rendering (empty to force initial setup)

	//
	// 2D & FMV Graphics
	//
	std::unique_ptr<VDXFile> currentVDX;  // Owning pointer to current VDXFile object
	size_t currentFrameIndex = 0;
	AnimationState animation;			  // Animation state management
	std::string transient_animation_name; // e.g., "dr_r"
	AnimationState transient_animation;	  // Playback state for transient
	size_t transient_frame_index = 0;	  // Current frame of transient
	std::unique_ptr<VDXFile> transientVDX; // Owning pointer to transient VDXFile (loaded independently of currentVDX)

	// GRV logic retains the original 640x480 foreground coordinate space, but
	// v64tng presents only its 640x320 y=80..399 cinematic band. The discarded
	// bars must never dictate the host texture, window aspect, or pointer map.
	std::vector<uint8_t> grvBackgroundFrame;
	std::vector<uint8_t> grvBackgroundIndices;
	std::array<RGBColor, 256> grvPalette{};
	std::vector<uint8_t> grvForegroundIndices;
	std::vector<uint8_t> grvForegroundFrame;
	std::vector<uint8_t> composedPresentationFrame;
	bool grvForegroundActive = false;

	std::vector<std::string> animation_sequence; // Stores the sequence of animations
	size_t animation_queue_index = 0;			 // Current position in the animation sequence
	std::function<void()> pending_action;		 // Optional action after the current animation

	//
	// Boot main menu (sphinx.vdx from INTRO.GJD, held on its last frame)
	//
	struct
	{
		bool active = false;	  // True while the boot main menu is displayed
		std::string cheatBuffer;  // Rolling buffer for typed cheat codes
	} mainMenu;
	bool introSequencePlaying = false; // New Game transition through foyer handoff

	//
	// Rendering state (moved hot fields into FrameTiming)
	//
	FrameTiming frameTiming;

	// Selected SIMD level for conversion paths
	SIMDLevel simd = SIMDLevel::Scalar;

	//
	// Raycasting
	//
	struct
	{
		bool enabled = false;
		RaycastPlayer player = {
			0.0f, 0.0f,		// Starting position
			0.0f,			// Initial angle
			deg2rad(90.0f), // Field of view (in radians)
			0.2f,			// Walk speed
			0.4f			// Run speed
		};
		const TileMap *map = nullptr; // Current map data (read-only)
	} raycast;

	//
	// Music
	//
	std::string current_song;								// Name of the currently playing song (e.g., "gu39")
	std::string transient_song;								// Transient song (if any)
	std::atomic<double> main_song_position{0.0};				// Position to resume from (cross-thread)
	std::string music_mode;									// Playback mode: "opl2", "dual_opl2", "opl3", "general", "wavetable"
	std::string soundfont_path;								// Path to SF2 soundfont (for wavetable mode)
	int midi_bank = 0;										// ADLMIDI built-in bank index
	std::thread music_thread;								// Thread for non-blocking music playback
	std::atomic<bool> music_playing{false};					// Flag to indicate if music is playing (cross-thread)
	std::atomic<bool> hasPlayedFirstSong{false};				// Tracks if any song has played yet (cross-thread)
	bool is_transient_playing = false;						// Flag to check if transient is active
	std::atomic<float> music_volume{1.0f};					// Volume (0.0 to 1.0) (cross-thread)
	std::vector<std::pair<std::string, double>> song_stack; // Previous songs

	//
	// PCM Audio
	//
	std::thread pcm_thread;	  // Thread for PCM playback
	std::atomic<bool> pcm_playing{false}; // Flag to indicate PCM status (atomic: accessed from audio thread)
#ifdef _WIN32
	HWAVEOUT pcm_handle = NULL; // Handle to currently playing device
#endif
};

//=============================================================================

extern GameState state;

//=============================================================================

inline constexpr uint64_t kPixelCount1080p = 1920ull * 1080ull;
inline constexpr uint64_t kPixelCount720p  = 1280ull * 720ull;

// Thread-safe "resolve once per detected SIMD level" cache used by hot pixel
// paths. The common cache-hit path is lock-free.
template <typename Fn>
class SimdDispatchCache
{
public:
	template <typename Resolver>
	Fn get(GameState::SIMDLevel level, Resolver&& resolve)
	{
		Fn cached = cachedFn_.load(std::memory_order_acquire);
		if (cached && cachedLevel_.load(std::memory_order_relaxed) == level) [[likely]]
			return cached;

		std::lock_guard<std::mutex> lock(mutex_);
		cached = cachedFn_.load(std::memory_order_relaxed);
		if (!cached || cachedLevel_.load(std::memory_order_relaxed) != level)
		{
			cached = resolve(level);
			cachedLevel_.store(level, std::memory_order_relaxed);
			cachedFn_.store(cached, std::memory_order_release);
		}
		return cached;
	}

private:
	std::mutex mutex_;
	std::atomic<Fn> cachedFn_{nullptr};
	std::atomic<GameState::SIMDLevel> cachedLevel_{GameState::SIMDLevel::Scalar};
};

//=============================================================================

// Function prototypes
void viewHandler();
void maybeRenderFrame(bool force = false);
std::span<const uint8_t> presentationPixels(const VDXFile *vdx, size_t frameIndex);
void startNewGame();
void grvKeyInput(char c);
bool initializeGrvMainMenu();
bool grvInputActive();
bool grvPointerClick(int x, int y);
uint8_t grvPointerCursor(int x, int y);
bool grvEscapeAction();
void init();

#endif // GAME_H
