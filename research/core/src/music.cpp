// music.cpp

#include <cstring>
#include <vector>
#include <cstdint>
#include <cctype>
#include <string>
#include <fstream>
#include <bit>
#include <algorithm>
#include <array>
#include <iostream>
#include <optional>
#include <string_view>
#include <thread>
#include <chrono>
#include <filesystem>
#include <memory>
#include <mutex>
#include <unordered_map>

// Windows Multimedia
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <windows.h>
#include <audioclient.h>
#include <avrt.h>
#include <mmsystem.h>
#include <mmdeviceapi.h>
#include <functiondiscoverykeys_devpkey.h>

#pragma comment(lib, "avrt.lib")
#pragma comment(lib, "winmm.lib")

//
// MIDI Library
//
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wmacro-redefined"
#endif
#include <adlmidi.h>
#ifdef __clang__
#pragma clang diagnostic pop
#endif

#define TSF_IMPLEMENTATION
#include "schellingb/tsf.h"
//------------------------------------------------------------------------------
// Choose the most widely available emulator IDs for OPL2 and OPL3.  Older
// versions of libADLMIDI may not define the newer YMFM constants, so fall back
// to alternatives when needed.
//------------------------------------------------------------------------------
#if defined(ADLMIDI_EMU_YMFM_OPL2)
#define PHANTOM_EMU_OPL2 ADLMIDI_EMU_YMFM_OPL2
#elif defined(ADLMIDI_EMU_MAME_OPL2)
#define PHANTOM_EMU_OPL2 ADLMIDI_EMU_MAME_OPL2
#elif defined(ADLMIDI_EMU_DOSBOX)
#define PHANTOM_EMU_OPL2 ADLMIDI_EMU_DOSBOX
#else
#define PHANTOM_EMU_OPL2 ADLMIDI_EMU_OPAL
#endif

#if defined(ADLMIDI_EMU_YMFM_OPL3)
#define PHANTOM_EMU_OPL3 ADLMIDI_EMU_YMFM_OPL3
#elif defined(ADLMIDI_EMU_NUKED)
#define PHANTOM_EMU_OPL3 ADLMIDI_EMU_NUKED
#elif defined(ADLMIDI_EMU_DOSBOX)
#define PHANTOM_EMU_OPL3 ADLMIDI_EMU_DOSBOX
#else
#define PHANTOM_EMU_OPL3 ADLMIDI_EMU_OPAL
#endif

#include "game.h"
#include "music.h"

std::vector<uint8_t> xmiConverter(const std::vector<uint8_t> &xmi);

