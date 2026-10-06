; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CDCC–00CDE1, inclusive.
cdi_t7g_entry_00cdcc:
db 0x09, 0x00 ; 00CDCC: provisional 68k btst.l d4, d0
db 0x3F, 0x28, 0x00, 0x1C ; 00CDCE: provisional 68k move.w $1c(a0), -(a7)
db 0x61, 0x00, 0xEE, 0xCA ; 00CDD2: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00CDD6: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xEF, 0x5C ; 00CDD8: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xEF, 0x58 ; 00CDDC: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 00CDE0: provisional 68k rts 
