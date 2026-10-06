; verified-role: Count friendly-source to empty-neighbor incidences in the scratch board.
; Original native symbol: FancyScore; evidence file offset 0x8138.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_count_adjacent_clone_opportunities:
db 0x4E, 0x56, 0x00, 0x00 ; file 0080C4 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x07, 0x18 ; file 0080C8 | 68k movem.l d5-d7/a3-a4, -(a7)
db 0x7E, 0x00 ; file 0080CC | 68k moveq #$0, d7
db 0x7C, 0x00 ; file 0080CE | 68k moveq #$0, d6
db 0x60, 0x08 ; file 0080D0 | 68k bra.b $974
db 0x42, 0x35, 0x61, 0x20, 0xE5, 0x38 ; file 0080D2 | 68k clr.b $e538(a5, d6.w)
db 0x52, 0x46 ; file 0080D8 | 68k addq.w #$1, d6
db 0x0C, 0x46, 0x00, 0x31 ; file 0080DA | 68k cmpi.w #$31, d6
db 0x6D, 0xF2 ; file 0080DE | 68k blt.b $96c
db 0x7C, 0x00 ; file 0080E0 | 68k moveq #$0, d6
db 0x49, 0xED, 0xE3, 0x14 ; file 0080E2 | 68k lea.l -$1cec(a5), a4
db 0x60, 0x2A ; file 0080E6 | 68k bra.b $9ac
db 0x10, 0x35, 0x61, 0x20, 0xE4, 0xFF ; file 0080E8 | 68k move.b $e4ff(a5, d6.w), d0
db 0xB0, 0x2E, 0x00, 0x08 ; file 0080EE | 68k cmp.b $8(a6), d0
db 0x66, 0x1A ; file 0080F2 | 68k bne.b $9a8
db 0x26, 0x54 ; file 0080F4 | 68k movea.l (a4), a3
db 0x60, 0x0E ; file 0080F6 | 68k bra.b $9a0
db 0x4A, 0x35, 0x51, 0x20, 0xE4, 0xFF ; file 0080F8 | 68k tst.b $e4ff(a5, d5.w)
db 0x66, 0x06 ; file 0080FE | 68k bne.b $9a0
db 0x52, 0x35, 0x51, 0x20, 0xE5, 0x38 ; file 008100 | 68k addq.b #$1, $e538(a5, d5.w)
db 0x1A, 0x1B ; file 008106 | 68k move.b (a3)+, d5
db 0x49, 0xC5 ; file 008108 | 68k extb.l d5
db 0x4A, 0x45 ; file 00810A | 68k tst.w d5
db 0x6C, 0xEA ; file 00810C | 68k bge.b $992
db 0x52, 0x46 ; file 00810E | 68k addq.w #$1, d6
db 0x58, 0x8C ; file 008110 | 68k addq.l #$4, a4
db 0x0C, 0x46, 0x00, 0x31 ; file 008112 | 68k cmpi.w #$31, d6
db 0x6D, 0xD0 ; file 008116 | 68k blt.b $982
db 0x7C, 0x00 ; file 008118 | 68k moveq #$0, d6
db 0x60, 0x0C ; file 00811A | 68k bra.b $9c2
db 0x10, 0x35, 0x61, 0x20, 0xE5, 0x38 ; file 00811C | 68k move.b $e538(a5, d6.w), d0
db 0x49, 0xC0 ; file 008122 | 68k extb.l d0
db 0xDE, 0x40 ; file 008124 | 68k add.w d0, d7
db 0x52, 0x46 ; file 008126 | 68k addq.w #$1, d6
db 0x0C, 0x46, 0x00, 0x31 ; file 008128 | 68k cmpi.w #$31, d6
db 0x6D, 0xEE ; file 00812C | 68k blt.b $9b6
db 0x30, 0x07 ; file 00812E | 68k move.w d7, d0
db 0x4C, 0xDF, 0x18, 0xE0 ; file 008130 | 68k movem.l (a7)+, d5-d7/a3-a4
db 0x4E, 0x5E ; file 008134 | 68k unlk a6
db 0x4E, 0x75 ; file 008136 | 68k rts 
