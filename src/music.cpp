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
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <audioclient.h>
#include <mmdeviceapi.h>
#include <mmsystem.h>
#include <functiondiscoverykeys_devpkey.h>

#pragma comment(lib, "winmm.lib")

//
// MIDI Library
//
#include <adlmidi.h>

//
// TinySoundFont for SF2 Wavetable synthesis
//
#define TSF_IMPLEMENTATION
#include "schellingb/tsf.h"
//------------------------------------------------------------------------------
// Choose the most widely available emulator IDs for OPL2 and OPL3.  Older
// versions of libADLMIDI may not define the newer YMFM constants, so fall back
// to alternatives when needed.
//------------------------------------------------------------------------------
#if defined(ADLMIDI_EMU_YMFM_OPL2)
#define V64TNG_EMU_OPL2 ADLMIDI_EMU_YMFM_OPL2
#elif defined(ADLMIDI_EMU_MAME_OPL2)
#define V64TNG_EMU_OPL2 ADLMIDI_EMU_MAME_OPL2
#elif defined(ADLMIDI_EMU_DOSBOX)
#define V64TNG_EMU_OPL2 ADLMIDI_EMU_DOSBOX
#else
#define V64TNG_EMU_OPL2 ADLMIDI_EMU_OPAL
#endif

#if defined(ADLMIDI_EMU_YMFM_OPL3)
#define V64TNG_EMU_OPL3 ADLMIDI_EMU_YMFM_OPL3
#elif defined(ADLMIDI_EMU_NUKED)
#define V64TNG_EMU_OPL3 ADLMIDI_EMU_NUKED
#elif defined(ADLMIDI_EMU_DOSBOX)
#define V64TNG_EMU_OPL3 ADLMIDI_EMU_DOSBOX
#else
#define V64TNG_EMU_OPL3 ADLMIDI_EMU_OPAL
#endif

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
				decodeIt = std::copy_n(it, textlen, decodeIt);
				it += textlen;
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
Function Name: PlayMIDI_GeneralMIDI

Description:
	- Plays the MIDI data using the Windows MIDI API (General MIDI).
	  This uses the default Windows MIDI synthesizer.

Parameters:
	- const std::vector<uint8_t> &midiData: The MIDI data to be played.
	- bool isTransient: Indicates whether the song is transient or not.
