; verified-role: Native CLOSEWD routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: CLOSEWD; evidence file offset 0xf5ae.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_closewd:
db 0x4E, 0x56, 0xFF, 0xCC ; file 00F58A | 68k link.w a6, #$ffcc
db 0x3D, 0x6E, 0x00, 0x08, 0xFF, 0xE2 ; file 00F58E | 68k move.w $8(a6), -$1e(a6)
db 0x55, 0x8F ; file 00F594 | 68k subq.l #$2, a7
db 0x48, 0x6E, 0xFF, 0xCC ; file 00F596 | 68k pea.l -$34(a6)
db 0x70, 0x00 ; file 00F59A | 68k moveq #$0, d0
db 0x1F, 0x00 ; file 00F59C | 68k move.b d0, -(a7)
db 0x4E, 0xBA, 0xFB, 0xCA ; file 00F59E | 68k jsr $496(pc)
db 0x3D, 0x5F, 0x00, 0x0A ; file 00F5A2 | 68k move.w (a7)+, $a(a6)
db 0x4E, 0x5E ; file 00F5A6 | 68k unlk a6
db 0x20, 0x5F ; file 00F5A8 | 68k movea.l (a7)+, a0
db 0x54, 0x4F ; file 00F5AA | 68k addq.w #$2, a7
db 0x4E, 0xD0 ; file 00F5AC | 68k jmp (a0)
