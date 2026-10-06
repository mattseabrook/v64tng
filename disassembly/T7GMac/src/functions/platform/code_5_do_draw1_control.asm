; verified-role: Native DoDraw1Control routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoDraw1Control; evidence file offset 0xbffa.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_do_draw1_control:
db 0x4E, 0x56, 0xFF, 0xF4 ; file 00BF42 | 68k link.w a6, #$fff4
db 0x48, 0xE7, 0x01, 0x38 ; file 00BF46 | 68k movem.l d7/a2-a4, -(a7)
db 0x26, 0x6E, 0x00, 0x08 ; file 00BF4A | 68k movea.l $8(a6), a3
db 0x42, 0xA7 ; file 00BF4E | 68k clr.l -(a7)
db 0xA9, 0x24 ; file 00BF50 | 68k dc.w $a924
db 0x20, 0x53 ; file 00BF52 | 68k movea.l (a3), a0
db 0x28, 0x68, 0x00, 0x04 ; file 00BF54 | 68k movea.l $4(a0), a4
db 0xB9, 0xDF ; file 00BF58 | 68k cmpa.l (a7)+, a4
db 0x57, 0xC7 ; file 00BF5A | 68k seq.b d7
db 0x44, 0x07 ; file 00BF5C | 68k neg.b d7
db 0x4A, 0xAD, 0xF8, 0xB8 ; file 00BF5E | 68k tst.l -$748(a5)
db 0x66, 0x36 ; file 00BF62 | 68k bne.b $4834
db 0x48, 0x6E, 0xFF, 0xF4 ; file 00BF64 | 68k pea.l -$c(a6)
db 0x42, 0xA7 ; file 00BF68 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x00, 0x64, 0x00, 0x10 ; file 00BF6A | 68k move.l #$640010, -(a7)
db 0xA8, 0xA7 ; file 00BF70 | 68k dc.w $a8a7
db 0x42, 0xA7 ; file 00BF72 | 68k clr.l -(a7)
db 0x2F, 0x0C ; file 00BF74 | 68k move.l a4, -(a7)
db 0x48, 0x6E, 0xFF, 0xF4 ; file 00BF76 | 68k pea.l -$c(a6)
db 0x42, 0xA7 ; file 00BF7A | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 00BF7C | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 00BF7E | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x00, 0x10 ; file 00BF80 | 68k move.w #$10, -(a7)
db 0x42, 0xA7 ; file 00BF84 | 68k clr.l -(a7)
db 0xA9, 0x54 ; file 00BF86 | 68k dc.w $a954
db 0x24, 0x5F ; file 00BF88 | 68k movea.l (a7)+, a2
db 0x20, 0x0A ; file 00BF8A | 68k move.l a2, d0
db 0x67, 0x0C ; file 00BF8C | 68k beq.b $4834
db 0x20, 0x52 ; file 00BF8E | 68k movea.l (a2), a0
db 0x2B, 0x68, 0x00, 0x18, 0xF8, 0xB8 ; file 00BF90 | 68k move.l $18(a0), -$748(a5)
db 0x2F, 0x0A ; file 00BF96 | 68k move.l a2, -(a7)
db 0xA9, 0x55 ; file 00BF98 | 68k dc.w $a955
db 0x20, 0x53 ; file 00BF9A | 68k movea.l (a3), a0
db 0x20, 0x28, 0x00, 0x18 ; file 00BF9C | 68k move.l $18(a0), d0
db 0xB0, 0xAD, 0xF8, 0xB8 ; file 00BFA0 | 68k cmp.l -$748(a5), d0
db 0x66, 0x42 ; file 00BFA4 | 68k bne.b $4882
db 0x4A, 0x07 ; file 00BFA6 | 68k tst.b d7
db 0x67, 0x06 ; file 00BFA8 | 68k beq.b $484a
db 0x2F, 0x0B ; file 00BFAA | 68k move.l a3, -(a7)
db 0xA9, 0x6D ; file 00BFAC | 68k dc.w $a96d
db 0x60, 0x42 ; file 00BFAE | 68k bra.b $488c
db 0x48, 0x6E, 0xFF, 0xFC ; file 00BFB0 | 68k pea.l -$4(a6)
db 0xA8, 0x74 ; file 00BFB4 | 68k dc.w $a874
db 0x2F, 0x0C ; file 00BFB6 | 68k move.l a4, -(a7)
db 0xA8, 0x73 ; file 00BFB8 | 68k dc.w $a873
db 0x20, 0x53 ; file 00BFBA | 68k movea.l (a3), a0
db 0x2D, 0x68, 0x00, 0x08, 0xFF, 0xF4 ; file 00BFBC | 68k move.l $8(a0), -$c(a6)
db 0x2D, 0x68, 0x00, 0x0C, 0xFF, 0xF8 ; file 00BFC2 | 68k move.l $c(a0), -$8(a6)
db 0x48, 0x6E, 0xFF, 0xF4 ; file 00BFC8 | 68k pea.l -$c(a6)
db 0xA8, 0xA1 ; file 00BFCC | 68k dc.w $a8a1
db 0x48, 0x6E, 0xFF, 0xF4 ; file 00BFCE | 68k pea.l -$c(a6)
db 0x2F, 0x3C, 0x00, 0x01, 0x00, 0x01 ; file 00BFD2 | 68k move.l #$10001, -(a7)
db 0xA8, 0xA9 ; file 00BFD8 | 68k dc.w $a8a9
db 0x48, 0x6E, 0xFF, 0xF4 ; file 00BFDA | 68k pea.l -$c(a6)
db 0xA8, 0xA3 ; file 00BFDE | 68k dc.w $a8a3
db 0x2F, 0x2E, 0xFF, 0xFC ; file 00BFE0 | 68k move.l -$4(a6), -(a7)
db 0xA8, 0x73 ; file 00BFE4 | 68k dc.w $a873
db 0x60, 0x0A ; file 00BFE6 | 68k bra.b $488c
db 0x4A, 0x2E, 0x00, 0x0C ; file 00BFE8 | 68k tst.b $c(a6)
db 0x66, 0x04 ; file 00BFEC | 68k bne.b $488c
db 0x2F, 0x0B ; file 00BFEE | 68k move.l a3, -(a7)
db 0xA9, 0x6D ; file 00BFF0 | 68k dc.w $a96d
db 0x4C, 0xDF, 0x1C, 0x80 ; file 00BFF2 | 68k movem.l (a7)+, d7/a2-a4
db 0x4E, 0x5E ; file 00BFF6 | 68k unlk a6
db 0x4E, 0x75 ; file 00BFF8 | 68k rts 
