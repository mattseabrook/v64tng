; verified-role: Select a case from a 16-bit value table using D0 and jump through its displacement.
; Original native symbol: None; evidence file offset 0x12d18.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_1_dispatch_word_switch:
db 0x20, 0x5F ; file 012D18 | 68k movea.l (a7)+, a0
db 0x32, 0x18 ; file 012D1A | 68k move.w (a0)+, d1
db 0x34, 0x18 ; file 012D1C | 68k move.w (a0)+, d2
db 0xB0, 0x58 ; file 012D1E | 68k cmp.w (a0)+, d0
db 0x57, 0xC9, 0xFF, 0xFA ; file 012D20 | 68k dbeq d1, $ae
db 0x4A, 0x42 ; file 012D24 | 68k tst.w d2
db 0x67, 0xFE ; file 012D26 | 68k beq.b $b8
db 0x4E, 0xF0, 0x20, 0xFC ; file 012D28 | 68k jmp -$4(a0, d2.w)
