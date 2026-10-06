; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FAFA–00FB2D, inclusive.
cdi_t7g_entry_00fafa:
db 0x48, 0xE7, 0x80, 0xF0 ; 00FAFA: provisional 68k movem.l d0/a0-a3, -(a7)
db 0x30, 0x2F, 0x00, 0x18 ; 00FAFE: provisional 68k move.w $18(a7), d0
db 0x61, 0x00, 0x00, 0xAE ; 00FB02: provisional 68k bsr.w $fbb2
db 0x20, 0x49 ; 00FB06: provisional 68k movea.l a1, a0
db 0x4A, 0xA8, 0x00, 0x12 ; 00FB08: provisional 68k tst.l $12(a0)
db 0x67, 0x12 ; 00FB0C: provisional 68k beq.b $fb20
db 0x20, 0x28, 0x00, 0x16 ; 00FB0E: provisional 68k move.l $16(a0), d0
db 0x67, 0x08 ; 00FB12: provisional 68k beq.b $fb1c
db 0x2F, 0x08 ; 00FB14: provisional 68k move.l a0, -(a7)
db 0x20, 0x40 ; 00FB16: provisional 68k movea.l d0, a0
db 0x61, 0x14 ; 00FB18: provisional 68k bsr.b $fb2e
db 0x20, 0x5F ; 00FB1A: provisional 68k movea.l (a7)+, a0
db 0x61, 0x00, 0x00, 0x30 ; 00FB1C: provisional 68k bsr.w $fb4e
db 0x4C, 0xDF, 0x0F, 0x01 ; 00FB20: provisional 68k movem.l (a7)+, d0/a0-a3
db 0x2F, 0x57, 0x00, 0x02 ; 00FB24: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 00FB28: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 00FB2C: provisional 68k rts 
