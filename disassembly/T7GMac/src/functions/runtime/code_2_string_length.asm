; verified-role: Scan to the byte-string NUL terminator and return the number of preceding bytes.
; Original native symbol: None; evidence file offset 0x3ae8.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_string_length:
db 0x70, 0xFF ; file 003AE8 | 68k moveq #$ff, d0
db 0x20, 0x6F, 0x00, 0x04 ; file 003AEA | 68k movea.l $4(a7), a0
db 0x52, 0x80 ; file 003AEE | 68k addq.l #$1, d0
db 0x4A, 0x18 ; file 003AF0 | 68k tst.b (a0)+
db 0x66, 0xFA ; file 003AF2 | 68k bne.b $2a86
db 0x4E, 0x75 ; file 003AF4 | 68k rts 