===============================================================================
*/
void PlayMIDI_GeneralMIDI(const std::vector<uint8_t> &midiData, bool isTransient)
{
#ifdef _WIN32
	// Parse MIDI file header
	if (midiData.size() < 14)
	{
		std::cerr << "ERROR: MIDI data too small." << std::endl;
		return;
	}

	if (midiData[0] != 'M' || midiData[1] != 'T' || midiData[2] != 'h' || midiData[3] != 'd')
	{
		std::cerr << "ERROR: Invalid MIDI header." << std::endl;
		return;
	}

	uint16_t timeDivision = (static_cast<uint16_t>(midiData[12]) << 8) | midiData[13];

	size_t trackStart = 14;
	while (trackStart + 8 < midiData.size())
	{
		if (midiData[trackStart] == 'M' && midiData[trackStart + 1] == 'T' &&
			midiData[trackStart + 2] == 'r' && midiData[trackStart + 3] == 'k')
			break;
		trackStart++;
	}
	if (trackStart + 8 >= midiData.size())
	{
		std::cerr << "ERROR: Could not find MIDI track." << std::endl;
		return;
	}

	uint32_t trackLength = (static_cast<uint32_t>(midiData[trackStart + 4]) << 24) |
						   (static_cast<uint32_t>(midiData[trackStart + 5]) << 16) |
						   (static_cast<uint32_t>(midiData[trackStart + 6]) << 8) |
						   static_cast<uint32_t>(midiData[trackStart + 7]);

	size_t dataStart = trackStart + 8;
	size_t dataEnd = std::min(dataStart + static_cast<size_t>(trackLength), midiData.size());

	// First pass: find the first tempo so we can set the initial tempo property
	auto readVarLen = [&](size_t &pos) -> uint32_t
	{
		uint32_t v = 0;
		uint8_t b;
		do
		{
			if (pos >= dataEnd)
				return v;
			b = midiData[pos++];
			v = (v << 7) | (b & 0x7F);
		} while (b & 0x80);
		return v;
	};

	uint32_t initialTempo = 500000; // default 120 BPM
	{
		size_t pos = dataStart;
		uint8_t runningStatus = 0;
		while (pos < dataEnd)
		{
			( void ) readVarLen(pos); // skip delta
			if (pos >= dataEnd)
				break;

			uint8_t b = midiData[pos];
			if (b == 0xFF)
			{
				pos++;
				if (pos >= dataEnd)
					break;
				uint8_t metaType = midiData[pos++];
				uint32_t metaLen = readVarLen(pos);
				if (metaType == 0x51 && metaLen >= 3 && pos + 3 <= dataEnd)
				{
					initialTempo = (static_cast<uint32_t>(midiData[pos]) << 16) |
									(static_cast<uint32_t>(midiData[pos + 1]) << 8) |
									static_cast<uint32_t>(midiData[pos + 2]);
					break; // first tempo found
				}
				pos += metaLen;
				continue;
			}
			else if (b == 0xF0 || b == 0xF7)
			{
				pos++;
				uint32_t sysexLen = readVarLen(pos);
				pos += sysexLen;
				continue;
			}

			uint8_t status = b;
			if (status & 0x80)
			{
				runningStatus = status;
				pos++;
			}
			else
			{
				status = runningStatus;
			}

			uint8_t cmd = status & 0xF0;
			if (cmd == 0x80 || cmd == 0x90 || cmd == 0xA0 || cmd == 0xB0 || cmd == 0xE0)
			{
				pos += 2;
			}
			else if (cmd == 0xC0 || cmd == 0xD0)
			{
				pos += 1;
			}
			else
			{
				break;
			}
		}
	}

	HMIDISTRM hStream = nullptr;
	UINT deviceId = static_cast<UINT>(MIDI_MAPPER);
	MMRESULT r = midiStreamOpen(&hStream, &deviceId, 1, 0, 0, CALLBACK_NULL);
	if (r != MMSYSERR_NOERROR || !hStream)
	{
		std::cerr << "ERROR: midiStreamOpen failed." << std::endl;
		return;
	}

	// Set time division and initial tempo
	MIDIPROPTIMEDIV divProp = {};
	divProp.cbStruct = sizeof(divProp);
	divProp.dwTimeDiv = timeDivision;
	midiStreamProperty(hStream, reinterpret_cast<LPBYTE>(&divProp), MIDIPROP_SET | MIDIPROP_TIMEDIV);

	MIDIPROPTEMPO tempoProp = {};
	tempoProp.cbStruct = sizeof(tempoProp);
	tempoProp.dwTempo = initialTempo;
	midiStreamProperty(hStream, reinterpret_cast<LPBYTE>(&tempoProp), MIDIPROP_SET | MIDIPROP_TEMPO);

	// Volume
	uint16_t vol = static_cast<uint16_t>(state.music_volume * 0xFFFF);
	DWORD volume = (static_cast<DWORD>(vol) << 16) | vol;
	midiOutSetVolume(reinterpret_cast<HMIDIOUT>(hStream), volume);

	// Build stream events
	// NOTE: WinMM MIDI streaming buffers are an array of DWORDs.
	// Each SHORT event is exactly 3 DWORDs: delta, streamId, dwEvent.
	// Writing sizeof(MIDIEVENT) adds an extra DWORD and corrupts the stream.
	std::vector<DWORD> stream;
	stream.reserve((dataEnd - dataStart) * 2);

	auto appendEvent = [&](DWORD delta, DWORD evt)
	{
		stream.push_back(delta);
		stream.push_back(0);
		stream.push_back(evt);
	};

	state.music_playing = true;
	uint8_t runningStatus = 0;
	bool wroteTempo = false;

	// Inject the initial tempo at delta 0 to ensure correct speed from the start
	appendEvent(0, MEVT_TEMPO | initialTempo);
	wroteTempo = true;

	size_t pos = dataStart;
	while (pos < dataEnd)
	{
		uint32_t delta = readVarLen(pos);
		if (pos >= dataEnd)
			break;

		uint8_t b = midiData[pos];
		if (b == 0xFF)
		{
			pos++;
			if (pos >= dataEnd)
				break;
			uint8_t metaType = midiData[pos++];
			uint32_t metaLen = readVarLen(pos);

			if (metaType == 0x2F)
			{
				break; // End of track
			}
			else if (metaType == 0x51 && metaLen == 3 && pos + 3 <= dataEnd)
			{
				uint32_t tempo = (static_cast<uint32_t>(midiData[pos]) << 16) |
								(static_cast<uint32_t>(midiData[pos + 1]) << 8) |
								static_cast<uint32_t>(midiData[pos + 2]);
				appendEvent(delta, MEVT_TEMPO | tempo);
				wroteTempo = true;
			}
			pos += metaLen;
			continue;
		}
		else if (b == 0xF0 || b == 0xF7)
		{
			pos++;
			uint32_t sysexLen = readVarLen(pos);
			pos += sysexLen;
			continue;
		}

		uint8_t status = b;
		if (status & 0x80)
		{
			runningStatus = status;
			pos++;
		}
		else
		{
			status = runningStatus;
		}

		uint8_t cmd = status & 0xF0;
		DWORD msg = status;
		if (cmd == 0x80 || cmd == 0x90 || cmd == 0xA0 || cmd == 0xB0 || cmd == 0xE0)
		{
			if (pos + 2 > dataEnd)
				break;
			msg |= (static_cast<DWORD>(midiData[pos]) << 8);
			msg |= (static_cast<DWORD>(midiData[pos + 1]) << 16);
			pos += 2;
			appendEvent(delta, MEVT_SHORTMSG | msg);
		}
		else if (cmd == 0xC0 || cmd == 0xD0)
		{
			if (pos + 1 > dataEnd)
				break;
			msg |= (static_cast<DWORD>(midiData[pos]) << 8);
			pos += 1;
			appendEvent(delta, MEVT_SHORTMSG | msg);
		}
		else
		{
			break;
		}
	}

	if (!wroteTempo)
	{
		appendEvent(0, MEVT_TEMPO | 500000);
	}

	MIDIHDR hdr{};
	hdr.lpData = reinterpret_cast<LPSTR>(stream.data());
	hdr.dwBufferLength = static_cast<DWORD>(stream.size() * sizeof(DWORD));
	hdr.dwBytesRecorded = hdr.dwBufferLength;

	if (midiOutPrepareHeader(reinterpret_cast<HMIDIOUT>(hStream), &hdr, sizeof(MIDIHDR)) != MMSYSERR_NOERROR)
	{
		std::cerr << "ERROR: midiOutPrepareHeader failed." << std::endl;
		midiStreamClose(hStream);
		state.music_playing = false;
		return;
	}

	if (midiStreamOut(hStream, &hdr, sizeof(MIDIHDR)) != MMSYSERR_NOERROR)
	{
		std::cerr << "ERROR: midiStreamOut failed." << std::endl;
		midiOutUnprepareHeader(reinterpret_cast<HMIDIOUT>(hStream), &hdr, sizeof(MIDIHDR));
		midiStreamClose(hStream);
		state.music_playing = false;
		return;
	}

	midiStreamRestart(hStream);

	while ((hdr.dwFlags & MHDR_DONE) == 0 && state.music_playing)
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(1));
	}

	if ((hdr.dwFlags & MHDR_DONE) == 0)
	{
		midiStreamStop(hStream);
		midiOutReset(reinterpret_cast<HMIDIOUT>(hStream));
	}

	midiOutUnprepareHeader(reinterpret_cast<HMIDIOUT>(hStream), &hdr, sizeof(MIDIHDR));
	midiOutReset(reinterpret_cast<HMIDIOUT>(hStream));
	midiStreamClose(hStream);

	state.music_playing = false;
