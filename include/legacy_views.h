#ifndef LEGACY_VIEWS_H
#define LEGACY_VIEWS_H

#include <cstdint>
#include <functional>
#include <string>
#include <vector>

#include "cursor.h"

// Historical v64tng V1 authoring model. FH.H and DR.H retain these tables as
// reverse-engineering notes, but the engine no longer compiles or queries them;
// live pointer input comes directly from SCRIPT.GRV.
struct ClickArea
{
	float x;
	float y;
	float width;
	float height;
	uint8_t cursorType = CURSOR_FORWARD;
	int z_index = 0;
};

struct Hotspot
{
	ClickArea area;
	std::function<void()> action;
};

struct Navigation
{
	ClickArea area;
	std::string next_view;
};

struct View
{
	std::vector<Hotspot> hotspots;
	std::vector<Navigation> navigations;
};

struct ViewGroup
{
	std::vector<const char *> names;
	View data;
};

#endif // LEGACY_VIEWS_H
