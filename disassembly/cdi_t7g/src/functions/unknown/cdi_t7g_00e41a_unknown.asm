; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E41A–00E425, inclusive.
cdi_t7g_entry_00e41a:
db 0x42, 0xAE, 0xAC, 0x80 ; 00E41A: provisional 68k clr.l -$5380(a6)
db 0x3D, 0x7C, 0x00, 0x00, 0xAB, 0xE4 ; 00E41E: provisional 68k move.w #$0, -$541c(a6)
db 0x4E, 0x75 ; 00E424: provisional 68k rts 
