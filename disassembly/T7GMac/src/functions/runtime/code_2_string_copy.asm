; verified-role: Copy bytes including NUL and return the original destination pointer.
; Original native symbol: None; evidence file offset 0x39c8.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_string_copy:
db 0x20, 0x6F, 0x00, 0x04 ; file 0039C8 | 68k movea.l $4(a7), a0
db 0x22, 0x6F, 0x00, 0x08 ; file 0039CC | 68k movea.l $8(a7), a1
db 0x20, 0x08 ; file 0039D0 | 68k move.l a0, d0
db 0x10, 0xD9 ; file 0039D2 | 68k move.b (a1)+, (a0)+
db 0x66, 0xFC ; file 0039D4 | 68k bne.b $296a
db 0x4E, 0x75 ; file 0039D6 | 68k rts 
