; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013C48–013C55, inclusive.
cdi_nodv_entry_013c48:
db 0x20, 0x6C, 0x00, 0x34 ; 013C48: provisional 68k movea.l $34(a4), a0
db 0xE2, 0x4D ; 013C4C: provisional 68k lsr.w #$1, d5
db 0xE5, 0x45 ; 013C4E: provisional 68k asl.w #$2, d5
db 0xD0, 0xC5 ; 013C50: provisional 68k adda.w d5, a0
db 0x30, 0x04 ; 013C52: provisional 68k move.w d4, d0
db 0x4E, 0x75 ; 013C54: provisional 68k rts 
