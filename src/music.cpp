// music.cpp

#include <cstring>
#include <vector>
#include <cstdint>
#include <string>
#include <fstream>
#include <bit>
#include <algorithm>
#include <array>
#include <print>
#include <optional>
#include <thread>
#include <chrono>
#include <iterator>
#include <limits>
#include <stdexcept>
#include <cmath>
#include <atomic>
#include <condition_variable>
#include <memory>
#include <mutex>
#include <unordered_map>

// Windows Multimedia
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <audioclient.h>
#include <mmdeviceapi.h>
#include <mmsystem.h>
#include <functiondiscoverykeys_devpkey.h>
#include <avrt.h>

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
#include "assets.h"
#include "../resource.h"

//==============================================================================
// Internal Helpers
//==============================================================================
namespace {

//----------------------------------------------------------------------
// Persistent Audio Subsystem State (for instant playback)
//----------------------------------------------------------------------
HMIDISTRM g_midiStream = nullptr;
bool g_midiStreamReady = false;
tsf* g_soundfont = nullptr;
bool g_soundfontReady = false;
HANDLE g_midiDoneEvent = nullptr;
HANDLE g_musicStopEvent = nullptr;
constexpr float kWavetableHeadroom = 0.89125094f; // -1.0 dBFS, fixed gain: dynamics unchanged.

using CachedMidi = std::shared_ptr<const std::vector<uint8_t>>;
std::unordered_map<std::string, CachedMidi> g_midiCache;

void preloadMidiCache();

tsf *loadEmbeddedDefaultSoundfont()
{
	const HMODULE module = GetModuleHandleW(nullptr);
	const HRSRC resource = FindResourceW(
		module, MAKEINTRESOURCEW(IDR_DEFAULT_SF2), RT_RCDATA);
	if (!resource)
	{
		std::println(stderr, "ERROR: Embedded default SoundFont resource is missing.");
		return nullptr;
	}
	const DWORD byteCount = SizeofResource(module, resource);
	if (byteCount == 0 || byteCount > static_cast<DWORD>((std::numeric_limits<int>::max)()))
	{
		std::println(stderr, "ERROR: Embedded default SoundFont resource has an invalid size.");
		return nullptr;
	}
	const HGLOBAL loaded = LoadResource(module, resource);
	const void *bytes = loaded ? LockResource(loaded) : nullptr;
	if (!bytes)
	{
		std::println(stderr, "ERROR: Embedded default SoundFont resource cannot be read.");
		return nullptr;
	}
	return tsf_load_memory(bytes, static_cast<int>(byteCount));
}

tsf *loadConfiguredSoundfont(const std::string &configuredPath)
{
	if (!configuredPath.empty() && configuredPath != "default.sf2")
	{
		if (tsf *external = tsf_load_filename(configuredPath.c_str()))
			return external;
		std::println(stderr,
			"WARNING: Cannot load configured SoundFont '{}'; using the embedded default.",
			configuredPath);
	}
	return loadEmbeddedDefaultSoundfont();
}

tsf *loadPlaybackSoundfont(const std::string &configuredPath)
{
	if (g_soundfont)
		if (tsf *copy = tsf_copy(g_soundfont))
			return copy;
	return loadConfiguredSoundfont(configuredPath);
}

CachedMidi cachedMidi(std::string_view songName)
{
	const auto found = g_midiCache.find(std::string(songName));
	return found == g_midiCache.end() ? CachedMidi{} : found->second;
}

void ensureMusicStopEvent()
{
	if (!g_musicStopEvent)
		g_musicStopEvent = CreateEvent(nullptr, TRUE, FALSE, nullptr);
}

void signalMusicStop()
{
	ensureMusicStopEvent();
	if (g_musicStopEvent)
		SetEvent(g_musicStopEvent);
}

void resetMusicStop()
{
	ensureMusicStopEvent();
	if (g_musicStopEvent)
		ResetEvent(g_musicStopEvent);
}

//----------------------------------------------------------------------
// MIDI Track Parser — shared by GeneralMIDI and Wavetable backends
//----------------------------------------------------------------------
struct MidiTrackInfo {
	uint16_t timeDivision = 0;
	size_t dataStart = 0;
	size_t dataEnd = 0;
};

std::optional<MidiTrackInfo> parseMidiTrack(const std::vector<uint8_t>& midiData)
{
	if (midiData.size() < 14 ||
		midiData[0] != 'M' || midiData[1] != 'T' || midiData[2] != 'h' || midiData[3] != 'd')
	{
		std::println(stderr, "ERROR: Invalid MIDI header.");
		return std::nullopt;
	}

	MidiTrackInfo info;
	info.timeDivision = (static_cast<uint16_t>(midiData[12]) << 8) | midiData[13];

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
		std::println(stderr, "ERROR: Could not find MIDI track.");
		return std::nullopt;
	}

	uint32_t trackLength = (static_cast<uint32_t>(midiData[trackStart + 4]) << 24) |
						   (static_cast<uint32_t>(midiData[trackStart + 5]) << 16) |
						   (static_cast<uint32_t>(midiData[trackStart + 6]) << 8) |
						   static_cast<uint32_t>(midiData[trackStart + 7]);

	info.dataStart = trackStart + 8;
	info.dataEnd = std::min(info.dataStart + static_cast<size_t>(trackLength), midiData.size());
	return info;
}

//----------------------------------------------------------------------
// Variable-length MIDI value reader — shared by GeneralMIDI and Wavetable
//----------------------------------------------------------------------
uint32_t readVarLen(const std::vector<uint8_t>& data, size_t& pos, size_t end)
{
	uint32_t v = 0;
	uint8_t b;
	do {
		if (pos >= end) return v;
		b = data[pos++];
		v = (v << 7) | (b & 0x7F);
	} while (b & 0x80);
	return v;
}

//----------------------------------------------------------------------
// WASAPI RAII Session — shared by OPL and Wavetable backends
//----------------------------------------------------------------------
struct WasapiSession {
	IMMDeviceEnumerator* enumerator = nullptr;
	IMMDevice* device = nullptr;
	IAudioClient* audioClient = nullptr;
	IAudioRenderClient* renderClient = nullptr;
	HANDLE bufferEvent = nullptr;
	UINT32 bufferFrameCount = 0;
	int sampleRate = 0;
	bool comInit = false;

	WasapiSession() = default;
	WasapiSession(const WasapiSession&) = delete;
	WasapiSession& operator=(const WasapiSession&) = delete;

	~WasapiSession()
	{
		if (audioClient) audioClient->Stop();
		if (renderClient) renderClient->Release();
		if (audioClient) audioClient->Release();
		if (bufferEvent) CloseHandle(bufferEvent);
		if (device) device->Release();
		if (enumerator) enumerator->Release();
		if (comInit) CoUninitialize();
	}

