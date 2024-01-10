// game.cpp

#include <iostream>

#include "game.h"

// Map of room to RL filename
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

/* ============================================================================
								  gameLoop

   Description:
	 TBD

   ============================================================================
*/
void gameLoop()
{
	Room current_room = Room::FOYER_HALLWAY;

	//...
}