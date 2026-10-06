; verified-role: Invoke the HFS dispatcher with selector seven and the supplied asynchronous flag.
; Original native symbol: None; evidence file offset 0xf180.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_get_working_directory_info:
db 0x22, 0x5F ; file 00F180 | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F182 | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F184 | 68k movea.l (a7)+, a0
db 0x66, 0x06 ; file 00F186 | 68k bne.b $4ba
db 0x70, 0x07 ; file 00F188 | 68k moveq #$7, d0
db 0xA2, 0x60 ; file 00F18A | 68k dc.w $a260
db 0x60, 0x04 ; file 00F18C | 68k bra.b $4be
db 0x70, 0x07 ; file 00F18E | 68k moveq #$7, d0
db 0xA6, 0x60 ; file 00F190 | 68k dc.w $a660
db 0x3E, 0x80 ; file 00F192 | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F194 | 68k jmp (a1)
