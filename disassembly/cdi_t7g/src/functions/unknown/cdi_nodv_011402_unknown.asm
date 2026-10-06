; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011402–011407, inclusive.
cdi_nodv_entry_011402:
db 0x48, 0xE7, 0x00, 0x60 ; 011402: provisional 68k movem.l a1-a2, -(a7)
db 0x60, 0x1E ; 011406: provisional 68k bra.b $11426
