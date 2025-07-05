// audio.cpp

#include <thread>
#include <chrono>
#include <algorithm>

#ifdef _WIN32
#include <windows.h>
#include <mmsystem.h>
#endif

#include "audio.h"
#include "game.h"
#include "config.h"

/*
===============================================================================
Function Name: wavPlay

Description:
    - Plays a WAV audio file using the system's audio output.

Parameters:
    - audioData: A vector containing the audio data to be played.
===============================================================================
*/
void wavPlay(const std::vector<uint8_t> &audioData)
{
    bool pcmEnabled = config.value("pcmEnabled", true);
    int pcmVolume = config.value("pcmVolume", 100);
    if (!pcmEnabled || audioData.empty())
        return;

    // Stop any currently playing PCM audio
    if (state.pcm_playing)
        wavStop();

    float volume = std::clamp(pcmVolume / 100.0f, 0.0f, 1.0f);

    std::vector<uint8_t> buffer = audioData; // Copy for playback thread

    state.pcm_playing = true;
    state.pcm_thread = std::thread([buffer = std::move(buffer), volume]() mutable
                                   {
#ifdef _WIN32
                                       // Apply volume scaling
                                       for (auto &sample : buffer)
                                       {
                                           int s = static_cast<int>(sample) - 128;
                                           s = static_cast<int>(s * volume);
                                           s = std::clamp(s + 128, 0, 255);
                                           sample = static_cast<uint8_t>(s);
                                       }

                                       WAVEFORMATEX wfx{};
                                       wfx.wFormatTag = WAVE_FORMAT_PCM;
                                       wfx.nChannels = 1;
                                       wfx.nSamplesPerSec = 22050;
                                       wfx.wBitsPerSample = 8;
                                       wfx.nBlockAlign = static_cast<WORD>(wfx.nChannels * wfx.wBitsPerSample / 8);
                                       wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;

                                       HWAVEOUT hWaveOut;
                                       if (waveOutOpen(&hWaveOut, WAVE_MAPPER, &wfx, 0, 0, CALLBACK_NULL) != MMSYSERR_NOERROR)
                                           return;

                                       WAVEHDR hdr{};
                                       hdr.lpData = reinterpret_cast<LPSTR>(buffer.data());
                                       hdr.dwBufferLength = static_cast<DWORD>(buffer.size());
                                       hdr.dwFlags = 0;

                                       if (waveOutPrepareHeader(hWaveOut, &hdr, sizeof(hdr)) != MMSYSERR_NOERROR)
                                       {
                                           waveOutClose(hWaveOut);
                                           return;
                                       }

                                       if (waveOutWrite(hWaveOut, &hdr, sizeof(hdr)) == MMSYSERR_NOERROR)
                                       {
                                           while (state.pcm_playing && !(hdr.dwFlags & WHDR_DONE))
                                               std::this_thread::sleep_for(std::chrono::milliseconds(10));
                                       }

                                       if (!state.pcm_playing)
                                           waveOutReset(hWaveOut);

                                       waveOutUnprepareHeader(hWaveOut, &hdr, sizeof(hdr));
                                       waveOutClose(hWaveOut);
#else
                                       (void)volume;
#endif
                                        state.pcm_playing = false; });
}

//
// Stops the currently playing WAV audio
//
void wavStop()
{
    state.pcm_playing = false;
    if (state.pcm_thread.joinable())
        state.pcm_thread.join();
}