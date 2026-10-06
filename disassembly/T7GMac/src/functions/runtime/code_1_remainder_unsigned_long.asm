; verified-role: Call the unsigned long division core and return its remainder.
; Original native symbol: None; evidence file offset 0x12db2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_1_remainder_unsigned_long:
db 0x20, 0x2F, 0x00, 0x04 ; file 012DB2 | 68k move.l $4(a7), d0
db 0x2F, 0x41, 0x00, 0x04 ; file 012DB6 | 68k move.l d1, $4(a7)
db 0x22, 0x2F, 0x00, 0x08 ; file 012DBA | 68k move.l $8(a7), d1
db 0x2F, 0x5F, 0x00, 0x04 ; file 012DBE | 68k move.l (a7)+, $4(a7)
db 0x48, 0xE7, 0x31, 0x00 ; file 012DC2 | 68k movem.l d2-d3/d7, -(a7)
db 0x4E, 0xBA, 0x00, 0x7C ; file 012DC6 | 68k jsr $1d6(pc)
db 0x20, 0x01 ; file 012DCA | 68k move.l d1, d0
db 0x4C, 0xDF, 0x00, 0x8C ; file 012DCC | 68k movem.l (a7)+, d2-d3/d7
db 0x22, 0x1F ; file 012DD0 | 68k move.l (a7)+, d1
db 0x4E, 0x75 ; file 012DD2 | 68k rts 
