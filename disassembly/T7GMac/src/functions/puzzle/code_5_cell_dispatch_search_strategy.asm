; verified-role: Reset abort state, increment the search counter, and dispatch direct or ranked search by mode and strategy.
; Original native symbol: pMax; evidence file offset 0x8dfe.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_dispatch_search_strategy:
db 0x4E, 0x56, 0x00, 0x00 ; file 008D62 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x07, 0x00 ; file 008D66 | 68k movem.l d5-d7, -(a7)
db 0x1C, 0x2E, 0x00, 0x08 ; file 008D6A | 68k move.b $8(a6), d6
db 0x3E, 0x2E, 0x00, 0x0A ; file 008D6E | 68k move.w $a(a6), d7
db 0x42, 0x2D, 0xE4, 0x9C ; file 008D72 | 68k clr.b -$1b64(a5)
db 0x52, 0x6D, 0xE4, 0xC4 ; file 008D76 | 68k addq.w #$1, -$1b3c(a5)
db 0x4A, 0x47 ; file 008D7A | 68k tst.w d7
db 0x66, 0x0E ; file 008D7C | 68k bne.b $1626
db 0x42, 0x6D, 0xE4, 0xA4 ; file 008D7E | 68k clr.w -$1b5c(a5)
db 0x3F, 0x07 ; file 008D82 | 68k move.w d7, -(a7)
db 0x1F, 0x06 ; file 008D84 | 68k move.b d6, -(a7)
db 0x4E, 0xBA, 0xF9, 0x0C ; file 008D86 | 68k jsr $f2e(pc)
db 0x60, 0x68 ; file 008D8A | 68k bra.b $168e
db 0x0C, 0x47, 0x00, 0x01 ; file 008D8C | 68k cmpi.w #$1, d7
db 0x66, 0x10 ; file 008D90 | 68k bne.b $163c
db 0x3B, 0x7C, 0x00, 0x01, 0xE4, 0xA4 ; file 008D92 | 68k move.w #$1, -$1b5c(a5)
db 0x42, 0x67 ; file 008D98 | 68k clr.w -(a7)
db 0x1F, 0x06 ; file 008D9A | 68k move.b d6, -(a7)
db 0x4E, 0xBA, 0xF8, 0xF6 ; file 008D9C | 68k jsr $f2e(pc)
db 0x60, 0x52 ; file 008DA0 | 68k bra.b $168e
db 0x70, 0xFE ; file 008DA2 | 68k moveq #$fe, d0
db 0xD0, 0x47 ; file 008DA4 | 68k add.w d7, d0
db 0xC1, 0xFC, 0x00, 0x03 ; file 008DA6 | 68k muls.w #$3, d0
db 0x30, 0x6D, 0xE4, 0xC4 ; file 008DAA | 68k movea.w -$1b3c(a5), a0
db 0x22, 0x08 ; file 008DAE | 68k move.l a0, d1
db 0x83, 0xFC, 0x00, 0x03 ; file 008DB0 | 68k divs.w #$3, d1
db 0x48, 0x41 ; file 008DB4 | 68k swap d1
db 0x41, 0xED, 0xE4, 0xAE ; file 008DB6 | 68k lea.l -$1b52(a5), a0
db 0xD0, 0x88 ; file 008DBA | 68k add.l a0, d0
db 0x30, 0x41 ; file 008DBC | 68k movea.w d1, a0
db 0x1A, 0x30, 0x08, 0x00 ; file 008DBE | 68k move.b (a0, d0.l), d5
db 0x49, 0xC5 ; file 008DC2 | 68k extb.l d5
db 0x3B, 0x7C, 0x00, 0x01, 0xE4, 0xA4 ; file 008DC4 | 68k move.w #$1, -$1b5c(a5)
db 0x0C, 0x45, 0x00, 0x02 ; file 008DCA | 68k cmpi.w #$2, d5
db 0x6C, 0x0A ; file 008DCE | 68k bge.b $1674
db 0x3F, 0x05 ; file 008DD0 | 68k move.w d5, -(a7)
db 0x1F, 0x06 ; file 008DD2 | 68k move.b d6, -(a7)
db 0x4E, 0xBA, 0xF8, 0xBE ; file 008DD4 | 68k jsr $f2e(pc)
db 0x60, 0x1A ; file 008DD8 | 68k bra.b $168e
db 0x3F, 0x05 ; file 008DDA | 68k move.w d5, -(a7)
db 0x1F, 0x06 ; file 008DDC | 68k move.b d6, -(a7)
db 0x4E, 0xBA, 0xFB, 0xD6 ; file 008DDE | 68k jsr $1250(pc)
db 0x4A, 0x40 ; file 008DE2 | 68k tst.w d0
db 0x58, 0x8F ; file 008DE4 | 68k addq.l #$4, a7
db 0x67, 0x0A ; file 008DE6 | 68k beq.b $168c
db 0x3F, 0x05 ; file 008DE8 | 68k move.w d5, -(a7)
db 0x1F, 0x06 ; file 008DEA | 68k move.b d6, -(a7)
db 0x4E, 0xBA, 0xFE, 0x26 ; file 008DEC | 68k jsr $14ae(pc)
db 0x60, 0x02 ; file 008DF0 | 68k bra.b $168e
db 0x70, 0x00 ; file 008DF2 | 68k moveq #$0, d0
db 0x4C, 0xEE, 0x00, 0xE0, 0xFF, 0xF4 ; file 008DF4 | 68k movem.l -$c(a6), d5-d7
db 0x4E, 0x5E ; file 008DFA | 68k unlk a6
db 0x4E, 0x75 ; file 008DFC | 68k rts 
