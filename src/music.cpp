// music.cpp

#include <cstring>
#include <vector>
#include <cstdint>
#include <string>
#include <fstream>
#include <span>
#include <bit>
#include <algorithm>
#include <array>
#include <iostream>
#include <thread>
#include <chrono>
#include <functional>

// debug
#include <iomanip>
#include <sstream>

// Windows Multimedia
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <Audioclient.h>
#include <Mmdeviceapi.h>
#include <functiondiscoverykeys_devpkey.h>

#include <adlmidi.h> // MIDI Library

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
	// Open log file in truncate mode to clear it each run
	std::ofstream log_file("old_midi_log.txt", std::ios::trunc);
	if (!log_file.is_open())
	{
		return {}; // Bail if we can’t open the file
	}

	// Define helper struct for note-off events
	struct NOEVENTS
	{
		unsigned delta;
		std::array<unsigned char, 3> off;
	};

	// Array to track note-off events
	std::array<NOEVENTS, 1000> off_events{{{0xFFFFFFFFL, {0, 0, 0}}}};

	// Comparator for sorting note-off events by delta time
	auto comp_events = [](const NOEVENTS &a, const NOEVENTS &b)
	{
		return a.delta < b.delta;
	};

	// MIDI header
	std::array<unsigned char, 18> midiheader = {'M', 'T', 'h', 'd', 0, 0, 0, 6, 0, 0, 0, 1, 0, 60, 'M', 'T', 'r', 'k'};

	// Constants for tempo and timebase
	constexpr unsigned long DEFAULT_TEMPO = 120UL;
	constexpr unsigned long XMI_FREQ = 120UL;
	constexpr unsigned long DEFAULT_TIMEBASE = (XMI_FREQ * 60UL / DEFAULT_TEMPO);
	constexpr unsigned long DEFAULT_QN = (60UL * 1000000UL / DEFAULT_TEMPO);

	unsigned short timebase = 960;
	unsigned long qnlen = DEFAULT_QN;

	// Read XMI data from file
	std::ifstream xmiData("XMI.GJD", std::ios::binary | std::ios::ate);
	std::vector<uint8_t> xmiFile(song.length);
	xmiData.seekg(song.offset);
	xmiData.read(reinterpret_cast<char *>(xmiFile.data()), song.length);
	log_file << "Old: XMI data size: " << xmiFile.size() << "\n";

	unsigned char *cur = xmiFile.data();

	// Skip headers
	cur += 4 * 12 + 2;
	unsigned lTIMB = _byteswap_ulong(*reinterpret_cast<unsigned *>(cur));
	cur += 4;

	for (unsigned i = 0; i < lTIMB; i += 2)
	{
		cur += 2;
	}

	if (!std::memcmp(cur, "RBRN", 4))
	{
		cur += 8;
		unsigned short nBranch = *reinterpret_cast<unsigned short *>(cur);
		cur += 2;

		for (unsigned i = 0; i < nBranch; i++)
		{
			cur += 6;
		}
	}

	cur += 4;
	unsigned lEVNT = _byteswap_ulong(*reinterpret_cast<unsigned *>(cur));
	cur += 4;
	log_file << "Old: EVNT size: " << lEVNT << "\n";

	// Decode MIDI events
	std::vector<unsigned char> midi_decode(xmiFile.size() * 2);
	unsigned char *dcur = midi_decode.data();

	int next_is_delta = 1;
	unsigned char *st = cur;
	unsigned oevents = 0;
	while (cur - st < lEVNT)
	{
		if (*cur < 0x80)
		{
			unsigned delay = 0;
			while (*cur == 0x7F)
			{
				delay += *cur++;
			}
			delay += *cur++;

			while (delay > off_events[0].delta)
			{
				unsigned no_delta = off_events[0].delta;
				unsigned tdelay = no_delta & 0x7F;

				while ((no_delta >>= 7))
				{
					tdelay <<= 8;
					tdelay |= (no_delta & 0x7F) | 0x80;
				}

				while (1)
				{
					*dcur++ = tdelay & 0xFF;
					if (tdelay & 0x80)
					{
						tdelay >>= 8;
					}
					else
					{
						break;
					}
				}
				*dcur++ = off_events[0].off[0] & 0x8F;
				*dcur++ = off_events[0].off[1];
				*dcur++ = 0x7F;

				delay -= off_events[0].delta;
				for (unsigned i = 1; i < oevents; i++)
				{
					off_events[i].delta -= off_events[0].delta;
				}
				off_events[0].delta = 0xFFFFFFFFL;

				std::sort(off_events.begin(), off_events.begin() + oevents, comp_events);

				oevents--;
			}

			for (unsigned i = 0; i < oevents; i++)
			{
				off_events[i].delta -= delay;
			}

			unsigned tdelay = delay & 0x7F;
			while ((delay >>= 7))
			{
				tdelay <<= 8;
				tdelay |= (delay & 0x7F) | 0x80;
			}

			while (1)
			{
				*dcur++ = tdelay & 0xFF;
				if (tdelay & 0x80)
				{
					tdelay >>= 8;
				}
				else
				{
					break;
				}
			}
			next_is_delta = 0;
		}
		else
		{
			if (next_is_delta)
			{
				if (*cur >= 0x80)
				{
					*dcur++ = 0;
				}
			}

			next_is_delta = 1;
			if (*cur == 0xFF)
			{
				if (*(cur + 1) == 0x2F)
				{
					for (unsigned i = 0; i < oevents; i++)
					{
						*dcur++ = off_events[i].off[0] & 0x8F;
						*dcur++ = off_events[i].off[1];
						*dcur++ = 0x7F;
						*dcur++ = 0;
					}
					*dcur++ = *cur++;
					*dcur++ = *cur++;
					*dcur++ = 0;
					break;
				}
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				unsigned textlen = *cur + 1;
				while (textlen--)
				{
					*dcur++ = *cur++;
				}
			}
			else if (0x80 == (*cur & 0xF0)) // Note Off
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			else if (0x90 == (*cur & 0xF0)) // Note On
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				unsigned delta = *cur & 0x7F;

				while (*cur++ > 0x80)
				{
					delta <<= 7;
					delta += *cur;
				}

				off_events[oevents].delta = delta;
				off_events[oevents].off[0] = *(dcur - 3);
				off_events[oevents].off[1] = *(dcur - 2);

				oevents++;
				std::sort(std::begin(off_events), std::begin(off_events) + oevents, comp_events);
			}
			else if (0xA0 == (*cur & 0xF0)) // Key Pressure
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			else if (0xB0 == (*cur & 0xF0)) // Control Change
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			else if (0xC0 == (*cur & 0xF0)) // Program Change
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			else if (0xD0 == (*cur & 0xF0)) // Channel Pressure
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			else if (0xE0 == (*cur & 0xF0)) // Pitch Bend
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			else
			{
				cur++;
			}
		}
	}

	// Log decoded events
	std::vector<uint8_t> decoded_events(midi_decode.begin(), midi_decode.begin() + (dcur - midi_decode.data()));
	log_midi_events(log_file, decoded_events, "Old Decode");

	// Write final MIDI events
	std::vector<unsigned char> midi_write(xmiFile.size() * 2);
	unsigned char *tcur = midi_write.data();
	unsigned char *pos = midi_decode.data();

	while (pos < dcur)
	{
		// Delta-time
		unsigned delta = 0;
		while (*pos & 0x80)
		{
			delta += *pos++ & 0x7F;
			delta <<= 7;
		}
		delta += *pos++ & 0x7F;

		// Adjust delta based on tempo
		double factor = (double)timebase * DEFAULT_QN / ((double)qnlen * DEFAULT_TIMEBASE);
		delta = static_cast<unsigned>((double)delta * factor + 0.5);

		unsigned tdelta = delta & 0x7F;
		while ((delta >>= 7))
		{
			tdelta <<= 8;
			tdelta |= (delta & 0x7F) | 0x80;
		}
		while (1)
		{
			*tcur++ = tdelta & 0xFF;
			if (tdelta & 0x80)
			{
				tdelta >>= 8;
			}
			else
			{
				break;
			}
		}

		// Event handling
		if (0x80 == (*pos & 0xF0)) // Note Off
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		else if (0x90 == (*pos & 0xF0)) // Note On
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		else if (0xA0 == (*pos & 0xF0)) // Key Pressure
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		else if (0xB0 == (*pos & 0xF0)) // Control Change
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		else if (0xC0 == (*pos & 0xF0)) // Program Change
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		else if (0xD0 == (*pos & 0xF0)) // Channel Pressure
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		else if (0xE0 == (*pos & 0xF0)) // Pitch Bend
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		else if (0xF0 == *pos || 0xF7 == *pos) // Sysex
		{
			unsigned exlen = 0;
			*tcur++ = *pos++;
			while (*pos < 0)
			{
				exlen += *pos & 0x7F;
				exlen <<= 7;
				*tcur++ = *pos++;
			}
			exlen += *pos & 0x7F;
			*tcur++ = *pos++;
			while (exlen--)
			{
				*tcur++ = *pos++;
			}
		}
		else if (0xFF == *pos) // Meta Event
		{
			*tcur++ = *pos++;
			if (0x51 == *pos) // Tempo
			{
				*tcur++ = *pos++;
				*tcur++ = *pos++;
				qnlen = (*(unsigned char *)(pos) << 16) + (*(unsigned char *)(pos + 1) << 8) + *(unsigned char *)(pos + 2);
				log_file << "Old: Tempo set to " << qnlen << " microseconds per quarter note\n";
				*tcur++ = *pos++;
				*tcur++ = *pos++;
				*tcur++ = *pos++;
			}
			else
			{
				*tcur++ = *pos++;
				unsigned textlen = *pos;
				*tcur++ = *pos++;
				while (textlen--)
				{
					*tcur++ = *pos++;
				}
			}
		}
	}

	ptrdiff_t tlen = tcur - midi_write.data();

	// Log final events
	std::vector<uint8_t> final_events(midi_write.begin(), midi_write.begin() + tlen);
	log_midi_events(log_file, final_events, "Old Final");

	// Build MIDI output
	std::vector<uint8_t> midiData;
	unsigned short swappedTimebase = _byteswap_ushort(timebase);
	midiheader[12] = static_cast<unsigned char>(swappedTimebase & 0xFF);
	midiheader[13] = static_cast<unsigned char>(swappedTimebase >> 8);

	midiData.insert(midiData.end(), midiheader.begin(), midiheader.end());
	unsigned long bs_tlen = _byteswap_ulong(static_cast<unsigned long>(tlen));
	midiData.insert(midiData.end(), reinterpret_cast<const char *>(&bs_tlen), reinterpret_cast<const char *>(&bs_tlen) + sizeof(unsigned));
	midiData.insert(midiData.end(), midi_write.begin(), midi_write.begin() + tlen);

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
						  __uuidof(IMMDeviceEnumerator), (void **)&pEnumerator);
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

	hr = pDevice->Activate(__uuidof(IAudioClient), CLSCTX_ALL, nullptr, (void **)&pAudioClient);
	if (FAILED(hr))
	{
		std::cerr << "ERROR: Activate audio client failed, hr=0x" << std::hex << hr << std::endl;
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
		return;
	}

	WAVEFORMATEX wfx = {0};
	wfx.wFormatTag = WAVE_FORMAT_PCM;
	wfx.nChannels = 2; // Stereo
	wfx.nSamplesPerSec = 44100;
	wfx.wBitsPerSample = 16;
	wfx.nBlockAlign = wfx.nChannels * wfx.wBitsPerSample / 8;
	wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;

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

	int actualSampleRate = wfx.nSamplesPerSec;
	struct ADL_MIDIPlayer *player = adl_init(actualSampleRate);
	if (!player)
	{
		std::cerr << "ERROR: Failed to initialize libADLMIDI." << std::endl;
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
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
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		CoUninitialize();
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

	hr = pAudioClient->GetService(__uuidof(IAudioRenderClient), (void **)&pRenderClient);
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

	// Playback loop with fade-in for main song after first play
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

		int samples = adl_play(player, framesAvailable * 2, (short *)pData);
		if (samples <= 0)
			break; // End of song

		// Apply gain, volume, and fade-in if applicable
		short *samplesPtr = (short *)pData;
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

	// Cleanup
	state.music_playing = false;
	pAudioClient->Stop();
	pRenderClient->Release();
	adl_close(player);
	pAudioClient->Release();
	pDevice->Release();
	pEnumerator->Release();
	CoUninitialize();
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

				// Write midiData to a file called badsong.mid:
				std::ofstream midiFile("song.mid", std::ios::binary);
				midiFile.write(reinterpret_cast<const char *>(midiData.data()), midiData.size());
				midiFile.close();

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

//
// Debug
//
void log_midi_events(std::ofstream &log_file, const std::vector<uint8_t> &data, const std::string &prefix)
{
	if (!log_file.is_open())
	{
		return; // Can’t log if the file’s not open
	}

	// Log basic info
	log_file << prefix << ": Data size: " << data.size() << " bytes\n";

	// Parse and log MIDI events
	size_t pos = 0;
	while (pos < data.size())
	{
		// Delta time
		unsigned delta = 0;
		while (pos < data.size() && (data[pos] & 0x80))
		{
			delta = (delta << 7) + (data[pos] & 0x7F);
			pos++;
		}
		if (pos < data.size())
		{
			delta = (delta << 7) + (data[pos] & 0x7F);
			pos++;
		}
		log_file << prefix << ": Delta-time: " << delta << "\n";

		if (pos >= data.size())
			break;

		uint8_t event = data[pos++];

		// Status byte
		if (event >= 0x80 && event < 0xF0)
		{
			uint8_t channel = event & 0x0F;
			uint8_t type = event & 0xF0;

			if (type == 0x80 || type == 0x90 || type == 0xA0 || type == 0xB0 || type == 0xE0)
			{
				if (pos + 1 >= data.size())
					break;
				uint8_t param1 = data[pos++];
				uint8_t param2 = data[pos++];
				log_file << prefix << ": Channel " << (int)channel << " - ";
				if (type == 0x80)
					log_file << "Note Off, Note: " << (int)param1 << ", Velocity: " << (int)param2;
				else if (type == 0x90)
					log_file << "Note On, Note: " << (int)param1 << ", Velocity: " << (int)param2;
				else if (type == 0xA0)
					log_file << "Key Pressure, Note: " << (int)param1 << ", Pressure: " << (int)param2;
				else if (type == 0xB0)
					log_file << "Control Change, Controller: " << (int)param1 << ", Value: " << (int)param2;
				else if (type == 0xE0)
					log_file << "Pitch Bend, Value: " << ((param2 << 7) + param1);
				log_file << "\n";
			}
			else if (type == 0xC0 || type == 0xD0)
			{
				if (pos >= data.size())
					break;
				uint8_t param1 = data[pos++];
				log_file << prefix << ": Channel " << (int)channel << " - ";
				if (type == 0xC0)
					log_file << "Program Change, Program: " << (int)param1;
				else
					log_file << "Channel Pressure, Pressure: " << (int)param1;
				log_file << "\n";
			}
		}
		else if (event == 0xFF) // Meta event
		{
			if (pos >= data.size())
				break;
			uint8_t meta_type = data[pos++];
			unsigned length = 0;
			while (pos < data.size() && (data[pos] & 0x80))
			{
				length = (length << 7) + (data[pos] & 0x7F);
				pos++;
			}
			if (pos < data.size())
			{
				length = (length << 7) + (data[pos] & 0x7F);
				pos++;
			}
			if (meta_type == 0x2F)
			{
				log_file << prefix << ": End of Track\n";
			}
			else if (meta_type == 0x51)
			{
				if (pos + 2 < data.size())
				{
					unsigned tempo = (data[pos] << 16) + (data[pos + 1] << 8) + data[pos + 2];
					log_file << prefix << ": Tempo: " << tempo << " microseconds per quarter note\n";
					pos += length;
				}
			}
			else
			{
				pos += length; // Skip other meta events
			}
		}
		else if (event == 0xF0 || event == 0xF7) // Sysex
		{
			unsigned length = 0;
			while (pos < data.size() && (data[pos] & 0x80))
			{
				length = (length << 7) + (data[pos] & 0x7F);
				pos++;
			}
			if (pos < data.size())
			{
				length = (length << 7) + (data[pos] & 0x7F);
				pos++;
			}
			log_file << prefix << ": Sysex Event, Length: " << length << "\n";
			pos += length;
		}
	}

	log_file << prefix << ": Logging complete\n";
}