; verified-role: Native PositionRectInRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: PositionRectInRect; evidence file offset 0x70c4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_position_rect_in_rect:
db 0x4E, 0x56, 0x00, 0x00 ; file 007040 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x0F, 0x18 ; file 007044 | 68k movem.l d4-d7/a3-a4, -(a7)
db 0x26, 0x6E, 0x00, 0x10 ; file 007048 | 68k movea.l $10(a6), a3
db 0x3E, 0x2E, 0x00, 0x0C ; file 00704C | 68k move.w $c(a6), d7
db 0x9E, 0x6E, 0x00, 0x08 ; file 007050 | 68k sub.w $8(a6), d7
db 0x3C, 0x2E, 0x00, 0x0E ; file 007054 | 68k move.w $e(a6), d6
db 0x9C, 0x6E, 0x00, 0x0A ; file 007058 | 68k sub.w $a(a6), d6
db 0x49, 0xEB, 0x00, 0x04 ; file 00705C | 68k lea.l $4(a3), a4
db 0x3A, 0x14 ; file 007060 | 68k move.w (a4), d5
db 0x9A, 0x53 ; file 007062 | 68k sub.w (a3), d5
db 0x38, 0x2B, 0x00, 0x06 ; file 007064 | 68k move.w $6(a3), d4
db 0x98, 0x6B, 0x00, 0x02 ; file 007068 | 68k sub.w $2(a3), d4
db 0x42, 0xA7 ; file 00706C | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 00706E | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 007070 | 68k clr.l -(a7)
db 0x30, 0x07 ; file 007072 | 68k move.w d7, d0
db 0x90, 0x45 ; file 007074 | 68k sub.w d5, d0
db 0x30, 0x40 ; file 007076 | 68k movea.w d0, a0
db 0x2F, 0x08 ; file 007078 | 68k move.l a0, -(a7)
db 0xA8, 0x3F ; file 00707A | 68k dc.w $a83f
db 0x2F, 0x2E, 0x00, 0x18 ; file 00707C | 68k move.l $18(a6), -(a7)
db 0xA8, 0x68 ; file 007080 | 68k dc.w $a868
db 0xA8, 0x40 ; file 007082 | 68k dc.w $a840
db 0x2E, 0x1F ; file 007084 | 68k move.l (a7)+, d7
db 0xDE, 0x6E, 0x00, 0x08 ; file 007086 | 68k add.w $8(a6), d7
db 0x42, 0xA7 ; file 00708A | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 00708C | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 00708E | 68k clr.l -(a7)
db 0x30, 0x06 ; file 007090 | 68k move.w d6, d0
db 0x90, 0x44 ; file 007092 | 68k sub.w d4, d0
db 0x30, 0x40 ; file 007094 | 68k movea.w d0, a0
db 0x2F, 0x08 ; file 007096 | 68k move.l a0, -(a7)
db 0xA8, 0x3F ; file 007098 | 68k dc.w $a83f
db 0x2F, 0x2E, 0x00, 0x14 ; file 00709A | 68k move.l $14(a6), -(a7)
db 0xA8, 0x68 ; file 00709E | 68k dc.w $a868
db 0xA8, 0x40 ; file 0070A0 | 68k dc.w $a840
db 0x2C, 0x1F ; file 0070A2 | 68k move.l (a7)+, d6
db 0xDC, 0x6E, 0x00, 0x0A ; file 0070A4 | 68k add.w $a(a6), d6
db 0x36, 0x87 ; file 0070A8 | 68k move.w d7, (a3)
db 0x37, 0x46, 0x00, 0x02 ; file 0070AA | 68k move.w d6, $2(a3)
db 0x30, 0x07 ; file 0070AE | 68k move.w d7, d0
db 0xD0, 0x45 ; file 0070B0 | 68k add.w d5, d0
db 0x38, 0x80 ; file 0070B2 | 68k move.w d0, (a4)
db 0x30, 0x06 ; file 0070B4 | 68k move.w d6, d0
db 0xD0, 0x44 ; file 0070B6 | 68k add.w d4, d0
db 0x37, 0x40, 0x00, 0x06 ; file 0070B8 | 68k move.w d0, $6(a3)
db 0x4C, 0xDF, 0x18, 0xF0 ; file 0070BC | 68k movem.l (a7)+, d4-d7/a3-a4
db 0x4E, 0x5E ; file 0070C0 | 68k unlk a6
db 0x4E, 0x75 ; file 0070C2 | 68k rts 
