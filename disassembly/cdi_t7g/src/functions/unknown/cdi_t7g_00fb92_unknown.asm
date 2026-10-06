; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FB92–00FBB1, inclusive.
cdi_t7g_entry_00fb92:
db 0x61, 0x00, 0x00, 0x1E ; 00FB92: provisional 68k bsr.w $fbb2
db 0x21, 0x49, 0x00, 0x12 ; 00FB96: provisional 68k move.l a1, $12(a0)
db 0x4A, 0xA9, 0x00, 0x16 ; 00FB9A: provisional 68k tst.l $16(a1)
db 0x67, 0x0C ; 00FB9E: provisional 68k beq.b $fbac
db 0x24, 0x69, 0x00, 0x16 ; 00FBA0: provisional 68k movea.l $16(a1), a2
db 0x21, 0x4A, 0x00, 0x22 ; 00FBA4: provisional 68k move.l a2, $22(a0)
db 0x25, 0x48, 0x00, 0x1E ; 00FBA8: provisional 68k move.l a0, $1e(a2)
db 0x23, 0x48, 0x00, 0x16 ; 00FBAC: provisional 68k move.l a0, $16(a1)
db 0x4E, 0x75 ; 00FBB0: provisional 68k rts 
