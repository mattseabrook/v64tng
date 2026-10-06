; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F566–00F575, inclusive.
cdi_nodv_entry_00f566:
db 0x48, 0xE7, 0xFF, 0xFC ; 00F566: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x20, 0x2E, 0xAC, 0x8E ; 00F56A: provisional 68k move.l -$5372(a6), d0
db 0x67, 0x22 ; 00F56E: provisional 68k beq.b $f592
db 0x2A, 0x40 ; 00F570: provisional 68k movea.l d0, a5
db 0x2F, 0x3C, 0x00, 0x00 ; file 00F572
