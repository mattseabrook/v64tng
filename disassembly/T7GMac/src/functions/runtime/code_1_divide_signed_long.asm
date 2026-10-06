; verified-role: Call the sign-adjusting division core and return its quotient.
; Original native symbol: None; evidence file offset 0x12dd4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_1_divide_signed_long:
db 0x20, 0x2F, 0x00, 0x04 ; file 012DD4 | 68k move.l $4(a7), d0
db 0x2F, 0x41, 0x00, 0x04 ; file 012DD8 | 68k move.l d1, $4(a7)
db 0x22, 0x2F, 0x00, 0x08 ; file 012DDC | 68k move.l $8(a7), d1
db 0x2F, 0x5F, 0x00, 0x04 ; file 012DE0 | 68k move.l (a7)+, $4(a7)
db 0x48, 0xE7, 0x31, 0x00 ; file 012DE4 | 68k movem.l d2-d3/d7, -(a7)
db 0x4E, 0xBA, 0x00, 0x2C ; file 012DE8 | 68k jsr $1a8(pc)
db 0x4C, 0xDF, 0x00, 0x8C ; file 012DEC | 68k movem.l (a7)+, d2-d3/d7
db 0x22, 0x1F ; file 012DF0 | 68k move.l (a7)+, d1
db 0x4E, 0x75 ; file 012DF2 | 68k rts 
