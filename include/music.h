// music.h

#ifndef MUSIC_H
#define MUSIC_H

#include <string>

#include "rl.h"

/*
===============================================================================

    7th Guest - Extended MIDI (XMI) Engine

    Extracts or Plays XMI data converted to MIDI

===============================================================================
*/

// Function prototypes
std::vector<uint8_t> xmiConverter(const RLEntry &song);
void PlayMIDI(const std::vector<uint8_t> &midiData, bool isTransient = false);
void xmiPlay(const std::string &songName, bool isTransient = false);
void log_midi_events(std::ofstream &log_file, const std::vector<uint8_t> &data, const std::string &prefix);

#endif // MUSIC_H