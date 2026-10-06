; verified-role: Range-check D0 and dispatch through a word-displacement table.
; Original native symbol: None; evidence file offset 0x12d40.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_1_dispatch_indexed_switch:
db 0x20, 0x5F ; file 012D40 | 68k movea.l (a7)+, a0
db 0x32, 0x18 ; file 012D42 | 68k move.w (a0)+, d1
db 0x34, 0x18 ; file 012D44 | 68k move.w (a0)+, d2
db 0xB0, 0x42 ; file 012D46 | 68k cmp.w d2, d0
db 0x6E, 0x0A ; file 012D48 | 68k bgt.b $e6
db 0x90, 0x41 ; file 012D4A | 68k sub.w d1, d0
db 0x6D, 0x06 ; file 012D4C | 68k blt.b $e6
db 0xD0, 0x40 ; file 012D4E | 68k add.w d0, d0
db 0x41, 0xF0, 0x00, 0x02 ; file 012D50 | 68k lea.l $2(a0, d0.w), a0
db 0x30, 0x10 ; file 012D54 | 68k move.w (a0), d0
db 0x67, 0xFE ; file 012D56 | 68k beq.b $e8
db 0x4E, 0xF0, 0x00, 0x00 ; file 012D58 | 68k jmp (a0, d0.w)
