// basement.h

#ifndef BASEMENT_H
#define BASEMENT_H

#include <cstdint>
#include <array>

// Basement maze map dimensions
inline constexpr int MAP_ROWS = 109;
inline constexpr int MAP_COLS = 59;

// Tile map type: fixed-size constexpr array (read-only map data, lives in .rodata)
using TileMap = std::array<std::array<uint8_t, MAP_COLS>, MAP_ROWS>;

// Global basement maze map (immutable)
extern const TileMap map;

#endif // BASEMENT_H