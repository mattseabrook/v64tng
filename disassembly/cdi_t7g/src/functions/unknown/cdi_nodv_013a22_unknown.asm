; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013A22–013B8B, inclusive.
cdi_nodv_entry_013a22:
db 0x67, 0x0E ; 013A22: provisional 68k beq.b $13a32
db 0x0C, 0x6D, 0xFF, 0xFF, 0x00, 0x2A ; 013A24: provisional 68k cmpi.w #$ffff, $2a(a5)
db 0x67, 0x00, 0x00, 0xA2 ; 013A2A: provisional 68k beq.w $13ace
db 0x60, 0x00, 0x00, 0xFA ; 013A2E: provisional 68k bra.w $13b2a
db 0x61, 0x00, 0x02, 0x22 ; 013A32: provisional 68k bsr.w $13c56
db 0x64, 0x02 ; 013A36: provisional 68k bcc.b $13a3a
db 0x4E, 0x75 ; 013A38: provisional 68k rts 
db 0x61, 0x00, 0x02, 0x0C ; 013A3A: provisional 68k bsr.w $13c48
db 0x61, 0x00, 0x01, 0xD6 ; 013A3E: provisional 68k bsr.w $13c16
db 0xE2, 0x48 ; 013A42: provisional 68k lsr.w #$1, d0
db 0xE4, 0x49 ; 013A44: provisional 68k lsr.w #$2, d1
db 0xC2, 0xFC, 0x00, 0x0A ; 013A46: provisional 68k mulu.w #$a, d1
db 0xD4, 0xC1 ; 013A4A: provisional 68k adda.w d1, a2
db 0x42, 0x43 ; 013A4C: provisional 68k clr.w d3
db 0x53, 0x45 ; 013A4E: provisional 68k subq.w #$1, d5
db 0x48, 0x41 ; 013A50: provisional 68k swap d1
db 0x48, 0x42 ; 013A52: provisional 68k swap d2
db 0x32, 0x0B ; 013A54: provisional 68k move.w a3, d1
db 0x34, 0x0B ; 013A56: provisional 68k move.w a3, d2
db 0xE9, 0x42 ; 013A58: provisional 68k asl.w #$4, d2
db 0x48, 0x41 ; 013A5A: provisional 68k swap d1
db 0x48, 0x42 ; 013A5C: provisional 68k swap d2
db 0xE2, 0x4E ; 013A5E: provisional 68k lsr.w #$1, d6
db 0xE2, 0x4F ; 013A60: provisional 68k lsr.w #$1, d7
db 0x53, 0x46 ; 013A62: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 013A64: provisional 68k subq.w #$1, d7
db 0x48, 0xA7, 0x03, 0x00 ; 013A66: provisional 68k movem.w d6-d7, -(a7)
db 0x48, 0x41 ; 013A6A: provisional 68k swap d1
db 0x48, 0x42 ; 013A6C: provisional 68k swap d2
db 0x53, 0x44 ; 013A6E: provisional 68k subq.w #$1, d4
db 0x6A, 0x0A ; 013A70: provisional 68k bpl.b $13a7c
db 0x22, 0x69, 0x09, 0x34 ; 013A72: provisional 68k movea.l $934(a1), a1
db 0x24, 0x49 ; 013A76: provisional 68k movea.l a1, a2
db 0xD4, 0xC1 ; 013A78: provisional 68k adda.w d1, a2
db 0x38, 0x05 ; 013A7A: provisional 68k move.w d5, d4
db 0x26, 0x58 ; 013A7C: provisional 68k movea.l (a0)+, a3
db 0x28, 0x58 ; 013A7E: provisional 68k movea.l (a0)+, a4
db 0xD6, 0xC0 ; 013A80: provisional 68k adda.w d0, a3
db 0xD8, 0xC0 ; 013A82: provisional 68k adda.w d0, a4
db 0x2F, 0x0A ; 013A84: provisional 68k move.l a2, -(a7)
db 0x1E, 0x13 ; 013A86: provisional 68k move.b (a3), d7
db 0x4A, 0x1A ; 013A88: provisional 68k tst.b (a2)+
db 0x67, 0x06 ; 013A8A: provisional 68k beq.b $13a92
db 0xCE, 0x7C, 0x00, 0x0F ; 013A8C: provisional 68k and.w #$f, d7
db 0x8E, 0x02 ; 013A90: provisional 68k or.b d2, d7
db 0x4A, 0x1A ; 013A92: provisional 68k tst.b (a2)+
db 0x67, 0x06 ; 013A94: provisional 68k beq.b $13a9c
db 0xCE, 0x7C, 0x00, 0xF0 ; 013A96: provisional 68k and.w #$f0, d7
db 0x8E, 0x01 ; 013A9A: provisional 68k or.b d1, d7
db 0x16, 0xC7 ; 013A9C: provisional 68k move.b d7, (a3)+
db 0x1E, 0x13 ; 013A9E: provisional 68k move.b (a3), d7
db 0x4A, 0x1A ; 013AA0: provisional 68k tst.b (a2)+
db 0x67, 0x06 ; 013AA2: provisional 68k beq.b $13aaa
db 0xCE, 0x7C, 0x00, 0x0F ; 013AA4: provisional 68k and.w #$f, d7
db 0x8E, 0x02 ; 013AA8: provisional 68k or.b d2, d7
db 0x4A, 0x1A ; 013AAA: provisional 68k tst.b (a2)+
db 0x67, 0x06 ; 013AAC: provisional 68k beq.b $13ab4
db 0xCE, 0x7C, 0x00, 0xF0 ; 013AAE: provisional 68k and.w #$f0, d7
db 0x8E, 0x01 ; 013AB2: provisional 68k or.b d1, d7
db 0x18, 0xC7 ; 013AB4: provisional 68k move.b d7, (a4)+
db 0x52, 0x4A ; 013AB6: provisional 68k addq.w #$1, a2
db 0x51, 0xCE, 0xFF, 0xCC ; 013AB8: provisional 68k dbra d6, $13a86
db 0x48, 0x41 ; 013ABC: provisional 68k swap d1
db 0x48, 0x42 ; 013ABE: provisional 68k swap d2
db 0x24, 0x5F ; 013AC0: provisional 68k movea.l (a7)+, a2
db 0x4C, 0x9F, 0x00, 0xC0 ; 013AC2: provisional 68k movem.w (a7)+, d6-d7
db 0xD4, 0xC2 ; 013AC6: provisional 68k adda.w d2, a2
db 0x51, 0xCF, 0xFF, 0x9C ; 013AC8: provisional 68k dbra d7, $13a66
db 0x4E, 0x75 ; 013ACC: provisional 68k rts 
db 0x61, 0x00, 0x01, 0x86 ; 013ACE: provisional 68k bsr.w $13c56
db 0x64, 0x02 ; 013AD2: provisional 68k bcc.b $13ad6
db 0x4E, 0x75 ; 013AD4: provisional 68k rts 
db 0x61, 0x00, 0x01, 0x70 ; 013AD6: provisional 68k bsr.w $13c48
db 0x61, 0x00, 0x01, 0x3A ; 013ADA: provisional 68k bsr.w $13c16
db 0xE4, 0x48 ; 013ADE: provisional 68k lsr.w #$2, d0
db 0xC0, 0xFC, 0x00, 0x0A ; 013AE0: provisional 68k mulu.w #$a, d0
db 0xE4, 0x49 ; 013AE4: provisional 68k lsr.w #$2, d1
db 0xC2, 0xFC, 0x00, 0x0A ; 013AE6: provisional 68k mulu.w #$a, d1
db 0xD4, 0xC1 ; 013AEA: provisional 68k adda.w d1, a2
db 0x42, 0x43 ; 013AEC: provisional 68k clr.w d3
db 0x53, 0x45 ; 013AEE: provisional 68k subq.w #$1, d5
db 0xE4, 0x4E ; 013AF0: provisional 68k lsr.w #$2, d6
db 0xE2, 0x4F ; 013AF2: provisional 68k lsr.w #$1, d7
db 0x53, 0x46 ; 013AF4: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 013AF6: provisional 68k subq.w #$1, d7
db 0x48, 0xA7, 0x63, 0x00 ; 013AF8: provisional 68k movem.w d1-d2/d6-d7, -(a7)
db 0x53, 0x44 ; 013AFC: provisional 68k subq.w #$1, d4
db 0x6A, 0x0A ; 013AFE: provisional 68k bpl.b $13b0a
db 0x22, 0x69, 0x09, 0x34 ; 013B00: provisional 68k movea.l $934(a1), a1
db 0x24, 0x49 ; 013B04: provisional 68k movea.l a1, a2
db 0xD4, 0xC1 ; 013B06: provisional 68k adda.w d1, a2
db 0x38, 0x05 ; 013B08: provisional 68k move.w d5, d4
db 0x26, 0x58 ; 013B0A: provisional 68k movea.l (a0)+, a3
db 0xD6, 0xC0 ; 013B0C: provisional 68k adda.w d0, a3
db 0x42, 0x42 ; 013B0E: provisional 68k clr.w d2
db 0x2F, 0x0A ; 013B10: provisional 68k move.l a2, -(a7)
db 0x26, 0xDA ; 013B12: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013B14: provisional 68k move.l (a2)+, (a3)+
db 0x36, 0xDA ; 013B16: provisional 68k move.w (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xF8 ; 013B18: provisional 68k dbra d6, $13b12
db 0x24, 0x5F ; 013B1C: provisional 68k movea.l (a7)+, a2
db 0x4C, 0x9F, 0x00, 0xC6 ; 013B1E: provisional 68k movem.w (a7)+, d1-d2/d6-d7
db 0xD4, 0xC2 ; 013B22: provisional 68k adda.w d2, a2
db 0x51, 0xCF, 0xFF, 0xD2 ; 013B24: provisional 68k dbra d7, $13af8
db 0x4E, 0x75 ; 013B28: provisional 68k rts 
db 0x61, 0x00, 0x01, 0x2A ; 013B2A: provisional 68k bsr.w $13c56
db 0x64, 0x02 ; 013B2E: provisional 68k bcc.b $13b32
db 0x4E, 0x75 ; 013B30: provisional 68k rts 
db 0x61, 0x00, 0x01, 0x14 ; 013B32: provisional 68k bsr.w $13c48
db 0x61, 0x00, 0x00, 0xDE ; 013B36: provisional 68k bsr.w $13c16
db 0xE4, 0x48 ; 013B3A: provisional 68k lsr.w #$2, d0
db 0xC0, 0xFC, 0x00, 0x0A ; 013B3C: provisional 68k mulu.w #$a, d0
db 0xE4, 0x49 ; 013B40: provisional 68k lsr.w #$2, d1
db 0xC2, 0xFC, 0x00, 0x0A ; 013B42: provisional 68k mulu.w #$a, d1
db 0xD4, 0xC1 ; 013B46: provisional 68k adda.w d1, a2
db 0x42, 0x43 ; 013B48: provisional 68k clr.w d3
db 0xE4, 0x4E ; 013B4A: provisional 68k lsr.w #$2, d6
db 0xE2, 0x4F ; 013B4C: provisional 68k lsr.w #$1, d7
db 0x53, 0x45 ; 013B4E: provisional 68k subq.w #$1, d5
db 0x53, 0x46 ; 013B50: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 013B52: provisional 68k subq.w #$1, d7
db 0x48, 0xA7, 0x63, 0x00 ; 013B54: provisional 68k movem.w d1-d2/d6-d7, -(a7)
db 0x53, 0x44 ; 013B58: provisional 68k subq.w #$1, d4
db 0x6A, 0x0A ; 013B5A: provisional 68k bpl.b $13b66
db 0x22, 0x69, 0x09, 0x34 ; 013B5C: provisional 68k movea.l $934(a1), a1
db 0x24, 0x49 ; 013B60: provisional 68k movea.l a1, a2
db 0xD4, 0xC1 ; 013B62: provisional 68k adda.w d1, a2
db 0x38, 0x05 ; 013B64: provisional 68k move.w d5, d4
db 0x26, 0x58 ; 013B66: provisional 68k movea.l (a0)+, a3
db 0xD6, 0xC0 ; 013B68: provisional 68k adda.w d0, a3
db 0x42, 0x42 ; 013B6A: provisional 68k clr.w d2
db 0x2F, 0x0A ; 013B6C: provisional 68k move.l a2, -(a7)
db 0x61, 0x00, 0x00, 0x1C ; 013B6E: provisional 68k bsr.w $13b8c
db 0x61, 0x00, 0x00, 0x6C ; 013B72: provisional 68k bsr.w $13be0
db 0x47, 0xEB, 0x00, 0x0A ; 013B76: provisional 68k lea.l $a(a3), a3
db 0x51, 0xCE, 0xFF, 0xF2 ; 013B7A: provisional 68k dbra d6, $13b6e
db 0x24, 0x5F ; 013B7E: provisional 68k movea.l (a7)+, a2
db 0x4C, 0x9F, 0x00, 0xC6 ; 013B80: provisional 68k movem.w (a7)+, d1-d2/d6-d7
db 0xD4, 0xC2 ; 013B84: provisional 68k adda.w d2, a2
db 0x51, 0xCF, 0xFF, 0xCC ; 013B86: provisional 68k dbra d7, $13b54
db 0x4E, 0x75 ; 013B8A: provisional 68k rts 
