// fh.h

#ifndef FH_H
#define FH_H

#include <vector>

#include "game.h"
#include "music.h"

/*
===============================================================================

	7th Guest - FOYER_HALLWAY

	This header file manages the views, navigation, and hotspots within
	the Foyer and Hallway sections of the game.

===============================================================================
*/

/*

View Identifier Table

f1_     // Intro animation

f1_d - Unused animation of the front door opening
f1_r - Unused animation of the fountain in the foyer
f1_rm - Unused animation of the fountain in the foyer

f2_		// Likely an animation not related to game play or navigation

f3_0

f3_clt
f3_cmb
f3_cmf
f3_d

f4_d

f5_4
f5_d

f6_1


foy_spa
foy_spb
foy_spc
foy_spd
foy_spe
foy_spf
foy_spg
foy_sph


f_a_d
f_a_f
f_b_e
f_b_g
f_c_f
f_c_h
f_d_a
f_d_g
f_e_b
f_e_h
f_f_a
f_f_c
f_g_b
f_g_d
f_h_c
f_h_e


Hallway:

h1_2
h1_8

h2_
h2_1
h2_3
h2_e
h2_g

h3_2
h3_4
h3_k

h4_3
h4_5
h4_7
h4_m

h5_4
h5_q

h7_4
h7_t

h8_1
h8_u
h8_w
h8_x

hb_
hc_

h_1ba
h_1bb
h_1bc
h_1bd
h_1fa
h_1fb
h_1fc
h_1fd


h_2ba
h_2bb
h_2bc
h_2bd
h_2fa
h_2fb
h_2fc
h_2fd


h_3ba
h_3bb
h_3bc
h_3bd
h_3fa
h_3fb
h_3fc
h_3fd


h_4ba
h_4bb
h_4bc
h_4bd
h_4fa
h_4fb
h_4fc
h_4fd


h_5b
h_5f


h_7b
h_7f


h_8ba
h_8bb
h_8bc
h_8bd
h_8fa
h_8fb
h_8fc
h_8fd


h_ghost1
h_ghost2
h_ghost3
h_ghost4


h_mask_a
h_mask_b
h_mask_c
h_mask_d
h_mask_e
h_mask_f
h_mask_g
h_mask_h
h_mask_i
h_mask_j

h_morph

h_pf
h_pb
h_p_up
h_p_dn
h_p2ab
h_p2af
h_p2bb
h_p2bf
h_p2cb
h_p2cf
h_p2db
h_p2df
h_p2eb
h_p2ef
h_p2fb
h_p2ff
h_p2gb
h_p2gf
h_p2hb
h_p2hf
h_p2ib
h_p2if
h_p2jb
h_p2jf

h_plmorp
h_prmorp

*/

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wmissing-field-initializers"

