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

namespace
{
	//
	// Reads a Big-Endian value from a span and advances the span
	// (UPDATED Signature and Implementation for uint8_t)
	//
	template <typename T>
		requires std::is_integral_v<T> || std::is_enum_v<T> // C++20 concept
	T read_be(std::span<const uint8_t> &data)				// CHANGED: Takes uint8_t span
	{
		T value;
		// Assumes data.size() >= sizeof(T)
		std::memcpy(&value, data.data(), sizeof(T)); // Use memcpy for type-punning safety
		data = data.subspan(sizeof(T));

		if constexpr (std::endian::native == std::endian::little && sizeof(T) > 1)
		{
			return std::byteswap(value);
		}
		else
		{
			return value;
		}
	}

	//
	// Writes a Big-Endian value to a vector
	// (UPDATED Signature and Implementation for uint8_t)
	//
	template <typename T>
		requires std::is_integral_v<T> || std::is_enum_v<T>
	void write_be(std::vector<uint8_t> &out, T value) // CHANGED: Takes uint8_t vector
	{
		if constexpr (std::endian::native == std::endian::little && sizeof(T) > 1)
		{
			value = std::byteswap(value);
		}
		// Get pointer to the value's bytes as uint8_t* and insert
		const uint8_t *byte_ptr = reinterpret_cast<const uint8_t *>(&value);
		out.insert(out.end(), byte_ptr, byte_ptr + sizeof(T));
	}

	uint32_t read_vlq(std::span<const uint8_t> &data)
	{
		uint32_t value = 0;
		uint8_t byte;
		do
		{
			byte = data.front();
			data = data.subspan(1);
			value = (value << 7) | (byte & 0x7F);
		} while (byte & 0x80);
		return value;
	}

	//
	// Writes a Variable Length Quantity (MIDI standard)
	// (UPDATED Signature and Implementation for uint8_t)
	//
	void write_vlq(std::vector<uint8_t> &out, uint32_t value) // CHANGED: Takes uint8_t vector
	{
		uint8_t buffer[5];
		size_t bytes_written = 0;
		do
		{
			buffer[bytes_written++] = static_cast<uint8_t>(value & 0x7F);
			value >>= 7;
		} while (value > 0);

		if (bytes_written == 0)
		{
			out.push_back(uint8_t{0x00}); // Push uint8_t literal
		}
		else
		{
			for (size_t i = bytes_written; i > 0; --i)
			{
				// Push uint8_t literal, casting result of bitwise op
				out.push_back(static_cast<uint8_t>(buffer[i - 1] | ((i == 1) ? 0x00 : 0x80)));
			}
		}
	}

	//
	// Reads XMI's specific variable-length format (sequence of 0x7F bytes + final byte)
	// (UPDATED Signature and Implementation for uint8_t)
	//
	uint32_t read_xmi_delta(std::span<const uint8_t> &data) // CHANGED: Takes uint8_t span
	{
		uint32_t delta = 0;
		// Assumes data is non-empty when needed
		while (data.front() == uint8_t{0x7F}) // Compare with uint8_t literal
		{
			delta += 0x7F; // Add the int literal value
			data = data.subspan(1);
		}
		delta += data.front(); // Directly add the uint8_t value
		data = data.subspan(1);
		return delta;
	}

	//
	// Structure to hold pending Note Off events (similar to original NOEVENTS)
	// (UPDATED to use uint8_t array)
	//
	struct PendingNoteOff
	{
		uint32_t delta_ticks;
		std::array<uint8_t, 3> event_data; // CHANGED: Uses uint8_t array

		bool operator>(const PendingNoteOff &other) const
		{
			return delta_ticks > other.delta_ticks;
		}
	};

