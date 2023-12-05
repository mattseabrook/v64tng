// xmi.h

#ifndef XMI_H
#define XMI_H

#include <string>

/*
===============================================================================

    7th Guest - Extended MIDI (XMI) Engine

    Extracts or Plays XMI data converted to MIDI

===============================================================================
*/

std::vector<uint8_t> xmiConverter(const std::string_view& song);
void PlayMIDI(const std::vector<uint8_t>& midiData);

#endif