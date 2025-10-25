// basement.h

#ifndef BASEMENT_H
#define BASEMENT_H

#include <cstdint>
#include <vector>

// Global basement maze map (treated as read-only at usage sites)
extern std::vector<std::vector<uint8_t>> map;

#endif // BASEMENT_H