; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F598–00F59F, inclusive.
cdi_nodv_entry_00f598:
db 0x48, 0xE7, 0xE0, 0x60 ; 00F598: provisional 68k movem.l d0-d2/a1-a2, -(a7)
db 0x61, 0x00, 0x01, 0x4C ; 00F59C: provisional 68k bsr.w $f6ea
