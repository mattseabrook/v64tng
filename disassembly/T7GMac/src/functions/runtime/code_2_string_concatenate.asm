; verified-role: Find the destination NUL, append the source including NUL, and return the original destination.
; Original native symbol: None; evidence file offset 0x39d8.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_string_concatenate:
db 0x20, 0x6F, 0x00, 0x04 ; file 0039D8 | 68k movea.l $4(a7), a0
db 0x22, 0x6F, 0x00, 0x08 ; file 0039DC | 68k movea.l $8(a7), a1
db 0x20, 0x08 ; file 0039E0 | 68k move.l a0, d0
db 0x4A, 0x18 ; file 0039E2 | 68k tst.b (a0)+
db 0x66, 0xFC ; file 0039E4 | 68k bne.b $297a
db 0x53, 0x88 ; file 0039E6 | 68k subq.l #$1, a0
db 0x10, 0xD9 ; file 0039E8 | 68k move.b (a1)+, (a0)+
db 0x66, 0xFC ; file 0039EA | 68k bne.b $2980
db 0x4E, 0x75 ; file 0039EC | 68k rts 
