; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FA22–00FA2B, inclusive.
cdi_t7g_entry_00fa22:
db 0x34, 0x3C, 0x00, 0x01 ; 00FA22: provisional 68k move.w #$1, d2
db 0x61, 0x00, 0xFE, 0xE2 ; 00FA26: provisional 68k bsr.w $f90a
db 0x4E, 0x75 ; 00FA2A: provisional 68k rts 
