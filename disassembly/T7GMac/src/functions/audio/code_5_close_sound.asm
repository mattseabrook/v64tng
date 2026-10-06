; verified-role: Native CloseSound routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: CloseSound; evidence file offset 0xbb32.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_close_sound:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 00BB04 | 68k link.w a6, #$fff8
db 0x3D, 0x7C, 0x00, 0x04, 0xFF, 0xF8 ; file 00BB08 | 68k move.w #$4, -$8(a6)
db 0x42, 0x6E, 0xFF, 0xFA ; file 00BB0E | 68k clr.w -$6(a6)
db 0x42, 0xAE, 0xFF, 0xFC ; file 00BB12 | 68k clr.l -$4(a6)
db 0x4A, 0xAD, 0xF8, 0xA4 ; file 00BB16 | 68k tst.l -$75c(a5)
db 0x67, 0x0E ; file 00BB1A | 68k beq.b $43c4
db 0x42, 0x67 ; file 00BB1C | 68k clr.w -(a7)
db 0x2F, 0x2D, 0xF8, 0xA4 ; file 00BB1E | 68k move.l -$75c(a5), -(a7)
db 0x48, 0x6E, 0xFF, 0xF8 ; file 00BB22 | 68k pea.l -$8(a6)
db 0xA8, 0x04 ; file 00BB26 | 68k dc.w $a804
db 0x54, 0x8F ; file 00BB28 | 68k addq.l #$2, a7
db 0x4E, 0xAD, 0x02, 0x2A ; file 00BB2A | 68k jsr $22a(a5)
db 0x4E, 0x5E ; file 00BB2E | 68k unlk a6
db 0x4E, 0x75 ; file 00BB30 | 68k rts 
