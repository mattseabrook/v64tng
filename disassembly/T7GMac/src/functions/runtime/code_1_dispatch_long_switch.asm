; verified-role: Select a case from a 32-bit value table using D0 and jump through its displacement.
; Original native symbol: None; evidence file offset 0x12d2c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_1_dispatch_long_switch:
db 0x20, 0x5F ; file 012D2C | 68k movea.l (a7)+, a0
db 0x32, 0x18 ; file 012D2E | 68k move.w (a0)+, d1
db 0x34, 0x18 ; file 012D30 | 68k move.w (a0)+, d2
db 0xB0, 0x98 ; file 012D32 | 68k cmp.l (a0)+, d0
db 0x57, 0xC9, 0xFF, 0xFA ; file 012D34 | 68k dbeq d1, $c2
db 0x4A, 0x42 ; file 012D38 | 68k tst.w d2
db 0x67, 0xFE ; file 012D3A | 68k beq.b $cc
db 0x4E, 0xF0, 0x20, 0xFA ; file 012D3C | 68k jmp -$6(a0, d2.w)