	bool init(
		WORD formatTag,
		WORD bitsPerSample,
		int preferredRate = 44100,
		bool startImmediately = true)
	{
		HRESULT hr = CoInitialize(nullptr);
		if (FAILED(hr))
		{
			std::println(stderr, "ERROR: CoInitialize failed, hr={:#x}", static_cast<unsigned>(hr));
			return false;
		}
		comInit = true;

		hr = CoCreateInstance(__uuidof(MMDeviceEnumerator), nullptr, CLSCTX_ALL,
							 __uuidof(IMMDeviceEnumerator), reinterpret_cast<void**>(&enumerator));
		if (FAILED(hr))
		{
			std::println(stderr, "ERROR: CoCreateInstance failed, hr={:#x}", static_cast<unsigned>(hr));
			return false;
		}

		hr = enumerator->GetDefaultAudioEndpoint(eRender, eMultimedia, &device);
		if (FAILED(hr))
		{
			std::println(stderr, "ERROR: GetDefaultAudioEndpoint failed, hr={:#x}", static_cast<unsigned>(hr));
			return false;
		}

		hr = device->Activate(__uuidof(IAudioClient), CLSCTX_ALL, nullptr,
							  reinterpret_cast<void**>(&audioClient));
		if (FAILED(hr))
		{
			std::println(stderr, "ERROR: Activate audio client failed, hr={:#x}", static_cast<unsigned>(hr));
			return false;
		}

		WAVEFORMATEX wfx = {};
		wfx.wFormatTag = formatTag;
		wfx.nChannels = 2;
		wfx.nSamplesPerSec = static_cast<DWORD>(preferredRate);
		wfx.wBitsPerSample = bitsPerSample;
		wfx.nBlockAlign = wfx.nChannels * wfx.wBitsPerSample / 8;
		wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;
		wfx.cbSize = 0;

		bufferEvent = CreateEvent(nullptr, FALSE, FALSE, nullptr);
		if (!bufferEvent)
		{
			std::println(stderr, "ERROR: Failed to create WASAPI buffer event");
			return false;
		}

		REFERENCE_TIME defaultPeriod = 0;
		REFERENCE_TIME minimumPeriod = 0;
		audioClient->GetDevicePeriod(&defaultPeriod, &minimumPeriod);
		if (defaultPeriod <= 0)
			defaultPeriod = 100000; // 10 ms fallback; the former 50 ms buffer was audible.

		sampleRate = preferredRate;
		hr = audioClient->Initialize(
			AUDCLNT_SHAREMODE_SHARED,
			AUDCLNT_STREAMFLAGS_EVENTCALLBACK,
			defaultPeriod, 0, &wfx, nullptr);
		if (FAILED(hr))
		{
			// Fallback to 48 kHz
			sampleRate = 48000;
			wfx.nSamplesPerSec = 48000;
			wfx.nBlockAlign = wfx.nChannels * wfx.wBitsPerSample / 8;
			wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;
			hr = audioClient->Initialize(
				AUDCLNT_SHAREMODE_SHARED,
				AUDCLNT_STREAMFLAGS_EVENTCALLBACK,
				defaultPeriod, 0, &wfx, nullptr);
			if (FAILED(hr))
			{
				std::println(stderr, "ERROR: Audio client Initialize failed, hr={:#x}", static_cast<unsigned>(hr));
				return false;
			}
		}

		hr = audioClient->GetService(__uuidof(IAudioRenderClient),
									 reinterpret_cast<void**>(&renderClient));
		if (FAILED(hr))
		{
			std::println(stderr, "ERROR: GetService for IAudioRenderClient failed, hr={:#x}", static_cast<unsigned>(hr));
			return false;
		}

		hr = audioClient->GetBufferSize(&bufferFrameCount);
		if (FAILED(hr))
		{
			std::println(stderr, "ERROR: GetBufferSize failed, hr={:#x}", static_cast<unsigned>(hr));
			return false;
		}

		hr = audioClient->SetEventHandle(bufferEvent);
		if (FAILED(hr))
		{
			std::println(stderr, "ERROR: SetEventHandle failed, hr={:#x}", static_cast<unsigned>(hr));
			return false;
		}

		if (startImmediately)
		{
			hr = audioClient->Start();
			if (FAILED(hr))
			{
				std::println(stderr, "ERROR: Audio client Start failed, hr={:#x}", static_cast<unsigned>(hr));
				return false;
			}
		}

		return true;
	}
};

//----------------------------------------------------------------------
// Persistent low-latency wavetable engine
//----------------------------------------------------------------------
class MidiSynthCursor
{
public:
	MidiSynthCursor(const std::vector<uint8_t> &midi, tsf *synth, int sampleRate)
		: midi_(midi), synth_(synth), sampleRate_(sampleRate)
	{
		const auto track = parseMidiTrack(midi_);
		if (!track || track->timeDivision == 0)
			return;
		division_ = track->timeDivision;
		position_ = track->dataStart;
		end_ = track->dataEnd;
		valid_ = true;
		updateTiming();
	}

	bool valid() const { return valid_; }

	// Renders directly into the WASAPI float buffer. No intermediate PCM copy.
	bool render(float *output, UINT32 frames)
	{
		UINT32 rendered = 0;
		while (rendered < frames)
		{
			if (ended_)
			{
				std::fill_n(output + static_cast<size_t>(rendered) * 2u,
					static_cast<size_t>(frames - rendered) * 2u, 0.0f);
				return false;
			}
			if (!eventPending_)
			{
				if (position_ >= end_)
				{
					ended_ = true;
					continue;
				}
				const uint32_t delta = readVarLen(midi_, position_, end_);
				const double exactFrames =
					static_cast<double>(delta) * framesPerTick_ + fractionalFrame_;
				framesUntilEvent_ = static_cast<uint64_t>(exactFrames);
				fractionalFrame_ = exactFrames - static_cast<double>(framesUntilEvent_);
				eventPending_ = true;
			}
			if (framesUntilEvent_ != 0)
			{
				const UINT32 batch = static_cast<UINT32>((std::min<uint64_t>)(
					framesUntilEvent_, frames - rendered));
				tsf_render_float(synth_, output + static_cast<size_t>(rendered) * 2u,
					static_cast<int>(batch), 0);
				rendered += batch;
				framesUntilEvent_ -= batch;
				continue;
			}
			processEvent();
			eventPending_ = false;
		}
		return !ended_;
	}

private:
	void updateTiming()
	{
		framesPerTick_ = static_cast<double>(sampleRate_) *
			static_cast<double>(tempo_) /
			(static_cast<double>(division_) * 1000000.0);
	}

