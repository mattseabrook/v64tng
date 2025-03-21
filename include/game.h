// game.h

#ifndef GAME_H
#define GAME_H

#include <map>
#include <functional>
#include <string>
#include <chrono>
#include <vector>
#include <thread>

#include "vdx.h"
#include "config.h"
#include "window.h"

/*
===============================================================================

	This header file defines the Game Engine Feature:

		- Enum for room names
		- Mapping room names to RL filenames
		- Hotspot structure defining clickable areas
		- Navigation points for moving between views
		- View structure for each camera/viewpoint
		- Struct for managing game state
		- State-driven animation / FPS is controlled in the GameState struct

===============================================================================
*/

//
// Animation state structure
//
struct AnimationState {
	bool isPlaying = false;
	std::chrono::steady_clock::time_point lastFrameTime;
	size_t totalFrames = 0;

	void reset() {
		isPlaying = false;
		totalFrames = 0;
	}

	std::chrono::microseconds getFrameDuration(double currentFPS) const {
		return std::chrono::microseconds(static_cast<long long>(1000000.0 / currentFPS));
	}
};

//
// Hotspot structure defining clickable areas
//
struct Hotspot {
	float x;
	float y;
	float width;
	float height;
	std::function<void()> action;
	int z_index = 0;
};

//
// Navigation points for moving between views
//
struct Navigation {
	std::string next_view;
	Hotspot hotspot;
	int z_index = 0;
};

//
// View structure for each camera/viewpoint
//
struct View {
	std::vector<Hotspot> hotspots;
	std::vector<Navigation> navigations;
};

///////////////////////////////////////////////////////////////////////////////
//		Struct for managing game state
///////////////////////////////////////////////////////////////////////////////
struct GameState {
	//
	// UI
	//
	struct {
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
	std::string current_room = "FH";		        // Default room (corresponds to RL/GJD file set)
	std::string previous_room;	                    // Avoid re-rendering
	std::string current_view = "f_1bc;static";	    // Default view (corresponds to VDXFile .filename struct member)
	std::string previous_view = "f_1bc;static";	    // Avoid re-rendering

	//
	// Graphics
	//
	double currentFPS = 24.0;						// Current target FPS, adjustable during gameplay
	std::vector<VDXFile> VDXFiles;				    // Vector of VDXFile objects
	size_t currentFrameIndex = 30;				    // Normally 0 - hard-coded to 30 for testing
	VDXFile* currentVDX = nullptr;				    // Reference to current VDXFile object
	AnimationState animation;						// Animation state management
	std::string transient_animation_name;           // e.g., "dr_r"
	AnimationState transient_animation;             // Playback state for transient
	size_t transient_frame_index = 0;               // Current frame of transient

	std::vector<std::string> animation_sequence;    // Stores the sequence of animations
	size_t animation_queue_index = 0;               // Current position in the animation sequence

	View view;										// Current view object

	//
	// Music
	//
	std::string current_song;                       // Name of the currently playing song (e.g., "gu39")
	std::string transient_song;						// Transient song (if any)
	double main_song_position = 0.0;				// Position to resume from
	std::string music_mode;						    // Playback mode: "opl2", "dual_opl2", "opl3"
	std::thread music_thread;                       // Thread for non-blocking music playback
	bool music_playing = false;                     // Flag to indicate if music is playing
	bool hasPlayedFirstSong = false;				// Tracks if any song has played yet
	bool is_transient_playing = false;				// Flag to check if transient is active
	float music_volume = 1.0f;                      // Volume (0.0 to 1.0)
};

//=============================================================================

extern GameState state;

//=============================================================================

// Function prototypes
const View* getView(const std::string& current_view);
void loadView();
void updateAnimation();
void playTransientAnimation(const std::string& animation_name);
void init();

#endif // GAME_H