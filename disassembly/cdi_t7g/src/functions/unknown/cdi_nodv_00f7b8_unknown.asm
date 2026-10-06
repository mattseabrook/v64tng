; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F7B8–00F7CB, inclusive.
cdi_nodv_entry_00f7b8:
db 0xCF, 0xE8 ; file 00F7B8
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x00, 0xCF, 0xEC ; 00F7BA: provisional 68k move.l #$0, -$3014(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x10, 0xCF, 0xF0 ; 00F7C2: provisional 68k move.l #$10, -$3010(a6)
db 0x61, 0x00 ; file 00F7CA
