; verified-role: Native VDXPlayed routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: VDXPlayed; evidence file offset 0xb4c6.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_vdxplayed:
db 0x4E, 0x56, 0xFF, 0xE8 ; file 00B478 | 68k link.w a6, #$ffe8
db 0x3B, 0x7C, 0x00, 0x01, 0xFC, 0xC4 ; file 00B47C | 68k move.w #$1, -$33c(a5)
db 0x42, 0x6D, 0xF7, 0xC4 ; file 00B482 | 68k clr.w -$83c(a5)
db 0x42, 0x6D, 0xF7, 0xC0 ; file 00B486 | 68k clr.w -$840(a5)
db 0x42, 0x6D, 0xF7, 0xC2 ; file 00B48A | 68k clr.w -$83e(a5)
db 0x42, 0x6D, 0xF7, 0xBE ; file 00B48E | 68k clr.w -$842(a5)
db 0x42, 0x6D, 0xF7, 0xCA ; file 00B492 | 68k clr.w -$836(a5)
db 0x42, 0x6D, 0xF7, 0xCC ; file 00B496 | 68k clr.w -$834(a5)
db 0x42, 0x6D, 0xF7, 0xD2 ; file 00B49A | 68k clr.w -$82e(a5)
db 0x4A, 0x6D, 0xF8, 0x7E ; file 00B49E | 68k tst.w -$782(a5)
db 0x67, 0x1E ; file 00B4A2 | 68k beq.b $3d5c
db 0x42, 0x67 ; file 00B4A4 | 68k clr.w -(a7)
db 0x2F, 0x2D, 0xF8, 0xA4 ; file 00B4A6 | 68k move.l -$75c(a5), -(a7)
db 0x3F, 0x3C, 0x00, 0x18 ; file 00B4AA | 68k move.w #$18, -(a7)
db 0x48, 0x6E, 0xFF, 0xE8 ; file 00B4AE | 68k pea.l -$18(a6)
db 0x20, 0x3C, 0x00, 0x10, 0x00, 0x08 ; file 00B4B2 | 68k move.l #$100008, d0
db 0xA8, 0x00 ; file 00B4B8 | 68k dc.w $a800
db 0x4A, 0x2E, 0xFF, 0xF4 ; file 00B4BA | 68k tst.b -$c(a6)
db 0x54, 0x8F ; file 00B4BE | 68k addq.l #$2, a7
db 0x66, 0xE2 ; file 00B4C0 | 68k bne.b $3d3e
db 0x4E, 0x5E ; file 00B4C2 | 68k unlk a6
db 0x4E, 0x75 ; file 00B4C4 | 68k rts 
