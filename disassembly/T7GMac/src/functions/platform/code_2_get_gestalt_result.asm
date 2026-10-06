; verified-role: Native GetGestaltResult routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetGestaltResult; evidence file offset 0x6750.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_gestalt_result:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00672E | 68k link.w a6, #$fffc
db 0x42, 0x67 ; file 006732 | 68k clr.w -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 006734 | 68k move.l $8(a6), -(a7)
db 0x48, 0x6E, 0xFF, 0xFC ; file 006738 | 68k pea.l -$4(a6)
db 0x4E, 0xAD, 0x02, 0x3A ; file 00673C | 68k jsr $23a(a5)
db 0x4A, 0x5F ; file 006740 | 68k tst.w (a7)+
db 0x66, 0x06 ; file 006742 | 68k bne.b $56e2
db 0x20, 0x2E, 0xFF, 0xFC ; file 006744 | 68k move.l -$4(a6), d0
db 0x60, 0x02 ; file 006748 | 68k bra.b $56e4
db 0x70, 0x00 ; file 00674A | 68k moveq #$0, d0
db 0x4E, 0x5E ; file 00674C | 68k unlk a6
db 0x4E, 0x75 ; file 00674E | 68k rts 