namespace
{
std::string toLowerCopy(std::string_view value)
{
	std::string out(value);
	std::transform(out.begin(), out.end(), out.begin(),
		[](unsigned char ch)
		{
			return static_cast<char>(std::tolower(ch));
		});
	return out;
}

std::string normalizePublicMusicMode(std::string_view mode)
{
	const std::string lowered = toLowerCopy(mode);
	if (lowered == "general" || lowered == "wavetable")
		return lowered;
	return "opl";
}

std::filesystem::path resolveMusicAssetFile(const char *filename)
{
	const std::filesystem::path directPath(filename);
	if (std::filesystem::exists(directPath))
	{
		return directPath;
	}

	const std::vector<std::string> bases = {
		config.value("pluginAssetPath", std::string()),
		config.value("assetPath", std::string()),
		config.value("mediaFolder", std::string())
	};

	for (const auto &base : bases)
	{
		if (base.empty())
		{
			continue;
		}

		std::filesystem::path candidate = std::filesystem::path(base) / filename;
		if (std::filesystem::exists(candidate))
		{
			return candidate;
		}
	}

	return directPath;
}

std::filesystem::path resolveMusicAssetFile(const std::string &filename)
{
	return resolveMusicAssetFile(filename.c_str());
}

std::filesystem::path resolveSoundFontFile()
{
	if (!state.soundfont_path.empty())
	{
		const std::filesystem::path explicitPath = resolveMusicAssetFile(state.soundfont_path);
		if (std::filesystem::exists(explicitPath))
			return explicitPath;
	}

	const std::vector<std::string> bases = {
		config.value("pluginAssetPath", std::string()),
		config.value("assetPath", std::string()),
		config.value("mediaFolder", std::string())
	};

	for (const auto &base : bases)
	{
		if (base.empty())
			continue;

		std::error_code ec;
		const std::filesystem::path dir(base);
		if (!std::filesystem::exists(dir, ec) || !std::filesystem::is_directory(dir, ec))
			continue;

		std::vector<std::filesystem::path> candidates;
		for (const auto &entry : std::filesystem::directory_iterator(dir, ec))
		{
			if (ec || !entry.is_regular_file())
				continue;

			std::string ext = entry.path().extension().string();
			std::transform(ext.begin(), ext.end(), ext.begin(),
				[](unsigned char ch)
				{
					return static_cast<char>(std::tolower(ch));
				});
			if (ext == ".sf2")
				candidates.push_back(entry.path());
		}

		if (!candidates.empty())
		{
			std::sort(candidates.begin(), candidates.end(),
				[](const std::filesystem::path &lhs, const std::filesystem::path &rhs)
				{
					return toLowerCopy(lhs.filename().string()) < toLowerCopy(rhs.filename().string());
				});
			return candidates.front();
		}
	}

	return {};
}

struct CachedRLEntry
{
	uint32_t offset = 0;
	uint32_t length = 0;
};

struct MidiTrackInfo
{
	uint16_t timeDivision = 0;
	size_t dataStart = 0;
	size_t dataEnd = 0;
};

std::mutex g_musicCacheMutex;
std::unordered_map<std::string, CachedRLEntry> g_songIndex;
std::unordered_map<std::string, std::shared_ptr<const std::vector<uint8_t>>> g_songMidiCache;
std::filesystem::path g_songIndexRlPath;
std::filesystem::path g_songIndexGjdPath;

std::optional<MidiTrackInfo> parseMidiTrack(const std::vector<uint8_t> &midiData)
{
	if (midiData.size() < 14 ||
		midiData[0] != 'M' || midiData[1] != 'T' || midiData[2] != 'h' || midiData[3] != 'd')
	{
		return std::nullopt;
	}

	MidiTrackInfo info;
	info.timeDivision = (static_cast<uint16_t>(midiData[12]) << 8) | midiData[13];

	size_t trackStart = 14;
	while (trackStart + 8 < midiData.size())
	{
		if (midiData[trackStart] == 'M' && midiData[trackStart + 1] == 'T' &&
			midiData[trackStart + 2] == 'r' && midiData[trackStart + 3] == 'k')
		{
			break;
		}
		++trackStart;
	}

	if (trackStart + 8 >= midiData.size())
		return std::nullopt;

	const uint32_t trackLength =
		(static_cast<uint32_t>(midiData[trackStart + 4]) << 24) |
		(static_cast<uint32_t>(midiData[trackStart + 5]) << 16) |
		(static_cast<uint32_t>(midiData[trackStart + 6]) << 8) |
		static_cast<uint32_t>(midiData[trackStart + 7]);

	info.dataStart = trackStart + 8;
	info.dataEnd = (std::min)(info.dataStart + static_cast<size_t>(trackLength), midiData.size());
	return info;
}

uint32_t readVarLen(const std::vector<uint8_t> &data, size_t &pos, size_t end)
{
	uint32_t value = 0;
	uint8_t byte = 0;
	do
	{
		if (pos >= end)
			return value;
		byte = data[pos++];
		value = (value << 7) | (byte & 0x7F);
	}
	while (byte & 0x80);
	return value;
}

#ifdef _WIN32
HANDLE g_musicStopEvent = nullptr;
HMIDIOUT g_generalMidiOut = nullptr;
std::mutex g_generalMidiMutex;
std::filesystem::path g_lastLoggedSoundFontPath;

bool shouldStopMusicPlayback()
{
	return !state.music_playing || (g_musicStopEvent && WaitForSingleObject(g_musicStopEvent, 0) == WAIT_OBJECT_0);
}

bool ensureGeneralMidiOutput()
{
	std::lock_guard<std::mutex> lock(g_generalMidiMutex);
	if (g_generalMidiOut)
		return true;

	UINT deviceId = static_cast<UINT>(MIDI_MAPPER);
	if (midiOutOpen(&g_generalMidiOut, deviceId, 0, 0, CALLBACK_NULL) != MMSYSERR_NOERROR || !g_generalMidiOut)
	{
		g_generalMidiOut = nullptr;
		return false;
	}

	return true;
}

void resetGeneralMidiOutput()
{
	std::lock_guard<std::mutex> lock(g_generalMidiMutex);
	if (g_generalMidiOut)
		midiOutReset(g_generalMidiOut);
}

void closeGeneralMidiOutput()
{
	std::lock_guard<std::mutex> lock(g_generalMidiMutex);
	if (!g_generalMidiOut)
		return;

	midiOutReset(g_generalMidiOut);
	midiOutClose(g_generalMidiOut);
	g_generalMidiOut = nullptr;
}

void setGeneralMidiOutputVolume(float volume)
{
	std::lock_guard<std::mutex> lock(g_generalMidiMutex);
	if (!g_generalMidiOut)
		return;

	const uint16_t volume16 = static_cast<uint16_t>(std::clamp(volume, 0.0f, 1.0f) * 0xFFFF);
	const DWORD streamVolume = (static_cast<DWORD>(volume16) << 16) | volume16;
	midiOutSetVolume(g_generalMidiOut, streamVolume);
}

bool sendGeneralMidiShortMsg(DWORD msg)
{
	std::lock_guard<std::mutex> lock(g_generalMidiMutex);
	return g_generalMidiOut && midiOutShortMsg(g_generalMidiOut, msg) == MMSYSERR_NOERROR;
}

bool waitForMidiDeadline(const std::chrono::steady_clock::time_point &deadline)
{
	while (!shouldStopMusicPlayback())
	{
		const auto now = std::chrono::steady_clock::now();
		if (now >= deadline)
			return true;

		const auto remaining = deadline - now;
		if (remaining > std::chrono::milliseconds(2))
		{
			const auto coarseWait = std::chrono::duration_cast<std::chrono::milliseconds>(remaining - std::chrono::milliseconds(1));
			const auto sleepFor = (std::min)(coarseWait, std::chrono::milliseconds(50));
			if (g_musicStopEvent)
			{
				const auto waitMs = std::chrono::duration_cast<std::chrono::milliseconds>(sleepFor).count();
				if (waitMs > 0 && WaitForSingleObject(g_musicStopEvent, static_cast<DWORD>(waitMs)) == WAIT_OBJECT_0)
					return false;
			}
			else
			{
				std::this_thread::sleep_for(sleepFor);
			}
		}
		else
		{
			std::this_thread::yield();
		}
	}

	return false;
}

void logResolvedSoundFontFile(const std::filesystem::path &soundfontPath)
{
	if (soundfontPath.empty() || soundfontPath == g_lastLoggedSoundFontPath)
		return;

	g_lastLoggedSoundFontPath = soundfontPath;
	std::cout << "INFO: Wavetable SoundFont: " << soundfontPath.string() << std::endl;
}
#endif

std::string normalizeSongKey(std::string_view name)
{
	std::string key(name);
	std::transform(key.begin(), key.end(), key.begin(),
		[](unsigned char ch)
		{
			return static_cast<char>(std::tolower(ch));
		});
	return key;
}

std::string normalizeRlFilename(const char *rawName, size_t rawSize)
{
	std::string name(rawName, rawName + rawSize);
	if (auto nul = name.find('\0'); nul != std::string::npos)
		name.erase(nul);
	if (auto dot = name.find_last_of('.'); dot != std::string::npos)
		name.erase(dot);
	return normalizeSongKey(name);
}

bool ensureSongIndexLocked()
{
	const std::filesystem::path rlPath = resolveMusicAssetFile("XMI.RL");
	const std::filesystem::path gjdPath = resolveMusicAssetFile("XMI.GJD");
	if (!g_songIndex.empty() && rlPath == g_songIndexRlPath && gjdPath == g_songIndexGjdPath)
		return true;

	g_songIndex.clear();
	g_songMidiCache.clear();
	g_songIndexRlPath.clear();
	g_songIndexGjdPath.clear();

	std::ifstream rlFile(rlPath, std::ios::binary);
	if (!rlFile)
		return false;

	char block[20];
	while (rlFile.read(block, sizeof(block)))
	{
		const std::string key = normalizeRlFilename(block, 12);
		if (key.empty())
			continue;

		CachedRLEntry entry;
		std::memcpy(&entry.offset, block + 12, sizeof(entry.offset));
		std::memcpy(&entry.length, block + 16, sizeof(entry.length));
		g_songIndex[key] = entry;
	}

	g_songIndexRlPath = rlPath;
	g_songIndexGjdPath = gjdPath;
	return !g_songIndex.empty();
}

std::shared_ptr<const std::vector<uint8_t>> loadCachedMidiData(const std::string &songName)
{
	const std::string key = normalizeSongKey(songName);
	CachedRLEntry entry{};
	std::filesystem::path gjdPath;

	{
		std::lock_guard<std::mutex> lock(g_musicCacheMutex);
		if (auto it = g_songMidiCache.find(key); it != g_songMidiCache.end())
			return it->second;

		if (!ensureSongIndexLocked())
			return {};

		auto entryIt = g_songIndex.find(key);
		if (entryIt == g_songIndex.end())
			return {};

		entry = entryIt->second;
		gjdPath = g_songIndexGjdPath;
	}

	std::ifstream gjdFile(gjdPath, std::ios::binary);
	if (!gjdFile)
		return {};

	std::vector<uint8_t> xmiData(entry.length);
	gjdFile.seekg(entry.offset);
	gjdFile.read(reinterpret_cast<char *>(xmiData.data()), static_cast<std::streamsize>(xmiData.size()));
	if (gjdFile.gcount() != static_cast<std::streamsize>(xmiData.size()))
		return {};

	auto midiData = std::make_shared<const std::vector<uint8_t>>(xmiConverter(xmiData));
	{
		std::lock_guard<std::mutex> lock(g_musicCacheMutex);
		g_songMidiCache[key] = midiData;
	}
	return midiData;
}

#ifdef _WIN32
void ensureMusicStopEvent()
{
	if (!g_musicStopEvent)
		g_musicStopEvent = CreateEventW(nullptr, TRUE, FALSE, nullptr);
}

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

struct WasapiSession
{
	IMMDeviceEnumerator *enumerator = nullptr;
	IMMDevice *device = nullptr;
	IAudioClient *audioClient = nullptr;
	IAudioRenderClient *renderClient = nullptr;
	HANDLE bufferEvent = nullptr;
	UINT32 bufferFrameCount = 0;
	int sampleRate = 0;
	bool comInit = false;