#endif
}

/*
===============================================================================
Function Name: PlayMIDI_OPL

Description:
	- Plays the MIDI data using libADLMIDI (OPL2/OPL3 FM synthesis).
	  This function initializes the audio client, sets up the audio format,
	  and plays the MIDI data in a loop until the song ends or is stopped.

Parameters:
	- const std::vector<uint8_t> &midiData: The MIDI data to be played.
	- bool isTransient: Indicates whether the song is transient or not.
===============================================================================
*/
void PlayMIDI_OPL(const std::vector<uint8_t> &midiData, bool isTransient)
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
	if (state.music_mode == "opl2" || state.music_mode == "opl")
	{
		adl_switchEmulator(player, V64TNG_EMU_OPL2);
		adl_setNumChips(player, 1);
	}
	else if (state.music_mode == "dual_opl2")
	{
		adl_switchEmulator(player, V64TNG_EMU_OPL2);
		adl_setNumChips(player, 2);
	}
	else if (state.music_mode == "opl3")
	{
		adl_switchEmulator(player, V64TNG_EMU_OPL3);
		adl_setNumChips(player, 2);
	}
	else
	{
		std::cerr << "WARNING: Unknown music mode '" << state.music_mode << "', defaulting to opl3." << std::endl;
		adl_switchEmulator(player, V64TNG_EMU_OPL3);
		adl_setNumChips(player, 1);
	}

	// Apply bank selection and configure 4-op channels after bank change
	adl_setBank(player, state.midi_bank);

	if (state.music_mode == "opl3")
	{
		adl_setNumFourOpsChn(player, 6);
	}
	else
	{
		adl_setNumFourOpsChn(player, 0);
	}

	// Reset player to apply settings
	adl_reset(player);

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
Function Name: PlayMIDI_Wavetable

