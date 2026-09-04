#include "console.h"

#include <algorithm>
#include <atomic>
#include <chrono>
#include <cctype>
#include <deque>
#include <cstdint>
#include <filesystem>
#include <format>
#include <mutex>
#include <ranges>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

#include "assets.h"
#include "game.h"
#include "rl.h"
#include "vdx.h"

namespace
{
constexpr wchar_t kOverlayClass[] = L"v64tngConsoleOverlay";
constexpr UINT kRefreshMessage = WM_APP + 0x64;
constexpr UINT_PTR kBlinkTimer = 0xC064;
constexpr UINT kBlinkMilliseconds = 500;
constexpr size_t kMaximumLogLines = 50000;

struct ConsoleState
{
	HWND owner = nullptr;
	HWND overlay = nullptr;
	HFONT font = nullptr;
	std::mutex linesMutex;
	std::deque<std::string> lines;
	std::vector<std::string> commandHistory;
	std::wstring input;
	size_t historyPosition = 0;
	size_t scrollOffset = 0;
	bool active = false;
	bool overlayVisible = false;
	bool cursorVisible = true;
	bool busy = false;
	std::atomic<bool> refreshPending{false};
	std::chrono::steady_clock::time_point epoch = std::chrono::steady_clock::now();
};

ConsoleState console;

std::string trim(std::string value)
{
	auto whitespace = [](unsigned char ch) { return std::isspace(ch) != 0; };
	while (!value.empty() && whitespace(static_cast<unsigned char>(value.front())))
		value.erase(value.begin());
	while (!value.empty() && whitespace(static_cast<unsigned char>(value.back())))
		value.pop_back();
	return value;
}

std::string upper(std::string value)
{
	std::ranges::transform(value, value.begin(), [](unsigned char ch)
	{
		return static_cast<char>(std::toupper(ch));
	});
	return value;
}

bool safeResourceToken(std::string_view token)
{
	return !token.empty() && std::ranges::all_of(token, [](unsigned char ch)
	{
		return std::isalnum(ch) || ch == '_' || ch == '-';
	});
}

std::wstring widen(std::string_view text)
{
	if (text.empty())
		return {};
	const int count = MultiByteToWideChar(CP_UTF8, 0, text.data(),
		static_cast<int>(text.size()), nullptr, 0);
	if (count <= 0)
		return std::wstring(text.begin(), text.end());
	std::wstring result(static_cast<size_t>(count), L'\0');
	MultiByteToWideChar(CP_UTF8, 0, text.data(), static_cast<int>(text.size()),
		result.data(), count);
	return result;
}

std::string narrow(std::wstring_view text)
{
	if (text.empty())
		return {};
	const int count = WideCharToMultiByte(CP_UTF8, 0, text.data(),
		static_cast<int>(text.size()), nullptr, 0, nullptr, nullptr);
	if (count <= 0)
		return std::string(text.begin(), text.end());
	std::string result(static_cast<size_t>(count), '\0');
	WideCharToMultiByte(CP_UTF8, 0, text.data(), static_cast<int>(text.size()),
		result.data(), count, nullptr, nullptr);
	return result;
}

void requestRefresh()
{
	if (!console.overlay || !console.overlayVisible)
		return;
	if (!console.refreshPending.exchange(true, std::memory_order_acq_rel))
		PostMessage(console.overlay, kRefreshMessage, 0, 0);
}

std::vector<std::wstring> wrappedLogLines(int characterColumns)
{
	std::deque<std::string> source;
	{
		std::lock_guard<std::mutex> lock(console.linesMutex);
		source = console.lines;
	}
	std::vector<std::wstring> result;
	const size_t width = static_cast<size_t>((std::max)(characterColumns, 1));
	for (const auto &line : source)
	{
		const std::wstring wide = widen(line);
		if (wide.empty())
		{
			result.emplace_back();
			continue;
		}
		for (size_t offset = 0; offset < wide.size(); offset += width)
			result.emplace_back(wide.substr(offset, width));
	}
	return result;
}

void renderOverlay()
{
	if (!console.overlay || !console.owner || !console.overlayVisible)
		return;
	RECT client{};
	GetClientRect(console.owner, &client);
	const int width = client.right - client.left;
	const int height = client.bottom - client.top;
	if (width <= 0 || height <= 0)
		return;

	HDC screen = GetDC(nullptr);
	HDC memory = CreateCompatibleDC(screen);
	BITMAPINFO bitmap{};
	bitmap.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
	bitmap.bmiHeader.biWidth = width;
	bitmap.bmiHeader.biHeight = -height;
	bitmap.bmiHeader.biPlanes = 1;
	bitmap.bmiHeader.biBitCount = 32;
	bitmap.bmiHeader.biCompression = BI_RGB;
	void *pixels = nullptr;
	HBITMAP dib = CreateDIBSection(memory, &bitmap, DIB_RGB_COLORS, &pixels, nullptr, 0);
	if (!dib || !pixels)
	{
		if (dib) DeleteObject(dib);
		DeleteDC(memory);
		ReleaseDC(nullptr, screen);
		return;
	}
	const HGDIOBJ oldBitmap = SelectObject(memory, dib);
	const HGDIOBJ oldFont = SelectObject(memory, console.font);
	std::fill_n(static_cast<uint32_t *>(pixels),
		static_cast<size_t>(width) * static_cast<size_t>(height),
		0x80000000u); // 50% black; RGB is already premultiplied.
	SetBkMode(memory, TRANSPARENT);
	SetTextColor(memory, RGB(255, 255, 255));

	TEXTMETRIC metrics{};
	GetTextMetrics(memory, &metrics);
	const int cellWidth = (std::max)(metrics.tmAveCharWidth, 1L);
	const int lineHeight = (std::max)(metrics.tmHeight + metrics.tmExternalLeading, 1L);
	const int padding = 8;
	const int columns = (std::max)((width - padding * 2) / cellWidth, 1);
	const int visibleLogRows = (std::max)((height - padding * 2) / lineHeight - 1, 0);
	const auto lines = wrappedLogLines(columns);
	const size_t maxOffset = lines.size() > static_cast<size_t>(visibleLogRows)
		? lines.size() - static_cast<size_t>(visibleLogRows) : 0;
	console.scrollOffset = (std::min)(console.scrollOffset, maxOffset);
	const size_t end = lines.size() - console.scrollOffset;
	const size_t begin = end > static_cast<size_t>(visibleLogRows)
		? end - static_cast<size_t>(visibleLogRows) : 0;
	int y = padding;
	for (size_t i = begin; i < end; ++i, y += lineHeight)
		TextOutW(memory, padding, y, lines[i].data(), static_cast<int>(lines[i].size()));

	const int inputY = height - padding - lineHeight;
	const std::wstring prompt = L"] " + console.input;
	TextOutW(memory, padding, inputY, prompt.data(), static_cast<int>(prompt.size()));
	if (console.cursorVisible)
	{
		const int cursorX = (std::min)(padding + static_cast<int>(prompt.size()) * cellWidth,
			width - padding - cellWidth);
		RECT cursorRect{cursorX, inputY, cursorX + cellWidth, inputY + metrics.tmHeight};
		FillRect(memory, &cursorRect, static_cast<HBRUSH>(GetStockObject(WHITE_BRUSH)));
	}

	// GDI does not preserve DIB alpha while drawing.  White glyph/cursor pixels
	// are made fully opaque after drawing; untouched black remains 50% alpha.
	auto *bgra = static_cast<uint32_t *>(pixels);
	for (size_t i = 0;
		i < static_cast<size_t>(width) * static_cast<size_t>(height); ++i)
		bgra[i] = (bgra[i] & 0x00ffffffu)
			? (bgra[i] | 0xff000000u) : 0x80000000u;

	POINT destination{};
	ClientToScreen(console.owner, &destination);
	SIZE size{width, height};
	POINT source{};
	BLENDFUNCTION blend{AC_SRC_OVER, 0, 255, AC_SRC_ALPHA};
	UpdateLayeredWindow(console.overlay, screen, &destination, &size, memory,
		&source, 0, &blend, ULW_ALPHA);

	SelectObject(memory, oldFont);
	SelectObject(memory, oldBitmap);
	DeleteObject(dib);
	DeleteDC(memory);
	ReleaseDC(nullptr, screen);
}

void setOverlayVisible(bool visible)
{
	console.overlayVisible = visible && console.active;
	if (!console.overlay)
		return;
	if (console.overlayVisible)
	{
		console.cursorVisible = true;
		syncGameConsoleOverlay();
		ShowWindow(console.overlay, SW_SHOWNOACTIVATE);
		SetWindowPos(console.overlay, HWND_TOP, 0, 0, 0, 0,
			SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE | SWP_SHOWWINDOW);
		requestRefresh();
	}
	else
	{
		ShowWindow(console.overlay, SW_HIDE);
	}
}

std::string cleanRlFilename(std::string value)
{
	if (const auto nul = value.find('\0'); nul != std::string::npos)
		value.resize(nul);
	return value;
}

void commandList(std::string archive)
{
	archive = upper(trim(std::move(archive)));
	if (!safeResourceToken(archive))
	{
		consoleLog("CONSOLE", "usage: list <RL/GJD archive>, for example: list FH");
		return;
	}
	const auto rlPath = assetPath(archive + ".RL");
	const auto entries = parseRLFile(rlPath.string());
	if (!entries)
	{
		consoleLogf("CONSOLE", "list {} failed: {}", archive, entries.error());
		return;
	}
	std::vector<std::string> names;
	for (const auto &entry : *entries)
	{
		const std::string filename = cleanRlFilename(entry.filename);
		const std::string extension = filename.size() >= 4
			? upper(filename.substr(filename.size() - 4)) : std::string{};
		if (extension == ".VDX")
			names.push_back(filename);
	}
	consoleLogf("CONSOLE", "{} contains {} VDX resource(s):", archive, names.size());
	for (const auto &name : names)
		consoleLog("VDX", name);
}

struct ConsolePlaybackSnapshot
{
	bool raycastEnabled = false;
	std::string currentRoom;
	std::string previousRoom;
	std::string currentView;
	std::string previousView;
	size_t currentFrame = 0;
	AnimationState animation;
	AnimationState transientAnimation;
	FrameTiming timing;
	bool foregroundActive = false;
	std::chrono::steady_clock::time_point started;

