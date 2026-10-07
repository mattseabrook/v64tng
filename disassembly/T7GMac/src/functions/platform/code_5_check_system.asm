; verified-role: Require virtual memory off (Gestalt 'vm  ' bit 0 clear), 32-bit addressing on (Gestalt 'addr' bit 0 set), and a successful installation predicate via A5:0212. Show Alert 138 for memory/addressing failure or Alert 139 for installation failure; return Boolean success. Gestalt error results are not checked before testing the response.
; Original native symbol: CheckSystem; evidence file offset 0x9e46.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_check_system:
db 0x4E, 0x56, 0xFF, 0xFC ; file 009DD6 | 68k link.w a6, #$fffc
db 0x42, 0x67 ; file 009DDA | 68k clr.w -(a7)
db 0x2F, 0x3C, 0x76, 0x6D, 0x20, 0x20 ; file 009DDC | 68k move.l #$766d2020, -(a7)
db 0x48, 0x6E, 0xFF, 0xFC ; file 009DE2 | 68k pea.l -$4(a6)
db 0x4E, 0xAD, 0x02, 0x3A ; file 009DE6 | 68k jsr $23a(a5)
db 0x08, 0x2E, 0x00, 0x00, 0xFF, 0xFF ; file 009DEA | 68k btst.b #$0, -$1(a6)
db 0x54, 0x8F ; file 009DF0 | 68k addq.l #$2, a7
db 0x67, 0x0E ; file 009DF2 | 68k beq.b $269c
db 0x42, 0xA7 ; file 009DF4 | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x00, 0x8A ; file 009DF6 | 68k move.w #$8a, -(a7)
db 0x4E, 0xAD, 0x00, 0xA2 ; file 009DFA | 68k jsr $a2(a5)
db 0x70, 0x00 ; file 009DFE | 68k moveq #$0, d0
db 0x60, 0x40 ; file 009E00 | 68k bra.b $26dc
db 0x42, 0x67 ; file 009E02 | 68k clr.w -(a7)
db 0x2F, 0x3C, 0x61, 0x64, 0x64, 0x72 ; file 009E04 | 68k move.l #$61646472, -(a7)
db 0x48, 0x6E, 0xFF, 0xFC ; file 009E0A | 68k pea.l -$4(a6)
db 0x4E, 0xAD, 0x02, 0x3A ; file 009E0E | 68k jsr $23a(a5)
db 0x08, 0x2E, 0x00, 0x00, 0xFF, 0xFF ; file 009E12 | 68k btst.b #$0, -$1(a6)
db 0x54, 0x8F ; file 009E18 | 68k addq.l #$2, a7
db 0x66, 0x0E ; file 009E1A | 68k bne.b $26c4
db 0x42, 0xA7 ; file 009E1C | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x00, 0x8A ; file 009E1E | 68k move.w #$8a, -(a7)
db 0x4E, 0xAD, 0x00, 0xA2 ; file 009E22 | 68k jsr $a2(a5)
db 0x70, 0x00 ; file 009E26 | 68k moveq #$0, d0
db 0x60, 0x18 ; file 009E28 | 68k bra.b $26dc
db 0x4E, 0xAD, 0x02, 0x12 ; file 009E2A | 68k jsr $212(a5)
db 0x4A, 0x00 ; file 009E2E | 68k tst.b d0
db 0x66, 0x0E ; file 009E30 | 68k bne.b $26da
db 0x42, 0xA7 ; file 009E32 | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x00, 0x8B ; file 009E34 | 68k move.w #$8b, -(a7)
db 0x4E, 0xAD, 0x00, 0xA2 ; file 009E38 | 68k jsr $a2(a5)
db 0x70, 0x00 ; file 009E3C | 68k moveq #$0, d0
db 0x60, 0x02 ; file 009E3E | 68k bra.b $26dc
db 0x70, 0x01 ; file 009E40 | 68k moveq #$1, d0
db 0x4E, 0x5E ; file 009E42 | 68k unlk a6
db 0x4E, 0x75 ; file 009E44 | 68k rts 