Description:
	- Plays the MIDI data using TinySoundFont with an SF2 soundfont.
	  This provides high-quality wavetable synthesis output via WASAPI.

Parameters:
	- const std::vector<uint8_t> &midiData: The MIDI data to be played.
	- bool isTransient: Indicates whether the song is transient or not.
===============================================================================
*/
void PlayMIDI_Wavetable(const std::vector<uint8_t> &midiData, bool isTransient)
{
#ifdef _WIN32
	// Load soundfont
	tsf *synth = tsf_load_filename(state.soundfont_path.c_str());
	if (!synth)
	{
		std::cerr << "ERROR: Failed to load soundfont: " << state.soundfont_path << std::endl;
		std::cerr << "Falling back to OPL3 synthesis." << std::endl;
		PlayMIDI_OPL(midiData, isTransient);
		return;
	}

	// Parse MIDI header
	if (midiData.size() < 14 ||
		midiData[0] != 'M' || midiData[1] != 'T' || midiData[2] != 'h' || midiData[3] != 'd')
	{
		std::cerr << "ERROR: Invalid MIDI header for wavetable." << std::endl;
		tsf_close(synth);
		return;
	}

	uint16_t timeDivision = (static_cast<uint16_t>(midiData[12]) << 8) | midiData[13];

	// Find track
	size_t trackStart = 14;
	while (trackStart + 8 < midiData.size())
	{
		if (midiData[trackStart] == 'M' && midiData[trackStart + 1] == 'T' &&
			midiData[trackStart + 2] == 'r' && midiData[trackStart + 3] == 'k')
			break;
		trackStart++;
	}
	if (trackStart + 8 >= midiData.size())
	{
		std::cerr << "ERROR: Could not find MIDI track for wavetable." << std::endl;
		tsf_close(synth);
		return;
	}

	uint32_t trackLength = (static_cast<uint32_t>(midiData[trackStart + 4]) << 24) |
						   (static_cast<uint32_t>(midiData[trackStart + 5]) << 16) |
						   (static_cast<uint32_t>(midiData[trackStart + 6]) << 8) |
						   static_cast<uint32_t>(midiData[trackStart + 7]);

	size_t dataStart = trackStart + 8;
	size_t dataEnd = std::min(dataStart + static_cast<size_t>(trackLength), midiData.size());

	// Initialize WASAPI
	HRESULT hr;
	IMMDeviceEnumerator *pEnumerator = nullptr;
	IMMDevice *pDevice = nullptr;
	IAudioClient *pAudioClient = nullptr;
	IAudioRenderClient *pRenderClient = nullptr;

	hr = CoInitialize(nullptr);
	if (FAILED(hr))
	{
		std::cerr << "ERROR: CoInitialize failed for wavetable." << std::endl;
		tsf_close(synth);
		return;
	}

	hr = CoCreateInstance(__uuidof(MMDeviceEnumerator), nullptr, CLSCTX_ALL,
						  __uuidof(IMMDeviceEnumerator), reinterpret_cast<void **>(&pEnumerator));
	if (FAILED(hr))
	{
		std::cerr << "ERROR: CoCreateInstance failed for wavetable." << std::endl;
		tsf_close(synth);
		CoUninitialize();
		return;
	}

	hr = pEnumerator->GetDefaultAudioEndpoint(eRender, eMultimedia, &pDevice);
	if (FAILED(hr))
	{
		std::cerr << "ERROR: GetDefaultAudioEndpoint failed for wavetable." << std::endl;
		pEnumerator->Release();
		tsf_close(synth);
		CoUninitialize();
		return;
	}

	hr = pDevice->Activate(__uuidof(IAudioClient), CLSCTX_ALL, nullptr, reinterpret_cast<void **>(&pAudioClient));
	if (FAILED(hr))
	{
		std::cerr << "ERROR: Activate audio client failed for wavetable." << std::endl;
		pDevice->Release();
		pEnumerator->Release();
		tsf_close(synth);
		CoUninitialize();
		return;
	}

	int sampleRate = 44100;
	WAVEFORMATEX wfx = {
		.wFormatTag = WAVE_FORMAT_IEEE_FLOAT,
		.nChannels = 2,
		.nSamplesPerSec = static_cast<DWORD>(sampleRate),
		.nAvgBytesPerSec = static_cast<DWORD>(sampleRate * 2 * sizeof(float)),
		.nBlockAlign = static_cast<WORD>(2 * sizeof(float)),
		.wBitsPerSample = 32,
		.cbSize = 0};

	hr = pAudioClient->Initialize(AUDCLNT_SHAREMODE_SHARED, 0, 500000, 0, &wfx, nullptr);
	if (FAILED(hr))
	{
		sampleRate = 48000;
		wfx.nSamplesPerSec = sampleRate;
		wfx.nAvgBytesPerSec = sampleRate * 2 * sizeof(float);
		hr = pAudioClient->Initialize(AUDCLNT_SHAREMODE_SHARED, 0, 500000, 0, &wfx, nullptr);
		if (FAILED(hr))
		{
			std::cerr << "ERROR: Audio client Initialize failed for wavetable." << std::endl;
			pAudioClient->Release();
			pDevice->Release();
			pEnumerator->Release();
			tsf_close(synth);
			CoUninitialize();
			return;
		}
	}

	// Configure TinySoundFont
	tsf_set_output(synth, TSF_STEREO_INTERLEAVED, sampleRate, 0.0f); // 0 = no global gain adjustment
	tsf_set_volume(synth, state.music_volume);

	hr = pAudioClient->GetService(__uuidof(IAudioRenderClient), reinterpret_cast<void **>(&pRenderClient));
	if (FAILED(hr))
	{
		std::cerr << "ERROR: GetService for IAudioRenderClient failed for wavetable." << std::endl;
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		tsf_close(synth);
		CoUninitialize();
		return;
	}

	UINT32 bufferFrameCount;
	hr = pAudioClient->GetBufferSize(&bufferFrameCount);
	if (FAILED(hr))
	{
		std::cerr << "ERROR: GetBufferSize failed for wavetable." << std::endl;
		pRenderClient->Release();
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		tsf_close(synth);
		CoUninitialize();
		return;
	}

	hr = pAudioClient->Start();
	if (FAILED(hr))
	{
		std::cerr << "ERROR: Audio client Start failed for wavetable." << std::endl;
		pRenderClient->Release();
		pAudioClient->Release();
		pDevice->Release();
		pEnumerator->Release();
		tsf_close(synth);
		CoUninitialize();
		return;
	}

	// MIDI parsing helpers
	auto readVarLen = [&](size_t &pos) -> uint32_t
	{
		uint32_t v = 0;
		uint8_t b;
		do
		{
			if (pos >= dataEnd)
				return v;
			b = midiData[pos++];
			v = (v << 7) | (b & 0x7F);
		} while (b & 0x80);
		return v;
	};

	// Playback state
	state.music_playing = true;
	size_t pos = dataStart;
	uint8_t runningStatus = 0;
	uint32_t tempo = 500000; // microseconds per quarter note (120 BPM default)
	double ticksPerSecond = static_cast<double>(timeDivision) * 1000000.0 / tempo;
	double samplesPerTick = sampleRate / ticksPerSecond;
	double sampleAccum = 0.0;

	while (state.music_playing && pos < dataEnd)
	{
		// Read delta time
		uint32_t delta = readVarLen(pos);
		if (pos >= dataEnd)
			break;

		// Render audio for this delta
		double samplesToRender = delta * samplesPerTick + sampleAccum;
		int wholeSamples = static_cast<int>(samplesToRender);
		sampleAccum = samplesToRender - wholeSamples;

		while (wholeSamples > 0 && state.music_playing)
		{
			UINT32 padding;
			hr = pAudioClient->GetCurrentPadding(&padding);
			if (FAILED(hr))
				break;

			UINT32 framesAvailable = bufferFrameCount - padding;
			if (framesAvailable == 0)
			{
				std::this_thread::sleep_for(std::chrono::milliseconds(1));
				continue;
			}

			UINT32 framesToRender = std::min(framesAvailable, static_cast<UINT32>(wholeSamples));

			BYTE *pData;
			hr = pRenderClient->GetBuffer(framesToRender, &pData);
			if (FAILED(hr))
				break;

			tsf_render_float(synth, reinterpret_cast<float *>(pData), static_cast<int>(framesToRender), 0);

			hr = pRenderClient->ReleaseBuffer(framesToRender, 0);
			if (FAILED(hr))
				break;

			wholeSamples -= framesToRender;
		}

		if (!state.music_playing)
			break;

		// Process MIDI event
		uint8_t b = midiData[pos];
		if (b == 0xFF)
		{
			// Meta event
			pos++;
			if (pos >= dataEnd)
				break;
			uint8_t metaType = midiData[pos++];
			uint32_t metaLen = readVarLen(pos);

			if (metaType == 0x2F)
			{
				break; // End of track
			}
			else if (metaType == 0x51 && metaLen >= 3 && pos + 3 <= dataEnd)
			{
				// Tempo change
				tempo = (static_cast<uint32_t>(midiData[pos]) << 16) |
						(static_cast<uint32_t>(midiData[pos + 1]) << 8) |
						static_cast<uint32_t>(midiData[pos + 2]);
				ticksPerSecond = static_cast<double>(timeDivision) * 1000000.0 / tempo;
				samplesPerTick = sampleRate / ticksPerSecond;
			}
			pos += metaLen;
			continue;
		}
		else if (b == 0xF0 || b == 0xF7)
		{
			// SysEx - skip
			pos++;
			uint32_t sysexLen = readVarLen(pos);
			pos += sysexLen;
			continue;
		}

		// Channel message
		uint8_t status = b;
		if (status & 0x80)
		{
			runningStatus = status;
			pos++;
		}
		else
		{
			status = runningStatus;
		}

		uint8_t cmd = status & 0xF0;
		uint8_t channel = status & 0x0F;

		if (cmd == 0x80)
		{
			// Note Off
			if (pos + 2 > dataEnd)
				break;
			uint8_t note = midiData[pos++];
			pos++; // velocity ignored for note off
			tsf_note_off(synth, static_cast<int>(channel), static_cast<int>(note));
		}
		else if (cmd == 0x90)
		{
			// Note On
			if (pos + 2 > dataEnd)
				break;
			uint8_t note = midiData[pos++];
			uint8_t velocity = midiData[pos++];
			if (velocity == 0)
			{
				tsf_note_off(synth, static_cast<int>(channel), static_cast<int>(note));
			}
			else
			{
				tsf_note_on(synth, static_cast<int>(channel), static_cast<int>(note), velocity / 127.0f);
			}
		}
		else if (cmd == 0xA0)
		{
			// Aftertouch - skip
			pos += 2;
		}
		else if (cmd == 0xB0)
		{
			// Control Change
			if (pos + 2 > dataEnd)
				break;
			uint8_t controller = midiData[pos++];
			uint8_t value = midiData[pos++];
			tsf_channel_midi_control(synth, static_cast<int>(channel), static_cast<int>(controller), static_cast<int>(value));
		}
		else if (cmd == 0xC0)
		{
			// Program Change
			if (pos + 1 > dataEnd)
				break;
			uint8_t program = midiData[pos++];
			tsf_channel_set_presetnumber(synth, static_cast<int>(channel), static_cast<int>(program), (channel == 9));
		}
		else if (cmd == 0xD0)
		{
			// Channel Pressure - skip
			pos += 1;
		}
		else if (cmd == 0xE0)
		{
			// Pitch Bend
			if (pos + 2 > dataEnd)
				break;
			uint8_t lsb = midiData[pos++];
			uint8_t msb = midiData[pos++];
			int pitchBend = (static_cast<int>(msb) << 7) | lsb;
			tsf_channel_set_pitchwheel(synth, static_cast<int>(channel), pitchBend);
		}
		else
		{
			// Unknown - skip
			break;
		}
	}

	// Cleanup
	state.music_playing = false;
	pAudioClient->Stop();
	pRenderClient->Release();
	pAudioClient->Release();
	pDevice->Release();
	pEnumerator->Release();
	tsf_close(synth);
	CoUninitialize();
#endif
}

