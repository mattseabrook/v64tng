// music.cpp

#include <cstring>
#include <vector>
#include <cstdint>
#include <string>
#include <fstream>
#include <bit>
#include <algorithm>
#include <array>
#include <iostream>
#include <thread>
#include <chrono>

// Windows Multimedia
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <Audioclient.h>
#include <Mmdeviceapi.h>
#include <functiondiscoverykeys_devpkey.h>

// MIDI Library
#include <adlmidi.h>

#include "game.h"
#include "music.h"
#include "rl.h"

/*
===============================================================================
Function Name: xmiConverter

Description:
	- Converts XMI data (read from RLEntry within XMI.GJD) to a standard
	  MIDI Format 0 file in memory.

Parameters:
	- const RLEntry& song: Specifies the offset and length of the XMI song
						   data within the "XMI.GJD" file container.

Return:
	- std::vector<uint8_t>: The converted MIDI data in memory.
===============================================================================
*/
std::vector<uint8_t> xmiConverter(const RLEntry &song)
{
	//
	// Types, Constants, and Helpers
	//
	struct NoteOffEvent
	{
		uint32_t delta = 0xFFFFFFFF;
		std::array<uint8_t, 3> data{};
	};
	constexpr size_t MaxNoteOffs = 1000;

	constexpr std::array<uint8_t, 18> midiHeader = {
		'M', 'T', 'h', 'd', 0, 0, 0, 6, 0, 0, 0, 1, 0, 60, 'M', 'T', 'r', 'k'};
	constexpr uint32_t DefaultTempo = 120;
	constexpr uint32_t XmiFreq = 120;
	constexpr uint32_t DefaultTimebase = (XmiFreq * 60 / DefaultTempo);
	constexpr uint32_t DefaultQN = (60 * 1000000 / DefaultTempo);

	uint16_t timebase = 960;
	uint32_t qnlen = DefaultQN;

	// Sort function for note-off events
	auto eventSort = [](const NoteOffEvent &a, const NoteOffEvent &b)
	{ return a.delta < b.delta; };

	// Parse note-off delta time
	auto parse_noteoff_delta = [](auto &it) -> uint32_t
	{
		uint32_t delta = *it & 0x7F;
		while (*it++ > 0x80)
		{
			delta <<= 7;
			delta += *it;
		}
		return delta;
	};

	// Read SysEx length
	auto read_sysex_length = [](auto &it) -> uint32_t
	{
		uint32_t len = 0;
		while (*it < 0)
		{
			len = (len << 7) + (*it & 0x7F);
			++it;
		}
		len = (len << 7) + (*it & 0x7F);
		++it;
		return len;
	};

	// Read variable-length values
	auto read_varlen = [](auto &inIt) -> uint32_t
	{
		uint32_t value = 0;
		while (*inIt & 0x80)
		{
			value = (value << 7) | (*inIt++ & 0x7F);
		}
		value = (value << 7) | (*inIt++ & 0x7F);
		return value;
	};

	// Write variable-length values
	auto write_varlen = [](auto &outIt, uint32_t value)
	{
		uint32_t buffer = value & 0x7F;
		while (value >>= 7)
		{
			buffer <<= 8;
			buffer |= ((value & 0x7F) | 0x80);
		}
		while (true)
		{
			*outIt++ = buffer & 0xFF;
			if (buffer & 0x80)
				buffer >>= 8;
			else
				break;
		}
	};

	//
	// Read XMI data
	//
	std::ifstream file("XMI.GJD", std::ios::binary);
	std::vector<uint8_t> xmi(song.length);
	file.seekg(song.offset);
	file.read(reinterpret_cast<char *>(xmi.data()), song.length);

	auto it = xmi.begin();

	//
	// XMI Header, Branch skip
	//
	it += 4 * 12 + 2;
	uint32_t lTIMB = _byteswap_ulong(*reinterpret_cast<const uint32_t *>(&*it));
	it += 4 + lTIMB;

	if (std::equal(it, it + 4, "RBRN"))
	{
		it += 8;
		uint16_t nBranch = *reinterpret_cast<const uint16_t *>(&*it);
		it += 2 + nBranch * 6;
	}

	it += 4;
	uint32_t lEVNT = _byteswap_ulong(*reinterpret_cast<const uint32_t *>(&*it));
	it += 4;

	//
	// Decode Events
	//
	std::vector<uint8_t> midiDecode(xmi.size() * 2);
	auto decodeIt = midiDecode.begin();

	std::array<NoteOffEvent, MaxNoteOffs> noteOffs;
	size_t noteOffCount = 0;

	bool expectDelta = true;
	auto eventStart = it;

	while (std::distance(eventStart, it) < static_cast<ptrdiff_t>(lEVNT))
	{
		if (*it < 0x80)
		{
			// Delta time
			uint32_t delay = 0;
			while (*it == 0x7F)
				delay += *it++;
			delay += *it++;

			// Handle pending note-offs
			while (delay > noteOffs[0].delta)
			{
				write_varlen(decodeIt, noteOffs[0].delta);
				*decodeIt++ = noteOffs[0].data[0] & 0x8F;
				*decodeIt++ = noteOffs[0].data[1];
				*decodeIt++ = 0x7F;

				delay -= noteOffs[0].delta;
				for (size_t i = 1; i < noteOffCount; ++i)
					noteOffs[i].delta -= noteOffs[0].delta;
				noteOffs[0].delta = 0xFFFFFFFF;
				std::sort(noteOffs.begin(), noteOffs.begin() + noteOffCount, eventSort);
				--noteOffCount;
			}
			for (size_t i = 0; i < noteOffCount; ++i)
				noteOffs[i].delta -= delay;

			// Write delta
			write_varlen(decodeIt, delay);
			expectDelta = false;
		}
		else
		{
			if (expectDelta && *it >= 0x80)
				*decodeIt++ = 0;
			expectDelta = true;

			if (*it == 0xFF)
			{
				if (*(it + 1) == 0x2F)
				{
					for (size_t i = 0; i < noteOffCount; ++i)
					{
						*decodeIt++ = noteOffs[i].data[0] & 0x8F;
						*decodeIt++ = noteOffs[i].data[1];
						*decodeIt++ = 0x7F;
						*decodeIt++ = 0;
					}
					*decodeIt++ = *it++;
					*decodeIt++ = *it++;
					*decodeIt++ = 0;
					break;
				}
				*decodeIt++ = *it++;
				*decodeIt++ = *it++;
				uint32_t textlen = *it + 1;
				while (textlen--)
					*decodeIt++ = *it++;
			}
			else if ((*it & 0xF0) == 0x80)
			{ // Note Off
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
			}
			else if ((*it & 0xF0) == 0x90)
			{ // Note On
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
				uint32_t delta = parse_noteoff_delta(it);
				noteOffs[noteOffCount].delta = delta;
				noteOffs[noteOffCount].data[0] = *(decodeIt - 3);
				noteOffs[noteOffCount].data[1] = *(decodeIt - 2);
				++noteOffCount;
				std::sort(noteOffs.begin(), noteOffs.begin() + noteOffCount, eventSort);
			}
			else if ((*it & 0xF0) == 0xA0)
			{ // Key Pressure
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
			}
			else if ((*it & 0xF0) == 0xB0)
			{ // Control Change
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
			}
			else if ((*it & 0xF0) == 0xC0)
			{ // Program Change
				decodeIt = std::copy_n(it, 2, decodeIt);
				it += 2;
			}
			else if ((*it & 0xF0) == 0xD0)
			{ // Channel Pressure
				decodeIt = std::copy_n(it, 2, decodeIt);
				it += 2;
			}
			else if ((*it & 0xF0) == 0xE0)
			{ // Pitch Bend
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
			}
			else
			{
				++it;
			}
		}
	}

	//
	// Write final MIDI data
	//
	std::vector<uint8_t> midiWrite(xmi.size() * 2);
	auto writeIt = midiWrite.begin();
	auto readIt = midiDecode.begin();

	while (readIt < decodeIt)
	{
		// Delta-time
		uint32_t delta = read_varlen(readIt);

		// Adjust delta based on tempo
		double factor = static_cast<double>(timebase) * DefaultQN / (static_cast<double>(qnlen) * DefaultTimebase);
		delta = static_cast<uint32_t>(static_cast<double>(delta) * factor + 0.5);
		write_varlen(writeIt, delta);

		// Event handling
		if ((*readIt & 0xF0) == 0x80) // Note Off
		{
			writeIt = std::copy_n(readIt, 3, writeIt);
			readIt += 3;
		}
		else if ((*readIt & 0xF0) == 0x90) // Note On
		{
			writeIt = std::copy_n(readIt, 3, writeIt);
			readIt += 3;
		}
		else if ((*readIt & 0xF0) == 0xA0) // Key Pressure
		{
			writeIt = std::copy_n(readIt, 3, writeIt);
			readIt += 3;
		}
		else if ((*readIt & 0xF0) == 0xB0) // Control Change
		{
			writeIt = std::copy_n(readIt, 3, writeIt);
			readIt += 3;
		}
		else if ((*readIt & 0xF0) == 0xC0) // Program Change
		{
			writeIt = std::copy_n(readIt, 2, writeIt);
			readIt += 2;
		}
		else if ((*readIt & 0xF0) == 0xD0) // Channel Pressure
		{
			writeIt = std::copy_n(readIt, 2, writeIt);
			readIt += 2;
		}
		else if ((*readIt & 0xF0) == 0xE0) // Pitch Bend
		{
			writeIt = std::copy_n(readIt, 3, writeIt);
			readIt += 3;
		}
		else if (*readIt == 0xF0 || *readIt == 0xF7) // Sysex
		{
			*writeIt++ = *readIt++;
			uint32_t exlen = read_sysex_length(readIt);
			writeIt = std::copy_n(readIt, exlen, writeIt);
			readIt += exlen;
		}
		else if (*readIt == 0xFF) // Meta Event
		{
			*writeIt++ = *readIt++;
			if (*readIt == 0x51) // Tempo
			{
				*writeIt++ = *readIt++;
				*writeIt++ = *readIt++;
				qnlen = (static_cast<uint32_t>(readIt[0]) << 16) | (static_cast<uint32_t>(readIt[1]) << 8) | static_cast<uint32_t>(readIt[2]);
				writeIt = std::copy_n(readIt, 3, writeIt);
				readIt += 3;
			}
			else
			{
				*writeIt++ = *readIt++; // Meta type
				uint32_t textlen = *readIt;
				*writeIt++ = *readIt++; // Length
				writeIt = std::copy_n(readIt, textlen, writeIt);
				readIt += textlen;
			}
		}
	}

	//
	// MIDI Return output
	//
	std::vector<uint8_t> midiData;
	auto header = midiHeader;
	uint16_t swappedTimebase = _byteswap_ushort(timebase);
	header[12] = static_cast<uint8_t>(swappedTimebase & 0xFF);
	header[13] = static_cast<uint8_t>(swappedTimebase >> 8);

	midiData.insert(midiData.end(), header.begin(), header.end());
	uint32_t trackLen = static_cast<uint32_t>(std::distance(midiWrite.begin(), writeIt));
	uint32_t swappedTrackLen = _byteswap_ulong(trackLen);
	midiData.insert(midiData.end(), reinterpret_cast<uint8_t *>(&swappedTrackLen), reinterpret_cast<uint8_t *>(&swappedTrackLen) + 4);
	midiData.insert(midiData.end(), midiWrite.begin(), writeIt);

	return midiData;
}

