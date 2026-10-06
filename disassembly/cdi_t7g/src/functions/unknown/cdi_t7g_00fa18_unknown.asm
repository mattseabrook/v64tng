; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FA18–00FA21, inclusive.
cdi_t7g_entry_00fa18:
db 0x34, 0x3C, 0x00, 0x00 ; 00FA18: provisional 68k move.w #$0, d2
db 0x61, 0x00, 0xFE, 0xEC ; 00FA1C: provisional 68k bsr.w $f90a
db 0x4E, 0x75 ; 00FA20: provisional 68k rts 
