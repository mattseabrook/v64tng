; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0118AA–0118B5, inclusive.
cdi_t7g_entry_0118aa:
db 0x51, 0xCD, 0xFF, 0xFC ; 0118AA: provisional 68k dbra d5, $118a8
db 0x51, 0xCF, 0xFF, 0xF4 ; 0118AE: provisional 68k dbra d7, $118a4
db 0x4C, 0xDF, 0x03, 0xE0 ; 0118B2: provisional 68k movem.l (a7)+, d5-d7/a0-a1
