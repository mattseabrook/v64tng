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
#include "cursor.h"
#include "bitmap.h"
#include "audio.h"

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
	auto vdxFiles = parseRLFile(filename.data());
	int RLOffset = 0;

	// Define column widths
	const int offsetWidth = 10;		// For RL Offset
	const int nameWidth = 15;		// For Filename
	const int fileOffsetWidth = 10; // For Offset
	const int lengthWidth = 10;		// For Length

	// Output the table header
	std::cout << std::left
			  << std::setw(offsetWidth) << "RL Offset" << " | "
			  << std::setw(nameWidth) << "Filename" << " | "
			  << std::setw(fileOffsetWidth) << "Offset" << " | "
			  << std::setw(lengthWidth) << "Length" << std::endl;

	// Output a separator line
	std::cout << std::string(offsetWidth + nameWidth + fileOffsetWidth + lengthWidth + 8, '-') << std::endl;

	// Output each entry
	for (const auto &vdxFile : vdxFiles)
	{
		std::cout << std::right
				  << std::setw(offsetWidth) << RLOffset << " | "
				  << std::left
				  << std::setw(nameWidth) << vdxFile.filename << " | "
				  << std::right
				  << std::setw(fileOffsetWidth) << vdxFile.offset << " | "
				  << std::setw(lengthWidth) << vdxFile.length << std::endl;
		RLOffset += 20; // Increment RL Offset by 20 for the next entry
	}

	std::cout << "Number of VDX Files: " << vdxFiles.size() << std::endl;
}

