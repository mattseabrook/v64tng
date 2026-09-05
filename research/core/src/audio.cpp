// audio.cpp

#include <thread>
#include <chrono>
#include <algorithm>
#include <cmath>
#include <cstring>
#include <memory>
#include <span>
#include <atomic>
#include <condition_variable>
#include <mutex>

#ifdef _WIN32
#include <windows.h>
#include <audioclient.h>
#include <avrt.h>
#include <mmdeviceapi.h>
#endif

#include "audio.h"
#include "game.h"
#include "config.h"

#ifdef _WIN32
#pragma comment(lib, "avrt.lib")
#endif

// Atomic flag for thread-safe stop signaling
static std::atomic<bool> g_audioStopRequested{false};
static std::atomic<float> g_pcmRuntimeVolume{1.0f};

// Synchronization for A/V sync - audio signals when playback actually starts
static std::mutex g_audioStartMutex;
static std::condition_variable g_audioStartCV;
static std::atomic<bool> g_audioStarted{false};

#ifdef _WIN32
static HANDLE g_audioStopEvent = nullptr;
static std::mutex g_pcmClientMutex;
static IAudioClient* g_pcmAudioClient = nullptr;

namespace
{
struct MmcssScope
{
    HANDLE handle = nullptr;
    DWORD taskIndex = 0;

    MmcssScope()
    {
        handle = AvSetMmThreadCharacteristicsW(L"Pro Audio", &taskIndex);
        if (!handle)
            handle = AvSetMmThreadCharacteristicsW(L"Audio", &taskIndex);
    }

    ~MmcssScope()
    {
        if (handle)
            AvRevertMmThreadCharacteristics(handle);
    }
};

struct WasapiPcmSession
{
    IMMDeviceEnumerator* enumerator = nullptr;
    IMMDevice* device = nullptr;
    IAudioClient* audioClient = nullptr;
    IAudioRenderClient* renderClient = nullptr;
    HANDLE bufferEvent = nullptr;
    UINT32 bufferFrameCount = 0;
    uint32_t outputSampleRate = 0;
    bool comInit = false;

    ~WasapiPcmSession()
    {
        {
            std::lock_guard<std::mutex> lock(g_pcmClientMutex);
            if (g_pcmAudioClient == audioClient)
                g_pcmAudioClient = nullptr;
        }

        if (audioClient)
            audioClient->Stop();
        if (bufferEvent)
            CloseHandle(bufferEvent);
        if (renderClient)
            renderClient->Release();
        if (audioClient)
            audioClient->Release();
        if (device)
            device->Release();
        if (enumerator)
            enumerator->Release();
        if (comInit)
            CoUninitialize();
    }

