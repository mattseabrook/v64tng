// vdx.cpp

#include <vector>
#include <tuple>
#include <fstream>
#include <filesystem>
#include <algorithm>
#include <thread>

#include "vdx.h"
#include "lzss.h"
#include "bitmap.h"
#include "delta.h"
#include "config.h"
#include "game.h"
#include "audio.h"
#include "window.h"

#ifdef _WIN32
#include <Windows.h>
#endif

/*
===============================================================================
Function Name: parseVDXFile

Description:
	- Parses the VDX data and returns a VDXFile object containing the parsed data.

Parameters:
	- filename: The filename for the VDX data.
	- buffer: A vector containing the VDX data to be parsed.

Return:
	- A VDXFile object containing the parsed VDX data.

Notes:
	- None.
===============================================================================
*/
VDXFile parseVDXFile(std::string_view filename, std::span<const uint8_t> buffer)
{
	VDXFile vdxFile;
	auto lastDot = filename.find_last_of('.');
	vdxFile.filename = (lastDot == std::string_view::npos) ? std::string(filename) : std::string(filename.substr(0, lastDot));

	vdxFile.rawData.assign(buffer.begin(), buffer.end());
	std::span<const uint8_t> rawSpan{vdxFile.rawData};

	vdxFile.identifier = rawSpan[0] | (rawSpan[1] << 8);
	std::copy(rawSpan.begin() + 2, rawSpan.begin() + 8, vdxFile.unknown.begin());

	size_t offset = 8;
	while (offset < rawSpan.size())
	{
		VDXChunk chunk;
		chunk.chunkType = rawSpan[offset];
		chunk.unknown = rawSpan[offset + 1];
		chunk.dataSize = rawSpan[offset + 2] | (rawSpan[offset + 3] << 8) | (rawSpan[offset + 4] << 16) | (rawSpan[offset + 5] << 24);
		chunk.lengthMask = rawSpan[offset + 6];
		chunk.lengthBits = rawSpan[offset + 7];
		offset += 8;
		chunk.data = rawSpan.subspan(offset, chunk.dataSize);
		offset += chunk.dataSize;
		vdxFile.chunks.push_back(std::move(chunk));
	}
	return vdxFile;
}

/*
===============================================================================
Function Name: parseVDXChunks

Description:
	- Parses the VDX chunks and decompresses the data where necessary.

Parameters:
	- vdxFile: Fully populated VDXFile object.
===============================================================================
*/
void parseVDXChunks(VDXFile &vdxFile)
{
	// Thread-local reuse buffers for decompression and palette (zero-allocation across calls)
	static thread_local std::vector<uint8_t> decompBuffer;
	static thread_local std::vector<RGBColor> palette(256);

	// Pre-count frame-producing chunks to reserve frameData (less reallocs)
	size_t frameCount = 0;
	for (const auto &chunk : vdxFile.chunks)
	{
		if (chunk.chunkType == 0x20 || chunk.chunkType == 0x25 || chunk.chunkType == 0x00)
		{
			++frameCount;
		}
	}
	vdxFile.frameData.reserve(frameCount);

	// Reuse palette
	palette.clear();
	palette.resize(256);

	// Process chunks
	for (auto &chunk : vdxFile.chunks)
	{
		std::span<const uint8_t> dataToProcess;

		if (chunk.lengthBits != 0)
		{
			const size_t maxDecompSize = chunk.dataSize * 20;
			decompBuffer.resize(maxDecompSize);
			const size_t decompSize = lzssDecompress(chunk.data, decompBuffer, chunk.lengthMask, chunk.lengthBits);
			dataToProcess = std::span{decompBuffer.data(), decompSize};
		}
		else
		{
			// Zero-copy for non-compressed
			dataToProcess = chunk.data;
		}

		switch (chunk.chunkType)
		{
		case 0x20:
		case 0x25:
		{
			// Get prev frame span (empty for first)
			std::span<uint8_t> prevFrame;
			if (!vdxFile.frameData.empty())
			{
				prevFrame = std::span<uint8_t>(vdxFile.frameData.back());
			}

			// Set dimensions from first static frame
			if (chunk.chunkType == 0x20 && vdxFile.width == 0 && dataToProcess.size() >= 4)
			{
				const uint16_t numXTiles = readLittleEndian16(dataToProcess.subspan(0, 2));
				const uint16_t numYTiles = readLittleEndian16(dataToProcess.subspan(2, 2));
				vdxFile.width = numXTiles * 4;
				vdxFile.height = numYTiles * 4;
			}

			// Preallocate new frame buffer with exact size
			const size_t frameSize = static_cast<size_t>(vdxFile.width) * vdxFile.height * 3;
			std::vector<uint8_t> newFrame(frameSize);

			std::span<uint8_t> bitmapSpan;
			std::span<RGBColor> palSpan;

			if (chunk.chunkType == 0x20)
			{
				// Static: Process in place
				getBitmapData(dataToProcess, palette, std::span{newFrame});
				// No need to update palette - it's already modified in place
			}
			else
			{
				// Delta: Copy prev if exists, else zero
				if (!prevFrame.empty())
				{
					std::copy(prevFrame.begin(), prevFrame.end(), newFrame.begin());
				}
				// else already zero from resize
				std::span<uint8_t> mutableFrame{newFrame};
				getDeltaBitmapData(dataToProcess, palette, mutableFrame, vdxFile.width);
			}

			// Add frame: Move the new frame
			vdxFile.frameData.push_back(std::move(newFrame));
			break;
		}
		case 0x80:
			// Audio: Append directly (minimal copy)
			vdxFile.audioData.insert(vdxFile.audioData.end(), dataToProcess.begin(), dataToProcess.end());
			break;
		case 0x00:
			// Duplicate last frame (copy necessary)
			if (!vdxFile.frameData.empty())
			{
				vdxFile.frameData.push_back(vdxFile.frameData.back());
			}
			break;
		}
	}

	// Clear chunks after processing (free memory)
	vdxFile.chunks.clear();
}

