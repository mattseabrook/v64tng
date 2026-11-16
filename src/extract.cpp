// extract.cpp

#include <print>
#include <format>
#include <string>
#include <vector>
#include <filesystem>
#include <fstream>
#include <cstdlib>
#include <stdexcept>
#include <cstdio>

#include "extract.h"
#include "config.h"
#include "rl.h"
#include "gjd.h"
#include "vdx.h"
#include "cursor.h"
#include "bitmap.h"
#include "audio.h"
#include "lzss.h"

namespace
{
void validateVDX(std::span<const uint8_t> bytes)
{
	if (bytes.size() < 8 || bytes[0] != 0x67 || bytes[1] != 0x92)
		throw std::runtime_error("Invalid or truncated VDX header");
	for (size_t offset = 8; offset < bytes.size();)
	{
		if (bytes.size() - offset < 8) throw std::runtime_error("Truncated VDX chunk header");
		const size_t length = uint32_t(bytes[offset + 2]) | (uint32_t(bytes[offset + 3]) << 8) |
			(uint32_t(bytes[offset + 4]) << 16) | (uint32_t(bytes[offset + 5]) << 24);
		if (length > bytes.size() - offset - 8) throw std::runtime_error("Truncated VDX chunk payload");
		offset += 8 + length;
	}
}

std::vector<uint8_t> readVDX(const std::string &filename)
{
	std::ifstream file(filename, std::ios::binary | std::ios::ate);
	if (!file) throw std::runtime_error("Cannot open VDX: " + filename);
	const auto size = file.tellg();
	if (size < 0) throw std::runtime_error("Cannot read VDX size: " + filename);
	std::vector<uint8_t> bytes(static_cast<size_t>(size));
	file.seekg(0);
	if (!file.read(reinterpret_cast<char *>(bytes.data()), bytes.size()))
		throw std::runtime_error("Cannot read VDX: " + filename);
	validateVDX(bytes);
	return bytes;
}
}

/*
===============================================================================
Function Name: GJDInfo

Description:
	- Outputs the filename, offset, and length of each VDX file in the GJD file

Parameters:
	- filename: The filename of the VDX file to be extracted
===============================================================================
*/
void GJDInfo(const std::string_view &filename)
{
	auto result = parseRLFile(filename.data());
	if (!result)
	{
		throw std::runtime_error(result.error());
	}
	auto vdxFiles = std::move(*result);
	int RLOffset = 0;

	// Define column widths
	const int offsetWidth = 10;		// For RL Offset
	const int nameWidth = 15;		// For Filename
	const int fileOffsetWidth = 10; // For Offset
	const int lengthWidth = 10;		// For Length

	// Output the table header
	std::println("{:<{}} | {:<{}} | {:<{}} | {:<{}}",
		"RL Offset", offsetWidth, "Filename", nameWidth,
		"Offset", fileOffsetWidth, "Length", lengthWidth);

	// Output a separator line
	std::println("{}", std::string(offsetWidth + nameWidth + fileOffsetWidth + lengthWidth + 8, '-'));

	// Output each entry
	for (const auto &vdxFile : vdxFiles)
	{
		std::println("{:>{}} | {:<{}} | {:>{}} | {:>{}}",
			RLOffset, offsetWidth, vdxFile.filename, nameWidth,
			vdxFile.offset, fileOffsetWidth, vdxFile.length, lengthWidth);
		RLOffset += 20; // Increment RL Offset by 20 for the next entry
	}

	std::println("Number of archive entries: {}", vdxFiles.size());
}

