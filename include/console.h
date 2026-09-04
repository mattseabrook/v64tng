#ifndef V64TNG_CONSOLE_H
#define V64TNG_CONSOLE_H

#include <format>
#include <string_view>
#include <utility>

#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>

// Renderer-independent in-game console.  The console is an owned, per-pixel
// alpha Win32 overlay, so the exact same implementation sits above both the
// Direct3D and Vulkan swap chains without either renderer owning text state.
void initializeGameConsole(HWND owner);
void shutdownGameConsole();
void syncGameConsoleOverlay();
void toggleGameConsole();
void openGameConsole();
bool gameConsoleActive();

bool gameConsoleKeyDown(WPARAM key);
bool gameConsoleChar(wchar_t character);
bool gameConsoleMouseWheel(short delta);

void consoleLog(std::string_view category, std::string_view message);

template <typename... Args>
void consoleLogf(
	std::string_view category,
	std::format_string<Args...> format,
	Args &&...args)
{
	consoleLog(category, std::format(format, std::forward<Args>(args)...));
}

#endif // V64TNG_CONSOLE_H
