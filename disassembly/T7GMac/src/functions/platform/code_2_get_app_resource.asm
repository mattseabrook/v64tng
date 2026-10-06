; verified-role: Native GetAppResource routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetAppResource; evidence file offset 0x65b6.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_app_resource:
db 0x4E, 0x56, 0x00, 0x00 ; file 00657C | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x08 ; file 006580 | 68k movem.l d7/a4, -(a7)
db 0x42, 0x67 ; file 006584 | 68k clr.w -(a7)
db 0xA9, 0x94 ; file 006586 | 68k dc.w $a994
db 0x3E, 0x1F ; file 006588 | 68k move.w (a7)+, d7
db 0x3F, 0x2D, 0xDE, 0x1A ; file 00658A | 68k move.w -$21e6(a5), -(a7)
db 0xA9, 0x98 ; file 00658E | 68k dc.w $a998
db 0x42, 0xA7 ; file 006590 | 68k clr.l -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 006592 | 68k move.l $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0C ; file 006596 | 68k move.w $c(a6), -(a7)
db 0xA8, 0x1F ; file 00659A | 68k dc.w $a81f
db 0x28, 0x5F ; file 00659C | 68k movea.l (a7)+, a4
db 0x42, 0x67 ; file 00659E | 68k clr.w -(a7)
db 0xA9, 0xAF ; file 0065A0 | 68k dc.w $a9af
db 0x20, 0x6E, 0x00, 0x0E ; file 0065A2 | 68k movea.l $e(a6), a0
db 0x30, 0x9F ; file 0065A6 | 68k move.w (a7)+, (a0)
db 0x3F, 0x07 ; file 0065A8 | 68k move.w d7, -(a7)
db 0xA9, 0x98 ; file 0065AA | 68k dc.w $a998
db 0x20, 0x0C ; file 0065AC | 68k move.l a4, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 0065AE | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 0065B2 | 68k unlk a6
db 0x4E, 0x75 ; file 0065B4 | 68k rts 
