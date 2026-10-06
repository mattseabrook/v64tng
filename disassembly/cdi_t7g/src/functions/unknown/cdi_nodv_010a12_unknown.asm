; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A12–010A31, inclusive.
cdi_nodv_entry_010a12:
db 0x61, 0x00, 0x00, 0x1E ; 010A12: provisional 68k bsr.w $10a32
db 0x21, 0x49, 0x00, 0x12 ; 010A16: provisional 68k move.l a1, $12(a0)
db 0x4A, 0xA9, 0x00, 0x16 ; 010A1A: provisional 68k tst.l $16(a1)
db 0x67, 0x0C ; 010A1E: provisional 68k beq.b $10a2c
db 0x24, 0x69, 0x00, 0x16 ; 010A20: provisional 68k movea.l $16(a1), a2
db 0x21, 0x4A, 0x00, 0x22 ; 010A24: provisional 68k move.l a2, $22(a0)
db 0x25, 0x48, 0x00, 0x1E ; 010A28: provisional 68k move.l a0, $1e(a2)
db 0x23, 0x48, 0x00, 0x16 ; 010A2C: provisional 68k move.l a0, $16(a1)
db 0x4E, 0x75 ; 010A30: provisional 68k rts 
