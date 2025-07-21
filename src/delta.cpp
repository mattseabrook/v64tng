// delta.cpp

#include <vector>
#include <span>
#include <cstdint>
#include <algorithm>

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
	- palette: The palette data as 8-bit RGB raw bitmap data
	- frameBuffer: The 0x20 static bitmap as 8-bit RGB raw bitmap data
	- width: The width of the bitmap

Return:
	- void (modifies palette and frameBuffer in place)
===============================================================================
*/

void getDeltaBitmapData(
	std::span<const uint8_t> buffer,
	std::span<RGBColor> palette,
	std::span<uint8_t> frameBuffer,
	int width)
{
	std::span<uint8_t> deltaFrame = frameBuffer;

	const uint16_t localPaletteSize = readLittleEndian16(buffer);
	size_t paletteColorIndex = 0;

	if (localPaletteSize > 0)
	{
		for (size_t paletteGroup = 0; paletteGroup < 16 && (paletteGroup * 2 + 3) < buffer.size(); ++paletteGroup)
		{
			const uint16_t paletteMap = readLittleEndian16(buffer.subspan(paletteGroup * 2 + 2));
			for (int colorBit = 0; colorBit < 16; ++colorBit)
			{
				if (paletteMap & (0x8000 >> colorBit))
				{
					const size_t idx = 34 + paletteColorIndex;
					if (idx + 2 >= buffer.size())
						break;
					palette[paletteGroup * 16 + colorBit] = {buffer[idx], buffer[idx + 1], buffer[idx + 2]};
					paletteColorIndex += 3;
				}
			}
		}
	}

	int xPos = 0, yPos = 0;
	auto updatePixel = [&](int x, int y, const RGBColor &color)
	{
		const size_t pixelIndex = (y * width + x) * 3;
		if (pixelIndex + 2 < deltaFrame.size())
		{
			deltaFrame[pixelIndex] = color.r;
			deltaFrame[pixelIndex + 1] = color.g;
			deltaFrame[pixelIndex + 2] = color.b;
		}
	};

	for (size_t bufferIndex = localPaletteSize + 2; bufferIndex < buffer.size();)
	{
		const uint8_t opcode = buffer[bufferIndex++];

		switch (opcode)
		{
		case 0x00 ... 0x5F:
		{
			const uint16_t mapValue = readLittleEndian16({MapField.data() + (opcode * 2), 2});
			const uint8_t color1 = buffer[bufferIndex++], color0 = buffer[bufferIndex++];
			for (int i = 0; i < 16; ++i)
			{
				updatePixel(xPos + (i % 4), yPos + (i / 4), palette[(mapValue & (0x8000 >> i)) ? color1 : color0]);
			}
			xPos += 4;
			break;
		}
		case 0x60:
		{
			for (int i = 0; i < 16; ++i)
			{
				updatePixel(xPos + (i % 4), yPos + (i / 4), palette[buffer[bufferIndex++]]);
			}
			xPos += 4;
			break;
		}
		case 0x61:
		{
			yPos += 4;
			xPos = 0;
			break;
		}
		case 0x62 ... 0x6B:
		{
			xPos += (opcode - 0x62) * 4;
			break;
		}
		case 0x6C ... 0x75:
		{
			const int repeatCount = opcode - 0x6B;
			const auto &color = palette[buffer[bufferIndex++]];
			for (int r = 0; r < repeatCount; ++r)
			{
				for (int i = 0; i < 16; ++i)
				{
					updatePixel(xPos + (i % 4), yPos + (i / 4), color);
				}
				xPos += 4;
			}
			break;
		}
		case 0x76 ... 0x7F:
		{
			const int colorCount = opcode - 0x75;
			for (int i = 0; i < colorCount; ++i)
			{
				const auto &color = palette[buffer[bufferIndex++]];
				for (int j = 0; j < 16; ++j)
				{
					updatePixel(xPos + (j % 4), yPos + (j / 4), color);
				}
				xPos += 4;
			}
			break;
		}
		default:
		{
			const uint16_t mapValue = readLittleEndian16(buffer.subspan(bufferIndex - 1));
			const auto &color1 = palette[buffer[bufferIndex + 1]];
			const auto &color0 = palette[buffer[bufferIndex + 2]];
			for (int i = 0; i < 16; ++i)
			{
				updatePixel(xPos + (i % 4), yPos + (i / 4), (mapValue & (0x8000 >> i)) ? color1 : color0);
			}
			xPos += 4;
			bufferIndex += 3;
			break;
		}
		}
	}
}