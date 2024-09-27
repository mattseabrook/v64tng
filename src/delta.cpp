// delta.cpp

#include <vector>
#include <tuple>
#include <cstdint>
#include <cstdio>
#include <stdexcept>
#include <string>
#include <iostream>
#include <bitset>
#include <iomanip>

#include "bitmap.h"
#include "delta.h"

/*
===============================================================================
Function Name: getDeltaBitmapData

Description:
	- Convert LZSS Decompressed data to an 8-bit RGB raw bitmap data structure.
	This function takes a 0x25 chunk type (which contains delta bitmap data)
	and constructs a new complete image/frame from the delta bitmap data.

Parameters:
	- buffer: Decompressed chunk data
	- staticBitmap: The 0x20 static bitmap as 8-bit RGB raw bitmap data

Return:
	- std::vector<uint8_t>: 8-bit RGB raw bitmap data structure
===============================================================================
*/
std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> getDeltaBitmapData(std::vector<uint8_t>& buffer,
	std::vector<RGBColor>& palette,
	std::vector<uint8_t>& frameBuffer)
{
	std::vector<uint8_t> deltaFrame = frameBuffer;

	int i, j, k;
	uint16_t Map, LocPalSz, x, y, width, height;

	// Check for local palette adaptations
	LocPalSz = buffer[0] | (buffer[1] << 8);
	k = 0;

	// Alter palette according to bitfield
	if (LocPalSz > 0)
	{
		for (i = 0; i < 16; i++)
		{
			Map = buffer[i * 2 + 2] | (buffer[i * 2 + 3] << 8);
			for (j = 0; j < 16; j++)
			{
				if ((Map & 0x8000) != 0)
				{
					RGBColor color;
					color.r = buffer[34 + k];
					color.g = buffer[34 + k + 1];
					color.b = buffer[34 + k + 2];
					palette[i * 16 + j] = color;
					k += 3;
				}
				Map <<= 1;
			}
		}
	}

	x = 0;
	y = 0;
	width = 640;
	height = 320;
	i = LocPalSz + 2;

	// decode image
	while (i < buffer.size())
	{
		if (buffer[i] >= 0x00 && buffer[i] <= 0x5F)
		{
			Map = MapField[buffer[i] << 1] | (MapField[(buffer[i] << 1) + 1] << 8);
			uint8_t c1 = buffer[i + 1];
			uint8_t c0 = buffer[i + 2];
			for (j = 0; j < 16; j++)
			{
				uint8_t colorIndex = ((Map & 0x8000) == 0) ? c0 : c1;
				RGBColor color = palette[colorIndex];
				int pixelIndex = (y + (j / 4)) * width + x + (j % 4);
				deltaFrame[pixelIndex * 3] = color.r;
				deltaFrame[pixelIndex * 3 + 1] = color.g;
				deltaFrame[pixelIndex * 3 + 2] = color.b;

				Map <<= 1;
			}
			x += 4;
			i += 2;
		}
		else if (buffer[i] == 0x60)
		{
			for (j = 0; j < 16; j++)
			{
				uint8_t colorIndex = buffer[i + j + 1];
				RGBColor color = palette[colorIndex];
				int pixelIndex = (y + (j / 4)) * width + x + (j % 4);
				deltaFrame[pixelIndex * 3] = color.r;
				deltaFrame[pixelIndex * 3 + 1] = color.g;
				deltaFrame[pixelIndex * 3 + 2] = color.b;
			}
			x += 4;
			i += 16;
		}
		else if (buffer[i] == 0x61)
		{
			y += 4;
			x = 0;
		}
		else if (buffer[i] >= 0x62 && buffer[i] <= 0x6B)
		{
			x += (buffer[i] - 0x62) << 2;
		}
		else if (buffer[i] >= 0x6C && buffer[i] <= 0x75)
		{
			for (k = 1; k <= buffer[i] - 0x6B; k++)
			{
				uint8_t colorIndex = buffer[i + 1];
				RGBColor color = palette[colorIndex];
				for (j = 0; j < 16; j++)
				{
					int pixelIndex = (y + (j / 4)) * width + x + (j % 4);
					deltaFrame[pixelIndex * 3] = color.r;
					deltaFrame[pixelIndex * 3 + 1] = color.g;
					deltaFrame[pixelIndex * 3 + 2] = color.b;
				}
				x += 4;
			}
			i += 1;
		}
		else if (buffer[i] >= 0x76 && buffer[i] <= 0x7F)
		{
			for (k = 1; k <= buffer[i] - 0x75; k++)
			{
				uint8_t colorIndex = buffer[i + k];
				RGBColor color = palette[colorIndex];
				for (j = 0; j < 16; j++)
				{
					int frameBufferIndex = (y + (j / 4)) * width * 3 + (x + (j % 4)) * 3;
					deltaFrame[frameBufferIndex] = color.r;
					deltaFrame[frameBufferIndex + 1] = color.g;
					deltaFrame[frameBufferIndex + 2] = color.b;
				}
				x += 4;
			}
			i += buffer[i] - 0x75;
		}
		else if (buffer[i] >= 0x80 && buffer[i] <= 0xFF)
		{
			Map = buffer[i] | (buffer[i + 1] << 8);
			RGBColor c1 = palette[buffer[i + 2]];
			RGBColor c0 = palette[buffer[i + 3]];
			for (j = 0; j < 16; j++)
			{
				RGBColor selectedColor = ((Map & 0x8000) == 0) ? c0 : c1;
				int frameBufferIndex = (y + (j / 4)) * width * 3 + (x + (j % 4)) * 3;
				deltaFrame[frameBufferIndex] = selectedColor.r;
				deltaFrame[frameBufferIndex + 1] = selectedColor.g;
				deltaFrame[frameBufferIndex + 2] = selectedColor.b;
				Map <<= 1;
			}
			x += 4;
			i += 3;
		}
		i++;
	}

	return std::make_tuple(palette, deltaFrame);
}

