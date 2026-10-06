; verified-role: Native SetUpText routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: SetUpText; evidence file offset 0xb94e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_set_up_text:
db 0x4E, 0x56, 0xFF, 0xFA ; file 00B902 | 68k link.w a6, #$fffa
db 0x30, 0x2D, 0xF5, 0xB4 ; file 00B906 | 68k move.w -$a4c(a5), d0
db 0x90, 0x6D, 0xF5, 0xB0 ; file 00B90A | 68k sub.w -$a50(a5), d0
db 0xE2, 0x40 ; file 00B90E | 68k asr.w #$1, d0
db 0xD0, 0x6D, 0xF5, 0xB0 ; file 00B910 | 68k add.w -$a50(a5), d0
db 0x06, 0x40, 0xFF, 0xCE ; file 00B914 | 68k addi.w #$ffce, d0
db 0x3F, 0x00 ; file 00B918 | 68k move.w d0, -(a7)
db 0x70, 0xF1 ; file 00B91A | 68k moveq #$f1, d0
db 0xD0, 0x6D, 0xF5, 0xAE ; file 00B91C | 68k add.w -$a52(a5), d0
db 0x3F, 0x00 ; file 00B920 | 68k move.w d0, -(a7)
db 0xA8, 0x93 ; file 00B922 | 68k dc.w $a893
db 0x70, 0xFF ; file 00B924 | 68k moveq #$ff, d0
db 0x3D, 0x40, 0xFF, 0xFE ; file 00B926 | 68k move.w d0, -$2(a6)
db 0x3D, 0x40, 0xFF, 0xFC ; file 00B92A | 68k move.w d0, -$4(a6)
db 0x3D, 0x40, 0xFF, 0xFA ; file 00B92E | 68k move.w d0, -$6(a6)
db 0x48, 0x6E, 0xFF, 0xFA ; file 00B932 | 68k pea.l -$6(a6)
db 0xAA, 0x14 ; file 00B936 | 68k dc.w $aa14
db 0x42, 0x6E, 0xFF, 0xFE ; file 00B938 | 68k clr.w -$2(a6)
db 0x42, 0x6E, 0xFF, 0xFC ; file 00B93C | 68k clr.w -$4(a6)
db 0x42, 0x6E, 0xFF, 0xFA ; file 00B940 | 68k clr.w -$6(a6)
db 0x48, 0x6E, 0xFF, 0xFA ; file 00B944 | 68k pea.l -$6(a6)
db 0xAA, 0x15 ; file 00B948 | 68k dc.w $aa15
db 0x4E, 0x5E ; file 00B94A | 68k unlk a6
db 0x4E, 0x75 ; file 00B94C | 68k rts 