	WasapiSession() = default;
	WasapiSession(const WasapiSession &) = delete;
	WasapiSession &operator=(const WasapiSession &) = delete;

	~WasapiSession()
	{
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

	bool init(WORD formatTag, WORD bitsPerSample, int preferredRate = 44100)
	{
		HRESULT hr = CoInitializeEx(nullptr, COINIT_MULTITHREADED);
		if (SUCCEEDED(hr))
			comInit = true;
		else if (hr != RPC_E_CHANGED_MODE)
			return false;

		hr = CoCreateInstance(__uuidof(MMDeviceEnumerator), nullptr, CLSCTX_ALL,
			__uuidof(IMMDeviceEnumerator), reinterpret_cast<void **>(&enumerator));
		if (FAILED(hr))
			return false;

		hr = enumerator->GetDefaultAudioEndpoint(eRender, eMultimedia, &device);
		if (FAILED(hr))
			return false;

		hr = device->Activate(__uuidof(IAudioClient), CLSCTX_ALL, nullptr,
			reinterpret_cast<void **>(&audioClient));
		if (FAILED(hr))
			return false;

		REFERENCE_TIME defaultPeriod = 0;
		REFERENCE_TIME minimumPeriod = 0;
		audioClient->GetDevicePeriod(&defaultPeriod, &minimumPeriod);

		WAVEFORMATEX wfx{};
		wfx.wFormatTag = formatTag;
		wfx.nChannels = 2;
		wfx.nSamplesPerSec = static_cast<DWORD>(preferredRate);
		wfx.wBitsPerSample = bitsPerSample;
		wfx.nBlockAlign = static_cast<WORD>(wfx.nChannels * wfx.wBitsPerSample / 8);
		wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;
		wfx.cbSize = 0;

		const DWORD streamFlags = AUDCLNT_STREAMFLAGS_EVENTCALLBACK;
		sampleRate = preferredRate;
		hr = audioClient->Initialize(AUDCLNT_SHAREMODE_SHARED, streamFlags, defaultPeriod, 0, &wfx, nullptr);
		if (FAILED(hr))
		{
			sampleRate = 48000;
			wfx.nSamplesPerSec = 48000;
			wfx.nBlockAlign = static_cast<WORD>(wfx.nChannels * wfx.wBitsPerSample / 8);
			wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;
			hr = audioClient->Initialize(AUDCLNT_SHAREMODE_SHARED, streamFlags, defaultPeriod, 0, &wfx, nullptr);
			if (FAILED(hr))
				return false;
		}

		bufferEvent = CreateEventW(nullptr, FALSE, FALSE, nullptr);
		if (!bufferEvent)
			return false;

		hr = audioClient->SetEventHandle(bufferEvent);
		if (FAILED(hr))
			return false;

		hr = audioClient->GetService(__uuidof(IAudioRenderClient), reinterpret_cast<void **>(&renderClient));
		if (FAILED(hr))
			return false;

		hr = audioClient->GetBufferSize(&bufferFrameCount);
		return SUCCEEDED(hr);
	}
};
#endif
}

void musicInit()
{
#ifdef _WIN32
	ensureMusicStopEvent();
#endif
}

void musicShutdown()
{
	state.music_playing = false;
#ifdef _WIN32
	if (g_musicStopEvent)
		SetEvent(g_musicStopEvent);
#endif
	if (state.music_thread.joinable())
		state.music_thread.join();

	std::lock_guard<std::mutex> lock(g_musicCacheMutex);
	g_songIndex.clear();
	g_songMidiCache.clear();
	g_songIndexRlPath.clear();
	g_songIndexGjdPath.clear();
#ifdef _WIN32
	closeGeneralMidiOutput();
	g_lastLoggedSoundFontPath.clear();
	if (g_musicStopEvent)
	{
		CloseHandle(g_musicStopEvent);
		g_musicStopEvent = nullptr;
	}
#endif
}

std::vector<uint8_t> xmiConverter(const std::vector<uint8_t> &xmi)
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

