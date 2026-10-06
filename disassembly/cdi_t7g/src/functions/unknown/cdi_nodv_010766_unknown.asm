; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010766–010789, inclusive.
cdi_nodv_entry_010766:
db 0x48, 0xE7, 0xFF, 0xFC ; 010766: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x3C, 0x2E, 0xC0, 0xD0 ; 01076A: provisional 68k move.w -$3f30(a6), d6
db 0x3E, 0x2E, 0xC0, 0xD2 ; 01076E: provisional 68k move.w -$3f2e(a6), d7
db 0x41, 0xEE, 0xC0, 0xFA ; 010772: provisional 68k lea.l -$3f06(a6), a0
db 0x4A, 0x28, 0x00, 0x01 ; 010776: provisional 68k tst.b $1(a0)
db 0x67, 0x08 ; 01077A: provisional 68k beq.b $10784
db 0x61, 0x00, 0x00, 0x9C ; 01077C: provisional 68k bsr.w $1081a
db 0x61, 0x00, 0x00, 0x24 ; 010780: provisional 68k bsr.w $107a6
db 0x4C, 0xDF, 0x3F, 0xFF ; 010784: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 010788: provisional 68k rts 
