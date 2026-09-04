// vdx.cpp

#include <vector>
#include <fstream>
#include <filesystem>
#include <algorithm>
#include <cmath>
#include <cstring>
#include <memory>
#include <mutex>
#include <unordered_map>
#include <stdexcept>

#include "vdx.h"
#include "rl.h"
#include "lzss.h"
#include "bitmap.h"
#include "delta.h"
#include "config.h"
#include "game.h"
#include "audio.h"
#include "music.h"
#include "window.h"
#include "assets.h"
#include "console.h"

#ifdef _WIN32
#include <windows.h>
#else
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#endif

namespace
{
constexpr uint32_t readLE32(const uint8_t *p)
{
	return static_cast<uint32_t>(p[0]) |
		   (static_cast<uint32_t>(p[1]) << 8) |
		   (static_cast<uint32_t>(p[2]) << 16) |
		   (static_cast<uint32_t>(p[3]) << 24);
}

bool readStillPalette(
	std::span<const uint8_t> data,
	std::span<RGBColor> palette,
	std::span<const uint8_t> preservedEntries = {})
{
	if (data.size() < 6 || palette.size() < 256)
		return false;
	const uint16_t colourDepth = readLittleEndian16(data.subspan(4, 2));
	if (colourDepth > 8)
		return false;
	const size_t colours = size_t{1} << colourDepth;
	if (data.size() < 6 + colours * 3)
		return false;
	if (!preservedEntries.empty() && preservedEntries.size() < 256)
		return false;
	for (size_t i = 0; i < colours; ++i)
		if (preservedEntries.empty() || !preservedEntries[i])
			palette[i] = {data[6 + i * 3], data[7 + i * 3], data[8 + i * 3]};
	return true;
}

void materializeIndexedFrame(
	std::span<const uint8_t> indices,
	std::span<const RGBColor> palette,
	std::span<uint8_t> frame)
{
	if (palette.size() < 256 || frame.size() != indices.size() * 3)
		return;
	for (size_t pixel = 0; pixel < indices.size(); ++pixel)
	{
		const RGBColor colour = palette[indices[pixel]];
		frame[pixel * 3] = colour.r;
		frame[pixel * 3 + 1] = colour.g;
		frame[pixel * 3 + 2] = colour.b;
	}
}

void parseVDXChunksFromSpan(VDXFile &vdxFile, std::span<const uint8_t> rawSpan)
{
	if (rawSpan.size() < 8)
	{
		// Graceful failure for malformed/truncated files.
		vdxFile.identifier = 0;
		vdxFile.unknown.fill(0);
		vdxFile.frameRate = 0;
		return;
	}

	// Pre-reserve an accurate chunk count to avoid vector growth
	size_t preCount = 0;
	size_t off = 8;
	while (off + 8 <= rawSpan.size())
	{
		const uint32_t dataSize = readLE32(rawSpan.data() + off + 2);
		const size_t next = off + 8u + static_cast<size_t>(dataSize);
		if (next > rawSpan.size())
		{
			// Trailing/partial chunk; stop parsing rather than aborting startup.
			break;
		}
		++preCount;
		off = next;
	}
	vdxFile.chunks.reserve(preCount);

	vdxFile.identifier = static_cast<uint16_t>(rawSpan[0] | (rawSpan[1] << 8));
	std::copy(rawSpan.begin() + 2, rawSpan.begin() + 6, vdxFile.unknown.begin());
	vdxFile.frameRate = static_cast<uint16_t>(rawSpan[6] | rawSpan[7] << 8);
	consoleLogf("VDX", "index {} bytes={} id=0x{:04X} header-rate={} chunks={}",
		vdxFile.filename, rawSpan.size(), vdxFile.identifier, vdxFile.frameRate, preCount);

	size_t offset = 8;
	while (offset + 8 <= rawSpan.size())
	{
		VDXChunk chunk;
		chunk.chunkType = rawSpan[offset];
		chunk.coding = rawSpan[offset + 1];
		chunk.dataSize = readLE32(rawSpan.data() + offset + 2);
		chunk.lengthMask = rawSpan[offset + 6];
		chunk.lengthBits = rawSpan[offset + 7];
		offset += 8;

		if (offset + static_cast<size_t>(chunk.dataSize) > rawSpan.size())
		{
			// Truncated tail; keep already parsed chunks.
			break;
		}
		chunk.data = rawSpan.subspan(offset, chunk.dataSize);
		offset += chunk.dataSize;
		vdxFile.chunks.push_back(std::move(chunk));
	}
}

void initializeVDXFilename(VDXFile &vdxFile, std::string_view filename)
{
	const auto lastDot = filename.find_last_of('.');
	vdxFile.filename = (lastDot == std::string_view::npos) ? std::string(filename) : std::string(filename.substr(0, lastDot));
}

// RAII guard that restores the owning currentVDX after transient/non-owning playback.
struct VDXPlayOwnerGuard
{
	std::unique_ptr<VDXFile> saved;
	explicit VDXPlayOwnerGuard(std::unique_ptr<VDXFile> s) : saved(std::move(s)) {}
	~VDXPlayOwnerGuard()
	{
		(void)state.currentVDX.release(); // release the non-owning temporary
		state.currentVDX = std::move(saved);
	}
	VDXPlayOwnerGuard(const VDXPlayOwnerGuard &) = delete;
	VDXPlayOwnerGuard &operator=(const VDXPlayOwnerGuard &) = delete;
};

std::expected<std::pair<std::shared_ptr<const uint8_t>, size_t>, std::string> mapFileReadOnly(const std::string &path)
{
#ifdef _WIN32
	HANDLE hFile = CreateFileA(path.c_str(), GENERIC_READ, FILE_SHARE_READ, nullptr,
							   OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
	if (hFile == INVALID_HANDLE_VALUE)
	{
		return std::unexpected("Failed to open GJD: " + path);
	}

	LARGE_INTEGER sizeLi{};
	if (!GetFileSizeEx(hFile, &sizeLi) || sizeLi.QuadPart <= 0)
	{
		CloseHandle(hFile);
		return std::unexpected("Failed to get GJD file size: " + path);
	}
	const size_t fileSize = static_cast<size_t>(sizeLi.QuadPart);

	HANDLE hMapFile = CreateFileMapping(hFile, nullptr, PAGE_READONLY, 0, 0, nullptr);
	if (hMapFile == nullptr)
	{
		CloseHandle(hFile);
		return std::unexpected("Failed to map GJD file: " + path);
	}

	const uint8_t *fileData = static_cast<const uint8_t *>(MapViewOfFile(hMapFile, FILE_MAP_READ, 0, 0, 0));
	if (fileData == nullptr)
	{
		CloseHandle(hMapFile);
		CloseHandle(hFile);
		return std::unexpected("Failed to map GJD view: " + path);
	}

	std::shared_ptr<const uint8_t> owner(fileData, [hMapFile, hFile](const uint8_t *p)
										 {
											 if (p)
											 {
												 UnmapViewOfFile(p);
											 }
											 if (hMapFile)
											 {
												 CloseHandle(hMapFile);
											 }
											 if (hFile != INVALID_HANDLE_VALUE)
											 {
												 CloseHandle(hFile);
											 } });
	return std::pair{std::move(owner), fileSize};
#else
	const int fd = open(path.c_str(), O_RDONLY);
	if (fd == -1)
	{
		return std::unexpected("Failed to open GJD: " + path);
	}

	struct stat st {};
	if (fstat(fd, &st) != 0 || st.st_size <= 0)
	{
		close(fd);
		return std::unexpected("Failed to get GJD file size: " + path);
	}
	const size_t fileSize = static_cast<size_t>(st.st_size);

	const uint8_t *fileData = static_cast<const uint8_t *>(mmap(nullptr, fileSize, PROT_READ, MAP_PRIVATE, fd, 0));
	if (fileData == MAP_FAILED)
	{
		close(fd);
		return std::unexpected("Failed to map GJD file: " + path);
	}

	std::shared_ptr<const uint8_t> owner(fileData, [fileSize, fd](const uint8_t *p)
										 {
											 if (p && p != MAP_FAILED)
											 {
												 munmap(const_cast<uint8_t *>(p), fileSize);
											 }
											 if (fd != -1)
											 {
												 close(fd);
											 } });
	return std::pair{std::move(owner), fileSize};
#endif
}

struct StreamingVDXDecoder
{
	VDXFile &vdx;
	size_t chunkIndex = 0;
	size_t totalFrames = 0;
	std::array<RGBColor, 256> palette{};
	std::vector<uint8_t> indices;
	std::vector<uint8_t> decompressed;

	explicit StreamingVDXDecoder(VDXFile &file) : vdx(file)
	{
		for (const auto &chunk : vdx.chunks)
			if (chunk.chunkType == 0x20 || chunk.chunkType == 0x25 || chunk.chunkType == 0x00)
				++totalFrames;
	}

	std::span<const uint8_t> decodeChunk(const VDXChunk &chunk)
	{
		if (!vdxChunkIsCompressed(chunk))
			return chunk.data;
		auto result = lzssDecompressChecked(chunk.data, chunk.lengthMask, chunk.lengthBits);
		if (!result)
			throw std::runtime_error("Invalid compressed VDX chunk in " + vdx.filename + ": " + result.error());
		decompressed = std::move(*result);
		return decompressed;
	}

	void prepareAudio()
	{
		vdx.audioData.clear();
		for (const auto &chunk : vdx.chunks)
		{
			if (chunk.chunkType != 0x80)
				continue;
			auto bytes = decodeChunk(chunk);
			vdx.audioData.insert(vdx.audioData.end(), bytes.begin(), bytes.end());
		}
	}

	bool decodeNextFrame()
	{
		if (vdx.frameData.empty())
			vdx.frameData.emplace_back(std::make_shared<std::vector<uint8_t>>());
		auto &frame = vdx.frameData.front();
		while (chunkIndex < vdx.chunks.size())
		{
			const VDXChunk &chunk = vdx.chunks[chunkIndex++];
			if (chunk.chunkType == 0x00)
				return !frame->empty();
			if (chunk.chunkType != 0x20 && chunk.chunkType != 0x25)
				continue;

			auto bytes = decodeChunk(chunk);
			if (chunk.chunkType == 0x20)
			{
				if (bytes.size() < 6)
					throw std::runtime_error("Truncated VDX bitmap header in " + vdx.filename);
				const uint16_t tilesX = readLittleEndian16(bytes.subspan(0, 2));
				const uint16_t tilesY = readLittleEndian16(bytes.subspan(2, 2));
				if (tilesX == 0 || tilesY == 0 || tilesX > 4096 || tilesY > 4096)
					throw std::runtime_error("Invalid VDX bitmap dimensions in " + vdx.filename);
				const int width = static_cast<int>(tilesX) * 4;
				const int height = static_cast<int>(tilesY) * 4;
				if ((vdx.width != 0 && vdx.width != width) || (vdx.height != 0 && vdx.height != height))
					throw std::runtime_error("VDX frame dimensions changed in " + vdx.filename);
				vdx.width = width;
				vdx.height = height;
				frame->assign(static_cast<size_t>(width) * static_cast<size_t>(height) * 3, 0);
				indices.assign(static_cast<size_t>(width) * static_cast<size_t>(height), 0);
				if (!getBitmapDataChecked(bytes, palette, *frame, indices))
					throw std::runtime_error("Invalid VDX bitmap payload in " + vdx.filename);
			}
			else
			{
				if (frame->empty() || vdx.width <= 0)
					throw std::runtime_error("VDX delta frame has no reference frame in " + vdx.filename);
				if (!getDeltaBitmapDataChecked(bytes, palette, *frame, vdx.width, indices))
					throw std::runtime_error("Invalid VDX delta payload in " + vdx.filename);
			}
			// The native surface remains indexed. A local palette update therefore
			// recolours untouched pixels too, not only pixels written by this delta.
			materializeIndexedFrame(indices, palette, *frame);
			vdx.palette = palette;
			return true;
		}
		return false;
	}
};
} // namespace

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
	initializeVDXFilename(vdxFile, filename);
	vdxFile.rawData.assign(buffer.begin(), buffer.end());
	vdxFile.rawView = std::span<const uint8_t>{vdxFile.rawData};
	parseVDXChunksFromSpan(vdxFile, vdxFile.rawView);
	return vdxFile;
}

