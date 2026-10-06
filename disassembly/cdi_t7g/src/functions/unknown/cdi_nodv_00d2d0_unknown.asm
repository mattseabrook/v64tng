; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D2D0–00D2D9, inclusive.
cdi_nodv_entry_00d2d0:
db 0x2D, 0x6F, 0x00, 0x04, 0xAA, 0x0E ; 00D2D0: provisional 68k move.l $4(a7), -$55f2(a6)
db 0x2E, 0x9F ; 00D2D6: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00D2D8: provisional 68k rts 
