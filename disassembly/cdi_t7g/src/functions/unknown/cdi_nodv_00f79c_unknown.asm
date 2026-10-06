; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F79C–00F7B7, inclusive.
cdi_nodv_entry_00f79c:
db 0x3F, 0x00 ; 00F79C: provisional 68k move.w d0, -(a7)
db 0x20, 0x6E, 0xAC, 0xBE ; 00F79E: provisional 68k movea.l -$5342(a6), a0
db 0x2A, 0x58 ; 00F7A2: provisional 68k movea.l (a0)+, a5
db 0x28, 0x58 ; 00F7A4: provisional 68k movea.l (a0)+, a4
db 0x4A, 0xAD, 0x00, 0x44 ; 00F7A6: provisional 68k tst.l $44(a5)
db 0x66, 0x26 ; 00F7AA: provisional 68k bne.b $f7d2
db 0x3F, 0x3C, 0x00, 0x05 ; 00F7AC: provisional 68k move.w #$5, -(a7)
db 0x2F, 0x0D ; 00F7B0: provisional 68k move.l a5, -(a7)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x00 ; file 00F7B2