/*
===============================================================================
Function Name: parseVDXFile (move overload)

Description:
	- Same as parseVDXFile but takes ownership of the buffer via move,
	  avoiding a full copy of the raw data.
===============================================================================
*/
VDXFile parseVDXFile(std::string_view filename, std::vector<uint8_t> &&buffer)
{
	VDXFile vdxFile;
	initializeVDXFilename(vdxFile, filename);
	vdxFile.rawData = std::move(buffer); // Zero-copy move from owned caller buffer
	vdxFile.rawView = std::span<const uint8_t>{vdxFile.rawData};
	parseVDXChunksFromSpan(vdxFile, vdxFile.rawView);
	return vdxFile;
}

VDXFile parseVDXFileBorrowed(std::string_view filename, std::span<const uint8_t> buffer, std::shared_ptr<const uint8_t> owner)
{
	VDXFile vdxFile;
	initializeVDXFilename(vdxFile, filename);
	vdxFile.externalDataOwner = std::move(owner);
	vdxFile.rawView = buffer;
	parseVDXChunksFromSpan(vdxFile, vdxFile.rawView);
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
void parseVDXChunks(
	VDXFile &vdxFile,
	std::span<const uint8_t> background,
	uint16_t grvVideoFlags)
{
	parseVDXChunks(vdxFile, VDXDecodeContext{
		.background = background,
		.backgroundIndices = {},
		.foregroundIndices = {},
		.palette = {},
		.mergePaletteOnce = false}, grvVideoFlags);
}

void parseVDXChunks(
	VDXFile &vdxFile,
	const VDXDecodeContext &context,
	uint16_t grvVideoFlags)
{
	const bool foregroundStill = (grvVideoFlags & (1u << 1)) != 0;
	const bool transparentOverlay = (grvVideoFlags & (1u << 7)) != 0;
	const bool skipStill = vdxSkipStill(grvVideoFlags) || transparentOverlay;
	std::array<RGBColor, 256> palette{};
	if (context.palette.size() >= palette.size())
		std::ranges::copy_n(context.palette.begin(), palette.size(), palette.begin());
	// The VDX palette buffer and the palette currently driving the indexed
	// display are distinct native states. Flag-5 stills load the former without
	// applying it; flag-7 deltas may update it while retaining the latter.
	auto workingPalette = palette;
	std::array<uint8_t, 256> preservedEntries{};
	if (context.mergePaletteOnce)
	{
		for (const uint8_t index : context.backgroundIndices)
			preservedEntries[index] = 1;
	}
	bool mergePending = context.mergePaletteOnce;

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
	vdxFile.frameIndices.reserve(frameCount);
	vdxFile.framePalettes.reserve(frameCount);

	vdxFile.playbackFlags = grvVideoFlags;
	// Process chunks
	for (auto &chunk : vdxFile.chunks)
	{
		std::span<const uint8_t> dataToProcess;

		if (vdxChunkIsCompressed(chunk))
		{
			auto decompressed = lzssDecompressChecked(chunk.data, chunk.lengthMask, chunk.lengthBits);
			if (!decompressed)
				throw std::runtime_error("Invalid compressed VDX chunk in " + vdxFile.filename + ": " + decompressed.error());
			// Keep the decoded bytes alive for this switch iteration.
			static thread_local std::vector<uint8_t> decompBuffer;
			decompBuffer = std::move(*decompressed);
			dataToProcess = decompBuffer;
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
			std::span<const uint8_t> prevFrame;
			std::span<const uint8_t> prevIndices;
			if (!vdxFile.frameData.empty())
			{
				prevFrame = std::span<const uint8_t>(*vdxFile.frameData.back());
				if (!vdxFile.frameIndices.empty())
					prevIndices = std::span<const uint8_t>(*vdxFile.frameIndices.back());
			}

			// Set dimensions from first static frame
			if (chunk.chunkType == 0x20 && vdxFile.width == 0)
			{
				if (dataToProcess.size() < 6)
					throw std::runtime_error("Truncated VDX bitmap header in " + vdxFile.filename);
				const uint16_t numXTiles = readLittleEndian16(dataToProcess.subspan(0, 2));
				const uint16_t numYTiles = readLittleEndian16(dataToProcess.subspan(2, 2));
				if (numXTiles == 0 || numYTiles == 0 || numXTiles > 4096 || numYTiles > 4096)
					throw std::runtime_error("Invalid VDX bitmap dimensions in " + vdxFile.filename);
				vdxFile.width = numXTiles * 4;
				vdxFile.height = numYTiles * 4;
			}

			// Preallocate new frame buffer with exact size
			const size_t frameSize = static_cast<size_t>(vdxFile.width) * vdxFile.height * 3;
			auto newFrame = std::make_shared<std::vector<uint8_t>>(frameSize);
			auto newIndices = std::make_shared<std::vector<uint8_t>>(frameSize / 3);
			bool haveIndices = false;

			if (chunk.chunkType == 0x20)
			{
				if (foregroundStill)
				{
					// VIDEO_TRANSITION_REF decodes the still into the persistent
					// foreground matte, not into the visible background. Source FF
					// leaves the previous matte untouched; opcode-high-bit form turns
					// every written source pixel into an FF protection mask.
					auto decodedIndices = std::vector<uint8_t>(newIndices->size());
					if (!getBitmapDataChecked(dataToProcess, workingPalette,
						std::span{*newFrame}, std::span{decodedIndices}))
						throw std::runtime_error("Invalid VDX foreground still in " + vdxFile.filename);
					if (context.foregroundIndices.size() == newIndices->size())
						std::memcpy(newIndices->data(), context.foregroundIndices.data(), newIndices->size());
					const bool makeProtectionMask =
						(grvVideoFlags & (1u << 2)) != 0;
					for (size_t pixel = 0; pixel < decodedIndices.size(); ++pixel)
					{
						if (decodedIndices[pixel] != 0xff)
							(*newIndices)[pixel] = makeProtectionMask
								? uint8_t{0xff} : decodedIndices[pixel];
					}
					haveIndices = true;
				}
				else if (skipStill)
				{
					// BF5 deliberately discards the VDX's still pixels.
					// Its palette is staged but is not applied until a delta carries
					// a local palette update. BF7 also discards this still.
					if (!readStillPalette(dataToProcess, workingPalette,
						mergePending
							? std::span<const uint8_t>{preservedEntries}
							: std::span<const uint8_t>{}))
						throw std::runtime_error("Invalid VDX bitmap palette in " + vdxFile.filename);
					if (context.background.size() == newFrame->size())
						std::memcpy(newFrame->data(), context.background.data(), newFrame->size());
					if (context.backgroundIndices.size() == newIndices->size())
					{
						std::memcpy(newIndices->data(), context.backgroundIndices.data(), newIndices->size());
						haveIndices = true;
					}
				}
				else if (!getBitmapDataChecked(dataToProcess, workingPalette,
					std::span{*newFrame}, std::span{*newIndices},
					mergePending
						? std::span<const uint8_t>{preservedEntries}
						: std::span<const uint8_t>{}))
				{
					throw std::runtime_error("Invalid VDX bitmap payload in " + vdxFile.filename);
				}
				else
				{
					haveIndices = true;
					palette = workingPalette;
				}
				if (mergePending)
				{
					mergePending = false;
					vdxFile.paletteMergeConsumed = true;
				}
			}
			else
			{
				// Delta: Copy prev if exists using memcpy for 2-3x faster copy
				if (!prevFrame.empty())
				{
					if (prevFrame.size() != newFrame->size())
						throw std::runtime_error("VDX delta frame dimensions changed in " + vdxFile.filename);
					std::memcpy(newFrame->data(), prevFrame.data(), newFrame->size());
					if (prevIndices.size() == newIndices->size())
					{
						std::memcpy(newIndices->data(), prevIndices.data(), newIndices->size());
						haveIndices = true;
					}
				}
				else if (context.background.size() == newFrame->size())
				{
					std::memcpy(newFrame->data(), context.background.data(), newFrame->size());
					if (context.backgroundIndices.size() == newIndices->size())
					{
						std::memcpy(newIndices->data(), context.backgroundIndices.data(), newIndices->size());
						haveIndices = true;
					}
				}
				std::span<uint8_t> mutableFrame{*newFrame};
				const bool appliesPalette = dataToProcess.size() >= 2 &&
					readLittleEndian16(dataToProcess) != 0 && !transparentOverlay;
				if (!getDeltaBitmapDataChecked(dataToProcess, workingPalette, mutableFrame,
					vdxFile.width,
					haveIndices ? std::span<uint8_t>{*newIndices} : std::span<uint8_t>{},
					transparentOverlay ? context.foregroundIndices : std::span<const uint8_t>{}))
					throw std::runtime_error("Invalid VDX delta payload in " + vdxFile.filename);
				if (appliesPalette)
					palette = workingPalette;
			}
			if (haveIndices)
				materializeIndexedFrame(*newIndices, palette, *newFrame);
			else
				newIndices->clear();

			// Add frame: Move the new frame
			vdxFile.frameData.push_back(std::move(newFrame));
			vdxFile.frameIndices.push_back(std::move(newIndices));
			vdxFile.framePalettes.push_back(palette);
			break;
		}
		case 0x80:
			// Audio: Append directly (minimal copy)
			vdxFile.audioData.insert(vdxFile.audioData.end(), dataToProcess.begin(), dataToProcess.end());
			break;
		case 0x00:
			// Duplicate last frame: share the existing buffer via shared_ptr.
			if (!vdxFile.frameData.empty())
			{
				vdxFile.frameData.push_back(vdxFile.frameData.back());
				vdxFile.frameIndices.push_back(vdxFile.frameIndices.back());
				vdxFile.framePalettes.push_back(vdxFile.framePalettes.back());
			}
			break;
		}
	}
	vdxFile.palette = palette;
	consoleLogf("VDX", "decoded {} frames={} audio-bytes={} dimensions={}x{} flags=0x{:04X}",
		vdxFile.filename, vdxFile.frameData.size(), vdxFile.audioData.size(),
		vdxFile.width, vdxFile.height, grvVideoFlags);

	// Clear chunks after processing (free memory)
	vdxFile.chunks.clear();
	// Source bytes are no longer needed after decode; release as early as possible.
	vdxFile.rawData.clear();
	vdxFile.rawView = {};
	vdxFile.externalDataOwner.reset();
}

