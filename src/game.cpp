// game.cpp

#include <iostream>

#include "game.h"
#include "window.h"
#include "gjd.h"
#include "fh.h"

//
// View Prefixes
//
const std::unordered_map<std::string_view, const std::unordered_map<std::string, View>*> viewPrefixes = {
    { "f_", &f_ },      // Foyer sequences
    // ...
};

/* ============================================================================
                            Game Engine Feature
   ============================================================================
*/

//
// State update function
//
void updateGame(GameState& state)
{
    if (state.current_room != state.previous_room) {
        std::vector<VDXFile> VDXFiles = parseGJDFile(ROOM_DATA.at(state.current_room));
        for (auto& VDXFile : VDXFiles) {
            parseVDXChunks(VDXFile);
        }
        state.previous_room = state.current_room;
    }

    // ...
}

//
// Start the game engine
//
void run() {
    initializeRenderer();

    GameState state;

    // Main game loop
    while (!windowShouldClose()) {
        //handleInput();       
        updateGame(state);

        // Rendering and event polling
        renderFrame();
        pollWindowEvents();
    }

    // Cleanup 
    cleanup();  // Vulkan resources
}