; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01272A–012735, inclusive.
cdi_nodv_entry_01272a:
db 0x51, 0xCD, 0xFF, 0xFC ; 01272A: provisional 68k dbra d5, $12728
db 0x51, 0xCF, 0xFF, 0xF4 ; 01272E: provisional 68k dbra d7, $12724
db 0x4C, 0xDF, 0x03, 0xE0 ; 012732: provisional 68k movem.l (a7)+, d5-d7/a0-a1