	void processEvent()
	{
		if (position_ >= end_)
		{
			ended_ = true;
			return;
		}
		uint8_t status = midi_[position_];
		if (status == 0xff)
		{
			++position_;
			if (position_ >= end_)
			{
				ended_ = true;
				return;
			}
			const uint8_t type = midi_[position_++];
			const uint32_t length = readVarLen(midi_, position_, end_);
			if (length > end_ - position_)
			{
				ended_ = true;
				return;
			}
			if (type == 0x2f)
			{
				ended_ = true;
				return;
			}
			if (type == 0x51 && length >= 3)
			{
				tempo_ = (static_cast<uint32_t>(midi_[position_]) << 16) |
					(static_cast<uint32_t>(midi_[position_ + 1]) << 8) |
					midi_[position_ + 2];
				if (tempo_ != 0)
					updateTiming();
			}
			position_ += length;
			return;
		}
		if (status == 0xf0 || status == 0xf7)
		{
			++position_;
			const uint32_t length = readVarLen(midi_, position_, end_);
			position_ = (std::min)(end_, position_ + static_cast<size_t>(length));
			return;
		}
		if ((status & 0x80u) != 0)
		{
			runningStatus_ = status;
			++position_;
		}
		else
		{
			status = runningStatus_;
		}
		if ((status & 0x80u) == 0)
		{
			ended_ = true;
			return;
		}
		const uint8_t command = status & 0xf0u;
		const int channel = status & 0x0fu;
		auto take = [&]() -> std::optional<uint8_t>
		{
			if (position_ >= end_)
				return std::nullopt;
			return midi_[position_++];
		};
		const auto first = take();
		if (!first)
		{
			ended_ = true;
			return;
		}
		if (command == 0xc0u)
		{
			tsf_channel_set_presetnumber(synth_, channel, *first, channel == 9);
			return;
		}
		if (command == 0xd0u)
			return;
		const auto second = take();
		if (!second)
		{
			ended_ = true;
			return;
		}
		switch (command)
		{
		case 0x80u:
			tsf_channel_note_off(synth_, channel, *first);
			break;
		case 0x90u:
			if (*second == 0)
				tsf_channel_note_off(synth_, channel, *first);
			else
				tsf_channel_note_on(synth_, channel, *first, *second / 127.0f);
			break;
		case 0xb0u:
			tsf_channel_midi_control(synth_, channel, *first, *second);
			break;
		case 0xe0u:
			tsf_channel_set_pitchwheel(synth_, channel,
				(static_cast<int>(*second) << 7) | *first);
			break;
		default:
			break;
		}
	}

	const std::vector<uint8_t> &midi_;
	tsf *synth_ = nullptr;
	int sampleRate_ = 44100;
	uint16_t division_ = 0;
	size_t position_ = 0;
	size_t end_ = 0;
	uint8_t runningStatus_ = 0;
	uint32_t tempo_ = 500000;
	double framesPerTick_ = 0.0;
	double fractionalFrame_ = 0.0;
	uint64_t framesUntilEvent_ = 0;
	bool eventPending_ = false;
	bool valid_ = false;
	bool ended_ = false;
};

struct WavetableRequest
{
	CachedMidi midi;
	bool loop = false;
	uint64_t generation = 0;
};

std::mutex g_wavetableMutex;
std::condition_variable g_wavetableReady;
std::thread g_wavetableThread;
HANDLE g_wavetableCommandEvent = nullptr;
HANDLE g_wavetableShutdownEvent = nullptr;
WavetableRequest g_wavetableRequest;
uint64_t g_wavetableNextGeneration = 0;
uint64_t g_wavetableReadyGeneration = 0;
bool g_wavetableStartupComplete = false;
bool g_wavetableStartupSucceeded = false;

void configureWavetableSynth(tsf *synth, int sampleRate)
{
	tsf_set_output(synth, TSF_STEREO_INTERLEAVED, sampleRate, 0.0f);
	tsf_set_volume(synth, state.music_volume.load() * kWavetableHeadroom);
	for (int channel = 0; channel < 16; ++channel)
	{
		tsf_channel_set_bank(synth, channel, channel == 9 ? 128 : 0);
		tsf_channel_set_presetnumber(synth, channel, 0, channel == 9);
		tsf_channel_set_pan(synth, channel, 0.5f);
	}
}

void acknowledgeWavetable(uint64_t generation)
{
	{
		std::lock_guard lock(g_wavetableMutex);
		g_wavetableReadyGeneration = (std::max)(g_wavetableReadyGeneration, generation);
	}
	g_wavetableReady.notify_all();
}

void wavetableWorker()
{
	DWORD mmcssIndex = 0;
	HANDLE mmcss = AvSetMmThreadCharacteristicsW(L"Pro Audio", &mmcssIndex);
	if (!mmcss)
		mmcss = AvSetMmThreadCharacteristicsW(L"Audio", &mmcssIndex);

	WasapiSession session;
	const bool initialized = session.init(WAVE_FORMAT_IEEE_FLOAT, 32, 44100, false);
	{
		std::lock_guard lock(g_wavetableMutex);
		g_wavetableStartupSucceeded = initialized;
		g_wavetableStartupComplete = true;
	}
	g_wavetableReady.notify_all();
	if (!initialized)
	{
		if (mmcss)
			AvRevertMmThreadCharacteristics(mmcss);
		return;
	}

	HANDLE idleHandles[] = {g_wavetableShutdownEvent, g_wavetableCommandEvent};
	bool shuttingDown = false;
	while (!shuttingDown)
	{
		const DWORD idleWait = WaitForMultipleObjects(2, idleHandles, FALSE, INFINITE);
		if (idleWait == WAIT_OBJECT_0)
			break;

		WavetableRequest request;
		{
			std::lock_guard lock(g_wavetableMutex);
			request = g_wavetableRequest;
			ResetEvent(g_wavetableCommandEvent);
		}

		session.audioClient->Stop();
		session.audioClient->Reset();
		if (!request.midi)
		{
			state.music_playing = false;
			acknowledgeWavetable(request.generation);
			continue;
		}

		bool firstStart = true;
		do
		{
			tsf *synth = loadPlaybackSoundfont(state.soundfont_path);
			if (!synth)
			{
				state.music_playing = false;
				acknowledgeWavetable(request.generation);
				break;
			}
			configureWavetableSynth(synth, session.sampleRate);
			MidiSynthCursor cursor(*request.midi, synth, session.sampleRate);
			if (!cursor.valid())
			{
				tsf_close(synth);
				state.music_playing = false;
				acknowledgeWavetable(request.generation);
				break;
			}

			BYTE *buffer = nullptr;
			HRESULT hr = session.renderClient->GetBuffer(session.bufferFrameCount, &buffer);
			bool trackAlive = false;
			if (SUCCEEDED(hr))
			{
				trackAlive = cursor.render(
					reinterpret_cast<float *>(buffer), session.bufferFrameCount);
				hr = session.renderClient->ReleaseBuffer(session.bufferFrameCount, 0);
			}
			if (FAILED(hr) || FAILED(session.audioClient->Start()))
			{
				tsf_close(synth);
				state.music_playing = false;
				acknowledgeWavetable(request.generation);
				break;
			}

			state.music_playing = true;
			if (firstStart)
			{
				// The first audio buffer is queued and the clock is running. VIDEOREF
				// may now present frame zero without racing MIDI initialization.
				acknowledgeWavetable(request.generation);
				firstStart = false;
			}

			HANDLE playbackHandles[] = {
				g_wavetableShutdownEvent,
				g_wavetableCommandEvent,
				session.bufferEvent};
			bool replaceTrack = false;
			while (trackAlive)
			{
				const DWORD wait = WaitForMultipleObjects(3, playbackHandles, FALSE, INFINITE);
				if (wait == WAIT_OBJECT_0)
				{
					shuttingDown = true;
					break;
				}
				if (wait == WAIT_OBJECT_0 + 1u)
				{
					replaceTrack = true;
					break;
				}
				UINT32 padding = 0;
				if (FAILED(session.audioClient->GetCurrentPadding(&padding)))
					break;
				const UINT32 available = session.bufferFrameCount - padding;
				if (available == 0)
					continue;
				if (FAILED(session.renderClient->GetBuffer(available, &buffer)))
					break;
				tsf_set_volume(synth,
					state.music_volume.load() * kWavetableHeadroom);
				trackAlive = cursor.render(reinterpret_cast<float *>(buffer), available);
				if (FAILED(session.renderClient->ReleaseBuffer(available, 0)))
					break;
			}
			if (!trackAlive && !replaceTrack && !shuttingDown)
			{
				// Let the final submitted buffer drain before a natural stop/loop.
				const DWORD drain = WaitForMultipleObjects(
					3, playbackHandles, FALSE, 250);
				if (drain == WAIT_OBJECT_0)
					shuttingDown = true;
				else if (drain == WAIT_OBJECT_0 + 1u)
					replaceTrack = true;
			}

			session.audioClient->Stop();
			session.audioClient->Reset();
			tsf_close(synth);
			if (replaceTrack || shuttingDown)
				break;
			if (!request.loop)
			{
				state.music_playing = false;
				break;
			}
		} while (request.loop && !shuttingDown);
	}
	state.music_playing = false;
	if (mmcss)
		AvRevertMmThreadCharacteristics(mmcss);
}

