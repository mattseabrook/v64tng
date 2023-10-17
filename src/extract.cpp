// extract.cpp

#include <iostream>
#include <string>
#include <vector>
#include <filesystem>
#include <fstream>
#include <sstream>

#include "extract.h"

#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "xmi.h"
#include "bitmap.h"

// Output the information for a GJD file
void GJDInfo(const std::string_view& filename)
{
	auto vdxFiles = parseRLFile(filename.data());

	for (const auto& vdxFile : vdxFiles)
	{
		std::cout << vdxFile.filename << " | " << vdxFile.offset << " | " << vdxFile.length << std::endl;
	}

	std::cout << "Number of VDX Files: " << vdxFiles.size() << std::endl;
}

// Extract XMI files from the RL/GJD pair
void extractXMI()
{
	std::vector<RLEntry> xmiFiles = parseRLFile("XMI.RL");

	std::ifstream xmiData("XMI.GJD", std::ios::binary | std::ios::ate);

	std::filesystem::create_directory("XMI");

	for (const auto& xmiFile : xmiFiles)
	{
		std::vector<uint8_t> xmi(xmiFile.length);

		xmiData.seekg(xmiFile.offset, std::ios::beg);
		xmiData.read(reinterpret_cast<char*>(xmi.data()), xmiFile.length);

		std::ofstream xmiFileOut("XMI/" + xmiFile.filename, std::ios::binary);
		xmiFileOut.write(reinterpret_cast<const char*>(xmi.data()), xmiFile.length);
		xmiFileOut.close();

		std::vector<uint8_t> standardMidi = xmiConverter(xmi);
		
		std::ofstream standardMidiFileOut("XMI/" + xmiFile.filename.substr(0, xmiFile.filename.find_last_of('.')) + ".mid", std::ios::binary);
		standardMidiFileOut.write(reinterpret_cast<const char*>(standardMidi.data()), standardMidi.size());
		standardMidiFileOut.close();
	}
}

// Extracts all of the *.VDX files from the user-specifed *.GJD file
void extractVDX(const std::string_view& filename)
{
	std::string dirName(filename.data());
	dirName.erase(dirName.find_last_of('.'));
	std::filesystem::create_directory(dirName);

	std::cout << "Extracting GJD..." << std::endl;

	std::vector<VDXFile> VDXFiles = parseGJDFile(filename.data());

	for (const auto& vdxFile : VDXFiles)
	{
		writeVDXFile(vdxFile, dirName);
	}
}

// Writes out a *.PNG or *.RAW of every 0x20 and 0x25 chunk in the user-specified *.VDX file
// as a full 640x320 bitmap
void extractPNG(const std::string_view& filename, bool raw)
{
	std::ifstream vdxFile(filename.data(), std::ios::binary | std::ios::ate);

	if (!vdxFile)
	{
		std::cerr << "ERROR: Failed to open the VDX file: " << filename << std::endl;
		return;
	}

	auto fileSize = static_cast<std::size_t>(vdxFile.tellg());
	vdxFile.seekg(0, std::ios::beg);

	std::vector<uint8_t> vdxData(fileSize);
	vdxFile.read(reinterpret_cast<char*>(vdxData.data()), fileSize);

	VDXFile parsedVDXFile = parseVDXFile(filename.data(), vdxData);
	parseVDXChunks(parsedVDXFile);

	std::filesystem::path dirPath = (std::filesystem::path(filename.data()).parent_path() /
		[](std::string s) { std::replace(s.begin(), s.end(), '.', '_'); return s; }
	(std::filesystem::path(filename.data()).filename().string()));

	if (!std::filesystem::create_directory(dirPath))
	{
		std::cerr << "ERROR: Failed to create the directory: " << dirPath << std::endl;
		return;
	}

	for (std::size_t i = 0; i < parsedVDXFile.chunks.size(); i++)
	{
		// debug
		std::cout << "Type: 0x" << std::hex << static_cast<int>(parsedVDXFile.chunks[i].chunkType) <<
			" , LZSS size (bytes): " << std::dec << parsedVDXFile.chunks[i].dataSize <<
			" , Size (bytes): " << parsedVDXFile.chunks[i].data.size() << std::endl;

		if (parsedVDXFile.chunks[i].chunkType == 0x80)
		{
			continue;
		}
		else if (parsedVDXFile.chunks[i].chunkType == 0x00)
		{
			continue;
		}

		std::ostringstream frameString;
		frameString << std::setfill('0') << std::setw(4) << i + 1;

		std::filesystem::path outputFilePath = dirPath;

		if (raw)
		{
			outputFilePath /= (parsedVDXFile.filename + "_" + frameString.str() + ".raw");
			std::ofstream rawBitmapFile(outputFilePath, std::ios::binary);
			std::cout << "Writing: " << outputFilePath.string() << std::endl;
			rawBitmapFile.write(reinterpret_cast<const char*>(parsedVDXFile.chunks[i].data.data()), parsedVDXFile.chunks[i].data.size());
			rawBitmapFile.close();
		}
		else
		{
			outputFilePath /= (parsedVDXFile.filename + "_" + frameString.str() + ".png");
			std::cout << "Writing: " << outputFilePath.string() << std::endl;
			savePNG(outputFilePath.string(), parsedVDXFile.chunks[i].data, 640, 320);
		}
	}
}