; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E1A6–00E1BF, inclusive.
cdi_nodv_entry_00e1a6:
db 0x48, 0xE7, 0xFF, 0xFC ; 00E1A6: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x24, 0x2E, 0xAB, 0xBA ; 00E1AA: provisional 68k move.l -$5446(a6), d2
db 0x67, 0x0A ; 00E1AE: provisional 68k beq.b $e1ba
db 0x20, 0x42 ; 00E1B0: provisional 68k movea.l d2, a0
db 0x34, 0x00 ; 00E1B2: provisional 68k move.w d0, d2
db 0x20, 0x2E, 0xAB, 0xBE ; 00E1B4: provisional 68k move.l -$5442(a6), d0
db 0x4E, 0x90 ; 00E1B8: provisional 68k jsr (a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00E1BA: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00E1BE: provisional 68k rts 
