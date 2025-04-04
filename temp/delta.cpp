// delta.cpp

#include <vector>
#include <tuple>
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

Return:
	- std::tuple<std::vector<RGBColor>, std::vector<uint8_t>>:
		8-bit RGB raw bitmap data structure

===============================================================================
*/
/*
std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> getDeltaBitmapData(
	std::vector<uint8_t>& buffer,
	std::vector<RGBColor>& palette,
	std::vector<uint8_t>& frameBuffer)
{
	constexpr int width = 640, height = 320;
	auto deltaFrame = frameBuffer;

	const uint16_t localPaletteSize = (buffer[0] | (buffer[1] << 8));
	size_t paletteColorIndex = 0;

	if (localPaletteSize > 0) {
		for (int paletteGroup = 0; paletteGroup < 16 && (paletteGroup * 2 + 3) < buffer.size(); ++paletteGroup) {
			uint16_t paletteMap = (buffer[paletteGroup * 2 + 2] | (buffer[paletteGroup * 2 + 3] << 8));

			for (int colorBit = 0; colorBit < 16; ++colorBit) {
				if (paletteMap & 0x8000) {
					if ((34 + paletteColorIndex + 2) >= buffer.size()) break;
					palette[paletteGroup * 16 + colorBit] = {
						buffer[34 + paletteColorIndex],
						buffer[34 + paletteColorIndex + 1],
						buffer[34 + paletteColorIndex + 2]
					};

					paletteColorIndex += 3;
				}

				paletteMap <<= 1;
			}
		}
	}

	int xPos = 0, yPos = 0;

	auto updatePixel = [&](int x, int y, const RGBColor& color) {
		const size_t pixelIndex = (y * width + x) * 3;

		if (pixelIndex + 2 < deltaFrame.size()) {
			deltaFrame[pixelIndex] = color.r;
			deltaFrame[pixelIndex + 1] = color.g;
			deltaFrame[pixelIndex + 2] = color.b;
		}
		};

	for (size_t bufferIndex = localPaletteSize + 2; bufferIndex < buffer.size(); ++bufferIndex) {
		const uint8_t opcode = buffer[bufferIndex];

		if (opcode <= 0x5F) {
			const uint16_t mapValue = MapField[opcode << 1] | (MapField[(opcode << 1) + 1] << 8);
			const uint8_t color1 = buffer[bufferIndex + 1], color0 = buffer[bufferIndex + 2];

			for (int pixelOffset = 0; pixelOffset < 16; ++pixelOffset) {
				const uint8_t selectedColor = ((mapValue & (0x8000 >> pixelOffset)) != 0) ? color1 : color0;

				updatePixel(xPos + (pixelOffset % 4), yPos + (pixelOffset / 4), palette[selectedColor]);
			}

			xPos += 4;
			bufferIndex += 2;
		}
		else if (opcode == 0x60) {
			for (int pixelOffset = 0; pixelOffset < 16; ++pixelOffset) {
				updatePixel(xPos + (pixelOffset % 4), yPos + (pixelOffset / 4), palette[buffer[bufferIndex + pixelOffset + 1]]);
			}

			xPos += 4;
			bufferIndex += 16;
		}
		else if (opcode == 0x61) {
			yPos += 4;
			xPos = 0;
		}
		else if (opcode >= 0x62 && opcode <= 0x6B) {
			xPos += (opcode - 0x62) << 2;
		}
		else if (opcode >= 0x6C && opcode <= 0x75) {
			const int repeatCount = opcode - 0x6B;
			const RGBColor& color = palette[buffer[bufferIndex + 1]];

			for (int repeat = 0; repeat < repeatCount; ++repeat) {
				for (int pixelOffset = 0; pixelOffset < 16; ++pixelOffset) {
					updatePixel(xPos + (pixelOffset % 4), yPos + (pixelOffset / 4), color);
				}

				xPos += 4;
			}

			bufferIndex += 1;
		}
		else if (opcode >= 0x76 && opcode <= 0x7F) {
			const int colorCount = opcode - 0x75;

			for (int i = 1; i <= colorCount; ++i) {
				const RGBColor& color = palette[buffer[bufferIndex + i]];

				for (int pixelOffset = 0; pixelOffset < 16; ++pixelOffset) {
					updatePixel(xPos + (pixelOffset % 4), yPos + (pixelOffset / 4), color);
				}

				xPos += 4;
			}

			bufferIndex += colorCount;
		}
		else if (opcode >= 0x80 && opcode <= 0xFF) {
			const uint16_t mapValue = (buffer[bufferIndex] | (buffer[bufferIndex + 1] << 8));
			const RGBColor& color1 = palette[buffer[bufferIndex + 2]];
			const RGBColor& color0 = palette[buffer[bufferIndex + 3]];

			for (int pixelOffset = 0; pixelOffset < 16; ++pixelOffset) {
				const RGBColor& selectedColor = ((mapValue & (0x8000 >> pixelOffset)) != 0) ? color1 : color0;

				updatePixel(xPos + (pixelOffset % 4), yPos + (pixelOffset / 4), selectedColor);
			}

			xPos += 4;
			bufferIndex += 3;
		}
	}

	return { palette, deltaFrame };
}
*/

