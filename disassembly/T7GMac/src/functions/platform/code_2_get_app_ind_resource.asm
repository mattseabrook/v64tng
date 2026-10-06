; verified-role: Native GetAppIndResource routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetAppIndResource; evidence file offset 0x6518.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_app_ind_resource:
db 0x4E, 0x56, 0x00, 0x00 ; file 0064E8 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x08 ; file 0064EC | 68k movem.l d7/a4, -(a7)
db 0x42, 0x67 ; file 0064F0 | 68k clr.w -(a7)
db 0xA9, 0x94 ; file 0064F2 | 68k dc.w $a994
db 0x3E, 0x1F ; file 0064F4 | 68k move.w (a7)+, d7
db 0x3F, 0x2D, 0xDE, 0x1A ; file 0064F6 | 68k move.w -$21e6(a5), -(a7)
db 0xA9, 0x98 ; file 0064FA | 68k dc.w $a998
db 0x42, 0xA7 ; file 0064FC | 68k clr.l -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 0064FE | 68k move.l $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0C ; file 006502 | 68k move.w $c(a6), -(a7)
db 0xA8, 0x0E ; file 006506 | 68k dc.w $a80e
db 0x28, 0x5F ; file 006508 | 68k movea.l (a7)+, a4
db 0x3F, 0x07 ; file 00650A | 68k move.w d7, -(a7)
db 0xA9, 0x98 ; file 00650C | 68k dc.w $a998
db 0x20, 0x0C ; file 00650E | 68k move.l a4, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 006510 | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 006514 | 68k unlk a6
db 0x4E, 0x75 ; file 006516 | 68k rts 
