; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E548–00E567, inclusive.
cdi_nodv_entry_00e548:
db 0x48, 0xE7, 0x80, 0x04 ; 00E548: provisional 68k movem.l d0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x0C ; 00E54C: provisional 68k move.w $c(a7), d0
db 0x61, 0x00, 0x03, 0x5E ; 00E550: provisional 68k bsr.w $e8b0
db 0x42, 0x6D, 0x00, 0x58 ; 00E554: provisional 68k clr.w $58(a5)
db 0x61, 0x00, 0x00, 0x0E ; 00E558: provisional 68k bsr.w $e568
db 0x4C, 0xDF, 0x20, 0x01 ; 00E55C: provisional 68k movem.l (a7)+, d0/a5
db 0x2F, 0x57, 0x00, 0x02 ; 00E560: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00E564: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00E566: provisional 68k rts 
