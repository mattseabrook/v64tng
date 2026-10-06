; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F746–00F74D, inclusive.
cdi_nodv_entry_00f746:
db 0x66, 0x72 ; 00F746: provisional 68k bne.b $f7ba
db 0x65, 0x73 ; 00F748: provisional 68k bcs.b $f7bd
db 0x68, 0x3A ; 00F74A: provisional 68k bvc.b $f786
db 0x20, 0x49 ; 00F74C: provisional 68k movea.l a1, a0
