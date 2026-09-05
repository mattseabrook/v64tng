// map_overlay.cpp
//
// In-game transparent map overlay for raycaster mode.
//
// Pressing M draws the map directly into the game framebuffer over the live
// raycast view (no window, no focus steal). The overlay is composited each
// frame by renderMapOverlay(), called from renderRaycastView() while
// state.raycast.showMapOverlay is true. The GPU render paths (D3D11/Vulkan
// compute shaders) draw the same overlay themselves from
// state.raycast.showMapOverlay / mapOverlayZoom / exploredMap.
//
// Style: centered top-down CAD-style wall lines with fog of war, zoom
// centered on the player (mouse wheel adjusts mapOverlayZoom).

#include <cstdio>
#include <cmath>
#include <algorithm>

#include "map_overlay.h"
#include "window.h"
#include "game.h"
#include "config.h"
#include "basement.h"

// Legacy globals kept for ABI compatibility with existing call sites.
// g_hwndMapOverlay is no longer used (no separate window is created).
HWND g_hwndMapOverlay = nullptr;
bool g_mapOverlayVisible = false;

namespace
{

// Tile classification (mirrors raycast.cpp): 0xF0-0xF3 are player-start
// markers (walkable), everything else >= 0x01 is solid.
inline bool isSolidOverlayTile(uint8_t tile)
{
	return tile >= 0x01 && !(tile >= 0xF0 && tile <= 0xF3);
}

} // namespace

