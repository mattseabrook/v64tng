; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010898–0108A1, inclusive.
cdi_nodv_entry_010898:
db 0x34, 0x3C, 0x00, 0x00 ; 010898: provisional 68k move.w #$0, d2
db 0x61, 0x00, 0xFE, 0xEC ; 01089C: provisional 68k bsr.w $1078a
db 0x4E, 0x75 ; 0108A0: provisional 68k rts 
