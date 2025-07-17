// bitmap.cpp

#include <vector>
#include <span>
#include <cstdint>
#include <algorithm>
#include <ranges>

#include "bitmap.h"

/*
===============================================================================
Function Name: getBitmapData

Description:
	- Convert LZSS Decompressed data to an 8-bit RGB raw bitmap data structure

Parameters:
	- chunkData: Decompressed chunk data
	- palette: Palette to fill (mutable span, size 256)
	- outputFrame: Bitmap data to fill (mutable span, size w*h*3)

Return:
	- void (fills palette and outputFrame in place)
===============================================================================
*/
void getBitmapData(std::span<const uint8_t> chunkData, std::span<RGBColor> palette, std::span<uint8_t> outputFrame)
{
	const uint16_t numXTiles = readLittleEndian16(chunkData.subspan(0, 2));
	const uint16_t numYTiles = readLittleEndian16(chunkData.subspan(2, 2));
	const uint16_t colourDepth = readLittleEndian16(chunkData.subspan(4, 2));

	const int width = numXTiles * 4;
	const int height = numYTiles * 4;

	auto paletteData = chunkData.subspan(6);
	for (size_t i = 0; i < 256 && i * 3 + 2 < paletteData.size(); ++i)
	{
		palette[i] = {paletteData[i * 3], paletteData[i * 3 + 1], paletteData[i * 3 + 2]};
	}

	auto imageData = paletteData.subspan((1 << colourDepth) * 3);
	size_t imgOffset = 0;

	for (int tileY = 0; tileY < numYTiles; ++tileY)
	{
		for (int tileX = 0; tileX < numXTiles; ++tileX)
		{
			if (imgOffset + 4 > imageData.size())
				return;
			const uint8_t colour1 = imageData[imgOffset++];
			const uint8_t colour0 = imageData[imgOffset++];
			const uint16_t colourMap = readLittleEndian16(imageData.subspan(imgOffset, 2));
			imgOffset += 2;

			for (int i = 0; i < 16; ++i)
			{
				const int x = tileX * 4 + (i % 4);
				const int y = tileY * 4 + (i / 4);
				const size_t pixelIndex = (y * width + x) * 3;
				const auto &pixelColor = palette[(colourMap & (0x8000 >> i)) ? colour1 : colour0];
				outputFrame[pixelIndex] = pixelColor.r;
				outputFrame[pixelIndex + 1] = pixelColor.g;
				outputFrame[pixelIndex + 2] = pixelColor.b;
			}
		}
	}
}

/*
===============================================================================

EXPERIMENTAL

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
std::vector<uint8_t> packBitmapData(std::span<const uint8_t> rawImageData, std::span<const RGBColor> palette, int width, int height)
{
	const auto [numXTiles, numYTiles] = std::pair{width / 4, height / 4};
	std::vector<uint8_t> chunkData{static_cast<uint8_t>(numXTiles & 0xFF), static_cast<uint8_t>(numXTiles >> 8),
								   static_cast<uint8_t>(numYTiles & 0xFF), static_cast<uint8_t>(numYTiles >> 8),
								   8, 0}; // colourDepth = 8

	for (const auto &color : palette)
	{
		chunkData.push_back(color.r);
		chunkData.push_back(color.g);
		chunkData.push_back(color.b);
	}

	for (int tileY = 0; tileY < numYTiles; ++tileY)
	{
		for (int tileX = 0; tileX < numXTiles; ++tileX)
		{
			std::array<uint8_t, 16> colors;
			auto getPixel = [&](int x, int y)
			{
				size_t idx = ((tileY * 4 + y) * width + (tileX * 4 + x)) * 3;
				return RGBColor{rawImageData[idx], rawImageData[idx + 1], rawImageData[idx + 2]};
			};

			for (int y = 0; y < 4; ++y)
			{
				for (int x = 0; x < 4; ++x)
				{
					colors[x + y * 4] = static_cast<uint8_t>(
						std::distance(palette.begin(), std::find(palette.begin(), palette.end(), getPixel(x, y))));
				}
			}

			uint8_t colour0 = colors[0], colour1 = colors[1];
			uint16_t colourMap = 0;
			for (int i = 0; i < 16; ++i)
			{
				colourMap = (colourMap << 1) | (colors[i] == colour1);
			}
			chunkData.push_back(colour1);
			chunkData.push_back(colour0);
			chunkData.push_back(static_cast<uint8_t>(colourMap & 0xFF));
			chunkData.push_back(static_cast<uint8_t>(colourMap >> 8));
		}
	}
	return chunkData;
}