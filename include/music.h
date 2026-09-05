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

// Music system lifecycle
void musicInit();
void musicShutdown();
void musicBeginPrepared();
[[nodiscard]] bool musicPreparedStarted();
void musicWaitPreparedStarted();
void musicStartPrepared();
// Signal-only stop for the WM_CLOSE path: wakes every backend wait loop and
// silences General MIDI without joining workers inside the window procedure.
// musicShutdown() performs the joins once the message loop has unwound.
void musicRequestStop();
void musicStop();
constexpr float kMainMenuMusicGain = 1.00f;
constexpr float kGameplayMusicGain = 0.80f;
// Absolute music level while gameplay PCM is active; menus never duck.
constexpr float kVdxDialogueMusicGain = 0.35f;
[[nodiscard]] float musicPlaybackVolume();
void setGameplayMusicMix(bool gameplay);
void setVdxDialogueMusicDuck(bool active);

// Function prototypes
std::vector<uint8_t> xmiConverter(const RLEntry &song);
void PlayMIDI(const std::vector<uint8_t> &midiData, bool isTransient = false);
void xmiPlay(
	const std::string &songName,
	bool isTransient = false,
	bool loop = false);
void xmiPrepare(
	const std::string &songName,
	bool isTransient = false,
	bool loop = false,
	bool synchronizeAtStart = true);
void pushMainSong(const std::string &songName);
void popMainSong();
void applyMusicRuntimeSettings();

#endif // MUSIC_H