	// Iterator into provided XMI bytes (legacy RL/GJD container removed)
	auto it = xmi.begin();

	//
	// XMI Header, Branch skip
	//
	it += 4 * 12 + 2;
	uint32_t lTIMB = std::byteswap(*reinterpret_cast<const uint32_t *>(&*it));
	it += 4 + lTIMB;

	if (std::equal(it, it + 4, "RBRN"))
	{
		it += 8;
		uint16_t nBranch = *reinterpret_cast<const uint16_t *>(&*it);
		it += 2 + nBranch * 6;
	}

	it += 4;
	uint32_t lEVNT = std::byteswap(*reinterpret_cast<const uint32_t *>(&*it));
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
	uint16_t swappedTimebase = std::byteswap(timebase);
	header[12] = static_cast<uint8_t>(swappedTimebase & 0xFF);
	header[13] = static_cast<uint8_t>(swappedTimebase >> 8);

	midiData.insert(midiData.end(), header.begin(), header.end());
	uint32_t trackLen = static_cast<uint32_t>(std::distance(midiWrite.begin(), writeIt));
	uint32_t swappedTrackLen = std::byteswap(trackLen);
	midiData.insert(midiData.end(), reinterpret_cast<uint8_t *>(&swappedTrackLen), reinterpret_cast<uint8_t *>(&swappedTrackLen) + 4);
	midiData.insert(midiData.end(), midiWrite.begin(), writeIt);

