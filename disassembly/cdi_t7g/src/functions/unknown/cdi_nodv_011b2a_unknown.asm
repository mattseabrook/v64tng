; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011B2A–011B43, inclusive.
cdi_nodv_entry_011b2a:
db 0x4A, 0xAD, 0x00, 0x2C ; 011B2A: provisional 68k tst.l $2c(a5)
db 0x66, 0x46 ; 011B2E: provisional 68k bne.b $11b76
db 0x4A, 0x6D, 0x00, 0x1C ; 011B30: provisional 68k tst.w $1c(a5)
db 0x67, 0x3E ; 011B34: provisional 68k beq.b $11b74
db 0x20, 0x6D, 0x00, 0x30 ; 011B36: provisional 68k movea.l $30(a5), a0
db 0x20, 0x2D, 0x00, 0x34 ; 011B3A: provisional 68k move.l $34(a5), d0
db 0xB1, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 011B3E: provisional 68k cmpa.l #$0, a0
