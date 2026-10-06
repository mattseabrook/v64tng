; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FE4C–00FE7F, inclusive.
cdi_nodv_entry_00fe4c:
db 0x24, 0x7C, 0xC1, 0x80, 0x00, 0x00 ; 00FE4C: provisional 68k movea.l #$c1800000, a2
db 0x28, 0x7C, 0xC0, 0x00, 0x10, 0x10 ; 00FE52: provisional 68k movea.l #$c0001010, a4
db 0x36, 0x6E, 0xC0, 0x50 ; 00FE58: provisional 68k movea.w -$3fb0(a6), a3
db 0x61, 0x00, 0x01, 0xBC ; 00FE5C: provisional 68k bsr.w $1001a
db 0x36, 0x6E, 0xC0, 0x52 ; 00FE60: provisional 68k movea.w -$3fae(a6), a3
db 0x61, 0x00, 0x01, 0xB4 ; 00FE64: provisional 68k bsr.w $1001a
db 0x4E, 0x75 ; 00FE68: provisional 68k rts 
db 0x32, 0x01 ; 00FE6A: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCD, 0x90 ; 00FE6C: provisional 68k bsr.w $cbfe
db 0x77, 0x72 ; file 00FE70
db 0x69, 0x74 ; 00FE72: provisional 68k bvs.b $fee8
db 0x65, 0x5F ; 00FE74: provisional 68k bcs.b $fed5
db 0x70, 0x61 ; 00FE76: provisional 68k moveq #$61, d0
db 0x5F, 0x64 ; 00FE78: provisional 68k subq.w #$7, -(a4)
db 0x63, 0x70 ; 00FE7A: provisional 68k bls.b $feec
db 0x20, 0x3A, 0x20, 0x00 ; 00FE7C: provisional 68k move.l $11e7e(pc), d0
