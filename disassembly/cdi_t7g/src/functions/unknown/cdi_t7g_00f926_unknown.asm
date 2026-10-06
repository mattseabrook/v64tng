; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F926–00F955, inclusive.
cdi_t7g_entry_00f926:
db 0x30, 0x2E, 0xC0, 0xCE ; 00F926: provisional 68k move.w -$3f32(a6), d0
db 0xB0, 0x6E, 0xCF, 0xD4 ; 00F92A: provisional 68k cmp.w -$302c(a6), d0
db 0x66, 0x02 ; 00F92E: provisional 68k bne.b $f932
db 0x4E, 0x75 ; 00F930: provisional 68k rts 
db 0x32, 0x2E, 0xCF, 0xD4 ; 00F932: provisional 68k move.w -$302c(a6), d1
db 0x3D, 0x40, 0xCF, 0xD4 ; 00F936: provisional 68k move.w d0, -$302c(a6)
db 0x4A, 0x6E, 0xCF, 0xD2 ; 00F93A: provisional 68k tst.w -$302e(a6)
db 0x66, 0x02 ; 00F93E: provisional 68k bne.b $f942
db 0x4E, 0x75 ; 00F940: provisional 68k rts 
db 0xB1, 0x41 ; 00F942: provisional 68k eor.w d0, d1
db 0x08, 0x01, 0x00, 0x00 ; 00F944: provisional 68k btst.b #$0, d1
db 0x67, 0x06 ; 00F948: provisional 68k beq.b $f950
db 0x61, 0x00, 0x00, 0x0A ; 00F94A: provisional 68k bsr.w $f956
db 0x4E, 0x75 ; 00F94E: provisional 68k rts 
db 0x61, 0x00, 0x00, 0x26 ; 00F950: provisional 68k bsr.w $f978
db 0x4E, 0x75 ; 00F954: provisional 68k rts 
