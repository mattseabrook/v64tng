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

enum class Room
{
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

const std::map<Room, std::string> ROOM_DATA = {
    {Room::BATHROOM, "B.RL"},
    {Room::CHAPEL, "CH.RL"},
    {Room::DINING_ROOM, "DR.RL"},
    {Room::FOYER_HALLWAY, "FH.RL"},
    {Room::KITCHEN, "K.RL"},
    {Room::LIBRARY, "LI.RL"},
    // Add more rooms here
};

std::string getRoomRLFilename(Room room);
void updateGame(Room& current_room);
void run();

#endif // GAME_H