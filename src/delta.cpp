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

bool getDeltaBitmapDataChecked(
	std::span<const uint8_t> buffer,
	std::span<RGBColor> palette,
	std::span<uint8_t> frameBuffer,
	int width,
	std::span<uint8_t> indexBuffer,
	std::span<const uint8_t> foregroundMask,
	std::span<uint8_t> writtenPixels)
{
	if (buffer.size() < 2 || palette.size() < 256 || width <= 0 ||
		frameBuffer.size() % (static_cast<size_t>(width) * 3) != 0)
		return false;
	if (!indexBuffer.empty() && indexBuffer.size() != frameBuffer.size() / 3)
		return false;
	if (!foregroundMask.empty() &&
		foregroundMask.size() != frameBuffer.size() / 3)
		return false;
	if (!writtenPixels.empty() && writtenPixels.size() != frameBuffer.size() / 3)
		return false;
	std::fill(writtenPixels.begin(), writtenPixels.end(), 0);
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
	auto updatePixel = [&](int x, int y, uint8_t paletteIndex)
	{
		if (x < 0 || y < 0)
			return;
		const size_t pixelIndex = (y * width + x) * 3;
		if (pixelIndex + 2 < deltaFrame.size())
		{
			const size_t pixel = pixelIndex / 3;
			// GRV video flag 7 composites delta writes through the foreground
			// matte. FF in the matte protects the background; FF in the delta
			// selects the matte pixel instead of writing FF to the background.
			if (!foregroundMask.empty())
			{
				if (foregroundMask[pixel] == 0xff)
					return;
				if (paletteIndex == 0xff)
					paletteIndex = foregroundMask[pixel];
			}
			if (!writtenPixels.empty())
				writtenPixels[pixel] = 255;
			const auto &color = palette[paletteIndex];
			deltaFrame[pixelIndex] = color.r;
			deltaFrame[pixelIndex + 1] = color.g;
			deltaFrame[pixelIndex + 2] = color.b;
			if (!indexBuffer.empty())
				indexBuffer[pixel] = paletteIndex;
		}
	};

	for (size_t bufferIndex = localPaletteSize + 2; bufferIndex < buffer.size();)
	{
		const uint8_t opcode = buffer[bufferIndex++];

		switch (opcode)
		{
		case 0x00 ... 0x5F:
		{
			if (buffer.size() - bufferIndex < 2)
				return false;
			const uint16_t mapValue = readLittleEndian16({MapField.data() + (opcode * 2), 2});
			const uint8_t color1 = buffer[bufferIndex++], color0 = buffer[bufferIndex++];
			for (int i = 0; i < 16; ++i)
			{
				updatePixel(xPos + (i % 4), yPos + (i / 4),
					(mapValue & (0x8000 >> i)) ? color1 : color0);
			}
			xPos += 4;
			break;
		}
		case 0x60:
		{
			if (buffer.size() - bufferIndex < 16)
				return false;
			for (int i = 0; i < 16; ++i)
			{
				updatePixel(xPos + (i % 4), yPos + (i / 4), buffer[bufferIndex++]);
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
			if (bufferIndex >= buffer.size())
				return false;
			const int repeatCount = opcode - 0x6B;
			const uint8_t color = buffer[bufferIndex++];
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
			if (buffer.size() - bufferIndex < static_cast<size_t>(colorCount))
				return false;
			for (int i = 0; i < colorCount; ++i)
			{
				const uint8_t color = buffer[bufferIndex++];
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
			if (buffer.size() - (bufferIndex - 1) < 4)
				return false;
			const uint16_t mapValue = readLittleEndian16(buffer.subspan(bufferIndex - 1));
			const uint8_t color1 = buffer[bufferIndex + 1];
			const uint8_t color0 = buffer[bufferIndex + 2];
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
	return true;
}

void getDeltaBitmapData(
	std::span<const uint8_t> buffer,
	std::span<RGBColor> palette,
	std::span<uint8_t> frameBuffer,
	int width)
{
	(void)getDeltaBitmapDataChecked(buffer, palette, frameBuffer, width, {}, {});
}