void parseVDXChunks(VDXFile &vdxFile)
{
	parseVDXChunks(vdxFile, std::span<const uint8_t>{}, 0);
}

double vdxPlaybackRate(const VDXFile &vdxFile, size_t playbackFrameCount)
{
	constexpr double kHeaderFallbackFPS = 15.0;
	constexpr double kFastNavigationFPS = 26.0;
	const double headerRate =
		vdxFile.frameRate ? static_cast<double>(vdxFile.frameRate) : kHeaderFallbackFPS;
	if (vdxFile.rateOverride)
		return vdxFile.rateOverride;

	// The retail T7G player accelerates silent movement VDXes to 26 FPS.
	// Encountering an interleaved sound chunk cancels that override, and
	// SCRIPT.GRV also injects bit 15 for theater-mask/teeth actions that must
	// obey the header rate even when the stream itself is silent.
	if (!vdxFile.audioData.empty())
	{
		const double audioSeconds =
			pcmPlaybackDurationSeconds(vdxFile.audioData.size());
		const size_t frames = playbackFrameCount
			? playbackFrameCount : vdxFile.frameData.size();
		if (audioSeconds > 0.0 && frames > 1)
		{
			const double headerSeconds = static_cast<double>(frames) / headerRate;
			const double disagreement =
				std::abs(headerSeconds - audioSeconds) / audioSeconds;
			if (disagreement > 0.10)
			{
				const double synchronizedRate =
					static_cast<double>(frames) / audioSeconds;
				consoleLogf("VDX",
					"audio-clock pacing '{}' header={:.3f} FPS ({:.3f}s), "
					"PCM={:.3f}s -> {:.3f} FPS",
					vdxFile.filename, headerRate, headerSeconds,
					audioSeconds, synchronizedRate);
				return synchronizedRate;
			}
		}
		return headerRate;
	}
	if ((vdxFile.playbackFlags & (1u << 15)) != 0)
		return headerRate;
	// v32tng snapshots the active Red Book track when it configures each VDX:
	// an active track uses 100 ms steps, while a missing/ended track retains the
	// fast silent-navigation path. Installed Ogg tracks inherit that contract.
	if (redbookIsActive())
		return 10.0;
	return kFastNavigationFPS;
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
static void vdxPlayInternal(
	const std::string &filename,
	VDXFile *preloadedVdx,
	bool startPreparedMusicAtFrameZero,
	bool allowSkip,
	const std::function<bool()> &complete = {})
{
	consoleLogf("VDX", "play begin '{}' source={} prepared-music={}", filename,
		preloadedVdx ? "archive" : "file", startPreparedMusicAtFrameZero);
	VDXFile vdx;
	VDXFile *vdxToUse = preloadedVdx;
	std::unique_ptr<StreamingVDXDecoder> streamDecoder;

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
		vdx = parseVDXFile(filename, std::move(buffer));
		vdxToUse = &vdx;
	}

	// Standalone cutscenes are consumed sequentially.  Decode only the current
	// frame; reusable/preloaded room animations retain indexed frame storage.
	if (!preloadedVdx)
	{
		streamDecoder = std::make_unique<StreamingVDXDecoder>(*vdxToUse);
		if (streamDecoder->totalFrames == 0)
			return;
		streamDecoder->prepareAudio();
		if (!streamDecoder->decodeNextFrame())
			return;
	}
	else if (!vdxToUse->parsed)
	{
		parseVDXChunks(*vdxToUse);
		vdxToUse->parsed = true;
	}
	if (vdxToUse->frameData.empty())
	{
		return;
	}

	// Save state
	double prevFPS = state.frameTiming.currentFPS;
	size_t prevFrame = state.currentFrameIndex;
	AnimationState prevAnim = state.animation;
	// wavPlay() owns the dialogue music duck: any live PCM stream pulls the
	// music mix down to the dialogue level and releases it when playback ends.
	// PCM itself remains at its configured volume throughout.

	// Setup playback
	const size_t audioByteCount = vdxToUse->audioData.size();
	state.frameTiming.currentFPS = vdxPlaybackRate(
		*vdxToUse,
		streamDecoder ? streamDecoder->totalFrames : vdxToUse->frameData.size());
	if (!vdxToUse->audioData.empty())
	{
		auto audioOwner = std::make_shared<std::vector<uint8_t>>(std::move(vdxToUse->audioData));
		wavPlay(audioOwner);
	}

	// Temporarily set currentVDX for rendering (non-owning during playback)
	auto savedVDX = std::move(state.currentVDX); // save ownership
	VDXPlayOwnerGuard ownerGuard{std::move(savedVDX)};
	state.currentVDX.reset(vdxToUse); // temporarily point to playing VDX (non-owning!)
	state.currentFrameIndex = 0;
	state.animation.isPlaying = true;
	state.animation.totalFrames = streamDecoder ? streamDecoder->totalFrames : vdxToUse->frameData.size();
	if ((vdxToUse->playbackFlags & (1u << 8)) != 0)
		state.animation.totalFrames = (std::min)(state.animation.totalFrames, size_t{1});
	state.animation.lastFrameTime = std::chrono::steady_clock::now();
	consoleLogf("VDX", "play configured '{}' frames={} fps={:.3f} audio-bytes={}",
		filename, state.animation.totalFrames, state.frameTiming.currentFPS,
		audioByteCount);
	state.frameTiming.dirtyFrame = true;
	if (startPreparedMusicAtFrameZero)
	{
		// The VDX is completely decoded/configured and frame zero is ready. Release
		// the paused MIDI backend here—not before vdxPlay setup—and wait until its
		// playback clock confirms it has started before presenting the frame.
		musicStartPrepared();
		state.animation.lastFrameTime = std::chrono::steady_clock::now();
	}
	// Present the first frame immediately before processing queued window messages.
	maybeRenderFrame(true);

	// Playback loop
	bool playing = true;
	bool skipped = false;
	size_t displayedFrames = 1;
	while (playing)
	{
		if (!processEvents())
		{
			skipped = true;
			break;
		}
		if (complete && complete())
			break;

#ifdef _WIN32
		if (allowSkip && (GetAsyncKeyState(VK_SPACE) & 1))
		{
			skipped = true;
			break;
		}
#endif

		auto now = std::chrono::steady_clock::now();
		auto elapsed = now - state.animation.lastFrameTime;
				auto frameDuration = state.animation.getFrameDuration(state.frameTiming.currentFPS);
		if (elapsed >= frameDuration)
		{
			if (streamDecoder)
			{
				if (displayedFrames >= state.animation.totalFrames || !streamDecoder->decodeNextFrame())
				{
					playing = false;
				}
				else
				{
					++displayedFrames;
					state.currentFrameIndex = 0;
				}
			}
			else
			{
				state.currentFrameIndex++;
				if (state.currentFrameIndex >= state.animation.totalFrames)
				{
					if (complete)
						state.currentFrameIndex = 0;
					else
					{
						playing = false;
						state.currentFrameIndex = state.animation.totalFrames - 1;
					}
				}
			}
			state.animation.lastFrameTime += frameDuration;
			state.frameTiming.dirtyFrame = true;
		}

		maybeRenderFrame();

	}

	// The retail VDX player does not complete VIDEOREF until its queued PCM is
	// drained. This matters for GAMWAV speech and for movies whose final audio
	// buffer is slightly longer than their final duplicate frame.
	while (!skipped && state.pcm_playing && !g_quitRequested)
	{
		if (!processEvents())
			break;
		maybeRenderFrame();
	}

	// Restore
	wavStop();
	state.frameTiming.currentFPS = prevFPS;
	// currentVDX ownership is restored by VDXPlayOwnerGuard on scope exit
	state.currentFrameIndex = prevFrame;
	state.animation = prevAnim;
	state.frameTiming.dirtyFrame = true;
	consoleLogf("VDX", "play end '{}' skipped={} restored-frame={}",
		filename, skipped, prevFrame);

	if (streamDecoder)
	{
		vdxToUse->frameData.clear();
		vdxToUse->audioData.clear();
		vdxToUse->chunks.clear();
		vdxToUse->rawData.clear();
		vdxToUse->rawView = {};
		vdxToUse->externalDataOwner.reset();
	}
}

