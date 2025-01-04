// window.h

#ifndef WINDOW_H
#define WINDOW_H

#include <vector>

void initializeWindow();
void renderFrame(const std::vector<uint8_t>& frameData);
bool processEvents();
void cleanupWindow();

#endif // WINDOW_H