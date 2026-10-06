; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01081A–01082D, inclusive.
cdi_nodv_entry_01081a:
db 0x61, 0x00, 0x00, 0x12 ; 01081A: provisional 68k bsr.w $1082e
db 0x65, 0x0C ; 01081E: provisional 68k bcs.b $1082c
db 0x30, 0x2E, 0xCF, 0xD2 ; 010820: provisional 68k move.w -$302e(a6), d0
db 0x61, 0x00, 0x00, 0x7C ; 010824: provisional 68k bsr.w $108a2
db 0x42, 0x6E, 0xCF, 0xD2 ; 010828: provisional 68k clr.w -$302e(a6)
db 0x4E, 0x75 ; 01082C: provisional 68k rts 
