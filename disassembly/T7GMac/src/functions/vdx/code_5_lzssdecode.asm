; verified-role: Native LZSSDecode routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: LZSSDecode; evidence file offset 0xe446.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_lzssdecode:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00E3E6 | 68k link.w a6, #$fffc
db 0x48, 0xE7, 0x1F, 0x3E ; file 00E3EA | 68k movem.l d3-d7/a2-a6, -(a7)
db 0x78, 0x00 ; file 00E3EE | 68k moveq #$0, d4
db 0x7A, 0x00 ; file 00E3F0 | 68k moveq #$0, d5
db 0x18, 0x2E, 0x00, 0x10 ; file 00E3F2 | 68k move.b $10(a6), d4
db 0x1A, 0x2E, 0x00, 0x11 ; file 00E3F6 | 68k move.b $11(a6), d5
db 0x20, 0x6E, 0x00, 0x08 ; file 00E3FA | 68k movea.l $8(a6), a0
db 0x22, 0x6E, 0x00, 0x0C ; file 00E3FE | 68k movea.l $c(a6), a1
db 0x10, 0x18 ; file 00E402 | 68k move.b (a0)+, d0
db 0x72, 0x07 ; file 00E404 | 68k moveq #$7, d1
db 0xE2, 0x08 ; file 00E406 | 68k lsr.b #$1, d0
db 0x64, 0x08 ; file 00E408 | 68k bcc.b $6cac
db 0x12, 0xD8 ; file 00E40A | 68k move.b (a0)+, (a1)+
db 0x51, 0xC9, 0xFF, 0xF8 ; file 00E40C | 68k dbra d1, $6ca0
db 0x60, 0xF0 ; file 00E410 | 68k bra.b $6c9c
db 0x34, 0x18 ; file 00E412 | 68k move.w (a0)+, d2
db 0xE1, 0x5A ; file 00E414 | 68k rol.w #$8, d2
db 0x67, 0x1A ; file 00E416 | 68k beq.b $6ccc
db 0x36, 0x02 ; file 00E418 | 68k move.w d2, d3
db 0xC4, 0x44 ; file 00E41A | 68k and.w d4, d2
db 0xEA, 0x6B ; file 00E41C | 68k lsr.w d5, d3
db 0x24, 0x49 ; file 00E41E | 68k movea.l a1, a2
db 0x94, 0xC3 ; file 00E420 | 68k suba.w d3, a2
db 0x12, 0xDA ; file 00E422 | 68k move.b (a2)+, (a1)+
db 0x51, 0xCA, 0xFF, 0xFC ; file 00E424 | 68k dbra d2, $6cbc
db 0x12, 0xDA ; file 00E428 | 68k move.b (a2)+, (a1)+
db 0x12, 0xDA ; file 00E42A | 68k move.b (a2)+, (a1)+
db 0x51, 0xC9, 0xFF, 0xD8 ; file 00E42C | 68k dbra d1, $6ca0
db 0x60, 0xD0 ; file 00E430 | 68k bra.b $6c9c
db 0x93, 0xEE, 0x00, 0x0C ; file 00E432 | 68k suba.l $c(a6), a1
db 0x2D, 0x49, 0xFF, 0xFC ; file 00E436 | 68k move.l a1, -$4(a6)
db 0x4C, 0xDF, 0x7C, 0xF8 ; file 00E43A | 68k movem.l (a7)+, d3-d7/a2-a6
db 0x20, 0x2E, 0xFF, 0xFC ; file 00E43E | 68k move.l -$4(a6), d0
db 0x4E, 0x5E ; file 00E442 | 68k unlk a6
db 0x4E, 0x75 ; file 00E444 | 68k rts 
