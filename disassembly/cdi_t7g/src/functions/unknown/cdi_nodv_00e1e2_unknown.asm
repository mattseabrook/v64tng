; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E1E2–00E1F1, inclusive.
cdi_nodv_entry_00e1e2:
db 0x20, 0x5F ; 00E1E2: provisional 68k movea.l (a7)+, a0
db 0x30, 0x3C, 0x00, 0x5D ; 00E1E4: provisional 68k move.w #$5d, d0
db 0x61, 0x00, 0xFE, 0xBE ; 00E1E8: provisional 68k bsr.w $e0a8
db 0x4C, 0xDF, 0x3F, 0xFF ; 00E1EC: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00E1F0: provisional 68k rts 
