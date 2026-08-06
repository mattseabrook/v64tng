#include "grv_runtime.h"
#include "vdx.h"

#include <array>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <span>
#include <string_view>
#include <vector>

namespace
{
int failures = 0;

void expect(bool condition, std::string_view message)
{
	if (!condition)
	{
		std::cerr << "FAIL: " << message << '\n';
		++failures;
	}
}

void writeBytes(
	const std::filesystem::path &path,
	std::span<const uint8_t> bytes)
{
	std::ofstream file(path, std::ios::binary | std::ios::trunc);
	file.write(reinterpret_cast<const char *>(bytes.data()), bytes.size());
}

GrvRuntime loadRuntime(
	const std::filesystem::path &root,
	std::span<const uint8_t> script,
	GrvSaveConvention convention = GrvSaveConvention::Dos)
{
	const auto path = root / "SCRIPT.GRV";
	writeBytes(path, script);
	auto runtime = GrvRuntime::load(path, root, convention);
	if (!runtime)
	{
		std::cerr << "FAIL: runtime load: " << runtime.error() << '\n';
		std::exit(1);
	}
	return std::move(*runtime);
}
} // namespace

int main()
{
	const auto root = std::filesystem::temp_directory_path() /
		"v64tng-grv-runtime-tests";
	std::filesystem::create_directories(root);

	{
		VDXChunk raw{0x20, 0x67, 0, 0x7f, 7, {}};
		VDXChunk compressed{0x20, 0x77, 0, 0, 0, {}};
		expect(!vdxChunkIsCompressed(raw),
			"VDX coding 0x67 stays raw even with nonzero LZSS parameters");
		expect(vdxChunkIsCompressed(compressed),
			"VDX coding 0x77 selects LZSS independently of parameter values");
		expect(vdxSkipStill(1u << 5), "GRV video flag 5 suppresses a 0x20 still");
		expect(!vdxSkipStill(1u << 7),
			"GRV video flag 7 does not suppress a 0x20 still");
	}

	{
		const std::array<uint8_t, 6> script{
			0x18, 0x04, 0x00, 0x0b, 0x17, 0x2a};
		auto runtime = loadRuntime(root, script);
		const auto boot = runtime.boot();
		expect(boot.has_value(), "RET test reaches input loop");
		expect(runtime.variables()[0x102] == 0x2a,
			"RET stores its result in v[0x102]");
	}

	{
		const std::array<uint8_t, 18> script{
			0x16, 0x20, 0x00, 0xb5,
			0x16, 0x10, 0x00, 0xf0,
			0x33, 0x10, 0x00, 0xb7,
			0x16, 0x30, 0x00, 0x7c, 0x30, 0xb7};
		std::vector<uint8_t> code(script.begin(), script.end());
		code.push_back(0x0b);
		auto runtime = loadRuntime(root, code);
		const auto boot = runtime.boot();
		expect(boot.has_value(), "encoded-reference test reaches input loop");
		expect(runtime.variables()[0x0f] == 7,
			"LOADSTRING_INDIRECT dereferences pointerVar before subtracting 0x31");
		expect(runtime.variables()[0x30] == 5,
			"|row,column reads v[0x19 + 10*row + column]");
	}

	{
		const std::array<uint8_t, 30> script{
			0x16, 0x01, 0x00, 0xb1,
			0x16, 0x02, 0x00, 0xb2,
			0x20, 0x01, 0x00,
			0x24, 0x03, 0x00, 0x02, 0x00,
			0x25, 0x03, 0x00, 0x02, 0x00,
			0x1d, 0x01, 0x00, 0x03, 0x00,
			0x1b, 0x02, 0x00, 0x81};
		std::vector<uint8_t> code(script.begin(), script.end());
		code.push_back(0x0b);
		auto runtime = loadRuntime(root, code);
		expect(runtime.boot().has_value(), "byte-operation test reaches input loop");
		expect(runtime.variables()[1] == 4 && runtime.variables()[3] == 0,
			"DEC/MOV/ADD/SWAP retain byte-width semantics");
		expect(runtime.variables()[2] == 3,
			"XOR_OBFUSCATE masks list bytes with 0x4F");
	}

	{
		const std::array<uint8_t, 22> script{
			0x16, 0x10, 0x00, 0xb3,
			0x36, 0x10, 0x00, 0xb5, 0x11, 0x00,
			0x16, 0x20, 0x00, 0xb1,
			0x15, 0x15, 0x00,
			0x16, 0x20, 0x00, 0xb2,
			0x0b};
		auto runtime = loadRuntime(root, script);
		expect(runtime.boot().has_value(), "CHAR_LESS_JMP test reaches input loop");
		expect(runtime.variables()[0x20] == 2,
			"CHAR_LESS_JMP branches when a variable byte is below its encoded value");
	}

	{
		const std::array<uint8_t, 7> script{
			0x07, 0x9c, 0x34, 0x12, 0x0b, 0x00, 0x00};
		auto runtime = loadRuntime(root, script);
		const auto boot = runtime.boot();
		expect(boot.has_value() && boot->transition.videos.size() == 1,
			"VIDEO_TRANSITION_REF emits one video");
		if (boot && boot->transition.videos.size() == 1)
		{
			const auto &video = boot->transition.videos.front();
			expect(video.ref == 0x1234, "VIDEO_TRANSITION_REF retains packed ref");
			expect((video.flags & (1u << 1)) != 0,
				"VIDEO_TRANSITION_REF sets transition bit 1");
			expect((video.flags & (1u << 2)) != 0,
				"high opcode bit sets transparency bit 2");
			expect((video.flags & (1u << 7)) == 0,
				"VIDEO_TRANSITION_REF clears compositing bit 7");
		}
	}

	{
		const std::array<uint8_t, 19> script{
			0x45, 0x64, 0x00,
			0x0b,
			0x0d, 0x00, 0x00, 0x50, 0x00, 0x64, 0x00, 0x96, 0x00,
			0xc8, 0x00, 0x08,
			0x13};
		auto runtime = loadRuntime(root, script);
		const auto boot = runtime.boot();
		expect(boot.has_value(), "hotspot-priority test reaches input loop");
		const auto hotspot = runtime.hotspotAt(10, 20, 640, 320);
		expect(hotspot && hotspot->target() == 0x00c8,
			"local hotspot wins over overlapping persistent edge hotspot");
	}

	{
		const std::array<uint8_t, 2> script{0x3c, 0x0b};
		writeBytes(root / "st7g.0", std::array<uint8_t, 1>{0});
		std::filesystem::remove(root / "save.0");
		auto dos = loadRuntime(root, script, GrvSaveConvention::Dos);
		expect(dos.boot().has_value() && dos.variables()[0] == 0,
			"DOS save scan ignores Windows st7g.N files");
		writeBytes(root / "save.0", std::array<uint8_t, 1>{0});
		auto dosWithSave = loadRuntime(root, script, GrvSaveConvention::Dos);
		expect(dosWithSave.boot().has_value() && dosWithSave.variables()[0] == 1,
			"DOS save scan accepts assetRoot/save.N");
		auto windows = loadRuntime(root, script, GrvSaveConvention::Windows);
		expect(windows.boot().has_value() && windows.variables()[0] == 1,
			"Windows save scan accepts assetRoot/st7g.N");
	}

	{
		std::filesystem::remove(root / "save.0");
		const std::array<uint8_t, 19> script{
			0x16, 0x19, 0x00, 0xb0,
			0x16, 0x20, 0x00, 0xb9,
			0x2f, 0x19, 0x00,
			0x16, 0x20, 0x00, 0xb1,
			0x2e, 0x19, 0x00,
			0x0b};
		auto runtime = loadRuntime(root, script);
		expect(runtime.boot().has_value(), "SAVEGAME/LOADGAME test reaches input loop");
		expect(runtime.variables()[0x20] == 9,
			"SAVEGAME and LOADGAME round-trip the raw 0x400-byte variable bank");
		expect(std::filesystem::file_size(root / "save.0") == 0x400,
			"DOS SAVEGAME writes exactly 0x400 bytes");
	}

	{
		const std::array<uint8_t, 12> parent{
			0x16, 0x07, 0x01, 0xb3,
			0x3f, 'G', 'A', '.', 'G', 'R', 'V', 0x00};
		std::vector<uint8_t> parentCode(parent.begin(), parent.end());
		parentCode.push_back(0x0b);
		const std::array<uint8_t, 6> child{
			0x16, 0x07, 0x01, 0xb9, 0x43, 0x04};
		writeBytes(root / "GA.GRV", child);
		auto runtime = loadRuntime(root, parentCode);
		const auto boot = runtime.boot();
		expect(boot.has_value(), "LOADSCRIPT/RETURNSCRIPT reaches parent input loop");
		expect(runtime.variables()[0x107] == 3,
			"RETURNSCRIPT restores parent v[0x107..0x286] locals");
		expect(runtime.variables()[0x102] == 4,
			"RETURNSCRIPT stores child result in v[0x102]");
	}

	{
		const std::array<uint8_t, 2> script{0x22, 0x0b};
		auto runtime = loadRuntime(root, script);
		const auto boot = runtime.boot();
		expect(!boot && boot.error().find("opcode 0x22") != std::string::npos,
			"unimplemented opcode reports its actual code");
	}

	std::filesystem::remove_all(root);
	if (std::filesystem::exists("T7G/SCRIPT.GRV"))
	{
		auto retail = GrvRuntime::load("T7G/SCRIPT.GRV", "T7G");
		expect(retail.has_value(), "retail SCRIPT.GRV maps successfully");
		if (retail)
		{
			const auto boot = retail->boot();
			expect(boot.has_value(), "retail SCRIPT.GRV reaches its first input loop");
			expect(boot && boot->transition.videos.size() == 4,
				"retail boot emits the four canonical blocking videos");
		}
	}
	if (failures)
		return 1;
	std::cout << "All GRV runtime regression tests passed\n";
	return 0;
}
