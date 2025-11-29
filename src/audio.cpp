// audio.cpp

#include <thread>
#include <chrono>
#include <algorithm>
#include <span>
#include <atomic>
#include <condition_variable>
#include <mutex>

#ifdef _WIN32
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <mmsystem.h>
#endif

#include "audio.h"
#include "game.h"
#include "config.h"

// Atomic flag for thread-safe stop signaling
static std::atomic<bool> g_audioStopRequested{false};

// Synchronization for A/V sync - audio signals when playback actually starts
static std::mutex g_audioStartMutex;
static std::condition_variable g_audioStartCV;
static std::atomic<bool> g_audioStarted{false};

/*
===============================================================================
Function Name: wavPlay

Description:
    - Plays a WAV audio file using the system's audio output.

Parameters:
    - audioData: A span containing the audio data to be played.
===============================================================================
*/
void wavPlay(std::span<const uint8_t> audioData)
{
    bool pcmEnabled = config.value("pcmEnabled", true);
    int pcmVolume = config.value("pcmVolume", 100);
    if (!pcmEnabled || audioData.empty())
        return;

    // Stop any currently playing PCM audio
    if (state.pcm_playing)
        wavStop();

    float volume = std::clamp(pcmVolume / 100.0f, 0.0f, 1.0f);

    // Pre-process volume scaling BEFORE spawning thread for better A/V sync
    // This ensures audio starts immediately when thread runs
    std::vector<uint8_t> buffer(audioData.size());
    for (size_t i = 0; i < audioData.size(); ++i)
    {
        int s = static_cast<int>(audioData[i]) - 128;
        s = static_cast<int>(static_cast<float>(s) * volume);
        s = std::clamp(s + 128, 0, 255);
        buffer[i] = static_cast<uint8_t>(s);
    }

    g_audioStopRequested.store(false, std::memory_order_release);
    g_audioStarted.store(false, std::memory_order_release);
    state.pcm_playing = true;
    
    state.pcm_thread = std::thread([buffer = std::move(buffer)]() mutable
                                   {
#ifdef _WIN32
                                       WAVEFORMATEX wfx{};
                                       wfx.wFormatTag = WAVE_FORMAT_PCM;
                                       wfx.nChannels = 1;
                                       wfx.nSamplesPerSec = 22050;
                                       wfx.wBitsPerSample = 8;
                                       wfx.nBlockAlign = static_cast<WORD>(wfx.nChannels * wfx.wBitsPerSample / 8);
                                       wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;

                                       HWAVEOUT hWaveOut = nullptr;
                                       if (waveOutOpen(&hWaveOut, WAVE_MAPPER, &wfx, 0, 0, CALLBACK_NULL) != MMSYSERR_NOERROR)
                                       {
                                           state.pcm_playing = false;
                                           // Signal start even on failure so caller doesn't block forever
                                           g_audioStarted.store(true, std::memory_order_release);
                                           g_audioStartCV.notify_one();
                                           return;
                                       }

                                       state.pcm_handle = hWaveOut;
                                       
                                       WAVEHDR hdr{};
                                       hdr.lpData = reinterpret_cast<LPSTR>(buffer.data());
                                       hdr.dwBufferLength = static_cast<DWORD>(buffer.size());
                                       hdr.dwFlags = 0;

                                       if (waveOutPrepareHeader(hWaveOut, &hdr, sizeof(hdr)) != MMSYSERR_NOERROR)
                                       {
                                           waveOutClose(hWaveOut);
                                           state.pcm_handle = nullptr;
                                           state.pcm_playing = false;
                                           g_audioStarted.store(true, std::memory_order_release);
                                           g_audioStartCV.notify_one();
                                           return;
                                       }

                                       if (waveOutWrite(hWaveOut, &hdr, sizeof(hdr)) != MMSYSERR_NOERROR)
                                       {
                                           waveOutUnprepareHeader(hWaveOut, &hdr, sizeof(hdr));
                                           waveOutClose(hWaveOut);
                                           state.pcm_handle = nullptr;
                                           state.pcm_playing = false;
                                           g_audioStarted.store(true, std::memory_order_release);
                                           g_audioStartCV.notify_one();
                                           return;
                                       }

                                       // Signal that audio has actually started playing
                                       g_audioStarted.store(true, std::memory_order_release);
                                       g_audioStartCV.notify_one();

                                       // Poll for completion or stop request
                                       while (!(hdr.dwFlags & WHDR_DONE))
                                       {
                                           if (g_audioStopRequested.load(std::memory_order_acquire))
                                           {
                                               waveOutReset(hWaveOut);  // Stop playback immediately
                                               break;
                                           }
                                           std::this_thread::sleep_for(std::chrono::milliseconds(5));
                                       }

                                       waveOutUnprepareHeader(hWaveOut, &hdr, sizeof(hdr));
                                       waveOutClose(hWaveOut);
                                       state.pcm_handle = nullptr;
#endif
                                       state.pcm_playing = false;
                                   });
    
    // Wait for audio to actually start playing (or fail) for proper A/V sync
    // Timeout after 500ms to avoid hanging if something goes wrong
    {
        std::unique_lock<std::mutex> lock(g_audioStartMutex);
        g_audioStartCV.wait_for(lock, std::chrono::milliseconds(500), [] {
            return g_audioStarted.load(std::memory_order_acquire);
        });
    }
}

//
// Stops the currently playing WAV audio
//
void wavStop()
{
    if (!state.pcm_playing && !state.pcm_thread.joinable())
        return;
    
    // Signal stop request via atomic (thread-safe, no race condition)
    g_audioStopRequested.store(true, std::memory_order_release);
    
    // Also set the flag for any code that checks it
    state.pcm_playing = false;
    
    // Wait for thread to finish (it will call waveOutReset and clean up)
    if (state.pcm_thread.joinable())
        state.pcm_thread.join();
}

//
// Pause the currently playing WAV audio
//
void wavPause()
{
#ifdef _WIN32
    if (state.pcm_handle)
        waveOutPause(state.pcm_handle);
#endif
}

//
// Resume paused WAV audio
//
void wavResume()
{
#ifdef _WIN32
    if (state.pcm_handle)
        waveOutRestart(state.pcm_handle);
#endif
}