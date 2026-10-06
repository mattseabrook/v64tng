; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D6C8–00D6E7, inclusive.
cdi_t7g_entry_00d6c8:
db 0x48, 0xE7, 0x80, 0x04 ; 00D6C8: provisional 68k movem.l d0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x0C ; 00D6CC: provisional 68k move.w $c(a7), d0
db 0x61, 0x00, 0x03, 0x5E ; 00D6D0: provisional 68k bsr.w $da30
db 0x42, 0x6D, 0x00, 0x58 ; 00D6D4: provisional 68k clr.w $58(a5)
db 0x61, 0x00, 0x00, 0x0E ; 00D6D8: provisional 68k bsr.w $d6e8
db 0x4C, 0xDF, 0x20, 0x01 ; 00D6DC: provisional 68k movem.l (a7)+, d0/a5
db 0x2F, 0x57, 0x00, 0x02 ; 00D6E0: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00D6E4: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00D6E6: provisional 68k rts 