/*
===============================================================================
Function Name: VDXInfo

Description:
	- Outputs the VDX header information and details of each chunk in a VDX file.
	  Can parse standalone VDX files or GJD files assumed to contain VDX data directly.

Parameters:
	- filename: The filename of the VDX or GJD file to analyze

Notes:
	- Assumes the file starts with a VDX header (identifier 0x6792).
	- Does not rely on RL files, treating the input as raw VDX data.
===============================================================================
*/
void VDXInfo(const std::string &filename)
{
	std::ifstream file(filename, std::ios::binary);
	if (!file)
	{
		std::cerr << "ERROR: Can't open file: " << filename << '\n';
		return;
	}

	// Read entire file into buffer
	file.seekg(0, std::ios::end);
	size_t fileSize = file.tellg();
	file.seekg(0, std::ios::beg);
	std::vector<uint8_t> buffer(fileSize);
	file.read(reinterpret_cast<char *>(buffer.data()), fileSize);
	file.close();

	VDXFile vdx;
	bool isGJD = (filename.find(".GJD") != std::string::npos ||
				  filename.find(".gjd") != std::string::npos);

	if (!isGJD)
	{
		// Normal VDX parsing
		vdx = parseVDXFile(filename, buffer);
	}
	else
	{
		// Parse raw chunks without VDX header
		vdx.filename = filename;
		vdx.rawData = std::move(buffer); // Store raw data for span references
		std::span<const uint8_t> rawSpan{vdx.rawData};
		
		size_t offset = 0;
		while (offset < rawSpan.size())
		{
			VDXChunk chunk;
			chunk.chunkType = rawSpan[offset];
			chunk.unknown = rawSpan[offset + 1];
			chunk.dataSize = *reinterpret_cast<const uint32_t *>(&rawSpan[offset + 2]);
			chunk.lengthMask = rawSpan[offset + 6];
			chunk.lengthBits = rawSpan[offset + 7];
			offset += 8;
			// Create span directly into rawData instead of copying
			chunk.data = rawSpan.subspan(offset, chunk.dataSize);
			offset += chunk.dataSize;
			vdx.chunks.push_back(std::move(chunk));
		}
	}

	// Output header (only for VDX files)
	if (!isGJD)
	{
		std::cout << "VDX Header:\n";
		std::cout << "  Identifier: 0x" << std::hex << std::setw(4) << std::setfill('0') << vdx.identifier << std::dec << '\n';
		std::cout << "  Unknown: ";
		for (auto byte : vdx.unknown)
		{
			std::cout << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(byte) << ' ';
		}
		std::cout << std::dec << '\n';
	}

	// Output 0x20 Bitmap table
	std::cout << "\n0x20 Bitmap\n\n";
	const int nameWidth = 15;  // Fits "colourDepth" and "palette"
	const int typeWidth = 16;  // Fits "RGBColor[768]"
	const int valueWidth = 20; // Fits values like "160 (0xa0)"
	const int descWidth = 60;  // Description column width

	// Find first 0x20 chunk to extract values
	uint16_t numXTiles = 0, numYTiles = 0, colourDepth = 0;
	bool found0x20 = false;
	for (const auto &chunk : vdx.chunks)
	{
		if (chunk.chunkType == 0x20 && chunk.data.size() >= 6)
		{
			numXTiles = readLittleEndian16(chunk.data.subspan(0, 2));
			numYTiles = readLittleEndian16(chunk.data.subspan(2, 2));
			colourDepth = readLittleEndian16(chunk.data.subspan(4, 2));
			found0x20 = true;
			break;
		}
	}

	std::cout << std::left << std::setfill(' ')
			  << std::setw(nameWidth) << "Name" << "\t"
			  << std::setw(typeWidth) << "Type" << "\t"
			  << std::setw(valueWidth) << "Value" << "\t"
			  << "Description" << '\n';

	// Divider line
	std::cout << std::string(nameWidth + typeWidth + valueWidth + descWidth + 3, '-') << '\n';

	// Table rows with actual values
	if (found0x20)
	{
		std::cout << std::left << std::setfill(' ')
				  << std::setw(nameWidth) << "numXTiles" << "\t"
				  << std::setw(typeWidth) << "uint16_t" << "\t"
				  << std::setw(valueWidth) << (std::to_string(numXTiles) + " (0x" + (std::ostringstream{} << std::hex << numXTiles).str() + ")") << "\t"
				  << "Number of tiles in the horizontal direction." << '\n';

		std::cout << std::left << std::setfill(' ')
				  << std::setw(nameWidth) << "numYTiles" << "\t"
				  << std::setw(typeWidth) << "uint16_t" << "\t"
				  << std::setw(valueWidth) << (std::to_string(numYTiles) + " (0x" + (std::ostringstream{} << std::hex << numYTiles).str() + ")") << "\t"
				  << "Number of tiles in the vertical direction." << '\n';

		std::cout << std::left << std::setfill(' ')
				  << std::setw(nameWidth) << "colourDepth" << "\t"
				  << std::setw(typeWidth) << "uint16_t" << "\t"
				  << std::setw(valueWidth) << (std::to_string(colourDepth) + " (0x" + (std::ostringstream{} << std::hex << colourDepth).str() + ")") << "\t"
				  << "Colour depth in bits. (In the code, only 8 is observed)." << '\n';
	}
	else
	{
		std::cout << std::left << std::setfill(' ')
				  << std::setw(nameWidth) << "numXTiles" << "\t"
				  << std::setw(typeWidth) << "uint16_t" << "\t"
				  << std::setw(valueWidth) << "N/A" << "\t"
				  << "Number of tiles in the horizontal direction." << '\n';

		std::cout << std::left << std::setfill(' ')
				  << std::setw(nameWidth) << "numYTiles" << "\t"
				  << std::setw(typeWidth) << "uint16_t" << "\t"
				  << std::setw(valueWidth) << "N/A" << "\t"
				  << "Number of tiles in the vertical direction." << '\n';

		std::cout << std::left << std::setfill(' ')
				  << std::setw(nameWidth) << "colourDepth" << "\t"
				  << std::setw(typeWidth) << "uint16_t" << "\t"
				  << std::setw(valueWidth) << "N/A" << "\t"
				  << "Colour depth in bits. (In the code, only 8 is observed)." << '\n';
	}

	std::cout << std::left << std::setfill(' ')
			  << std::setw(nameWidth) << "palette" << "\t"
			  << std::setw(typeWidth) << "RGBColor[768]" << "\t"
			  << std::setw(valueWidth) << "768 bytes" << "\t"
			  << "RGB values required for a palette implied by colourDepth." << '\n';

	std::cout << std::left << std::setfill(' ')
			  << std::setw(nameWidth) << "image" << "\t"
			  << std::setw(typeWidth) << "uint8_t[]" << "\t"
			  << std::setw(valueWidth) << "Variable length" << "\t"
			  << "Sequence of structures describing the image." << '\n';

	// Output chunk table (same for both VDX and GJD)
	const int chunkTypeWidth = 6;	// Fits "0x20"
	const int unknownWidth = 8;		// Fits "0x77"
	const int dataSizeWidth = 10;	// Fits "10073" (right-aligned decimal)
	const int lengthMaskWidth = 10; // Fits "0x7F"
	const int lengthBitsWidth = 10; // Fits "0x07"

	// Helper function for hex formatting (unchanged)
	auto hex8 = [](uint8_t v)
	{
		std::ostringstream oss;
		oss << "0x" << std::uppercase << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(v);
		return oss.str();
	};

	std::cout << "\nChunk Information:\n";
	// Column headers with space padding
	std::cout << std::left << std::setfill(' ') // Ensure spaces, not zeros
			  << std::setw(chunkTypeWidth) << "Type" << "| "
			  << std::setw(unknownWidth) << "Unknown" << "| "
			  << std::setw(dataSizeWidth) << "Data Size" << "| "
			  << std::setw(lengthMaskWidth) << "Length Mask" << "| "
			  << std::setw(lengthBitsWidth) << "Length Bits" << '\n';

	// Divider line
	std::cout << std::string(
					 chunkTypeWidth + unknownWidth + dataSizeWidth + lengthMaskWidth + lengthBitsWidth + 4, '-')
			  << '\n';

	// Chunk data
	for (const auto &chunk : vdx.chunks)
	{
		std::cout << std::left << std::setfill(' ') // Spaces for padding
				  << std::setw(chunkTypeWidth) << hex8(chunk.chunkType) << "| "
				  << std::setw(unknownWidth) << hex8(chunk.unknown) << "| "
				  << std::right << std::setw(dataSizeWidth) << chunk.dataSize << "| "
				  << std::left << std::setw(lengthMaskWidth) << hex8(chunk.lengthMask) << "| "
				  << std::setw(lengthBitsWidth) << hex8(chunk.lengthBits) << '\n';
	}

	std::cout << "\nNumber of Chunks: " << vdx.chunks.size() << '\n';
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
	std::ofstream midiFileOut(name + ".mid", std::ios::binary);
	midiFileOut.write(reinterpret_cast<const char *>(midiData.data()), midiData.size());
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
*/
void extractVDX(const std::string_view &filename)
{
	std::string dirName(filename.data());
	dirName.erase(dirName.find_last_of('.'));
	std::filesystem::create_directory(dirName);

	std::cout << "Extracting GJD..." << std::endl;

	std::vector<VDXFile> VDXFiles = parseGJDFile(filename.data());

	for (const auto &vdxFile : VDXFiles)
	{
		std::string vdxFileName = dirName + "/" + vdxFile.filename + ".vdx";
		std::cout << "filename: " << vdxFileName << std::endl;

		std::ofstream vdxFileOut(vdxFileName, std::ios::binary);
		vdxFileOut.write(reinterpret_cast<const char *>(&vdxFile.identifier), sizeof(vdxFile.identifier));
		vdxFileOut.write(reinterpret_cast<const char *>(vdxFile.unknown.data()), 6);

		for (const auto &chunk : vdxFile.chunks)
		{
			// Write chunk header
			vdxFileOut.write(reinterpret_cast<const char *>(&chunk.chunkType), sizeof(chunk.chunkType));
			vdxFileOut.write(reinterpret_cast<const char *>(&chunk.unknown), sizeof(chunk.unknown));
			vdxFileOut.write(reinterpret_cast<const char *>(&chunk.dataSize), sizeof(chunk.dataSize));
			vdxFileOut.write(reinterpret_cast<const char *>(&chunk.lengthMask), sizeof(chunk.lengthMask));
			vdxFileOut.write(reinterpret_cast<const char *>(&chunk.lengthBits), sizeof(chunk.lengthBits));

			// Write chunk data
			vdxFileOut.write(reinterpret_cast<const char *>(chunk.data.data()), chunk.data.size());
		}

		vdxFileOut.close();
	}
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
		std::cerr << "ERROR: Can't open " << robFilename << '\n';
		return;
	}

	// Load entire file into memory
	std::vector<uint8_t> buffer(static_cast<size_t>(file.tellg()));
	file.seekg(0).read(reinterpret_cast<char *>(buffer.data()), buffer.size());

	// Verify file size for palettes
	if (buffer.size() < ::CursorPaletteSizeBytes * ::NumCursorPalettes)
	{
		std::cerr << "ERROR: ROB.GJD too small (" << buffer.size()
				  << " bytes) to contain " << static_cast<int>(::NumCursorPalettes)
				  << " palettes of " << ::CursorPaletteSizeBytes << " bytes each\n";
		return;
	}

	// Calculate palette block offset
	const size_t paletteBlockOffset = buffer.size() - ::CursorPaletteSizeBytes * ::NumCursorPalettes;

	// Create root directory (e.g., ROB_GJD)
	std::filesystem::path rootDir = std::filesystem::path(robFilename).stem().string() + "_GJD";
	std::filesystem::create_directories(rootDir);

	// Process each cursor blob
	for (size_t i = 0; i < ::CursorBlobs.size(); ++i)
	{
		const auto &meta = ::CursorBlobs[i];
		std::cout << "\n[Processing Cursor " << i
				  << "] Offset: 0x" << std::hex << meta.offset
				  //<< " Size: " << std::dec << meta.size
				  //<< " Metadata Frames: " << static_cast<int>(meta.frames)
				  << '\n';

		// Create subdirectory (e.g., 0x00000/PNG)
		std::ostringstream hexDir;
		hexDir << "0x" << std::uppercase << std::hex << std::setw(5) << std::setfill('0') << meta.offset;
		std::filesystem::path pngDir = rootDir / hexDir.str() / "PNG";
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
				std::ostringstream fn;
				fn << std::setw(digits) << std::setfill('0') << f << ".png";
				std::filesystem::path outPath = pngDir / fn.str();
				savePNG(outPath.string(), rgba, img.width, img.height, true);
				std::cout << "  Wrote: " << outPath.filename().string() << '\n';
			}
		}
		catch (const std::exception &e)
		{
			std::cerr << "FAILED: " << e.what() << "\n";
		}
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
void extractPNG(std::string_view filename, bool raw)
{
	std::ifstream vdxFile{filename.data(), std::ios::binary | std::ios::ate};
	if (!vdxFile)
		return std::cerr << "ERROR: Can't open VDX: " << filename << '\n', void();

	std::vector<uint8_t> vdxData(static_cast<std::size_t>(vdxFile.tellg()));
	vdxFile.seekg(0).read(reinterpret_cast<char *>(vdxData.data()), vdxData.size());

	VDXFile vdx = parseVDXFile(filename, vdxData);
	parseVDXChunks(vdx);

	std::string dirName = std::filesystem::path{filename}.stem().string();
	std::filesystem::path dirPath = std::filesystem::path{filename}.parent_path() / dirName;
	std::filesystem::create_directory(dirPath);

	if (!vdx.audioData.empty())
	{
		std::filesystem::path wavPath = dirPath / (std::filesystem::path{filename}.stem().string() + ".wav");
		std::cout << "Writing: " << wavPath.string() << '\n';
		saveWAV(wavPath.string(), vdx.audioData);
	}

	for (size_t i = 0, frameNum = 1; i < vdx.frameData.size(); ++i)
	{
		const auto &frameData = vdx.frameData[i];

		std::ostringstream frame;
		frame << std::setfill('0') << std::setw(4) << frameNum;
		std::string baseName = std::filesystem::path{filename}.stem().string();
		std::filesystem::path outPath = dirPath / (baseName + "_" + frame.str());

		if (raw)
		{
			std::ofstream outFile{outPath.replace_extension(".raw"), std::ios::binary};
			if (outFile)
			{
				std::cout << "Writing: " << outPath.string() << '\n';
				outFile.write(reinterpret_cast<const char *>(frameData.data()), frameData.size());
			}
		}
		else
		{
			std::cout << "Writing: " << (outPath.replace_extension(".png")).string() << '\n';
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
void createVideoFromImages(const std::string &filenameParam)
{
	// Check if FFmpeg is installed
	if (std::system("ffmpeg -version") != 0)
	{
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
	if (!std::filesystem::exists(pngDirPath) || !std::filesystem::is_directory(pngDirPath))
	{
		std::cerr << "PNG directory does not exist: " << pngDirPath.string() << std::endl;
		return;
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
		std::cerr << "No PNG files found in directory: " << pngDirPath.string() << std::endl;
		return;
	}

	// Build FFmpeg command
	std::string inputFilePattern = filenameWithoutExtension + "_%04d.png";
	std::string outputFilePath = (pngDirPath / (filenameWithoutExtension + ".mkv")).string();
	std::string ffmpegCommand = "ffmpeg -framerate 30 -i \"" +
								(pngDirPath / inputFilePattern).string() +
								"\" -c:v libx265 -crf 0 -pix_fmt rgb24 \"" +
								outputFilePath + "\"";

	// Execute FFmpeg command
	int ffmpegResult = std::system(ffmpegCommand.c_str());
	if (ffmpegResult != 0)
	{
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
void savePNG(const std::string &filename, const std::vector<uint8_t> &imageData, int width, int height, bool hasAlpha)
{
	FILE *fp;
	if (fopen_s(&fp, filename.c_str(), "wb") || !fp)
		throw std::runtime_error("Failed to open " + filename);

	png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
	if (!png_ptr)
	{
		fclose(fp);
		throw std::runtime_error("png_create_write_struct");
	}

	png_infop info_ptr = png_create_info_struct(png_ptr);
	if (!info_ptr)
	{
		fclose(fp);
		png_destroy_write_struct(&png_ptr, nullptr);
		throw std::runtime_error("png_create_info_struct");
	}

	if (setjmp(png_jmpbuf(png_ptr)))
	{
		fclose(fp);
		png_destroy_write_struct(&png_ptr, &info_ptr);
		throw std::runtime_error("libpng error");
	}

	png_init_io(png_ptr, fp);

	const int colorType = hasAlpha ? PNG_COLOR_TYPE_RGBA : PNG_COLOR_TYPE_RGB;
	const int bytesPerPixel = hasAlpha ? 4 : 3;

	png_set_IHDR(png_ptr, info_ptr, width, height,
				 8, colorType, PNG_INTERLACE_NONE,
				 PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);

	png_write_info(png_ptr, info_ptr);

	std::vector<png_bytep> rows(height);
	for (int y = 0; y < height; ++y)
		rows[y] = const_cast<uint8_t *>(&imageData[y * width * bytesPerPixel]);

	png_write_image(png_ptr, rows.data());
	png_write_end(png_ptr, nullptr);

	fclose(fp);
	png_destroy_write_struct(&png_ptr, &info_ptr);
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

	std::ofstream outFile(filename, std::ios::binary);
	if (!outFile)
		throw std::runtime_error("Failed to open " + filename);

	outFile.write(reinterpret_cast<const char *>(&header), sizeof(header));
	outFile.write(reinterpret_cast<const char *>(audioData.data()), audioData.size());
}