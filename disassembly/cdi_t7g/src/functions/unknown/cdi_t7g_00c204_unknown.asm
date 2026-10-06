; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C204–00C20B, inclusive.
cdi_t7g_entry_00c204:
db 0x48, 0xE7, 0x60, 0x80 ; 00C204: provisional 68k movem.l d1-d2/a0, -(a7)
db 0x30, 0x3C, 0x01, 0x00 ; 00C208: provisional 68k move.w #$100, d0
