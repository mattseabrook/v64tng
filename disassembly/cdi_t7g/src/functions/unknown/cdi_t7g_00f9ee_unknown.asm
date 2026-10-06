; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F9EE–00FA17, inclusive.
cdi_t7g_entry_00f9ee:
db 0x61, 0x00, 0x01, 0xD2 ; 00F9EE: provisional 68k bsr.w $fbc2
db 0xB0, 0x6E, 0xCF, 0xD2 ; 00F9F2: provisional 68k cmp.w -$302e(a6), d0
db 0x66, 0x02 ; 00F9F6: provisional 68k bne.b $f9fa
db 0x4E, 0x75 ; 00F9F8: provisional 68k rts 
db 0x4A, 0x6E, 0xCF, 0xD2 ; 00F9FA: provisional 68k tst.w -$302e(a6)
db 0x66, 0x0A ; 00F9FE: provisional 68k bne.b $fa0a
db 0x3D, 0x40, 0xCF, 0xD2 ; 00FA00: provisional 68k move.w d0, -$302e(a6)
db 0x61, 0x00, 0x00, 0x12 ; 00FA04: provisional 68k bsr.w $fa18
db 0x4E, 0x75 ; 00FA08: provisional 68k rts 
db 0x30, 0x2E, 0xCF, 0xD2 ; 00FA0A: provisional 68k move.w -$302e(a6), d0
db 0x61, 0x00, 0x00, 0x12 ; 00FA0E: provisional 68k bsr.w $fa22
db 0x42, 0x6E, 0xCF, 0xD2 ; 00FA12: provisional 68k clr.w -$302e(a6)
db 0x4E, 0x75 ; 00FA16: provisional 68k rts 
