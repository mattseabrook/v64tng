; verified-role: Native OPENWD routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: OPENWD; evidence file offset 0xf580.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_openwd:
db 0x4E, 0x56, 0xFF, 0xCC ; file 00F538 | 68k link.w a6, #$ffcc
db 0x2F, 0x07 ; file 00F53C | 68k move.l d7, -(a7)
db 0x3D, 0x6E, 0x00, 0x14, 0xFF, 0xE2 ; file 00F53E | 68k move.w $14(a6), -$1e(a6)
db 0x2D, 0x6E, 0x00, 0x10, 0xFF, 0xFC ; file 00F544 | 68k move.l $10(a6), -$4(a6)
db 0x2D, 0x6E, 0x00, 0x0C, 0xFF, 0xE8 ; file 00F54A | 68k move.l $c(a6), -$18(a6)
db 0x70, 0x00 ; file 00F550 | 68k moveq #$0, d0
db 0x2D, 0x40, 0xFF, 0xDE ; file 00F552 | 68k move.l d0, -$22(a6)
db 0x55, 0x8F ; file 00F556 | 68k subq.l #$2, a7
db 0x48, 0x6E, 0xFF, 0xCC ; file 00F558 | 68k pea.l -$34(a6)
db 0x70, 0x00 ; file 00F55C | 68k moveq #$0, d0
db 0x1F, 0x00 ; file 00F55E | 68k move.b d0, -(a7)
db 0x4E, 0xBA, 0xFB, 0xF2 ; file 00F560 | 68k jsr $480(pc)
db 0x3E, 0x1F ; file 00F564 | 68k move.w (a7)+, d7
db 0x20, 0x6E, 0x00, 0x08 ; file 00F566 | 68k movea.l $8(a6), a0
db 0x30, 0xAE, 0xFF, 0xE2 ; file 00F56A | 68k move.w -$1e(a6), (a0)
db 0x3D, 0x47, 0x00, 0x16 ; file 00F56E | 68k move.w d7, $16(a6)
db 0x2E, 0x2E, 0xFF, 0xC8 ; file 00F572 | 68k move.l -$38(a6), d7
db 0x4E, 0x5E ; file 00F576 | 68k unlk a6
db 0x20, 0x5F ; file 00F578 | 68k movea.l (a7)+, a0
db 0x4F, 0xEF, 0x00, 0x0E ; file 00F57A | 68k lea.l $e(a7), a7
db 0x4E, 0xD0 ; file 00F57E | 68k jmp (a0)
