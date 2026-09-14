// Headless command-order regression; the Python retail-fade verifier builds this
// against src/grv_runtime.cpp with only the Windows console logger stubbed.
#include "../include/grv_runtime.h"
#include <cassert>
#include <fstream>

int main(int argc, char **argv)
{
    assert(argc == 2);
    const std::filesystem::path path = std::filesystem::path(argv[1]) / "fade.grv";
    const unsigned char script[] = {
        0x02, 0x01, 0x00, // PLAYSONG
        0x04,             // PALFADEOUT
        0x03,             // arm first-still fade
        0x09, 0x34, 0x12, // VIDEOREF
        0x22,             // COPY_BG_TO_FG
        0x84,             // PALFADEOUT with high bit (no operand)
        0x09, 0x35, 0x12, // next VIDEOREF must not inherit fade-in
        0x0b,             // stop at input loop
        0x04, 0x2a        // separate transition: fade then ENDSCRIPT
    };
    std::ofstream file(path, std::ios::binary);
    file.write(reinterpret_cast<const char *>(script), sizeof(script));
    file.close();
    auto runtime = GrvRuntime::load(path, path.parent_path());
    assert(runtime);
    auto boot = runtime->boot();
    assert(boot);
    const auto &commands = boot->transition.commands;
    assert(commands.size() == 6);
    assert(std::holds_alternative<GrvPlaySongCommand>(commands[0]));
    assert(std::holds_alternative<GrvPaletteFadeOutCommand>(commands[1]));
    assert(std::get<GrvVideoCommand>(commands[2]).flags == 0x200);
    assert(std::holds_alternative<GrvCopyBackgroundCommand>(commands[3]));
    assert(std::holds_alternative<GrvPaletteFadeOutCommand>(commands[4]));
    assert(std::get<GrvVideoCommand>(commands[5]).flags == 0);
    assert(boot->transition.videos.size() == 2);
    for (int repeat = 0; repeat < 2; ++repeat) {
        auto end = runtime->follow(14);
        assert(end && end->ended && end->videos.empty());
        assert(end->commands.size() == 1);
        assert(std::holds_alternative<GrvPaletteFadeOutCommand>(end->commands.front()));
    }
}
