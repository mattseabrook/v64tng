#include "grv_runtime.h"

#include <algorithm>
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
	return x >= left() && x < right() && y >= top() && y < bottom();
}

std::expected<GrvRuntime, std::string> GrvRuntime::load(
	const std::filesystem::path &scriptPath,
	const std::filesystem::path &assetRoot)
{
	auto mapping = mapReadOnly(scriptPath);
	if (!mapping)
		return std::unexpected(mapping.error());
	GrvRuntime runtime;
	runtime.owner_ = std::move(mapping->first);
	runtime.bytes_ = {runtime.owner_.get(), mapping->second};
	runtime.assetRoot_ = assetRoot;
	return runtime;
}

size_t GrvRuntime::loadSequence(uint16_t variable, size_t encoded)
{
	size_t output = variable;
	uint8_t last = 0;
	do
	{
		if (encoded >= bytes_.size() || output >= variables_.size())
			return bytes_.size();
		last = bytes_[encoded++];
		const uint8_t token = last & 0x7f;
		if (token == 0x23 && encoded < bytes_.size())
		{
			last = bytes_[encoded++];
			const uint8_t source = (last & 0x7f) - 0x61;
			variables_[output++] = variables_[source];
		}
		else if (token == 0x7c)
		{
			// Grid references are not used by the boot/menu path. Consume their
			// row and column encodings while retaining an inert value.
			uint8_t ignored = 0;
			encoded = skipEncodedChar(bytes_, encoded, ignored);
			encoded = skipEncodedChar(bytes_, encoded, last);
			variables_[output++] = 0;
		}
		else
		{
			variables_[output++] = static_cast<uint8_t>(token - 0x30);
		}
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
		last = bytes_[encoded++];
		const uint8_t token = last & 0x7f;
		uint8_t expected = 0;
		if (token == 0x23 && encoded < bytes_.size())
		{
			last = bytes_[encoded++];
			expected = variables_[(last & 0x7f) - 0x61];
		}
		else if (token == 0x7c)
		{
			uint8_t ignored = 0;
			encoded = skipEncodedChar(bytes_, encoded, ignored);
			encoded = skipEncodedChar(bytes_, encoded, last);
		}
		else
		{
			expected = static_cast<uint8_t>(token - 0x30);
		}
		if (variables_[input++] != expected)
			return false;
	} while (!(last & 0x80));
	return true;
}

void GrvRuntime::checkValidSaves()
{
	uint8_t count = 0;
	for (uint8_t slot = 0; slot < 10; ++slot)
	{
		const auto dos = assetRoot_ / std::format("save.{}", slot);
		const auto windows = assetRoot_ / std::format("st7g.{}", slot);
		const auto cwdWindows = std::filesystem::path(std::format("st7g.{}", slot));
		const bool valid = std::filesystem::exists(dos) ||
			std::filesystem::exists(windows) || std::filesystem::exists(cwdWindows);
		variables_[slot] = valid ? 1 : 0;
		count += valid ? 1 : 0;
	}
	variables_[0x104] = count;
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

		switch (op)
		{
		case 0x02:
			songRef_ = read16(bytes_, pc + 1);
			break;
		case 0x03:
			videoFlags_ |= 1u << 9;
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
			const uint16_t ref = read16(bytes_, pc + 1);
			videoCommands_.push_back({ref, videoFlags_, videoRateOverride_});
			// The retail video player consumes all transient flags when this
			// VIDEOREF completes. The interpreter then resumes at the next op.
			videoFlags_ = 0;
			videoRateOverride_ = 0;
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
		case 0x33:
			loadSequence(variableAt(pc + 1), pc + 1 + varBytes);
			break;
		case 0x35:
			videoFlags_ &= ~(1u << 7);
			break;
		case 0x17:
			if (callDepth_)
			{
				pc = callStack_[--callDepth_];
				continue;
			}
			return false;
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
		case 0x2c:
			persistentHotspots_[0] = static_cast<uint16_t>(pc);
			break;
		case 0x2d:
			persistentHotspots_[1] = static_cast<uint16_t>(pc);
			break;
		case 0x1f:
			++variables_[variableAt(pc + 1)];
			break;
		case 0x2a:
			ended_ = true;
			return false;
		case 0x2e:
			return std::unexpected(
				"LOADGAME reached; native save-state import is not implemented yet");
		case 0x3c:
			checkValidSaves();
			break;
		case 0x3d:
			std::fill(variables_.begin(), variables_.begin() + 0x100, 0);
			break;
		case 0x44:
			persistentHotspots_[2] = static_cast<uint16_t>(pc);
			break;
		case 0x45:
			persistentHotspots_[3] = static_cast<uint16_t>(pc);
			break;
		case 0x48:
			videoRateOverride_ = bytes_[pc + 1];
			break;
		default:
			break;
		}
		pc = next;
	}
	return std::unexpected("GRV execution did not reach an input loop");
}

std::expected<GrvBoot, std::string> GrvRuntime::boot()
{
	videoCommands_.clear();
	videoFlags_ = 0;
	videoRateOverride_ = 0;
	ended_ = false;
	const auto result = executeUntilInputLoop(0);
	if (!result)
		return std::unexpected(result.error());
	if (!*result)
		return std::unexpected("SCRIPT.GRV ended before its first input loop");
	return GrvBoot{{songRef_}, {std::move(videoCommands_), ended_}};
}

std::expected<GrvTransition, std::string> GrvRuntime::follow(uint16_t target)
{
	videoCommands_.clear();
	videoFlags_ = 0;
	videoRateOverride_ = 0;
	ended_ = false;
	const auto result = executeUntilInputLoop(target);
	if (!result)
		return std::unexpected(result.error());
	return GrvTransition{std::move(videoCommands_), ended_};
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
			return std::nullopt;
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
			op == 0x2c || op == 0x2d || op == 0x30 || op == 0x3b ||
			op == 0x44 || op == 0x45 || op == 0x53;
		if (hotspot)
		{
			GrvHotspotView view(bytes_.subspan(pc, next - pc), static_cast<uint16_t>(pc));
			// v64tng renders only the original 640x320 video viewport. GRV
			// rectangles confined to the discarded 80-row bars must never
			// acquire a one-pixel hit at the cropped viewport boundary.
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

std::optional<uint16_t> GrvRuntime::activateAt(
	int clientX, int clientY, int clientWidth, int clientHeight)
{
	const auto hotspot = hotspotAt(clientX, clientY, clientWidth, clientHeight);
	if (!hotspot)
		return std::nullopt;
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
