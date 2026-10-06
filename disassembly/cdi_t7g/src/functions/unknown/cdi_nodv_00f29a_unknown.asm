; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F29A–00F2A5, inclusive.
cdi_nodv_entry_00f29a:
db 0x42, 0xAE, 0xAC, 0x80 ; 00F29A: provisional 68k clr.l -$5380(a6)
db 0x3D, 0x7C, 0x00, 0x00, 0xAB, 0xE4 ; 00F29E: provisional 68k move.w #$0, -$541c(a6)
db 0x4E, 0x75 ; 00F2A4: provisional 68k rts 