	ConsolePlaybackSnapshot()
		: raycastEnabled(state.raycast.enabled),
		  currentRoom(state.current_room), previousRoom(state.previous_room),
		  currentView(state.current_view), previousView(state.previous_view),
		  currentFrame(state.currentFrameIndex), animation(state.animation),
		  transientAnimation(state.transient_animation),
		  timing(state.frameTiming), foregroundActive(state.grvForegroundActive),
		  started(std::chrono::steady_clock::now()) {}

	void restore() const
	{
		const auto pausedFor = std::chrono::steady_clock::now() - started;
		state.raycast.enabled = raycastEnabled;
		state.current_room = currentRoom;
		state.previous_room = previousRoom;
		state.current_view = currentView;
		state.previous_view = previousView;
		state.currentFrameIndex = currentFrame;
		state.animation = animation;
		if (state.animation.lastFrameTime.time_since_epoch().count() != 0)
			state.animation.lastFrameTime += pausedFor;
		state.transient_animation = transientAnimation;
		if (state.transient_animation.lastFrameTime.time_since_epoch().count() != 0)
			state.transient_animation.lastFrameTime += pausedFor;
		state.frameTiming = timing;
		state.frameTiming.dirtyFrame = true;
		state.grvForegroundActive = foregroundActive;
	}
};

void commandPlay(std::string resource)
{
	if (state.pcm_playing)
	{
		consoleLog("CONSOLE",
			"play refused while engine PCM is active; wait for it to finish so the saved state remains exact");
		return;
	}
	resource = trim(std::move(resource));
	std::ranges::replace(resource, '\\', '/');
	const auto slash = resource.find('/');
	if (slash == std::string::npos || resource.find('/', slash + 1) != std::string::npos)
	{
		consoleLog("CONSOLE", "usage: play <archive>/<VDX>, for example: play FH/f_1bc");
		return;
	}
	std::string archive = upper(resource.substr(0, slash));
	std::string name = resource.substr(slash + 1);
	if (name.size() > 4 && upper(name.substr(name.size() - 4)) == ".VDX")
		name.resize(name.size() - 4);
	if (!safeResourceToken(archive) || !safeResourceToken(name))
	{
		consoleLog("CONSOLE", "play accepts one archive and one VDX name only");
		return;
	}

	consoleLogf("CONSOLE", "saving engine state; loading {}/{}", archive, name);
	auto loaded = loadSingleVDX(archive, name);
	if (!loaded)
	{
		consoleLogf("CONSOLE", "play {}/{} failed: {}", archive, name, loaded.error());
		return;
	}

	const ConsolePlaybackSnapshot snapshot;
	console.busy = true;
	setOverlayVisible(false);
	state.raycast.enabled = false;
	state.grvForegroundActive = false;
	state.frameTiming.dirtyFrame = true;
	try
	{
		consoleLogf("ENGINE", "console VDX playback begin: {}/{}", archive, name);
		vdxPlayUnskippable(archive + "/" + name + ".VDX", &*loaded);
		consoleLogf("ENGINE", "console VDX playback complete: {}/{}", archive, name);
	}
	catch (const std::exception &error)
	{
		consoleLogf("CONSOLE", "play {}/{} failed during decode: {}", archive, name, error.what());
	}
	snapshot.restore();
	maybeRenderFrame(true);
	console.busy = false;
	console.active = true;
	console.scrollOffset = 0;
	setOverlayVisible(true);
}

void commandHelp()
{
	consoleLog("CONSOLE", "+------------------------------------------------------------+");
	consoleLog("CONSOLE", "|              V64TNG DEBUG CONSOLE HELP                    |");
	consoleLog("CONSOLE", "+------------------------------------------------------------+");
	consoleLog("CONSOLE", "  HELP");
	consoleLog("CONSOLE", "      Show this command reference. Command names ignore case.");
	consoleLog("CONSOLE", "");
	consoleLog("CONSOLE", "  LIST <archive>");
	consoleLog("CONSOLE", "      List VDX resources in an RL/GJD archive.");
	consoleLog("CONSOLE", "      Example: LIST FH");
	consoleLog("CONSOLE", "");
	consoleLog("CONSOLE", "  PLAY <archive>/<vdx>");
	consoleLog("CONSOLE", "      Preview one VDX and restore the current game state.");
	consoleLog("CONSOLE", "      The .VDX suffix is optional.");
	consoleLog("CONSOLE", "      Example: PLAY INTRO/rolmid");
	consoleLog("CONSOLE", "");
	consoleLog("CONSOLE", "  CONSOLE KEYS");
	consoleLog("CONSOLE", "      ~          open/close console");
	consoleLog("CONSOLE", "      Up/Down    command history");
	consoleLog("CONSOLE", "      PgUp/PgDn  scroll output");
	consoleLog("CONSOLE", "      Home/End   oldest/newest output");
	consoleLog("CONSOLE", "+------------------------------------------------------------+");
}

void executeCommand(std::string command)
{
	command = trim(std::move(command));
	if (command.empty())
		return;
	consoleLogf("INPUT", "] {}", command);
	const auto separator = command.find_first_of(" \t");
	const std::string verb = upper(command.substr(0, separator));
	const std::string argument = separator == std::string::npos
		? std::string{} : trim(command.substr(separator + 1));
	if (verb == "HELP")
		commandHelp();
	else if (verb == "LIST")
		commandList(argument);
	else if (verb == "PLAY")
		commandPlay(argument);
	else
		consoleLogf("CONSOLE", "unknown command '{}'; type HELP for commands", command);
}

LRESULT CALLBACK OverlayProc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	switch (message)
	{
	case WM_NCHITTEST:
		return HTTRANSPARENT;
	case WM_TIMER:
		if (wParam == kBlinkTimer && console.overlayVisible)
		{
			console.cursorVisible = !console.cursorVisible;
			renderOverlay();
			return 0;
		}
		break;
	case kRefreshMessage:
		console.refreshPending.store(false, std::memory_order_release);
		renderOverlay();
		return 0;
	case WM_ERASEBKGND:
		return 1;
	default:
		break;
	}
	return DefWindowProc(hwnd, message, wParam, lParam);
}
} // namespace

