; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F7EE–00F7FB, inclusive.
cdi_nodv_entry_00f7ee:
db 0x2A, 0x6E, 0xAC, 0x8E ; 00F7EE: provisional 68k movea.l -$5372(a6), a5
db 0x2F, 0x2D, 0x00, 0x22 ; 00F7F2: provisional 68k move.l $22(a5), -(a7)
db 0x61, 0x00, 0xC2, 0xE4 ; 00F7F6: provisional 68k bsr.w $badc
db 0x4E, 0x75 ; 00F7FA: provisional 68k rts 
