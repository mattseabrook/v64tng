; verified-role: Native GetAppNamedResource routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetAppNamedResource; evidence file offset 0x6566.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_app_named_resource:
db 0x4E, 0x56, 0x00, 0x00 ; file 00652C | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x08 ; file 006530 | 68k movem.l d7/a4, -(a7)
db 0x42, 0x67 ; file 006534 | 68k clr.w -(a7)
db 0xA9, 0x94 ; file 006536 | 68k dc.w $a994
db 0x3E, 0x1F ; file 006538 | 68k move.w (a7)+, d7
db 0x3F, 0x2D, 0xDE, 0x1A ; file 00653A | 68k move.w -$21e6(a5), -(a7)
db 0xA9, 0x98 ; file 00653E | 68k dc.w $a998
db 0x42, 0xA7 ; file 006540 | 68k clr.l -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 006542 | 68k move.l $8(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 006546 | 68k move.l $c(a6), -(a7)
db 0xA8, 0x20 ; file 00654A | 68k dc.w $a820
db 0x28, 0x5F ; file 00654C | 68k movea.l (a7)+, a4
db 0x42, 0x67 ; file 00654E | 68k clr.w -(a7)
db 0xA9, 0xAF ; file 006550 | 68k dc.w $a9af
db 0x20, 0x6E, 0x00, 0x10 ; file 006552 | 68k movea.l $10(a6), a0
db 0x30, 0x9F ; file 006556 | 68k move.w (a7)+, (a0)
db 0x3F, 0x07 ; file 006558 | 68k move.w d7, -(a7)
db 0xA9, 0x98 ; file 00655A | 68k dc.w $a998
db 0x20, 0x0C ; file 00655C | 68k move.l a4, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 00655E | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 006562 | 68k unlk a6
db 0x4E, 0x75 ; file 006564 | 68k rts 
