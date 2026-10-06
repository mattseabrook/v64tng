; verified-role: Native GetMainScreenRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetMainScreenRect; evidence file offset 0x686c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_main_screen_rect:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00682A | 68k link.w a6, #$fffc
db 0x2F, 0x0C ; file 00682E | 68k move.l a4, -(a7)
db 0x4A, 0x6D, 0xDE, 0x0E ; file 006830 | 68k tst.w -$21f2(a5)
db 0x6F, 0x18 ; file 006834 | 68k ble.b $57e6
db 0x42, 0xA7 ; file 006836 | 68k clr.l -(a7)
db 0xAA, 0x2A ; file 006838 | 68k dc.w $aa2a
db 0x28, 0x5F ; file 00683A | 68k movea.l (a7)+, a4
db 0x20, 0x54 ; file 00683C | 68k movea.l (a4), a0
db 0x22, 0x6E, 0x00, 0x08 ; file 00683E | 68k movea.l $8(a6), a1
db 0x22, 0xA8, 0x00, 0x22 ; file 006842 | 68k move.l $22(a0), (a1)
db 0x23, 0x68, 0x00, 0x26, 0x00, 0x04 ; file 006846 | 68k move.l $26(a0), $4(a1)
db 0x60, 0x18 ; file 00684C | 68k bra.b $57fe
db 0x48, 0x6E, 0xFF, 0xFC ; file 00684E | 68k pea.l -$4(a6)
db 0xA9, 0x10 ; file 006852 | 68k dc.w $a910
db 0x20, 0x6E, 0xFF, 0xFC ; file 006854 | 68k movea.l -$4(a6), a0
db 0x22, 0x6E, 0x00, 0x08 ; file 006858 | 68k movea.l $8(a6), a1
db 0x22, 0xA8, 0x00, 0x10 ; file 00685C | 68k move.l $10(a0), (a1)
db 0x23, 0x68, 0x00, 0x14, 0x00, 0x04 ; file 006860 | 68k move.l $14(a0), $4(a1)
db 0x28, 0x5F ; file 006866 | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 006868 | 68k unlk a6
db 0x4E, 0x75 ; file 00686A | 68k rts 
