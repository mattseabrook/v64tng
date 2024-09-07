// game.cpp

#include <iostream>

#include "game.h"
#include "window.h"
#include "gjd.h"

/* ============================================================================
							Game Engine Feature

   Description:
	 - TBD
	 - run() is the main entrypoint for the game engine feature.

   ============================================================================
*/

//
// Map room names to RL filenames
//
std::string getRoomRLFilename(Room room)
{
	auto it = ROOM_DATA.find(room);
	if (it != ROOM_DATA.end())
	{
		return it->second;
	}
	else
	{
		throw std::runtime_error("Invalid room");
	}
}

//
// State update function
//
void updateGame(Room& current_room)
{
	//...
}

//
// Start the game engine
//
void run() {
	initializeRenderer();						// Initialize the renderer (Vulkan + window)

	Room current_room = Room::FOYER_HALLWAY;	// Default location until we have a feature for loading saved games

	std::vector<VDXFile> VDXFiles = parseGJDFile(getRoomRLFilename(current_room));
	for (auto& VDXFile : VDXFiles) {
		parseVDXChunks(VDXFile);
	}

	// Main game loop
	while (!windowShouldClose()) {
		//handleInput();						// Your game input handling (Placeholder)
		updateGame(current_room);				// Game logic updates (movement, AI, etc.)

		// Rendering and event polling
		renderFrame();
		pollWindowEvents();
	}

	// Cleanup 
	cleanup();									// Vulkan resources
}