; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F75A–00F79B, inclusive.
cdi_nodv_entry_00f75a:
db 0x2A, 0x6E ; file 00F75A
db 0xAC, 0x8E ; 00F75C: provisional 68k dc.w $ac8e
db 0x20, 0x2D, 0x00, 0x22 ; 00F75E: provisional 68k move.l $22(a5), d0
db 0x34, 0x3C, 0x00, 0x28 ; 00F762: provisional 68k move.w #$28, d2
db 0x32, 0x3C, 0x00, 0x00 ; 00F766: provisional 68k move.w #$0, d1
db 0x61, 0x00, 0xCF, 0x68 ; 00F76A: provisional 68k bsr.w $c6d4
db 0x3D, 0x7C, 0x00, 0x00, 0xAC, 0x8A ; 00F76E: provisional 68k move.w #$0, -$5376(a6)
db 0x42, 0x6E, 0xAC, 0x8C ; 00F774: provisional 68k clr.w -$5374(a6)
db 0x4E, 0x75 ; 00F778: provisional 68k rts 
db 0x2A, 0x6E, 0xAC, 0x8E ; 00F77A: provisional 68k movea.l -$5372(a6), a5
db 0x20, 0x6E, 0xAC, 0x94 ; 00F77E: provisional 68k movea.l -$536c(a6), a0
db 0x54, 0xAE, 0xAC, 0x94 ; 00F782: provisional 68k addq.l #$2, -$536c(a6)
db 0x20, 0x2D, 0x00, 0x22 ; 00F786: provisional 68k move.l $22(a5), d0
db 0x34, 0x3C, 0x00, 0x29 ; 00F78A: provisional 68k move.w #$29, d2
db 0x32, 0x10 ; 00F78E: provisional 68k move.w (a0), d1
db 0x61, 0x00, 0xCF, 0x42 ; 00F790: provisional 68k bsr.w $c6d4
db 0x4E, 0x75 ; 00F794: provisional 68k rts 
db 0x52, 0x6E, 0xAC, 0xBA ; 00F796: provisional 68k addq.w #$1, -$5346(a6)
db 0x4E, 0x75 ; 00F79A: provisional 68k rts 
