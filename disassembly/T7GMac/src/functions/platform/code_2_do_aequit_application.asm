; verified-role: Native DoAEQuitApplication routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoAEQuitApplication; evidence file offset 0x522c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_do_aequit_application:
db 0x4E, 0x56, 0xFF, 0xFE ; file 0051F0 | 68k link.w a6, #$fffe
db 0x42, 0xAD, 0xDC, 0xA8 ; file 0051F4 | 68k clr.l -$2358(a5)
db 0x1B, 0x7C, 0x00, 0x01, 0xDD, 0x00 ; file 0051F8 | 68k move.b #$1, -$2300(a5)
db 0x42, 0x6E, 0xFF, 0xFE ; file 0051FE | 68k clr.w -$2(a6)
db 0x42, 0x67 ; file 005202 | 68k clr.w -(a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 005204 | 68k move.l $c(a6), -(a7)
db 0x2F, 0x3C, 0x65, 0x72, 0x72, 0x6E ; file 005208 | 68k move.l #$6572726e, -(a7)
db 0x2F, 0x3C, 0x73, 0x68, 0x6F, 0x72 ; file 00520E | 68k move.l #$73686f72, -(a7)
db 0x48, 0x6E, 0xFF, 0xFE ; file 005214 | 68k pea.l -$2(a6)
db 0x48, 0x78, 0x00, 0x02 ; file 005218 | 68k pea.l $2.w
db 0x30, 0x3C, 0x0A, 0x0F ; file 00521C | 68k move.w #$a0f, d0
db 0xA8, 0x16 ; file 005220 | 68k dc.w $a816
db 0x42, 0x6E, 0x00, 0x14 ; file 005222 | 68k clr.w $14(a6)
db 0x4E, 0x5E ; file 005226 | 68k unlk a6
db 0x4E, 0x74, 0x00, 0x0C ; file 005228 | 68k rtd #$c
