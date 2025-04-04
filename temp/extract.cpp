// extract.cpp

#include <iostream>
#include <string>
#include <vector>
#include <filesystem>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <ranges>
#include <cstdlib>
#include <stdexcept>
#include <cstdio>

#include "extract.h"
#include "config.h"
#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "bitmap.h"

/*
===============================================================================
Function Name: GJDInfo

Description:
	- Outputs the filename, offset, and length of each VDX file in the GJD file

Parameters:
	- filename: The filename of the VDX file to be extracted
===============================================================================
*/
void GJDInfo(const std::string_view& filename)
{
	auto vdxFiles = parseRLFile(filename.data());

	for (const auto& vdxFile : vdxFiles)
	{
		std::cout << vdxFile.filename << " | " << vdxFile.offset << " | " << vdxFile.length << std::endl;
	}

	std::cout << "Number of VDX Files: " << vdxFiles.size() << std::endl;
}

/*
===============================================================================
Function Name: extractXMI

Description:
	- Writes out a *.MID or *.XMI file of the given MIDI data

Parameters:
	- midiData: The MIDI data to be written
	- name: The filename of the MIDI file to be written
===============================================================================
*/
void extractXMI(const std::vector<uint8_t>& midiData, std::string name)
{
	std::ofstream midiFileOut(name + ".mid", std::ios::binary);
	midiFileOut.write(reinterpret_cast<const char*>(midiData.data()), midiData.size());
	midiFileOut.close();
}

