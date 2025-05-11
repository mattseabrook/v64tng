// fh.h

#ifndef FH_H
#define FH_H

#include <unordered_map>

#include "game.h"

/*
===============================================================================

	7th Guest - FOYER_HALLWAY

	This header file manages the views, navigation, and hotspots within
	the Foyer and Hallway sections of the game.

===============================================================================
*/

/*

View Identifier Table

f1_     // Intro animation?

f1_d - Unused animation of the front door opening
f1_r - Unused animation of the fountain in the foyer
f1_rm - Unused animation of the fountain in the foyer

f2_		// Likely an animation not related to game play or navigation


f2_3 - goes to F3


f3_0
f3_2
f3_clt
f3_cmb
f3_cmf
f3_d

f4_5
f4_d

f5_1
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



f_4ba
f_4bb
f_4bc
f_4bd
f_4fa
f_4fb
f_4fc
f_4fd



f_5ba
f_5bb
f_5bc
f_5bd
f_5fa
f_5fb
f_5fc
f_5fd




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
const std::unordered_map<std::string, View> foyer = {
	////////////////////////////////////////////////////////////////////////
	// f_1 - In front of the stairs
	////////////////////////////////////////////////////////////////////////

	//
	// Turning left towards front door
	//
	{
		"f_1ba",
		{{// Hotspots
		  {0.0f, 0.0f, 0.0f, 0.0f, []() { /* Intro Movie */ }},
		  {0.0f, 0.0f, 0.0f, 0.0f, []() { /* Spider Puzzle - f1_pb , f1_pf */ }}},
		 {
			 // Navigation
			 {"f_1bd", {0.0f, 0.0f, 10.0f, 100.0f}}, // Left
			 {"f_1fa", {90.0f, 0.0f, 10.0f, 100.0f}} // Right
		 }}},
	//
	// Stairs, turning left
	//
	{
		"f_1bb",
		{{},
		 {
			 // Navigation
			 {"f_1ba", {0.0f, 0.0f, 10.0f, 100.0f}, 0},		  // Left
			 {"f_1fb,f1_2", {83.0f, 45.0f, 17.0f, 35.0f}, 1}, // Dining Room
			 {"f_1fb", {90.0f, 0.0f, 10.0f, 100.0f}, 0}		  // Right
		 }}},
	//
	// turning left towards Stairs *first view
	//
	{
		"f_1bc",
		{{},
		 {
			 // Navigation
			 {"f_1bb", {0.0f, 0.0f, 10.0f, 100.0f}},   // Left
			 {"f1_6", {33.0f, 0.0f, 33.0f, 85.0f}},	   // Forward
			 {"f_1fc", {90.0f, 0.0f, 10.0f, 100.0f}},  // Right
			 {"f1_2", {0.0f, 50.0f, 17.0f, 30.0f}, 1}, // Dining Room
			 {"f1_5", {80.0f, 50.0f, 20.0f, 30.0f}}	   // Music Room
		 }}},
	//
	// front door, turning left
	//
	{
		"f_1bd",
		{{},
		 {
			 // Navigation
			 {"f_1bc", {0.0f, 0.0f, 10.0f, 100.0f}}, // Left
			 {"x", {0.0f, 70.0f, 25.0f, 30.0f}},	 // Music Room
			 {"x", {33.0f, 33.0f, 5.0f, 30.0f}},	 // Library
			 {"f_1fd", {90.0f, 0.0f, 10.0f, 100.0f}} // Right
		 }}},
	//
	// front door, turning right
	//
	{
		"f_1fa",
		{{},
		 {
			 // Navigation
			 {"f_1ba", {0.0f, 0.0f, 10.0f, 100.0f}, 0},		  // Left
			 {"f_1fb,f1_2", {83.0f, 45.0f, 17.0f, 35.0f}, 1}, // Dining Room
			 {"f_1fb", {90.0f, 0.0f, 10.0f, 100.0f}, 0}		  // Right
		 }}},
	//
	// turning right towards stairs
	//
	{
		"f_1fb",
		{{},
		 {
			 // Navigation
			 {"f_1bb", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"f1_6", {33.0f, 0.0f, 33.0f, 85.0f}},	  // Forward
			 {"f_1fc", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
			 {"f1_2", {0.0f, 50.0f, 17.0f, 30.0f}},	  // Dining Room
			 {"f1_5", {80.0f, 50.0f, 20.0f, 30.0f}}	  // Music Room
		 }}},
	//
	// Stairs, turning right
	//
	{
		"f_1fc",
		{{},
		 {
			 // Navigation
			 {"f_1bc", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"f_1fd", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
			 {"x", {33.0f, 33.0f, 5.0f, 30.0f}}		  // Library
		 }}},
	//
	// turning right towards front door
	//
	{
		"f_1fd",
		{{// Hotspots
		  {0.0f, 0.0f, 0.0f, 0.0f, []() { /* Intro Movie */ }},
		  {0.0f, 0.0f, 0.0f, 0.0f, []() { /* Spider Puzzle */ }}},
		 {
			 // Navigation
			 {"f_1bd", {0.0f, 0.0f, 10.0f, 100.0f}}, // Left
			 {"f_1fa", {90.0f, 0.0f, 10.0f, 100.0f}} // Right
		 }}},

	////////////////////////////////////////////////////////////////////////

	//
	// Stairs -> Dining Room Door
	//
	{
		"f1_2",
		{{},
		 {
			 // Navigation
			 {"f_2ba", {0.0f, 0.0f, 10.0f, 100.0f}},				  // Left
			 {"f2_d,DR:dr_tbc;static", {33.0f, 0.0f, 33.0f, 100.0f}}, // Open Dining Room (transition)
			 {"f_2fb", {90.0f, 0.0f, 10.0f, 100.0f}}				  // Right
		 }}},
	//
	// Stairs -> Library Door
	//
	{
		"f1_5",
		{{},
		 {
			 // Navigation
			 {"x", {0.0f, 0.0f, 10.0f, 100.0f}}, // Left
			 {"x", {90.0f, 0.0f, 10.0f, 100.0f}} // Right
		 }}},
	//
	// Up the stairs
	//
	{
		"f1_6",
		{{
			 // Hotspots
			 {0.0f, 0.0f, 0.0f, 0.0f, []() { /* Hands Painting */ }},
		 },
		 {
			 // Navigation
			 {"x", {0.0f, 0.0f, 10.0f, 100.0f}}, // Left
			 {"x", {90.0f, 0.0f, 10.0f, 100.0f}} // Right
		 }}},

	////////////////////////////////////////////////////////////////////////
	// f_2 - In front of Dining Room door
	////////////////////////////////////////////////////////////////////////

	//
	// Dining Room, turning left
	//
	{
		"f_2ba",
		{{},
		 {
			 // Navigation
			 {"f_2bd", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"f_2fa", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},
	//
	// Turning left towards the Dining Room
	//
	{
		"f_2bb",
		{{},
		 {
			 // Navigation
			 {"f_2ba", {0.0f, 0.0f, 10.0f, 100.0f}},				  // Left
			 {"f2_d,DR:dr_tbc;static", {33.0f, 0.0f, 33.0f, 100.0f}}, // Open Dining Room (transition)
			 {"f_2fb", {90.0f, 0.0f, 10.0f, 100.0f}},				  // Right
		 }}},
	//
	// Stairs, turning left to Kitchen
	//
	{
		"f_2bc",
		{{},
		 {
			 // Navigation
			 {"f_2bb", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"f_2fc", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},
	//
	// Turning left towards Stairs
	//
	{
		"f_2bd",
		{{},
		 {
			 // Navigation
			 {"f_2bc", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"f2_1", {70.0f, 40.0f, 20.0f, 40.0f}},  // f1
			 {"f_2fd", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},
	//
	// Turning right towards Dining Room
	//
	{
		"f_2fa",
		{{},
		 {
			 // Navigation
			 {"f_2ba", {0.0f, 0.0f, 10.0f, 100.0f}},				  // Left
			 {"f2_d,DR:dr_tbc;static", {33.0f, 0.0f, 33.0f, 100.0f}}, // Open Dining Room (transition)
			 {"f_2fb", {90.0f, 0.0f, 10.0f, 100.0f}},				  // Right
		 }}},
	//
	// Dining Room, turning right to Kitchen
	//
	{
		"f_2fb",
		{{},
		 {
			 // Navigation
			 {"f_2bb", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"f_2fc", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},
	//
	// Turning right towards Stairs (facing kitchen)
	//
	{
		"f_2fc",
		{{},
		 {
			 // Navigation
			 {"f_2bc", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"f2_1", {70.0f, 40.0f, 20.0f, 40.0f}},  // f1
			 {"f_2fd", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},
	//
	// Stairs, turning right
	//
	{
		"f_2fd",
		{{},
		 {
			 // Navigation
			 {"f_2bd", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"f_2fa", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},

	////////////////////////////////////////////////////////////////////////

	//
	// Dining Room -> Front Door
	//
	{
		"f2_1",
		{{},
		 {
			 // Navigation
			 {"f_1bd", {0.0f, 0.0f, 10.0f, 100.0f}}, // Left
			 {"f_1fa", {90.0f, 0.0f, 10.0f, 100.0f}} // Right
		 }}},
	//
	// Fully transition to Dining Room ( DR.RL/GJD )
	//
	{
		"f2_d",
		{{},
		 {}}},

	////////////////////////////////////////////////////////////////////////
	// f_3
	////////////////////////////////////////////////////////////////////////

	//
	// Kitchen, facing Dining Room
	//
	{
		"f_3ba",
		{{},
		 {
			 // Navigation
			 {"x", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"x", {0.0f, 0.0f, 0.0f, 0.0f}},	  // Forward
			 {"x", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},
	//
	// Kitchen, turning left
	//
	{
		"f_3bb",
		{{},
		 {
			 // Navigation
			 {"x", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"x", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},
	//
	// Turning left towards Kitchen
	//
	{
		"f_3bc",
		{{},
		 {
			 // Navigation
			 {"x", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"x", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},
	//
	// Kitchen, facing south
	//
	{
		"f_3bd",
		{{},
		 {
			 // Navigation
			 {"x", {0.0f, 0.0f, 10.0f, 100.0f}},  // Left
			 {"x", {0.0f, 0.0f, 0.0f, 0.0f}},	  // Forward
			 {"x", {90.0f, 0.0f, 10.0f, 100.0f}}, // Right
		 }}},

	/*

	f_3fa
	f_3fb
	f_3fc
	f_3fd

	*/
};

// Further view prefixes ...

//==============================================================================

// Function prototypes ...

#pragma clang diagnostic pop

#endif // FH_H