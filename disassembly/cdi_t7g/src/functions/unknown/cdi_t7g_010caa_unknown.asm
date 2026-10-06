; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010CAA–010CC3, inclusive.
cdi_t7g_entry_010caa:
db 0x4A, 0xAD, 0x00, 0x2C ; 010CAA: provisional 68k tst.l $2c(a5)
db 0x66, 0x46 ; 010CAE: provisional 68k bne.b $10cf6
db 0x4A, 0x6D, 0x00, 0x1C ; 010CB0: provisional 68k tst.w $1c(a5)
db 0x67, 0x3E ; 010CB4: provisional 68k beq.b $10cf4
db 0x20, 0x6D, 0x00, 0x30 ; 010CB6: provisional 68k movea.l $30(a5), a0
db 0x20, 0x2D, 0x00, 0x34 ; 010CBA: provisional 68k move.l $34(a5), d0
db 0xB1, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 010CBE: provisional 68k cmpa.l #$0, a0
