; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D084–00D08B, inclusive.
cdi_nodv_entry_00d084:
db 0x48, 0xE7, 0x60, 0x80 ; 00D084: provisional 68k movem.l d1-d2/a0, -(a7)
db 0x30, 0x3C, 0x01, 0x00 ; 00D088: provisional 68k move.w #$100, d0
