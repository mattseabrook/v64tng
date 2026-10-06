; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F8E6–00F909, inclusive.
cdi_t7g_entry_00f8e6:
db 0x48, 0xE7, 0xFF, 0xFC ; 00F8E6: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x3C, 0x2E, 0xC0, 0xD0 ; 00F8EA: provisional 68k move.w -$3f30(a6), d6
db 0x3E, 0x2E, 0xC0, 0xD2 ; 00F8EE: provisional 68k move.w -$3f2e(a6), d7
db 0x41, 0xEE, 0xC0, 0xFA ; 00F8F2: provisional 68k lea.l -$3f06(a6), a0
db 0x4A, 0x28, 0x00, 0x01 ; 00F8F6: provisional 68k tst.b $1(a0)
db 0x67, 0x08 ; 00F8FA: provisional 68k beq.b $f904
db 0x61, 0x00, 0x00, 0x9C ; 00F8FC: provisional 68k bsr.w $f99a
db 0x61, 0x00, 0x00, 0x24 ; 00F900: provisional 68k bsr.w $f926
db 0x4C, 0xDF, 0x3F, 0xFF ; 00F904: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00F908: provisional 68k rts 
