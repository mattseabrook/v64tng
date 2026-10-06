; verified-role: Native i2cstr routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: i2cstr; evidence file offset 0xbc5e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_i2cstr:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BC12 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x03, 0x08 ; file 00BC16 | 68k movem.l d6-d7/a4, -(a7)
db 0x3C, 0x2E, 0x00, 0x0C ; file 00BC1A | 68k move.w $c(a6), d6
db 0x70, 0x01 ; file 00BC1E | 68k moveq #$1, d0
db 0xD0, 0xAE, 0x00, 0x08 ; file 00BC20 | 68k add.l $8(a6), d0
db 0x28, 0x40 ; file 00BC24 | 68k movea.l d0, a4
db 0x7E, 0x00 ; file 00BC26 | 68k moveq #$0, d7
db 0x18, 0x87 ; file 00BC28 | 68k move.b d7, (a4)
db 0x0C, 0x46, 0x00, 0x0A ; file 00BC2A | 68k cmpi.w #$a, d6
db 0x6D, 0x14 ; file 00BC2E | 68k blt.b $44de
db 0x30, 0x46 ; file 00BC30 | 68k movea.w d6, a0
db 0x20, 0x08 ; file 00BC32 | 68k move.l a0, d0
db 0x81, 0xFC, 0x00, 0x0A ; file 00BC34 | 68k divs.w #$a, d0
db 0x3F, 0x00 ; file 00BC38 | 68k move.w d0, -(a7)
db 0x2F, 0x0C ; file 00BC3A | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0xFF, 0xD4 ; file 00BC3C | 68k jsr $44ac(pc)
db 0x3E, 0x00 ; file 00BC40 | 68k move.w d0, d7
db 0x5C, 0x8F ; file 00BC42 | 68k addq.l #$6, a7
db 0x30, 0x06 ; file 00BC44 | 68k move.w d6, d0
db 0x90, 0x47 ; file 00BC46 | 68k sub.w d7, d0
db 0x20, 0x6E, 0x00, 0x08 ; file 00BC48 | 68k movea.l $8(a6), a0
db 0x10, 0xB5, 0x01, 0x20, 0xF8, 0xCE ; file 00BC4C | 68k move.b $f8ce(a5, d0.w), (a0)
db 0x70, 0x0A ; file 00BC52 | 68k moveq #$a, d0
db 0xC1, 0xC6 ; file 00BC54 | 68k muls.w d6, d0
db 0x4C, 0xDF, 0x10, 0xC0 ; file 00BC56 | 68k movem.l (a7)+, d6-d7/a4
db 0x4E, 0x5E ; file 00BC5A | 68k unlk a6
db 0x4E, 0x75 ; file 00BC5C | 68k rts 
