// bitmap.cpp

#include <vector>
#include <cstdint>
#include <cstdio>
#include <stdexcept>
#include <string>
#include <iostream>
#include <bitset>
#include <iomanip>
#include <tuple>
#include <array>
#include <numeric>
#include <algorithm>
#include <ranges>

#include <png.h>

#include "bitmap.h"

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

/*
===============================================================================
Function Name: getBitmapData

Description:
	- Convert LZSS Decompressed data to an 8-bit RGB raw bitmap data structure

Parameters:
	- chunkData: Decompressed chunk data

Return:
	- std::vector<uint8_t>: 8-bit RGB raw bitmap data structure
===============================================================================
*/
std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> getBitmapData(const std::vector<uint8_t>& chunkData)
{
	auto [numXTiles, numYTiles, colourDepth] = std::tuple{
		readLittleEndian<uint16_t>(chunkData.data()),
		readLittleEndian<uint16_t>(chunkData.data() + 2),
		readLittleEndian<uint16_t>(chunkData.data() + 4)
	};

	const int width = numXTiles * 4, height = numYTiles * 4;
	std::vector<uint8_t> outputImageData(width * height * 3);

	const uint8_t* paletteData = chunkData.data() + 6;
	std::vector<RGBColor> palette(256);
	for (int i = 0; i < 256; ++i) {
		palette[i] = { paletteData[i * 3], paletteData[i * 3 + 1], paletteData[i * 3 + 2] };
	}

	const uint8_t* imageData = paletteData + (1 << colourDepth) * 3;

	for (int tileY = 0; tileY < numYTiles; ++tileY) {
		for (int tileX = 0; tileX < numXTiles; ++tileX) {
			uint8_t colour1 = *imageData++, colour0 = *imageData++;
			uint16_t colourMap = readLittleEndian<uint16_t>(imageData);
			imageData += 2;

			std::array<uint8_t, 16> colors;
			for (int i = 15; i >= 0; --i) {
				colors[i] = (colourMap & 1) ? colour1 : colour0;
				colourMap >>= 1;
			}

			for (int y = 0; y < 4; ++y) {
				for (int x = 0; x < 4; ++x) {
					int pixelIndex = ((tileY * 4 + y) * width + (tileX * 4 + x)) * 3;
					auto& pixelColor = palette[colors[x + y * 4]];
					outputImageData[pixelIndex] = pixelColor.r;
					outputImageData[pixelIndex + 1] = pixelColor.g;
					outputImageData[pixelIndex + 2] = pixelColor.b;
				}
			}
		}
	}

	return { palette, outputImageData };
}

/*
===============================================================================
Function Name: packBitmapData

Description:
	- Packs the 8-bit RGB raw bitmap data structure to an LZSS compressed
	chunk data structure.

	Parameters:
	- rawImageData: 8-bit RGB raw bitmap data structure
	- palette: 8-bit RGB palette data structure
	- width: width of the image
	- height: height of the image

	Return:
	- std::vector<uint8_t>: 7th Guest 4x4, 2-colour, bitmap chunk data structure
	===============================================================================
*/
std::vector<uint8_t> packBitmapData(const std::vector<uint8_t>& rawImageData, const std::vector<RGBColor>& palette, int width, int height)
{
	const auto [numXTiles, numYTiles, colourDepth] = std::tuple{ width / 4, height / 4, uint16_t{8} };
	std::vector<uint8_t> chunkData{ static_cast<uint8_t>(numXTiles & 0xFF), static_cast<uint8_t>((numXTiles >> 8) & 0xFF),
									static_cast<uint8_t>(numYTiles & 0xFF), static_cast<uint8_t>((numYTiles >> 8) & 0xFF),
									static_cast<uint8_t>(colourDepth), static_cast<uint8_t>(0) };

	for (const auto& color : palette) chunkData.insert(chunkData.end(), { color.r, color.g, color.b });

	for (int tileY = 0; tileY < numYTiles; ++tileY) {
		for (int tileX = 0; tileX < numXTiles; ++tileX) {
			std::array<uint8_t, 16> colors;
			auto getPixelIndex = [&](int x, int y) { return ((tileY * 4 + y) * width + (tileX * 4 + x)) * 3; };

			for (int y = 0; y < 4; ++y)
				for (int x = 0; x < 4; ++x)
					colors[x + y * 4] = std::distance(palette.begin(), std::ranges::find(palette, RGBColor{
						rawImageData[getPixelIndex(x, y)], rawImageData[getPixelIndex(x, y) + 1], rawImageData[getPixelIndex(x, y) + 2] }));

			uint8_t colour0 = colors[0], colour1 = colors[1];
			uint16_t colourMap = std::accumulate(colors.rbegin(), colors.rend(), uint16_t(0), [&](auto acc, auto c) {
				return (acc << 1) | (c == colour1); });

			chunkData.insert(chunkData.end(), { colour1, colour0, static_cast<uint8_t>(colourMap & 0xFF), static_cast<uint8_t>((colourMap >> 8) & 0xFF) });
		}
	}
	return chunkData;
}