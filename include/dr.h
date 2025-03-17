// dr.h

#ifndef DR_H
#define DR_H

#include <unordered_map>

#include "game.h"

/*
===============================================================================

	7th Guest - DINING_ROOM

	This header file manages the views, navigation, and hotspots within
	the Dining Room section of the game.

===============================================================================
*/

/*

View Identifier Table

// Cake Puzzle Pieces

2025-03-01  03:26 PM            39,991 dr00cf.vdx
2025-03-01  03:26 PM             7,275 dr00db.vdx
2025-03-01  03:26 PM             7,348 dr00df.vdx
2025-03-01  03:26 PM            60,257 dr01cf.vdx
2025-03-01  03:26 PM             8,467 dr01db.vdx
2025-03-01  03:26 PM             8,504 dr01df.vdx
2025-03-01  03:26 PM            86,836 dr02cf.vdx
2025-03-01  03:26 PM             9,580 dr02db.vdx
2025-03-01  03:26 PM             9,740 dr02df.vdx
2025-03-01  03:26 PM           110,853 dr03cf.vdx
2025-03-01  03:26 PM            13,263 dr03db.vdx
2025-03-01  03:26 PM            13,411 dr03df.vdx
2025-03-01  03:26 PM           106,707 dr04cf.vdx
2025-03-01  03:26 PM            16,391 dr04db.vdx
2025-03-01  03:26 PM            16,584 dr04df.vdx
2025-03-01  03:26 PM            28,593 dr05cf.vdx
2025-03-01  03:26 PM             7,194 dr05db.vdx
2025-03-01  03:26 PM             7,170 dr05df.vdx
2025-03-01  03:26 PM            53,424 dr06cf.vdx
2025-03-01  03:26 PM             8,318 dr06db.vdx
2025-03-01  03:26 PM             8,402 dr06df.vdx
2025-03-01  03:26 PM            78,125 dr07cf.vdx
2025-03-01  03:26 PM             9,161 dr07db.vdx
2025-03-01  03:26 PM             9,185 dr07df.vdx
2025-03-01  03:26 PM           126,653 dr08cf.vdx
2025-03-01  03:26 PM            11,677 dr08db.vdx
2025-03-01  03:26 PM            11,810 dr08df.vdx
2025-03-01  03:26 PM           185,351 dr09cf.vdx
2025-03-01  03:26 PM            15,017 dr09db.vdx
2025-03-01  03:26 PM            15,343 dr09df.vdx
2025-03-01  03:26 PM            23,857 dr10cf.vdx
2025-03-01  03:26 PM             6,484 dr10db.vdx
2025-03-01  03:26 PM             6,444 dr10df.vdx
2025-03-01  03:26 PM            44,012 dr11cf.vdx
2025-03-01  03:26 PM             7,022 dr11db.vdx
2025-03-01  03:26 PM             7,093 dr11df.vdx
2025-03-01  03:26 PM            56,773 dr12cf.vdx
2025-03-01  03:26 PM             7,507 dr12db.vdx
2025-03-01  03:26 PM             7,523 dr12df.vdx
2025-03-01  03:26 PM           116,603 dr13cf.vdx
2025-03-01  03:26 PM            10,558 dr13db.vdx
2025-03-01  03:26 PM            10,682 dr13df.vdx
2025-03-01  03:26 PM           229,743 dr14cf.vdx
2025-03-01  03:26 PM            13,803 dr14db.vdx
2025-03-01  03:26 PM            14,057 dr14df.vdx
2025-03-01  03:26 PM            21,711 dr15cf.vdx
2025-03-01  03:26 PM             6,125 dr15db.vdx
2025-03-01  03:26 PM             6,102 dr15df.vdx
2025-03-01  03:26 PM            34,749 dr16cf.vdx
2025-03-01  03:26 PM             7,004 dr16db.vdx
2025-03-01  03:26 PM             6,988 dr16df.vdx
2025-03-01  03:26 PM            54,099 dr17cf.vdx
2025-03-01  03:26 PM             7,211 dr17db.vdx
2025-03-01  03:26 PM             7,226 dr17df.vdx
2025-03-01  03:26 PM            83,590 dr18cf.vdx
2025-03-01  03:26 PM             8,604 dr18db.vdx
2025-03-01  03:26 PM             8,712 dr18df.vdx
2025-03-01  03:26 PM           219,411 dr19cf.vdx
2025-03-01  03:26 PM            11,256 dr19db.vdx
2025-03-01  03:26 PM            11,443 dr19df.vdx
2025-03-01  03:26 PM            20,891 dr20cf.vdx
2025-03-01  03:26 PM             6,205 dr20db.vdx
2025-03-01  03:26 PM             6,200 dr20df.vdx
2025-03-01  03:26 PM            39,360 dr21cf.vdx
2025-03-01  03:26 PM             6,620 dr21db.vdx
2025-03-01  03:26 PM             6,608 dr21df.vdx
2025-03-01  03:26 PM            58,427 dr22cf.vdx
2025-03-01  03:26 PM             8,536 dr22db.vdx
2025-03-01  03:26 PM             8,561 dr22df.vdx
2025-03-01  03:26 PM           103,103 dr23cf.vdx
2025-03-01  03:26 PM            10,541 dr23db.vdx
2025-03-01  03:26 PM            10,704 dr23df.vdx
2025-03-01  03:26 PM           232,978 dr24cf.vdx
2025-03-01  03:26 PM            13,177 dr24db.vdx
2025-03-01  03:26 PM            13,335 dr24df.vdx
2025-03-01  03:26 PM            24,887 dr25cf.vdx
2025-03-01  03:26 PM             6,228 dr25db.vdx
2025-03-01  03:26 PM             6,285 dr25df.vdx
2025-03-01  03:26 PM            44,471 dr26cf.vdx
2025-03-01  03:26 PM             7,184 dr26db.vdx
2025-03-01  03:26 PM             7,242 dr26df.vdx
2025-03-01  03:26 PM            58,573 dr27cf.vdx
2025-03-01  03:26 PM             8,160 dr27db.vdx
2025-03-01  03:26 PM             8,239 dr27df.vdx
2025-03-01  03:26 PM           108,675 dr28cf.vdx
2025-03-01  03:26 PM            11,105 dr28db.vdx
2025-03-01  03:26 PM            11,180 dr28df.vdx
2025-03-01  03:26 PM           185,180 dr29cf.vdx
2025-03-01  03:26 PM            14,117 dr29db.vdx
2025-03-01  03:26 PM            14,434 dr29df.vdx
dr_v.vdx		// Start the cake puzzle
dr_vb.vdx		// Cake Puzzle - end

dr1_0.vdx		// Movie
dr2.vdx			// Empty black screen?
dr2_.vdx		// Edward and Martine dialog
dr_tray.vdx		// End of Cake Puzzle / Empty Tray / Possibly used in conjunction with the blue alpha channel
come.vdx		// Looks like screen right before the Cake Puzzle zoom-in view

dr_mtb.vdx		// Looks to be unused!
*/

