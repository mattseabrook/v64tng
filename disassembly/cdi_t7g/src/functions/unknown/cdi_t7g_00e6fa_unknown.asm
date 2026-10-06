; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E6FA–00E717, inclusive.
cdi_t7g_entry_00e6fa:
db 0xFC, 0x64 ; file 00E6FA
db 0x3F, 0x3C, 0x00, 0x02 ; 00E6FC: provisional 68k move.w #$2, -(a7)
db 0x61, 0x00, 0xF9, 0x32 ; 00E700: provisional 68k bsr.w $e034
db 0x42, 0xAE, 0xAC, 0x8E ; 00E704: provisional 68k clr.l -$5372(a6)
db 0x3D, 0x7C, 0x00, 0x00, 0xAC, 0x8A ; 00E708: provisional 68k move.w #$0, -$5376(a6)
db 0x42, 0x6E, 0xAC, 0x8C ; 00E70E: provisional 68k clr.w -$5374(a6)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00E712: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00E716: provisional 68k rts 
