// music.h

#pragma once

#include <string>
#include <vector>

void musicInit();
void musicShutdown();
void PlayMIDI(const std::vector<uint8_t> &midiData, bool isTransient = false);
void xmiPlay(const std::string &songName, bool isTransient = false);
void pushMainSong(const std::string &songName);
void popMainSong();
void applyMusicRuntimeSettings();
