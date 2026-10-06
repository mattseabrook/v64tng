; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D86A–00D87D, inclusive.
cdi_nodv_entry_00d86a:
db 0x4A, 0x6E, 0xAA, 0x9C ; 00D86A: provisional 68k tst.w -$5564(a6)
db 0x67, 0x0C ; 00D86E: provisional 68k beq.b $d87c
db 0x4A, 0x6E, 0xAA, 0x9A ; 00D870: provisional 68k tst.w -$5566(a6)
db 0x67, 0x06 ; 00D874: provisional 68k beq.b $d87c
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9E ; 00D876: provisional 68k move.w #$ffff, -$5562(a6)
db 0x4E, 0x75 ; 00D87C: provisional 68k rts 