/*
===============================================================================
Function Name: extractVDX

Description:
	- Extracts the VDX files from the GJD file

Parameters:
	- filename: The filename of the VDX file to be extracted
===============================================================================
*/void extractVDX(const std::string_view& filename)
{
	std::string dirName(filename.data());
	dirName.erase(dirName.find_last_of('.'));
	std::filesystem::create_directory(dirName);

	std::cout << "Extracting GJD..." << std::endl;

	std::vector<VDXFile> VDXFiles = parseGJDFile(filename.data());

	for (const auto& vdxFile : VDXFiles)
	{
		std::string vdxFileName = dirName + "/" + vdxFile.filename + ".vdx";
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
}

/*
===============================================================================
Function Name: extractPNG

Description:
	- Writes out a *.PNG or *.RAW of every 0x20 and 0x25 chunk in the
	user-specified *.VDX file as a full 640x320 bitmap

Parameters:
	- filename: The filename of the VDX file to be extracted
	- raw: If true, the output will be in *.RAW format

===============================================================================
*/
void extractPNG(std::string_view filename, bool raw) {
	std::ifstream vdxFile{ filename.data(), std::ios::binary | std::ios::ate };
	if (!vdxFile) return std::cerr << "ERROR: Can't open VDX: " << filename << '\n', void();

	std::vector<uint8_t> vdxData(static_cast<std::size_t>(vdxFile.tellg()));
	vdxFile.seekg(0).read(reinterpret_cast<char*>(vdxData.data()), vdxData.size());

	VDXFile vdx = parseVDXFile(filename, vdxData);
	parseVDXChunks(vdx);

	std::string dirName = std::filesystem::path{ filename }.stem().string();
	std::filesystem::path dirPath = std::filesystem::path{ filename }.parent_path() / dirName;
	std::filesystem::create_directory(dirPath);

	std::vector<uint8_t> alphaFrame(640 * 320 * 3);
	constexpr RGBColor colorKey{ 255, 0, 255 };

	for (size_t i = 0; i < vdx.chunks.size(); ++i) {
		const auto& chunk = vdx.chunks[i];
		if (chunk.chunkType != 0x20 && chunk.chunkType != 0x25) continue;

		std::ostringstream frame;
		frame << std::setfill('0') << std::setw(4) << (i + 1);
		std::string baseName = std::filesystem::path{ filename }.stem().string();
		std::filesystem::path outPath = dirPath / (baseName + "_" + frame.str());

		if (raw) {
			std::ofstream outFile{ outPath.replace_extension(".raw"), std::ios::binary };
			outFile && (std::cout << "Writing: " << outPath.string() << '\n', outFile.write(reinterpret_cast<const char*>(chunk.data.data()), chunk.data.size()));
		}
		else {
			std::cout << "Writing: " << (outPath.replace_extension(".png")).string() << '\n';
			if (config["devMode"] && chunk.chunkType == 0x25 && i > 0) {
				alphaFrame = vdx.chunks[i - 1].data; // Set alphaFrame to previous frame
				for (size_t j = 0; j < chunk.data.size() && j < alphaFrame.size(); j += 3) {
					if (j + 2 < chunk.data.size() && j + 2 < alphaFrame.size() &&
						(chunk.data[j] != alphaFrame[j] ||
							chunk.data[j + 1] != alphaFrame[j + 1] ||
							chunk.data[j + 2] != alphaFrame[j + 2])) {
						alphaFrame[j] = colorKey.r;
						alphaFrame[j + 1] = colorKey.g;
						alphaFrame[j + 2] = colorKey.b;
					}
				}
				savePNG(outPath.string(), alphaFrame, 640, 320);
			}
			else {
				savePNG(outPath.string(), chunk.data, 640, 320);
			}
		}
	}
}

/*
===============================================================================
Function Name: createVideoFromImages

Description:
	- Creates a video from the PNG files in the specified directory using FFmpeg

Parameters:
	- filenameParam: The filename of the VDX file to be extracted
===============================================================================
*/
void createVideoFromImages(const std::string& filenameParam) {
	// Check if FFmpeg is installed
	if (std::system("ffmpeg -version") != 0) {
		std::cerr << "FFmpeg is not installed or not in the system PATH." << std::endl;
		return;
	}

	// Get current working directory
	std::filesystem::path workingDirectory = std::filesystem::current_path();
	std::filesystem::path filepath = std::filesystem::path(filenameParam).lexically_normal();

	// Process paths
	std::filesystem::path baseDirectory = filepath.parent_path();
	std::string filenameWithoutExtension = filepath.stem().string(); // Base filename without extension

	// Construct PNG directory name
	std::filesystem::path pngDirPath = workingDirectory / baseDirectory / filenameWithoutExtension;
	pngDirPath = pngDirPath.lexically_normal();

	// Validate PNG directory
	if (!std::filesystem::exists(pngDirPath) || !std::filesystem::is_directory(pngDirPath)) {
		std::cerr << "PNG directory does not exist: " << pngDirPath.string() << std::endl;
		return;
	}

	// Verify that the directory contains PNG files matching the expected pattern
	bool foundMatchingFiles = false;
	for (const auto& entry : std::filesystem::directory_iterator(pngDirPath)) {
		if (entry.path().extension() == ".png" || entry.path().extension() == ".PNG") {
			foundMatchingFiles = true;
			break;
		}
	}
	if (!foundMatchingFiles) {
		std::cerr << "No PNG files found in directory: " << pngDirPath.string() << std::endl;
		return;
	}

	// Build FFmpeg command
	std::string inputFilePattern = filenameWithoutExtension + "_%04d.png";
	std::string outputFilePath = (pngDirPath / (filenameWithoutExtension + ".mkv")).string();
	std::string ffmpegCommand = "ffmpeg -framerate 24 -i \"" +
		(pngDirPath / inputFilePattern).string() +
		"\" -c:v libx265 -crf 0 -pix_fmt rgb24 \"" +
		outputFilePath + "\"";

	// Execute FFmpeg command
	int ffmpegResult = std::system(ffmpegCommand.c_str());
	if (ffmpegResult != 0) {
		std::cerr << "FFmpeg command failed." << std::endl;
		return;
	}

	// Optional: Play the generated video using ffplay
	std::string ffplayCommand = "ffplay -loop 0 \"" + outputFilePath + "\"";
	std::system(ffplayCommand.c_str());
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