std::tuple<std::vector<RGBColor>, std::vector<uint8_t>> getDeltaBitmapData(
	std::span<uint8_t> buffer,
	std::span<RGBColor> palette,
	std::span<uint8_t> frameBuffer) {
	constexpr int width = 640;		// , height = 320;
	std::vector<uint8_t> deltaFrame(frameBuffer.begin(), frameBuffer.end());

	uint16_t localPaletteSize = readLittleEndian16(buffer);
	size_t paletteColorIndex = 0;

	if (localPaletteSize > 0) {
		for (size_t paletteGroup = 0; paletteGroup < 16 && (paletteGroup * 2 + 3) < buffer.size(); ++paletteGroup) {
			uint16_t paletteMap = readLittleEndian16(buffer.subspan(paletteGroup * 2 + 2));
			for (int colorBit = 0; colorBit < 16; ++colorBit) {
				if (paletteMap & (0x8000 >> colorBit)) {
					size_t idx = 34 + paletteColorIndex;
					if (idx + 2 >= buffer.size()) break;
					palette[paletteGroup * 16 + colorBit] = { buffer[idx], buffer[idx + 1], buffer[idx + 2] };
					paletteColorIndex += 3;
				}
			}
		}
	}

	int xPos = 0, yPos = 0;
	auto updatePixel = [&](int x, int y, const RGBColor& color) {
		size_t pixelIndex = (y * width + x) * 3;
		if (pixelIndex + 2 < deltaFrame.size()) {
			deltaFrame[pixelIndex] = color.r;
			deltaFrame[pixelIndex + 1] = color.g;
			deltaFrame[pixelIndex + 2] = color.b;
		}
		};

	for (size_t bufferIndex = localPaletteSize + 2; bufferIndex < buffer.size();) {
		uint8_t opcode = buffer[bufferIndex++];
		if (opcode <= 0x5F) {
			uint16_t mapValue = readLittleEndian16({ MapField.data() + (opcode * 2), 2 });
			uint8_t color1 = buffer[bufferIndex++], color0 = buffer[bufferIndex++];
			for (int i = 0; i < 16; ++i) {
				updatePixel(xPos + (i % 4), yPos + (i / 4), palette[(mapValue & (0x8000 >> i)) ? color1 : color0]);
			}
			xPos += 4;
		}
		else if (opcode == 0x60) {
			for (int i = 0; i < 16; ++i) {
				updatePixel(xPos + (i % 4), yPos + (i / 4), palette[buffer[bufferIndex++]]);
			}
			xPos += 4;
		}
		else if (opcode == 0x61) {
			yPos += 4; xPos = 0;
		}
		else if (opcode <= 0x6B) {
			xPos += (opcode - 0x62) * 4;
		}
		else if (opcode <= 0x75) {
			int repeatCount = opcode - 0x6B;
			const auto& color = palette[buffer[bufferIndex++]];
			for (int r = 0; r < repeatCount; ++r) {
				for (int i = 0; i < 16; ++i) {
					updatePixel(xPos + (i % 4), yPos + (i / 4), color);
				}
				xPos += 4;
			}
		}
		else if (opcode <= 0x7F) {
			int colorCount = opcode - 0x75;
			for (int i = 0; i < colorCount; ++i) {
				const auto& color = palette[buffer[bufferIndex++]];
				for (int j = 0; j < 16; ++j) {
					updatePixel(xPos + (j % 4), yPos + (j / 4), color);
				}
				xPos += 4;
			}
		}
		else {
			uint16_t mapValue = readLittleEndian16(buffer.subspan(bufferIndex - 1));
			const auto& color1 = palette[buffer[bufferIndex + 1]];
			const auto& color0 = palette[buffer[bufferIndex + 2]];
			for (int i = 0; i < 16; ++i) {
				updatePixel(xPos + (i % 4), yPos + (i / 4), (mapValue & (0x8000 >> i)) ? color1 : color0);
			}
			xPos += 4;
			bufferIndex += 3;
		}
	}
	return { std::vector<RGBColor>(palette.begin(), palette.end()), std::move(deltaFrame) };
}