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

	// The retail new-game branch itself reaches the first foyer loop.
	auto game = GrvRuntime::load(root / "SCRIPT.GRV", root);
	assert(game && game->boot());
	const auto foyer = game->follow(0x03e8);
	assert(foyer && game->activeLoop() == 0x04fd);
	assert(!game->hotspotAt(500, 0, 640, 320));
	const auto foyerLeftDoor = game->hotspotAt(20, 220, 640, 320);
	assert(foyerLeftDoor && foyerLeftDoor->target() == 0x0551);
	const auto turnLeft = game->hotspotAt(575, 160, 640, 320);
	assert(turnLeft && turnLeft->target() == 0x0695);
}
