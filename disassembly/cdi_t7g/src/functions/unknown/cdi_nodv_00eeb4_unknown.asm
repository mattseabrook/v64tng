; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00EEB4–00EEC1, inclusive.
cdi_nodv_entry_00eeb4:
db 0x48, 0xE7, 0xE0, 0x00 ; 00EEB4: provisional 68k movem.l d0-d2, -(a7)
db 0x30, 0x2F, 0x00, 0x14 ; 00EEB8: provisional 68k move.w $14(a7), d0
db 0x2F, 0x08 ; 00EEBC: provisional 68k move.l a0, -(a7)
db 0x20, 0x79, 0x00, 0x00 ; file 00EEBE
