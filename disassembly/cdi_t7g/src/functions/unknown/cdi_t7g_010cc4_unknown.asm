; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010CC4–010CCB, inclusive.
cdi_t7g_entry_010cc4:
db 0x67, 0x12 ; 010CC4: provisional 68k beq.b $10cd8
db 0x24, 0x48 ; 010CC6: provisional 68k movea.l a0, a2
db 0x24, 0x28, 0x00, 0x04 ; 010CC8: provisional 68k move.l $4(a0), d2