void initializeGameConsole(HWND owner)
{
	console.owner = owner;
	console.font = static_cast<HFONT>(GetStockObject(SYSTEM_FIXED_FONT));
	WNDCLASSEXW windowClass{};
	windowClass.cbSize = sizeof(windowClass);
	windowClass.lpfnWndProc = OverlayProc;
	windowClass.hInstance = GetModuleHandle(nullptr);
	windowClass.lpszClassName = kOverlayClass;
	windowClass.hCursor = LoadCursor(nullptr, IDC_ARROW);
	RegisterClassExW(&windowClass);
	console.overlay = CreateWindowExW(
		WS_EX_LAYERED | WS_EX_TRANSPARENT | WS_EX_NOACTIVATE | WS_EX_TOOLWINDOW,
		kOverlayClass, L"", WS_POPUP, 0, 0, 1, 1, owner, nullptr,
		GetModuleHandle(nullptr), nullptr);
	if (!console.overlay)
		throw std::runtime_error("Failed to create the in-game console overlay");
	SetTimer(console.overlay, kBlinkTimer, kBlinkMilliseconds, nullptr);
	consoleLog("ENGINE", "v64tng console initialized; press ~ to toggle; type HELP for commands");
}

void shutdownGameConsole()
{
	if (console.overlay)
	{
		KillTimer(console.overlay, kBlinkTimer);
		DestroyWindow(console.overlay);
		console.overlay = nullptr;
	}
	console.owner = nullptr;
}

