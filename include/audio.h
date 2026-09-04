// audio.h
#pragma once

#include <cstddef>
#include <cstdint>
#include <filesystem>
#include <memory>
#include <vector>
#include <span>

struct AudioPlaybackFormat
{
    uint32_t sampleRate = 22050;
    uint16_t channels = 1;
    uint16_t bitsPerSample = 8;
};

//
// WAVHeader structure used when writing extracted 0x80 audio
//
struct WAVHeader
{
    char chunkID[4] = {'R', 'I', 'F', 'F'};
    uint32_t chunkSize = 0;
    char format[4] = {'W', 'A', 'V', 'E'};

    char subchunk1ID[4] = {'f', 'm', 't', ' '};
    uint32_t subchunk1Size = 16;
    uint16_t audioFormat = 1;
    uint16_t numChannels = 1;
    uint32_t sampleRate = 22050;
    uint32_t byteRate = 22050;
    uint16_t blockAlign = 1;
    uint16_t bitsPerSample = 8;

    char subchunk2ID[4] = {'d', 'a', 't', 'a'};
    uint32_t subchunk2Size = 0;
};

// Function prototypes

void wavPlay(std::span<const uint8_t> audioData);
void wavPlay(std::shared_ptr<std::vector<uint8_t>> audioData);
void wavPlay(std::shared_ptr<const std::vector<uint8_t>> audioData, const AudioPlaybackFormat& format);
// Signal-only stop request for the WM_CLOSE path: wakes the PCM and Red Book
// workers without joining them inside the window procedure. wavStop(),
// redbookStop(), and audioShutdown() perform the joins on the cleanup path.
void audioRequestStop();
void wavStop();
void wavPause();
void wavResume();
[[nodiscard]] double pcmPlaybackDurationSeconds(size_t byteCount);
// Modern installations number the original CD audio tracks without the data
// track: GRV PLAYCD 02 therefore resolves to track1.ogg. Selection 62h is a
// control operation handled by the GRV presentation layer, not an Ogg number.
[[nodiscard]] constexpr unsigned redbookOggTrackNumber(uint8_t selection)
{
    return selection >= 2 && selection != 0x62 ?
        static_cast<unsigned>(selection - 1) : 0;
}
static_assert(redbookOggTrackNumber(0x02) == 1);
static_assert(redbookOggTrackNumber(0x03) == 2);
static_assert(redbookOggTrackNumber(0x62) == 0);
bool redbookPlayOgg(const std::filesystem::path& path);
void redbookStop();
[[nodiscard]] bool redbookIsActive();
void audioShutdown();
void applyPcmRuntimeSettings();
