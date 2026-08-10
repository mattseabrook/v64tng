#ifndef GRV_RUNTIME_H
#define GRV_RUNTIME_H

#include <array>
#include <cstdint>
#include <expected>
#include <filesystem>
#include <memory>
#include <optional>
#include <random>
#include <span>
#include <string>
#include <string_view>
#include <vector>

// A view into one hotspot instruction in the mapped GRV image.  Geometry is
// decoded on demand; no parallel ClickArea/Hotspot object is constructed.
class GrvHotspotView
{
public:
	[[nodiscard]] uint16_t left() const;
	[[nodiscard]] uint16_t top() const;
	[[nodiscard]] uint16_t right() const;
	[[nodiscard]] uint16_t bottom() const;
	[[nodiscard]] uint16_t target() const;
	[[nodiscard]] uint8_t cursor() const;
	[[nodiscard]] uint16_t instructionOffset() const { return offset_; }
	[[nodiscard]] bool contains(uint16_t x, uint16_t y) const;

private:
	friend class GrvRuntime;
	GrvHotspotView(std::span<const uint8_t> instruction, uint16_t offset)
		: instruction_(instruction), offset_(offset) {}

	std::span<const uint8_t> instruction_;
	uint16_t offset_ = 0;
};

struct GrvResource
{
	std::string_view archive;
	std::array<char, 13> filename{};

	[[nodiscard]] std::string_view name() const;
	[[nodiscard]] std::string stem() const;
};

struct GrvBootResources
{
	uint16_t song = 0;
	uint16_t backgroundSong = 0;
};

struct GrvVideoCommand
{
	uint16_t ref = 0;
	uint16_t flags = 0;
	uint8_t rateOverride = 0;
};

struct GrvTransition
{
	std::vector<GrvVideoCommand> videos;
	bool ended = false;
};

struct GrvBoot
{
	GrvBootResources resources;
	GrvTransition transition;
};

enum class GrvSaveConvention
{
	Dos,
	Windows
};

class GrvRuntime
{
public:
	static std::expected<GrvRuntime, std::string> load(
		const std::filesystem::path &scriptPath,
		const std::filesystem::path &assetRoot,
		GrvSaveConvention saveConvention = GrvSaveConvention::Dos);

	[[nodiscard]] std::expected<GrvBoot, std::string> boot();
	[[nodiscard]] std::optional<GrvHotspotView> hotspotAt(
		int clientX, int clientY, int clientWidth, int clientHeight) const;
	[[nodiscard]] std::optional<uint16_t> activateAt(
		int clientX, int clientY, int clientWidth, int clientHeight);
	[[nodiscard]] std::expected<GrvTransition, std::string> follow(uint16_t target);
	[[nodiscard]] std::expected<std::optional<GrvTransition>, std::string>
		handleKey(uint8_t key);
	[[nodiscard]] std::optional<GrvResource> resolve(uint16_t ref) const;
	[[nodiscard]] uint16_t activeLoop() const { return activeLoop_; }
	[[nodiscard]] std::span<const uint8_t> variables() const { return variables_; }
	[[nodiscard]] uint16_t cursorStyleAt(
		int clientX, int clientY, int clientWidth, int clientHeight) const;

private:
	struct ParentScript
	{
		std::shared_ptr<const uint8_t> owner;
		std::span<const uint8_t> bytes;
		std::filesystem::path path;
		uint16_t returnPc = 0;
		size_t stackCheckpoint = 0;
		std::array<uint8_t, 0x180> localVariables{};
	};

	std::expected<bool, std::string> executeUntilInputLoop(uint16_t entry);
	std::optional<GrvHotspotView> hotspotAtCanonical(uint16_t x, uint16_t y) const;
	std::optional<uint8_t> decodeChar(
		size_t &encoded, uint8_t &last, bool allowGrid,
		bool limitValue, bool limitVariable) const;
	bool sequenceEquals(uint16_t variable, size_t encoded) const;
	bool sequenceAnyGreater(uint16_t variable, size_t encoded) const;
	bool sequenceAnyLess(uint16_t variable, size_t encoded) const;
	size_t loadSequence(uint16_t variable, size_t encoded);
	std::expected<std::string, std::string> interpolateString(size_t encoded) const;
	std::expected<uint16_t, std::string> resolveVideoName(
		std::string_view name) const;
	std::expected<void, std::string> checkValidSaves();
	std::expected<void, std::string> loadGame(uint8_t slot);
	std::expected<void, std::string> saveGame(uint8_t slot) const;
	[[nodiscard]] std::filesystem::path savePath(uint8_t slot) const;
	[[nodiscard]] size_t savePayloadSize() const;
	[[nodiscard]] std::string unimplementedOpcode(
		uint8_t raw, uint16_t pc) const;

	std::shared_ptr<const uint8_t> owner_;
	std::span<const uint8_t> bytes_;
	std::filesystem::path scriptPath_;
	std::filesystem::path assetRoot_;
	GrvSaveConvention saveConvention_ = GrvSaveConvention::Dos;
	std::optional<ParentScript> parentScript_;
	// V.EXE persists 0x523 bytes from its GRV state base; v32tng.exe persists
	// only the first 0x400.  Keep the larger native DOS block in memory and
	// select the on-disk extent from saveConvention_.
	std::array<uint8_t, 0x523> variables_{};
	std::array<uint16_t, 32> callStack_{};
	size_t callDepth_ = 0;
	uint16_t activeLoop_ = 0;
	uint16_t songRef_ = 0;
	uint16_t backgroundSongRef_ = 0;
	uint16_t videoFlags_ = 0;
	uint8_t videoRateOverride_ = 0;
	uint8_t lastCursor_ = 0;
	std::vector<GrvVideoCommand> videoCommands_;
	bool ended_ = false;
	std::array<uint16_t, 4> persistentHotspots_{};
	std::mt19937 random_{std::random_device{}()};
};

#endif // GRV_RUNTIME_H