bool ensureWavetableEngine()
{
	if (g_wavetableThread.joinable())
		return g_wavetableStartupSucceeded;
	if (!g_soundfont)
	{
		g_soundfont = loadConfiguredSoundfont(state.soundfont_path);
		g_soundfontReady = g_soundfont != nullptr;
	}
	if (!g_soundfont)
		return false;
	g_wavetableCommandEvent = CreateEventW(nullptr, TRUE, FALSE, nullptr);
	g_wavetableShutdownEvent = CreateEventW(nullptr, TRUE, FALSE, nullptr);
	if (!g_wavetableCommandEvent || !g_wavetableShutdownEvent)
	{
		if (g_wavetableCommandEvent)
			CloseHandle(g_wavetableCommandEvent);
		if (g_wavetableShutdownEvent)
			CloseHandle(g_wavetableShutdownEvent);
		g_wavetableCommandEvent = nullptr;
		g_wavetableShutdownEvent = nullptr;
		return false;
	}
	g_wavetableStartupComplete = false;
	g_wavetableStartupSucceeded = false;
	g_wavetableThread = std::thread(wavetableWorker);
	std::unique_lock lock(g_wavetableMutex);
	g_wavetableReady.wait_for(lock, std::chrono::seconds(2), []
	{
		return g_wavetableStartupComplete;
	});
	return g_wavetableStartupSucceeded;
}

bool submitWavetable(CachedMidi midi, bool loop)
{
	if (!ensureWavetableEngine())
		return false;
	uint64_t generation = 0;
	{
		std::lock_guard lock(g_wavetableMutex);
		generation = ++g_wavetableNextGeneration;
		g_wavetableRequest = {std::move(midi), loop, generation};
		SetEvent(g_wavetableCommandEvent);
	}
	std::unique_lock lock(g_wavetableMutex);
	return g_wavetableReady.wait_for(lock, std::chrono::seconds(2), [generation]
	{
		return g_wavetableReadyGeneration >= generation;
	});
}

void stopWavetablePlayback()
{
	if (g_wavetableThread.joinable())
		submitWavetable({}, false);
}

void stopWavetableEngine()
{
	if (!g_wavetableThread.joinable())
		return;
	SetEvent(g_wavetableShutdownEvent);
	g_wavetableThread.join();
	CloseHandle(g_wavetableCommandEvent);
	CloseHandle(g_wavetableShutdownEvent);
	g_wavetableCommandEvent = nullptr;
	g_wavetableShutdownEvent = nullptr;
	g_wavetableStartupComplete = false;
	g_wavetableStartupSucceeded = false;
}

} // namespace

//==============================================================================
// Music System Initialization / Shutdown
//==============================================================================
void musicInit()
{
#ifdef _WIN32
	state.music_mode = config.value("midiMode", std::string{"opl3"});
	state.soundfont_path = config.value("soundFont", std::string{"default.sf2"});
	state.music_volume.store(std::clamp(
		config.value("midiVolume", 100) / 100.0f, 0.0f, 1.0f));

	// Convert every tiny XMI resource once, before SCRIPT.GRV can start the
	// main-menu choreography. Playback only shares immutable cached MIDI bytes.
	preloadMidiCache();
	
	// Pre-initialize General MIDI stream for instant playback
	if (state.music_mode == "general")
	{
		UINT deviceId = static_cast<UINT>(MIDI_MAPPER);
		if (!g_midiDoneEvent)
			g_midiDoneEvent = CreateEvent(nullptr, FALSE, FALSE, nullptr);
		MMRESULT r = midiStreamOpen(&g_midiStream, &deviceId, 1,
			reinterpret_cast<DWORD_PTR>(g_midiDoneEvent), 0, CALLBACK_EVENT);
		if (r == MMSYSERR_NOERROR && g_midiStream)
		{
			g_midiStreamReady = true;
		}
	}
	
	// Resolve the configured bank once, then create the WASAPI endpoint and
	// audio-priority worker before frame zero of sphinx.vdx is allowed to render.
	if (state.music_mode == "wavetable")
	{
		g_soundfont = loadConfiguredSoundfont(state.soundfont_path);
		if (g_soundfont)
		{
			tsf_set_output(g_soundfont, TSF_STEREO_INTERLEAVED, 44100, 0.0f);
			tsf_set_volume(g_soundfont,
				state.music_volume.load() * kWavetableHeadroom);
			g_soundfontReady = true;
			ensureWavetableEngine();
		}
	}
#endif
}