//
// Draw the map into the framebuffer over the raycast view.
// CAD-style lines + fog of war + zoom centered on player.
//
void renderMapOverlay(uint8_t *fb, size_t pitch, int w, int h)
{
	if (!state.raycast.showMapOverlay || !fb)
		return;
	if (!state.raycast.map || state.raycast.map->empty())
		return;

	const TileMap &m = *state.raycast.map;
	const RaycastPlayer &p = state.raycast.player;
	const int mapW = static_cast<int>(m[0].size());
	const int mapH = static_cast<int>(m.size());
	const auto &explored = state.raycast.exploredMap;
	const float zoom = state.raycast.mapOverlayZoom;

	float fovMul = 1.0f;
	if (config.contains("raycastFovMul") && config["raycastFovMul"].is_number())
		fovMul = config["raycastFovMul"].get<float>();

	const float maxDim = static_cast<float>(std::max(mapW, mapH));
	float baseCellSize = (std::min(static_cast<float>(w), static_cast<float>(h)) * 0.70f) / maxDim;
	float cellSize = baseCellSize * zoom;
	cellSize = std::max(cellSize, 2.0f);

	// Center on player
	const float centerX = w * 0.5f;
	const float centerY = h * 0.5f;
	const float ox = centerX - p.x * cellSize;
	const float oy = centerY - p.y * cellSize;

	const float plyrPx = centerX;
	const float plyrPy = centerY;
	const float playerRadius = cellSize * 0.35f;

	const float halfFovTan = std::tan(p.fov * 0.5f * fovMul);
	const float fovHalf = std::atan(halfFovTan);

	auto pointToSegDist = [](float px2, float py2, float ax, float ay, float bx, float by) -> float {
		float abx = bx - ax, aby = by - ay;
		float dotv = abx * abx + aby * aby;
		if (dotv < 1e-6f) return std::sqrt((px2 - ax) * (px2 - ax) + (py2 - ay) * (py2 - ay));
		float t = std::clamp(((px2 - ax) * abx + (py2 - ay) * aby) / dotv, 0.0f, 1.0f);
		float cx2 = ax + t * abx, cy2 = ay + t * aby;
		return std::sqrt((px2 - cx2) * (px2 - cx2) + (py2 - cy2) * (py2 - cy2));
	};

	auto angleDiff = [](float a, float b) -> float {
		float d = a - b;
		while (d > 3.14159265f) d -= 6.28318531f;
		while (d < -3.14159265f) d += 6.28318531f;
		return d;
	};
	const float overlayRange = std::max(8.0f, std::min(maxDim, 24.0f));

	auto isExplored = [&](int ex, int ey) -> bool {
		if (ex < 0 || ey < 0 || ex >= mapW || ey >= mapH) return false;
		size_t ei = static_cast<size_t>(ey) * static_cast<size_t>(mapW) + static_cast<size_t>(ex);
		return ei < explored.size() && explored[ei] != 0;
	};
	auto isSolid = [&](int sx, int sy) -> bool {
		if (sx < 0 || sy < 0 || sx >= mapW || sy >= mapH) return true;
		uint8_t t = m[static_cast<size_t>(sy)][static_cast<size_t>(sx)];
		return isSolidOverlayTile(t);
	};
	auto isExploredOpen = [&](int tx, int ty) -> bool {
		if (tx < 0 || ty < 0 || tx >= mapW || ty >= mapH)
			return false;
		return isExplored(tx, ty) && !isSolid(tx, ty);
	};

	for (int y = 0; y < h; ++y)
	{
		for (int x = 0; x < w; ++x)
		{
			size_t idx = static_cast<size_t>(y) * pitch + static_cast<size_t>(x) * 4;
			// Darken scene
			fb[idx]     = static_cast<uint8_t>(fb[idx] * 0.70f);
			fb[idx + 1] = static_cast<uint8_t>(fb[idx + 1] * 0.70f);
			fb[idx + 2] = static_cast<uint8_t>(fb[idx + 2] * 0.70f);

			float r = fb[idx + 2], g2 = fb[idx + 1], bv = fb[idx];

			// Player dot
			float dx2 = static_cast<float>(x) - plyrPx;
			float dy2 = static_cast<float>(y) - plyrPy;
			float distP = std::sqrt(dx2 * dx2 + dy2 * dy2);
			if (distP < playerRadius)
			{
				float t = (1.0f - distP / playerRadius) * 0.9f;
				r = r * (1.0f - t) + 255.0f * t;
				g2 = g2 * (1.0f - t) + 64.0f * t;
				bv = bv * (1.0f - t) + 64.0f * t;
				fb[idx] = static_cast<uint8_t>(bv); fb[idx + 1] = static_cast<uint8_t>(g2); fb[idx + 2] = static_cast<uint8_t>(r);
				continue;
			}

			// Keep the overlay O(screen pixels). Fog-of-war already carries the
			// wall visibility result, so casting another DDA ray per overlay
			// pixel only repeats work and makes CPU map mode map-depth times slower.
			{
				const float worldX = (static_cast<float>(x) - ox) / cellSize;
				const float worldY = (static_cast<float>(y) - oy) / cellSize;
				const float vx = worldX - p.x;
				const float vy = worldY - p.y;
				const float targetDist = std::sqrt(vx * vx + vy * vy);
				if (targetDist > 0.001f && targetDist <= overlayRange)
				{
					const float ang = std::atan2(vy, vx);
					if (std::abs(angleDiff(ang, p.angle)) <= fovHalf)
					{
						const float fadeStart = overlayRange * 0.65f;
						const float fadeT = std::clamp((targetDist - fadeStart) /
													   std::max(overlayRange - fadeStart, 0.001f),
													   0.0f, 1.0f);
						const float smooth = fadeT * fadeT * (3.0f - 2.0f * fadeT);
						const float t = 0.22f * (1.0f - smooth);
						r = r * (1.0f - t) + 255.0f * t;
						g2 = g2 * (1.0f - t) + 51.0f * t;
						bv = bv * (1.0f - t) + 51.0f * t;
					}
				}
			}

			// Map to world cell coords
			float wpx = (static_cast<float>(x) - ox) / cellSize;
			float wpy = (static_cast<float>(y) - oy) / cellSize;
			int cx = static_cast<int>(std::floor(wpx));
			int cy = static_cast<int>(std::floor(wpy));

			if (cx < 0 || cy < 0 || cx >= mapW || cy >= mapH)
			{
				fb[idx] = static_cast<uint8_t>(std::clamp(bv, 0.0f, 255.0f));
				fb[idx + 1] = static_cast<uint8_t>(std::clamp(g2, 0.0f, 255.0f));
				fb[idx + 2] = static_cast<uint8_t>(std::clamp(r, 0.0f, 255.0f));
				continue;
			}

			bool cellExplored = isExplored(cx, cy);
			bool solid = isSolid(cx, cy);

			// Fog of war: skip unexplored cells, UNLESS they are solid and touch an explored cell (to bridge corners)
			if (!cellExplored)
			{
				if (!solid)
				{
					fb[idx] = static_cast<uint8_t>(std::clamp(bv, 0.0f, 255.0f));
					fb[idx + 1] = static_cast<uint8_t>(std::clamp(g2, 0.0f, 255.0f));
					fb[idx + 2] = static_cast<uint8_t>(std::clamp(r, 0.0f, 255.0f));
					continue;
				}

				bool nExp = false;
				for (int dy = -1; dy <= 1; ++dy)
				{
					for (int dx = -1; dx <= 1; ++dx)
					{
						if ((dx != 0 || dy != 0) && isExploredOpen(cx + dx, cy + dy))
							nExp = true;
					}
				}
				if (!nExp)
				{
					fb[idx] = static_cast<uint8_t>(std::clamp(bv, 0.0f, 255.0f));
					fb[idx + 1] = static_cast<uint8_t>(std::clamp(g2, 0.0f, 255.0f));
					fb[idx + 2] = static_cast<uint8_t>(std::clamp(r, 0.0f, 255.0f));
					continue;
				}
			}

			// Robust center-stroke wall rendering using distance-to-segment tests.
			// This avoids corner dropouts when cell centers fall between pixels.
			bool drawLine = false;

			if (solid)
			{
				const float cfx = ox + (static_cast<float>(cx) + 0.5f) * cellSize;
				const float cfy = oy + (static_cast<float>(cy) + 0.5f) * cellSize;
				const float half = cellSize * 0.5f;
				const float px2 = static_cast<float>(x) + 0.5f;
				const float py2 = static_cast<float>(y) + 0.5f;
				const float lineHalfW = 0.82f;

				bool nConn = (cy > 0) && isSolid(cx, cy - 1);
				bool sConn = (cy < mapH - 1) && isSolid(cx, cy + 1);
				bool wConn = (cx > 0) && isSolid(cx - 1, cy);
				bool eConn = (cx < mapW - 1) && isSolid(cx + 1, cy);

				bool nVisible = isExploredOpen(cx - 1, cy) || isExploredOpen(cx - 1, cy - 1) ||
								isExploredOpen(cx + 1, cy) || isExploredOpen(cx + 1, cy - 1);
				bool sVisible = isExploredOpen(cx - 1, cy) || isExploredOpen(cx - 1, cy + 1) ||
								isExploredOpen(cx + 1, cy) || isExploredOpen(cx + 1, cy + 1);
				bool wVisible = isExploredOpen(cx, cy - 1) || isExploredOpen(cx - 1, cy - 1) ||
								isExploredOpen(cx, cy + 1) || isExploredOpen(cx - 1, cy + 1);
				bool eVisible = isExploredOpen(cx, cy - 1) || isExploredOpen(cx + 1, cy - 1) ||
								isExploredOpen(cx, cy + 1) || isExploredOpen(cx + 1, cy + 1);

				if (nConn && nVisible && pointToSegDist(px2, py2, cfx, cfy, cfx, cfy - half) <= lineHalfW) drawLine = true;
				if (sConn && sVisible && pointToSegDist(px2, py2, cfx, cfy, cfx, cfy + half) <= lineHalfW) drawLine = true;
				if (wConn && wVisible && pointToSegDist(px2, py2, cfx, cfy, cfx - half, cfy) <= lineHalfW) drawLine = true;
				if (eConn && eVisible && pointToSegDist(px2, py2, cfx, cfy, cfx + half, cfy) <= lineHalfW) drawLine = true;

				if (!nConn && !sConn && !wConn && !eConn)
				{
					const float dcx = px2 - cfx;
					const float dcy = py2 - cfy;
					const bool isolatedVisible = isExploredOpen(cx - 1, cy) || isExploredOpen(cx + 1, cy) ||
												 isExploredOpen(cx, cy - 1) || isExploredOpen(cx, cy + 1);
					if (isolatedVisible && std::sqrt(dcx * dcx + dcy * dcy) <= lineHalfW)
						drawLine = true;
				}
			}

			if (drawLine)
			{
				// CAD blue-white line
				float t = 0.85f;
				r = r * (1.0f - t) + 153.0f * t;   // 0.6 * 255
				g2 = g2 * (1.0f - t) + 191.0f * t; // 0.75 * 255
				bv = bv * (1.0f - t) + 230.0f * t; // 0.9 * 255
			}

			fb[idx] = static_cast<uint8_t>(std::clamp(bv, 0.0f, 255.0f));
			fb[idx + 1] = static_cast<uint8_t>(std::clamp(g2, 0.0f, 255.0f));
			fb[idx + 2] = static_cast<uint8_t>(std::clamp(r, 0.0f, 255.0f));
		}
	}
}

//
// Toggle/show the overlay (no window is created).
//
void OpenMapOverlay(HWND /*parent*/)
{
	g_mapOverlayVisible = true;
	state.raycast.showMapOverlay = true;
	state.frameTiming.dirtyFrame = true;
}

void CloseMapOverlay()
{
	g_mapOverlayVisible = false;
	state.raycast.showMapOverlay = false;
	state.frameTiming.dirtyFrame = true;
}
