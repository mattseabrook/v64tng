; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F664–00F669, inclusive.
cdi_t7g_entry_00f664:
db 0x7E, 0xFF ; 00F664: provisional 68k moveq #$ff, d7
db 0x60, 0x00, 0x00, 0x04 ; 00F666: provisional 68k bra.w $f66c