	return midiData;
}

void PlayMIDI_OPL(const std::vector<uint8_t> &midiData, bool isTransient)
{
#ifdef _WIN32
	musicInit();
	ensureMusicStopEvent();
	WasapiSession session;
	if (!session.init(WAVE_FORMAT_PCM, 16))
		return;

	MmcssScope mmcss;
	const int actualSampleRate = session.sampleRate;
#endif

	struct ADL_MIDIPlayer *player = adl_init(actualSampleRate);
	if (!player)
	{
		std::cerr << "ERROR: Failed to initialize libADLMIDI." << std::endl;
		return;
	}

	// Customer-facing mode is just "opl"; the project bakes the ADLMIDI bank.
	adl_switchEmulator(player, PHANTOM_EMU_OPL3);
	adl_setNumChips(player, 2);
	adl_setBank(player, state.midi_bank);
	adl_setNumFourOpsChn(player, 6);

	// Reset player to apply settings
	adl_reset(player);

	if (adl_openData(player, midiData.data(), static_cast<unsigned long>(midiData.size())) < 0)
	{
		std::cerr << "ERROR: Failed to load MIDI data in libADLMIDI." << std::endl;
		adl_close(player);
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

	state.music_playing = true;
	const float gain = 6.0f;
	const int fadeSamples = static_cast<int>(0.5 * actualSampleRate); // 500ms fade-in
	int fadeCounter = 0;
	bool fadingIn = !isTransient && state.hasPlayedFirstSong; // Fade-in only for main songs after first play
	bool endedNaturally = false;

#ifdef _WIN32
	auto renderFrames = [&](BYTE *dst, UINT32 frameCount) -> bool
	{
		short *samplesPtr = reinterpret_cast<short *>(dst);
		const int requestedSamples = static_cast<int>(frameCount * 2u);
		const int generatedSamples = adl_play(player, requestedSamples, samplesPtr);
		const int clampedSamples = (std::max)(0, generatedSamples);
		for (int i = 0; i < clampedSamples; ++i)
		{
			float sample = static_cast<float>(samplesPtr[i]) * gain * state.music_volume;
			if (fadingIn && fadeCounter < fadeSamples)
			{
				const float fadeFactor = static_cast<float>(fadeCounter) / fadeSamples;
				sample *= fadeFactor;
				++fadeCounter;
			}
			samplesPtr[i] = static_cast<short>(std::clamp(sample, -32768.0f, 32767.0f));
		}

		const UINT32 generatedFrames = static_cast<UINT32>(clampedSamples / 2);
		const size_t totalBytes = static_cast<size_t>(frameCount) * sizeof(short) * 2u;
		const size_t writtenBytes = static_cast<size_t>(generatedFrames) * sizeof(short) * 2u;
		if (writtenBytes < totalBytes)
			std::memset(dst + writtenBytes, 0, totalBytes - writtenBytes);

		return generatedFrames > 0;
	};

	BYTE *pData = nullptr;
	HRESULT hr = session.renderClient->GetBuffer(session.bufferFrameCount, &pData);
	if (FAILED(hr))
	{
		state.music_playing = false;
		adl_close(player);
		return;
	}
	bool keepPlaying = renderFrames(pData, session.bufferFrameCount);
	hr = session.renderClient->ReleaseBuffer(session.bufferFrameCount, 0);
	if (FAILED(hr))
	{
		state.music_playing = false;
		adl_close(player);
		return;
	}
	if (!keepPlaying)
		endedNaturally = true;

	if (!endedNaturally)
	{
		hr = session.audioClient->Start();
		if (FAILED(hr))
		{
			state.music_playing = false;
			adl_close(player);
			return;
		}
	}

	HANDLE waitHandles[2] = {session.bufferEvent, g_musicStopEvent};
	const DWORD waitHandleCount = g_musicStopEvent ? 2u : 1u;
	while (state.music_playing && !endedNaturally)
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

		if (!keepPlaying)
			endedNaturally = true;
	}
#endif

	// Save position if main song is paused
	if (!isTransient)
	{
		state.main_song_position = adl_positionTell(player);
		state.hasPlayedFirstSong = true; // Mark that a main song has played
	}

	state.music_playing = false;
	adl_close(player);
}