/*
===============================================================================
Function Name: printVDXInfo

Description:
	- Outputs the VDX header information and details of each chunk in a VDX file.
	  Shared by standalone VDXInfo and indexed GJDVInfo inspection.

Parameters:
	- filename: The name of the individual VDX resource being analyzed
	- buffer: The individual VDX payload

Notes:
	- Assumes the file starts with a VDX header (identifier 0x9267).
	- Receives an individual validated VDX payload.
===============================================================================
*/
static void printVDXInfo(const std::string &filename, std::span<const uint8_t> buffer)
{
	validateVDX(buffer);
	VDXFile vdx = parseVDXFile(filename, buffer);
	std::println("File: {}", filename);
	{
		std::println("VDX Header:");
		std::println("  Identifier: 0x{:04X}", vdx.identifier);
		std::print("  Unknown: ");
		for (auto byte : vdx.unknown)
		{
			std::print("{:02X} ", static_cast<int>(byte));
		}
		std::println("\n  Frame rate: {}", vdx.frameRate);
	}

	// Output 0x20 Bitmap table
	std::println("\n0x20 Bitmap\n");
	const int nameWidth = 15;  // Fits "colourDepth" and "palette"
	const int typeWidth = 16;  // Fits "RGBColor[256]"
	const int valueWidth = 20; // Fits values like "160 (0xa0)"
	const int descWidth = 60;  // Description column width

	// Find first 0x20 chunk to extract values
	uint16_t numXTiles = 0, numYTiles = 0, colourDepth = 0;
	bool found0x20 = false;
	for (const auto &chunk : vdx.chunks)
	{
		if (chunk.chunkType == 0x20)
		{
			std::vector<uint8_t> decoded;
			auto data = chunk.data;
			if (vdxChunkIsCompressed(chunk))
			{
				auto result = lzssDecompressChecked(data, chunk.lengthMask, chunk.lengthBits);
				if (!result) throw std::runtime_error(result.error());
				decoded = std::move(*result);
				data = decoded;
			}
			if (data.size() < 6) throw std::runtime_error("Truncated VDX bitmap header");
			numXTiles = readLittleEndian16(data.subspan(0, 2));
			numYTiles = readLittleEndian16(data.subspan(2, 2));
			colourDepth = readLittleEndian16(data.subspan(4, 2));
			found0x20 = true;
			break;
		}
	}

	std::println("{:<{}}\t{:<{}}\t{:<{}}\tDescription",
		"Name", nameWidth, "Type", typeWidth, "Value", valueWidth);

	// Divider line
	std::println("{}", std::string(nameWidth + typeWidth + valueWidth + descWidth + 3, '-'));

	// Table rows with actual values
	if (found0x20)
	{
		std::println("{:<{}}\t{:<{}}\t{:<{}}\tNumber of tiles in the horizontal direction.",
			"numXTiles", nameWidth, "uint16_t", typeWidth,
			std::format("{} (0x{:X})", numXTiles, numXTiles), valueWidth);

		std::println("{:<{}}\t{:<{}}\t{:<{}}\tNumber of tiles in the vertical direction.",
			"numYTiles", nameWidth, "uint16_t", typeWidth,
			std::format("{} (0x{:X})", numYTiles, numYTiles), valueWidth);

		std::println("{:<{}}\t{:<{}}\t{:<{}}\tColour depth in bits. (In the code, only 8 is observed).",
			"colourDepth", nameWidth, "uint16_t", typeWidth,
			std::format("{} (0x{:X})", colourDepth, colourDepth), valueWidth);
	}
	else
	{
		std::println("{:<{}}\t{:<{}}\t{:<{}}\tNumber of tiles in the horizontal direction.",
			"numXTiles", nameWidth, "uint16_t", typeWidth, "N/A", valueWidth);

		std::println("{:<{}}\t{:<{}}\t{:<{}}\tNumber of tiles in the vertical direction.",
			"numYTiles", nameWidth, "uint16_t", typeWidth, "N/A", valueWidth);

		std::println("{:<{}}\t{:<{}}\t{:<{}}\tColour depth in bits. (In the code, only 8 is observed).",
			"colourDepth", nameWidth, "uint16_t", typeWidth, "N/A", valueWidth);
	}

	std::println("{:<{}}\t{:<{}}\t{:<{}}\tRGB values required for a palette implied by colourDepth.",
		"palette", nameWidth, "RGBColor[]", typeWidth,
		found0x20 && colourDepth <= 8 ? std::format("{} bytes", (size_t{1} << colourDepth) * 3) : "N/A", valueWidth);

	std::println("{:<{}}\t{:<{}}\t{:<{}}\tSequence of structures describing the image.",
		"image", nameWidth, "uint8_t[]", typeWidth, "Variable length", valueWidth);

	// Output chunk table (same for both VDX and GJD)
	const int chunkTypeWidth = 6;	// Fits "0x20"
	const int codingWidth = 8;		// Fits "0x77"
	const int dataSizeWidth = 10;	// Fits "10073" (right-aligned decimal)
	const int lengthMaskWidth = 10; // Fits "0x7F"
	const int lengthBitsWidth = 10; // Fits "0x07"

	// Helper function for hex formatting (unchanged)
	auto hex8 = [](uint8_t v) {
		return std::format("0x{:02X}", v);
	};

	std::println("\nChunk Information:");
	// Column headers with space padding
	std::println("{:<{}}| {:<{}}| {:<{}}| {:<{}}| {:<{}}",
		"Type", chunkTypeWidth, "Coding", codingWidth,
		"Data Size", dataSizeWidth, "Length Mask", lengthMaskWidth,
		"Length Bits", lengthBitsWidth);

	// Divider line
	std::println("{}", std::string(
		chunkTypeWidth + codingWidth + dataSizeWidth + lengthMaskWidth + lengthBitsWidth + 4, '-'));

	// Chunk data
	for (const auto &chunk : vdx.chunks)
	{
		std::println("{:<{}}| {:<{}}| {:>{}}| {:<{}}| {:<{}}",
			hex8(chunk.chunkType), chunkTypeWidth, hex8(chunk.coding), codingWidth,
			chunk.dataSize, dataSizeWidth, hex8(chunk.lengthMask), lengthMaskWidth,
			hex8(chunk.lengthBits), lengthBitsWidth);
	}

	std::println("\nNumber of Chunks: {}", vdx.chunks.size());
}

