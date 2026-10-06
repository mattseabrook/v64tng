; verified-role: Native DoAEOpenApplication routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoAEOpenApplication; evidence file offset 0x5106.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_do_aeopen_application:
db 0x4E, 0x56, 0xFF, 0xFA ; file 0050A4 | 68k link.w a6, #$fffa
db 0x42, 0xAD, 0xDC, 0xA8 ; file 0050A8 | 68k clr.l -$2358(a5)
db 0x48, 0x6E, 0xFF, 0xFC ; file 0050AC | 68k pea.l -$4(a6)
db 0x4E, 0xBA, 0x05, 0xAE ; file 0050B0 | 68k jsr $45f8(pc)
db 0x3D, 0x40, 0xFF, 0xFA ; file 0050B4 | 68k move.w d0, -$6(a6)
db 0x4A, 0x40 ; file 0050B8 | 68k tst.w d0
db 0x58, 0x8F ; file 0050BA | 68k addq.l #$4, a7
db 0x66, 0x1C ; file 0050BC | 68k bne.b $4072
db 0x42, 0xA7 ; file 0050BE | 68k clr.l -(a7)
db 0x2F, 0x2E, 0xFF, 0xFC ; file 0050C0 | 68k move.l -$4(a6), -(a7)
db 0x4E, 0xBA, 0x25, 0x04 ; file 0050C4 | 68k jsr $6562(pc)
db 0x3D, 0x40, 0xFF, 0xFA ; file 0050C8 | 68k move.w d0, -$6(a6)
db 0x50, 0x8F ; file 0050CC | 68k addq.l #$8, a7
db 0x67, 0x0A ; file 0050CE | 68k beq.b $4072
db 0x2F, 0x2E, 0xFF, 0xFC ; file 0050D0 | 68k move.l -$4(a6), -(a7)
db 0x4E, 0xBA, 0x05, 0x12 ; file 0050D4 | 68k jsr $4580(pc)
db 0x58, 0x8F ; file 0050D8 | 68k addq.l #$4, a7
db 0x42, 0x67 ; file 0050DA | 68k clr.w -(a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 0050DC | 68k move.l $c(a6), -(a7)
db 0x2F, 0x3C, 0x65, 0x72, 0x72, 0x6E ; file 0050E0 | 68k move.l #$6572726e, -(a7)
db 0x2F, 0x3C, 0x73, 0x68, 0x6F, 0x72 ; file 0050E6 | 68k move.l #$73686f72, -(a7)
db 0x48, 0x6E, 0xFF, 0xFA ; file 0050EC | 68k pea.l -$6(a6)
db 0x48, 0x78, 0x00, 0x02 ; file 0050F0 | 68k pea.l $2.w
db 0x30, 0x3C, 0x0A, 0x0F ; file 0050F4 | 68k move.w #$a0f, d0
db 0xA8, 0x16 ; file 0050F8 | 68k dc.w $a816
db 0x3D, 0x6E, 0xFF, 0xFA, 0x00, 0x14 ; file 0050FA | 68k move.w -$6(a6), $14(a6)
db 0x4E, 0x5E ; file 005100 | 68k unlk a6
db 0x4E, 0x74, 0x00, 0x0C ; file 005102 | 68k rtd #$c
