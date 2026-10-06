; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CD50–00CE51, inclusive.
cdi_nodv_entry_00cd50:
db 0x64, 0x6E ; 00CD50: provisional 68k bcc.b $cdc0
db 0x6C, 0x69 ; 00CD52: provisional 68k bge.b $cdbd
db 0x73, 0x74 ; file 00CD54
db 0x42, 0x00 ; 00CD56: provisional 68k clr.b d0
db 0x2D, 0x48, 0xA9, 0x00 ; 00CD58: provisional 68k move.l a0, -$5700(a6)
db 0x34, 0x1F ; 00CD5C: provisional 68k move.w (a7)+, d2
db 0x3F, 0x3C, 0x00, 0x02 ; 00CD5E: provisional 68k move.w #$2, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00CD62: provisional 68k move.l #$0, -(a7)
db 0x2D, 0x42, 0xCF, 0xE8 ; 00CD68: provisional 68k move.l d2, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x01, 0xCF, 0xEC ; 00CD6C: provisional 68k move.l #$1, -$3014(a6)
db 0x61, 0x00, 0x41, 0x88 ; 00CD74: provisional 68k bsr.w $10efe
db 0x65, 0x00, 0x00, 0xCE ; 00CD78: provisional 68k bcs.w $ce48
db 0x48, 0x7A, 0x00, 0x0A ; 00CD7C: provisional 68k pea.l $cd88(pc)
db 0x2F, 0x08 ; 00CD80: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x44, 0x1E ; 00CD82: provisional 68k bsr.w $111a2
db 0x60, 0x08 ; 00CD86: provisional 68k bra.b $cd90
db 0x64, 0x6E ; 00CD88: provisional 68k bcc.b $cdf8
db 0x6C, 0x69 ; 00CD8A: provisional 68k bge.b $cdf5
db 0x73, 0x74 ; file 00CD8C
db 0x53, 0x00 ; 00CD8E: provisional 68k subq.b #$1, d0
db 0x2D, 0x48, 0xA9, 0x04 ; 00CD90: provisional 68k move.l a0, -$56fc(a6)
db 0x3F, 0x3C, 0x00, 0x02 ; 00CD94: provisional 68k move.w #$2, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00CD98: provisional 68k move.l #$0, -(a7)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x00, 0xCF, 0xE8 ; 00CD9E: provisional 68k move.l #$0, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x90, 0xCF, 0xEC ; 00CDA6: provisional 68k move.l #$90, -$3014(a6)
db 0x61, 0x00, 0x41, 0x4E ; 00CDAE: provisional 68k bsr.w $10efe
db 0x65, 0x00, 0x00, 0xC6 ; 00CDB2: provisional 68k bcs.w $ce7a
db 0x48, 0x7A, 0x00, 0x0A ; 00CDB6: provisional 68k pea.l $cdc2(pc)
db 0x2F, 0x08 ; 00CDBA: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x43, 0xE4 ; 00CDBC: provisional 68k bsr.w $111a2
db 0x60, 0x08 ; 00CDC0: provisional 68k bra.b $cdca
db 0x64, 0x6E ; 00CDC2: provisional 68k bcc.b $ce32
db 0x6C, 0x69 ; 00CDC4: provisional 68k bge.b $ce2f
db 0x73, 0x74 ; file 00CDC6
db 0x46, 0x00 ; 00CDC8: provisional 68k not.b d0
db 0x2D, 0x48, 0xA9, 0x08 ; 00CDCA: provisional 68k move.l a0, -$56f8(a6)
db 0x42, 0x6E, 0xA9, 0x0C ; 00CDCE: provisional 68k clr.w -$56f4(a6)
db 0x4E, 0x75 ; 00CDD2: provisional 68k rts 
db 0x32, 0x01 ; 00CDD4: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xFE, 0x26 ; 00CDD6: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 00CDDA: provisional 68k bcc.b $ce4a
db 0x64, 0x65 ; 00CDDC: provisional 68k bcc.b $ce43
db 0x5F, 0x69, 0x6E, 0x69 ; 00CDDE: provisional 68k subq.w #$7, $6e69(a1)
db 0x74, 0x69 ; 00CDE2: provisional 68k moveq #$69, d2
db 0x61, 0x6C ; 00CDE4: provisional 68k bsr.b $ce52
db 0x69, 0x73 ; 00CDE6: provisional 68k bvs.b $ce5b
db 0x65, 0x20 ; 00CDE8: provisional 68k bcs.b $ce0a
db 0x3A, 0x20 ; 00CDEA: provisional 68k move.w -(a0), d5
db 0x50, 0x72, 0x6F, 0x62, 0x6C, 0x65, 0x6D, 0x73 ; 00CDEC: provisional 68k addq.w #$8, ([$6c65, a2], $6d73)
db 0x20, 0x69, 0x6E, 0x20 ; 00CDF4: provisional 68k movea.l $6e20(a1), a0
db 0x76, 0x69 ; 00CDF8: provisional 68k moveq #$69, d3
db 0x64, 0x65 ; 00CDFA: provisional 68k bcc.b $ce61
db 0x6F, 0x20 ; 00CDFC: provisional 68k ble.b $ce1e
db 0x70, 0x6C ; 00CDFE: provisional 68k moveq #$6c, d0
db 0x61, 0x6E ; 00CE00: provisional 68k bsr.b $ce70
db 0x65, 0x20 ; 00CE02: provisional 68k bcs.b $ce24
db 0x31, 0x20 ; 00CE04: provisional 68k move.w -(a0), -(a0)
db 0x6D, 0x65 ; 00CE06: provisional 68k blt.b $ce6d
db 0x6D, 0x6F ; 00CE08: provisional 68k blt.b $ce79
db 0x72, 0x79 ; 00CE0A: provisional 68k moveq #$79, d1
db 0x00, 0x00, 0x32, 0x01 ; 00CE0C: provisional 68k ori.b #$1, d0
db 0x61, 0x00, 0xFD, 0xEC ; 00CE10: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 00CE14: provisional 68k bcc.b $ce84
db 0x64, 0x65 ; 00CE16: provisional 68k bcc.b $ce7d
db 0x5F, 0x69, 0x6E, 0x69 ; 00CE18: provisional 68k subq.w #$7, $6e69(a1)
db 0x74, 0x69 ; 00CE1C: provisional 68k moveq #$69, d2
db 0x61, 0x6C ; 00CE1E: provisional 68k bsr.b $ce8c
db 0x69, 0x73 ; 00CE20: provisional 68k bvs.b $ce95
db 0x65, 0x20 ; 00CE22: provisional 68k bcs.b $ce44
db 0x3A, 0x20 ; 00CE24: provisional 68k move.w -(a0), d5
db 0x50, 0x72, 0x6F, 0x62, 0x6C, 0x65, 0x6D, 0x73 ; 00CE26: provisional 68k addq.w #$8, ([$6c65, a2], $6d73)
db 0x20, 0x69, 0x6E, 0x20 ; 00CE2E: provisional 68k movea.l $6e20(a1), a0
db 0x76, 0x69 ; 00CE32: provisional 68k moveq #$69, d3
db 0x64, 0x65 ; 00CE34: provisional 68k bcc.b $ce9b
db 0x6F, 0x20 ; 00CE36: provisional 68k ble.b $ce58
db 0x70, 0x6C ; 00CE38: provisional 68k moveq #$6c, d0
db 0x61, 0x6E ; 00CE3A: provisional 68k bsr.b $ceaa
db 0x65, 0x20 ; 00CE3C: provisional 68k bcs.b $ce5e
db 0x32, 0x20 ; 00CE3E: provisional 68k move.w -(a0), d1
db 0x6D, 0x65 ; 00CE40: provisional 68k blt.b $cea7
db 0x6D, 0x6F ; 00CE42: provisional 68k blt.b $ceb3
db 0x72, 0x79 ; 00CE44: provisional 68k moveq #$79, d1
db 0x00, 0x00, 0x32, 0x01 ; 00CE46: provisional 68k ori.b #$1, d0
db 0x61, 0x00, 0xFD, 0xB2 ; 00CE4A: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 00CE4E: provisional 68k bcc.b $cebe
db 0x64, 0x65 ; 00CE50: provisional 68k bcc.b $ceb7
