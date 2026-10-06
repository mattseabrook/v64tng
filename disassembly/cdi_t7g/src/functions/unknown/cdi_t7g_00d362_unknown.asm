; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D362–00D371, inclusive.
cdi_t7g_entry_00d362:
db 0x20, 0x5F ; 00D362: provisional 68k movea.l (a7)+, a0
db 0x30, 0x3C, 0x00, 0x5D ; 00D364: provisional 68k move.w #$5d, d0
db 0x61, 0x00, 0xFE, 0xBE ; 00D368: provisional 68k bsr.w $d228
db 0x4C, 0xDF, 0x3F, 0xFF ; 00D36C: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00D370: provisional 68k rts 
