; verified-role: Native TrapExists routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: TrapExists; evidence file offset 0x7440.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_trap_exists:
db 0x4E, 0x56, 0xFF, 0xFC ; file 0073E8 | 68k link.w a6, #$fffc
db 0x48, 0xE7, 0x03, 0x00 ; file 0073EC | 68k movem.l d6-d7, -(a7)
db 0x3C, 0x2E, 0x00, 0x08 ; file 0073F0 | 68k move.w $8(a6), d6
db 0x3F, 0x06 ; file 0073F4 | 68k move.w d6, -(a7)
db 0x4E, 0xBA, 0xF6, 0xB6 ; file 0073F6 | 68k jsr $5a46(pc)
db 0x1E, 0x00 ; file 0073FA | 68k move.b d0, d7
db 0x0C, 0x07, 0x00, 0x01 ; file 0073FC | 68k cmpi.b #$1, d7
db 0x54, 0x8F ; file 007400 | 68k addq.l #$2, a7
db 0x66, 0x10 ; file 007402 | 68k bne.b $63ac
db 0x4E, 0xBA, 0xFB, 0x22 ; file 007404 | 68k jsr $5ec0(pc)
db 0x02, 0x46, 0x07, 0xFF ; file 007408 | 68k andi.w #$7ff, d6
db 0xB0, 0x46 ; file 00740C | 68k cmp.w d6, d0
db 0x6E, 0x04 ; file 00740E | 68k bgt.b $63ac
db 0x3C, 0x3C, 0xA8, 0x9F ; file 007410 | 68k move.w #$a89f, d6
db 0x42, 0xA7 ; file 007414 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x01, 0x00, 0xA8, 0x9F ; file 007416 | 68k move.l #$100a89f, -(a7)
db 0x4E, 0xAD, 0x02, 0x42 ; file 00741C | 68k jsr $242(a5)
db 0x2D, 0x5F, 0xFF, 0xFC ; file 007420 | 68k move.l (a7)+, -$4(a6)
db 0x42, 0xA7 ; file 007424 | 68k clr.l -(a7)
db 0x3F, 0x06 ; file 007426 | 68k move.w d6, -(a7)
db 0x1F, 0x07 ; file 007428 | 68k move.b d7, -(a7)
db 0x4E, 0xAD, 0x02, 0x42 ; file 00742A | 68k jsr $242(a5)
db 0x20, 0x2E, 0xFF, 0xFC ; file 00742E | 68k move.l -$4(a6), d0
db 0xB0, 0x9F ; file 007432 | 68k cmp.l (a7)+, d0
db 0x56, 0xC0 ; file 007434 | 68k sne.b d0
db 0x44, 0x00 ; file 007436 | 68k neg.b d0
db 0x4C, 0xDF, 0x00, 0xC0 ; file 007438 | 68k movem.l (a7)+, d6-d7
db 0x4E, 0x5E ; file 00743C | 68k unlk a6
db 0x4E, 0x75 ; file 00743E | 68k rts 
