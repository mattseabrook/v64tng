; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D6A2–00D6C7, inclusive.
cdi_t7g_entry_00d6a2:
db 0x48, 0xE7, 0x80, 0x04 ; 00D6A2: provisional 68k movem.l d0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x0C ; 00D6A6: provisional 68k move.w $c(a7), d0
db 0x61, 0x00, 0x03, 0x84 ; 00D6AA: provisional 68k bsr.w $da30
db 0x42, 0x6D, 0x00, 0x58 ; 00D6AE: provisional 68k clr.w $58(a5)
db 0x61, 0x00, 0x00, 0x34 ; 00D6B2: provisional 68k bsr.w $d6e8
db 0x2F, 0x0D ; 00D6B6: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0x2A, 0x54 ; 00D6B8: provisional 68k bsr.w $1010e
db 0x4C, 0xDF, 0x20, 0x01 ; 00D6BC: provisional 68k movem.l (a7)+, d0/a5
db 0x2F, 0x57, 0x00, 0x02 ; 00D6C0: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00D6C4: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00D6C6: provisional 68k rts 
