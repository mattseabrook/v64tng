; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011EE4–01201B, inclusive.
cdi_nodv_entry_011ee4:
db 0x2F, 0x0D ; 011EE4: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 011EE6: provisional 68k movea.l $8(a7), a5
db 0x30, 0x2F, 0x00, 0x0C ; 011EEA: provisional 68k move.w $c(a7), d0
db 0x90, 0x6D, 0x00, 0x1C ; 011EEE: provisional 68k sub.w $1c(a5), d0
db 0x6B, 0x2E ; 011EF2: provisional 68k bmi.b $11f22
db 0xB0, 0x6D, 0x00, 0x1E ; 011EF4: provisional 68k cmp.w $1e(a5), d0
db 0x6A, 0x28 ; 011EF8: provisional 68k bpl.b $11f22
db 0x2A, 0x6D, 0x00, 0x20 ; 011EFA: provisional 68k movea.l $20(a5), a5
db 0xE5, 0x40 ; 011EFE: provisional 68k asl.w #$2, d0
db 0xDA, 0xC0 ; 011F00: provisional 68k adda.w d0, a5
db 0x30, 0x2F, 0x00, 0x0E ; 011F02: provisional 68k move.w $e(a7), d0
db 0xB0, 0x7C, 0x00, 0x03 ; 011F06: provisional 68k cmp.w #$3, d0
db 0x6B, 0x06 ; 011F0A: provisional 68k bmi.b $11f12
db 0x80, 0xFC, 0x00, 0x03 ; 011F0C: provisional 68k divu.w #$3, d0
db 0x48, 0x40 ; 011F10: provisional 68k swap d0
db 0x52, 0x40 ; 011F12: provisional 68k addq.w #$1, d0
db 0x10, 0x35, 0x00, 0x00 ; 011F14: provisional 68k move.b (a5, d0.w), d0
db 0x2A, 0x5F ; 011F18: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 011F1A: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011F1E: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 011F20: provisional 68k rts 
db 0x42, 0x40 ; 011F22: provisional 68k clr.w d0
db 0x60, 0xF2 ; 011F24: provisional 68k bra.b $11f18
db 0x48, 0xE7, 0x30, 0x84 ; 011F26: provisional 68k movem.l d2-d3/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x14 ; 011F2A: provisional 68k movea.l $14(a7), a5
db 0x34, 0x2F, 0x00, 0x18 ; 011F2E: provisional 68k move.w $18(a7), d2
db 0x36, 0x2F, 0x00, 0x1A ; 011F32: provisional 68k move.w $1a(a7), d3
db 0x4A, 0xAD, 0x00, 0x24 ; 011F36: provisional 68k tst.l $24(a5)
db 0x67, 0x0C ; 011F3A: provisional 68k beq.b $11f48
db 0x2F, 0x2D, 0x00, 0x24 ; 011F3C: provisional 68k move.l $24(a5), -(a7)
db 0x61, 0x00, 0xF0, 0x22 ; 011F40: provisional 68k bsr.w $10f64
db 0x42, 0xAD, 0x00, 0x24 ; 011F44: provisional 68k clr.l $24(a5)
db 0x41, 0xED, 0x00, 0x28 ; 011F48: provisional 68k lea.l $28(a5), a0
db 0x3B, 0x42, 0x00, 0x1C ; 011F4C: provisional 68k move.w d2, $1c(a5)
db 0x3B, 0x43, 0x00, 0x1E ; 011F50: provisional 68k move.w d3, $1e(a5)
db 0xB6, 0x7C, 0x00, 0x10 ; 011F54: provisional 68k cmp.w #$10, d3
db 0x6F, 0x3A ; 011F58: provisional 68k ble.b $11f94
db 0x3F, 0x3C, 0x00, 0x03 ; 011F5A: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 011F5E: provisional 68k move.l a5, -(a7)
db 0x2D, 0x43, 0xCF, 0xE8 ; 011F60: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x04, 0xCF, 0xEC ; 011F64: provisional 68k move.l #$4, -$3014(a6)
db 0x2D, 0x6E, 0xA9, 0x04, 0xCF, 0xF0 ; 011F6C: provisional 68k move.l -$56fc(a6), -$3010(a6)
db 0x61, 0x00, 0xEF, 0x8A ; 011F72: provisional 68k bsr.w $10efe
db 0x48, 0x7A, 0x00, 0x0A ; 011F76: provisional 68k pea.l $11f82(pc)
db 0x2F, 0x08 ; 011F7A: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF2, 0x24 ; 011F7C: provisional 68k bsr.w $111a2
db 0x60, 0x0A ; 011F80: provisional 68k bra.b $11f8c
db 0x72, 0x67 ; 011F82: provisional 68k moveq #$67, d1
db 0x62, 0x20 ; 011F84: provisional 68k bhi.b $11fa6
db 0x64, 0x61 ; 011F86: provisional 68k bcc.b $11fe9
db 0x74, 0x61 ; 011F88: provisional 68k moveq #$61, d2
db 0x00, 0x00, 0x2B, 0x48 ; 011F8A: provisional 68k ori.b #$48, d0
db 0x00, 0x24, 0x20, 0x68 ; 011F8E: provisional 68k ori.b #$68, -(a4)
db 0x00, 0x2C, 0x2B, 0x48, 0x00, 0x20 ; 011F92: provisional 68k ori.b #$48, $20(a4)
db 0x4C, 0xDF, 0x21, 0x0C ; 011F98: provisional 68k movem.l (a7)+, d2-d3/a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 011F9C: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011FA0: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 011FA2: provisional 68k rts 
db 0x48, 0xE7, 0xE0, 0x84 ; 011FA4: provisional 68k movem.l d0-d2/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 011FA8: provisional 68k movea.l $18(a7), a5
db 0x20, 0x6F, 0x00, 0x1C ; 011FAC: provisional 68k movea.l $1c(a7), a0
db 0x30, 0x18 ; 011FB0: provisional 68k move.w (a0)+, d0
db 0x32, 0x18 ; 011FB2: provisional 68k move.w (a0)+, d1
db 0x90, 0x6D, 0x00, 0x1C ; 011FB4: provisional 68k sub.w $1c(a5), d0
db 0x6B, 0x2A ; 011FB8: provisional 68k bmi.b $11fe4
db 0x34, 0x01 ; 011FBA: provisional 68k move.w d1, d2
db 0xD4, 0x40 ; 011FBC: provisional 68k add.w d0, d2
db 0xB4, 0x6D, 0x00, 0x1E ; 011FBE: provisional 68k cmp.w $1e(a5), d2
db 0x6E, 0x20 ; 011FC2: provisional 68k bgt.b $11fe4
db 0x2A, 0x6D, 0x00, 0x20 ; 011FC4: provisional 68k movea.l $20(a5), a5
db 0xE5, 0x40 ; 011FC8: provisional 68k asl.w #$2, d0
db 0xDA, 0xC0 ; 011FCA: provisional 68k adda.w d0, a5
db 0x53, 0x41 ; 011FCC: provisional 68k subq.w #$1, d1
db 0x67, 0x06 ; 011FCE: provisional 68k beq.b $11fd6
db 0x2A, 0xD8 ; 011FD0: provisional 68k move.l (a0)+, (a5)+
db 0x51, 0xC9, 0xFF, 0xFC ; 011FD2: provisional 68k dbra d1, $11fd0
db 0x4C, 0xDF, 0x21, 0x07 ; 011FD6: provisional 68k movem.l (a7)+, d0-d2/a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 011FDA: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 011FDE: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 011FE2: provisional 68k rts 
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 011FE4: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xAC, 0x12 ; 011FEA: provisional 68k bsr.w $cbfe
db 0x70, 0x6C ; 011FEE: provisional 68k moveq #$6c, d0
db 0x74, 0x65 ; 011FF0: provisional 68k moveq #$65, d2
db 0x5F, 0x77, 0x72, 0x69 ; 011FF2: provisional 68k subq.w #$7, $69(a7, d7.w)
db 0x74, 0x65 ; 011FF6: provisional 68k moveq #$65, d2
db 0x5F, 0x64 ; 011FF8: provisional 68k subq.w #$7, -(a4)
db 0x61, 0x74 ; 011FFA: provisional 68k bsr.b $12070
db 0x61, 0x20 ; 011FFC: provisional 68k bsr.b $1201e
db 0x3A, 0x20 ; 011FFE: provisional 68k move.w -(a0), d5
db 0x44, 0x61 ; 012000: provisional 68k neg.w -(a1)
db 0x74, 0x61 ; 012002: provisional 68k moveq #$61, d2
db 0x20, 0x64 ; 012004: provisional 68k movea.l -(a4), a0
db 0x6F, 0x65 ; 012006: provisional 68k ble.b $1206d
db 0x73, 0x6E ; file 012008
db 0x27, 0x74, 0x20, 0x66, 0x69, 0x74 ; 01200A: provisional 68k move.l $66(a4, d2.w), $6974(a3)
db 0x20, 0x69, 0x6E, 0x20 ; 012010: provisional 68k movea.l $6e20(a1), a0
db 0x70, 0x61 ; 012014: provisional 68k moveq #$61, d0
db 0x6C, 0x65 ; 012016: provisional 68k bge.b $1207d
db 0x74, 0x74 ; 012018: provisional 68k moveq #$74, d2
db 0x65, 0x00 ; file 01201A
