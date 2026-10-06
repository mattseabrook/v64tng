; verified-role: Native ClearEOL routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: ClearEOL; evidence file offset 0xba16.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_clear_eol:
db 0x4E, 0x56, 0xFF, 0xEE ; file 00B9C6 | 68k link.w a6, #$ffee
db 0x42, 0x6E, 0xFF, 0xFE ; file 00B9CA | 68k clr.w -$2(a6)
db 0x42, 0x6E, 0xFF, 0xFC ; file 00B9CE | 68k clr.w -$4(a6)
db 0x42, 0x6E, 0xFF, 0xFA ; file 00B9D2 | 68k clr.w -$6(a6)
db 0x48, 0x6E, 0xFF, 0xFA ; file 00B9D6 | 68k pea.l -$6(a6)
db 0xAA, 0x14 ; file 00B9DA | 68k dc.w $aa14
db 0x48, 0x6E, 0xFF, 0xFA ; file 00B9DC | 68k pea.l -$6(a6)
db 0xAA, 0x15 ; file 00B9E0 | 68k dc.w $aa15
db 0x48, 0x6E, 0xFF, 0xEE ; file 00B9E2 | 68k pea.l -$12(a6)
db 0xA8, 0x9A ; file 00B9E6 | 68k dc.w $a89a
db 0x3D, 0x6E, 0xFF, 0xF0, 0xFF, 0xF4 ; file 00B9E8 | 68k move.w -$10(a6), -$c(a6)
db 0x3D, 0x6D, 0xF5, 0xB4, 0xFF, 0xF8 ; file 00B9EE | 68k move.w -$a4c(a5), -$8(a6)
db 0x70, 0xFB ; file 00B9F4 | 68k moveq #$fb, d0
db 0xD0, 0x6D, 0xF5, 0xAE ; file 00B9F6 | 68k add.w -$a52(a5), d0
db 0x3D, 0x40, 0xFF, 0xF6 ; file 00B9FA | 68k move.w d0, -$a(a6)
db 0x70, 0xDD ; file 00B9FE | 68k moveq #$dd, d0
db 0xD0, 0x6E, 0xFF, 0xF6 ; file 00BA00 | 68k add.w -$a(a6), d0
db 0x3D, 0x40, 0xFF, 0xF2 ; file 00BA04 | 68k move.w d0, -$e(a6)
db 0x48, 0x6E, 0xFF, 0xF2 ; file 00BA08 | 68k pea.l -$e(a6)
db 0x48, 0x6D, 0xFD, 0xAC ; file 00BA0C | 68k pea.l -$254(a5)
db 0xA8, 0xA5 ; file 00BA10 | 68k dc.w $a8a5
db 0x4E, 0x5E ; file 00BA12 | 68k unlk a6
db 0x4E, 0x75 ; file 00BA14 | 68k rts 