	//
	// Constants (Unchanged)
	//
	constexpr uint32_t MIDI_HEADER_SIZE = 14;
	constexpr uint32_t MIDI_TRACK_HEADER_SIZE = 8;
	constexpr uint16_t MIDI_FORMAT = 0;
	constexpr uint16_t MIDI_NUM_TRACKS = 1;
	constexpr uint16_t MIDI_TIMEBASE = 960;
	constexpr uint32_t DEFAULT_TEMPO_BPM = 120;
	constexpr uint32_t DEFAULT_MICROSECS_PER_QN = (60 * 1000000) / DEFAULT_TEMPO_BPM;
	constexpr uint32_t XMI_FREQ = 120;
	constexpr uint32_t DEFAULT_TIMEBASE = (XMI_FREQ * 60) / DEFAULT_TEMPO_BPM; // 60
	constexpr uint32_t DEFAULT_QN = (60 * 1000000) / DEFAULT_TEMPO_BPM;
}

/*
===============================================================================
Function Name: xmiConverter (Refactored - Lean)

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
	// Read XMI data
	std::vector<uint8_t> xmi_file_buffer(song.length);
	{
		std::ifstream xmi_stream("XMI.GJD", std::ios::binary);
		xmi_stream.seekg(song.offset, std::ios::beg);
		xmi_stream.read(reinterpret_cast<char *>(xmi_file_buffer.data()), song.length);
	}
	std::span<const uint8_t> xmi_data = xmi_file_buffer;

	// Parse XMI Headers
	constexpr size_t initial_skip = 4 * 12 + 2;
	xmi_data = xmi_data.subspan(initial_skip);
	uint32_t lTIMB = read_be<uint32_t>(xmi_data);
	xmi_data = xmi_data.subspan(lTIMB);
	if (std::memcmp(xmi_data.data(), "RBRN", 4) == 0)
	{
		xmi_data = xmi_data.subspan(4); // Skip "RBRN"
		xmi_data = xmi_data.subspan(4); // Skip extra 4 bytes
		uint16_t nBranch = read_be<uint16_t>(xmi_data);
		xmi_data = xmi_data.subspan(6 * nBranch);
	}
	xmi_data = xmi_data.subspan(4); // Skip 'EVNT'
	uint32_t lEVNT = read_be<uint32_t>(xmi_data);
	auto evnt_data = xmi_data.subspan(0, lEVNT);
	xmi_data = evnt_data;

	// Process EVNT chunk - first pass to decode XMI events
	std::vector<uint8_t> midi_decode;
	midi_decode.reserve(xmi_data.size() * 2);

	std::vector<PendingNoteOff> note_off_heap;
	note_off_heap.reserve(100);

	bool next_is_delta = true;
	uint32_t pending_delay = 0;

	while (!xmi_data.empty())
	{
		// Process delta time
		if (xmi_data.front() < 0x80)
		{
			uint32_t delay = read_xmi_delta(xmi_data);

			// Process any note-offs during this delay period
			while (!note_off_heap.empty() && note_off_heap.front().delta_ticks <= delay)
			{
				std::pop_heap(note_off_heap.begin(), note_off_heap.end(), std::greater<>{});
				PendingNoteOff note_off = note_off_heap.back();
				note_off_heap.pop_back();

				uint32_t no_delta = note_off.delta_ticks;

				// Write delta for this note-off event
				write_vlq(midi_decode, no_delta);
				midi_decode.push_back(static_cast<uint8_t>((note_off.event_data[0] & 0x0F) | 0x80));
				midi_decode.push_back(note_off.event_data[1]);
				midi_decode.push_back(0x7F);

				delay -= no_delta; // Reduce remaining delay

				// Adjust deltas for pending note-offs
				for (auto &pending : note_off_heap)
				{
					pending.delta_ticks -= no_delta;
				}
			}

			// Store any leftover delay for the next non-note-off event
			pending_delay = delay;
			next_is_delta = true;
		}
		else
		{
			if (next_is_delta)
			{
				write_vlq(midi_decode, pending_delay);
				pending_delay = 0;
			}
			else
			{
				midi_decode.push_back(0); // zero delta for consecutive events
			}

			next_is_delta = false;
			uint8_t status = xmi_data.front();
			xmi_data = xmi_data.subspan(1);

			if (status == 0xFF) // Meta event
			{
				uint8_t meta_type = xmi_data.front();
				xmi_data = xmi_data.subspan(1);

				midi_decode.push_back(status);
				midi_decode.push_back(meta_type);

				if (meta_type == 0x2F) // End of track
				{
					// Flush all pending note-offs before end of track
					uint32_t accumulated_delay = 0;
					while (!note_off_heap.empty())
					{
						std::pop_heap(note_off_heap.begin(), note_off_heap.end(), std::greater<>{});
						PendingNoteOff note_off = note_off_heap.back();
						note_off_heap.pop_back();

						accumulated_delay += note_off.delta_ticks;

						write_vlq(midi_decode, accumulated_delay);
						midi_decode.push_back(static_cast<uint8_t>((note_off.event_data[0] & 0x0F) | 0x80));
						midi_decode.push_back(note_off.event_data[1]);
						midi_decode.push_back(0x7F);

						accumulated_delay = 0;
					}

					midi_decode.push_back(0); // Length 0 for end of track
					break;
				}
				else // Other meta event
				{
					uint8_t length = xmi_data.front();
					xmi_data = xmi_data.subspan(1);
					midi_decode.push_back(length);

					midi_decode.insert(midi_decode.end(), xmi_data.begin(), xmi_data.begin() + length);
					xmi_data = xmi_data.subspan(length);
				}
			}
			else if ((status & 0xF0) == 0x80) // Note Off
			{
				midi_decode.push_back(status);
				midi_decode.push_back(xmi_data[0]); // Note number
				midi_decode.push_back(xmi_data[1]); // Velocity
				xmi_data = xmi_data.subspan(2);
			}
			else if ((status & 0xF0) == 0x90) // Note On
			{
				uint8_t note = xmi_data[0];
				uint8_t velocity = xmi_data[1];
				xmi_data = xmi_data.subspan(2);

				midi_decode.push_back(status);
				midi_decode.push_back(note);
				midi_decode.push_back(velocity);

				// CORRECTED: Read duration as MIDI VLQ instead of XMI delta
				uint32_t duration = read_vlq(xmi_data);

				if (velocity > 0 && duration > 0)
				{
					// Queue a note-off event
					note_off_heap.push_back({duration, {status, note, 0}});
					std::push_heap(note_off_heap.begin(), note_off_heap.end(), std::greater<>{});
				}
			}
			else if ((status & 0xF0) == 0xA0 ||
					 (status & 0xF0) == 0xB0 ||
					 (status & 0xF0) == 0xE0) // 2-byte data events
			{
				midi_decode.push_back(status);
				midi_decode.push_back(xmi_data[0]);
				midi_decode.push_back(xmi_data[1]);
				xmi_data = xmi_data.subspan(2);
			}
			else if ((status & 0xF0) == 0xC0 ||
					 (status & 0xF0) == 0xD0) // 1-byte data events
			{
				midi_decode.push_back(status);
				midi_decode.push_back(xmi_data[0]);
				xmi_data = xmi_data.subspan(1);
			}
			else if (status == 0xF0 || status == 0xF7) // SysEx events
			{
				midi_decode.push_back(status);
				uint8_t length = xmi_data.front();
				xmi_data = xmi_data.subspan(1);
				midi_decode.push_back(length);

				midi_decode.insert(midi_decode.end(), xmi_data.begin(), xmi_data.begin() + length);
				xmi_data = xmi_data.subspan(length);
			}
		}
	}

	// Second pass: Convert delta times based on tempo
	std::vector<uint8_t> midi_write;
	midi_write.reserve(midi_decode.size());

	uint32_t qnlen = DEFAULT_MICROSECS_PER_QN;
	const uint8_t *pos = midi_decode.data();
	const uint8_t *end = pos + midi_decode.size();

	while (pos < end)
	{
		// Read delta-time from intermediate format
		uint32_t delta = 0;
		while (*pos & 0x80)
		{
			delta += *pos++ & 0x7F;
			delta <<= 7;
		}
		delta += *pos++ & 0x7F;

		// Convert delta to MIDI timebase (precise calculation like original)
		double factor = static_cast<double>(MIDI_TIMEBASE) * DEFAULT_QN /
						(static_cast<double>(qnlen) * DEFAULT_TIMEBASE);
		delta = static_cast<uint32_t>(static_cast<double>(delta) * factor + 0.5);

		// Write the updated delta
		write_vlq(midi_write, delta);

		// Process the MIDI event
		if (pos >= end)
			break;

		uint8_t status = *pos++;
		midi_write.push_back(status);

		// Handle different event types
		if ((status & 0xF0) == 0x80 ||
			(status & 0xF0) == 0x90 ||
			(status & 0xF0) == 0xA0 ||
			(status & 0xF0) == 0xB0 ||
			(status & 0xF0) == 0xE0) // 2-byte data events
		{
			midi_write.push_back(*pos++);
			midi_write.push_back(*pos++);
		}
		else if ((status & 0xF0) == 0xC0 ||
				 (status & 0xF0) == 0xD0) // 1-byte data events
		{
			midi_write.push_back(*pos++);
		}
		else if (status == 0xFF) // Meta event
		{
			uint8_t type = *pos++;
			midi_write.push_back(type);

			if (type == 0x51) // Tempo change
			{
				uint8_t len = *pos++;
				midi_write.push_back(len);

				// Copy tempo bytes
				uint8_t b1 = *pos++;
				uint8_t b2 = *pos++;
				uint8_t b3 = *pos++;
				midi_write.push_back(b1);
				midi_write.push_back(b2);
				midi_write.push_back(b3);

				// Update tempo for future delta calculations
				qnlen = (b1 << 16) | (b2 << 8) | b3;
			}
			else
			{
				uint8_t len = *pos++;
				midi_write.push_back(len);

				// Copy meta data
				for (uint8_t i = 0; i < len; i++)
				{
					midi_write.push_back(*pos++);
				}
			}
		}
		else if (status == 0xF0 || status == 0xF7) // SysEx event
		{
			uint8_t len = *pos++;
			midi_write.push_back(len);

			// Copy SysEx data
			for (uint8_t i = 0; i < len; i++)
			{
				midi_write.push_back(*pos++);
			}
		}
	}

	// Build final MIDI file
	std::vector<uint8_t> final_midi_output;
	final_midi_output.reserve(MIDI_HEADER_SIZE + MIDI_TRACK_HEADER_SIZE + midi_write.size());

	// Write header
	final_midi_output.insert(final_midi_output.end(), {'M', 'T', 'h', 'd'});
	write_be<uint32_t>(final_midi_output, 6);
	write_be<uint16_t>(final_midi_output, MIDI_FORMAT);
	write_be<uint16_t>(final_midi_output, MIDI_NUM_TRACKS);
	write_be<uint16_t>(final_midi_output, MIDI_TIMEBASE);

	// Write track
	final_midi_output.insert(final_midi_output.end(), {'M', 'T', 'r', 'k'});
	write_be<uint32_t>(final_midi_output, static_cast<uint32_t>(midi_write.size()));
	final_midi_output.insert(final_midi_output.end(), midi_write.begin(), midi_write.end());

	return final_midi_output;
}

//
// Play MIDI data using libADLMIDI
//
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

//
// Initialize and play a music track in a non-blocking way
//
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
// DEBUG
//
std::vector<uint8_t> _xmiConverter(const RLEntry &song)
{
	struct NOEVENTS
	{
		unsigned delta;
		std::array<unsigned char, 3> off;
	};

	std::array<NOEVENTS, 1000> off_events{{{0xFFFFFFFFL, {0, 0, 0}}}};

	auto comp_events = [](const NOEVENTS &a, const NOEVENTS &b)
	{
		return a.delta < b.delta;
	};

	std::array<unsigned char, 18> midiheader = {'M', 'T', 'h', 'd', 0, 0, 0, 6, 0, 0, 0, 1, 0, 60, 'M', 'T', 'r', 'k'};

	constexpr unsigned long DEFAULT_TEMPO = 120UL;
	constexpr unsigned long XMI_FREQ = 120UL;
	constexpr unsigned long DEFAULT_TIMEBASE = (XMI_FREQ * 60UL / DEFAULT_TEMPO);
	constexpr unsigned long DEFAULT_QN = (60UL * 1000000UL / DEFAULT_TEMPO);

	unsigned short timebase = 960;
	unsigned long qnlen = DEFAULT_QN;

	//
	// Find the XMI file in XMI.GJD
	//
	std::ifstream xmiData("XMI.GJD", std::ios::binary | std::ios::ate);
	std::vector<uint8_t> xmiFile(song.length);
	xmiData.seekg(song.offset);
	xmiData.read(reinterpret_cast<char *>(xmiFile.data()), song.length);

	unsigned char *cur = xmiFile.data();

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
			else if (0x80 == (*cur & 0xF0))
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			else if (0x90 == (*cur & 0xF0))
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
			// Key pressure
			else if (0xA0 == (*cur & 0xF0))
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			// Control Change
			else if (0xB0 == (*cur & 0xF0))
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			// Program Change
			else if (0xC0 == (*cur & 0xF0))
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			// Channel Pressure
			else if (0xD0 == (*cur & 0xF0))
			{
				*dcur++ = *cur++;
				*dcur++ = *cur++;
			}
			// Pitch Bend
			else if (0xE0 == (*cur & 0xF0))
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

	std::vector<unsigned char> midi_write(xmiFile.size() * 2);

	unsigned char *tcur = midi_write.data();

	unsigned char *pos = midi_decode.data();

	while (pos < dcur)
	{
		// first delta-time
		unsigned delta = 0;
		while (*pos & 0x80)
		{
			delta += *pos++ & 0x7F;
			delta <<= 7;
		}
		delta += *pos++ & 0x7F;

		// change delta here!!
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
		// last -  event

		// Note Off
		if (0x80 == (*pos & 0xF0))
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		// Note On
		else if (0x90 == (*pos & 0xF0))
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		// Key Pressure
		else if (0xA0 == (*pos & 0xF0))
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		// Control Change
		else if (0xB0 == (*pos & 0xF0))
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		// Program Change
		else if (0xC0 == (*pos & 0xF0))
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		// Channel Pressure
		else if (0xD0 == (*pos & 0xF0))
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		// Pitch Bend
		else if (0xE0 == (*pos & 0xF0))
		{
			*tcur++ = *pos++;
			*tcur++ = *pos++;
			*tcur++ = *pos++;
		}
		else if (0xF0 == *pos)
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
		else if (0xF7 == *pos)
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
		else if (0xFF == *pos)
		{
			*tcur++ = *pos++;
			if (0x51 == *pos)
			{
				*tcur++ = *pos++;
				*tcur++ = *pos++;
				qnlen = (*(unsigned char *)(pos) << 16) + (*(unsigned char *)(pos + 1) << 8) + *(unsigned char *)(pos + 2);
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

	//
	// Output
	//
	std::vector<uint8_t> midiData;

	unsigned short swappedTimebase = _byteswap_ushort(timebase); // Little Endian
	midiheader[12] = static_cast<unsigned char>(swappedTimebase & 0xFF);
	midiheader[13] = static_cast<unsigned char>(swappedTimebase >> 8);

	midiData.insert(midiData.end(), midiheader.begin(), midiheader.end());

	unsigned long bs_tlen = _byteswap_ulong(static_cast<unsigned long>(tlen));
	midiData.insert(midiData.end(), reinterpret_cast<const char *>(&bs_tlen), reinterpret_cast<const char *>(&bs_tlen) + sizeof(unsigned));

	midiData.insert(midiData.end(), midi_write.begin(), midi_write.end());

	return midiData;
}