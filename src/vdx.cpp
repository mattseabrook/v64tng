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
		std::vector<uint8_t> data;

		switch (chunk.chunkType)
		{
		case 0x00:
			// Handle chunk type 0x00
			data = std::vector<uint8_t>();

			break;
		case 0x20:
		{
			// Handle chunk type 0x20
			if (chunk.lengthBits != 0)
			{
				std::vector<uint8_t> decompressedData = lzssDecompress(chunk.data, chunk.lengthMask, chunk.lengthBits);
				std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> result = getBitmapData(decompressedData);
				palette = std::get<0>(result);
				data = std::get<1>(result);
				prevBitmapIndex = processedChunks.size();
			}
			else {
				data = chunk.data;
			}

			break;
		}
		case 0x25:
		{
			// Handle chunk type 0x25
			if (chunk.lengthBits != 0)
			{
				std::vector<uint8_t> decompressedData = lzssDecompress(chunk.data, chunk.lengthMask, chunk.lengthBits);
				std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> result = getDeltaBitmapData(decompressedData,
					palette,
					processedChunks[prevBitmapIndex].data);
				palette = std::get<0>(result);
				data = std::get<1>(result);
				prevBitmapIndex = processedChunks.size();
			}
			else {
				data = chunk.data;
			}
			break;
		}
		case 0x80:
			// Handle chunk type 0x80
			data = chunk.data;

			break;
		}

		processedChunks.push_back({ chunk.chunkType, data });
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