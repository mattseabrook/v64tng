; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00EDBA–00EE21, inclusive.
cdi_nodv_entry_00edba:
db 0x48, 0xE7, 0x00, 0x84 ; 00EDBA: provisional 68k movem.l a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 00EDBE: provisional 68k movea.l $c(a7), a5
db 0x20, 0x6D, 0x00, 0x2E ; 00EDC2: provisional 68k movea.l $2e(a5), a0
db 0x3B, 0x68, 0x00, 0x20, 0x00, 0x3C ; 00EDC6: provisional 68k move.w $20(a0), $3c(a5)
db 0x42, 0x6D, 0x00, 0x3E ; 00EDCC: provisional 68k clr.w $3e(a5)
db 0x4C, 0xDF, 0x21, 0x00 ; 00EDD0: provisional 68k movem.l (a7)+, a0/a5
db 0x2E, 0x9F ; 00EDD4: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00EDD6: provisional 68k rts 
db 0x42, 0xE7 ; 00EDD8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00EDDA: provisional 68k pea.l $ede4(pc)
db 0x61, 0x00, 0xDD, 0xF0 ; 00EDDE: provisional 68k bsr.w $cbd0
db 0x60, 0x16 ; 00EDE2: provisional 68k bra.b $edfa
db 0x64, 0x65 ; 00EDE4: provisional 68k bcc.b $ee4b
db 0x62, 0x75 ; 00EDE6: provisional 68k bhi.b $ee5d
db 0x67, 0x5F ; 00EDE8: provisional 68k beq.b $ee49
db 0x72, 0x61 ; 00EDEA: provisional 68k moveq #$61, d1
db 0x6E, 0x67 ; 00EDEC: provisional 68k bgt.b $ee55
db 0x65, 0x3A ; 00EDEE: provisional 68k bcs.b $ee2a
db 0x20, 0x72, 0x61, 0x6E, 0x67, 0x65 ; 00EDF0: provisional 68k movea.l ([$6765, a2]), a0
db 0x20, 0x3D ; file 00EDF6
db 0x20, 0x00 ; 00EDF8: provisional 68k move.l d0, d0
db 0x3F, 0x2D, 0x00, 0x3C ; 00EDFA: provisional 68k move.w $3c(a5), -(a7)
db 0x61, 0x00, 0xDD, 0x1E ; 00EDFE: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00EE02: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00EE04: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00EE06: provisional 68k pea.l $ee10(pc)
db 0x61, 0x00, 0xDD, 0xC4 ; 00EE0A: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00EE0E: provisional 68k bra.b $ee12
db 0x20, 0x00 ; 00EE10: provisional 68k move.l d0, d0
db 0x3F, 0x2D, 0x00, 0x3E ; 00EE12: provisional 68k move.w $3e(a5), -(a7)
db 0x61, 0x00, 0xDD, 0x06 ; 00EE16: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00EE1A: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xDD, 0x98 ; 00EE1C: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 00EE20: provisional 68k rts 
