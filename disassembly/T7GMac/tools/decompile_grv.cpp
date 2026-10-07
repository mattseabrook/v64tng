#include "grv.h"
#include <algorithm>
#include <cctype>
#include <iostream>
#include <vector>

int main(int argc, char** argv)
{
    if (argc != 2) {
        std::cerr << "Usage: t7gmac-grv EXTRACTED_RESOURCE_DIRECTORY\n";
        return 1;
    }
    try {
        const auto names = loadGrvResourceNames(argv[1]);
        std::vector<std::filesystem::path> scripts;
        for (const auto& entry : std::filesystem::directory_iterator(argv[1])) {
            if (!entry.is_regular_file()) continue;
            auto extension = entry.path().extension().string();
            std::transform(extension.begin(), extension.end(), extension.begin(),
                           [](unsigned char c) { return static_cast<char>(std::toupper(c)); });
            if (extension == ".GRV") scripts.push_back(entry.path());
        }
        std::sort(scripts.begin(), scripts.end());
        bool failed = false;
        for (const auto& path : scripts) {
            try {
                const auto program = decodeGrv(path, names);
                auto output = path;
                output += ".asm";
                saveGrvAssembly(program, output);
                std::cout << path.filename().string() << ' ' << program.instructions.size() << " instructions\n";
            } catch (const std::exception& error) {
                std::cerr << path.filename().string() << " unresolved: " << error.what() << '\n';
                failed = true;
            }
        }
        return failed ? 1 : 0;
    } catch (const std::exception& error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
