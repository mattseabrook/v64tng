; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01072C–010765, inclusive.
cdi_nodv_entry_01072c:
db 0x48, 0xE7, 0x80, 0xC0 ; 01072C: provisional 68k movem.l d0/a0-a1, -(a7)
db 0x30, 0x2F, 0x00, 0x10 ; 010730: provisional 68k move.w $10(a7), d0
db 0x61, 0x00, 0x02, 0xFC ; 010734: provisional 68k bsr.w $10a32
db 0x51, 0xE9, 0x00, 0x01 ; 010738: provisional 68k sf.b $1(a1)
db 0x20, 0x49 ; 01073C: provisional 68k movea.l a1, a0
db 0x30, 0x2E, 0xCF, 0xD2 ; 01073E: provisional 68k move.w -$302e(a6), d0
db 0x61, 0x00, 0x02, 0xEE ; 010742: provisional 68k bsr.w $10a32
db 0xB3, 0xC8 ; 010746: provisional 68k cmpa.l a0, a1
db 0x67, 0x0C ; 010748: provisional 68k beq.b $10756
db 0x20, 0x29, 0x00, 0x12 ; 01074A: provisional 68k move.l $12(a1), d0
db 0x67, 0x0A ; 01074E: provisional 68k beq.b $1075a
db 0x22, 0x40 ; 010750: provisional 68k movea.l d0, a1
db 0x60, 0x00, 0xFF, 0xF2 ; 010752: provisional 68k bra.w $10746
db 0x42, 0x6E, 0xCF, 0xD2 ; 010756: provisional 68k clr.w -$302e(a6)
db 0x4C, 0xDF, 0x03, 0x01 ; 01075A: provisional 68k movem.l (a7)+, d0/a0-a1
db 0x2F, 0x57, 0x00, 0x02 ; 01075E: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 010762: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 010764: provisional 68k rts 
