; verified-role: Native DisplayGetFile routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DisplayGetFile; evidence file offset 0x5b94.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_display_get_file:
db 0x4E, 0x56, 0xFF, 0x9E ; file 005B2A | 68k link.w a6, #$ff9e
db 0x70, 0x64 ; file 005B2E | 68k moveq #$64, d0
db 0x3D, 0x40, 0xFF, 0xA2 ; file 005B30 | 68k move.w d0, -$5e(a6)
db 0x3D, 0x40, 0xFF, 0xA4 ; file 005B34 | 68k move.w d0, -$5c(a6)
db 0x2D, 0x7C, 0x43, 0x44, 0x4F, 0x43, 0xFF, 0xA6 ; file 005B38 | 68k move.l #$43444f43, -$5a(a6)
db 0x0C, 0x6D, 0x07, 0x00, 0xDE, 0x08 ; file 005B40 | 68k cmpi.w #$700, -$21f8(a5)
db 0x6D, 0x16 ; file 005B46 | 68k blt.b $4af6
db 0x42, 0xA7 ; file 005B48 | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x00, 0x01 ; file 005B4A | 68k move.w #$1, -(a7)
db 0x48, 0x6E, 0xFF, 0xA6 ; file 005B4E | 68k pea.l -$5a(a6)
db 0x2F, 0x2E, 0x00, 0x08 ; file 005B52 | 68k move.l $8(a6), -(a7)
db 0x3F, 0x3C, 0x00, 0x06 ; file 005B56 | 68k move.w #$6, -(a7)
db 0xA9, 0xEA ; file 005B5A | 68k dc.w $a9ea
db 0x60, 0x2C ; file 005B5C | 68k bra.b $4b22
db 0x2F, 0x2E, 0xFF, 0xA2 ; file 005B5E | 68k move.l -$5e(a6), -(a7)
db 0x48, 0x6D, 0xDC, 0xB4 ; file 005B62 | 68k pea.l -$234c(a5)
db 0x42, 0xA7 ; file 005B66 | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x00, 0x01 ; file 005B68 | 68k move.w #$1, -(a7)
db 0x48, 0x6E, 0xFF, 0xA6 ; file 005B6C | 68k pea.l -$5a(a6)
db 0x42, 0xA7 ; file 005B70 | 68k clr.l -(a7)
db 0x48, 0x6E, 0xFF, 0xB6 ; file 005B72 | 68k pea.l -$4a(a6)
db 0x3F, 0x3C, 0x00, 0x02 ; file 005B76 | 68k move.w #$2, -(a7)
db 0xA9, 0xEA ; file 005B7A | 68k dc.w $a9ea
db 0x2F, 0x2E, 0x00, 0x08 ; file 005B7C | 68k move.l $8(a6), -(a7)
db 0x48, 0x6E, 0xFF, 0xB6 ; file 005B80 | 68k pea.l -$4a(a6)
db 0x4E, 0xBA, 0xFE, 0x70 ; file 005B84 | 68k jsr $498e(pc)
db 0x50, 0x8F ; file 005B88 | 68k addq.l #$8, a7
db 0x20, 0x6E, 0x00, 0x08 ; file 005B8A | 68k movea.l $8(a6), a0
db 0x10, 0x10 ; file 005B8E | 68k move.b (a0), d0
db 0x4E, 0x5E ; file 005B90 | 68k unlk a6
db 0x4E, 0x75 ; file 005B92 | 68k rts 
