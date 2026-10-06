; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011B44–011B4B, inclusive.
cdi_nodv_entry_011b44:
db 0x67, 0x12 ; 011B44: provisional 68k beq.b $11b58
db 0x24, 0x48 ; 011B46: provisional 68k movea.l a0, a2
db 0x24, 0x28, 0x00, 0x04 ; 011B48: provisional 68k move.l $4(a0), d2
