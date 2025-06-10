// vdx.cpp

#include <vector>
#include <tuple>
#include <fstream>
#include <filesystem>

#include "vdx.h"
#include "lzss.h"
#include "bitmap.h"
#include "delta.h"
#include "config.h"

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

	vdxFile.identifier = buffer[0] | (buffer[1] << 8);
	std::copy(buffer.begin() + 2, buffer.begin() + 8, vdxFile.unknown.begin());

	size_t offset = 8;
	while (offset < buffer.size())
	{
		VDXChunk chunk;
		chunk.chunkType = buffer[offset];
		chunk.unknown = buffer[offset + 1];
		chunk.dataSize = buffer[offset + 2] | (buffer[offset + 3] << 8) | (buffer[offset + 4] << 16) | (buffer[offset + 5] << 24);
		chunk.lengthMask = buffer[offset + 6];
		chunk.lengthBits = buffer[offset + 7];
		offset += 8;
		chunk.data.assign(buffer.begin() + offset, buffer.begin() + offset + chunk.dataSize);
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
	std::vector<RGBColor> palette;
	size_t prevBitmapIndex{};

	for (auto &chunk : vdxFile.chunks)
	{
		if (chunk.lengthBits != 0)
		{
			chunk.data = lzssDecompress(std::span(chunk.data), chunk.lengthMask, chunk.lengthBits);
		}
		switch (chunk.chunkType)
		{
		case 0x20:
		case 0x25:
		{
			auto [palData, bitmapData] = chunk.chunkType == 0x20
											 ? getBitmapData(chunk.data)
											 : getDeltaBitmapData(chunk.data, palette, vdxFile.chunks[prevBitmapIndex].data);
			palette = std::move(palData);
			chunk.data = std::move(bitmapData);
			prevBitmapIndex = &chunk - vdxFile.chunks.data();
		}
		break;
		case 0x80:
			vdxFile.audioData.insert(vdxFile.audioData.end(), chunk.data.begin(), chunk.data.end());
			break;
		case 0x00:
			if (!vdxFile.chunks.empty() && prevBitmapIndex < vdxFile.chunks.size())
			{
				chunk.data = vdxFile.chunks[prevBitmapIndex].data;
			}
			break;
		}
	}
}