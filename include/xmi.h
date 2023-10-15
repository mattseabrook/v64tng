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
	gu23,
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
	gu39,
	gu40,
	gu41,
	gu42,
	gu43,
	gu44,
	gu45,
	gu46,
	gu47,
	gu48,
	gu49,
	gu50,
	gu51,
	gu52,
	gu53,
	gu54,
	gu55,
	gu56,
	gu58,
	gu59,
	gu60,
	gu61,
	gu63,
	gu67,
	gu68,
	gu69,
	gu70,
	gu71,
	gu72,
	gu73,
	gu74,
	gu75,
	gu76,
	ini_mt_o,
	ini_sc
};

//===========================================================================

std::vector<uint8_t> xmiConverter(std::vector<uint8_t>& xmiData);

#endif