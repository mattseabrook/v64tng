; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010B0A–010B7B, inclusive.
cdi_nodv_entry_010b0a:
db 0x48, 0xE7, 0xFF, 0xFC ; 010B0A: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x61, 0x00, 0xC0, 0xA6 ; 010B0E: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xC0, 0xA2 ; 010B12: provisional 68k bsr.w $cbb6
db 0x30, 0x2F, 0x00, 0x3C ; 010B16: provisional 68k move.w $3c(a7), d0
db 0x61, 0x00, 0xFF, 0x16 ; 010B1A: provisional 68k bsr.w $10a32
db 0x42, 0xE7 ; 010B1E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010B20: provisional 68k pea.l $10b2a(pc)
db 0x61, 0x00, 0xC0, 0xAA ; 010B24: provisional 68k bsr.w $cbd0
db 0x60, 0x06 ; 010B28: provisional 68k bra.b $10b30
db 0x69, 0x64 ; 010B2A: provisional 68k bvs.b $10b90
db 0x20, 0x3D ; file 010B2C
db 0x20, 0x00 ; 010B2E: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 010B30: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xBF, 0xEA ; 010B32: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 010B36: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 010B38: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010B3A: provisional 68k pea.l $10b44(pc)
db 0x61, 0x00, 0xC0, 0x90 ; 010B3E: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 010B42: provisional 68k bra.b $10b50
db 0x20, 0x73, 0x74, 0x61 ; 010B44: provisional 68k movea.l $61(a3, d7.w), a0
db 0x74, 0x75 ; 010B48: provisional 68k moveq #$75, d2
db 0x73, 0x20 ; file 010B4A
db 0x3D, 0x20 ; 010B4C: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x1F, 0x29 ; 010B4E: provisional 68k ori.b #$29, d0
db 0x00, 0x01, 0x61, 0x00 ; 010B52: provisional 68k ori.b #$0, d1
db 0xC0, 0x14 ; 010B56: provisional 68k and.b (a4), d0
db 0x44, 0xDF ; 010B58: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xC0, 0x5A ; 010B5A: provisional 68k bsr.w $cbb6
db 0x42, 0x47 ; 010B5E: provisional 68k clr.w d7
db 0x20, 0x29, 0x00, 0x16 ; 010B60: provisional 68k move.l $16(a1), d0
db 0x61, 0x00, 0x00, 0x16 ; 010B64: provisional 68k bsr.w $10b7c
db 0x61, 0x00, 0xC0, 0x4C ; 010B68: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xC0, 0x48 ; 010B6C: provisional 68k bsr.w $cbb6
db 0x4C, 0xDF, 0x3F, 0xFF ; 010B70: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x02 ; 010B74: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 010B78: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 010B7A: provisional 68k rts 
