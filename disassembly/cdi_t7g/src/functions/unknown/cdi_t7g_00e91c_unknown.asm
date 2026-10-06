; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E91C–00E937, inclusive.
cdi_t7g_entry_00e91c:
db 0x3F, 0x00 ; 00E91C: provisional 68k move.w d0, -(a7)
db 0x20, 0x6E, 0xAC, 0xBE ; 00E91E: provisional 68k movea.l -$5342(a6), a0
db 0x2A, 0x58 ; 00E922: provisional 68k movea.l (a0)+, a5
db 0x28, 0x58 ; 00E924: provisional 68k movea.l (a0)+, a4
db 0x4A, 0xAD, 0x00, 0x44 ; 00E926: provisional 68k tst.l $44(a5)
db 0x66, 0x26 ; 00E92A: provisional 68k bne.b $e952
db 0x3F, 0x3C, 0x00, 0x05 ; 00E92C: provisional 68k move.w #$5, -(a7)
db 0x2F, 0x0D ; 00E930: provisional 68k move.l a5, -(a7)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x00 ; file 00E932
