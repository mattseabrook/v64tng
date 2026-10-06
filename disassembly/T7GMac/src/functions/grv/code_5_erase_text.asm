; verified-role: Native EraseText routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: EraseText; evidence file offset 0xb9ba.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_erase_text:
db 0x4E, 0x56, 0xFF, 0xF2 ; file 00B95A | 68k link.w a6, #$fff2
db 0x42, 0x6E, 0xFF, 0xFE ; file 00B95E | 68k clr.w -$2(a6)
db 0x42, 0x6E, 0xFF, 0xFC ; file 00B962 | 68k clr.w -$4(a6)
db 0x42, 0x6E, 0xFF, 0xFA ; file 00B966 | 68k clr.w -$6(a6)
db 0x48, 0x6E, 0xFF, 0xFA ; file 00B96A | 68k pea.l -$6(a6)
db 0xAA, 0x14 ; file 00B96E | 68k dc.w $aa14
db 0x48, 0x6E, 0xFF, 0xFA ; file 00B970 | 68k pea.l -$6(a6)
db 0xAA, 0x15 ; file 00B974 | 68k dc.w $aa15
db 0x30, 0x2D, 0xF5, 0xB4 ; file 00B976 | 68k move.w -$a4c(a5), d0
db 0x90, 0x6D, 0xF5, 0xB0 ; file 00B97A | 68k sub.w -$a50(a5), d0
db 0xE2, 0x40 ; file 00B97E | 68k asr.w #$1, d0
db 0xD0, 0x6D, 0xF5, 0xB0 ; file 00B980 | 68k add.w -$a50(a5), d0
db 0x06, 0x40, 0xFF, 0xCE ; file 00B984 | 68k addi.w #$ffce, d0
db 0x3D, 0x40, 0xFF, 0xF4 ; file 00B988 | 68k move.w d0, -$c(a6)
db 0x30, 0x2E, 0xFF, 0xF4 ; file 00B98C | 68k move.w -$c(a6), d0
db 0x06, 0x40, 0x00, 0xC8 ; file 00B990 | 68k addi.w #$c8, d0
db 0x3D, 0x40, 0xFF, 0xF8 ; file 00B994 | 68k move.w d0, -$8(a6)
db 0x70, 0xFB ; file 00B998 | 68k moveq #$fb, d0
db 0xD0, 0x6D, 0xF5, 0xAE ; file 00B99A | 68k add.w -$a52(a5), d0
db 0x3D, 0x40, 0xFF, 0xF6 ; file 00B99E | 68k move.w d0, -$a(a6)
db 0x70, 0xDD ; file 00B9A2 | 68k moveq #$dd, d0
db 0xD0, 0x6E, 0xFF, 0xF6 ; file 00B9A4 | 68k add.w -$a(a6), d0
db 0x3D, 0x40, 0xFF, 0xF2 ; file 00B9A8 | 68k move.w d0, -$e(a6)
db 0x48, 0x6E, 0xFF, 0xF2 ; file 00B9AC | 68k pea.l -$e(a6)
db 0x48, 0x6D, 0xFD, 0xAC ; file 00B9B0 | 68k pea.l -$254(a5)
db 0xA8, 0xA5 ; file 00B9B4 | 68k dc.w $a8a5
db 0x4E, 0x5E ; file 00B9B6 | 68k unlk a6
db 0x4E, 0x75 ; file 00B9B8 | 68k rts 