void VDXInfo(const std::string &filename)
{
	printVDXInfo(filename, readVDX(filename));
}

void GJDVInfo(const std::string &filename)
{
	auto path = std::filesystem::path(filename);
	path.replace_extension(".RL");
	const auto files = parseGJDFile(path.string());
	for (const auto &vdx : files)
	{
		if (vdx.identifier == 0x9267) printVDXInfo(vdx.filename, vdx.rawView);
		else std::println("Skipping non-VDX resource: {}", vdx.filename);
	}
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
void extractXMI(const std::vector<uint8_t> &midiData, std::string name)
{
	std::ofstream midiFileOut;
	midiFileOut.exceptions(std::ios::failbit | std::ios::badbit);
	midiFileOut.open(name + ".mid", std::ios::binary);
	midiFileOut.write(reinterpret_cast<const char *>(midiData.data()), midiData.size());
	midiFileOut.close();
	std::println("Wrote: {}.mid", name);
}

/*
===============================================================================
Function Name: extractVDX

Description:
	- Extracts the VDX files from the GJD file

Parameters:
	- filename: The filename of the VDX file to be extracted
===============================================================================
*/
void extractVDX(const std::string_view &filename)
{
	const auto files = parseGJDFile(filename);
	const auto dir = std::filesystem::path(filename).replace_extension();
	std::filesystem::create_directories(dir);
	size_t count = 0;
	for (const auto &vdx : files)
	{
		if (vdx.identifier != 0x9267)
		{ std::println("Skipping non-VDX resource: {}", vdx.filename); continue; }
		validateVDX(vdx.rawView);
		if (vdx.filename.empty() || vdx.filename == "." || vdx.filename == ".." ||
			vdx.filename.find_first_of("/\\:") != std::string::npos)
			throw std::runtime_error("Invalid archive resource filename");
		const auto output = dir / (vdx.filename + ".vdx");
		std::ofstream file;
		file.exceptions(std::ios::failbit | std::ios::badbit);
		file.open(output, std::ios::binary);
		file.write(reinterpret_cast<const char *>(vdx.rawView.data()), vdx.rawView.size());
		file.close();
		std::println("Wrote: {}", output.string());
		++count;
	}
	std::println("Extracted {} VDX files.", count);
}

/*
===============================================================================
Function Name: extractCursors

Description:
	- Creates   <ROB>_GJD/
		├─ 0x00000/PNG/00.png …
		├─ 0x0182F/PNG/00.png …
		└─ …                                             (one sub‑dir per blob)

Parameters:
	- robFilename : path to ROB.GJD
===============================================================================
*/
void extractCursors(const std::string_view &robFilename)
{
	// Open the ROB.GJD file
	std::ifstream file{robFilename.data(), std::ios::binary | std::ios::ate};
	if (!file)
	{
		throw std::runtime_error("Cannot open cursor archive: " + std::string(robFilename));
	}

	// Load entire file into memory
	std::vector<uint8_t> buffer(static_cast<size_t>(file.tellg()));
	file.seekg(0).read(reinterpret_cast<char *>(buffer.data()), buffer.size());

	// Verify file size for palettes
	if (buffer.size() < ::CursorPaletteSizeBytes * ::NumCursorPalettes)
	{
		throw std::runtime_error("ROB.GJD is too small to contain the cursor palettes");
	}

	// Calculate palette block offset
	const size_t paletteBlockOffset = buffer.size() - ::CursorPaletteSizeBytes * ::NumCursorPalettes;

	// Create root directory (e.g., ROB_GJD)
	std::filesystem::path rootDir = std::filesystem::path(robFilename).stem().string() + "_GJD";
	std::filesystem::create_directories(rootDir);

	bool failed = false;
	// Process each cursor blob
	for (size_t i = 0; i < ::CursorBlobs.size(); ++i)
	{
		const auto &meta = ::CursorBlobs[i];
		std::println("\n[Processing Cursor {}] Offset: 0x{:X}", i, meta.offset);

		// Create subdirectory (e.g., 0x00000/PNG)
		std::string hexDir = std::format("0x{:05X}", meta.offset);
		std::filesystem::path pngDir = rootDir / hexDir / "PNG";
		std::filesystem::create_directories(pngDir);

		try
		{
			// Extract and unpack the blob
			auto blob = getCursorBlob(buffer, i);
			CursorImage img = unpackCursorBlob(blob);

			// Validate dimensions
			if (img.width == 0 || img.height == 0)
				throw std::runtime_error("Invalid cursor dimensions");

			// Load palette
			const size_t palOff = paletteBlockOffset + meta.paletteIdx * ::CursorPaletteSizeBytes;
			if (palOff + ::CursorPaletteSizeBytes > buffer.size())
				throw std::runtime_error("Palette offset out of bounds");
			std::span<const uint8_t> pal(&buffer[palOff], ::CursorPaletteSizeBytes);

			// Determine digits for filename padding based on frame count
			const size_t digits = (img.frames >= 100) ? 3 : 2;

			// Write PNGs for each frame using the header's frame count (img.frames)
			for (size_t f = 0; f < img.frames; ++f)
			{
				auto rgba = cursorFrameToRGBA(img, f, pal);
				std::string fn = std::format("{:0>{}}.png", f, digits);
				std::filesystem::path outPath = pngDir / fn;
				savePNG(outPath.string(), rgba, img.width, img.height, true);
				std::println("  Wrote: {}", outPath.filename().string());
			}
		}
		catch (const std::exception &e)
		{
			std::println(stderr, "FAILED: {}", e.what());
			failed = true;
		}
	}
	if (failed) throw std::runtime_error("One or more cursor extractions failed");
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
void extractPNG(std::string_view filename, bool raw)
{
	VDXFile vdx = parseVDXFile(filename, readVDX(std::string(filename)));
	parseVDXChunks(vdx);

	std::string dirName = std::filesystem::path{filename}.stem().string();
	std::filesystem::path dirPath = std::filesystem::path{filename}.parent_path() / dirName;
	std::filesystem::create_directory(dirPath);

	if (!vdx.audioData.empty())
	{
		std::filesystem::path wavPath = dirPath / (std::filesystem::path{filename}.stem().string() + ".wav");
		std::println("Writing: {}", wavPath.string());
		saveWAV(wavPath.string(), vdx.audioData);
	}

	for (size_t i = 0, frameNum = 1; i < vdx.frameData.size(); ++i)
	{
		const auto &frameData = *vdx.frameData[i];

		std::string frame = std::format("{:04}", frameNum);
		std::string baseName = std::filesystem::path{filename}.stem().string();
		std::filesystem::path outPath = dirPath / (baseName + "_" + frame);

		if (raw)
		{
			std::ofstream outFile;
			outFile.exceptions(std::ios::failbit | std::ios::badbit);
			outFile.open(outPath.replace_extension(".raw"), std::ios::binary);
			if (outFile)
			{
				std::println("Writing: {}", outPath.string());
				outFile.write(reinterpret_cast<const char *>(frameData.data()), frameData.size());
			}
		}
		else
		{
			std::println("Writing: {}", outPath.replace_extension(".png").string());
			if (vdx.frameIndices.at(i) && !vdx.frameIndices.at(i)->empty())
                savePNG(outPath.replace_extension(".png").string(), *vdx.frameIndices.at(i),
                    vdx.width, vdx.height, false, vdx.framePalettes.at(i));
            else
                savePNG(outPath.replace_extension(".png").string(), frameData, vdx.width, vdx.height);
		}
		++frameNum;
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
void createVideoFromImages(const std::string &filenameParam, double frameRate)
{
	// Check if FFmpeg is installed
	if (std::system("ffmpeg -version") != 0)
	{
		throw std::runtime_error("FFmpeg is not installed or not in PATH");
	}

	// Get current working directory
	std::filesystem::path workingDirectory = std::filesystem::current_path();
	std::filesystem::path filepath = std::filesystem::path(filenameParam).lexically_normal();

	// Process paths
	std::string filenameWithoutExtension = filepath.filename().string(); // Already a frame directory

	// Construct PNG directory name
	std::filesystem::path pngDirPath = workingDirectory / filepath;
	pngDirPath = pngDirPath.lexically_normal();

	// Validate PNG directory
	if (!std::filesystem::exists(pngDirPath) || !std::filesystem::is_directory(pngDirPath))
	{
		throw std::runtime_error("PNG directory does not exist: " + pngDirPath.string());
	}

	// Verify that the directory contains PNG files matching the expected pattern
	bool foundMatchingFiles = false;
	for (const auto &entry : std::filesystem::directory_iterator(pngDirPath))
	{
		if (entry.path().extension() == ".png" || entry.path().extension() == ".PNG")
		{
			foundMatchingFiles = true;
			break;
		}
	}
	if (!foundMatchingFiles)
	{
		throw std::runtime_error("No PNG files found in directory: " + pngDirPath.string());
	}

	// Build FFmpeg command
	std::string inputFilePattern = filenameWithoutExtension + "_%04d.png";
	std::string outputFilePath = (pngDirPath / (filenameWithoutExtension + ".mkv")).string();
	std::string ffmpegCommand = "ffmpeg -nostdin -y -framerate " + std::to_string(frameRate) + " -start_number 1 -i \"" +
								(pngDirPath / inputFilePattern).string() +
								"\" -c:v libx265 -crf 0 -pix_fmt rgb24 \"" +
								outputFilePath + "\"";

	// Execute FFmpeg command
	int ffmpegResult = std::system(ffmpegCommand.c_str());
	if (ffmpegResult != 0)
	{
		throw std::runtime_error("FFmpeg command failed");
	}

	// Optional: Play the generated video using ffplay
	std::string ffplayCommand = "ffplay -loop 0 \"" + outputFilePath + "\"";
	if (std::system(ffplayCommand.c_str()) != 0)
		throw std::runtime_error("ffplay preview failed; MKV was created at " + outputFilePath);
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

/*
===============================================================================
Function Name: loadPNG

Description:
	- Loads a PNG file and returns RGBA image data.

Parameters:
	- filename: The filename of the PNG file to be read.
	- width: Output width of the image
	- height: Output height of the image
	
Returns:
	- Vector of RGBA pixel data (4 bytes per pixel)
===============================================================================
*/
std::vector<uint8_t> loadPNG(const std::string& filename, int& width, int& height)
{
	FILE* fp;
	if (fopen_s(&fp, filename.c_str(), "rb") || !fp)
		throw std::runtime_error("Failed to open " + filename);

	png_structp png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
	if (!png_ptr)
	{
		fclose(fp);
		throw std::runtime_error("png_create_read_struct failed");
	}

	png_infop info_ptr = png_create_info_struct(png_ptr);
	if (!info_ptr)
	{
		fclose(fp);
		png_destroy_read_struct(&png_ptr, nullptr, nullptr);
		throw std::runtime_error("png_create_info_struct failed");
	}

	if (setjmp(png_jmpbuf(png_ptr)))
	{
		fclose(fp);
		png_destroy_read_struct(&png_ptr, &info_ptr, nullptr);
		throw std::runtime_error("libpng read error");
	}

	png_init_io(png_ptr, fp);
	png_read_info(png_ptr, info_ptr);

	width = png_get_image_width(png_ptr, info_ptr);
	height = png_get_image_height(png_ptr, info_ptr);
	png_byte colorType = png_get_color_type(png_ptr, info_ptr);
	png_byte bitDepth = png_get_bit_depth(png_ptr, info_ptr);

	// Convert to RGBA8
	if (bitDepth == 16)
		png_set_strip_16(png_ptr);
	
	if (colorType == PNG_COLOR_TYPE_PALETTE)
		png_set_palette_to_rgb(png_ptr);
	
	if (colorType == PNG_COLOR_TYPE_GRAY && bitDepth < 8)
		png_set_expand_gray_1_2_4_to_8(png_ptr);
	
	if (png_get_valid(png_ptr, info_ptr, PNG_INFO_tRNS))
		png_set_tRNS_to_alpha(png_ptr);
	
	if (colorType == PNG_COLOR_TYPE_RGB || colorType == PNG_COLOR_TYPE_GRAY || colorType == PNG_COLOR_TYPE_PALETTE)
		png_set_filler(png_ptr, 0xFF, PNG_FILLER_AFTER);
	
	if (colorType == PNG_COLOR_TYPE_GRAY || colorType == PNG_COLOR_TYPE_GRAY_ALPHA)
		png_set_gray_to_rgb(png_ptr);

	png_read_update_info(png_ptr, info_ptr);

	// Allocate image buffer
	std::vector<uint8_t> imageData(static_cast<size_t>(width) * height * 4);
	std::vector<png_bytep> rowPtrs(height);
	
	for (int y = 0; y < height; ++y)
		rowPtrs[y] = &imageData[y * width * 4];

	png_read_image(png_ptr, rowPtrs.data());
	png_read_end(png_ptr, nullptr);

	fclose(fp);
	png_destroy_read_struct(&png_ptr, &info_ptr, nullptr);

	return imageData;
}

/*
===============================================================================
Function Name: saveWAV

Description:
		- Saves a *.WAV file from concatenated 0x80 audio chunks.

Parameters:
		- filename: The filename of the WAV file to be written
		- audioData: Raw PCM data (8-bit, mono, 22050 Hz)
===============================================================================
*/
void saveWAV(const std::string &filename, const std::vector<uint8_t> &audioData)
{
	WAVHeader header;
	header.subchunk2Size = static_cast<uint32_t>(audioData.size());
	header.chunkSize = 36 + header.subchunk2Size;

	std::ofstream outFile;
	outFile.exceptions(std::ios::failbit | std::ios::badbit);
	outFile.open(filename, std::ios::binary);

	outFile.write(reinterpret_cast<const char *>(&header), sizeof(header));
	outFile.write(reinterpret_cast<const char *>(audioData.data()), audioData.size());
}
