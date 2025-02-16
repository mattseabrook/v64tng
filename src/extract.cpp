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
void extractPNG(const std::string_view& filename, bool raw) {
	// Open the VDX file in binary mode
	std::ifstream vdxFile(filename.data(), std::ios::binary | std::ios::ate);
	if (!vdxFile) {
		std::cerr << "ERROR: Failed to open the VDX file: " << filename << std::endl;
		return;
	}

	// Read the entire file into memory
	auto fileSize = static_cast<std::size_t>(vdxFile.tellg());
	vdxFile.seekg(0, std::ios::beg);
	std::vector<uint8_t> vdxData(fileSize);
	vdxFile.read(reinterpret_cast<char*>(vdxData.data()), fileSize);

	// Parse the VDX file and its chunks
	VDXFile parsedVDXFile = parseVDXFile(filename.data(), vdxData);
	parseVDXChunks(parsedVDXFile);

	// Construct the output directory path
	std::filesystem::path dirPath = std::filesystem::absolute(std::filesystem::path(filename).parent_path() / parsedVDXFile.filename);

	// Normalize the path to remove redundant separators
	dirPath = dirPath.lexically_normal();

	// Debug output for the directory path
	std::cout << "Resolved directory path: " << dirPath.string() << std::endl;

	// Handle conflicts between files and directories
	if (std::filesystem::exists(dirPath)) {
		if (std::filesystem::is_directory(dirPath)) {
			// Directory already exists, proceed
			std::cout << "Directory already exists: " << dirPath.string() << std::endl;
		}
		else if (std::filesystem::is_regular_file(dirPath)) {
			// A file with the same name exists, attempt to create a directory
			std::cout << "File with the same name exists: " << dirPath.string() << std::endl;
			dirPath /= ""; // Append a trailing separator to differentiate the directory
			if (!std::filesystem::create_directory(dirPath)) {
				std::cerr << "ERROR: Failed to create directory: " << dirPath.string() << std::endl;
				return;
			}
		}
		else {
			std::cerr << "ERROR: Path exists but is neither a file nor a directory: " << dirPath.string() << std::endl;
			return;
		}
	}
	else {
		// Attempt to create the directory
		if (!std::filesystem::create_directory(dirPath)) {
			std::cerr << "ERROR: Failed to create directory: " << dirPath.string() << std::endl;
			return;
		}
	}

	// Process each chunk and write PNG/RAW files
	for (std::size_t i = 0; i < parsedVDXFile.chunks.size(); ++i) {
		const auto& chunk = parsedVDXFile.chunks[i];

		// Skip unsupported chunk types
		if (chunk.chunkType == 0x80 || chunk.chunkType == 0x00) {
			continue;
		}

		// Debug output for chunk information
		std::cout << "Type: 0x" << std::hex << static_cast<int>(chunk.chunkType)
			<< " , LZSS size (bytes): " << std::dec << chunk.dataSize
			<< " , Size (bytes): " << chunk.data.size() << std::endl;

		// Generate frame number string (e.g., "0001")
		std::ostringstream frameString;
		frameString << std::setfill('0') << std::setw(4) << (i + 1);

		// Construct output file path
		std::filesystem::path outputFilePath = dirPath / (parsedVDXFile.filename + "_" + frameString.str());
		if (raw) {
			outputFilePath.replace_extension(".raw");
			std::ofstream rawBitmapFile(outputFilePath, std::ios::binary);
			if (!rawBitmapFile) {
				std::cerr << "ERROR: Failed to create RAW file: " << outputFilePath.string() << std::endl;
				continue;
			}
			std::cout << "Writing: " << outputFilePath.string() << std::endl;
			rawBitmapFile.write(reinterpret_cast<const char*>(chunk.data.data()), chunk.data.size());
		}
		else {
			outputFilePath.replace_extension(".png");
			std::cout << "Writing: " << outputFilePath.string() << std::endl;
			savePNG(outputFilePath.string(), chunk.data, 640, 320);
		}
	}
}

//
// Invokes FFmpeg to create a video from a directory of *.PNG files
//
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