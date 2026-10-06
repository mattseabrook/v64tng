; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011CA0–011D15, inclusive.
cdi_nodv_entry_011ca0:
db 0xF2, 0x5E ; file 011CA0
db 0x2B, 0x48, 0x00, 0x20 ; 011CA2: provisional 68k move.l a0, $20(a5)
db 0x3F, 0x3C, 0x00, 0x03 ; 011CA6: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 011CAA: provisional 68k move.l a5, -(a7)
db 0x2D, 0x41, 0xCF, 0xE8 ; 011CAC: provisional 68k move.l d1, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x04, 0xCF, 0xEC ; 011CB0: provisional 68k move.l #$4, -$3014(a6)
db 0x2D, 0x43, 0xCF, 0xF0 ; 011CB8: provisional 68k move.l d3, -$3010(a6)
db 0x61, 0x00, 0xF2, 0x40 ; 011CBC: provisional 68k bsr.w $10efe
db 0x2B, 0x48, 0x00, 0x24 ; 011CC0: provisional 68k move.l a0, $24(a5)
db 0x61, 0x00, 0x00, 0x50 ; 011CC4: provisional 68k bsr.w $11d16
db 0x4E, 0x75 ; 011CC8: provisional 68k rts 
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 011CCA: provisional 68k move.l #$0, -(a7)
db 0x61, 0x00, 0xF5, 0xF0 ; 011CD0: provisional 68k bsr.w $112c2
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 011CD4: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xAF, 0x22 ; 011CDA: provisional 68k bsr.w $cbfe
db 0x69, 0x62 ; 011CDE: provisional 68k bvs.b $11d42
db 0x66, 0x72 ; 011CE0: provisional 68k bne.b $11d54
db 0x5F, 0x63 ; 011CE2: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 011CE4: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 011CE6: provisional 68k bsr.b $11d5c
db 0x65, 0x20 ; 011CE8: provisional 68k bcs.b $11d0a
db 0x3A, 0x20 ; 011CEA: provisional 68k move.w -(a0), d5
db 0x54, 0x6F, 0x6F, 0x20 ; 011CEC: provisional 68k addq.w #$2, $6f20(a7)
db 0x6D, 0x61 ; 011CF0: provisional 68k blt.b $11d53
db 0x6E, 0x79 ; 011CF2: provisional 68k bgt.b $11d6d
db 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x20, 0x74 ; 011CF4: provisional 68k movea.l ([$6f72, a2], $64732074), a0
db 0x6F, 0x20 ; 011CFE: provisional 68k ble.b $11d20
db 0x66, 0x69 ; 011D00: provisional 68k bne.b $11d6b
db 0x74, 0x20 ; 011D02: provisional 68k moveq #$20, d2
db 0x69, 0x6E ; 011D04: provisional 68k bvs.b $11d74
db 0x20, 0x69, 0x6E, 0x64 ; 011D06: provisional 68k movea.l $6e64(a1), a0
db 0x65, 0x63 ; 011D0A: provisional 68k bcs.b $11d6f
db 0x69, 0x65 ; 011D0C: provisional 68k bvs.b $11d73
db 0x73, 0x20 ; file 011D0E
db 0x66, 0x72 ; 011D10: provisional 68k bne.b $11d84
db 0x61, 0x67 ; 011D12: provisional 68k bsr.b $11d7b
db 0x21, 0x00 ; 011D14: provisional 68k move.l d0, -(a0)
