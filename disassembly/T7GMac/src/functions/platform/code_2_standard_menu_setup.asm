; verified-role: Native StandardMenuSetup routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: StandardMenuSetup; evidence file offset 0x7390.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_standard_menu_setup:
db 0x4E, 0x56, 0x00, 0x00 ; file 00734E | 68k link.w a6, #$0
db 0x2F, 0x0C ; file 007352 | 68k move.l a4, -(a7)
db 0x42, 0xA7 ; file 007354 | 68k clr.l -(a7)
db 0x3F, 0x2E, 0x00, 0x08 ; file 007356 | 68k move.w $8(a6), -(a7)
db 0xA9, 0xC0 ; file 00735A | 68k dc.w $a9c0
db 0x28, 0x5F ; file 00735C | 68k movea.l (a7)+, a4
db 0x20, 0x0C ; file 00735E | 68k move.l a4, d0
db 0x66, 0x0C ; file 007360 | 68k bne.b $6306
db 0x2F, 0x3C, 0x01, 0x00, 0x00, 0x02 ; file 007362 | 68k move.l #$1000002, -(a7)
db 0x4E, 0xBA, 0xEF, 0xCC ; file 007368 | 68k jsr $52ce(pc)
db 0x58, 0x8F ; file 00736C | 68k addq.l #$4, a7
db 0x2F, 0x0C ; file 00736E | 68k move.l a4, -(a7)
db 0xA9, 0x3C ; file 007370 | 68k dc.w $a93c
db 0x20, 0x4C ; file 007372 | 68k movea.l a4, a0
db 0xA0, 0x23 ; file 007374 | 68k dc.w $a023
db 0x42, 0xA7 ; file 007376 | 68k clr.l -(a7)
db 0x3F, 0x2E, 0x00, 0x0A ; file 007378 | 68k move.w $a(a6), -(a7)
db 0xA9, 0x49 ; file 00737C | 68k dc.w $a949
db 0x2F, 0x3C, 0x44, 0x52, 0x56, 0x52 ; file 00737E | 68k move.l #$44525652, -(a7)
db 0xA9, 0x4D ; file 007384 | 68k dc.w $a94d
db 0x4E, 0xAD, 0x01, 0xBA ; file 007386 | 68k jsr $1ba(a5)
db 0x28, 0x5F ; file 00738A | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 00738C | 68k unlk a6
db 0x4E, 0x75 ; file 00738E | 68k rts 
