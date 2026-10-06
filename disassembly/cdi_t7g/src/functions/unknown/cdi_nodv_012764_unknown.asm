; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012764–012799, inclusive.
cdi_nodv_entry_012764:
db 0x48, 0xE7, 0xFF, 0xFC ; 012764: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x4C, 0xEF, 0x03, 0x00, 0x00, 0x3C ; 012768: provisional 68k movem.l $3c(a7), a0-a1
db 0x61, 0x00, 0x06, 0x42 ; 01276E: provisional 68k bsr.w $12db2
db 0xE2, 0x4F ; 012772: provisional 68k lsr.w #$1, d7
db 0x53, 0x47 ; 012774: provisional 68k subq.w #$1, d7
db 0x6B, 0x14 ; 012776: provisional 68k bmi.b $1278c
db 0x48, 0xE7, 0x03, 0x18 ; 012778: provisional 68k movem.l d6-d7/a3-a4, -(a7)
db 0x61, 0x00, 0x05, 0x52 ; 01277C: provisional 68k bsr.w $12cd0
db 0x4C, 0xDF, 0x18, 0xC0 ; 012780: provisional 68k movem.l (a7)+, d6-d7/a3-a4
db 0x58, 0x4B ; 012784: provisional 68k addq.w #$4, a3
db 0x50, 0x4C ; 012786: provisional 68k addq.w #$8, a4
db 0x51, 0xCF, 0xFF, 0xEE ; 012788: provisional 68k dbra d7, $12778
db 0x4C, 0xDF, 0x3F, 0xFF ; 01278C: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x10 ; 012790: provisional 68k move.l (a7), $10(a7)
db 0x4F, 0xEF, 0x00, 0x10 ; 012794: provisional 68k lea.l $10(a7), a7
db 0x4E, 0x75 ; 012798: provisional 68k rts 
