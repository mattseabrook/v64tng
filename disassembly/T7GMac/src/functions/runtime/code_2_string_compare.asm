; verified-role: Compare byte strings and return a negative, zero, or positive ordering result.
; Original native symbol: None; evidence file offset 0x39ee.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_string_compare:
db 0x20, 0x6F, 0x00, 0x04 ; file 0039EE | 68k movea.l $4(a7), a0
db 0x22, 0x6F, 0x00, 0x08 ; file 0039F2 | 68k movea.l $8(a7), a1
db 0x70, 0x00 ; file 0039F6 | 68k moveq #$0, d0
db 0x60, 0x04 ; file 0039F8 | 68k bra.b $2996
db 0x4A, 0x01 ; file 0039FA | 68k tst.b d1
db 0x67, 0x0C ; file 0039FC | 68k beq.b $29a2
db 0x12, 0x18 ; file 0039FE | 68k move.b (a0)+, d1
db 0xB2, 0x19 ; file 003A00 | 68k cmp.b (a1)+, d1
db 0x67, 0xF6 ; file 003A02 | 68k beq.b $2992
db 0x62, 0x02 ; file 003A04 | 68k bhi.b $29a0
db 0x55, 0x80 ; file 003A06 | 68k subq.l #$2, d0
db 0x52, 0x80 ; file 003A08 | 68k addq.l #$1, d0
db 0x4E, 0x75 ; file 003A0A | 68k rts 
