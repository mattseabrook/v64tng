// audio.h
#ifndef AUDIO_H
#define AUDIO_H

#include <cstdint>
#include <vector>
#include <span>

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
void wavStop();
void wavPause();
void wavResume();

#endif // AUDIO_H