; recovered-symbol-candidate: Native InitCCCTable routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: InitCCCTable; evidence file offset 0xecc0.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_init_ccctable:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00EC42 | 68k link.w a6, #$fffc
db 0x42, 0xAE, 0xFF, 0xFC ; file 00EC46 | 68k clr.l -$4(a6)
db 0x60, 0x2E ; file 00EC4A | 68k bra.b $7514
db 0x20, 0x2E, 0xFF, 0xFC ; file 00EC4C | 68k move.l -$4(a6), d0
db 0x72, 0x18 ; file 00EC50 | 68k moveq #$18, d1
db 0xE3, 0xA8 ; file 00EC52 | 68k lsl.l d1, d0
db 0x22, 0x2E, 0xFF, 0xFC ; file 00EC54 | 68k move.l -$4(a6), d1
db 0x74, 0x10 ; file 00EC58 | 68k moveq #$10, d2
db 0xE5, 0xA9 ; file 00EC5A | 68k lsl.l d2, d1
db 0x80, 0x81 ; file 00EC5C | 68k or.l d1, d0
db 0x22, 0x2E, 0xFF, 0xFC ; file 00EC5E | 68k move.l -$4(a6), d1
db 0xE1, 0x89 ; file 00EC62 | 68k lsl.l #$8, d1
db 0x80, 0x81 ; file 00EC64 | 68k or.l d1, d0
db 0x80, 0xAE, 0xFF, 0xFC ; file 00EC66 | 68k or.l -$4(a6), d0
db 0x22, 0x2E, 0xFF, 0xFC ; file 00EC6A | 68k move.l -$4(a6), d1
db 0xE5, 0x89 ; file 00EC6E | 68k lsl.l #$2, d1
db 0x2D, 0x80, 0x19, 0x25, 0x00, 0x08 ; file 00EC70 | 68k move.l d0, ([$8, a6], d1.l)
db 0x52, 0xAE, 0xFF, 0xFC ; file 00EC76 | 68k addq.l #$1, -$4(a6)
db 0x0C, 0xAE, 0x00, 0x00, 0x01, 0x00, 0xFF, 0xFC ; file 00EC7A | 68k cmpi.l #$100, -$4(a6)
db 0x6D, 0xC8 ; file 00EC82 | 68k blt.b $74e6
db 0x48, 0xE7, 0x1F, 0x3E ; file 00EC84 | 68k movem.l d3-d7/a2-a6, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 00EC88 | 68k movea.l $8(a6), a0
db 0xD1, 0xFC, 0x00, 0x00, 0x04, 0x00 ; file 00EC8C | 68k adda.l #$400, a0
db 0x7E, 0x00 ; file 00EC92 | 68k moveq #$0, d7
db 0x38, 0x3C, 0x00, 0xFF ; file 00EC94 | 68k move.w #$ff, d4
db 0x7C, 0x0F ; file 00EC98 | 68k moveq #$f, d6
db 0x2A, 0x07 ; file 00EC9A | 68k move.l d7, d5
db 0x46, 0x05 ; file 00EC9C | 68k not.b d5
db 0xE1, 0x5D ; file 00EC9E | 68k rol.w #$8, d5
db 0x46, 0x05 ; file 00ECA0 | 68k not.b d5
db 0xDA, 0x45 ; file 00ECA2 | 68k add.w d5, d5
db 0x64, 0x04 ; file 00ECA4 | 68k bcc.b $7544
db 0x10, 0xC4 ; file 00ECA6 | 68k move.b d4, (a0)+
db 0x60, 0x02 ; file 00ECA8 | 68k bra.b $7546
db 0x42, 0x18 ; file 00ECAA | 68k clr.b (a0)+
db 0x51, 0xCE, 0xFF, 0xF4 ; file 00ECAC | 68k dbra d6, $753c
db 0x52, 0x47 ; file 00ECB0 | 68k addq.w #$1, d7
db 0x0C, 0x47, 0x7F, 0xFF ; file 00ECB2 | 68k cmpi.w #$7fff, d7
db 0x63, 0xE0 ; file 00ECB6 | 68k bls.b $7532
db 0x4C, 0xDF, 0x7C, 0xF8 ; file 00ECB8 | 68k movem.l (a7)+, d3-d7/a2-a6
db 0x4E, 0x5E ; file 00ECBC | 68k unlk a6
db 0x4E, 0x75 ; file 00ECBE | 68k rts 
