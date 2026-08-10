#include "bitmap.h"
#include "lzss.h"

#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <span>
#include <string>
#include <vector>

namespace
{
uint32_t read32(std::span<const uint8_t> bytes)
{
	return bytes[0] | static_cast<uint32_t>(bytes[1]) << 8 |
		static_cast<uint32_t>(bytes[2]) << 16 |
		static_cast<uint32_t>(bytes[3]) << 24;
}

std::vector<uint8_t> load(const std::filesystem::path &root,
	const std::string &name)
{
	std::ifstream rl(root / "FH.RL", std::ios::binary);
	std::ifstream gjd(root / "FH.GJD", std::ios::binary);
	assert(rl && gjd);
	std::array<char, 20> record{};
	while (rl.read(record.data(), record.size()))
	{
		const std::string entry(record.data(),
			std::find(record.begin(), record.begin() + 12, '\0'));
		if (entry != name)
			continue;
		const auto raw = std::span<const uint8_t>{
			reinterpret_cast<const uint8_t *>(record.data()), record.size()};
		const uint32_t offset = read32(raw.subspan(12, 4));
		const uint32_t length = read32(raw.subspan(16, 4));
		std::vector<uint8_t> bytes(length);
		gjd.seekg(offset);
		assert(gjd.read(reinterpret_cast<char *>(bytes.data()), length));
		return bytes;
	}
	assert(false && "missing VDX resource");
	return {};
}

std::vector<uint8_t> firstStill(std::span<const uint8_t> vdx)
{
	for (size_t offset = 8; offset + 8 <= vdx.size();)
	{
		const uint8_t type = vdx[offset];
		const uint8_t coding = vdx[offset + 1];
		const uint32_t size = read32(vdx.subspan(offset + 2, 4));
		const uint8_t lengthMask = vdx[offset + 6];
		const uint8_t lengthBits = vdx[offset + 7];
		offset += 8;
		assert(offset + size <= vdx.size());
		if (type == 0x20)
		{
			if (coding == 0x77)
			{
				auto decoded = lzssDecompressChecked(
					vdx.subspan(offset, size), lengthMask, lengthBits);
				assert(decoded);
				return std::move(*decoded);
			}
			return {vdx.begin() + static_cast<std::ptrdiff_t>(offset),
				vdx.begin() + static_cast<std::ptrdiff_t>(offset + size)};
		}
		offset += size;
	}
	assert(false && "missing still chunk");
	return {};
}

size_t conflictingDeltaPaletteUpdates(std::span<const uint8_t> vdx,
	std::span<const uint8_t, 256> protectedEntries,
	std::span<const RGBColor, 256> protectedPalette)
{
	size_t conflicts = 0;
	for (size_t offset = 8; offset + 8 <= vdx.size();)
	{
		const uint8_t type = vdx[offset];
		const uint8_t coding = vdx[offset + 1];
		const uint32_t size = read32(vdx.subspan(offset + 2, 4));
		const uint8_t lengthMask = vdx[offset + 6];
		const uint8_t lengthBits = vdx[offset + 7];
		offset += 8;
		assert(offset + size <= vdx.size());
		if (type == 0x25)
		{
			std::vector<uint8_t> decodedStorage;
			std::span<const uint8_t> chunk = vdx.subspan(offset, size);
			if (coding == 0x77)
			{
				auto decoded = lzssDecompressChecked(chunk, lengthMask, lengthBits);
				assert(decoded);
				decodedStorage = std::move(*decoded);
				chunk = decodedStorage;
			}
			if (chunk.size() >= 34 && readLittleEndian16(chunk) != 0)
			{
				size_t colourOffset = 34;
				for (size_t group = 0; group < 16; ++group)
				{
					const uint16_t map = readLittleEndian16(chunk.subspan(2 + group * 2));
					for (size_t bit = 0; bit < 16; ++bit)
					{
						if (!(map & (0x8000u >> bit)))
							continue;
						assert(colourOffset + 3 <= chunk.size());
						const size_t index = group * 16 + bit;
						const RGBColor colour{chunk[colourOffset],
							chunk[colourOffset + 1], chunk[colourOffset + 2]};
						if (protectedEntries[index] && colour != protectedPalette[index])
							++conflicts;
						colourOffset += 3;
					}
				}
			}
		}
		offset += size;
	}
	return conflicts;
}

struct Still
{
	std::array<RGBColor, 256> palette{};
	std::vector<uint8_t> indices;
};

Still decodeStill(const std::filesystem::path &root, const std::string &name)
{
	const auto vdx = load(root, name);
	const auto chunk = firstStill(vdx);
	const size_t width = readLittleEndian16(chunk) * 4u;
	const size_t height = readLittleEndian16(
		std::span<const uint8_t>{chunk}.subspan(2)) * 4u;
	Still result;
	result.indices.resize(width * height);
	std::vector<uint8_t> rgb(width * height * 3);
	assert(getBitmapDataChecked(chunk, result.palette, rgb, result.indices));
	return result;
}

void checkPair(const std::filesystem::path &root,
	const std::string &baseName, const std::string &overlayName)
{
	const auto base = decodeStill(root, baseName);
	const auto overlay = decodeStill(root, overlayName);
	std::array<uint8_t, 256> baseUsed{};
	std::array<uint8_t, 256> overlayUsed{};
	for (const uint8_t index : base.indices)
		baseUsed[index] = 1;
	for (const uint8_t index : overlay.indices)
		overlayUsed[index] = 1;
	size_t conflictingEntries = 0;
	for (size_t index = 0; index < baseUsed.size(); ++index)
		if (baseUsed[index] && overlayUsed[index] &&
			base.palette[index] != overlay.palette[index])
			++conflictingEntries;
	const auto overlayVdx = load(root, overlayName);
	const size_t deltaConflicts = conflictingDeltaPaletteUpdates(
		overlayVdx, baseUsed, base.palette);
	std::cout << baseName << " + " << overlayName << ": "
		<< std::ranges::count(baseUsed, uint8_t{1}) << " base indices, "
		<< conflictingEntries << " still conflicts, "
		<< deltaConflicts << " delta conflicts\n";
}
} // namespace

int main()
{
	const std::filesystem::path root = "T7G";
	checkPair(root, "h1_8.vdx", "hb_.vdx");
	checkPair(root, "h1_2.vdx", "h_ghost1.vdx");
}
