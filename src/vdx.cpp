// vdx.cpp

#include <vector>
#include <tuple>
#include <fstream>
#include <filesystem>
#include <iostream>

#include "vdx.h"
#include "lzss.h"
#include "bitmap.h"
#include "delta.h"

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
VDXFile parseVDXFile(const std::string& filename, const std::vector<uint8_t>& buffer)
{
	VDXFile vdxFile;
	vdxFile.filename = std::filesystem::path(filename).filename().string();

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

		vdxFile.chunks.push_back(chunk);
	}

	return vdxFile;
}

/*
===============================================================================
Function Name: parseVDXChunks

Description:
	- TBD

Parameters:
	- vdxFile: Fully populated VDXFile object.

Return:
	- TBD

Notes:
	- None.
===============================================================================
*/
std::vector<processedVDXChunk> parseVDXChunks(VDXFile& vdxFile)
{
	std::vector<processedVDXChunk> processedChunks;
	std::vector<RGBColor> palette;
	size_t prevBitmapIndex{};

	for (VDXChunk& chunk : vdxFile.chunks)
	{
		if (chunk.lengthBits != 0)
		{
			chunk.data = lzssDecompress(chunk.data, chunk.lengthMask, chunk.lengthBits);
		}

		switch (chunk.chunkType)
		{
		case 0x20:
		case 0x25:
			std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> bitmapData = chunk.chunkType == 0x20
				? getBitmapData(chunk.data)
				: getDeltaBitmapData(chunk.data, palette, processedChunks[prevBitmapIndex].data);

			palette = std::get<0>(bitmapData);
			chunk.data = std::get<1>(bitmapData);
			prevBitmapIndex = processedChunks.size();

			break;
		}

		processedChunks.push_back({ chunk.chunkType, chunk.data });
	}

	return processedChunks;
}

/*
===============================================================================
Function Name: writeVDXFile

Description:
	- TBD

Parameters:
	- vdxFile: Always an std::vector of VDXFile type, but sometimes only a single
			   VDXFile object is passed in.

Notes:
	- Used by the -x command-line switch as an Extraction Tool-set, not related
	to Game Engine functionality.
===============================================================================
*/
void writeVDXFile(const VDXFile& vdxFile, const std::string& outputDir)
{
	std::string vdxFileName = outputDir + "/" + vdxFile.filename;
	std::cout << "filename: " << vdxFileName << std::endl;

	std::ofstream vdxFileOut(vdxFileName, std::ios::binary);
	vdxFileOut.write(reinterpret_cast<const char*>(&vdxFile.identifier), sizeof(vdxFile.identifier));
	vdxFileOut.write(reinterpret_cast<const char*>(vdxFile.unknown.data()), 6);

	for (const auto& chunk : vdxFile.chunks)
	{
		// Write chunk header
		vdxFileOut.write(reinterpret_cast<const char*>(&chunk.chunkType), sizeof(chunk.chunkType));
		vdxFileOut.write(reinterpret_cast<const char*>(&chunk.unknown), sizeof(chunk.unknown));
		vdxFileOut.write(reinterpret_cast<const char*>(&chunk.dataSize), sizeof(chunk.dataSize));
		vdxFileOut.write(reinterpret_cast<const char*>(&chunk.lengthMask), sizeof(chunk.lengthMask));
		vdxFileOut.write(reinterpret_cast<const char*>(&chunk.lengthBits), sizeof(chunk.lengthBits));

		// Write chunk data
		vdxFileOut.write(reinterpret_cast<const char*>(chunk.data.data()), chunk.data.size());
	}

	vdxFileOut.close();
}