// game.h

#ifndef GAME_H
#define GAME_H

#include <map>
#include <string>

/*
===============================================================================

    7th Guest - Game.h

    This header file contains the enum class and function prototype to map
    room names to RL filenames, as well as game state.

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
    GAME_ROOM,
    BEDROOM,
    MUSIC_ROOM,
    ALTAR,
    // ... other rooms or special locations
};

//
// Mapping room names to RL filenames
//
const std::map<Room, std::string> ROOM_DATA = {
    {Room::BATHROOM, "B.RL"},
    {Room::CHAPEL, "CH.RL"},
    {Room::DINING_ROOM, "DR.RL"},
    {Room::FOYER_HALLWAY, "FH.RL"},
    {Room::KITCHEN, "K.RL"},
    {Room::LIBRARY, "LI.RL"},
    // Add more rooms here
};

//
// Hotspot structure defining clickable areas
//
struct Hotspot {
    int x;
    int y;
    int width;
    int height;
};

//
// Struct for managing game state
//
struct GameState {
    Room current_room = Room::FOYER_HALLWAY;        // Default room (corresponds to ROOM_DATA map key)
    Room previous_room = current_room;              // Avoid re-loading
    std::string current_view = "f_1bc";		        // Default view (corresponds to VDXFile .filename struct member)
    std::string previous_view = current_view;       // Avoid re-rendering
};

// Function prototypes
void updateGame(GameState& state);
void run();

#endif // GAME_H