void PlayMIDI_GeneralMIDI(const std::vector<uint8_t> &midiData, bool isTransient)
{
#ifdef _WIN32
	auto track = parseMidiTrack(midiData);
	if (!track)
		return;

	const uint16_t timeDivision = track->timeDivision;
	if (!timeDivision)
		return;

	const size_t dataStart = track->dataStart;
	const size_t dataEnd = track->dataEnd;

	if (!ensureGeneralMidiOutput())
	{
		std::cerr << "ERROR: midiOutOpen failed." << std::endl;
		return;
	}

	setGeneralMidiOutputVolume(state.music_volume);
	resetGeneralMidiOutput();

	state.music_playing = true;
	uint8_t runningStatus = 0;
	uint32_t tempo = 500000;
	uint64_t tickRemainder = 0;
	size_t pos = dataStart;
	const auto startedAt = std::chrono::steady_clock::now();
	auto nextEventTime = startedAt;

	while (pos < dataEnd && !shouldStopMusicPlayback())
	{
		const uint32_t delta = readVarLen(midiData, pos, dataEnd);
		if (pos >= dataEnd)
			break;

		if (delta)
		{
			const uint64_t deltaNsNumerator =
				static_cast<uint64_t>(delta) * static_cast<uint64_t>(tempo) * 1000ull + tickRemainder;
			nextEventTime += std::chrono::nanoseconds(deltaNsNumerator / timeDivision);
			tickRemainder = deltaNsNumerator % timeDivision;
			if (!waitForMidiDeadline(nextEventTime))
				break;
		}

		const uint8_t byte = midiData[pos];
		if (byte == 0xFF)
		{
			++pos;
			if (pos >= dataEnd)
				break;
			const uint8_t metaType = midiData[pos++];
			const uint32_t metaLen = readVarLen(midiData, pos, dataEnd);
			if (metaType == 0x2F)
				break;
			if (metaType == 0x51 && metaLen >= 3 && pos + 3 <= dataEnd)
			{
				tempo = (static_cast<uint32_t>(midiData[pos]) << 16) |
					(static_cast<uint32_t>(midiData[pos + 1]) << 8) |
					static_cast<uint32_t>(midiData[pos + 2]);
			}
			pos += metaLen;
			continue;
		}
		if (byte == 0xF0 || byte == 0xF7)
		{
			++pos;
			pos += readVarLen(midiData, pos, dataEnd);
			continue;
		}

		uint8_t status = byte;
		if (status & 0x80)
		{
			runningStatus = status;
			++pos;
		}
		else
		{
			status = runningStatus;
		}

		const uint8_t cmd = status & 0xF0;
		DWORD msg = status;
		if (cmd == 0x80 || cmd == 0x90 || cmd == 0xA0 || cmd == 0xB0 || cmd == 0xE0)
		{
			if (pos + 2 > dataEnd)
				break;
			msg |= (static_cast<DWORD>(midiData[pos]) << 8);
			msg |= (static_cast<DWORD>(midiData[pos + 1]) << 16);
			pos += 2;
		}
		else if (cmd == 0xC0 || cmd == 0xD0)
		{
			if (pos + 1 > dataEnd)
				break;
			msg |= (static_cast<DWORD>(midiData[pos]) << 8);
			++pos;
		}
		else
		{
			break;
		}

		if (!sendGeneralMidiShortMsg(msg))
		{
			std::cerr << "ERROR: midiOutShortMsg failed." << std::endl;
			break;
		}
	}

	const bool stoppedExternally = shouldStopMusicPlayback();
	resetGeneralMidiOutput();

	if (!isTransient)
	{
		state.hasPlayedFirstSong = true;
		state.main_song_position = stoppedExternally
			? std::chrono::duration<double>(std::chrono::steady_clock::now() - startedAt).count()
			: 0.0;
	}

	state.music_playing = false;
#else
	(void)midiData;
	(void)isTransient;
#endif
}

