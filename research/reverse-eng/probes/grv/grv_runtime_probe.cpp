#include "grv_runtime.h"

#include <cassert>
#include <filesystem>

int main()
{
	const std::filesystem::path root = "T7G";
	auto runtime = GrvRuntime::load(root / "SCRIPT.GRV", root);
	assert(runtime);
	const auto boot = runtime->boot();
	assert(boot);
	assert(boot->resources.song == 0x4c39);
	assert(boot->resources.backgroundSong == 0x4c0c);
	assert(boot->transition.videos.size() == 4);
	assert(boot->transition.videos[0].ref == 0x2418);
	assert(boot->transition.videos[0].flags == 0);
	assert(boot->transition.videos[1].ref == 0x241f);
	assert(boot->transition.videos[1].flags == (1u << 5));
	assert(boot->transition.videos[2].ref == 0x2425);
	assert(boot->transition.videos[2].flags == (1u << 5));
	assert(boot->transition.videos[3].ref == 0x50a9 ||
		boot->transition.videos[3].ref == 0x50aa);
	assert(boot->transition.videos[3].flags == (1u << 7));
	assert(std::holds_alternative<GrvPlaySongCommand>(
		boot->transition.commands.front()));
	assert(std::get<GrvPlaySongCommand>(
		boot->transition.commands.front()).ref == 0x4c39);
	assert(runtime->activeLoop() == 0x0059);

	// New-game and quit rows, in the engine's 640x320 content coordinates.
	const auto newGame = runtime->hotspotAt(318, 233, 640, 320);
	assert(newGame && newGame->target() == 0x03e8 && newGame->cursor() == 8);
	const auto quit = runtime->hotspotAt(318, 281, 640, 320);
	assert(quit && quit->target() == 0x02ac);
	assert(!runtime->hotspotAt(318, 0, 640, 320));
	const auto quitPrompt = runtime->follow(quit->target());
	assert(quitPrompt && runtime->activeLoop() == 0x02b8);
	assert(quitPrompt->videos.size() == 3);
	assert(quitPrompt->videos[0].ref == 0x2420);
	assert(quitPrompt->videos[1].ref == 0x2426);
	assert(quitPrompt->videos[2].ref == 0x2427);
	for (const auto &video : quitPrompt->videos)
		assert(video.flags == (1u << 5));
	const auto yes = runtime->hotspotAt(100, 120, 640, 320);
	const auto no = runtime->hotspotAt(500, 120, 640, 320);
	assert(yes && yes->target() == 0x02de && yes->cursor() == 8);
	assert(no && no->target() == 0x02ea && no->cursor() == 8);

	// Return through "No" and recover the permanent main input loop.
	const auto returnToMenu = runtime->follow(no->target());
	assert(returnToMenu && runtime->activeLoop() == 0x0059);

	// Same new-game point at 2x scale with an 80-pixel top letterbox.
	const auto scaled = runtime->hotspotAt(636, 546, 1280, 800);
	assert(scaled && scaled->target() == 0x03e8);

	// SCRIPT.GRV's exact, case-sensitive cheat unlocks the four hidden rects.
	for (const char ch : std::string_view("Zaphod Beeblebrox"))
	{
		const auto transition = runtime->handleKey(static_cast<uint8_t>(ch));
		assert(transition);
	}
	const auto hidden = runtime->hotspotAt(100, 75, 640, 320);
	assert(hidden && hidden->target() == 0x1aa0 && hidden->cursor() == 7);
	const auto hiddenTarget = runtime->activateAt(100, 75, 640, 320);
	assert(hiddenTarget && *hiddenTarget == 0x1aa0);
	const auto houseMap = runtime->follow(*hiddenTarget);
	assert(houseMap && !houseMap->videos.empty());
	// v32tng does not inject ScummVM's cursor-derived bit-15 pacing hint.
	assert((houseMap->videos.front().flags & (1u << 15)) == 0);

	// The grandfather-clock easter egg emits both song changes in exact
	// presentation order around its three synchronous videos.
	auto clockRuntime = GrvRuntime::load(root / "SCRIPT.GRV", root);
	assert(clockRuntime && clockRuntime->boot());
	const auto clock = clockRuntime->follow(0x0799);
	assert(clock && clock->commands.size() == 5);
	assert(std::get<GrvPlaySongCommand>(clock->commands[0]).ref == 0x4c25);
	assert(std::get<GrvVideoCommand>(clock->commands[1]).ref == 0x1411);
	assert(std::get<GrvVideoCommand>(clock->commands[2]).ref == 0x140f);
	assert(std::get<GrvVideoCommand>(clock->commands[2]).flags == (1u << 5));
	assert(std::get<GrvVideoCommand>(clock->commands[3]).ref == 0x1410);
	assert(std::get<GrvPlaySongCommand>(clock->commands[4]).ref == 0x4c0c);

	// In-game Escape hierarchy: a room's persistent top hotspot enters the
	// SCRIPT.GRV menu, save/name screens cancel to that menu, and Resume restores
	// the exact suspended VM rather than trying to enter the menu a second time.
	auto menuRuntime = GrvRuntime::load(root / "SCRIPT.GRV", root);
	assert(menuRuntime && menuRuntime->boot());
	const auto foyer = menuRuntime->follow(0x03e8);
	assert(foyer && menuRuntime->activeLoop() == 0x04fd);
	const auto gameMenuTarget = menuRuntime->topBarTarget();
	assert(gameMenuTarget);
	const auto gameMenu = menuRuntime->follow(*gameMenuTarget);
	assert(gameMenu && !menuRuntime->inChildScript());
	assert(menuRuntime->activeLoop() == 0x17d4);
	const auto saveSlots = menuRuntime->follow(0x1dbe);
	assert(saveSlots && menuRuntime->activeLoop() == 0x1dce);
	const auto saveName = menuRuntime->follow(0x1e5e);
	assert(saveName && menuRuntime->activeLoop() == 0x1ed3);
	const auto typed = menuRuntime->handleKey('a');
	assert(typed && *typed && menuRuntime->activeLoop() == 0x1ed3);
	const auto cancelSave = menuRuntime->follow(0x17ab);
	assert(cancelSave && menuRuntime->activeLoop() == 0x17d4);
	const auto resume = menuRuntime->follow(0x1c55);
	assert(resume && menuRuntime->activeLoop() == 0x04fd);
}
