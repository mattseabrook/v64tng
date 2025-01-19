// game.h

#ifndef GAME_H
#define GAME_H

#include <map>
#include <functional>
#include <string>

#include "vdx.h"
#include "config.h"
#include "window.h"

/*
===============================================================================

	7th Guest - Game.h

	This header file defines the Game Engine Feature:

		- Enum for room names
		- Mapping room names to RL filenames
		- Hotspot structure defining clickable areas
		- Navigation points for moving between views
		- View structure for each camera/viewpoint
		- Struct for managing game state

===============================================================================
*/

//
// Enum for room names
//
enum class Room {
	BATHROOM,
	CHAPEL,
	DINING_ROOM,
	FOYER_HALLWAY,
	KITCHEN,
	LIBRARY,
	LABORATORY,
	MUSIC_ROOM,
	// ... need to add more rooms
};

//
// Mapping room names to RL filenames
//
inline const std::map<Room, std::string> ROOM_DATA = {
	{Room::BATHROOM, "B.RL"},
	{Room::CHAPEL, "CH.RL"},
	{Room::DINING_ROOM, "DR.RL"},
	{Room::FOYER_HALLWAY, "FH.RL"},
	{Room::KITCHEN, "K.RL"},
	{Room::LIBRARY, "LI.RL"},
	{Room::LABORATORY, "LA.RL"},
	{Room::MUSIC_ROOM, "MU.RL"},
	// Add more rooms here
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
};

//
// Navigation points for moving between views
//
struct Navigation {
	std::string next_view;
	Hotspot hotspot;
};

//
// View structure for each camera/viewpoint
//
struct View {
	std::vector<Hotspot> hotspots;
	std::vector<Navigation> navigations;
};

//
// Struct for managing game state
//
struct GameState {
	struct {
		bool enabled = false;
		int width = 0;
		int height = 0;
		std::vector<DisplayInfo> displays;
		int x = 0;
		int y = 0;
	} ui;

	std::vector<VDXFile> VDXFiles;				    // Vector of VDXFile objects
	size_t currentFrameIndex = 30;				    // Normally 0 - hard-coded to 30 for testing
	VDXFile* currentVDX = nullptr;				    // Reference to current VDXFile object

	Room current_room = Room::FOYER_HALLWAY;        // Default room (corresponds to ROOM_DATA map key)
	Room previous_room = current_room;              // Avoid re-loading
	std::string current_view = "f_1bc";		        // Default view (corresponds to VDXFile .filename struct member)
	std::string previous_view = current_view;       // Avoid re-rendering
};

//=============================================================================

extern GameState state;

//=============================================================================

// Function prototypes
const View* getView(const std::string& current_view);
void loadRoom();
void loadView();
void init();

#endif // GAME_H