; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BB78–00BB93, inclusive.
cdi_t7g_entry_00bb78:
db 0x48, 0xE7, 0x80, 0x80 ; 00BB78: provisional 68k movem.l d0/a0, -(a7)
db 0x30, 0x2F, 0x00, 0x0C ; 00BB7C: provisional 68k move.w $c(a7), d0
db 0x41, 0xEE, 0xA8, 0xFA ; 00BB80: provisional 68k lea.l -$5706(a6), a0
db 0x42, 0x30, 0x00, 0x00 ; 00BB84: provisional 68k clr.b (a0, d0.w)
db 0x4C, 0xDF, 0x01, 0x01 ; 00BB88: provisional 68k movem.l (a7)+, d0/a0
db 0x2F, 0x57, 0x00, 0x02 ; 00BB8C: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00BB90: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00BB92: provisional 68k rts 
