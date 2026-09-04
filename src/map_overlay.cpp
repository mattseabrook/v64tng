// map_overlay.cpp
//
// In-game transparent map overlay for raycaster mode.
//
// Codex rolled this back to a separate Win32 window. This restores the
// original behavior: pressing M draws the map directly into the game
// framebuffer over the live raycast view (no window, no focus steal). The
// overlay is composited each frame by renderMapOverlay(), called from
// renderRaycastView() while g_mapOverlayVisible is true.

#include <cstdio>
#include <cmath>
#include <algorithm>

#include "map_overlay.h"
#include "window.h"
#include "basement.h"

// Legacy globals kept for ABI compatibility with existing call sites.
// g_hwndMapOverlay is no longer used (no separate window is created).
HWND g_hwndMapOverlay = nullptr;
bool g_mapOverlayVisible = false;

namespace
{

// Overlay styling
constexpr int kCellPx = 9;          // screen pixels per map cell
constexpr int kPadPx = 10;          // panel padding
constexpr uint8_t kPanelAlpha = 150; // translucent dark panel
constexpr uint8_t kWallR = 200, kWallG = 180, kWallB = 120;
constexpr uint8_t kFloorR = 30, kFloorG = 30, kFloorB = 34;
constexpr uint8_t kPlayerR = 80, kPlayerG = 220, kPlayerB = 255;

inline void blendPx(uint8_t *fb, size_t pitch, int w, int h,
	int px, int py, uint8_t r, uint8_t g, uint8_t b, uint8_t a)
{
	if (px < 0 || py < 0 || px >= w || py >= h)
		return;
	uint8_t *p = fb + static_cast<size_t>(py) * pitch + static_cast<size_t>(px) * 4u;
	const float af = a / 255.0f;
	p[0] = static_cast<uint8_t>(b * af + p[0] * (1.0f - af)); // B
	p[1] = static_cast<uint8_t>(g * af + p[1] * (1.0f - af)); // G
	p[2] = static_cast<uint8_t>(r * af + p[2] * (1.0f - af)); // R
	p[3] = 255;
}

} // namespace

//
// Draw the map into the framebuffer over the raycast view.
//
void renderMapOverlay(uint8_t *fb, size_t pitch, int w, int h)
{
	if (!g_mapOverlayVisible || !fb)
		return;
	const TileMap *map = state.raycast.map;
	if (!map || map->empty())
		return;

	const int mapW = static_cast<int>(map->at(0).size());
	const int mapH = static_cast<int>(map->size());
	const int panelW = mapW * kCellPx + kPadPx * 2;
	const int panelH = mapH * kCellPx + kPadPx * 2;
	// Top-right anchored panel.
	const int ox = std::max(0, w - panelW - 16);
	const int oy = 16;

	// Translucent backing panel.
	for (int y = 0; y < panelH; ++y)
		for (int x = 0; x < panelW; ++x)
			blendPx(fb, pitch, w, h, ox + x, oy + y, 12, 12, 16, kPanelAlpha);

	const int px = int(state.raycast.player.x + 0.5f);
	const int py = int(state.raycast.player.y + 0.5f);

	for (int my = 0; my < mapH; ++my)
	{
		for (int mx = 0; mx < mapW; ++mx)
		{
			const bool wall = (*map)[my][mx] != 0;
			const uint8_t r = wall ? kWallR : kFloorR;
			const uint8_t g = wall ? kWallG : kFloorG;
			const uint8_t b = wall ? kWallB : kFloorB;
			const int cx = ox + kPadPx + mx * kCellPx;
			const int cy = oy + kPadPx + my * kCellPx;
			for (int yy = 0; yy < kCellPx - 1; ++yy)
				for (int xx = 0; xx < kCellPx - 1; ++xx)
					blendPx(fb, pitch, w, h, cx + xx, cy + yy, r, g, b, 235);
		}
	}

	// Player marker (bright square).
	const int pcx = ox + kPadPx + px * kCellPx;
	const int pcy = oy + kPadPx + py * kCellPx;
	for (int yy = 0; yy < kCellPx - 1; ++yy)
		for (int xx = 0; xx < kCellPx - 1; ++xx)
			blendPx(fb, pitch, w, h, pcx + xx, pcy + yy, kPlayerR, kPlayerG, kPlayerB, 255);
}

//
// Toggle/show the overlay (no window is created).
//
void OpenMapOverlay(HWND /*parent*/)
{
	g_mapOverlayVisible = true;
	state.frameTiming.dirtyFrame = true;
}

void CloseMapOverlay()
{
	g_mapOverlayVisible = false;
	state.frameTiming.dirtyFrame = true;
}
