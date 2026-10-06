; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012DC8–012DD5, inclusive.
cdi_t7g_entry_012dc8:
db 0x20, 0x6C, 0x00, 0x34 ; 012DC8: provisional 68k movea.l $34(a4), a0
db 0xE2, 0x4D ; 012DCC: provisional 68k lsr.w #$1, d5
db 0xE5, 0x45 ; 012DCE: provisional 68k asl.w #$2, d5
db 0xD0, 0xC5 ; 012DD0: provisional 68k adda.w d5, a0
db 0x30, 0x04 ; 012DD2: provisional 68k move.w d4, d0
db 0x4E, 0x75 ; 012DD4: provisional 68k rts 
