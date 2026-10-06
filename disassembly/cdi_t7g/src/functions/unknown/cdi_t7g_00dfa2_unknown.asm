; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DFA2–00E033, inclusive.
cdi_t7g_entry_00dfa2:
db 0x61, 0x00, 0xDD, 0x92 ; 00DFA2: provisional 68k bsr.w $bd36
db 0x48, 0x7A, 0x00, 0x08 ; 00DFA6: provisional 68k pea.l $dfb0(pc)
db 0x61, 0x00, 0xDD, 0xA4 ; 00DFAA: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00DFAE: provisional 68k bra.b $dfba
db 0x67, 0x66 ; 00DFB0: provisional 68k beq.b $e018
db 0x6D, 0x61 ; 00DFB2: provisional 68k blt.b $e015
db 0x6E, 0x3A ; 00DFB4: provisional 68k bgt.b $dff0
db 0x0D, 0x0A, 0x00, 0x00 ; 00DFB6: provisional 68k movep.w $0(a2), d6
db 0x42, 0xE7 ; 00DFBA: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00DFBC: provisional 68k pea.l $dfc6(pc)
db 0x61, 0x00, 0xDD, 0x8E ; 00DFC0: provisional 68k bsr.w $bd50
db 0x60, 0x0E ; 00DFC4: provisional 68k bra.b $dfd4
db 0x67, 0x66 ; 00DFC6: provisional 68k beq.b $e02e
db 0x6D, 0x5F ; 00DFC8: provisional 68k blt.b $e029
db 0x73, 0x74 ; file 00DFCA
db 0x61, 0x74 ; 00DFCC: provisional 68k bsr.b $e042
db 0x75, 0x73 ; file 00DFCE
db 0x09, 0x09, 0x00, 0x00 ; 00DFD0: provisional 68k movep.w $0(a1), d4
db 0x3F, 0x2E, 0xAB, 0xE4 ; 00DFD4: provisional 68k move.w -$541c(a6), -(a7)
db 0x61, 0x00, 0xDC, 0xC4 ; 00DFD8: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00DFDC: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xDD, 0x56 ; 00DFDE: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 00DFE2: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00DFE4: provisional 68k pea.l $dfee(pc)
db 0x61, 0x00, 0xDD, 0x66 ; 00DFE8: provisional 68k bsr.w $bd50
db 0x60, 0x0E ; 00DFEC: provisional 68k bra.b $dffc
db 0x67, 0x70 ; 00DFEE: provisional 68k beq.b $e060
db 0x6F, 0x73 ; 00DFF0: provisional 68k ble.b $e065
db 0x5F, 0x65 ; 00DFF2: provisional 68k subq.w #$7, -(a5)
db 0x72, 0x72 ; 00DFF4: provisional 68k moveq #$72, d1
db 0x6F, 0x72 ; 00DFF6: provisional 68k ble.b $e06a
db 0x09, 0x09, 0x00, 0x00 ; 00DFF8: provisional 68k movep.w $0(a1), d4
db 0x2F, 0x2E, 0xAC, 0x86 ; 00DFFC: provisional 68k move.l -$537a(a6), -(a7)
db 0x61, 0x00, 0xDC, 0x52 ; 00E000: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00E004: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xDD, 0x2E ; 00E006: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 00E00A: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E00C: provisional 68k pea.l $e016(pc)
db 0x61, 0x00, 0xDD, 0x3E ; 00E010: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00E014: provisional 68k bra.b $e020
db 0x63, 0x75 ; 00E016: provisional 68k bls.b $e08d
db 0x72, 0x5F ; 00E018: provisional 68k moveq #$5f, d1
db 0x70, 0x63 ; 00E01A: provisional 68k moveq #$63, d0
db 0x62, 0x09 ; 00E01C: provisional 68k bhi.b $e027
db 0x09, 0x00 ; 00E01E: provisional 68k btst.l d4, d0
db 0x2F, 0x2E, 0xAC, 0x80 ; 00E020: provisional 68k move.l -$5380(a6), -(a7)
db 0x61, 0x00, 0xDC, 0x2E ; 00E024: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00E028: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xDD, 0x0A ; 00E02A: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xDD, 0x06 ; 00E02E: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 00E032: provisional 68k rts 
