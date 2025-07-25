// game.h

#ifndef GAME_H
#define GAME_H

#include <map>
#include <functional>
#include <string>
#include <chrono>
#include <vector>
#include <thread>

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
		return std::chrono::microseconds(static_cast<long long>(1000000.0 / currentFPS));
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
	uint8_t cursorType = CURSOR_FORWARD;
	int z_index = 0;
};

//
// Hotspot structure defining clickable areas
//
struct Hotspot
{
	ClickArea area;
	std::function<void()> action;
};

//
// Navigation points for moving between views
//
struct Navigation
{
	ClickArea area;
	std::string next_view;
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
//		Struct for managing game state
///////////////////////////////////////////////////////////////////////////////
struct GameState
{
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
	std::string previous_view = "f_1bc;static"; // Avoid re-rendering

	//
	// 2D & FMV Graphics
	//
	VDXFile *currentVDX = nullptr;		  // Pointer to current VDXFile object
	size_t currentFrameIndex = 30;		  // Normally 0 - hard-coded to 30 for testing
	AnimationState animation;			  // Animation state management
	std::string transient_animation_name; // e.g., "dr_r"
	AnimationState transient_animation;	  // Playback state for transient
	size_t transient_frame_index = 0;	  // Current frame of transient
	VDXFile *transientVDX = nullptr;	  // Pointer to transient VDXFile object

	std::vector<std::string> animation_sequence; // Stores the sequence of animations
	size_t animation_queue_index = 0;			 // Current position in the animation sequence
	std::function<void()> pending_action;		 // Optional action after the current animation

	const View *view; // Current view object

	//
	// Rendering state
	//
	std::chrono::steady_clock::time_point lastRenderTime{};
	bool dirtyFrame = true;
	double currentFPS = 24.0; // Current target FPS, adjustable during gameplay

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
		std::vector<std::vector<uint8_t>> *map = nullptr; // Current map data
	} raycast;

	//
	// Music
	//
	std::string current_song;								// Name of the currently playing song (e.g., "gu39")
	std::string transient_song;								// Transient song (if any)
	double main_song_position = 0.0;						// Position to resume from
	std::string music_mode;									// Playback mode: "opl2", "dual_opl2", "opl3"
	int midi_bank = 0;										// ADLMIDI built-in bank index
	std::thread music_thread;								// Thread for non-blocking music playback
	bool music_playing = false;								// Flag to indicate if music is playing
	bool hasPlayedFirstSong = false;						// Tracks if any song has played yet
	bool is_transient_playing = false;						// Flag to check if transient is active
	float music_volume = 1.0f;								// Volume (0.0 to 1.0)
	std::vector<std::pair<std::string, double>> song_stack; // Previous songs

	//
	// PCM Audio
	//
	std::thread pcm_thread;	  // Thread for PCM playback
	bool pcm_playing = false; // Flag to indicate PCM status
#ifdef _WIN32
	HWAVEOUT pcm_handle = NULL; // Handle to currently playing device
#endif
};

//=============================================================================

extern GameState state;

//=============================================================================

// Function prototypes
const View *getView(const std::string &current_view);
void buildViewMap();
void viewHandler();
void maybeRenderFrame(bool force = false);
void init();

#endif // GAME_H