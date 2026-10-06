; verified-role: Native HOPEN routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: HOPEN; evidence file offset 0xf46a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_hopen:
db 0x4E, 0x56, 0xFF, 0x86 ; file 00F418 | 68k link.w a6, #$ff86
db 0x2F, 0x07 ; file 00F41C | 68k move.l d7, -(a7)
db 0x3D, 0x6E, 0x00, 0x16, 0xFF, 0x9C ; file 00F41E | 68k move.w $16(a6), -$64(a6)
db 0x2D, 0x6E, 0x00, 0x12, 0xFF, 0xB6 ; file 00F424 | 68k move.l $12(a6), -$4a(a6)
db 0x2D, 0x6E, 0x00, 0x0E, 0xFF, 0x98 ; file 00F42A | 68k move.l $e(a6), -$68(a6)
db 0x42, 0x2E, 0xFF, 0xA0 ; file 00F430 | 68k clr.b -$60(a6)
db 0x1D, 0x6E, 0x00, 0x0C, 0xFF, 0xA1 ; file 00F434 | 68k move.b $c(a6), -$5f(a6)
db 0x70, 0x00 ; file 00F43A | 68k moveq #$0, d0
db 0x2D, 0x40, 0xFF, 0xA2 ; file 00F43C | 68k move.l d0, -$5e(a6)
db 0x55, 0x8F ; file 00F440 | 68k subq.l #$2, a7
db 0x48, 0x6E, 0xFF, 0x86 ; file 00F442 | 68k pea.l -$7a(a6)
db 0x70, 0x00 ; file 00F446 | 68k moveq #$0, d0
db 0x1F, 0x00 ; file 00F448 | 68k move.b d0, -(a7)
db 0x4E, 0xBA, 0xFD, 0x5C ; file 00F44A | 68k jsr $4d4(pc)
db 0x3E, 0x1F ; file 00F44E | 68k move.w (a7)+, d7
db 0x20, 0x6E, 0x00, 0x08 ; file 00F450 | 68k movea.l $8(a6), a0
db 0x30, 0xAE, 0xFF, 0x9E ; file 00F454 | 68k move.w -$62(a6), (a0)
db 0x3D, 0x47, 0x00, 0x18 ; file 00F458 | 68k move.w d7, $18(a6)
db 0x2E, 0x2E, 0xFF, 0x82 ; file 00F45C | 68k move.l -$7e(a6), d7
db 0x4E, 0x5E ; file 00F460 | 68k unlk a6
db 0x20, 0x5F ; file 00F462 | 68k movea.l (a7)+, a0
db 0x4F, 0xEF, 0x00, 0x10 ; file 00F464 | 68k lea.l $10(a7), a7
db 0x4E, 0xD0 ; file 00F468 | 68k jmp (a0)
