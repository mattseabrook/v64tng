; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DA40–00DA4F, inclusive.
cdi_t7g_entry_00da40:
db 0x4A, 0x6D, 0x00, 0x3A ; 00DA40: provisional 68k tst.w $3a(a5)
db 0x67, 0x08 ; 00DA44: provisional 68k beq.b $da4e
db 0x61, 0x00, 0x00, 0x08 ; 00DA46: provisional 68k bsr.w $da50
db 0x61, 0x00, 0x00, 0x3C ; 00DA4A: provisional 68k bsr.w $da88
db 0x4E, 0x75 ; 00DA4E: provisional 68k rts 
