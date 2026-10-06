; verified-role: Multiply two 32-bit stack operands from 16-bit partial products and return the low 32 bits.
; Original native symbol: None; evidence file offset 0x12d5c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_1_multiply_long:
db 0x20, 0x2F, 0x00, 0x04 ; file 012D5C | 68k move.l $4(a7), d0
db 0x2F, 0x41, 0x00, 0x04 ; file 012D60 | 68k move.l d1, $4(a7)
db 0x22, 0x2F, 0x00, 0x08 ; file 012D64 | 68k move.l $8(a7), d1
db 0x2F, 0x5F, 0x00, 0x04 ; file 012D68 | 68k move.l (a7)+, $4(a7)
db 0x48, 0xE7, 0x3C, 0x00 ; file 012D6C | 68k movem.l d2-d5, -(a7)
db 0x24, 0x00 ; file 012D70 | 68k move.l d0, d2
db 0x26, 0x01 ; file 012D72 | 68k move.l d1, d3
db 0x48, 0x42 ; file 012D74 | 68k swap d2
db 0xC4, 0xC3 ; file 012D76 | 68k mulu.w d3, d2
db 0x28, 0x00 ; file 012D78 | 68k move.l d0, d4
db 0x2A, 0x01 ; file 012D7A | 68k move.l d1, d5
db 0x48, 0x45 ; file 012D7C | 68k swap d5
db 0xC8, 0xC5 ; file 012D7E | 68k mulu.w d5, d4
db 0xD4, 0x44 ; file 012D80 | 68k add.w d4, d2
db 0x48, 0x42 ; file 012D82 | 68k swap d2
db 0x42, 0x42 ; file 012D84 | 68k clr.w d2
db 0xC0, 0xC1 ; file 012D86 | 68k mulu.w d1, d0
db 0xD0, 0x82 ; file 012D88 | 68k add.l d2, d0
db 0x4C, 0xDF, 0x00, 0x3C ; file 012D8A | 68k movem.l (a7)+, d2-d5
db 0x22, 0x1F ; file 012D8E | 68k move.l (a7)+, d1
db 0x4E, 0x75 ; file 012D90 | 68k rts 
