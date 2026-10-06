; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0108A2–0108AB, inclusive.
cdi_nodv_entry_0108a2:
db 0x34, 0x3C, 0x00, 0x01 ; 0108A2: provisional 68k move.w #$1, d2
db 0x61, 0x00, 0xFE, 0xE2 ; 0108A6: provisional 68k bsr.w $1078a
db 0x4E, 0x75 ; 0108AA: provisional 68k rts 