    bool init(uint32_t preferredSampleRate)
    {
        HRESULT hr = CoInitializeEx(nullptr, COINIT_MULTITHREADED);
        if (SUCCEEDED(hr))
            comInit = true;
        else if (hr != RPC_E_CHANGED_MODE)
            return false;

        hr = CoCreateInstance(__uuidof(MMDeviceEnumerator), nullptr, CLSCTX_ALL,
            __uuidof(IMMDeviceEnumerator), reinterpret_cast<void**>(&enumerator));
        if (FAILED(hr))
            return false;

        hr = enumerator->GetDefaultAudioEndpoint(eRender, eMultimedia, &device);
        if (FAILED(hr))
            return false;

        hr = device->Activate(__uuidof(IAudioClient), CLSCTX_ALL, nullptr,
            reinterpret_cast<void**>(&audioClient));
        if (FAILED(hr))
            return false;

        REFERENCE_TIME defaultPeriod = 0;
        REFERENCE_TIME minimumPeriod = 0;
        audioClient->GetDevicePeriod(&defaultPeriod, &minimumPeriod);

        WAVEFORMATEX wfx{};
        wfx.wFormatTag = WAVE_FORMAT_PCM;
        wfx.nChannels = 2;
        wfx.nSamplesPerSec = preferredSampleRate;
        wfx.wBitsPerSample = 16;
        wfx.nBlockAlign = static_cast<WORD>(wfx.nChannels * wfx.wBitsPerSample / 8);
        wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;
        wfx.cbSize = 0;

        const DWORD streamFlags = AUDCLNT_STREAMFLAGS_EVENTCALLBACK;
        hr = audioClient->Initialize(AUDCLNT_SHAREMODE_SHARED, streamFlags, defaultPeriod, 0, &wfx, nullptr);
        if (FAILED(hr))
        {
            wfx.nSamplesPerSec = 48000;
            wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;
            hr = audioClient->Initialize(AUDCLNT_SHAREMODE_SHARED, streamFlags, defaultPeriod, 0, &wfx, nullptr);
            if (FAILED(hr))
                return false;
        }

        outputSampleRate = wfx.nSamplesPerSec;
        bufferEvent = CreateEventW(nullptr, FALSE, FALSE, nullptr);
        if (!bufferEvent)
            return false;

        hr = audioClient->SetEventHandle(bufferEvent);
        if (FAILED(hr))
            return false;

        hr = audioClient->GetService(__uuidof(IAudioRenderClient), reinterpret_cast<void**>(&renderClient));
        if (FAILED(hr))
            return false;

        hr = audioClient->GetBufferSize(&bufferFrameCount);
        if (FAILED(hr))
            return false;

        {
            std::lock_guard<std::mutex> lock(g_pcmClientMutex);
            g_pcmAudioClient = audioClient;
        }

        return true;
    }
};

AudioPlaybackFormat resolveConfiguredPcmFormat()
{
    AudioPlaybackFormat format;

    if (config.contains("gameState") && config["gameState"].is_object())
    {
        const auto& gameState = config["gameState"];
        if (gameState.contains("audio") && gameState["audio"].is_object())
        {
            const auto& audio = gameState["audio"];
            const int sampleRate = audio.value("pcmSampleRate", static_cast<int>(format.sampleRate));
            const int channels = audio.value("pcmChannels", static_cast<int>(format.channels));
            const int bitsPerSample = audio.value("pcmBitsPerSample", static_cast<int>(format.bitsPerSample));

            if (sampleRate > 0)
                format.sampleRate = static_cast<uint32_t>(sampleRate);
            if (channels == 1 || channels == 2)
                format.channels = static_cast<uint16_t>(channels);
            if (bitsPerSample == 8 || bitsPerSample == 16)
                format.bitsPerSample = static_cast<uint16_t>(bitsPerSample);
        }
    }

    return format;
}

void ensureAudioStopEvent()
{
    if (!g_audioStopEvent)
        g_audioStopEvent = CreateEventW(nullptr, TRUE, FALSE, nullptr);
}

float decodePcmSample(const std::vector<uint8_t>& data, const AudioPlaybackFormat& format, size_t frameIndex, uint16_t channel)
{
    const size_t clampedChannel = std::min<size_t>(channel, static_cast<size_t>(format.channels - 1));
    if (format.bitsPerSample == 8)
    {
        const size_t byteIndex = frameIndex * format.channels + clampedChannel;
        if (byteIndex >= data.size())
            return 0.0f;
        return (static_cast<int>(data[byteIndex]) - 128) / 128.0f;
    }

    const size_t byteIndex = (frameIndex * format.channels + clampedChannel) * sizeof(int16_t);
    if (byteIndex + sizeof(int16_t) > data.size())
        return 0.0f;
    int16_t sample = 0;
    std::memcpy(&sample, data.data() + byteIndex, sizeof(sample));
    return static_cast<float>(sample) / 32768.0f;
}
}
#endif

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
    const AudioPlaybackFormat format = resolveConfiguredPcmFormat();
    auto owned = std::make_shared<std::vector<uint8_t>>(audioData.begin(), audioData.end());
    wavPlay(std::shared_ptr<const std::vector<uint8_t>>(owned), format);
}

