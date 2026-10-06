; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00EE22–00EEB3, inclusive.
cdi_nodv_entry_00ee22:
db 0x61, 0x00, 0xDD, 0x92 ; 00EE22: provisional 68k bsr.w $cbb6
db 0x48, 0x7A, 0x00, 0x08 ; 00EE26: provisional 68k pea.l $ee30(pc)
db 0x61, 0x00, 0xDD, 0xA4 ; 00EE2A: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00EE2E: provisional 68k bra.b $ee3a
db 0x67, 0x66 ; 00EE30: provisional 68k beq.b $ee98
db 0x6D, 0x61 ; 00EE32: provisional 68k blt.b $ee95
db 0x6E, 0x3A ; 00EE34: provisional 68k bgt.b $ee70
db 0x0D, 0x0A, 0x00, 0x00 ; 00EE36: provisional 68k movep.w $0(a2), d6
db 0x42, 0xE7 ; 00EE3A: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00EE3C: provisional 68k pea.l $ee46(pc)
db 0x61, 0x00, 0xDD, 0x8E ; 00EE40: provisional 68k bsr.w $cbd0
db 0x60, 0x0E ; 00EE44: provisional 68k bra.b $ee54
db 0x67, 0x66 ; 00EE46: provisional 68k beq.b $eeae
db 0x6D, 0x5F ; 00EE48: provisional 68k blt.b $eea9
db 0x73, 0x74 ; file 00EE4A
db 0x61, 0x74 ; 00EE4C: provisional 68k bsr.b $eec2
db 0x75, 0x73 ; file 00EE4E
db 0x09, 0x09, 0x00, 0x00 ; 00EE50: provisional 68k movep.w $0(a1), d4
db 0x3F, 0x2E, 0xAB, 0xE4 ; 00EE54: provisional 68k move.w -$541c(a6), -(a7)
db 0x61, 0x00, 0xDC, 0xC4 ; 00EE58: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00EE5C: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xDD, 0x56 ; 00EE5E: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 00EE62: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00EE64: provisional 68k pea.l $ee6e(pc)
db 0x61, 0x00, 0xDD, 0x66 ; 00EE68: provisional 68k bsr.w $cbd0
db 0x60, 0x0E ; 00EE6C: provisional 68k bra.b $ee7c
db 0x67, 0x70 ; 00EE6E: provisional 68k beq.b $eee0
db 0x6F, 0x73 ; 00EE70: provisional 68k ble.b $eee5
db 0x5F, 0x65 ; 00EE72: provisional 68k subq.w #$7, -(a5)
db 0x72, 0x72 ; 00EE74: provisional 68k moveq #$72, d1
db 0x6F, 0x72 ; 00EE76: provisional 68k ble.b $eeea
db 0x09, 0x09, 0x00, 0x00 ; 00EE78: provisional 68k movep.w $0(a1), d4
db 0x2F, 0x2E, 0xAC, 0x86 ; 00EE7C: provisional 68k move.l -$537a(a6), -(a7)
db 0x61, 0x00, 0xDC, 0x52 ; 00EE80: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00EE84: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xDD, 0x2E ; 00EE86: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 00EE8A: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00EE8C: provisional 68k pea.l $ee96(pc)
db 0x61, 0x00, 0xDD, 0x3E ; 00EE90: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00EE94: provisional 68k bra.b $eea0
db 0x63, 0x75 ; 00EE96: provisional 68k bls.b $ef0d
db 0x72, 0x5F ; 00EE98: provisional 68k moveq #$5f, d1
db 0x70, 0x63 ; 00EE9A: provisional 68k moveq #$63, d0
db 0x62, 0x09 ; 00EE9C: provisional 68k bhi.b $eea7
db 0x09, 0x00 ; 00EE9E: provisional 68k btst.l d4, d0
db 0x2F, 0x2E, 0xAC, 0x80 ; 00EEA0: provisional 68k move.l -$5380(a6), -(a7)
db 0x61, 0x00, 0xDC, 0x2E ; 00EEA4: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00EEA8: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xDD, 0x0A ; 00EEAA: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xDD, 0x06 ; 00EEAE: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 00EEB2: provisional 68k rts 
