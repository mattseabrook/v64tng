; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C9F8–00CA13, inclusive.
cdi_nodv_entry_00c9f8:
db 0x48, 0xE7, 0x80, 0x80 ; 00C9F8: provisional 68k movem.l d0/a0, -(a7)
db 0x30, 0x2F, 0x00, 0x0C ; 00C9FC: provisional 68k move.w $c(a7), d0
db 0x41, 0xEE, 0xA8, 0xFA ; 00CA00: provisional 68k lea.l -$5706(a6), a0
db 0x42, 0x30, 0x00, 0x00 ; 00CA04: provisional 68k clr.b (a0, d0.w)
db 0x4C, 0xDF, 0x01, 0x01 ; 00CA08: provisional 68k movem.l (a7)+, d0/a0
db 0x2F, 0x57, 0x00, 0x02 ; 00CA0C: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00CA10: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00CA12: provisional 68k rts 
