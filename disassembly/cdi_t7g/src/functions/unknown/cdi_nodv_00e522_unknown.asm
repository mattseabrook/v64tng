; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E522–00E547, inclusive.
cdi_nodv_entry_00e522:
db 0x48, 0xE7, 0x80, 0x04 ; 00E522: provisional 68k movem.l d0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x0C ; 00E526: provisional 68k move.w $c(a7), d0
db 0x61, 0x00, 0x03, 0x84 ; 00E52A: provisional 68k bsr.w $e8b0
db 0x42, 0x6D, 0x00, 0x58 ; 00E52E: provisional 68k clr.w $58(a5)
db 0x61, 0x00, 0x00, 0x34 ; 00E532: provisional 68k bsr.w $e568
db 0x2F, 0x0D ; 00E536: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0x2A, 0x54 ; 00E538: provisional 68k bsr.w $10f8e
db 0x4C, 0xDF, 0x20, 0x01 ; 00E53C: provisional 68k movem.l (a7)+, d0/a5
db 0x2F, 0x57, 0x00, 0x02 ; 00E540: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00E544: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00E546: provisional 68k rts 
