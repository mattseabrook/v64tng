; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D326–00D33F, inclusive.
cdi_t7g_entry_00d326:
db 0x48, 0xE7, 0xFF, 0xFC ; 00D326: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x24, 0x2E, 0xAB, 0xBA ; 00D32A: provisional 68k move.l -$5446(a6), d2
db 0x67, 0x0A ; 00D32E: provisional 68k beq.b $d33a
db 0x20, 0x42 ; 00D330: provisional 68k movea.l d2, a0
db 0x34, 0x00 ; 00D332: provisional 68k move.w d0, d2
db 0x20, 0x2E, 0xAB, 0xBE ; 00D334: provisional 68k move.l -$5442(a6), d0
db 0x4E, 0x90 ; 00D338: provisional 68k jsr (a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00D33A: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00D33E: provisional 68k rts 
