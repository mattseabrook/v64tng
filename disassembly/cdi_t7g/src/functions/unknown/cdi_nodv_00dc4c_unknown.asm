; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DC4C–00DC61, inclusive.
cdi_nodv_entry_00dc4c:
db 0x09, 0x00 ; 00DC4C: provisional 68k btst.l d4, d0
db 0x3F, 0x28, 0x00, 0x1C ; 00DC4E: provisional 68k move.w $1c(a0), -(a7)
db 0x61, 0x00, 0xEE, 0xCA ; 00DC52: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00DC56: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xEF, 0x5C ; 00DC58: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xEF, 0x58 ; 00DC5C: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 00DC60: provisional 68k rts 