/*

Prefix map for Foyer assets

*/
const std::vector<ViewGroup> foyer = {
	//////////////////////////////////////////////////////////////////////////
	// f_1 - In front of the stairs
	//////////////////////////////////////////////////////////////////////////

	//
	// Turning left towards front door
	//
	{
		{"f_1ba"},
		{// Hotspots
		 {
			 {{45.0f, 0.0f, 10.0f, 10.0f, CURSOR_FMV, 0}, []() { /* Intro Movie */ }}},
		 // Navigation
		 {
			 {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_1bd"},
			 {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_1fa"}}}},
	//
	// Stairs, turning left
	//
	{
		{"f_1bb", "f_1fa"}, // Grouped: identical hotspots and navigations
		{					// Hotspots
		 {},
		 // Navigation
		 {
			 {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_1ba"},		  // Left
			 {{83.0f, 45.0f, 17.0f, 35.0f, CURSOR_FORWARD, 1}, "f_1fb,f1_2"}, // Dining Room
			 {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_1fb"}		  // Right
		 }}},
	//
	// turning left towards Stairs *first view
	//
	{
		{"f_1bc", "f_1fb"}, // Grouped: identical hotspots and navigations
		{					// Hotspots
		 {},
		 // Navigation
		 {
			 {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_1bb"},		// Left
			 {{33.0f, 0.0f, 33.0f, 85.0f, CURSOR_FORWARD, 0}, "f1_6"},		// Forward
			 {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_1fc"},		// Right
			 {{0.0f, 50.0f, 17.0f, 30.0f, CURSOR_FORWARD, 1}, "f1_2"},		// Dining Room
			 {{80.0f, 50.0f, 20.0f, 30.0f, CURSOR_FORWARD, 0}, "f1_5,f5_4"} // Music Room
		 }}},
	//
	// front door, turning left
	//
	{
		{"f_1bd"},
		{// Hotspots
		 {},
		 // Navigation
		 {
			 {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_1bc"},			   // Left
			 {{0.0f, 70.0f, 25.0f, 30.0f, CURSOR_FORWARD, 0}, "f_1bc,f1_5,f5_4"},  // Music Room
			 {{28.0f, 35.0f, 5.0f, 50.0f, CURSOR_FORWARD, 0}, "f_1bc,f1_5,f_5fc"}, // Library
			 {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_1fd"}			   // Right
		 }}},
	//
	// Stairs, turning right
	//
	{
		{"f_1fc"},
		{// Hotspots
		 {},
		 // Navigation
		 {
			 {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_1bc"},			  // Left
			 {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_1fd"},			  // Right
			 {{28.0f, 35.0f, 5.0f, 50.0f, CURSOR_FORWARD, 0}, "f_1bc,f1_5,f_5fc"} // Library
		 }}},
	//
	// turning right towards front door
	//
	{
		{"f_1fd"},
		{// Hotspots
		 {
			 {{45.0f, 0.0f, 10.0f, 10.0f, CURSOR_FMV, 0}, []() { /* Spider Puzzle or Intro Movie */ }}},
		 // Navigation
		 {
			 {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_1bd"},  // Left
			 {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_1fa"} // Right
		 }}},

	//////////////////////////////////////////////////////////////////////////

	//
	// Stairs -> Dining Room Door
	//
	{
		{"f1_2"},
		{// Hotspots
		 {
			 {{33.0f, 0.0f, 33.0f, 100.0f, CURSOR_FORWARD, 0}, []()
			  {
				  state.current_view = "f2_d,DR:dr_tbc;static";
				  state.animation_sequence.clear();
				  pushMainSong("gu15");
			  }}},
		 // Navigation
		 {
			 {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_2ba"},  // Left
			 {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_2fb"} // Right
		 }}},
	//
	// Stairs -> Library Door
	//
	{{"f1_5"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "x"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "x"} // Right
	  }}},
	//
	// Up the stairs
	//
	{{"f1_6"},
	 {// Hotspots
	  {{{45.0f, 0.0f, 10.0f, 10.0f, CURSOR_EASTER_EGG, 0}, []() { /* Hands Painting */ }}},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "x"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "x"} // Right
	  }}},

	//////////////////////////////////////////////////////////////////////////
	// f_2 - In front of Dining Room door
	//////////////////////////////////////////////////////////////////////////

	//
	// Dining Room, turning left
	//
	{{"f_2ba"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_2bd"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_2fa"} // Right
	  }}},
	//
	// Turning left towards the Dining Room
	//
	{{"f_2bb", "f_2fa"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {{{33.0f, 0.0f, 33.0f, 100.0f, CURSOR_FORWARD, 0}, []()
		{
			state.current_view = "f2_d,DR:dr_tbc;static";
			state.animation_sequence.clear();
			pushMainSong("gu15");
		}}},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_2ba"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_2fb"} // Right
	  }}},
	//
	// Stairs, turning left to Kitchen
	//
	{{"f_2bc", "f_2fb"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_2bb"},	 // Left
		  {{45.0f, 10.0f, 15.0f, 60.0f, CURSOR_FORWARD, 0}, "f2_3"}, // f3
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_2fc"}	 // Right
	  }}},
	//
	// Turning left towards Stairs
	//
	{{"f_2bd", "f_2fc"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_2bc"},	 // Left
		  {{70.0f, 40.0f, 20.0f, 40.0f, CURSOR_FORWARD, 0}, "f2_1"}, // f1
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_2fd"}	 // Right
	  }}},
	//
	// Stairs, turning right
	//
	{{"f_2fd"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_2bd"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_2fa"} // Right
	  }}},

	//////////////////////////////////////////////////////////////////////////

	//
	// Dining Room -> Front Door
	//
	{{"f2_1"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_1bd"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_1fa"} // Right
	  }}},
	//
	// Fully transition to Dining Room ( DR.RL/GJD )
	//
	{{"f2_d"}, {{}, {}}},
	//
	// Dining Room -> Infront of Kitchen
	//
	{{"f2_3"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_3bb"},  // Left
		  {{33.0f, 0.0f, 33.0f, 100.0f, CURSOR_FORWARD, 0}, "x"},  // Kitchen
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_3fc"} // Right
	  }}},

	//////////////////////////////////////////////////////////////////////////
	// f_3
	//////////////////////////////////////////////////////////////////////////

	//
	// Kitchen, facing Dining Room
	//
	{{"f_3ba", "f_3fd"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_3bd"},	 // Left
		  {{40.0f, 10.0f, 60.0f, 60.0f, CURSOR_FORWARD, 0}, "f3_2"}, // Forward to Dining Room door
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_3fa"}	 // Right
	  }}},
	//
	// Kitchen, turning left
	//
	{{"f_3bb", "f_3fa"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_3ba"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_3fb"} // Right
	  }}},
	//
	// Turning left towards Kitchen
	//
	{{"f_3bc", "f_3fb"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_3bb"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_3fc"} // Right
	  }}},
	//
	// x
	//
	{{"f_3bd", "f_3fc"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_3bc"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_3fd"} // Right
	  }}},

	//////////////////////////////////////////////////////////////////////////

	//
	// Kitchen -> Dining Room (Foyer)
	//
	{{"f3_2"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_2bd"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_2fa"} // Right
	  }}},

	//////////////////////////////////////////////////////////////////////////
	// f_4
	//////////////////////////////////////////////////////////////////////////

	//
	// Music Room, turning left towards the stairs
	//
	{{"f_4ba", "f_4fd"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_4bd"},	 // Left
		  {{40.0f, 30.0f, 20.0f, 40.0f, CURSOR_FORWARD, 0}, "f4_5"}, // Forward - Library Door
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_4fa"}	 // Right
	  }}},
	//
	// Music Room, turning left
	//
	{{"f_4bb", "f_4fa"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_4ba"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_4fb"} // Right
	  }}},
	//
	// Turning left towards Music Room
	//
	{{"f_4bc", "f_4fb"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_4bb"},  // Left
		  {{40.0f, 30.0f, 20.0f, 40.0f, CURSOR_FORWARD, 0}, "x"},  // Forward - Enter the Music Room
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_4fc"} // Right
	  }}},
	//
	// Music Room, turning left towards Library
	//
	{{"f_4bd", "f_4fc"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_4bc"},				// Left
		  {{80.0f, 0.0f, 10.0f, 90.0f, CURSOR_FORWARD, 0}, "f_4fd,f4_5,f_5bd"}, // f5
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_4fd"}				// Right
	  }}},

	//////////////////////////////////////////////////////////////////////////

	//
	// Music Room -> Library (Foyer)
	//
	{{"f4_5"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_5bd"},	 // Left
		  {{40.0f, 33.0f, 20.0f, 33.0f, CURSOR_FORWARD, 0}, "f5_1"}, // f1
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_5fa"}	 // Right
	  }}},

	//////////////////////////////////////////////////////////////////////////
	// f_5
	//////////////////////////////////////////////////////////////////////////

	//
	// Library, facing front door
	//
	{{"f_5ba", "f_5fd"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_5bd"},	 // Left
		  {{40.0f, 30.0f, 20.0f, 40.0f, CURSOR_FORWARD, 0}, "f5_1"}, // f1
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_5fa"}	 // Right
	  }}},
	//
	// Library, facing stairs
	//
	{{"f_5bb", "f_5fa"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_5ba"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_5fb"} // Right
	  }}},
	//
	// Library, turning left
	//
	{{"f_5bc", "f_5fb"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_5bb"},	// Left
		  {{25.0f, 0.0f, 30.0f, 70.0f, CURSOR_FORWARD, 0}, "f5_4"}, // f4
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_5fc"}	// Right
	  }}},
	//
	// Turning left towards the Library
	//
	{{"f_5bd", "f_5fc"}, // Grouped: identical hotspots and navigations
	 {					 // Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_5bc"},  // Left
		  {{0.0f, 0.0f, 0.0f, 0.0f, CURSOR_FORWARD, 0}, "x"},	   // Forward - Enter Library
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_5fd"} // Right
	  }}},

	//////////////////////////////////////////////////////////////////////////

	//
	// Library -> Main View (Foyer)
	//
	{{"f5_1"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_1bd"},  // Left
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_1fa"} // Right
	  }}},
	//
	// Foyer -> Music Room (Foyer)
	//
	{{"f5_4"},
	 {// Hotspots
	  {},
	  // Navigation
	  {
		  {{0.0f, 0.0f, 10.0f, 100.0f, CURSOR_LEFT, 0}, "f_4bb"},  // Left
		  {{0.0f, 0.0f, 0.0f, 0.0f, CURSOR_FORWARD, 0}, "x"},	   // Forward - Enter Music Room
		  {{90.0f, 0.0f, 10.0f, 100.0f, CURSOR_RIGHT, 0}, "f_4fc"} // Right
	  }}}};

//==============================================================================

// Function prototypes ...

#pragma clang diagnostic pop

#endif // FH_H