void musicShutdown()
{
#ifdef _WIN32
	// Every backend can block its worker on a Windows audio/MIDI event. Signal
	// that event before joining; joining first deadlocks General MIDI shutdown.
	signalMusicStop();
	state.music_playing = false;
	if (state.music_thread.joinable())
		state.music_thread.join();
	stopWavetableEngine();

	// Close General MIDI stream
	if (g_midiStream)
	{
		midiStreamStop(g_midiStream);
		midiOutReset(reinterpret_cast<HMIDIOUT>(g_midiStream));
		midiStreamClose(g_midiStream);
		g_midiStream = nullptr;
		g_midiStreamReady = false;
	}
	if (g_midiDoneEvent)
	{
		CloseHandle(g_midiDoneEvent);
		g_midiDoneEvent = nullptr;
	}
	if (g_musicStopEvent)
	{
		CloseHandle(g_musicStopEvent);
		g_musicStopEvent = nullptr;
	}

	// Close soundfont
	if (g_soundfont)
	{
		tsf_close(g_soundfont);
		g_soundfont = nullptr;
		g_soundfontReady = false;
	}
	g_midiCache.clear();
#endif
}

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

	// Read XMI data before constructing checked iterator helpers.
	std::ifstream file(assetPath("XMI.GJD"), std::ios::binary);
	if (!file)
		throw std::runtime_error("Failed to open XMI.GJD");
	std::vector<uint8_t> xmi(song.length);
	file.seekg(song.offset);
	if (!file.read(reinterpret_cast<char *>(xmi.data()), song.length))
		throw std::runtime_error("Failed to read complete XMI entry: " + song.filename);

	auto require = [](bool condition, std::string_view message)
	{
		if (!condition)
			throw std::runtime_error(std::string(message));
	};
	auto end = xmi.end();

	// Parse note-off delta time.
	auto parse_noteoff_delta = [&](auto &it) -> uint32_t
	{
		uint32_t delta = 0;
		for (int count = 0; count < 4; ++count)
		{
			require(it != end, "Truncated XMI note duration");
			const uint8_t byte = *it++;
			delta = (delta << 7) | (byte & 0x7F);
			if ((byte & 0x80) == 0)
				return delta;
		}
		throw std::runtime_error("XMI note duration is too long");
	};

	// Read SysEx length
	auto read_varlen = [&](auto &it, auto limit) -> uint32_t
	{
		uint32_t value = 0;
		for (int count = 0; count < 4; ++count)
		{
			require(it != limit, "Truncated MIDI variable-length value");
			const uint8_t byte = *it++;
			value = (value << 7) | (byte & 0x7F);
			if ((byte & 0x80) == 0)
				return value;
		}
		throw std::runtime_error("MIDI variable-length value is too long");
	};

	// Write variable-length values
	auto write_varlen = [](auto out, uint32_t value)
	{
		uint32_t buffer = value & 0x7F;
		while (value >>= 7)
		{
			buffer = (buffer << 8) | ((value & 0x7F) | 0x80);
		}
		for (;;)
		{
			*out++ = static_cast<uint8_t>(buffer & 0xFF);
			if ((buffer & 0x80) == 0)
				break;
			buffer >>= 8;
		}
		return out;
	};

	auto it = xmi.begin();

	//
	// XMI Header, Branch skip
	//
	require(xmi.size() >= 58, "Truncated XMI header");
	it += 4 * 12 + 2;
	auto readBE32 = [&](auto &cursor) {
		require(static_cast<size_t>(end - cursor) >= 4, "Truncated XMI 32-bit field");
		const uint32_t value = (uint32_t(cursor[0]) << 24) | (uint32_t(cursor[1]) << 16) |
		                       (uint32_t(cursor[2]) << 8) | uint32_t(cursor[3]);
		cursor += 4;
		return value;
	};
	uint32_t lTIMB = readBE32(it);
	require(static_cast<size_t>(end - it) >= lTIMB, "XMI TIMB chunk exceeds entry");
	it += lTIMB;

	if (static_cast<size_t>(end - it) >= 4 && std::equal(it, it + 4, "RBRN"))
	{
		require(static_cast<size_t>(end - it) >= 10, "Truncated XMI RBRN chunk");
		it += 8;
		uint16_t nBranch = uint16_t(it[0]) | (uint16_t(it[1]) << 8);
		it += 2;
		require(static_cast<size_t>(end - it) >= size_t{nBranch} * 6, "XMI branch table exceeds entry");
		it += size_t{nBranch} * 6;
	}

	require(static_cast<size_t>(end - it) >= 8, "Missing XMI EVNT chunk");
	it += 4;
	uint32_t lEVNT = readBE32(it);
	require(static_cast<size_t>(end - it) >= lEVNT, "XMI EVNT chunk exceeds entry");
	auto eventEnd = it + lEVNT;

	//
	// Decode Events
	//
	std::vector<uint8_t> midiDecode;
	midiDecode.reserve(xmi.size());
	auto decodeIt = std::back_inserter(midiDecode);

	std::vector<NoteOffEvent> noteOffs;
	noteOffs.reserve(64);
	size_t noteOffCount = 0;

	bool expectDelta = true;
	while (it < eventEnd)
	{
		if (*it < 0x80)
		{
			// Delta time
			uint32_t delay = 0;
			while (it != eventEnd && *it == 0x7F)
				delay += *it++;
			require(it != eventEnd, "Truncated XMI delay");
			delay += *it++;

			// Handle pending note-offs
			while (!noteOffs.empty() && delay > noteOffs.front().delta)
			{
				write_varlen(decodeIt, noteOffs[0].delta);
				*decodeIt++ = noteOffs[0].data[0] & 0x8F;
				*decodeIt++ = noteOffs[0].data[1];
				*decodeIt++ = 0x7F;

				delay -= noteOffs[0].delta;
				for (size_t i = 1; i < noteOffCount; ++i)
					noteOffs[i].delta -= noteOffs[0].delta;
				noteOffs[0].delta = 0xFFFFFFFF;
				noteOffs.erase(noteOffs.begin());
				noteOffCount = noteOffs.size();
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
				require(static_cast<size_t>(eventEnd - it) >= 2, "Truncated XMI meta event");
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
				require(it != eventEnd, "Truncated XMI meta length");
				uint32_t textlen = *it + 1;
				require(static_cast<size_t>(eventEnd - it) >= textlen, "XMI meta event exceeds EVNT chunk");
				decodeIt = std::copy_n(it, textlen, decodeIt);
				it += textlen;
			}
			else if ((*it & 0xF0) == 0x80)
			{ // Note Off
				require(static_cast<size_t>(eventEnd - it) >= 3, "Truncated XMI note-off event");
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
			}
			else if ((*it & 0xF0) == 0x90)
			{ // Note On
				require(static_cast<size_t>(eventEnd - it) >= 3, "Truncated XMI note-on event");
				const uint8_t status = it[0];
				const uint8_t note = it[1];
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
				uint32_t delta = parse_noteoff_delta(it);
				noteOffs.push_back({delta, {status, note, 0}});
				noteOffCount = noteOffs.size();
				std::sort(noteOffs.begin(), noteOffs.end(), eventSort);
			}
			else if ((*it & 0xF0) == 0xA0)
			{ // Key Pressure
				require(static_cast<size_t>(eventEnd - it) >= 3, "Truncated XMI key-pressure event");
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
			}
			else if ((*it & 0xF0) == 0xB0)
			{ // Control Change
				require(static_cast<size_t>(eventEnd - it) >= 3, "Truncated XMI control-change event");
				decodeIt = std::copy_n(it, 3, decodeIt);
				it += 3;
			}
			else if ((*it & 0xF0) == 0xC0)
			{ // Program Change
				require(static_cast<size_t>(eventEnd - it) >= 2, "Truncated XMI program-change event");
				decodeIt = std::copy_n(it, 2, decodeIt);
				it += 2;
			}
			else if ((*it & 0xF0) == 0xD0)
			{ // Channel Pressure
				require(static_cast<size_t>(eventEnd - it) >= 2, "Truncated XMI channel-pressure event");
				decodeIt = std::copy_n(it, 2, decodeIt);
				it += 2;
			}
			else if ((*it & 0xF0) == 0xE0)
			{ // Pitch Bend
				require(static_cast<size_t>(eventEnd - it) >= 3, "Truncated XMI pitch-bend event");
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
	std::vector<uint8_t> midiWrite;
	midiWrite.reserve(midiDecode.size());
	auto writeIt = std::back_inserter(midiWrite);
	auto readIt = midiDecode.begin();

	while (readIt < midiDecode.end())
	{
		// Delta-time
		uint32_t delta = read_varlen(readIt, midiDecode.end());

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
			uint32_t exlen = read_varlen(readIt, midiDecode.end());
			write_varlen(writeIt, exlen);
			require(static_cast<size_t>(midiDecode.end() - readIt) >= exlen, "SysEx payload exceeds decoded MIDI data");
			writeIt = std::copy_n(readIt, exlen, writeIt);
			readIt += exlen;
		}
		else if (*readIt == 0xFF) // Meta Event
		{
			require(static_cast<size_t>(midiDecode.end() - readIt) >= 2, "Truncated decoded MIDI meta event");
			*writeIt++ = *readIt++;
			if (*readIt == 0x51) // Tempo
			{
				*writeIt++ = *readIt++;
				require(static_cast<size_t>(midiDecode.end() - readIt) >= 4, "Truncated MIDI tempo event");
				*writeIt++ = *readIt++;
				qnlen = (static_cast<uint32_t>(readIt[0]) << 16) | (static_cast<uint32_t>(readIt[1]) << 8) | static_cast<uint32_t>(readIt[2]);
				writeIt = std::copy_n(readIt, 3, writeIt);
				readIt += 3;
			}
			else
			{
				*writeIt++ = *readIt++; // Meta type
				require(readIt != midiDecode.end(), "Missing MIDI meta-event length");
				uint32_t textlen = *readIt;
				*writeIt++ = *readIt++; // Length
				require(static_cast<size_t>(midiDecode.end() - readIt) >= textlen, "MIDI meta event exceeds decoded data");
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
	require(midiWrite.size() <= std::numeric_limits<uint32_t>::max(), "Converted MIDI track is too large");
	uint32_t trackLen = static_cast<uint32_t>(midiWrite.size());
	uint32_t swappedTrackLen = _byteswap_ulong(trackLen);
	midiData.insert(midiData.end(), reinterpret_cast<uint8_t *>(&swappedTrackLen), reinterpret_cast<uint8_t *>(&swappedTrackLen) + 4);
	midiData.insert(midiData.end(), midiWrite.begin(), midiWrite.end());

	return midiData;
}

namespace
{
void preloadMidiCache()
{
	if (!g_midiCache.empty())
		return;
	const auto entries = parseRLFile(assetPath("XMI.RL").string());
	if (!entries)
	{
		std::println(stderr, "ERROR: Cannot preload XMI cache: {}", entries.error());
		return;
	}
	for (const RLEntry &entry : *entries)
	{
		std::string stem = entry.filename;
		if (const auto nul = stem.find('\0'); nul != std::string::npos)
			stem.resize(nul);
		if (const auto dot = stem.find('.'); dot != std::string::npos)
			stem.resize(dot);
		if (stem.empty())
			continue;
		try
		{
			auto converted = std::make_shared<const std::vector<uint8_t>>(
				xmiConverter(entry));
			g_midiCache.emplace(std::move(stem), std::move(converted));
		}
		catch (const std::exception &error)
		{
			std::println(stderr, "WARNING: Cannot cache XMI '{}': {}", stem, error.what());
		}
	}
}
} // namespace

/*
===============================================================================
Function Name: PlayMIDI_GeneralMIDI

Description:
	- Plays the MIDI data using the Windows MIDI API (General MIDI).
	  Uses persistent MIDI stream for instant playback with zero startup lag.

Parameters:
	- const std::vector<uint8_t> &midiData: The MIDI data to be played.
	- bool isTransient: Indicates whether the song is transient or not.
===============================================================================
*/
void PlayMIDI_GeneralMIDI(const std::vector<uint8_t> &midiData, bool isTransient)
{
#ifdef _WIN32
	// Parse MIDI file header
	auto track = parseMidiTrack(midiData);
	if (!track) return;

	uint16_t timeDivision = track->timeDivision;
	size_t dataStart = track->dataStart;
	size_t dataEnd = track->dataEnd;

	// First pass: find the first tempo
	uint32_t initialTempo = 500000; // default 120 BPM
	{
		size_t pos = dataStart;
		uint8_t runningStatus = 0;
		while (pos < dataEnd)
		{
			(void)readVarLen(midiData, pos, dataEnd);
			if (pos >= dataEnd)
				break;

			uint8_t b = midiData[pos];
			if (b == 0xFF)
			{
				pos++;
				if (pos >= dataEnd)
					break;
				uint8_t metaType = midiData[pos++];
				uint32_t metaLen = readVarLen(midiData, pos, dataEnd);
				if (metaType == 0x51 && metaLen >= 3 && pos + 3 <= dataEnd)
				{
					initialTempo = (static_cast<uint32_t>(midiData[pos]) << 16) |
								   (static_cast<uint32_t>(midiData[pos + 1]) << 8) |
								   static_cast<uint32_t>(midiData[pos + 2]);
					break;
				}
				pos += metaLen;
				continue;
			}
			else if (b == 0xF0 || b == 0xF7)
			{
				pos++;
				pos += readVarLen(midiData, pos, dataEnd);
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
				pos += 2;
			else if (cmd == 0xC0 || cmd == 0xD0)
				pos += 1;
			else
				break;
		}
	}

	// Use persistent stream or open new one
	HMIDISTRM hStream = g_midiStream;
	bool ownStream = false;
	
	if (!hStream || !g_midiStreamReady)
	{
		ensureMusicStopEvent();
		if (!g_midiDoneEvent)
			g_midiDoneEvent = CreateEvent(nullptr, FALSE, FALSE, nullptr);
		UINT deviceId = static_cast<UINT>(MIDI_MAPPER);
		MMRESULT r = midiStreamOpen(&hStream, &deviceId, 1,
			reinterpret_cast<DWORD_PTR>(g_midiDoneEvent), 0, CALLBACK_EVENT);
		if (r != MMSYSERR_NOERROR || !hStream)
		{
			std::println(stderr, "ERROR: midiStreamOpen failed.");
			return;
		}
		ownStream = true;
	}
	else
	{
		// Reset persistent stream for new song
		midiStreamStop(hStream);
		midiOutReset(reinterpret_cast<HMIDIOUT>(hStream));
		if (g_midiDoneEvent)
			ResetEvent(g_midiDoneEvent);
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
	uint16_t vol = static_cast<uint16_t>(state.music_volume.load() * 0xFFFF);
	DWORD volume = (static_cast<DWORD>(vol) << 16) | vol;
	midiOutSetVolume(reinterpret_cast<HMIDIOUT>(hStream), volume);

	// Build stream events (3 DWORDs per event: delta, streamId, dwEvent)
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

	// Inject the initial tempo at delta 0
	appendEvent(0, MEVT_TEMPO | initialTempo);

	size_t pos = dataStart;
	while (pos < dataEnd)
	{
		uint32_t delta = readVarLen(midiData, pos, dataEnd);
		if (pos >= dataEnd)
			break;

		uint8_t b = midiData[pos];
		if (b == 0xFF)
		{
			pos++;
			if (pos >= dataEnd)
				break;
			uint8_t metaType = midiData[pos++];
			uint32_t metaLen = readVarLen(midiData, pos, dataEnd);

			if (metaType == 0x2F)
				break; // End of track
			else if (metaType == 0x51 && metaLen == 3 && pos + 3 <= dataEnd)
			{
				uint32_t tempo = (static_cast<uint32_t>(midiData[pos]) << 16) |
								 (static_cast<uint32_t>(midiData[pos + 1]) << 8) |
								 static_cast<uint32_t>(midiData[pos + 2]);
				appendEvent(delta, MEVT_TEMPO | tempo);
			}
			pos += metaLen;
			continue;
		}
		else if (b == 0xF0 || b == 0xF7)
		{
			pos++;
			pos += readVarLen(midiData, pos, dataEnd);
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

	MIDIHDR hdr{};
	hdr.lpData = reinterpret_cast<LPSTR>(stream.data());
	hdr.dwBufferLength = static_cast<DWORD>(stream.size() * sizeof(DWORD));
	hdr.dwBytesRecorded = hdr.dwBufferLength;

	if (midiOutPrepareHeader(reinterpret_cast<HMIDIOUT>(hStream), &hdr, sizeof(MIDIHDR)) != MMSYSERR_NOERROR)
	{
		std::println(stderr, "ERROR: midiOutPrepareHeader failed.");
		if (ownStream)
			midiStreamClose(hStream);
		state.music_playing = false;
		return;
	}

	if (midiStreamOut(hStream, &hdr, sizeof(MIDIHDR)) != MMSYSERR_NOERROR)
	{
		std::println(stderr, "ERROR: midiStreamOut failed.");
		midiOutUnprepareHeader(reinterpret_cast<HMIDIOUT>(hStream), &hdr, sizeof(MIDIHDR));
		if (ownStream)
			midiStreamClose(hStream);
		state.music_playing = false;
		return;
	}

	midiStreamRestart(hStream);

	while ((hdr.dwFlags & MHDR_DONE) == 0 && state.music_playing)
	{
		ensureMusicStopEvent();
		HANDLE handles[] = { g_musicStopEvent, g_midiDoneEvent };
		DWORD wait = WaitForMultipleObjects(2, handles, FALSE, INFINITE);
		if (wait == WAIT_OBJECT_0)
			break; // Stop requested
	}

	if ((hdr.dwFlags & MHDR_DONE) == 0)
	{
		midiStreamStop(hStream);
		midiOutReset(reinterpret_cast<HMIDIOUT>(hStream));
	}

	midiOutUnprepareHeader(reinterpret_cast<HMIDIOUT>(hStream), &hdr, sizeof(MIDIHDR));

	// Only close if we own this stream (not persistent)
	if (ownStream)
	{
		midiOutReset(reinterpret_cast<HMIDIOUT>(hStream));
		midiStreamClose(hStream);
	}

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
	// Initialize WASAPI audio session (PCM 16-bit stereo)
	WasapiSession session;
	if (!session.init(WAVE_FORMAT_PCM, 16))
		return;

	struct ADL_MIDIPlayer *player = adl_init(session.sampleRate);
	if (!player)
	{
		std::println(stderr, "ERROR: Failed to initialize libADLMIDI.");
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
		std::println(stderr, "WARNING: Unknown music mode '{}', defaulting to opl3.", state.music_mode);
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
		std::println(stderr, "ERROR: Failed to load MIDI data in libADLMIDI.");
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
		adl_positionSeek(player, state.main_song_position.load()); // Resume main song
	}

	//
	// Playback loop
	//
	state.music_playing = true;
	const float gain = 6.0f;
	const int fadeSamples = static_cast<int>(0.5 * session.sampleRate); // 500ms fade-in
	int fadeCounter = 0;
	bool fadingIn = !isTransient && state.hasPlayedFirstSong.load(); // Fade-in only for main songs after first play

	while (state.music_playing)
	{
		UINT32 padding;
		HRESULT hr = session.audioClient->GetCurrentPadding(&padding);
		if (FAILED(hr))
			break;

		UINT32 framesAvailable = session.bufferFrameCount - padding;
		if (framesAvailable == 0)
		{
			ensureMusicStopEvent();
			HANDLE handles[] = { g_musicStopEvent, session.bufferEvent };
			if (WaitForMultipleObjects(2, handles, FALSE, INFINITE) == WAIT_OBJECT_0)
				break; // Stop requested
			continue;
		}

		BYTE *pData;
		hr = session.renderClient->GetBuffer(framesAvailable, &pData);
		if (FAILED(hr))
			break;

		int samples = adl_play(player, framesAvailable * 2, reinterpret_cast<short *>(static_cast<void *>(pData)));
		if (samples <= 0)
			break; // End of song

		// Apply gain, volume, and fade-in if applicable
		short *samplesPtr = reinterpret_cast<short *>(static_cast<void *>(pData));
		for (int i = 0; i < samples; i++)
		{
			float sample = static_cast<float>(samplesPtr[i]) * gain * state.music_volume.load();
			if (fadingIn && fadeCounter < fadeSamples)
			{
				float fadeFactor = static_cast<float>(fadeCounter) / fadeSamples;
				sample *= fadeFactor;
				fadeCounter++;
			}
			samplesPtr[i] = static_cast<short>(std::clamp(sample, -32768.0f, 32767.0f));
		}

		hr = session.renderClient->ReleaseBuffer(framesAvailable, 0);
		if (FAILED(hr))
			break;
	}

	// Save position if main song is paused
	if (!isTransient)
	{
		state.main_song_position.store(adl_positionTell(player));
		state.hasPlayedFirstSong.store(true); // Mark that a main song has played
	}

	//
	// Cleanup (WasapiSession destructor handles COM/WASAPI resources)
	//
	state.music_playing = false;
	adl_close(player);
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
	// The default bank is embedded in the executable. A configured external
	// bank remains supported and falls back to the embedded bank if unavailable.
	tsf *synth = loadPlaybackSoundfont(state.soundfont_path);
	if (!synth)
	{
		std::println(stderr, "ERROR: Failed to load the embedded default SoundFont.");
		std::println(stderr, "Falling back to OPL3 synthesis.");
		PlayMIDI_OPL(midiData, isTransient);
		return;
	}

	// Parse MIDI header
	auto track = parseMidiTrack(midiData);
	if (!track)
	{
		tsf_close(synth);
		return;
	}

	uint16_t timeDivision = track->timeDivision;
	size_t dataStart = track->dataStart;
	size_t dataEnd = track->dataEnd;

	// Initialize WASAPI audio session (IEEE float 32-bit stereo)
	WasapiSession session;
	if (!session.init(WAVE_FORMAT_IEEE_FLOAT, 32))
	{
		tsf_close(synth);
		return;
	}

	int sampleRate = session.sampleRate;

	// Configure TinySoundFont for General MIDI playback
	tsf_set_output(synth, TSF_STEREO_INTERLEAVED, sampleRate, 0.0f);
	
	// Fixed -1 dBFS headroom raises the former -6.02 dB output without a
	// compressor/limiter, so every authored velocity and controller ratio stays
	// unchanged.
	tsf_set_volume(synth, state.music_volume.load() * kWavetableHeadroom);
	
	// Initialize all 16 MIDI channels for General MIDI bank mode
	// This ensures program changes work correctly and prevents crazy volume
	for (int ch = 0; ch < 16; ch++)
	{
		tsf_channel_set_bank(synth, ch, (ch == 9) ? 128 : 0); // Bank 128 = drums for channel 10
		tsf_channel_set_presetnumber(synth, ch, 0, (ch == 9)); // Default to piano, drums on ch10
		tsf_channel_set_pan(synth, ch, 0.5f); // Center pan
		// Keep TinySoundFont's MIDI channel state intact. The XMI stream's CC7
		// volume and CC11 expression events must remain authoritative.
	}

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
		uint32_t delta = readVarLen(midiData, pos, dataEnd);
		if (pos >= dataEnd)
			break;

		// Render audio for this delta
		double samplesToRender = delta * samplesPerTick + sampleAccum;
		int wholeSamples = static_cast<int>(samplesToRender);
		sampleAccum = samplesToRender - wholeSamples;

		while (wholeSamples > 0 && state.music_playing)
		{
			UINT32 padding;
			HRESULT hr = session.audioClient->GetCurrentPadding(&padding);
			if (FAILED(hr))
				break;

			UINT32 framesAvailable = session.bufferFrameCount - padding;
			if (framesAvailable == 0)
			{
				ensureMusicStopEvent();
				HANDLE handles[] = { g_musicStopEvent, session.bufferEvent };
				if (WaitForMultipleObjects(2, handles, FALSE, INFINITE) == WAIT_OBJECT_0)
					break; // Stop requested
				continue;
			}

			UINT32 framesToRender = std::min(framesAvailable, static_cast<UINT32>(wholeSamples));

			BYTE *pData;
			hr = session.renderClient->GetBuffer(framesToRender, &pData);
			if (FAILED(hr))
				break;

			tsf_render_float(synth, reinterpret_cast<float *>(pData), static_cast<int>(framesToRender), 0);

			hr = session.renderClient->ReleaseBuffer(framesToRender, 0);
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
			uint32_t metaLen = readVarLen(midiData, pos, dataEnd);

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
			uint32_t sysexLen = readVarLen(midiData, pos, dataEnd);
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
			tsf_channel_note_off(synth, static_cast<int>(channel), static_cast<int>(note));
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
				tsf_channel_note_off(synth, static_cast<int>(channel), static_cast<int>(note));
			}
			else
			{
				tsf_channel_note_on(synth, static_cast<int>(channel), static_cast<int>(note), velocity / 127.0f);
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

	// Cleanup (WasapiSession destructor handles COM/WASAPI resources)
	state.music_playing = false;
	tsf_close(synth);
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
void xmiPlay(const std::string &songName, bool isTransient, bool loop)
{
	const bool midi_enabled = config.value("midiEnabled", true);
	const int midi_volume = config.value("midiVolume", 100);
	state.music_volume.store(std::clamp(midi_volume / 100.0f, 0.0f, 1.0f));
	state.music_mode = config.value("midiMode", std::string{"opl3"});
	state.midi_bank = config.value("midiBank", 0);
	state.soundfont_path = config.value("soundFont", std::string{"default.sf2"});

	// Stop/reap a legacy OPL or WinMM worker. Wavetable owns a separate
	// persistent audio-priority worker and never tears its endpoint down between
	// songs.
	signalMusicStop();
	state.music_playing = false;
	if (state.music_thread.joinable())
		state.music_thread.join();
	resetMusicStop();

	if (!midi_enabled)
	{
		stopWavetablePlayback();
		return;
	}

	if (isTransient)
	{
		state.transient_song = songName;
	}
	else if (songName != state.current_song)
	{
		state.current_song = songName;
		state.main_song_position.store(0.0);
	}

	if (g_midiCache.empty())
		preloadMidiCache();
	const CachedMidi midi = cachedMidi(songName);
	if (!midi)
	{
		std::println(stderr, "ERROR: XMI file '{}' not found in the startup cache.", songName);
		return;
	}

	if (state.music_mode == "wavetable")
	{
		// submitWavetable returns only after the first synthesized buffer is queued
		// and the WASAPI clock is running. This is the frame-zero synchronization
		// barrier used by the main-menu GRV PLAYSONG -> sphinx.vdx sequence.
		if (!submitWavetable(midi, loop))
		{
			std::println(stderr,
				"ERROR: Persistent wavetable engine failed; falling back to OPL3.");
			state.music_mode = "opl3";
		}
		else
		{
			return;
		}
	}
	else
	{
		stopWavetablePlayback();
	}

	state.music_thread = std::thread([midi, isTransient, loop, songName]
	{
		try
		{
			do
			{
				PlayMIDI(*midi, isTransient);
				if (!loop)
					break;
				ensureMusicStopEvent();
				if (WaitForSingleObject(g_musicStopEvent, 50) == WAIT_OBJECT_0)
					break;
				state.main_song_position.store(0.0);
			} while (true);
		}
		catch (const std::exception &error)
		{
			std::println(stderr, "ERROR: XMI playback '{}': {}", songName, error.what());
		}
		catch (...)
		{
			std::println(stderr, "ERROR: Unknown XMI playback failure '{}'.", songName);
		}
	});
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
		state.song_stack.emplace_back(state.current_song, state.main_song_position.load());
	}
	state.current_song = songName;
	state.main_song_position.store(0.0);
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
		state.main_song_position.store(entry.second);
		xmiPlay(state.current_song, false);
	}
}

void applyMusicRuntimeSettings()
{
	const std::string previousMode = state.music_mode;
	state.music_mode = config.value("midiMode", std::string{"opl3"});
	state.music_volume.store(std::clamp(
		config.value("midiVolume", 100) / 100.0f, 0.0f, 1.0f));

#ifdef _WIN32
	if (g_midiStream)
	{
		const auto channelVolume = static_cast<uint16_t>(
			std::lround(state.music_volume.load() * 65535.0f));
		const DWORD packedVolume =
			(static_cast<DWORD>(channelVolume) << 16u) | channelVolume;
		midiOutSetVolume(reinterpret_cast<HMIDIOUT>(g_midiStream), packedVolume);
	}
#endif
	if (previousMode != state.music_mode &&
		state.music_playing && !state.current_song.empty())
	{
		xmiPlay(state.current_song, false);
	}
}
