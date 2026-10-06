; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C9EA–00C9FD, inclusive.
cdi_t7g_entry_00c9ea:
db 0x4A, 0x6E, 0xAA, 0x9C ; 00C9EA: provisional 68k tst.w -$5564(a6)
db 0x67, 0x0C ; 00C9EE: provisional 68k beq.b $c9fc
db 0x4A, 0x6E, 0xAA, 0x9A ; 00C9F0: provisional 68k tst.w -$5566(a6)
db 0x67, 0x06 ; 00C9F4: provisional 68k beq.b $c9fc
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9E ; 00C9F6: provisional 68k move.w #$ffff, -$5562(a6)
db 0x4E, 0x75 ; 00C9FC: provisional 68k rts 
