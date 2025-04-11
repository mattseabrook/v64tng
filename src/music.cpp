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
	// Open log file in append mode
	std::ofstream log_file("midi_log.txt", std::ios::app);
	if (!log_file.is_open())
	{
		return {};
	}

	// Setup
	std::vector<uint8_t> buf(song.length);
	std::ifstream s("XMI.GJD", std::ios::binary);
	s.seekg(song.offset).read(reinterpret_cast<char *>(buf.data()), song.length);
	std::span<const uint8_t> xmi_data = buf;
	// Log XMI data size
	log_file << "New: XMI data size: " << buf.size() << "\n";

	//
	// Constants and Helpers (unchanged)
	//
	constexpr uint32_t MIDI_HEADER_SIZE = 14,
					   MIDI_TRACK_HEADER_SIZE = 8;
	constexpr uint16_t MIDI_FORMAT = 0, MIDI_NUM_TRACKS = 1, MIDI_TIMEBASE = 960;
	constexpr uint32_t DEFAULT_TEMPO_BPM = 120, DEFAULT_MICROSECS_PER_QN = 500000;
	constexpr uint32_t XMI_FREQ = 120, DEFAULT_TIMEBASE = 60, DEFAULT_QN = 500000;

	struct PendingNoteOff
	{
		uint32_t delta_ticks;
		std::array<uint8_t, 3> event_data;
		bool operator>(const PendingNoteOff &other) const { return delta_ticks > other.delta_ticks; }
	};

	auto read_be = [](std::span<const uint8_t> &data)
	{
		return [&data]<typename T>() -> T
		{
			T v;
			std::memcpy(&v, data.data(), sizeof(T));
			data = data.subspan(sizeof(T));
			return (std::endian::native == std::endian::little && sizeof(T) > 1) ? std::byteswap(v) : v;
		};
	};

	auto write_be = [](std::vector<uint8_t> &out, auto v)
	{
		if constexpr (std::endian::native == std::endian::little && sizeof(v) > 1)
			v = std::byteswap(v);
		out.insert(out.end(), reinterpret_cast<const uint8_t *>(&v), reinterpret_cast<const uint8_t *>(&v) + sizeof(v));
	};
	auto read_vlq = [](std::span<const uint8_t> &d) -> uint32_t
	{
		uint32_t v = 0;
		for (int i = 0; i < 4 && !d.empty(); ++i)
		{
			uint8_t b = d.front();
			d = d.subspan(1);
			v = (v << 7) | (b & 0x7F);
			if (!(b & 0x80))
				return v;
		}
		return v; // If VLQ is malformed or truncated, just return what we have
	};
	auto write_vlq = [](std::vector<uint8_t> &out, uint32_t v)
	{
		uint8_t buf[5];
		size_t n = 0;
		do
		{
			buf[n++] = v & 0x7F;
			v >>= 7;
		} while (v);
		for (size_t i = n; i--;)
			out.push_back(buf[i] | (i ? 0x80 : 0));
	};
	auto read_xmi_delta = [](std::span<const uint8_t> &d)
	{
		uint32_t delta = 0;
		while (d.front() == 0x7F)
		{
			delta += 0x7F;
			d = d.subspan(1);
		}
		delta += d.front();
		d = d.subspan(1);
		return delta;
	};

	//
	// Header
	//
	xmi_data = xmi_data.subspan(50);
	uint32_t lTIMB = read_be(xmi_data).operator()<uint32_t>();
	xmi_data = xmi_data.subspan(lTIMB);
	if (!std::memcmp(xmi_data.data(), "RBRN", 4))
	{
		xmi_data = xmi_data.subspan(8);
		xmi_data = xmi_data.subspan(6 * read_be(xmi_data).operator()<uint16_t>());
	}
	xmi_data = xmi_data.subspan(4);
	auto evnt = xmi_data.subspan(0, read_be(xmi_data).operator()<uint32_t>());
	xmi_data = evnt;
	// Log EVNT size
	log_file << "New: EVNT size: " << evnt.size() << "\n";

	//
	// First Pass: Decode Events
	//
	std::vector<uint8_t> decode;
	decode.reserve(xmi_data.size() * 2);
	std::vector<PendingNoteOff> notes;
	notes.reserve(100);
	bool is_delta = true;
	uint32_t delay = 0;

	while (!xmi_data.empty())
	{
		if (xmi_data.front() < 0x80)
		{
			uint32_t d = read_xmi_delta(xmi_data);
			while (!notes.empty() && notes.front().delta_ticks <= d)
			{
				std::pop_heap(notes.begin(), notes.end(), std::greater<>{});
				auto n = notes.back();
				notes.pop_back();
				write_vlq(decode, n.delta_ticks);
				// decode.insert(decode.end(), {uint8_t((n.event_data[0] & 0x0F) | 0x80), n.event_data[1], 0x7F});
				decode.insert(decode.end(), {
												static_cast<uint8_t>((n.event_data[0] & 0x0F) | 0x80),
												n.event_data[1],
												n.event_data[2] // use the original velocity from note-on or 0
											});
				if (d >= n.delta_ticks)
				{
					d -= n.delta_ticks;
					for (auto &p : notes)
						p.delta_ticks -= n.delta_ticks;
				}
				else
				{
					// This should never happen, but guard anyway
					d = 0;
					for (auto &p : notes)
						p.delta_ticks = 0;
				}
				/*
					d -= n.delta_ticks;
					for (auto &p : notes)
						p.delta_ticks -= n.delta_ticks;
				*/
			}
			delay = d;
			is_delta = true;
		}
		else
		{
			write_vlq(decode, delay);
			delay = 0;
			is_delta = true; // <---- change to TRUE here, not FALSE

			uint8_t status = xmi_data.front();
			xmi_data = xmi_data.subspan(1);
			if (status == 0xFF)
			{
				uint8_t type = xmi_data.front();
				xmi_data = xmi_data.subspan(1);
				decode.push_back(status);
				decode.push_back(type);
				if (type == 0x2F)
				{
					while (!notes.empty())
					{
						std::pop_heap(notes.begin(), notes.end(), std::greater<>{});
						auto n = notes.back();
						notes.pop_back();
						write_vlq(decode, n.delta_ticks);
						// decode.insert(decode.end(), {uint8_t((n.event_data[0] & 0x0F) | 0x80), n.event_data[1], 0x7F});
						decode.insert(decode.end(), {n.event_data[0],
													 n.event_data[1],
													 n.event_data[2]});
						for (auto &p : notes)
							p.delta_ticks -= n.delta_ticks;
					}
					decode.push_back(0); // Delta 0 for end of track
					decode.push_back(0xFF);
					decode.push_back(0x2F);
					decode.push_back(0);
					break;
				}
				else
				{
					uint8_t len = xmi_data.front();
					xmi_data = xmi_data.subspan(1);
					decode.push_back(len);
					decode.insert(decode.end(), xmi_data.begin(), xmi_data.begin() + len);
					xmi_data = xmi_data.subspan(len);
				}
			}
			else if ((status & 0xF0) == 0x90)
			{
				uint8_t note = xmi_data[0], vel = xmi_data[1];
				xmi_data = xmi_data.subspan(2);
				decode.insert(decode.end(), {status, note, vel});
				uint32_t dur = read_vlq(xmi_data);
				if (vel && dur)
				{
					// notes.push_back({dur, {status, note, 0}});
					notes.push_back({dur, {static_cast<uint8_t>((status & 0x0F) | 0x80), note, 0x7F}});
					std::push_heap(notes.begin(), notes.end(), std::greater<>{});
				}
			}
			else if ((status & 0xF0) >= 0x80 && (status & 0xF0) <= 0xE0)
			{
				decode.push_back(status);
				// Add bitmasking for pitch bend/data bytes:
				if ((status & 0xF0) == 0xE0) // Pitch Bend
				{
					uint8_t lsb = xmi_data[0] & 0x7F; // <-- Fix here
					uint8_t msb = xmi_data[1] & 0x7F; // <-- Fix here
					decode.push_back(lsb);
					decode.push_back(msb);
					xmi_data = xmi_data.subspan(2);
				}
				else
				{
					decode.insert(decode.end(), xmi_data.begin(), xmi_data.begin() + ((status & 0xF0) < 0xC0 ? 2 : 1));
					xmi_data = xmi_data.subspan((status & 0xF0) < 0xC0 ? 2 : 1);
				}
			}
			else if (status == 0xF0 || status == 0xF7)
			{
				decode.push_back(status);
				uint8_t len = xmi_data.front();
				xmi_data = xmi_data.subspan(1);
				decode.push_back(len);
				decode.insert(decode.end(), xmi_data.begin(), xmi_data.begin() + len);
				xmi_data = xmi_data.subspan(len);
			}
		}
	}

	// Log decoded events
	log_midi_events(log_file, decode, "New Decode");

	//
	// Second Pass: Tempo Adjustment
	//
	std::vector<uint8_t> write;
	write.reserve(decode.size());
	uint32_t qnlen = DEFAULT_MICROSECS_PER_QN;
	const uint8_t *p = decode.data(), *end = p + decode.size();

	while (p < end)
	{
		uint32_t delta = 0;
		while (*p & 0x80)
		{
			delta = (delta << 7) + (*p++ & 0x7F);
		}
		delta += *p++;
		write_vlq(write, static_cast<uint32_t>(delta * (MIDI_TIMEBASE * DEFAULT_QN / (qnlen * DEFAULT_TIMEBASE)) + 0.5));
		if (p >= end)
			break;
		uint8_t status = *p++;
		write.push_back(status);
		if ((status & 0xF0) >= 0x80 && (status & 0xF0) <= 0xE0)
		{
			uint8_t n = (status & 0xF0) < 0xC0 ? 2 : 1;
			write.insert(write.end(), p, p + n);
			p += n;
		}
		else if (status == 0xFF)
		{
			uint8_t type = *p++;
			write.push_back(type);
			uint8_t len = *p++;
			write.push_back(len);
			if (type == 0x51)
			{
				write.insert(write.end(), p, p + 3);
				qnlen = (p[0] << 16) | (p[1] << 8) | p[2];
				// Log tempo
				log_file << "New: Tempo set to " << qnlen << " microseconds per quarter note\n";
				p += 3;
			}
			else
			{
				write.insert(write.end(), p, p + len);
				p += len;
			}
		}
		else if (status == 0xF0 || status == 0xF7)
		{
			uint8_t len = *p++;
			write.push_back(len);
			write.insert(write.end(), p, p + len);
			p += len;
		}
	}

	// Log final events
	log_midi_events(log_file, write, "New Final");

	//
	// Return MIDI Format 0
	//
	std::vector<uint8_t> midi;
	midi.reserve(MIDI_HEADER_SIZE + MIDI_TRACK_HEADER_SIZE + write.size());
	midi.insert(midi.end(), {'M', 'T', 'h', 'd'});
	write_be(midi, 6u);
	write_be(midi, MIDI_FORMAT);
	write_be(midi, MIDI_NUM_TRACKS);
	write_be(midi, MIDI_TIMEBASE);
	midi.insert(midi.end(), {'M', 'T', 'r', 'k'});
	write_be(midi, static_cast<uint32_t>(write.size()));
	midi.insert(midi.end(), write.begin(), write.end());

	return midi;
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
				std::ofstream midiFile("badsong.mid", std::ios::binary);
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