void wavPlay(std::shared_ptr<const std::vector<uint8_t>> audioData, const AudioPlaybackFormat& format)
{
    bool pcmEnabled = config.value("pcmEnabled", true);
    int pcmVolume = config.value("pcmVolume", 100);
    if (!pcmEnabled || !audioData || audioData->empty())
        return;

    // Stop or reap any previous PCM thread before replacing std::thread.
    if (state.pcm_playing || state.pcm_thread.joinable())
        wavStop();

    g_pcmRuntimeVolume.store(std::clamp(pcmVolume / 100.0f, 0.0f, 1.0f), std::memory_order_release);

    g_audioStopRequested.store(false, std::memory_order_release);
    g_audioStarted.store(false, std::memory_order_release);
    state.pcm_playing = true;

#ifdef _WIN32
    ensureAudioStopEvent();
    if (g_audioStopEvent)
        ResetEvent(g_audioStopEvent);
#endif

    state.pcm_thread = std::thread([audioData = std::move(audioData), format]() mutable
                                   {
#ifdef _WIN32
                                       MmcssScope mmcss;
                                       const uint32_t preferredOutputRate = format.sampleRate >= 44100 ? format.sampleRate : 44100;
                                       WasapiPcmSession session;
                                       if (!session.init(preferredOutputRate))
                                       {
                                           state.pcm_playing = false;
                                           g_audioStarted.store(true, std::memory_order_release);
                                           g_audioStartCV.notify_one();
                                           return;
                                       }

                                       const uint16_t bytesPerSample = static_cast<uint16_t>(format.bitsPerSample / 8);
                                       const uint16_t blockAlign = static_cast<uint16_t>(format.channels * bytesPerSample);
                                       if (blockAlign == 0)
                                       {
                                           state.pcm_playing = false;
                                           g_audioStarted.store(true, std::memory_order_release);
                                           g_audioStartCV.notify_one();
                                           return;
                                       }

                                       const size_t totalSourceFrames = audioData->size() / blockAlign;
                                       double sourceFramePosition = 0.0;
                                       const double sourceStep = static_cast<double>(format.sampleRate) / static_cast<double>(session.outputSampleRate);

                                       auto renderFrames = [&](BYTE* dst, UINT32 frameCount) -> bool
                                       {
                                           int16_t* out = reinterpret_cast<int16_t*>(dst);
                                           for (UINT32 frame = 0; frame < frameCount; ++frame)
                                           {
                                               if (sourceFramePosition >= static_cast<double>(totalSourceFrames))
                                               {
                                                   std::memset(out + frame * 2u, 0, static_cast<size_t>(frameCount - frame) * sizeof(int16_t) * 2u);
                                                   return false;
                                               }

                                               const size_t frameIndex = static_cast<size_t>(sourceFramePosition);
                                               const size_t nextFrameIndex = std::min(frameIndex + 1, totalSourceFrames ? totalSourceFrames - 1 : 0);
                                               const float frac = static_cast<float>(sourceFramePosition - static_cast<double>(frameIndex));

                                               const float left0 = decodePcmSample(*audioData, format, frameIndex, 0);
                                               const float right0 = decodePcmSample(*audioData, format, frameIndex, format.channels > 1 ? 1 : 0);
                                               const float left1 = decodePcmSample(*audioData, format, nextFrameIndex, 0);
                                               const float right1 = decodePcmSample(*audioData, format, nextFrameIndex, format.channels > 1 ? 1 : 0);

                                               const float volume = g_pcmRuntimeVolume.load(std::memory_order_relaxed);
                                               const float left = (left0 + (left1 - left0) * frac) * volume;
                                               const float right = (right0 + (right1 - right0) * frac) * volume;

                                               out[frame * 2u + 0u] = static_cast<int16_t>(std::clamp(left * 32767.0f, -32768.0f, 32767.0f));
                                               out[frame * 2u + 1u] = static_cast<int16_t>(std::clamp(right * 32767.0f, -32768.0f, 32767.0f));
                                               sourceFramePosition += sourceStep;
                                           }

                                           return sourceFramePosition < static_cast<double>(totalSourceFrames);
                                       };

                                       BYTE* pData = nullptr;
                                       HRESULT hr = session.renderClient->GetBuffer(session.bufferFrameCount, &pData);
                                       if (FAILED(hr))
                                       {
                                           state.pcm_playing = false;
                                           g_audioStarted.store(true, std::memory_order_release);
                                           g_audioStartCV.notify_one();
                                           return;
                                       }

                                       bool keepPlaying = renderFrames(pData, session.bufferFrameCount);
                                       hr = session.renderClient->ReleaseBuffer(session.bufferFrameCount, 0);
                                       if (FAILED(hr))
                                       {
                                           state.pcm_playing = false;
                                           g_audioStarted.store(true, std::memory_order_release);
                                           g_audioStartCV.notify_one();
                                           return;
                                       }

                                       g_audioStarted.store(true, std::memory_order_release);
                                       g_audioStartCV.notify_one();
                                       if (keepPlaying)
                                           session.audioClient->Start();

                                       HANDLE waitHandles[2] = {session.bufferEvent, g_audioStopEvent};
                                       const DWORD waitHandleCount = g_audioStopEvent ? 2u : 1u;
                                       while (keepPlaying && !g_audioStopRequested.load(std::memory_order_acquire))
                                       {
                                           const DWORD waitResult = WaitForMultipleObjects(waitHandleCount, waitHandles, FALSE, 200);
                                           if (waitHandleCount == 2u && waitResult == WAIT_OBJECT_0 + 1u)
                                               break;
                                           if (waitResult != WAIT_OBJECT_0 && waitResult != WAIT_TIMEOUT)
                                               break;

                                           UINT32 padding = 0;
                                           hr = session.audioClient->GetCurrentPadding(&padding);
                                           if (FAILED(hr))
                                               break;

                                           const UINT32 framesAvailable = session.bufferFrameCount - padding;
                                           if (!framesAvailable)
                                               continue;

                                           hr = session.renderClient->GetBuffer(framesAvailable, &pData);
                                           if (FAILED(hr))
                                               break;

                                           keepPlaying = renderFrames(pData, framesAvailable);
                                           hr = session.renderClient->ReleaseBuffer(framesAvailable, 0);
                                           if (FAILED(hr))
                                               break;
                                       }
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

void applyPcmRuntimeSettings()
{
    const bool enabled = config.value("pcmEnabled", true);
    const int volume = std::clamp(config.value("pcmVolume", 100), 0, 100);
    g_pcmRuntimeVolume.store(volume / 100.0f, std::memory_order_release);
    if (!enabled && (state.pcm_playing || state.pcm_thread.joinable()))
        wavStop();
}

void wavStop()
{
    if (!state.pcm_playing && !state.pcm_thread.joinable())
        return;

    g_audioStopRequested.store(true, std::memory_order_release);

#ifdef _WIN32
    ensureAudioStopEvent();
    if (g_audioStopEvent)
        SetEvent(g_audioStopEvent);
#endif

    state.pcm_playing = false;

    if (state.pcm_thread.joinable())
        state.pcm_thread.join();
}

void wavPause()
{
#ifdef _WIN32
    std::lock_guard<std::mutex> lock(g_pcmClientMutex);
    if (g_pcmAudioClient)
        g_pcmAudioClient->Stop();
#endif
}

void wavResume()
{
#ifdef _WIN32
    std::lock_guard<std::mutex> lock(g_pcmClientMutex);
    if (g_pcmAudioClient)
        g_pcmAudioClient->Start();
#endif
}

void audioShutdown()
{
    wavStop();
#ifdef _WIN32
    std::lock_guard<std::mutex> lock(g_pcmClientMutex);
    if (g_audioStopEvent)
    {
        CloseHandle(g_audioStopEvent);
        g_audioStopEvent = nullptr;
    }
#endif
}