/*
===============================================================================
Function Name: vdxPlay

Description:
	- Plays a VDX animation from disk or memory.
	- Skippable with the Space key.

Parameters:
	- filename: Name of the VDX file (used for loading or identification)
	- preloadedVdx: Optional pointer to pre-loaded VDXFile object
===============================================================================
*/
void vdxPlay(const std::string &filename, VDXFile *preloadedVdx)
{
	VDXFile vdx;
	VDXFile *vdxToUse = preloadedVdx;

	if (!vdxToUse)
	{
		// Load from file
		if (!std::filesystem::exists(filename))
		{
#ifdef _WIN32
			MessageBoxA(nullptr, (filename + " not found!").c_str(), "Error", MB_OK | MB_ICONERROR);
#endif
			return;
		}

		std::ifstream file(filename, std::ios::binary);
		if (!file)
		{
#ifdef _WIN32
			MessageBoxA(nullptr, ("Failed to open " + filename).c_str(), "Error", MB_OK | MB_ICONERROR);
#endif
			return;
		}

		std::vector<uint8_t> buffer((std::istreambuf_iterator<char>(file)), {});
		vdx = parseVDXFile(filename, std::span(buffer));
		vdxToUse = &vdx;
	}

	// Ensure parsed
	if (!vdxToUse->parsed)
	{
		parseVDXChunks(*vdxToUse);
		vdxToUse->parsed = true;
	}

	// Save state
	double prevFPS = state.currentFPS;
	VDXFile *prevVDX = state.currentVDX;
	size_t prevFrame = state.currentFrameIndex;
	AnimationState prevAnim = state.animation;

	// Setup playback
	if (!vdxToUse->audioData.empty())
	{
		state.currentFPS = 15.0;
		wavPlay(std::span{vdxToUse->audioData});
	}

	state.currentVDX = vdxToUse;
	state.currentFrameIndex = 0;
	state.animation.isPlaying = true;
	state.animation.totalFrames = vdxToUse->frameData.size();
	state.animation.lastFrameTime = std::chrono::steady_clock::now();

	// Playback loop
	bool playing = true;
	while (playing)
	{
		if (!processEvents())
			break;

#ifdef _WIN32
		if (GetAsyncKeyState(VK_SPACE) & 1)
			break;
#endif

		auto now = std::chrono::steady_clock::now();
		auto elapsed = now - state.animation.lastFrameTime;
		auto frameDuration = state.animation.getFrameDuration(state.currentFPS);
		if (elapsed >= frameDuration)
		{
			state.currentFrameIndex++;
			if (state.currentFrameIndex >= state.animation.totalFrames)
			{
				playing = false;
				state.currentFrameIndex = state.animation.totalFrames - 1;
			}
			state.animation.lastFrameTime += frameDuration;
			state.dirtyFrame = true;
		}

		maybeRenderFrame();
	}

	// Restore
	wavStop();
	state.currentFPS = prevFPS;
	state.currentVDX = prevVDX;
	state.currentFrameIndex = prevFrame;
	state.animation = prevAnim;
	state.dirtyFrame = true;
}