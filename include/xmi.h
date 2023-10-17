// xmi.h

#ifndef XMI_H
#define XMI_H

#include <string>

//===========================================================================

enum playList {
	agu16 = 1,
	agu32,
	agu38,
	agu50,
	gu5,
	gu6,
	gu8,
	gu9,
	gu11a,
	gu11b,
	gu12,
	gu15,
	gu16,
	gu16b,
	gu17,
	gu18,
	gu19,
	gu20,
	gu21,
	gu22,
	gu23,	// Coffin Dance - Crypt puzzle
	gu24,
	gu25,
	gu26,
	gu27,
	gu28,
	gu29,
	gu30,
	gu31,
	gu32,
	gu33,
	gu34,
	gu35,
	gu36,
	gu37,
	gu38,
	gu39,	// Title Screen
	gu40,
	gu41,
	gu42,
	gu43,
	gu44,
	gu45,	// Chapel
	gu46,
	gu47,
	gu48,
	gu49,
	gu50,	// 
	gu51,
	gu52,
	gu53,
	gu54,
	gu55,
	gu56,	// Ghost of Bo - Main Foyer
	gu58,	// Edward & Martine 
	gu59,
	gu60,
	gu61,	// Intro Screen - Main Foyer
	gu63,	// Love Supreme
	gu67,
	gu68,
	gu69,
	gu70,
	gu71,	// Puzzle Zoom-In
	gu72,	// Puzzle Zoom-In
	gu73,	// Puzzle Zoom-In
	gu74,	// Puzzle Zoom-In
	gu75,	// End Game? 
	gu76,	// End Game?
	ini_mt_o,
	ini_sc
};

//===========================================================================

std::vector<uint8_t> xmiConverter(std::vector<uint8_t>& xmiData);

#endif