; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FB2E–00FB4D, inclusive.
cdi_t7g_entry_00fb2e:
db 0x20, 0x08 ; 00FB2E: provisional 68k move.l a0, d0
db 0x67, 0x1A ; 00FB30: provisional 68k beq.b $fb4c
db 0x4A, 0xA8, 0x00, 0x16 ; 00FB32: provisional 68k tst.l $16(a0)
db 0x66, 0x0A ; 00FB36: provisional 68k bne.b $fb42
db 0x2F, 0x08 ; 00FB38: provisional 68k move.l a0, -(a7)
db 0x20, 0x68, 0x00, 0x16 ; 00FB3A: provisional 68k movea.l $16(a0), a0
db 0x61, 0xEE ; 00FB3E: provisional 68k bsr.b $fb2e
db 0x20, 0x5F ; 00FB40: provisional 68k movea.l (a7)+, a0
db 0x22, 0x68, 0x00, 0x22 ; 00FB42: provisional 68k movea.l $22(a0), a1
db 0x61, 0x06 ; 00FB46: provisional 68k bsr.b $fb4e
db 0x20, 0x49 ; 00FB48: provisional 68k movea.l a1, a0
db 0x60, 0xE2 ; 00FB4A: provisional 68k bra.b $fb2e
db 0x4E, 0x75 ; 00FB4C: provisional 68k rts 
