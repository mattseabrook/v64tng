; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E8C6–00E8CD, inclusive.
cdi_t7g_entry_00e8c6:
db 0x66, 0x72 ; 00E8C6: provisional 68k bne.b $e93a
db 0x65, 0x73 ; 00E8C8: provisional 68k bcs.b $e93d
db 0x68, 0x3A ; 00E8CA: provisional 68k bvc.b $e906
db 0x20, 0x49 ; 00E8CC: provisional 68k movea.l a1, a0
