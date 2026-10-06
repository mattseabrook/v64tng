; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012586–01258F, inclusive.
cdi_nodv_entry_012586:
db 0x3B, 0x40, 0x00, 0x26 ; 012586: provisional 68k move.w d0, $26(a5)
db 0x3B, 0x41, 0x00, 0x28 ; 01258A: provisional 68k move.w d1, $28(a5)
db 0x4E, 0x75 ; 01258E: provisional 68k rts 
