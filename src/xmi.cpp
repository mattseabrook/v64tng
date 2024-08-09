// xmi.cpp

#include <cstring>
#include <algorithm>
#include <vector>
#include <array>
#include <cstdint>
#include <fstream>
#include <filesystem>
#include <windows.h>
#include <iostream>
#include <mmsystem.h>

#include "xmi.h"
#include "rl.h"

/*
===============================================================================
Function Name: xmiConverter

Description:
	- Converts XMI files to standard MIDI files, in memory as a
	vector of uint8_t

Parameters:
	- const std::string_view song: The name of the song to convert

Return:
	- std::vector<uint8_t>: Standard MIDI file data as a vector of uint8_t
===============================================================================
*/
std::vector<uint8_t> xmiConverter(const RLEntry& song)
{
	struct NOEVENTS
	{
		unsigned delta;
		std::array<unsigned char, 3> off;
	};

	std::array<NOEVENTS, 1000> off_events{ {{0xFFFFFFFFL, { 0, 0, 0 }}} };

	auto comp_events = [](const NOEVENTS& a, const NOEVENTS& b)
		{
			return a.delta < b.delta;
		};

	std::array<unsigned char, 18> midiheader = { 'M', 'T', 'h', 'd', 0, 0, 0, 6, 0, 0, 0, 1, 0, 60, 'M', 'T', 'r', 'k' };

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
	xmiData.read(reinterpret_cast<char*>(xmiFile.data()), song.length);

	unsigned char* cur = xmiFile.data();

	cur += 4 * 12 + 2;
	unsigned lTIMB = _byteswap_ulong(*reinterpret_cast<unsigned*>(cur));
	cur += 4;

	for (unsigned i = 0; i < lTIMB; i += 2)
	{
		cur += 2;
	}

	if (!std::memcmp(cur, "RBRN", 4))
	{
		cur += 8;
		unsigned short nBranch = *reinterpret_cast<unsigned short*>(cur);
		cur += 2;

		for (unsigned i = 0; i < nBranch; i++)
		{
			cur += 6;
		}
	}

	cur += 4;
	unsigned lEVNT = _byteswap_ulong(*reinterpret_cast<unsigned*>(cur));
	cur += 4;

	std::vector<unsigned char> midi_decode(xmiFile.size() * 2);

	unsigned char* dcur = midi_decode.data();

	int next_is_delta = 1;
	unsigned char* st = cur;
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

	unsigned char* tcur = midi_write.data();

	unsigned char* pos = midi_decode.data();

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
				qnlen = (*(unsigned char*)(pos) << 16) + (*(unsigned char*)(pos + 1) << 8) + *(unsigned char*)(pos + 2);
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

	unsigned short swappedTimebase = _byteswap_ushort(timebase);    // Little Endian
	midiheader[12] = static_cast<unsigned char>(swappedTimebase & 0xFF);
	midiheader[13] = static_cast<unsigned char>(swappedTimebase >> 8);

	midiData.insert(midiData.end(), midiheader.begin(), midiheader.end());

	unsigned long bs_tlen = _byteswap_ulong(static_cast<unsigned long>(tlen));
	midiData.insert(midiData.end(), reinterpret_cast<const char*>(&bs_tlen), reinterpret_cast<const char*>(&bs_tlen) + sizeof(unsigned));

	midiData.insert(midiData.end(), midi_write.begin(), midi_write.end());

	return midiData;
}


//
// MIDI Playback
//
void PlayMIDI(const std::vector<uint8_t>& midiData) {
	// Create a temporary MIDI file in the user's %TEMP% directory
	wchar_t tempPath[MAX_PATH];
	GetTempPathW(MAX_PATH, tempPath);

	wchar_t tempFile[MAX_PATH];
	GetTempFileNameW(tempPath, L"MIDI", 0, tempFile);

	std::ofstream file(tempFile, std::ios::binary);
	file.write(reinterpret_cast<const char*>(midiData.data()), midiData.size());
	file.close();

	std::wstring tempFilePath = tempFile;

	// Open the MIDI file
	std::wstring openCommand = L"open \"" + tempFilePath + L"\" type sequencer alias midiFile";
	mciSendStringW(openCommand.c_str(), NULL, 0, NULL);

	// Play the MIDI file
	mciSendStringW(L"play midiFile from 0", NULL, 0, NULL);

	// Wait for user input to stop playback
	std::cout << "Press any key to stop playback..." << std::endl;
	std::cin.get();

	// Close the MIDI device
	mciSendStringW(L"close midiFile", NULL, 0, NULL);

	// Delete the temporary file
	DeleteFileW(tempFilePath.c_str());
}