void syncGameConsoleOverlay()
{
	if (!console.overlay || !console.owner)
		return;
	RECT client{};
	GetClientRect(console.owner, &client);
	POINT point{client.left, client.top};
	ClientToScreen(console.owner, &point);
	SetWindowPos(console.overlay, HWND_TOP, point.x, point.y,
		client.right - client.left, client.bottom - client.top,
		SWP_NOACTIVATE |
			(console.overlayVisible ? static_cast<UINT>(SWP_SHOWWINDOW) : UINT{0}));
	requestRefresh();
}

void toggleGameConsole()
{
	console.active = !console.active;
	console.scrollOffset = 0;
	console.cursorVisible = true;
	setOverlayVisible(console.active);
	consoleLog("INPUT", console.active ? "console opened" : "console closed");
}

void openGameConsole()
{
	console.active = true;
	console.scrollOffset = 0;
	setOverlayVisible(true);
}

bool gameConsoleActive()
{
	return console.active;
}

bool gameConsoleKeyDown(WPARAM key)
{
	if (!console.active)
		return false;
	switch (key)
	{
	case VK_PRIOR:
		console.scrollOffset += 10;
		requestRefresh();
		return true;
	case VK_NEXT:
		console.scrollOffset = console.scrollOffset > 10 ? console.scrollOffset - 10 : 0;
		requestRefresh();
		return true;
	case VK_HOME:
		console.scrollOffset = kMaximumLogLines;
		requestRefresh();
		return true;
	case VK_END:
		console.scrollOffset = 0;
		requestRefresh();
		return true;
	case VK_UP:
		if (!console.commandHistory.empty())
		{
			if (console.historyPosition == 0)
				console.historyPosition = console.commandHistory.size();
			if (console.historyPosition > 0)
				--console.historyPosition;
			console.input = widen(console.commandHistory[console.historyPosition]);
			requestRefresh();
		}
		return true;
	case VK_DOWN:
		if (console.historyPosition < console.commandHistory.size())
			++console.historyPosition;
		console.input = console.historyPosition < console.commandHistory.size()
			? widen(console.commandHistory[console.historyPosition]) : std::wstring{};
		requestRefresh();
		return true;
	default:
		return true; // Consume every gameplay key while the console owns input.
	}
}