/*
===============================================================================
Function Name: PlayMIDI

Description:
	- Plays the MIDI data using the Windows Audio API. This function initializes
	  the audio client, sets up the audio format, and plays the MIDI data in a
	  loop until the song ends or is stopped.

Parameters:
	- const std::vector<uint8_t> &midiData: The MIDI data to be played.
	- bool isTransient: Indicates whether the song is transient or not.
===============================================================================
*/
void PlayMIDI(const std::vector<uint8_t> &midiData, bool isTransient)
{
#ifdef _WIN32
	HRESULT hr;
	IMMDeviceEnumerator *pEnumerator = nullptr;
	IMMDevice *pDevice = nullptr;
	IAudioClient *pAudioClient = nullptr;
	IAudioRenderClient *pRenderClient = nullptr;

	hr = CoInitialize(nullptr);
	if (FAILED(hr))
	{
		std::cerr << "ERROR: CoInitialize failed, hr=0x" << std::hex << hr << std::endl;
		return;
	}

	hr = CoCreateInstance(__uuidof(MMDeviceEnumerator), nullptr, CLSCTX_ALL,
						  __uuidof(IMMDeviceEnumerator), reinterpret_cast<void **>(&pEnumerator));
	if (FAILED(hr))
	{
		std::cerr << "ERROR: CoCreateInstance failed, hr=0x" << std::hex << hr << std::endl;
		CoUninitialize();
		return;
	}

	hr = pEnumerator->GetDefaultAudioEndpoint(eRender, eMultimedia, &pDevice);
	if (FAILED(hr))
	{
		std::cerr << "ERROR: GetDefaultAudioEndpoint failed, hr=0x" << std::hex << hr << std::endl;
		pEnumerator->Release();
		CoUninitialize();
		return;
	}

	hr = pDevice->Activate(__uuidof(IAudioClient), CLSCTX_ALL, nullptr, reinterpret_cast<void **>(&pAudioClient));
	if (FAILED(hr))
	{
		std::cerr << "ERROR: Activate audio client failed, hr=0x" << std::hex << hr << std::endl;
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
		return;
	}

	WAVEFORMATEX wfx = {
		.wFormatTag = WAVE_FORMAT_PCM,
		.nChannels = 2,
		.nSamplesPerSec = 44100,
		.nAvgBytesPerSec = 44100 * 2 * 16 / 8,
		.nBlockAlign = static_cast<WORD>(2 * 16 / 8),
		.wBitsPerSample = 16,
		.cbSize = 0};

	hr = pAudioClient->Initialize(AUDCLNT_SHAREMODE_SHARED, 0, 500000, 0, &wfx, nullptr);
	if (FAILED(hr))
	{
		std::cerr << "Falling back to 48 kHz" << std::endl;
		wfx.nSamplesPerSec = 48000;
		wfx.nBlockAlign = wfx.nChannels * wfx.wBitsPerSample / 8;
		wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;
		hr = pAudioClient->Initialize(AUDCLNT_SHAREMODE_SHARED, 0, 500000, 0, &wfx, nullptr);
		if (FAILED(hr))
		{
			std::cerr << "ERROR: Audio client Initialize failed with 48 kHz, hr=0x" << std::hex << hr << std::endl;
			pAudioClient->Release();
			pDevice->Release();
			pEnumerator->Release();
			CoUninitialize();
			return;
		}
	}
#endif

#ifdef _WIN32
	int actualSampleRate = wfx.nSamplesPerSec;
#endif

	struct ADL_MIDIPlayer *player = adl_init(actualSampleRate);
	if (!player)
	{
		std::cerr << "ERROR: Failed to initialize libADLMIDI." << std::endl;
#ifdef _WIN32
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
#endif
		return;
	}

	// Configure emulation mode
	if (state.music_mode == "opl2")
	{
		adl_setNumChips(player, 1);
		adl_setNumFourOpsChn(player, 0);
	}
	else if (state.music_mode == "dual_opl2")
	{
		adl_setNumChips(player, 2);
		adl_setNumFourOpsChn(player, 0);
	}
	else if (state.music_mode == "opl3")
	{
		adl_setNumChips(player, 1);
		adl_setNumFourOpsChn(player, 6);
	}
	else
	{
		std::cerr << "WARNING: Unknown music mode '" << state.music_mode << "', defaulting to opl3." << std::endl;
		adl_setNumChips(player, 1);
		adl_setNumFourOpsChn(player, 6);
	}

	if (adl_openData(player, midiData.data(), static_cast<unsigned long>(midiData.size())) < 0)
	{
		std::cerr << "ERROR: Failed to load MIDI data in libADLMIDI." << std::endl;
		adl_close(player);
#ifdef _WIN32
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
#endif
		return;
	}

	// Position handling
	if (isTransient)
	{
		adl_positionRewind(player); // Start transient from beginning
	}
	else
	{
		adl_positionSeek(player, state.main_song_position); // Resume main song
	}

	//
	// Initialize audio playback
	//
#ifdef _WIN32
	hr = pAudioClient->GetService(__uuidof(IAudioRenderClient), reinterpret_cast<void **>(&pRenderClient));
	if (FAILED(hr))
	{
		std::cerr << "ERROR: GetService for IAudioRenderClient failed, hr=0x" << std::hex << hr << std::endl;
		adl_close(player);
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
		return;
	}

	UINT32 bufferFrameCount;
	hr = pAudioClient->GetBufferSize(&bufferFrameCount);
	if (FAILED(hr))
	{
		std::cerr << "ERROR: GetBufferSize failed, hr=0x" << std::hex << hr << std::endl;
		pRenderClient->Release();
		adl_close(player);
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
		return;
	}

	hr = pAudioClient->Start();
	if (FAILED(hr))
	{
		std::cerr << "ERROR: Audio client Start failed, hr=0x" << std::hex << hr << std::endl;
		pRenderClient->Release();
		adl_close(player);
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
		return;
	}
#endif

	//
	// Playback loop
	//
	state.music_playing = true;
	const float gain = 6.0f;
	const int fadeSamples = static_cast<int>(0.5 * actualSampleRate); // 500ms fade-in
	int fadeCounter = 0;
	bool fadingIn = !isTransient && state.hasPlayedFirstSong; // Fade-in only for main songs after first play

	while (state.music_playing)
	{
		UINT32 padding;
		hr = pAudioClient->GetCurrentPadding(&padding);
		if (FAILED(hr))
			break;

		UINT32 framesAvailable = bufferFrameCount - padding;
		if (framesAvailable == 0)
		{
			std::this_thread::sleep_for(std::chrono::milliseconds(10));
			continue;
		}

		BYTE *pData;
		hr = pRenderClient->GetBuffer(framesAvailable, &pData);
		if (FAILED(hr))
			break;

		int samples = adl_play(player, framesAvailable * 2, reinterpret_cast<short *>(static_cast<void *>(pData)));
		if (samples <= 0)
			break; // End of song

		// Apply gain, volume, and fade-in if applicable
		short *samplesPtr = reinterpret_cast<short *>(static_cast<void *>(pData));
		for (int i = 0; i < samples; i++)
		{
			float sample = static_cast<float>(samplesPtr[i]) * gain * state.music_volume;
			if (fadingIn && fadeCounter < fadeSamples)
			{
				float fadeFactor = static_cast<float>(fadeCounter) / fadeSamples;
				sample *= fadeFactor;
				fadeCounter++;
			}
			samplesPtr[i] = static_cast<short>(std::clamp(sample, -32768.0f, 32767.0f));
		}

		hr = pRenderClient->ReleaseBuffer(framesAvailable, 0);
		if (FAILED(hr))
			break;
	}

	// Save position if main song is paused
	if (!isTransient)
	{
		state.main_song_position = adl_positionTell(player);
		state.hasPlayedFirstSong = true; // Mark that a main song has played
	}

	//
	// Cleanup
	//
	state.music_playing = false;
#ifdef _WIN32
	pAudioClient->Stop();
	pRenderClient->Release();
#endif
	adl_close(player);
#ifdef _WIN32
	pAudioClient->Release();
	pDevice->Release();
	pEnumerator->Release();
	CoUninitialize();
#endif
}