/*

Prefix map for Dining Room assets

*/
const std::unordered_map<std::string, View> diningRoom = {
	////////////////////////////////////////////////////////////////////////
	// Dining Room Navigation animations
	////////////////////////////////////////////////////////////////////////

	//
	// Moving towards the table
	//
	{
		"dr_mi",
		{
			{	// Hotspots
				{15.0f, 65.0f, 80.0f, 15.0f, []() {							// Cutlery Animation
					playTransientAnimation("dr_r");
					xmiPlay("gu5", true);
				}
				},

			},
			{	// Navigation
				{"dr_mtf,dr_mo", {90.0f, 0.0f, 10.0f, 100.0f}}				// Right
			}
		}
	},
	//
	// Moving towards the door
	//
	{
		"dr_mo",
		{
			{},
			{	// Navigation
				{"dr_tbc", {0.0f, 0.0f, 10.0f, 100.0f}},					// Left
				{"dr_d,FH:f_2bd;static", {25.0f, 0.0f, 50.0f, 100.0f}},		// Forward
				{"dr_tfa", {90.0f, 0.0f, 10.0f, 100.0f}}					// Right
			}
		}
	},
	//
	// Table, turning right
	//
	{
		"dr_mtf",
		{
			{},
			{}
		}
	},
	//
	// Turning left back towards the door
	//
	{
		"dr_tba",
		{
			{},
			{	// Navigation
				{"dr_tbc", {0.0f, 0.0f, 10.0f, 100.0f}},					// Left
				{"dr_d,FH:f_2bd;static", {25.0f, 0.0f, 50.0f, 100.0f}},		// Forward
				{"dr_tfa", {90.0f, 0.0f, 10.0f, 100.0f}}					// Right
			}
		}
	},
	//
	// Door, turning left
	//
	{
		"dr_tbc",
		{
			{},
			{	// Navigation
				{"dr_tba", {0.0f, 0.0f, 10.0f, 100.0f}},					// Left
				{"dr_mi", {33.0f, 0.0f, 33.0f, 100.0f}},					// Forward
				{"dr_tfc", {90.0f, 0.0f, 10.0f, 100.0f}}					// Right
			}
		}
	},
	//
	// Door, turning right
	//
	{
		"dr_tfa",
		{
			{},
			{	// Navigation
				{"dr_tbc", {0.0f, 0.0f, 10.0f, 100.0f}},					// Left
				{"dr_mi", {25.0f, 0.0f, 50.0f, 100.0f}},					// Forward
				{"dr_tfc", {90.0f, 0.0f, 10.0f, 100.0f}}					// Right
			}
		}
	},
	//
	// Turning right back towards the door
	//
	{
		"dr_tfc",
		{
			{},
			{	// Navigation
				{"dr_tbc", {0.0f, 0.0f, 10.0f, 100.0f}},					// Left
				{"dr_d,FH:f_2bd;static", {25.0f, 0.0f, 50.0f, 100.0f}},		// Forward
				{"dr_tfa", {90.0f, 0.0f, 10.0f, 100.0f}}					// Right
			}
		}
	},

	////////////////////////////////////////////////////////////////////////

	//
	// Dining Room  -> Foyer (F2)
	//
	{
		"dr_d",
		{
			{},
			{}
		}
	},
};

#endif // DR_H