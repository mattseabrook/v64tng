; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CE22–00CE3D, inclusive.
cdi_t7g_entry_00ce22:
db 0x20, 0x2E, 0xAB, 0xB6 ; 00CE22: provisional 68k move.l -$544a(a6), d0
db 0x67, 0x30 ; 00CE26: provisional 68k beq.b $ce58
db 0x2A, 0x40 ; 00CE28: provisional 68k movea.l d0, a5
db 0x30, 0x2E, 0xAB, 0xC2 ; 00CE2A: provisional 68k move.w -$543e(a6), d0
db 0x67, 0x16 ; 00CE2E: provisional 68k beq.b $ce46
db 0x61, 0x00, 0x04, 0xD2 ; 00CE30: provisional 68k bsr.w $d304
db 0x2F, 0x2E, 0xAB, 0xB6 ; 00CE34: provisional 68k move.l -$544a(a6), -(a7)
db 0x61, 0x00, 0x32, 0xAA ; 00CE38: provisional 68k bsr.w $100e4
db 0x42, 0xAE ; file 00CE3C
