; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E8DA–00E91B, inclusive.
cdi_t7g_entry_00e8da:
db 0x2A, 0x6E ; file 00E8DA
db 0xAC, 0x8E ; 00E8DC: provisional 68k dc.w $ac8e
db 0x20, 0x2D, 0x00, 0x22 ; 00E8DE: provisional 68k move.l $22(a5), d0
db 0x34, 0x3C, 0x00, 0x28 ; 00E8E2: provisional 68k move.w #$28, d2
db 0x32, 0x3C, 0x00, 0x00 ; 00E8E6: provisional 68k move.w #$0, d1
db 0x61, 0x00, 0xCF, 0x68 ; 00E8EA: provisional 68k bsr.w $b854
db 0x3D, 0x7C, 0x00, 0x00, 0xAC, 0x8A ; 00E8EE: provisional 68k move.w #$0, -$5376(a6)
db 0x42, 0x6E, 0xAC, 0x8C ; 00E8F4: provisional 68k clr.w -$5374(a6)
db 0x4E, 0x75 ; 00E8F8: provisional 68k rts 
db 0x2A, 0x6E, 0xAC, 0x8E ; 00E8FA: provisional 68k movea.l -$5372(a6), a5
db 0x20, 0x6E, 0xAC, 0x94 ; 00E8FE: provisional 68k movea.l -$536c(a6), a0
db 0x54, 0xAE, 0xAC, 0x94 ; 00E902: provisional 68k addq.l #$2, -$536c(a6)
db 0x20, 0x2D, 0x00, 0x22 ; 00E906: provisional 68k move.l $22(a5), d0
db 0x34, 0x3C, 0x00, 0x29 ; 00E90A: provisional 68k move.w #$29, d2
db 0x32, 0x10 ; 00E90E: provisional 68k move.w (a0), d1
db 0x61, 0x00, 0xCF, 0x42 ; 00E910: provisional 68k bsr.w $b854
db 0x4E, 0x75 ; 00E914: provisional 68k rts 
db 0x52, 0x6E, 0xAC, 0xBA ; 00E916: provisional 68k addq.w #$1, -$5346(a6)
db 0x4E, 0x75 ; 00E91A: provisional 68k rts 
