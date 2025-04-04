// xmi.h

#ifndef XMI_H
#define XMI_H

#include <string>

#include "rl.h"

/*
===============================================================================

    7th Guest - Extended MIDI (XMI) Engine

    Extracts or Plays XMI data converted to MIDI

===============================================================================
*/

std::vector<uint8_t> xmiConverter(const RLEntry& song);
void PlayMIDI(const std::vector<uint8_t>& midiData, bool isTransient = false);
void xmiPlay(const std::string& songName, bool isTransient = false);

#endif