void vdxPlay(
	const std::string &filename,
	VDXFile *preloadedVdx,
	bool startPreparedMusicAtFrameZero)
{
	vdxPlayInternal(filename, preloadedVdx, startPreparedMusicAtFrameZero, true);
}

void vdxPlayUnskippable(const std::string &filename, VDXFile *preloadedVdx)
{
	vdxPlayInternal(filename, preloadedVdx, false, false);
}

void vdxPlayUntil(
	const std::string &filename,
	VDXFile *preloadedVdx,
	const std::function<bool()> &complete)
{
	vdxPlayInternal(filename, preloadedVdx, false, false, complete);
}

/*
===============================================================================
Function Name: loadSingleVDX

Description:
	- Loads a single VDX file from the specified room and VDX name.

Parameters:
	- room: The room name (e.g., "FH")
	- vdxName: The VDX file name (e.g., "f_1bc")

Return:
	- A VDXFile object containing the parsed VDX data.
===============================================================================
*/
std::expected<VDXFile, std::string> loadSingleVDX(const std::string &room, const std::string &vdxName)
{
	consoleLogf("RESOURCE", "load VDX request archive={} name={}", room, vdxName);
	// RL indexes and read-only GJD mappings are immutable after load. Keep strong
	// process-lifetime mappings so sequential intro resources do not repeatedly
	// open/map the same archive, and serialize cache insertion for async preload.
	static std::unordered_map<std::string, std::vector<RLEntry>> rlCache;
	static std::unordered_map<std::string,
		std::pair<std::shared_ptr<const uint8_t>, size_t>> gjdCache;
	static std::mutex cacheMutex;
	const std::string rlKey = assetPath(room + ".RL").string();
	const std::string gjdPath = assetPath(room + ".GJD").string();
	RLEntry entry;
	std::shared_ptr<const uint8_t> owner;
	size_t fileSize = 0;
	{
		std::lock_guard<std::mutex> lock(cacheMutex);
		auto cacheIt = rlCache.find(rlKey);
		if (cacheIt == rlCache.end())
		{
			auto result = parseRLFile(rlKey);
			if (!result)
				return std::unexpected(result.error());
			cacheIt = rlCache.emplace(rlKey, std::move(*result)).first;
		}
		const auto &indices = cacheIt->second;
		const auto it = std::find_if(indices.begin(), indices.end(),
			[&](const auto &candidate)
			{
				std::string_view rlClean{candidate.filename};
				const auto dotPos = rlClean.find_first_of('.');
				if (dotPos != std::string_view::npos)
					rlClean.remove_suffix(rlClean.size() - dotPos);
				return rlClean == vdxName;
			});
		if (it == indices.end())
			return std::unexpected("VDX not found in RL: " + vdxName);
		entry = *it;

		const auto gjdCacheIt = gjdCache.find(gjdPath);
		if (gjdCacheIt != gjdCache.end())
		{
			owner = gjdCacheIt->second.first;
			fileSize = gjdCacheIt->second.second;
		}
		else
		{
			auto mapped = mapFileReadOnly(gjdPath);
			if (!mapped)
				return std::unexpected(mapped.error());
			auto [mappedOwner, mappedSize] = std::move(*mapped);
			owner = std::move(mappedOwner);
			fileSize = mappedSize;
			gjdCache.emplace(gjdPath, std::pair{owner, fileSize});
		}
	}

	if (entry.offset > fileSize || entry.length > fileSize - entry.offset)
	{
		return std::unexpected("VDX entry exceeds GJD bounds: " + vdxName);
	}
	std::span<const uint8_t> vdxSpan{owner.get() + entry.offset, entry.length};
	consoleLogf("RESOURCE", "mapped {}/{} offset={} length={} GJD-bytes={}",
		room, vdxName, entry.offset, entry.length, fileSize);
	return parseVDXFileBorrowed(vdxName, vdxSpan, owner);
}