/*
===============================================================================
Function Name: PlayMIDI

Description:
	- Dispatcher function that routes MIDI playback to the appropriate backend
	  based on the configured midiMode:
	  - "general": Uses Windows MIDI API (General MIDI synthesizer)
	  - "wavetable": Uses TinySoundFont with SF2 soundfont
	  - "opl2", "dual_opl2", "opl3": Uses libADLMIDI (FM synthesis)

Parameters:
	- const std::vector<uint8_t> &midiData: The MIDI data to be played.
	- bool isTransient: Indicates whether the song is transient or not.
===============================================================================
*/
void PlayMIDI(const std::vector<uint8_t> &midiData, bool isTransient)
{
	if (state.music_mode == "general")
	{
		PlayMIDI_GeneralMIDI(midiData, isTransient);
	}
	else if (state.music_mode == "wavetable")
	{
		PlayMIDI_Wavetable(midiData, isTransient);
	}
	else
	{
		// Default to OPL synthesis for opl2, dual_opl2, opl3, or any other value
		PlayMIDI_OPL(midiData, isTransient);
	}
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
	state.midi_bank = config.value("midiBank", 0);
	state.soundfont_path = config.value("soundFont", "default.sf2");

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

/*
===============================================================================
Function Name: pushMainSong

Description:
	- Pushes the current main song onto the stack and sets a new main song.
	  This allows for restoring the previous main song later.

Parameters:
	- const std::string &songName: The name of the new main song to be played.
===============================================================================
*/
void pushMainSong(const std::string &songName)
{
	if (!state.current_song.empty())
	{
		state.song_stack.emplace_back(state.current_song, state.main_song_position);
	}
	state.current_song = songName;
	state.main_song_position = 0.0;
	xmiPlay(songName, false);
}

/*
===============================================================================
Function Name: popMainSong

Description:

===============================================================================
*/
void popMainSong()
{
	if (!state.song_stack.empty())
	{
		auto entry = state.song_stack.back();
		state.song_stack.pop_back();
		state.current_song = entry.first;
		state.main_song_position = entry.second;
		xmiPlay(state.current_song, false);
	}
}