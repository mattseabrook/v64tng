#include "grv_runtime.h"

#include <algorithm>
#include <cctype>
#include <cstring>
#include <fstream>
#include <format>

#ifdef _WIN32
#include <windows.h>
#else
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>
#endif

namespace
{
constexpr std::array<std::string_view, 21> kArchives{{
	"AT", "B", "CH", "D", "DR", "FH", "GA", "HDISK", "HTBD", "INTRO", "JHEK",
	"K", "LA", "LI", "MB", "MC", "MU", "N", "P", "XMI", "GAMWAV"}};

constexpr uint16_t read16(std::span<const uint8_t> bytes, size_t offset)
{
	return static_cast<uint16_t>(bytes[offset] | bytes[offset + 1] << 8);
}

std::string asciiLower(std::string_view value)
{
	std::string result(value);
	std::ranges::transform(result, result.begin(), [](unsigned char ch)
	{
		return static_cast<char>(std::tolower(ch));
	});
	return result;
}

std::optional<std::filesystem::path> findCaseInsensitive(
	const std::filesystem::path &directory,
	std::string_view filename)
{
	std::error_code error;
	if (!std::filesystem::is_directory(directory, error))
		return std::nullopt;
	const std::string wanted = asciiLower(filename);
	for (const auto &entry : std::filesystem::directory_iterator(directory, error))
	{
		if (error)
			break;
		if (asciiLower(entry.path().filename().string()) == wanted)
			return entry.path();
	}
	return std::nullopt;
}

size_t skipEncodedChar(std::span<const uint8_t> bytes, size_t offset, uint8_t &last)
{
	if (offset >= bytes.size())
		return bytes.size();
	last = bytes[offset++];
	const uint8_t token = last & 0x7f;
	if (token == 0x23 && offset < bytes.size())
		last = bytes[offset++];
	return offset;
}

size_t skipSequence(std::span<const uint8_t> bytes, size_t offset)
{
	while (offset < bytes.size())
	{
		uint8_t last = 0;
		const uint8_t token = bytes[offset] & 0x7f;
		if (token == 0x7c)
		{
			++offset;
			offset = skipEncodedChar(bytes, offset, last);
			offset = skipEncodedChar(bytes, offset, last);
		}
		else
		{
			offset = skipEncodedChar(bytes, offset, last);
		}
		if (last & 0x80)
			break;
	}
	return offset;
}

size_t skipString(std::span<const uint8_t> bytes, size_t offset, bool interpolated)
{
	while (offset < bytes.size())
	{
		const uint8_t ch = bytes[offset++];
		if (!ch)
			break;
		if (interpolated && ch == 0x23 && offset < bytes.size())
			++offset;
		else if (interpolated && ch == 0x7c)
		{
			uint8_t ignored = 0;
			offset = skipEncodedChar(bytes, offset, ignored);
			offset = skipEncodedChar(bytes, offset, ignored);
		}
	}
	return offset;
}

std::optional<size_t> instructionEnd(std::span<const uint8_t> bytes, size_t offset)
{
	if (offset >= bytes.size())
		return std::nullopt;
	const uint8_t raw = bytes[offset];
	const uint8_t op = raw & 0x7f;
	const size_t variableBytes = (raw & 0x80) ? 1 : 2;
	size_t p = offset + 1;
	auto fixed = [&](size_t count) -> std::optional<size_t>
	{
		if (count > bytes.size() - std::min(p, bytes.size()))
			return std::nullopt;
		return p + count;
	};

	if (op == 0x02 || op == 0x08 || op == 0x09 || op == 0x1c) return fixed(2);
	if (op == 0x0c) return fixed(3);
	if (op == 0x0d) return fixed(11);
	if ((op >= 0x0e && op <= 0x12) || op == 0x15 || op == 0x18 ||
		op == 0x44 || op == 0x45) return fixed(2);
	if (op == 0x14) return fixed(variableBytes + 1);
	if (op == 0x16 || op == 0x33)
	{
		p += variableBytes;
		return skipSequence(bytes, p);
	}
	if (op == 0x17 || op == 0x42 || op == 0x43 || op == 0x48 ||
		op == 0x4b || op == 0x4d || op == 0x52) return fixed(1);
	if (op == 0x19) return fixed(2);
	if (op == 0x1a || op == 0x21 || op == 0x23 || op == 0x34 || op == 0x36)
	{
		p += variableBytes;
		p = skipSequence(bytes, p);
		if (p + 2 > bytes.size()) return std::nullopt;
		return p + 2;
	}
	if (op == 0x1b)
	{
		p += variableBytes;
		while (p < bytes.size() && !(bytes[p++] & 0x80)) {}
		return p;
	}
	if (op == 0x1d || op == 0x24 || op == 0x25 || op == 0x41)
		return fixed(variableBytes + 2);
	if (op == 0x1e) return fixed(1);
	if (op == 0x1f || op == 0x20 || op == 0x2e || op == 0x2f)
		return fixed(variableBytes);
	if (op == 0x26 || op == 0x27 || op == 0x58)
		return skipString(bytes, p, true);
	if (op == 0x28 || op == 0x4a || op == 0x4e || op == 0x4f ||
		op == 0x50 || op == 0x51 || op == 0x55) return fixed(2);
	if (op == 0x2c || op == 0x2d) return fixed(3);
	if (op == 0x30) return fixed(2);
	if (op == 0x31) return fixed(4);
	if (op == 0x32) return fixed(variableBytes + 4);
	if (op == 0x37) return fixed(8);
	if (op == 0x39)
	{
		for (int i = 0; i < 4; ++i)
		{
			uint8_t ignored = 0;
			p = skipEncodedChar(bytes, p, ignored);
		}
		return p;
	}
	if (op == 0x3a) return skipSequence(bytes, p);
	if (op == 0x3b) return fixed(12);
	if (op == 0x3e) return fixed(variableBytes + 1);
	if (op == 0x3f) return skipString(bytes, p, false);
	if (op == 0x40) return fixed(4);
	if (op == 0x53) return fixed(10);
	if (op == 0x56) return fixed(6);
	if (op == 0x57) return fixed(4);
	if (op == 0x59) return fixed(variableBytes + 1);
	return p;
}

std::expected<std::pair<std::shared_ptr<const uint8_t>, size_t>, std::string>
mapReadOnly(const std::filesystem::path &path)
{
#ifdef _WIN32
	const HANDLE file = CreateFileW(path.c_str(), GENERIC_READ, FILE_SHARE_READ, nullptr,
		OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
	if (file == INVALID_HANDLE_VALUE)
		return std::unexpected("Cannot open " + path.string());
	LARGE_INTEGER size{};
	if (!GetFileSizeEx(file, &size) || size.QuadPart <= 0)
	{
		CloseHandle(file);
		return std::unexpected("Cannot size " + path.string());
	}
	const HANDLE mapping = CreateFileMappingW(file, nullptr, PAGE_READONLY, 0, 0, nullptr);
	if (!mapping)
	{
		CloseHandle(file);
		return std::unexpected("Cannot map " + path.string());
	}
	const auto data = static_cast<const uint8_t *>(
		MapViewOfFile(mapping, FILE_MAP_READ, 0, 0, 0));
	if (!data)
	{
		CloseHandle(mapping);
		CloseHandle(file);
		return std::unexpected("Cannot view " + path.string());
	}
	std::shared_ptr<const uint8_t> owner(data, [mapping, file](const uint8_t *p)
	{
		if (p) UnmapViewOfFile(p);
		CloseHandle(mapping);
		CloseHandle(file);
	});
	return std::pair{std::move(owner), static_cast<size_t>(size.QuadPart)};
#else
	const int fd = open(path.c_str(), O_RDONLY);
	if (fd < 0)
		return std::unexpected("Cannot open " + path.string());
	struct stat info{};
	if (fstat(fd, &info) != 0 || info.st_size <= 0)
	{
		close(fd);
		return std::unexpected("Cannot size " + path.string());
	}
	const size_t size = static_cast<size_t>(info.st_size);
	const auto data = static_cast<const uint8_t *>(
		mmap(nullptr, size, PROT_READ, MAP_PRIVATE, fd, 0));
	if (data == MAP_FAILED)
	{
		close(fd);
		return std::unexpected("Cannot map " + path.string());
	}
	std::shared_ptr<const uint8_t> owner(data, [size, fd](const uint8_t *p)
	{
		if (p && p != MAP_FAILED) munmap(const_cast<uint8_t *>(p), size);
		close(fd);
	});
	return std::pair{std::move(owner), size};
#endif
}

uint16_t hotspotField(std::span<const uint8_t> bytes, size_t offset)
{
	return read16(bytes, offset);
}
} // namespace

std::string_view GrvResource::name() const
{
	const auto end = std::find(filename.begin(), filename.end(), '\0');
	return {filename.data(), static_cast<size_t>(end - filename.begin())};
}

std::string GrvResource::stem() const
{
	auto value = name();
	if (const auto dot = value.find('.'); dot != std::string_view::npos)
		value = value.substr(0, dot);
	return std::string(value);
}

uint16_t GrvHotspotView::left() const
{
	switch (instruction_[0] & 0x7f)
	{
	case 0x0d: return hotspotField(instruction_, 1);
	case 0x0e: case 0x45: return 0;
	case 0x0f: return 540;
	case 0x44: return 560;
	case 0x10: case 0x11: return 200;
	case 0x12: case 0x2c: case 0x2d: case 0x30: return 0;
	case 0x3b: return hotspotField(instruction_, 2);
	case 0x53: return hotspotField(instruction_, 1);
	default: return 0;
	}
}

uint16_t GrvHotspotView::top() const
{
	switch (instruction_[0] & 0x7f)
	{
	case 0x0d: return hotspotField(instruction_, 3);
	case 0x0e: case 0x0f: case 0x10: case 0x11: return 80;
	case 0x2d: case 0x30: return 400;
	case 0x3b: return hotspotField(instruction_, 4);
	case 0x53: return hotspotField(instruction_, 3);
	default: return 0;
	}
}

uint16_t GrvHotspotView::right() const
{
	switch (instruction_[0] & 0x7f)
	{
	case 0x0d: return hotspotField(instruction_, 5);
	case 0x0e: return 100;
	case 0x45: return 80;
	case 0x0f: case 0x44: case 0x12: case 0x2c: case 0x2d: case 0x30: return 640;
	case 0x10: case 0x11: return 440;
	case 0x3b: return hotspotField(instruction_, 6);
	case 0x53: return hotspotField(instruction_, 5);
	default: return 640;
	}
}

uint16_t GrvHotspotView::bottom() const
{
	switch (instruction_[0] & 0x7f)
	{
	case 0x0d: return hotspotField(instruction_, 7);
	case 0x0e: case 0x0f: case 0x10: case 0x11: return 400;
	case 0x2c: return 80;
	case 0x3b: return hotspotField(instruction_, 8);
	case 0x53: return hotspotField(instruction_, 7);
	default: return 480;
	}
}

uint16_t GrvHotspotView::target() const
{
	switch (instruction_[0] & 0x7f)
	{
	case 0x0d: return hotspotField(instruction_, 9);
	case 0x3b: return hotspotField(instruction_, 10);
	case 0x53: return hotspotField(instruction_, 9);
	default: return hotspotField(instruction_, 1);
	}
}

uint8_t GrvHotspotView::cursor() const
{
	switch (instruction_[0] & 0x7f)
	{
	case 0x0d: return instruction_[11];
	case 0x0e: case 0x45: return 1;
	case 0x0f: case 0x44: return 2;
	case 0x2c: case 0x2d: return instruction_[3];
	case 0x30: return 4;
	case 0x3b: return instruction_[12];
	default: return 0;
	}
}

bool GrvHotspotView::contains(uint16_t x, uint16_t y) const
{
	// Retail uses half-open rectangles, matching Win32 RECT/Common::Rect.
	const bool inside = x >= left() && x < right() && y >= top() && y < bottom();
	return (instruction_[0] & 0x7f) == 0x53 ? !inside : inside;
}

std::expected<GrvRuntime, std::string> GrvRuntime::load(
	const std::filesystem::path &scriptPath,
	const std::filesystem::path &assetRoot,
	GrvSaveConvention saveConvention)
{
	auto mapping = mapReadOnly(scriptPath);
	if (!mapping)
		return std::unexpected(mapping.error());
	GrvRuntime runtime;
	runtime.owner_ = std::move(mapping->first);
	runtime.bytes_ = {runtime.owner_.get(), mapping->second};
	runtime.scriptPath_ = scriptPath;
	runtime.assetRoot_ = assetRoot;
	runtime.saveConvention_ = saveConvention;
	return runtime;
}

std::optional<uint8_t> GrvRuntime::decodeChar(
	size_t &encoded, uint8_t &last, bool allowGrid,
	bool limitValue, bool limitVariable) const
{
	if (encoded >= bytes_.size())
		return std::nullopt;
	last = bytes_[encoded++];
	uint8_t token = limitValue ? static_cast<uint8_t>(last & 0x7f) : last;
	if (allowGrid && token == 0x7c)
	{
		const auto row = decodeChar(encoded, last, false, false, false);
		const auto column = decodeChar(encoded, last, false, true, true);
		if (!row || !column)
			return std::nullopt;
		const size_t index = 0x19 + 10 * static_cast<size_t>(*row) + *column;
		if (index >= variables_.size())
			return std::nullopt;
		return variables_[index];
	}
	if (token == 0x23)
	{
		if (encoded >= bytes_.size())
			return std::nullopt;
		last = bytes_[encoded++];
		token = limitVariable ? static_cast<uint8_t>(last & 0x7f) : last;
		if (token < 0x61)
			return std::nullopt;
		const size_t index = token - 0x61;
		if (index >= variables_.size())
			return std::nullopt;
		return variables_[index];
	}
	return static_cast<uint8_t>(token - 0x30);
}

size_t GrvRuntime::loadSequence(uint16_t variable, size_t encoded)
{
	size_t output = variable;
	uint8_t last = 0;
	do
	{
		if (encoded >= bytes_.size() || output >= variables_.size())
			return bytes_.size();
		const auto value = decodeChar(encoded, last, true, true, true);
		if (!value)
			return bytes_.size();
		variables_[output++] = *value;
	} while (!(last & 0x80));
	return encoded;
}

bool GrvRuntime::sequenceEquals(uint16_t variable, size_t encoded) const
{
	size_t input = variable;
	uint8_t last = 0;
	do
	{
		if (encoded >= bytes_.size() || input >= variables_.size())
			return false;
		const auto expected = decodeChar(encoded, last, true, true, true);
		if (!expected || variables_[input++] != *expected)
			return false;
	} while (!(last & 0x80));
	return true;
}

bool GrvRuntime::sequenceAnyGreater(uint16_t variable, size_t encoded) const
{
	size_t input = variable;
	uint8_t last = 0;
	bool result = false;
	do
	{
		if (input >= variables_.size())
			return false;
		const auto expected = decodeChar(encoded, last, true, true, true);
		if (!expected)
			return false;
		result = result || variables_[input++] > *expected;
	} while (!(last & 0x80));
	return result;
}

bool GrvRuntime::sequenceAnyLess(uint16_t variable, size_t encoded) const
{
	size_t input = variable;
	uint8_t last = 0;
	bool result = false;
	do
	{
		if (input >= variables_.size())
			return false;
		const auto expected = decodeChar(encoded, last, true, true, true);
		if (!expected)
			return false;
		result = result || variables_[input++] < *expected;
	} while (!(last & 0x80));
	return result;
}

std::filesystem::path GrvRuntime::savePath(
	uint8_t slot, GrvSaveConvention convention) const
{
	const std::string filename = convention == GrvSaveConvention::Dos
		? std::format("save.{}", slot)
		: std::format("st7g.{}", slot);
	return assetRoot_ / filename;
}

size_t GrvRuntime::savePayloadSize(GrvSaveConvention convention)
{
	// Static DOS evidence: both INT 21h read/write paths use CX=0523h.
	// Runtime Win32 evidence (trace 20260809-195435): WriteFile requested and
	// completed exactly 0400h bytes for st7g.1.
	return convention == GrvSaveConvention::Dos ? 0x523 : 0x400;
}

std::optional<GrvSaveConvention> GrvRuntime::detectSaveConvention(uint8_t slot) const
{
	struct Candidate
	{
		GrvSaveConvention convention;
		std::filesystem::file_time_type modified;
	};
	std::optional<Candidate> selected;
	for (const auto convention : {GrvSaveConvention::Dos, GrvSaveConvention::Windows})
	{
		const auto expectedPath = savePath(slot, convention);
		const auto actualPath = findCaseInsensitive(
			assetRoot_, expectedPath.filename().string());
		if (!actualPath)
			continue;
		std::error_code error;
		const auto size = std::filesystem::file_size(*actualPath, error);
		if (error || size != savePayloadSize(convention))
			continue;
		const auto modified = std::filesystem::last_write_time(*actualPath, error);
		if (error)
			continue;
		if (!selected || modified > selected->modified ||
			(modified == selected->modified && convention == GrvSaveConvention::Dos))
			selected = Candidate{convention, modified};
	}
	return selected ? std::optional{selected->convention} : std::nullopt;
}

std::expected<void, std::string> GrvRuntime::checkValidSaves()
{
	uint8_t count = 0;
	for (uint8_t slot = 0; slot < 10; ++slot)
	{
		std::optional<GrvSaveConvention> convention;
		if (saveConvention_ == GrvSaveConvention::Auto)
			convention = detectSaveConvention(slot);
		else
		{
			const auto candidate = findCaseInsensitive(
				assetRoot_, savePath(slot, saveConvention_).filename().string());
			if (candidate)
			{
				std::error_code error;
				const auto size = std::filesystem::file_size(*candidate, error);
				if (!error && size == savePayloadSize(saveConvention_))
					convention = saveConvention_;
			}
		}
		slotSaveConventions_[slot] = convention;
		const bool valid = convention.has_value();
		variables_[slot] = valid ? 1 : 0;
		count += valid ? 1 : 0;
	}
	variables_[0x104] = count;
	return {};
}

std::expected<void, std::string> GrvRuntime::loadGame(uint8_t slot)
{
	if (slot >= 10)
		return std::unexpected(std::format("Invalid GRV save slot {}", slot));
	auto convention = saveConvention_ == GrvSaveConvention::Auto
		? slotSaveConventions_[slot] : std::optional{saveConvention_};
	if (!convention)
		convention = detectSaveConvention(slot);
	if (!convention)
		return std::unexpected(std::format("Cannot find GRV save slot {}", slot));
	const auto expectedPath = savePath(slot, *convention);
	const auto path = findCaseInsensitive(
		assetRoot_, expectedPath.filename().string()).value_or(expectedPath);
	std::ifstream file(path, std::ios::binary);
	if (!file)
		return std::unexpected("Cannot open " + path.string());
	if (*convention == GrvSaveConvention::Windows)
		std::fill(variables_.begin() + 0x400, variables_.end(), 0);
	if (!file.read(reinterpret_cast<char *>(variables_.data()),
		static_cast<std::streamsize>(savePayloadSize(*convention))))
		return std::unexpected("Truncated GRV save " + path.string());
	slotSaveConventions_[slot] = convention;
	return {};
}

std::expected<void, std::string> GrvRuntime::saveGame(uint8_t slot)
{
	if (slot >= 10)
		return std::unexpected(std::format("Invalid GRV save slot {}", slot));
	// Existing slots retain their original native format. New v64tng slots use
	// the retail DOS payload because it is the lossless superset of v32's 0400h.
	const auto convention = saveConvention_ == GrvSaveConvention::Auto
		? slotSaveConventions_[slot].value_or(
			detectSaveConvention(slot).value_or(GrvSaveConvention::Dos))
		: saveConvention_;
	const auto expectedPath = savePath(slot, convention);
	// Preserve the actual spelling of an existing native file. This matters on
	// case-sensitive hosts where SAVE.1 and save.1 would otherwise become two
	// different slots even though both original players treat them identically.
	const auto path = findCaseInsensitive(
		assetRoot_, expectedPath.filename().string()).value_or(expectedPath);
	std::ofstream file(path, std::ios::binary | std::ios::trunc);
	if (!file)
		return std::unexpected("Cannot create " + path.string());
	file.write(reinterpret_cast<const char *>(variables_.data()),
		static_cast<std::streamsize>(savePayloadSize(convention)));
	if (!file)
		return std::unexpected("Cannot write " + path.string());
	slotSaveConventions_[slot] = convention;
	return {};
}

std::expected<std::string, std::string>
GrvRuntime::interpolateString(size_t encoded) const
{
	std::string result;
	while (encoded < bytes_.size())
	{
		const uint8_t ch = bytes_[encoded++];
		if (!ch)
			return result;
		uint8_t value = ch;
		if (ch == 0x23)
		{
			if (encoded >= bytes_.size())
				return std::unexpected("Truncated # reference in GRV string");
			const uint8_t token = bytes_[encoded++];
			if (token < 0x61 || token - 0x61 >= variables_.size())
				return std::unexpected("Invalid # reference in GRV string");
			value = static_cast<uint8_t>(variables_[token - 0x61] + 0x30);
		}
		else if (ch == 0x7c)
		{
			uint8_t last = 0;
			const auto row = decodeChar(encoded, last, false, false, false);
			const auto column = decodeChar(encoded, last, false, false, false);
			if (!row || !column)
				return std::unexpected("Invalid | reference in GRV string");
			const size_t index = 0x19 + 10 * static_cast<size_t>(*row) + *column;
			if (index >= variables_.size())
				return std::unexpected("Out-of-range | reference in GRV string");
			value = static_cast<uint8_t>(variables_[index] + 0x30);
		}
		if (value >= 'A' && value <= 'Z')
			value = static_cast<uint8_t>(value + ('a' - 'A'));
		if (value)
			result.push_back(static_cast<char>(value));
	}
	return std::unexpected("Unterminated GRV string");
}

std::expected<uint16_t, std::string>
GrvRuntime::resolveVideoName(std::string_view name) const
{
	const std::string wanted = asciiLower(name);
	std::vector<uint16_t> matches;
	std::optional<uint16_t> contextMatch;
	const std::string context = asciiLower(scriptPath_.stem().string());
	for (size_t archiveIndex = 0; archiveIndex < kArchives.size(); ++archiveIndex)
	{
		auto rlPath = findCaseInsensitive(
			assetRoot_, std::string(kArchives[archiveIndex]) + ".RL");
		if (!rlPath)
			continue;
		std::ifstream file(*rlPath, std::ios::binary);
		for (size_t entryIndex = 0; entryIndex < 0x400; ++entryIndex)
		{
			std::array<char, 20> record{};
			if (!file.read(record.data(), record.size()))
				break;
			const auto end = std::find(record.begin(), record.begin() + 12, '\0');
			std::string_view filename(record.data(), static_cast<size_t>(end - record.begin()));
			if (filename.empty())
				continue;
			const auto dot = filename.find('.');
			const std::string stem = asciiLower(filename.substr(0, dot));
			if (stem != wanted)
				continue;
			const auto ref = static_cast<uint16_t>((archiveIndex << 10) | entryIndex);
			matches.push_back(ref);
			if (asciiLower(kArchives[archiveIndex]) == context)
				contextMatch = ref;
		}
	}
	if (contextMatch)
		return *contextMatch;
	if (matches.size() == 1)
		return matches.front();
	if (matches.empty())
		return std::unexpected("Cannot resolve named GRV video '" + std::string(name) + "'");
	return std::unexpected("Ambiguous named GRV video '" + std::string(name) + "'");
}

std::string GrvRuntime::unimplementedOpcode(uint8_t raw, uint16_t pc) const
{
	const std::string message = std::format(
		"GRV opcode 0x{:02X} (raw 0x{:02X}) is not implemented at {}+0x{:04X}",
		raw & 0x7f, raw, scriptPath_.filename().string(), pc);
#ifdef _WIN32
	MessageBoxA(nullptr, message.c_str(), "Unimplemented GRV opcode",
		MB_OK | MB_ICONWARNING);
#endif
	return message;
}

std::expected<bool, std::string> GrvRuntime::executeUntilInputLoop(uint16_t entry)
{
	size_t pc = entry;
	for (size_t steps = 0; steps < 100000 && pc < bytes_.size(); ++steps)
	{
		const uint8_t raw = bytes_[pc];
		const uint8_t op = raw & 0x7f;
		const size_t varBytes = (raw & 0x80) ? 1 : 2;
		const auto endResult = instructionEnd(bytes_, pc);
		if (!endResult)
			return std::unexpected(std::format("Truncated GRV instruction at 0x{:04X}", pc));
		const size_t next = *endResult;
		auto variableAt = [&](size_t at) -> uint16_t
		{
			return varBytes == 1 ? bytes_[at] : read16(bytes_, at);
		};
		auto requireVariable = [&](uint16_t index) -> std::expected<uint16_t, std::string>
		{
			if (index >= variables_.size())
				return std::unexpected(std::format(
					"GRV variable 0x{:04X} is out of range at 0x{:04X}", index, pc));
			return index;
		};
		auto queueVideo = [&](uint16_t ref)
		{
			const GrvVideoCommand command{
				ref, videoFlags_,
				videoRateOverride_};
			videoCommands_.push_back(command);
			presentationCommands_.push_back(command);
			videoFlags_ = 0;
			videoRateOverride_ = 0;
		};

		switch (op)
		{
		case 0x00:
		case 0x01:
			break;
		case 0x02:
			songRef_ = read16(bytes_, pc + 1);
			presentationCommands_.emplace_back(
				GrvPlaySongCommand{songRef_});
			break;
		case 0x08:
			backgroundSongRef_ = read16(bytes_, pc + 1);
			presentationCommands_.emplace_back(
				GrvSetBackgroundSongCommand{backgroundSongRef_});
			break;
		case 0x03:
			videoFlags_ |= 1u << 9;
			break;
		case 0x04:
			// Palette interpolation belongs to the native renderer. Consume the
			// presentation opcode here so execution reaches a following VIDEOREF
			// or ENDSCRIPT; it has no mutable GRV-bank effect.
			break;
		case 0x05:
			videoFlags_ |= 1u << 8;
			break;
		case 0x06:
			videoFlags_ |= 1u << 6;
			break;
		case 0x07:
			videoFlags_ |= 1u << 7;
			break;
		case 0x09:
		{
			queueVideo(read16(bytes_, pc + 1));
			break;
		}
		case 0x0a:
			videoFlags_ |= 1u << 5;
			break;
		case 0x0b:
			activeLoop_ = static_cast<uint16_t>(pc);
			return true;
		case 0x15:
			pc = read16(bytes_, pc + 1);
			continue;
		case 0x16:
		{
			const auto variable = requireVariable(variableAt(pc + 1));
			if (!variable)
				return std::unexpected(variable.error());
			if (loadSequence(*variable, pc + 1 + varBytes) != next)
				return std::unexpected(std::format(
					"Invalid LOADSTRING operands at 0x{:04X}", pc));
			break;
		}
		case 0x35:
			videoFlags_ &= ~(1u << 7);
			break;
		case 0x17:
			variables_[0x102] = bytes_[pc + 1];
			if (callDepth_)
			{
				pc = callStack_[--callDepth_];
				continue;
			}
			return std::unexpected(std::format(
				"RET at 0x{:04X} has an empty GRV call stack", pc));
		case 0x18:
			if (callDepth_ >= callStack_.size())
				return std::unexpected("GRV call stack overflow");
			callStack_[callDepth_++] = static_cast<uint16_t>(next);
			pc = read16(bytes_, pc + 1);
			continue;
		case 0x1a:
		case 0x23:
		{
			const uint16_t variable = variableAt(pc + 1);
			const size_t sequence = pc + 1 + varBytes;
			const size_t targetAt = skipSequence(bytes_, sequence);
			const bool equal = sequenceEquals(variable, sequence);
			if ((op == 0x1a && !equal) || (op == 0x23 && equal))
			{
				pc = read16(bytes_, targetAt);
				continue;
			}
			break;
		}
		case 0x14:
		{
			const auto variable = requireVariable(variableAt(pc + 1));
			if (!variable)
				return std::unexpected(variable.error());
			std::uniform_int_distribution<unsigned> distribution(
				0, bytes_[pc + 1 + varBytes]);
			variables_[*variable] = static_cast<uint8_t>(distribution(random_));
			break;
		}
		case 0x19:
			// Keep the delay in the same presentation stream as VIDEOREF and
			// PRINTSTRING. Sleeping here would delay the VM first and only reveal
			// all queued visual changes after execution reached the input loop.
			presentationCommands_.emplace_back(
				GrvSleepCommand{read16(bytes_, pc + 1)});
			break;
		case 0x1b:
		{
			const auto start = requireVariable(variableAt(pc + 1));
			if (!start)
				return std::unexpected(start.error());
			size_t variable = *start;
			size_t encoded = pc + 1 + varBytes;
			uint8_t value = 0;
			do
			{
				if (encoded >= bytes_.size() || variable >= variables_.size())
					return std::unexpected(std::format(
						"Invalid XOR_OBFUSCATE operands at 0x{:04X}", pc));
				value = bytes_[encoded++];
				variables_[variable++] ^= value & 0x4f;
			} while (!(value & 0x80));
			break;
		}
		case 0x1c:
			videoFlags_ |= 1u << 1;
			videoFlags_ &= ~(1u << 7);
			if (raw & 0x80)
				videoFlags_ |= 1u << 2;
			queueVideo(read16(bytes_, pc + 1));
			break;
		case 0x1d:
		{
			const auto first = requireVariable(variableAt(pc + 1));
			const auto second = requireVariable(read16(bytes_, pc + 1 + varBytes));
			if (!first)
				return std::unexpected(first.error());
			if (!second)
				return std::unexpected(second.error());
			std::swap(variables_[*first], variables_[*second]);
			break;
		}
		case 0x1e:
			// The shipped MAZE.GRV stream uses the coherent one-byte form.
			break;
		case 0x1f:
		case 0x20:
		{
			const auto variable = requireVariable(variableAt(pc + 1));
			if (!variable)
				return std::unexpected(variable.error());
			if (op == 0x1f)
				++variables_[*variable];
			else
				--variables_[*variable];
			break;
		}
		case 0x21:
		{
			const auto selector = requireVariable(variableAt(pc + 1));
			if (!selector)
				return std::unexpected(selector.error());
			uint8_t gridSlot = variables_[*selector];
			if (gridSlot > 9)
				gridSlot = static_cast<uint8_t>(gridSlot - 7);
			const size_t pointer = 0x19 + gridSlot;
			if (pointer >= variables_.size())
				return std::unexpected(std::format(
					"Invalid STRCMP_NE_JMP_INDIRECT selector at 0x{:04X}", pc));
			const size_t sequence = pc + 1 + varBytes;
			const size_t targetAt = skipSequence(bytes_, sequence);
			if (!sequenceEquals(variables_[pointer], sequence))
			{
				pc = read16(bytes_, targetAt);
				continue;
			}
			break;
		}
		case 0x22:
			presentationCommands_.emplace_back(GrvCopyBackgroundCommand{});
			break;
		case 0x24:
		case 0x25:
		case 0x41:
		{
			const auto destination = requireVariable(variableAt(pc + 1));
			const auto source = requireVariable(read16(bytes_, pc + 1 + varBytes));
			if (!destination)
				return std::unexpected(destination.error());
			if (!source)
				return std::unexpected(source.error());
			if (op == 0x24)
				variables_[*destination] = variables_[*source];
			else if (op == 0x25)
				variables_[*destination] =
					static_cast<uint8_t>(variables_[*destination] + variables_[*source]);
			else
				variables_[*destination] =
					static_cast<uint8_t>(variables_[*destination] - variables_[*source]);
			break;
		}
		case 0x26:
		case 0x27:
		{
			const auto name = interpolateString(pc + 1);
			if (!name)
				return std::unexpected(name.error());
			const auto ref = resolveVideoName(*name);
			if (!ref)
				return std::unexpected(ref.error());
			if (op == 0x27)
			{
				videoFlags_ |= 1u << 1;
				if (raw & 0x80)
					videoFlags_ |= 1u << 2;
			}
			queueVideo(*ref);
			break;
		}
		case 0x28:
		case 0x29:
		case 0x2b:
			// Reserved/default operations are externally inert in this target.
			break;
		case 0x2a:
			ended_ = true;
			return false;
		case 0x2c:
			persistentHotspots_[0] = static_cast<uint16_t>(pc);
			break;
		case 0x2d:
			persistentHotspots_[1] = static_cast<uint16_t>(pc);
			break;
		case 0x2e:
		case 0x2f:
		{
			const auto slotVariable = requireVariable(variableAt(pc + 1));
			if (!slotVariable)
				return std::unexpected(slotVariable.error());
			const auto result = op == 0x2e
				? loadGame(variables_[*slotVariable])
				: saveGame(variables_[*slotVariable]);
			if (!result)
				return std::unexpected(result.error());
			break;
		}
		case 0x31:
			// The native music player owns volume/ramp policy; consume the
			// canonical operands without inventing a second mixer state.
			break;
		case 0x32:
		{
			const auto selector = requireVariable(variableAt(pc + 1));
			const auto rhs = requireVariable(read16(bytes_, pc + 1 + varBytes));
			if (!selector)
				return std::unexpected(selector.error());
			if (!rhs)
				return std::unexpected(rhs.error());
			if (variables_[*selector] < 0x31)
				return std::unexpected(std::format(
					"JNE_INDIRECT selector underflow at 0x{:04X}", pc));
			const auto lhs = requireVariable(
				static_cast<uint16_t>(variables_[*selector] - 0x31));
			if (!lhs)
				return std::unexpected(lhs.error());
			if (variables_[*lhs] != variables_[*rhs])
			{
				pc = read16(bytes_, pc + 3 + varBytes);
				continue;
			}
			break;
		}
		case 0x33:
		{
			const auto pointer = requireVariable(variableAt(pc + 1));
			if (!pointer)
				return std::unexpected(pointer.error());
			if (variables_[*pointer] < 0x31)
				return std::unexpected(std::format(
					"LOADSTRING_INDIRECT destination underflow at 0x{:04X}", pc));
			const uint16_t destination =
				static_cast<uint16_t>(variables_[*pointer] - 0x31);
			if (loadSequence(destination, pc + 1 + varBytes) != next)
				return std::unexpected(std::format(
					"Invalid LOADSTRING_INDIRECT operands at 0x{:04X}", pc));
			break;
		}
		case 0x34:
		case 0x36:
		{
			const auto variable = requireVariable(variableAt(pc + 1));
			if (!variable)
				return std::unexpected(variable.error());
			const size_t sequence = pc + 1 + varBytes;
			const size_t targetAt = skipSequence(bytes_, sequence);
			const bool taken = op == 0x34
				? sequenceAnyGreater(*variable, sequence)
				: sequenceAnyLess(*variable, sequence);
			if (taken)
			{
				pc = read16(bytes_, targetAt);
				continue;
			}
			break;
		}
		case 0x37:
			presentationCommands_.emplace_back(GrvCopyRectCommand{
				read16(bytes_, pc + 1), read16(bytes_, pc + 3),
				read16(bytes_, pc + 5), read16(bytes_, pc + 7)});
			break;
		case 0x38:
			callDepth_ = parentScript_ ? parentScript_->stackCheckpoint : 0;
			break;
		case 0x39:
		{
			size_t encoded = pc + 1;
			std::array<uint8_t, 4> component{};
			uint8_t last = 0;
			for (auto &value : component)
			{
				const auto decoded = decodeChar(encoded, last, false, true, true);
				if (!decoded)
					return std::unexpected(std::format(
						"Invalid GRID_SWAP operands at 0x{:04X}", pc));
				value = *decoded;
			}
			const size_t first = 0x19 + 10 * component[0] + component[1];
			const size_t second = 0x19 + 10 * component[2] + component[3];
			if (first >= variables_.size() || second >= variables_.size())
				return std::unexpected(std::format(
					"GRID_SWAP index out of range at 0x{:04X}", pc));
			std::swap(variables_[first], variables_[second]);
			break;
		}
		case 0x3a:
		{
			std::string text;
			size_t encoded = pc + 1;
			uint8_t last = 0;
			bool terminated = false;
			do
			{
				const auto value = decodeChar(encoded, last, true, true, true);
				if (!value)
					return std::unexpected(std::format(
						"Invalid PRINTSTRING operands at 0x{:04X}", pc));
				const char ch = static_cast<char>(*value + 0x30);
				if (ch == '$')
					terminated = true;
				else if (!terminated && text.size() < 14)
					text.push_back(ch);
			} while (!(last & 0x80));
			presentationCommands_.emplace_back(GrvPrintCommand{std::move(text)});
			break;
		}
		case 0x3c:
		{
			const auto result = checkValidSaves();
			if (!result)
				return std::unexpected(result.error());
			break;
		}
		case 0x3d:
			std::fill(variables_.begin(), variables_.begin() + 0x100, 0);
			break;
		case 0x3e:
		{
			const auto variable = requireVariable(variableAt(pc + 1));
			if (!variable)
				return std::unexpected(variable.error());
			const uint8_t divisor = bytes_[pc + 1 + varBytes];
			if (!divisor)
				return std::unexpected(std::format(
					"MOD divisor is zero at 0x{:04X}", pc));
			variables_[*variable] %= divisor;
			break;
		}
		case 0x3f:
		{
			const char *begin =
				reinterpret_cast<const char *>(bytes_.data() + pc + 1);
			const char *finish =
				reinterpret_cast<const char *>(bytes_.data() + next - 1);
			const std::string filename(begin, finish);
			if (parentScript_)
				return std::unexpected(
					"Nested GRV LOADSCRIPT is not supported by the original T7G VM");
			auto path = findCaseInsensitive(assetRoot_, filename);
			if (!path)
				return std::unexpected("Cannot find GRV child script " + filename);
			auto mapping = mapReadOnly(*path);
			if (!mapping)
				return std::unexpected(mapping.error());
			ParentScript parent;
			parent.owner = owner_;
			parent.bytes = bytes_;
			parent.path = scriptPath_;
			parent.returnPc = static_cast<uint16_t>(next);
			parent.stackCheckpoint = callDepth_;
			std::copy_n(variables_.begin() + 0x107,
				parent.localVariables.size(), parent.localVariables.begin());
			parentScript_ = std::move(parent);
			owner_ = std::move(mapping->first);
			bytes_ = {owner_.get(), mapping->second};
			scriptPath_ = *path;
			activeLoop_ = 0;
			pc = 0;
			continue;
		}
		case 0x43:
		{
			if (!parentScript_)
				return std::unexpected(std::format(
					"RETURNSCRIPT at 0x{:04X} has no parent script", pc));
			const uint8_t result = bytes_[pc + 1];
			ParentScript parent = std::move(*parentScript_);
			parentScript_.reset();
			owner_ = std::move(parent.owner);
			bytes_ = parent.bytes;
			scriptPath_ = std::move(parent.path);
			callDepth_ = parent.stackCheckpoint;
			std::copy(parent.localVariables.begin(), parent.localVariables.end(),
				variables_.begin() + 0x107);
			variables_[0x102] = result;
			pc = parent.returnPc;
			continue;
		}
		case 0x44:
			persistentHotspots_[2] = static_cast<uint16_t>(pc);
			break;
		case 0x45:
			persistentHotspots_[3] = static_cast<uint16_t>(pc);
			break;
		case 0x46:
		case 0x47:
		case 0x4a:
		case 0x4b:
			// Resource reopening, Miles driver parameters, and DOS video-mode
			// switching have no corresponding state in the native layers.
			break;
		case 0x48:
			videoRateOverride_ = bytes_[pc + 1];
			break;
		case 0x49:
			// Retail V.EXE marks the palette indices used by the current indexed
			// background and preserves them while loading the next still palette.
			// v32tng's handler at 004041A6 is an intentional immediate return.
			presentationCommands_.emplace_back(GrvPaletteMergeOnceCommand{});
			break;
		case 0x4c:
		{
			const bool hasB = findCaseInsensitive(assetRoot_, "B.GJD").has_value();
			const bool hasAt = findCaseInsensitive(assetRoot_, "AT.GJD").has_value();
			variables_[0x106] = static_cast<uint8_t>(
				(hasB ? 0 : 2) | (hasAt ? 0 : 1));
			break;
		}
		default:
			return std::unexpected(unimplementedOpcode(raw, static_cast<uint16_t>(pc)));
		}
		pc = next;
	}
	return std::unexpected("GRV execution did not reach an input loop");
}

std::expected<GrvBoot, std::string> GrvRuntime::boot()
{
	videoCommands_.clear();
	presentationCommands_.clear();
	videoFlags_ = 0;
	videoRateOverride_ = 0;
	ended_ = false;
	const auto result = executeUntilInputLoop(0);
	if (!result)
		return std::unexpected(result.error());
	if (!*result)
		return std::unexpected("SCRIPT.GRV ended before its first input loop");
	return GrvBoot{
		{songRef_, backgroundSongRef_},
		{std::move(videoCommands_), std::move(presentationCommands_), ended_}};
}

std::expected<GrvTransition, std::string> GrvRuntime::follow(uint16_t target)
{
	videoCommands_.clear();
	presentationCommands_.clear();
	videoFlags_ = 0;
	videoRateOverride_ = 0;
	ended_ = false;
	const auto result = executeUntilInputLoop(target);
	if (!result)
		return std::unexpected(result.error());
	return GrvTransition{
		std::move(videoCommands_), std::move(presentationCommands_), ended_};
}

std::expected<std::optional<GrvTransition>, std::string>
GrvRuntime::handleKey(uint8_t key)
{
	if (!activeLoop_ || activeLoop_ >= bytes_.size())
		return std::optional<GrvTransition>{};
	size_t pc = activeLoop_ + 1;
	while (pc < bytes_.size())
	{
		const uint8_t raw = bytes_[pc];
		const uint8_t op = raw & 0x7f;
		const size_t varBytes = (raw & 0x80) ? 1 : 2;
		const auto endResult = instructionEnd(bytes_, pc);
		if (!endResult)
			return std::unexpected(std::format("Truncated input loop at 0x{:04X}", pc));
		if (op == 0x13)
			return std::optional<GrvTransition>{};
		if (op == 0x1a || op == 0x23)
		{
			const uint16_t variable = varBytes == 1 ? bytes_[pc + 1] : read16(bytes_, pc + 1);
			const size_t sequence = pc + 1 + varBytes;
			const size_t targetAt = skipSequence(bytes_, sequence);
			const bool equal = sequenceEquals(variable, sequence);
			if ((op == 0x1a && !equal) || (op == 0x23 && equal))
			{
				pc = read16(bytes_, targetAt);
				continue;
			}
		}
		if (op == 0x0c && bytes_[pc + 1] == key)
		{
			auto transition = follow(read16(bytes_, pc + 2));
			if (!transition)
				return std::unexpected(transition.error());
			return std::optional<GrvTransition>{*transition};
		}
		pc = *endResult;
	}
	return std::optional<GrvTransition>{};
}

std::optional<GrvHotspotView> GrvRuntime::hotspotAtCanonical(uint16_t x, uint16_t y) const
{
	if (!activeLoop_ || activeLoop_ >= bytes_.size())
		return std::nullopt;
	size_t pc = activeLoop_ + 1;
	while (pc < bytes_.size())
	{
		const uint8_t raw = bytes_[pc];
		const uint8_t op = raw & 0x7f;
		const size_t varBytes = (raw & 0x80) ? 1 : 2;
		const auto endResult = instructionEnd(bytes_, pc);
		if (!endResult)
			return std::nullopt;
		const size_t next = *endResult;
		if (op == 0x13)
			break;
		if (op == 0x1a || op == 0x23)
		{
			const uint16_t variable = varBytes == 1 ? bytes_[pc + 1] : read16(bytes_, pc + 1);
			const size_t sequence = pc + 1 + varBytes;
			const size_t targetAt = skipSequence(bytes_, sequence);
			const bool equal = sequenceEquals(variable, sequence);
			if ((op == 0x1a && !equal) || (op == 0x23 && equal))
			{
				pc = read16(bytes_, targetAt);
				continue;
			}
		}
		const bool hotspot = op == 0x0d || (op >= 0x0e && op <= 0x12) ||
			op == 0x30 || op == 0x3b || op == 0x53;
		if (hotspot)
		{
			GrvHotspotView view(bytes_.subspan(pc, next - pc), static_cast<uint16_t>(pc));
			// v64tng intentionally discards the two native 80-row bars. Do not
			// collapse a bar-only hotspot onto an edge of the visible band.
			if (view.bottom() <= 80 || view.top() >= 400)
			{
				pc = next;
				continue;
			}
			if (view.contains(x, y))
				return view;
		}
		pc = next;
	}
	// INPUTLOOPEND evaluates the four persistent edge declarations only after
	// every local declaration in bytecode order.
	for (const uint16_t offset : persistentHotspots_)
	{
		if (!offset)
			continue;
		const auto end = instructionEnd(bytes_, offset);
		if (!end)
			continue;
		GrvHotspotView view(
			bytes_.subspan(offset, *end - offset), offset);
		if (view.bottom() <= 80 || view.top() >= 400)
			continue;
		if (view.contains(x, y))
			return view;
	}
	return std::nullopt;
}

std::optional<GrvHotspotView> GrvRuntime::hotspotAt(
	int clientX, int clientY, int clientWidth, int clientHeight) const
{
	if (clientWidth <= 0 || clientHeight <= 0)
		return std::nullopt;
	const double scale = static_cast<double>(clientWidth) / 640.0;
	const double contentHeight = 320.0 * scale;
	const double offsetY = (static_cast<double>(clientHeight) - contentHeight) * 0.5;
	if (clientX < 0 || clientX >= clientWidth ||
		clientY < offsetY || clientY >= offsetY + contentHeight)
		return std::nullopt;
	const auto x = static_cast<uint16_t>(std::clamp(
		static_cast<int>(clientX * 640.0 / clientWidth), 0, 639));
	const auto y = static_cast<uint16_t>(std::clamp(
		static_cast<int>(80.0 + (clientY - offsetY) * 320.0 / contentHeight), 80, 399));
	return hotspotAtCanonical(x, y);
}

uint16_t GrvRuntime::cursorStyleAt(
	int clientX, int clientY, int clientWidth, int clientHeight) const
{
	const auto hotspot = hotspotAt(clientX, clientY, clientWidth, clientHeight);
	uint16_t style = hotspot ? hotspot->cursor() : 5;
	if (variables_[0x91] == 1)
		style |= 0x8000;
	return style;
}

std::optional<uint16_t> GrvRuntime::activateAt(
	int clientX, int clientY, int clientWidth, int clientHeight)
{
	const auto hotspot = hotspotAt(clientX, clientY, clientWidth, clientHeight);
	if (!hotspot)
		return std::nullopt;
	lastCursor_ = hotspot->cursor();
	return hotspot->target();
}

std::optional<GrvResource> GrvRuntime::resolve(uint16_t ref) const
{
	const size_t archiveIndex = ref >> 10;
	const size_t entryIndex = ref & 0x3ff;
	if (archiveIndex >= kArchives.size())
		return std::nullopt;
	const auto archive = kArchives[archiveIndex];
	std::filesystem::path path = assetRoot_ / (std::string(archive) + ".RL");
	if (!std::filesystem::exists(path))
	{
		path.replace_extension(".rl");
		if (!std::filesystem::exists(path))
			return std::nullopt;
	}
	std::ifstream file(path, std::ios::binary);
	if (!file.seekg(static_cast<std::streamoff>(entryIndex * 20)))
		return std::nullopt;
	GrvResource result;
	result.archive = archive;
	if (!file.read(result.filename.data(), 12))
		return std::nullopt;
	result.filename[12] = '\0';
	return result;
}
