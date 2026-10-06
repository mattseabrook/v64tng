; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011E52–011E7B, inclusive.
cdi_nodv_entry_011e52:
db 0x48, 0xE7, 0x30, 0xC4 ; 011E52: provisional 68k movem.l d2-d3/a0-a1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 011E56: provisional 68k movea.l $18(a7), a5
db 0x22, 0x6F, 0x00, 0x1C ; 011E5A: provisional 68k movea.l $1c(a7), a1
db 0x61, 0x00, 0x00, 0x1C ; 011E5E: provisional 68k bsr.w $11e7c
db 0x53, 0x43 ; 011E62: provisional 68k subq.w #$1, d3
db 0x42, 0x18 ; 011E64: provisional 68k clr.b (a0)+
db 0x10, 0xD9 ; 011E66: provisional 68k move.b (a1)+, (a0)+
db 0x10, 0xD9 ; 011E68: provisional 68k move.b (a1)+, (a0)+
db 0x10, 0xD9 ; 011E6A: provisional 68k move.b (a1)+, (a0)+
db 0x51, 0xCB, 0xFF, 0xF6 ; 011E6C: provisional 68k dbra d3, $11e64
db 0x4C, 0xDF, 0x23, 0x0C ; 011E70: provisional 68k movem.l (a7)+, d2-d3/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x08 ; 011E74: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011E78: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 011E7A: provisional 68k rts 
