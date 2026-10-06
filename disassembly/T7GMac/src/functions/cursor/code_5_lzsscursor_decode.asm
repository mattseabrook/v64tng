; recovered-symbol-candidate: Native LZSSCursorDecode routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: LZSSCursorDecode; evidence file offset 0x9196.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_lzsscursor_decode:
db 0x4E, 0x56, 0xFF, 0xFC ; file 009140 | 68k link.w a6, #$fffc
db 0x48, 0xE7, 0x18, 0x20 ; file 009144 | 68k movem.l d3-d4/a2, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 009148 | 68k movea.l $8(a6), a0
db 0x22, 0x6E, 0x00, 0x0C ; file 00914C | 68k movea.l $c(a6), a1
db 0x78, 0x0F ; file 009150 | 68k moveq #$f, d4
db 0x10, 0x18 ; file 009152 | 68k move.b (a0)+, d0
db 0x72, 0x07 ; file 009154 | 68k moveq #$7, d1
db 0xE2, 0x08 ; file 009156 | 68k lsr.b #$1, d0
db 0x64, 0x08 ; file 009158 | 68k bcc.b $19fc
db 0x12, 0xD8 ; file 00915A | 68k move.b (a0)+, (a1)+
db 0x51, 0xC9, 0xFF, 0xF8 ; file 00915C | 68k dbra d1, $19f0
db 0x60, 0xF0 ; file 009160 | 68k bra.b $19ec
db 0x36, 0x18 ; file 009162 | 68k move.w (a0)+, d3
db 0x67, 0x1C ; file 009164 | 68k beq.b $1a1c
db 0x34, 0x03 ; file 009166 | 68k move.w d3, d2
db 0xC4, 0x44 ; file 009168 | 68k and.w d4, d2
db 0xE8, 0x0B ; file 00916A | 68k lsr.b #$4, d3
db 0xE1, 0x5B ; file 00916C | 68k rol.w #$8, d3
db 0x24, 0x49 ; file 00916E | 68k movea.l a1, a2
db 0x94, 0xC3 ; file 009170 | 68k suba.w d3, a2
db 0x12, 0xDA ; file 009172 | 68k move.b (a2)+, (a1)+
db 0x51, 0xCA, 0xFF, 0xFC ; file 009174 | 68k dbra d2, $1a0c
db 0x12, 0xDA ; file 009178 | 68k move.b (a2)+, (a1)+
db 0x12, 0xDA ; file 00917A | 68k move.b (a2)+, (a1)+
db 0x51, 0xC9, 0xFF, 0xD8 ; file 00917C | 68k dbra d1, $19f0
db 0x60, 0xD0 ; file 009180 | 68k bra.b $19ec
db 0x93, 0xEE, 0x00, 0x0C ; file 009182 | 68k suba.l $c(a6), a1
db 0x2D, 0x49, 0xFF, 0xFC ; file 009186 | 68k move.l a1, -$4(a6)
db 0x4C, 0xDF, 0x04, 0x18 ; file 00918A | 68k movem.l (a7)+, d3-d4/a2
db 0x20, 0x2E, 0xFF, 0xFC ; file 00918E | 68k move.l -$4(a6), d0
db 0x4E, 0x5E ; file 009192 | 68k unlk a6
db 0x4E, 0x75 ; file 009194 | 68k rts 
