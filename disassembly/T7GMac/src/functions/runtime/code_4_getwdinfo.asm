; verified-role: Native GETWDINFO routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GETWDINFO; evidence file offset 0xf608.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_getwdinfo:
db 0x4E, 0x56, 0xFF, 0xCC ; file 00F5B8 | 68k link.w a6, #$ffcc
db 0x2F, 0x07 ; file 00F5BC | 68k move.l d7, -(a7)
db 0x3D, 0x6E, 0x00, 0x14, 0xFF, 0xE2 ; file 00F5BE | 68k move.w $14(a6), -$1e(a6)
db 0x42, 0x6E, 0xFF, 0xE6 ; file 00F5C4 | 68k clr.w -$1a(a6)
db 0x70, 0x00 ; file 00F5C8 | 68k moveq #$0, d0
db 0x2D, 0x40, 0xFF, 0xDE ; file 00F5CA | 68k move.l d0, -$22(a6)
db 0x55, 0x8F ; file 00F5CE | 68k subq.l #$2, a7
db 0x48, 0x6E, 0xFF, 0xCC ; file 00F5D0 | 68k pea.l -$34(a6)
db 0x70, 0x00 ; file 00F5D4 | 68k moveq #$0, d0
db 0x1F, 0x00 ; file 00F5D6 | 68k move.b d0, -(a7)
db 0x4E, 0xBA, 0xFB, 0xA6 ; file 00F5D8 | 68k jsr $4ac(pc)
db 0x3E, 0x1F ; file 00F5DC | 68k move.w (a7)+, d7
db 0x20, 0x6E, 0x00, 0x10 ; file 00F5DE | 68k movea.l $10(a6), a0
db 0x30, 0xAE, 0xFF, 0xEC ; file 00F5E2 | 68k move.w -$14(a6), (a0)
db 0x20, 0x6E, 0x00, 0x0C ; file 00F5E6 | 68k movea.l $c(a6), a0
db 0x20, 0xAE, 0xFF, 0xFC ; file 00F5EA | 68k move.l -$4(a6), (a0)
db 0x20, 0x6E, 0x00, 0x08 ; file 00F5EE | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xE8 ; file 00F5F2 | 68k move.l -$18(a6), (a0)
db 0x3D, 0x47, 0x00, 0x16 ; file 00F5F6 | 68k move.w d7, $16(a6)
db 0x2E, 0x2E, 0xFF, 0xC8 ; file 00F5FA | 68k move.l -$38(a6), d7
db 0x4E, 0x5E ; file 00F5FE | 68k unlk a6
db 0x20, 0x5F ; file 00F600 | 68k movea.l (a7)+, a0
db 0x4F, 0xEF, 0x00, 0x0E ; file 00F602 | 68k lea.l $e(a7), a7
db 0x4E, 0xD0 ; file 00F606 | 68k jmp (a0)
