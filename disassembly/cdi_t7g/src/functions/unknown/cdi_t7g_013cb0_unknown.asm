; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013CB0–013E23, inclusive.
cdi_t7g_entry_013cb0:
db 0x3A, 0x20 ; 013CB0: provisional 68k move.w -(a0), d5
db 0x4E, 0x6F ; 013CB2: provisional 68k move usp, a7
db 0x74, 0x20 ; 013CB4: provisional 68k moveq #$20, d2
db 0x69, 0x6D ; 013CB6: provisional 68k bvs.b $13d25
db 0x70, 0x6C ; 013CB8: provisional 68k moveq #$6c, d0
db 0x65, 0x6D ; 013CBA: provisional 68k bcs.b $13d29
db 0x65, 0x6E ; 013CBC: provisional 68k bcs.b $13d2c
db 0x74, 0x65 ; 013CBE: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 013CC0: provisional 68k bcc.b $13ce2
db 0x79, 0x65 ; file 013CC2
db 0x74, 0x00 ; 013CC4: provisional 68k moveq #$0, d2
db 0x2F, 0x0D ; 013CC6: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 013CC8: provisional 68k movea.l $8(a7), a5
db 0x3B, 0x6F, 0x00, 0x0C, 0x00, 0x24 ; 013CCC: provisional 68k move.w $c(a7), $24(a5)
db 0x3B, 0x6F, 0x00, 0x0E, 0x00, 0x26 ; 013CD2: provisional 68k move.w $e(a7), $26(a5)
db 0x2A, 0x5F ; 013CD8: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 013CDA: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 013CDE: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 013CE0: provisional 68k rts 
db 0x2F, 0x0D ; 013CE2: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 013CE4: provisional 68k movea.l $8(a7), a5
db 0x3B, 0x6F, 0x00, 0x0C, 0x00, 0x28 ; 013CE8: provisional 68k move.w $c(a7), $28(a5)
db 0x3B, 0x6F, 0x00, 0x0E, 0x00, 0x2A ; 013CEE: provisional 68k move.w $e(a7), $2a(a5)
db 0x2A, 0x5F ; 013CF4: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 013CF6: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 013CFA: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 013CFC: provisional 68k rts 
db 0x48, 0xE7, 0x80, 0x04 ; 013CFE: provisional 68k movem.l d0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 013D02: provisional 68k movea.l $c(a7), a5
db 0x42, 0x80 ; 013D06: provisional 68k clr.l d0
db 0x30, 0x2F, 0x00, 0x10 ; 013D08: provisional 68k move.w $10(a7), d0
db 0x80, 0xED, 0x00, 0x32 ; 013D0C: provisional 68k divu.w $32(a5), d0
db 0x48, 0x40 ; 013D10: provisional 68k swap d0
db 0x3B, 0x40, 0x00, 0x30 ; 013D12: provisional 68k move.w d0, $30(a5)
db 0x4C, 0xDF, 0x20, 0x01 ; 013D16: provisional 68k movem.l (a7)+, d0/a5
db 0x2F, 0x57, 0x00, 0x06 ; 013D1A: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 013D1E: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 013D20: provisional 68k rts 
db 0x48, 0xE7, 0xC0, 0x3C ; 013D22: provisional 68k movem.l d0-d1/a2-a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x1C ; 013D26: provisional 68k movea.l $1c(a7), a5
db 0x28, 0x6F, 0x00, 0x20 ; 013D2A: provisional 68k movea.l $20(a7), a4
db 0x26, 0x6D, 0x00, 0x38 ; 013D2E: provisional 68k movea.l $38(a5), a3
db 0x30, 0x2D, 0x00, 0x30 ; 013D32: provisional 68k move.w $30(a5), d0
db 0xD0, 0x40 ; 013D36: provisional 68k add.w d0, d0
db 0x24, 0x6D, 0x00, 0x40 ; 013D38: provisional 68k movea.l $40(a5), a2
db 0x30, 0x32, 0x00, 0x00 ; 013D3C: provisional 68k move.w (a2, d0.w), d0
db 0x24, 0x6D, 0x00, 0x3C ; 013D40: provisional 68k movea.l $3c(a5), a2
db 0xD0, 0x40 ; 013D44: provisional 68k add.w d0, d0
db 0x30, 0x32, 0x00, 0x00 ; 013D46: provisional 68k move.w (a2, d0.w), d0
db 0xD4, 0xC0 ; 013D4A: provisional 68k adda.w d0, a2
db 0x27, 0x4A, 0x00, 0x3C ; 013D4C: provisional 68k move.l a2, $3c(a3)
db 0x30, 0x2D, 0x00, 0x24 ; 013D50: provisional 68k move.w $24(a5), d0
db 0x32, 0x2D, 0x00, 0x26 ; 013D54: provisional 68k move.w $26(a5), d1
db 0xD0, 0x6D, 0x00, 0x28 ; 013D58: provisional 68k add.w $28(a5), d0
db 0xD2, 0x6D, 0x00, 0x2A ; 013D5C: provisional 68k add.w $2a(a5), d1
db 0x90, 0x6D, 0x00, 0x2C ; 013D60: provisional 68k sub.w $2c(a5), d0
db 0x92, 0x6D, 0x00, 0x2E ; 013D64: provisional 68k sub.w $2e(a5), d1
db 0x3F, 0x01 ; 013D68: provisional 68k move.w d1, -(a7)
db 0x3F, 0x00 ; 013D6A: provisional 68k move.w d0, -(a7)
db 0x2F, 0x0B ; 013D6C: provisional 68k move.l a3, -(a7)
db 0x61, 0x00, 0xEC, 0xB2 ; 013D6E: provisional 68k bsr.w $12a22
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 013D72: provisional 68k move.l #$0, -(a7)
db 0x2F, 0x0C ; 013D78: provisional 68k move.l a4, -(a7)
db 0x2F, 0x0B ; 013D7A: provisional 68k move.l a3, -(a7)
db 0x61, 0x00, 0xEC, 0xC0 ; 013D7C: provisional 68k bsr.w $12a3e
db 0x4C, 0xDF, 0x3C, 0x03 ; 013D80: provisional 68k movem.l (a7)+, d0-d1/a2-a5
db 0x2F, 0x57, 0x00, 0x08 ; 013D84: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 013D88: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 013D8A: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x06, 0xCF, 0xE8 ; 013D8C: provisional 68k movem.l -$3018(a6), d1-d2
db 0x3B, 0x7C, 0x00, 0x00, 0x00, 0x1C ; 013D92: provisional 68k move.w #$0, $1c(a5)
db 0x3B, 0x41, 0x00, 0x1E ; 013D98: provisional 68k move.w d1, $1e(a5)
db 0x3B, 0x41, 0x00, 0x20 ; 013D9C: provisional 68k move.w d1, $20(a5)
db 0x3B, 0x42, 0x00, 0x22 ; 013DA0: provisional 68k move.w d2, $22(a5)
db 0x42, 0xAD, 0x00, 0x24 ; 013DA4: provisional 68k clr.l $24(a5)
db 0x42, 0xAD, 0x00, 0x28 ; 013DA8: provisional 68k clr.l $28(a5)
db 0x42, 0xAD, 0x00, 0x30 ; 013DAC: provisional 68k clr.l $30(a5)
db 0x3F, 0x02 ; 013DB0: provisional 68k move.w d2, -(a7)
db 0x61, 0x00, 0xCE, 0x0E ; 013DB2: provisional 68k bsr.w $10bc2
db 0x3F, 0x01 ; 013DB6: provisional 68k move.w d1, -(a7)
db 0x2F, 0x08 ; 013DB8: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x82, 0x6E ; 013DBA: provisional 68k bsr.w $c02a
db 0x2B, 0x48, 0x00, 0x2C ; 013DBE: provisional 68k move.l a0, $2c(a5)
db 0x41, 0xED, 0x00, 0x50 ; 013DC2: provisional 68k lea.l $50(a5), a0
db 0x43, 0xED, 0x00, 0x82 ; 013DC6: provisional 68k lea.l $82(a5), a1
db 0x45, 0xED, 0x00, 0xC2 ; 013DCA: provisional 68k lea.l $c2(a5), a2
db 0x47, 0xED, 0x00, 0xA2 ; 013DCE: provisional 68k lea.l $a2(a5), a3
db 0x2F, 0x0B ; 013DD2: provisional 68k move.l a3, -(a7)
db 0x2F, 0x0A ; 013DD4: provisional 68k move.l a2, -(a7)
db 0x2F, 0x09 ; 013DD6: provisional 68k move.l a1, -(a7)
db 0x2F, 0x08 ; 013DD8: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xA7, 0xBC ; 013DDA: provisional 68k bsr.w $e598
db 0x3F, 0x3C, 0x00, 0x00 ; 013DDE: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x0B ; 013DE2: provisional 68k move.l a3, -(a7)
db 0x3F, 0x3C, 0x00, 0x00 ; 013DE4: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x2D, 0x00, 0x2C ; 013DE8: provisional 68k move.l $2c(a5), -(a7)
db 0x61, 0x00, 0xA6, 0xEE ; 013DEC: provisional 68k bsr.w $e4dc
db 0x3F, 0x3C, 0x00, 0x00 ; 013DF0: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x0B ; 013DF4: provisional 68k move.l a3, -(a7)
db 0x61, 0x00, 0xA8, 0x40 ; 013DF6: provisional 68k bsr.w $e638
db 0x4E, 0x75 ; 013DFA: provisional 68k rts 
db 0x4E, 0x75 ; 013DFC: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 013DFE: provisional 68k pea.l $13e08(pc)
db 0x4E, 0xAE, 0xD1, 0x58 ; 013E02: provisional 68k jsr -$2ea8(a6)
db 0x60, 0x08 ; 013E06: provisional 68k bra.b $13e10
db 0x62, 0x61 ; 013E08: provisional 68k bhi.b $13e6b
db 0x64, 0x20 ; 013E0A: provisional 68k bcc.b $13e2c
db 0x2D, 0x20 ; 013E0C: provisional 68k move.l -(a0), -(a6)
db 0x00, 0x00, 0x2F, 0x0D ; 013E0E: provisional 68k ori.b #$d, d0
db 0x61, 0x00, 0xC5, 0x58 ; 013E12: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 013E16: provisional 68k rts 
db 0x4E, 0x75 ; 013E18: provisional 68k rts 
db 0x2F, 0x2D, 0x00, 0x2C ; 013E1A: provisional 68k move.l $2c(a5), -(a7)
db 0x61, 0x00, 0x83, 0x58 ; 013E1E: provisional 68k bsr.w $c178
db 0x4E, 0x75 ; 013E22: provisional 68k rts 
