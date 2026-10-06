; verified-role: Native HDELETE routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: HDELETE; evidence file offset 0xf52e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_hdelete:
db 0x4E, 0x56, 0xFF, 0x86 ; file 00F4F8 | 68k link.w a6, #$ff86
db 0x3D, 0x6E, 0x00, 0x10, 0xFF, 0x9C ; file 00F4FC | 68k move.w $10(a6), -$64(a6)
db 0x2D, 0x6E, 0x00, 0x0C, 0xFF, 0xB6 ; file 00F502 | 68k move.l $c(a6), -$4a(a6)
db 0x2D, 0x6E, 0x00, 0x08, 0xFF, 0x98 ; file 00F508 | 68k move.l $8(a6), -$68(a6)
db 0x42, 0x2E, 0xFF, 0xA0 ; file 00F50E | 68k clr.b -$60(a6)
db 0x55, 0x8F ; file 00F512 | 68k subq.l #$2, a7
db 0x48, 0x6E, 0xFF, 0x86 ; file 00F514 | 68k pea.l -$7a(a6)
db 0x70, 0x00 ; file 00F518 | 68k moveq #$0, d0
db 0x1F, 0x00 ; file 00F51A | 68k move.b d0, -(a7)
db 0x4E, 0xBA, 0xFC, 0xAE ; file 00F51C | 68k jsr $4f8(pc)
db 0x3D, 0x5F, 0x00, 0x12 ; file 00F520 | 68k move.w (a7)+, $12(a6)
db 0x4E, 0x5E ; file 00F524 | 68k unlk a6
db 0x20, 0x5F ; file 00F526 | 68k movea.l (a7)+, a0
db 0x4F, 0xEF, 0x00, 0x0A ; file 00F528 | 68k lea.l $a(a7), a7
db 0x4E, 0xD0 ; file 00F52C | 68k jmp (a0)