void PlayMIDI_Wavetable(const std::vector<uint8_t> &midiData, bool isTransient)
{
#ifdef _WIN32
	const std::filesystem::path soundfontPath = resolveSoundFontFile();
	if (soundfontPath.empty())
	{
		std::cerr << "WARNING: No SoundFont (.sf2) found for wavetable mode, falling back to OPL." << std::endl;
		PlayMIDI_OPL(midiData, isTransient);
		return;
	}
	logResolvedSoundFontFile(soundfontPath);

	tsf *synth = tsf_load_filename(soundfontPath.string().c_str());
	if (!synth)
	{
		std::cerr << "WARNING: Failed to load SoundFont '" << soundfontPath.string() << "', falling back to OPL." << std::endl;
		PlayMIDI_OPL(midiData, isTransient);
		return;
	}

	auto track = parseMidiTrack(midiData);
	if (!track)
	{
		tsf_close(synth);
		return;
	}

	WasapiSession session;
	if (!session.init(WAVE_FORMAT_IEEE_FLOAT, 32))
	{
		tsf_close(synth);
		return;
	}

	MmcssScope mmcss;
	const int sampleRate = session.sampleRate;
	tsf_set_output(synth, TSF_STEREO_INTERLEAVED, sampleRate, 0.0f);
	tsf_set_max_voices(synth, 256);
	tsf_set_volume(synth, state.music_volume * 0.5f);
	for (int channel = 0; channel < 16; ++channel)
	{
		tsf_channel_set_bank(synth, channel, channel == 9 ? 128 : 0);
		tsf_channel_set_presetnumber(synth, channel, 0, channel == 9);
		tsf_channel_set_pan(synth, channel, 0.5f);
		tsf_channel_set_volume(synth, channel, 1.0f);
	}

	const uint16_t timeDivision = track->timeDivision;
	const size_t dataEnd = track->dataEnd;
	size_t pos = track->dataStart;
	uint8_t runningStatus = 0;
	uint32_t tempo = 500000;
	double ticksPerSecond = static_cast<double>(timeDivision) * 1000000.0 / tempo;
	double samplesPerTick = sampleRate / ticksPerSecond;
	double sampleRemainder = 0.0;
	state.music_playing = true;
	const auto startedAt = std::chrono::steady_clock::now();

	if (FAILED(session.audioClient->Start()))
	{
		state.music_playing = false;
		tsf_close(synth);
		return;
	}

	while (!shouldStopMusicPlayback() && pos < dataEnd)
	{
		const uint32_t delta = readVarLen(midiData, pos, dataEnd);
		if (pos >= dataEnd)
			break;

		double samplesToRender = delta * samplesPerTick + sampleRemainder;
		int wholeSamples = static_cast<int>(samplesToRender);
		sampleRemainder = samplesToRender - wholeSamples;

		while (wholeSamples > 0 && !shouldStopMusicPlayback())
		{
			UINT32 padding = 0;
			if (FAILED(session.audioClient->GetCurrentPadding(&padding)))
			{
				wholeSamples = 0;
				break;
			}

			const UINT32 framesAvailable = session.bufferFrameCount - padding;
			if (!framesAvailable)
			{
				std::this_thread::sleep_for(std::chrono::milliseconds(1));
				continue;
			}

			const UINT32 framesToRender = (std::min)(framesAvailable, static_cast<UINT32>(wholeSamples));
			BYTE *buffer = nullptr;
			if (FAILED(session.renderClient->GetBuffer(framesToRender, &buffer)))
			{
				wholeSamples = 0;
				break;
			}

			tsf_render_float(synth, reinterpret_cast<float *>(buffer), static_cast<int>(framesToRender), 0);
			if (FAILED(session.renderClient->ReleaseBuffer(framesToRender, 0)))
			{
				wholeSamples = 0;
				break;
			}

			wholeSamples -= static_cast<int>(framesToRender);
		}

		if (shouldStopMusicPlayback())
			break;

		const uint8_t byte = midiData[pos];
		if (byte == 0xFF)
		{
			++pos;
			if (pos >= dataEnd)
				break;
			const uint8_t metaType = midiData[pos++];
			const uint32_t metaLen = readVarLen(midiData, pos, dataEnd);
			if (metaType == 0x2F)
				break;
			if (metaType == 0x51 && metaLen >= 3 && pos + 3 <= dataEnd)
			{
				tempo = (static_cast<uint32_t>(midiData[pos]) << 16) |
					(static_cast<uint32_t>(midiData[pos + 1]) << 8) |
					static_cast<uint32_t>(midiData[pos + 2]);
				ticksPerSecond = static_cast<double>(timeDivision) * 1000000.0 / tempo;
				samplesPerTick = sampleRate / ticksPerSecond;
			}
			pos += metaLen;
			continue;
		}
		if (byte == 0xF0 || byte == 0xF7)
		{
			++pos;
			pos += readVarLen(midiData, pos, dataEnd);
			continue;
		}

		uint8_t status = byte;
		if (status & 0x80)
		{
			runningStatus = status;
			++pos;
		}
		else
		{
			status = runningStatus;
		}

		const uint8_t cmd = status & 0xF0;
		const uint8_t channel = status & 0x0F;
		if (cmd == 0x80)
			{
				if (pos + 2 > dataEnd)
					break;
				const uint8_t note = midiData[pos++];
				++pos;
				tsf_channel_note_off(synth, static_cast<int>(channel), static_cast<int>(note));
			}
			else if (cmd == 0x90)
			{
				if (pos + 2 > dataEnd)
					break;
				const uint8_t note = midiData[pos++];
				const uint8_t velocity = midiData[pos++];
				if (velocity == 0)
					tsf_channel_note_off(synth, static_cast<int>(channel), static_cast<int>(note));
				else
					tsf_channel_note_on(synth, static_cast<int>(channel), static_cast<int>(note), velocity / 127.0f);
			}
		else if (cmd == 0xA0)
		{
			pos += 2;
		}
		else if (cmd == 0xB0)
		{
			if (pos + 2 > dataEnd)
				break;
			const uint8_t controller = midiData[pos++];
			const uint8_t value = midiData[pos++];
			tsf_channel_midi_control(synth, static_cast<int>(channel), static_cast<int>(controller), static_cast<int>(value));
		}
		else if (cmd == 0xC0)
		{
			if (pos + 1 > dataEnd)
				break;
			const uint8_t program = midiData[pos++];
			tsf_channel_set_presetnumber(synth, static_cast<int>(channel), static_cast<int>(program), channel == 9);
		}
		else if (cmd == 0xD0)
		{
			pos += 1;
		}
		else if (cmd == 0xE0)
		{
			if (pos + 2 > dataEnd)
				break;
			const uint8_t lsb = midiData[pos++];
			const uint8_t msb = midiData[pos++];
			const int pitchBend = (static_cast<int>(msb) << 7) | lsb;
			tsf_channel_set_pitchwheel(synth, static_cast<int>(channel), pitchBend);
		}
		else
		{
			break;
		}
	}

	const bool stoppedExternally = shouldStopMusicPlayback();
	if (!isTransient)
	{
		state.hasPlayedFirstSong = true;
		state.main_song_position = stoppedExternally
			? std::chrono::duration<double>(std::chrono::steady_clock::now() - startedAt).count()
			: 0.0;
	}

	state.music_playing = false;
	tsf_close(synth);
#else
	(void)midiData;
	(void)isTransient;
#endif
}

