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
#include <cmath>
#include <mutex>

#ifdef _WIN32
#include <windows.h>
#include <mmeapi.h>
#include <timeapi.h>
#endif

#include "pvx.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "plugin_api.h"

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

//
// Structure that defines clickable areas
//
struct ClickArea
{
	float x;
	float y;
	float width;
	float height;
	int cursor_type = 0;
	int z_index = 0;
};

//
// Hotspot structure defining clickable areas
//
struct Hotspot
{
	ClickArea area;
	std::function<void()> action;
	Hotspot() = default;
	Hotspot(ClickArea a, std::function<void()> act) : area(a), action(std::move(act)) {}
};

//
// Navigation points for moving between views
//
struct Navigation
{
	ClickArea area;
	std::string next_view;
	Navigation() = default;
	Navigation(ClickArea a, std::string nv) : area(a), next_view(std::move(nv)) {}
};

//
// View structure for each camera/viewpoint
//
struct View
{
	std::vector<Hotspot> hotspots;
	std::vector<Navigation> navigations;
};

//
// Structure for grouping views together
//
struct ViewGroup
{
	std::vector<const char *> names; // e.g., {"f_1bb", "f_1fa"}
	View data;
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
	// Render mode selection (CPU SIMD vs GPU compute), with Auto heuristic
	enum class RenderMode
	{
		Auto = 0,
		CPU,
		GPU
	};

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
	struct UIState
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
	std::string current_room;		// Current room identifier
	std::string previous_room;		// Previous room for change detection
	std::string current_view;		// Current view identifier
	std::string previous_view;		// Previous view for change detection
	std::string cursorAsset;		// Optional project-provided cursor archive/resource

	//
	// 2D & FMV Graphics
	//
	PVXFile *currentPVX = nullptr;		  // Now points to PVXFile
	size_t currentFrameIndex = 0;		  // Current frame in currentPVX
	AnimationState animation;			  // Animation state management
	std::string transient_animation_name; // e.g., "dr_r"
	AnimationState transient_animation;	  // Playback state for transient
	size_t transient_frame_index = 0;	  // Current frame of transient
	PVXFile *transientPVX = nullptr;	  // Transient PVX

	std::vector<std::string> animation_sequence; // Stores the sequence of animations
	size_t animation_queue_index = 0;			 // Current position in the animation sequence
	std::function<void()> pending_action;		 // Optional action after the current animation

	const View *view = nullptr; // Current view object

	//
	// Rendering state (using FrameTiming struct for cache locality)
	//
	FrameTiming frameTiming;

	// Selected SIMD level for conversion paths
	SIMDLevel simd = SIMDLevel::Scalar;

	// Selected render mode (defaults populated from config)
	RenderMode renderMode = RenderMode::Auto;

	//
	// Main Menu
	//
	struct
	{
		bool enabled = false;
		const std::vector<uint8_t>* currentFrame = nullptr; // Zero-copy pointer to decoded frame
		size_t currentFrameIndex = 0;	   // Current frame in menu animation
		AnimationState animation;		   // Menu background animation state
		int selectedItem = 0;			   // 0=NEW GAME, 1=MULTIPLAYER, 2=OPTIONS, 3=EXIT
		bool itemClicked = false;		   // Track if an item was clicked
	} menu;

	//
	// Raycasting
	//
	struct
	{
		bool enabled = false;
		bool useMegatexture = false;
		bool showMapOverlay = false;
		float mapOverlayZoom = 4.0f;  // 1.0 = fit whole map, higher = zoomed in
		std::vector<uint8_t> exploredMap; // fog of war (1 = explored, 0 = hidden)
		uint64_t mapRevision = 0;
		uint64_t exploredRevision = 0;
		bool mapPropertiesValid = false;
		bool mapHasArchitecturalFeatures = false;
		bool mapHasSolidBlackWalls = false;
		std::vector<RaycastModelInstance> models;
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
	double main_song_position = 0.0;						// Position to resume from
	std::string music_mode;									// Playback mode: "opl", "general", "wavetable"
	std::string soundfont_path;							// Project-provided SF2 path for wavetable mode
	int midi_bank = 0;										// ADLMIDI built-in bank index
	std::thread music_thread;								// Thread for non-blocking music playback
	std::atomic<bool> music_playing{false};					// Flag to indicate if music is playing
	bool hasPlayedFirstSong = false;						// Tracks if any song has played yet
	bool is_transient_playing = false;						// Flag to check if transient is active
	float music_volume = 1.0f;								// Volume (0.0 to 1.0)
	std::vector<std::pair<std::string, double>> song_stack; // Previous songs

	//
	// PCM Audio
	//
	std::thread pcm_thread;	  // Thread for PCM playback
	std::atomic<bool> pcm_playing{false}; // Flag to indicate PCM status
#ifdef _WIN32
	HWAVEOUT pcm_handle = NULL; // Handle to currently playing device
#endif

	//
	// Plugin Integration
	// When a plugin DLL is loaded, pluginPVX acts as a PVXFile-shaped
	// container so the renderers can consume plugin frames through the
	// same state.currentPVX path without any render-side changes.
	//
	PVXFile pluginPVX;                   // Plugin frames live here
	std::vector<uint8_t> pluginRGBBuf;   // Scratch buffer for ExtractFrame
	PVXFile transientPluginPVX;          // Transient plugin frames live here
};

//=============================================================================

extern GameState state;

//=============================================================================

// Resolution-tier thresholds shared by every backend that scales quality with
// pixel count (d2d.cpp, raycast.cpp, vulkan.cpp). Pixel counts, not widths, are
// what each call site actually compares against.
inline constexpr uint64_t kPixelCount1080p = 1920ull * 1080ull;
inline constexpr uint64_t kPixelCount720p  = 1280ull * 720ull;

//=============================================================================

// Thread-safe cache for the "resolve once based on detected SIMD level, then
// call through a raw function pointer" pattern used throughout the hot pixel
// paths (pvx.cpp, render.cpp). The naive version of this pattern caches into a
// plain `static FnPtr s_fn = nullptr;` with no synchronization: if two threads
// race on the first call, both write the pointer concurrently, which is
// benign in practice on x86 (same value, word-sized store) but is a data race
// under the C++ memory model. This collapses every such cache into one place
// so the synchronization only has to be gotten right once.
//
// Fast path (cache hit, the overwhelmingly common case) is a single acquire
// load plus a relaxed load -- no lock. The mutex is only taken to resolve the
// pointer for the first time, or to re-resolve if `level` differs from what
// was last cached (state.simd can change at runtime, e.g. a debug SIMD
// override).
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

// Function prototypes
const View *getView(std::string_view current_view);
void registerView(const char *name, const View *view);
std::string buildViewMap(); // Populate view_map; return starting view ("" = menu)
void viewHandler();
void maybeRenderFrame(bool force = false);
void init();

#endif // GAME_H
