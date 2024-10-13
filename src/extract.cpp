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
void extractXMI(const std::vector<uint8_t>& midiData, std::string name)
{
	std::ofstream midiFileOut(name + ".mid", std::ios::binary);
	midiFileOut.write(reinterpret_cast<const char*>(midiData.data()), midiData.size());
	midiFileOut.close();
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
		if (parsedVDXFile.chunks[i].chunkType == 0x80)
		{
			continue;
		}
		else if (parsedVDXFile.chunks[i].chunkType == 0x00)
		{
			continue;
		}

		// Improve this output later
		std::cout << "Type: 0x" << std::hex << static_cast<int>(parsedVDXFile.chunks[i].chunkType) <<
			" , LZSS size (bytes): " << std::dec << parsedVDXFile.chunks[i].dataSize <<
			" , Size (bytes): " << parsedVDXFile.chunks[i].data.size() << std::endl;

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

//
// Invokes FFmpeg to create a video from a directory of *.PNG files
//
void createVideoFromImages(const std::string& filenameParam) {
	if (std::system("ffmpeg -version") != 0) {
		std::cerr << "FFMPEG is not installed or is not in the system %PATH% variable." << std::endl;
		return;
	}

	std::string workingDirectory = std::filesystem::current_path().string();

	std::filesystem::path filepath(filenameParam);
	std::string baseDirectory = filepath.parent_path().string();
	std::string filenameWithoutExtension = filepath.stem().string();

	if (!baseDirectory.empty() && baseDirectory[0] == '.' && (baseDirectory[1] == '\\' || baseDirectory[1] == '/')) {
		baseDirectory = baseDirectory.substr(2);
	}

	std::replace(filenameWithoutExtension.begin(), filenameWithoutExtension.end(), '.', '_');

	// Windows only
	std::string pngDirectory = workingDirectory + "\\" + baseDirectory + "\\" + filenameWithoutExtension;
	std::replace(pngDirectory.begin(), pngDirectory.end(), '/', '\\');

	std::string pngFilename = filenameWithoutExtension;
	size_t lastUnderscorePos = pngFilename.find_last_of('_');
	if (lastUnderscorePos != std::string::npos) {
		pngFilename[lastUnderscorePos] = '.';
	}

	// Iterate over PNG files in the directory and resize them
	for (const auto& entry : std::filesystem::directory_iterator(pngDirectory)) {
		if (entry.path().extension() == ".png") {
			std::string filePath = entry.path().string();
			std::string magickCommand = "magick \"" + filePath + "\" -resize 200% -filter point \"" + filePath + "\"";
			std::system(magickCommand.c_str());
		}
	}

	std::string command = "ffmpeg -framerate 15 -i \"" + pngDirectory +
		"\\" + pngFilename + "_%04d.png\" -c:v libx265 -crf 0 -pix_fmt rgb24 \"" +
		pngDirectory + "\\" + filenameWithoutExtension + ".mkv\"";

	int result = std::system(command.c_str());

	if (result != 0) {
		std::cerr << "FFMPEG command execution failed." << std::endl;
	}
	else {
		std::string ffplayCommand = "ffplay -loop 0 \"" + pngDirectory + "\\" + filenameWithoutExtension + ".mkv\"";
		std::system(ffplayCommand.c_str());
	}
}

/*
===============================================================================
Function Name: savePNG

Description:
	- Saves a *.PNG file from the given image data.

Parameters:
	- filename: The filename of the PNG file to be wrteen.
	- imageData: x.
	- width: width of the image
	- height: height of the image

Return:
	- TBD

Notes:
	- x
===============================================================================
*/
void savePNG(const std::string& filename, const std::vector<uint8_t>& imageData, int width, int height)
{
	FILE* fp;
	errno_t err = fopen_s(&fp, filename.c_str(), "wb");
	if (err != 0 || !fp)
	{
		throw std::runtime_error("Failed to open file for writing: " + filename);
	}

	png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
	if (!png_ptr)
	{
		fclose(fp);
		throw std::runtime_error("Failed to create PNG write struct");
	}

	png_infop info_ptr = png_create_info_struct(png_ptr);
	if (!info_ptr)
	{
		fclose(fp);
		png_destroy_write_struct(&png_ptr, nullptr);
		throw std::runtime_error("Failed to create PNG info struct");
	}

	if (setjmp(png_jmpbuf(png_ptr)))
	{
		fclose(fp);
		png_destroy_write_struct(&png_ptr, &info_ptr);
		throw std::runtime_error("Error during PNG initialization");
	}

	png_init_io(png_ptr, fp);

	png_set_IHDR(png_ptr, info_ptr, width, height,
		8, PNG_COLOR_TYPE_RGB, PNG_INTERLACE_NONE,
		PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);

	png_write_info(png_ptr, info_ptr);

	std::vector<png_bytep> row_pointers(height);
	for (int y = 0; y < height; ++y)
	{
		row_pointers[y] = const_cast<uint8_t*>(&imageData[y * width * 3]);
	}

	png_write_image(png_ptr, row_pointers.data());

	png_write_end(png_ptr, nullptr);

	fclose(fp);
	png_destroy_write_struct(&png_ptr, &info_ptr);
}