bool gameConsoleChar(wchar_t character)
{
	if (!console.active)
		return false;
	if (character == L'`' || character == L'~')
		return true; // WM_KEYDOWN already performed the absolute OEM_3 toggle.
	if (console.busy)
		return true;
	if (character == L'\r')
	{
		const std::string command = narrow(console.input);
		console.input.clear();
		if (!trim(command).empty())
		{
			console.commandHistory.push_back(command);
			console.historyPosition = console.commandHistory.size();
		}
		console.scrollOffset = 0;
		executeCommand(command);
		requestRefresh();
		return true;
	}
	if (character == L'\b')
	{
		if (!console.input.empty())
			console.input.pop_back();
		requestRefresh();
		return true;
	}
	if (character >= L' ' && character != 0x7f)
	{
		console.input.push_back(character);
		console.scrollOffset = 0;
		requestRefresh();
	}
	return true;
}

bool gameConsoleMouseWheel(short delta)
{
	if (!console.active)
		return false;
	if (delta > 0)
		console.scrollOffset += 3;
	else
		console.scrollOffset = console.scrollOffset > 3 ? console.scrollOffset - 3 : 0;
	requestRefresh();
	return true;
}

void consoleLog(std::string_view category, std::string_view message)
{
	const auto elapsed = std::chrono::duration<double>(
		std::chrono::steady_clock::now() - console.epoch).count();
	const std::string prefix = std::format("[{:010.3f}] [{:>8}] ", elapsed, category);
	std::lock_guard<std::mutex> lock(console.linesMutex);
	size_t start = 0;
	do
	{
		const size_t newline = message.find('\n', start);
		console.lines.push_back(prefix + std::string(message.substr(start,
			newline == std::string_view::npos ? message.size() - start : newline - start)));
		if (console.lines.size() > kMaximumLogLines)
			console.lines.pop_front();
		if (newline == std::string_view::npos)
			break;
		start = newline + 1;
	} while (start <= message.size());
	requestRefresh();
}
