; verified-role: Native DisplayPutFile routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DisplayPutFile; evidence file offset 0x5c0e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_display_put_file:
db 0x4E, 0x56, 0xFE, 0xB2 ; file 005BA6 | 68k link.w a6, #$feb2
db 0x2F, 0x0C ; file 005BAA | 68k move.l a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 005BAC | 68k movea.l $8(a6), a4
db 0x70, 0x64 ; file 005BB0 | 68k moveq #$64, d0
db 0x3D, 0x40, 0xFE, 0xB2 ; file 005BB2 | 68k move.w d0, -$14e(a6)
db 0x3D, 0x40, 0xFE, 0xB4 ; file 005BB6 | 68k move.w d0, -$14c(a6)
db 0x48, 0x6E, 0xFF, 0x00 ; file 005BBA | 68k pea.l -$100(a6)
db 0x2F, 0x3C, 0x00, 0x01, 0x01, 0x6E ; file 005BBE | 68k move.l #$1016e, -(a7)
db 0x4E, 0xAD, 0x02, 0x92 ; file 005BC4 | 68k jsr $292(a5)
db 0x0C, 0x6D, 0x07, 0x00, 0xDE, 0x08 ; file 005BC8 | 68k cmpi.w #$700, -$21f8(a5)
db 0x6D, 0x12 ; file 005BCE | 68k blt.b $4b7a
db 0x48, 0x6E, 0xFF, 0x00 ; file 005BD0 | 68k pea.l -$100(a6)
db 0x48, 0x6C, 0x00, 0x0C ; file 005BD4 | 68k pea.l $c(a4)
db 0x2F, 0x0C ; file 005BD8 | 68k move.l a4, -(a7)
db 0x3F, 0x3C, 0x00, 0x05 ; file 005BDA | 68k move.w #$5, -(a7)
db 0xA9, 0xEA ; file 005BDE | 68k dc.w $a9ea
db 0x60, 0x24 ; file 005BE0 | 68k bra.b $4b9e
db 0x2F, 0x2E, 0xFE, 0xB2 ; file 005BE2 | 68k move.l -$14e(a6), -(a7)
db 0x48, 0x6E, 0xFF, 0x00 ; file 005BE6 | 68k pea.l -$100(a6)
db 0x48, 0x6C, 0x00, 0x0C ; file 005BEA | 68k pea.l $c(a4)
db 0x42, 0xA7 ; file 005BEE | 68k clr.l -(a7)
db 0x48, 0x6E, 0xFE, 0xB6 ; file 005BF0 | 68k pea.l -$14a(a6)
db 0x3F, 0x3C, 0x00, 0x01 ; file 005BF4 | 68k move.w #$1, -(a7)
db 0xA9, 0xEA ; file 005BF8 | 68k dc.w $a9ea
db 0x2F, 0x0C ; file 005BFA | 68k move.l a4, -(a7)
db 0x48, 0x6E, 0xFE, 0xB6 ; file 005BFC | 68k pea.l -$14a(a6)
db 0x4E, 0xBA, 0xFD, 0xF4 ; file 005C00 | 68k jsr $498e(pc)
db 0x50, 0x8F ; file 005C04 | 68k addq.l #$8, a7
db 0x10, 0x14 ; file 005C06 | 68k move.b (a4), d0
db 0x28, 0x5F ; file 005C08 | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 005C0A | 68k unlk a6
db 0x4E, 0x75 ; file 005C0C | 68k rts 