void PlayMIDI(const std::vector<uint8_t> &midiData, bool isTransient)
{
	const std::string mode = normalizePublicMusicMode(state.music_mode);
	if (mode == "general")
	{
		PlayMIDI_GeneralMIDI(midiData, isTransient);
	}
	else if (mode == "wavetable")
	{
		PlayMIDI_Wavetable(midiData, isTransient);
	}
	else
	{
		PlayMIDI_OPL(midiData, isTransient);
	}
}

void xmiPlay(const std::string &songName, bool isTransient)
{
	if (state.raycast.enabled)
		return;

	bool midi_enabled = config.value("midiEnabled", true);
	int midi_volume = config.value("midiVolume", 100);
	state.music_volume = std::clamp(midi_volume / 100.0f, 0.0f, 1.0f);
	state.music_mode = normalizePublicMusicMode(
		config.value("midiMode", state.music_mode.empty() ? std::string("opl") : state.music_mode));
	config["midiMode"] = state.music_mode;
	musicInit();
	state.music_playing = false;
#ifdef _WIN32
	ensureMusicStopEvent();
	if (g_musicStopEvent)
		SetEvent(g_musicStopEvent);
#endif
	if (state.music_thread.joinable())
	{
		state.music_thread.join();
	}
#ifdef _WIN32
	if (g_musicStopEvent)
		ResetEvent(g_musicStopEvent);
#endif

	if (!midi_enabled || songName.empty())
		return;

	if (isTransient)
	{
		state.transient_song = songName;
	}
	else if (songName != state.current_song)
	{
		state.current_song = songName;
		state.main_song_position = 0.0;
	}

	auto midiData = loadCachedMidiData(songName);
	if (!midiData)
	{
		char buf[256];
		snprintf(buf, sizeof(buf), "[Phantom:Music] Failed to load song '%s'\n", songName.c_str());
		OutputDebugStringA(buf);
		return;
	}

	state.music_thread = std::thread([midiData, isTransient]()
	{
		PlayMIDI(*midiData, isTransient);
	});
}

void applyMusicRuntimeSettings()
{
    const std::string previousMode = state.music_mode;
    state.music_mode = normalizePublicMusicMode(config.value("midiMode", std::string("opl")));
    state.music_volume = std::clamp(config.value("midiVolume", 100) / 100.0f, 0.0f, 1.0f);
    config["midiMode"] = state.music_mode;
    setGeneralMidiOutputVolume(state.music_volume);

    if (previousMode != state.music_mode && state.music_playing && !state.current_song.empty())
        xmiPlay(state.current_song, false);
}

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