/*
#include <vector>
#include <tuple>
#include <cstdint>
#include "bitmap.h"
#include "delta.h"

std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> getDeltaBitmapData(
	const std::vector<uint8_t>& buffer,
	std::vector<RGBColor>& palette,
	const std::vector<uint8_t>& frameBuffer)
{
	auto deltaFrame = frameBuffer;
	if (buffer.size() < 2) return { palette, deltaFrame };

	uint16_t locPalSize = buffer[0] | (buffer[1] << 8);
	size_t k = 0;

	// Alter palette according to bitfield
	if (locPalSize > 0) {
		if (buffer.size() < 34 + k + locPalSize) return { palette, deltaFrame };
		for (size_t i = 0; i < 16; ++i) {
			if (i * 2 + 3 >= buffer.size()) break;
			uint16_t map = buffer[i * 2 + 2] | (buffer[i * 2 + 3] << 8);
			for (size_t j = 0; j < 16; ++j) {
				if (map & 0x8000) {
					if (34 + k + 2 >= buffer.size()) break;
					palette[i * 16 + j] = RGBColor{
						buffer[34 + k],
						buffer[34 + k + 1],
						buffer[34 + k + 2]
					};
					k += 3;
				}
				map <<= 1;
			}
		}
	}

	constexpr uint16_t width = 640;
	size_t x = 0, y = 0, i = locPalSize + 2;

	// Decode image
	while (i < buffer.size()) {
		uint8_t opcode = buffer[i];
		if (opcode <= 0x5F) {
			uint16_t map = MapField[opcode << 1] | (MapField[(opcode << 1) + 1] << 8);
			uint8_t c1 = buffer[i + 1], c0 = buffer[i + 2];
			for (size_t j = 0; j < 16; ++j) {
				uint8_t colorIndex = (map & 0x8000) ? c1 : c0;
				auto& color = palette[colorIndex];
				size_t pixelIndex = (y + j / 4) * width + x + j % 4;
				if (pixelIndex * 3 + 2 >= deltaFrame.size()) continue;

				deltaFrame[pixelIndex * 3] = color.r;
				deltaFrame[pixelIndex * 3 + 1] = color.g;
				deltaFrame[pixelIndex * 3 + 2] = color.b;
				map <<= 1;
			}
			x += 4; i += 3;
		}
		else if (opcode == 0x60) {
			for (size_t j = 0; j < 16; ++j) {
				uint8_t colorIndex = buffer[i + j + 1];
				auto& color = palette[colorIndex];
				size_t pixelIndex = (y + j / 4) * width + x + j % 4;
				if (pixelIndex * 3 + 2 >= deltaFrame.size()) continue;

				deltaFrame[pixelIndex * 3] = color.r;
				deltaFrame[pixelIndex * 3 + 1] = color.g;
				deltaFrame[pixelIndex * 3 + 2] = color.b;
			}
			x += 4; i += 17;
		}
		else if (opcode == 0x61) {
			y += 4; x = 0; ++i;
		}
		else if (opcode >= 0x62 && opcode <= 0x6B) {
			x += (opcode - 0x62 + 1) * 4; ++i;
		}
		else if (opcode >= 0x6C && opcode <= 0x75) {
			uint8_t repeatCount = opcode - 0x6B;
			auto& color = palette[buffer[i + 1]];
			for (size_t r = 0; r < repeatCount; ++r) {
				for (size_t j = 0; j < 16; ++j) {
					size_t pixelIndex = (y + j / 4) * width + x + j % 4;
					if (pixelIndex * 3 + 2 >= deltaFrame.size()) continue;

					deltaFrame[pixelIndex * 3] = color.r;
					deltaFrame[pixelIndex * 3 + 1] = color.g;
					deltaFrame[pixelIndex * 3 + 2] = color.b;
				}
				x += 4;
			}
			i += 2;
		}
		else if (opcode >= 0x76 && opcode <= 0x7F) {
			uint8_t count = opcode - 0x75;
			
			for (size_t k = 1; k <= count; ++k) {
				auto& color = palette[buffer[i + k]];
				for (size_t j = 0; j < 16; ++j) {
					size_t idx = ((y + j / 4) * width + x + j % 4) * 3;
					if (idx + 2 >= deltaFrame.size()) continue;

					deltaFrame[idx] = color.r;
					deltaFrame[idx + 1] = color.g;
					deltaFrame[idx + 2] = color.b;
				}
				x += 4;
			}
			i += count + 1;
		}
		else if (opcode >= 0x80 && opcode <= 0xFF) {
			uint16_t map = buffer[i] | (buffer[i + 1] << 8);
			auto& c1 = palette[buffer[i + 2]];
			auto& c0 = palette[buffer[i + 3]];
			for (size_t j = 0; j < 16; ++j) {
				auto& color = (map & 0x8000) ? c1 : c0;
				size_t idx = ((y + j / 4) * width + x + j % 4) * 3;
				if (idx + 2 >= deltaFrame.size()) continue;

				deltaFrame[idx] = color.r;
				deltaFrame[idx + 1] = color.g;
				deltaFrame[idx + 2] = color.b;
				map <<= 1;
			}
			x += 4; i += 4;
		}
		else {
			++i;
		}
	}
	return { palette, deltaFrame };
}
*/