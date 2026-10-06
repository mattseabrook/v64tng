; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013992–013A1B, inclusive.
cdi_nodv_entry_013992:
db 0x0C, 0x6D, 0xFF, 0xFF, 0x00, 0x2A ; 013992: provisional 68k cmpi.w #$ffff, $2a(a5)
db 0x67, 0x32 ; 013998: provisional 68k beq.b $139cc
db 0x60, 0x00, 0x00, 0x02 ; 01399A: provisional 68k bra.w $1399e
db 0x32, 0x3C, 0x80, 0x00 ; 01399E: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x92, 0x5A ; 0139A2: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 0139A6: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 0139A8
db 0x65, 0x5F ; 0139AA: provisional 68k bcs.b $13a0b
db 0x63, 0x6C ; 0139AC: provisional 68k bls.b $13a1a
db 0x38, 0x5F ; 0139AE: provisional 68k movea.w (a7)+, a4
db 0x74, 0x72 ; 0139B0: provisional 68k moveq #$72, d2
db 0x61, 0x6E ; 0139B2: provisional 68k bsr.b $13a22
db 0x73, 0x3A ; file 0139B4
db 0x20, 0x4E ; 0139B6: provisional 68k movea.l a6, a0
db 0x6F, 0x74 ; 0139B8: provisional 68k ble.b $13a2e
db 0x20, 0x69, 0x6D, 0x70 ; 0139BA: provisional 68k movea.l $6d70(a1), a0
db 0x6C, 0x65 ; 0139BE: provisional 68k bge.b $13a25
db 0x6D, 0x65 ; 0139C0: provisional 68k blt.b $13a27
db 0x6E, 0x74 ; 0139C2: provisional 68k bgt.b $13a38
db 0x65, 0x64 ; 0139C4: provisional 68k bcs.b $13a2a
db 0x20, 0x79, 0x65, 0x74, 0x21, 0x00 ; 0139C6: provisional 68k movea.l $65742100.l, a0
db 0x61, 0x00, 0x02, 0x88 ; 0139CC: provisional 68k bsr.w $13c56
db 0x64, 0x02 ; 0139D0: provisional 68k bcc.b $139d4
db 0x4E, 0x75 ; 0139D2: provisional 68k rts 
db 0x61, 0x00, 0x02, 0x72 ; 0139D4: provisional 68k bsr.w $13c48
db 0x61, 0x00, 0x02, 0x3C ; 0139D8: provisional 68k bsr.w $13c16
db 0xE2, 0x48 ; 0139DC: provisional 68k lsr.w #$1, d0
db 0xE2, 0x49 ; 0139DE: provisional 68k lsr.w #$1, d1
db 0xD4, 0xC1 ; 0139E0: provisional 68k adda.w d1, a2
db 0x42, 0x43 ; 0139E2: provisional 68k clr.w d3
db 0x53, 0x45 ; 0139E4: provisional 68k subq.w #$1, d5
db 0xE2, 0x4E ; 0139E6: provisional 68k lsr.w #$1, d6
db 0xE4, 0x4E ; 0139E8: provisional 68k lsr.w #$2, d6
db 0x53, 0x46 ; 0139EA: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 0139EC: provisional 68k subq.w #$1, d7
db 0x48, 0xA7, 0x63, 0x00 ; 0139EE: provisional 68k movem.w d1-d2/d6-d7, -(a7)
db 0x53, 0x44 ; 0139F2: provisional 68k subq.w #$1, d4
db 0x6A, 0x0A ; 0139F4: provisional 68k bpl.b $13a00
db 0x22, 0x69, 0x09, 0x34 ; 0139F6: provisional 68k movea.l $934(a1), a1
db 0x24, 0x49 ; 0139FA: provisional 68k movea.l a1, a2
db 0xD4, 0xC1 ; 0139FC: provisional 68k adda.w d1, a2
db 0x38, 0x05 ; 0139FE: provisional 68k move.w d5, d4
db 0x26, 0x58 ; 013A00: provisional 68k movea.l (a0)+, a3
db 0xD6, 0xC0 ; 013A02: provisional 68k adda.w d0, a3
db 0x42, 0x42 ; 013A04: provisional 68k clr.w d2
db 0x2F, 0x0A ; 013A06: provisional 68k move.l a2, -(a7)
db 0x26, 0xDA ; 013A08: provisional 68k move.l (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xFC ; 013A0A: provisional 68k dbra d6, $13a08
db 0x24, 0x5F ; 013A0E: provisional 68k movea.l (a7)+, a2
db 0x4C, 0x9F, 0x00, 0xC6 ; 013A10: provisional 68k movem.w (a7)+, d1-d2/d6-d7
db 0xD4, 0xC2 ; 013A14: provisional 68k adda.w d2, a2
db 0x51, 0xCF, 0xFF, 0xD6 ; 013A16: provisional 68k dbra d7, $139ee
db 0x4E, 0x75 ; 013A1A: provisional 68k rts 