/*
===============================================================================
Function Name: getOrLoadVDX

Description:
	- Gets or loads a VDX file by name, managing the current VDX state.
	- If the VDX is already loaded, returns it directly.

Parameters:
	- name: The name of the VDX file to load or get.

Return:
	- A reference to the VDXFile object for the specified name.
===============================================================================
*/
VDXFile &getOrLoadVDX(const std::string &name)
{
	if (state.currentVDX && state.currentVDX->filename == name)
	{
		return *state.currentVDX;
	}
	if (state.currentVDX)
	{
		unloadVDX(state.currentVDX->filename);
	}
	auto result = loadSingleVDX(state.current_room, name);
	if (!result)
		throw std::runtime_error(result.error());
	VDXFile vdx = std::move(*result);
	parseVDXChunks(vdx);
	state.currentVDX = std::make_unique<VDXFile>(std::move(vdx));
	return *state.currentVDX;
}

/*
===============================================================================
Function Name: unloadVDX

Description:
	- Unloads a VDX file by name, freeing its resources.
	- If the current VDX matches the name, it clears its data and deletes the pointer.

Parameters:
	- name: The name of the VDX file to unload.
===============================================================================
*/
void unloadVDX(const std::string &name)
{
	if (state.currentVDX && state.currentVDX->filename == name)
	{
		state.currentVDX->frameData.clear();
		state.currentVDX->audioData.clear();
		state.currentVDX->chunks.clear();
		state.currentVDX->rawData.clear();
		state.currentVDX->rawView = {};
		state.currentVDX->externalDataOwner.reset();
		state.currentVDX.reset();
	}
}