/*
===============================================================================
Function Name: xmiPlay

Description:
	- Sets up the music thread to play the specified XMI song. It initializes the
	  MIDI system, stops any currently playing music, and starts a new thread
	  to play the specified song.

Parameters:
	- const std::string &songName: The name of the song to be played.
	- bool isTransient: Indicates whether the song is transient or not.
===============================================================================
*/
void xmiPlay(const std::string &songName, bool isTransient)
{
	bool midi_enabled = config.value("midiEnabled", true);
	int midi_volume = config.value("midiVolume", 100);
	state.music_volume = std::clamp(midi_volume / 100.0f, 0.0f, 1.0f);
	state.music_mode = config.value("midiMode", "opl3");

	if (midi_enabled)
	{
		// Stop any currently playing music
		state.music_playing = false;
		if (state.music_thread.joinable())
		{
			state.music_thread.join();
		}

		// Set song names and position
		if (isTransient)
		{
			state.transient_song = songName;
		}
		else
		{
			if (songName != state.current_song)
			{
				state.current_song = songName;
				state.main_song_position = 0.0; // Reset position only for new main songs
			}
			// Else, resuming the same song, so keep state.main_song_position as is
		}

		// Start new music thread
		auto play_music = [songName, isTransient]()
		{
			auto xmiFiles = parseRLFile("XMI.RL");
			for (auto &entry : xmiFiles)
			{
				entry.filename.erase(entry.filename.find_last_of('.'));
			}

			auto song = std::find_if(xmiFiles.begin(), xmiFiles.end(),
									 [&songName](const RLEntry &entry)
									 { return entry.filename == songName; });

			if (song != xmiFiles.end())
			{
				auto midiData = xmiConverter(*song);
				PlayMIDI(midiData, isTransient);
			}
			else
			{
				std::cerr << "ERROR: XMI file '" << songName << "' not found." << std::endl;
			}
		};
		state.music_thread = std::thread(play_music);
	}
}