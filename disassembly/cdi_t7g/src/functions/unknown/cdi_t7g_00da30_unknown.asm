; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DA30–00DA3F, inclusive.
cdi_t7g_entry_00da30:
db 0x2A, 0x6E, 0xAB, 0xE0 ; 00DA30: provisional 68k movea.l -$5420(a6), a5
db 0x0C, 0x40, 0x00, 0x01 ; 00DA34: provisional 68k cmpi.w #$1, d0
db 0x67, 0x04 ; 00DA38: provisional 68k beq.b $da3e
db 0x2A, 0x6E, 0xAB, 0xDC ; 00DA3A: provisional 68k movea.l -$5424(a6), a5
db 0x4E, 0x75 ; 00DA3E: provisional 68k rts 
