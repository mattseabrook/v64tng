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
#include "cursor.h"
#include "window.h"
#include "raycast.h"

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
// Single animation system - handles all VDX playback
//
struct Animation
{
	bool playing = false;
	std::chrono::steady_clock::time_point lastFrame;
	size_t frameCount = 0;
	size_t currentFrame = 0;
	bool hasView = false; // true = use view data, false = standalone
	
	void stop() { playing = false; frameCount = 0; currentFrame = 0; }
	std::chrono::microseconds frameDuration(double fps) const 
	{ 
		return std::chrono::microseconds(static_cast<long long>(1000000.0 / fps)); 
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
	std::vector<VDXFile> VDXFiles;		  // Vector of VDXFile objects
	VDXFile *currentVDX = nullptr;		  // Reference to current VDXFile object
	Animation anim;						  // Single animation system
	std::vector<std::string> viewQueue;   // Queue of views to play
	size_t queueIndex = 0;				  // Current position in queue
	const View *view = nullptr;			  // Current view object (null for standalone)

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
};

//=============================================================================

extern GameState state;

//=============================================================================

// Function prototypes
const View *getView(const std::string &current_view);
void buildViewMap();
void loadView();
void updateAnimation();
void playAnimation(const std::string &name, bool standalone = false);
void PlayVDX(const std::string &filename);
void maybeRenderFrame(bool force = false);
void init();

#endif // GAME_H