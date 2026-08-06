#include "grv.h"

#include <algorithm>
#include <cctype>
#include <filesystem>
#include <iostream>

int main(int argc, char** argv)
{
    if (argc < 2 || argc > 3) {
        std::cerr << "usage: grv_roundtrip <T7G asset directory> [script name]\n";
        return 2;
    }

    const std::filesystem::path root = argv[1];
    const auto names = loadGrvResourceNames(root);
    size_t checked = 0;
    for (const auto& entry : std::filesystem::directory_iterator(root)) {
        if (!entry.is_regular_file())
            continue;
        std::string extension = entry.path().extension().string();
        std::ranges::transform(extension, extension.begin(),
            [](unsigned char ch) { return static_cast<char>(std::tolower(ch)); });
        if (extension != ".grv")
            continue;
        if (argc == 3 && entry.path().filename().string() != argv[2])
            continue;

        try {
            const auto program = decodeGrv(entry.path(), names);
            const auto rebuilt = rebuildGrvAssembly(decompileGrv(program));
            if (rebuilt != program.bytes) {
                std::cerr << entry.path().filename().string()
                          << ": native round-trip mismatch\n";
                return 1;
            }
            size_t hotspots = 0;
            size_t sceneCandidates = 0;
            for (const auto& loop : program.inputLoops)
            {
                hotspots += loop.hotspots.size();
                sceneCandidates += loop.videoCandidates.size();
            }
            std::cout << entry.path().filename().string() << ": "
                      << program.bytes.size() << " bytes, "
                      << program.instructions.size() << " instructions, "
                      << program.inputLoops.size() << " input loops, "
                      << hotspots << " effective hotspots, "
                      << sceneCandidates << " scene candidates — identical\n";
            if (argc == 3) {
                for (const auto& loop : program.inputLoops) {
                    std::cout << "  loop 0x" << std::hex << loop.start << std::dec << ':';
                    for (const auto& candidate : loop.videoCandidates) {
                        std::cout << " 0x" << std::hex << candidate.instructionOffset
                                  << std::dec;
                    }
                    std::cout << '\n';
                }
            }
            ++checked;
        } catch (const std::exception& error) {
            std::cerr << entry.path().filename().string() << ": " << error.what() << '\n';
            return 1;
        }
    }

    std::cout << "Checked " << checked << " GRV files: all byte-identical.\n";
    return checked == 0 ? 1 : 0;
}
