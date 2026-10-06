; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012BA2–012D0B, inclusive.
cdi_t7g_entry_012ba2:
db 0x67, 0x0E ; 012BA2: provisional 68k beq.b $12bb2
db 0x0C, 0x6D, 0xFF, 0xFF, 0x00, 0x2A ; 012BA4: provisional 68k cmpi.w #$ffff, $2a(a5)
db 0x67, 0x00, 0x00, 0xA2 ; 012BAA: provisional 68k beq.w $12c4e
db 0x60, 0x00, 0x00, 0xFA ; 012BAE: provisional 68k bra.w $12caa
db 0x61, 0x00, 0x02, 0x22 ; 012BB2: provisional 68k bsr.w $12dd6
db 0x64, 0x02 ; 012BB6: provisional 68k bcc.b $12bba
db 0x4E, 0x75 ; 012BB8: provisional 68k rts 
db 0x61, 0x00, 0x02, 0x0C ; 012BBA: provisional 68k bsr.w $12dc8
db 0x61, 0x00, 0x01, 0xD6 ; 012BBE: provisional 68k bsr.w $12d96
db 0xE2, 0x48 ; 012BC2: provisional 68k lsr.w #$1, d0
db 0xE4, 0x49 ; 012BC4: provisional 68k lsr.w #$2, d1
db 0xC2, 0xFC, 0x00, 0x0A ; 012BC6: provisional 68k mulu.w #$a, d1
db 0xD4, 0xC1 ; 012BCA: provisional 68k adda.w d1, a2
db 0x42, 0x43 ; 012BCC: provisional 68k clr.w d3
db 0x53, 0x45 ; 012BCE: provisional 68k subq.w #$1, d5
db 0x48, 0x41 ; 012BD0: provisional 68k swap d1
db 0x48, 0x42 ; 012BD2: provisional 68k swap d2
db 0x32, 0x0B ; 012BD4: provisional 68k move.w a3, d1
db 0x34, 0x0B ; 012BD6: provisional 68k move.w a3, d2
db 0xE9, 0x42 ; 012BD8: provisional 68k asl.w #$4, d2
db 0x48, 0x41 ; 012BDA: provisional 68k swap d1
db 0x48, 0x42 ; 012BDC: provisional 68k swap d2
db 0xE2, 0x4E ; 012BDE: provisional 68k lsr.w #$1, d6
db 0xE2, 0x4F ; 012BE0: provisional 68k lsr.w #$1, d7
db 0x53, 0x46 ; 012BE2: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 012BE4: provisional 68k subq.w #$1, d7
db 0x48, 0xA7, 0x03, 0x00 ; 012BE6: provisional 68k movem.w d6-d7, -(a7)
db 0x48, 0x41 ; 012BEA: provisional 68k swap d1
db 0x48, 0x42 ; 012BEC: provisional 68k swap d2
db 0x53, 0x44 ; 012BEE: provisional 68k subq.w #$1, d4
db 0x6A, 0x0A ; 012BF0: provisional 68k bpl.b $12bfc
db 0x22, 0x69, 0x09, 0x34 ; 012BF2: provisional 68k movea.l $934(a1), a1
db 0x24, 0x49 ; 012BF6: provisional 68k movea.l a1, a2
db 0xD4, 0xC1 ; 012BF8: provisional 68k adda.w d1, a2
db 0x38, 0x05 ; 012BFA: provisional 68k move.w d5, d4
db 0x26, 0x58 ; 012BFC: provisional 68k movea.l (a0)+, a3
db 0x28, 0x58 ; 012BFE: provisional 68k movea.l (a0)+, a4
db 0xD6, 0xC0 ; 012C00: provisional 68k adda.w d0, a3
db 0xD8, 0xC0 ; 012C02: provisional 68k adda.w d0, a4
db 0x2F, 0x0A ; 012C04: provisional 68k move.l a2, -(a7)
db 0x1E, 0x13 ; 012C06: provisional 68k move.b (a3), d7
db 0x4A, 0x1A ; 012C08: provisional 68k tst.b (a2)+
db 0x67, 0x06 ; 012C0A: provisional 68k beq.b $12c12
db 0xCE, 0x7C, 0x00, 0x0F ; 012C0C: provisional 68k and.w #$f, d7
db 0x8E, 0x02 ; 012C10: provisional 68k or.b d2, d7
db 0x4A, 0x1A ; 012C12: provisional 68k tst.b (a2)+
db 0x67, 0x06 ; 012C14: provisional 68k beq.b $12c1c
db 0xCE, 0x7C, 0x00, 0xF0 ; 012C16: provisional 68k and.w #$f0, d7
db 0x8E, 0x01 ; 012C1A: provisional 68k or.b d1, d7
db 0x16, 0xC7 ; 012C1C: provisional 68k move.b d7, (a3)+
db 0x1E, 0x13 ; 012C1E: provisional 68k move.b (a3), d7
db 0x4A, 0x1A ; 012C20: provisional 68k tst.b (a2)+
db 0x67, 0x06 ; 012C22: provisional 68k beq.b $12c2a
db 0xCE, 0x7C, 0x00, 0x0F ; 012C24: provisional 68k and.w #$f, d7
db 0x8E, 0x02 ; 012C28: provisional 68k or.b d2, d7
db 0x4A, 0x1A ; 012C2A: provisional 68k tst.b (a2)+
db 0x67, 0x06 ; 012C2C: provisional 68k beq.b $12c34
db 0xCE, 0x7C, 0x00, 0xF0 ; 012C2E: provisional 68k and.w #$f0, d7
db 0x8E, 0x01 ; 012C32: provisional 68k or.b d1, d7
db 0x18, 0xC7 ; 012C34: provisional 68k move.b d7, (a4)+
db 0x52, 0x4A ; 012C36: provisional 68k addq.w #$1, a2
db 0x51, 0xCE, 0xFF, 0xCC ; 012C38: provisional 68k dbra d6, $12c06
db 0x48, 0x41 ; 012C3C: provisional 68k swap d1
db 0x48, 0x42 ; 012C3E: provisional 68k swap d2
db 0x24, 0x5F ; 012C40: provisional 68k movea.l (a7)+, a2
db 0x4C, 0x9F, 0x00, 0xC0 ; 012C42: provisional 68k movem.w (a7)+, d6-d7
db 0xD4, 0xC2 ; 012C46: provisional 68k adda.w d2, a2
db 0x51, 0xCF, 0xFF, 0x9C ; 012C48: provisional 68k dbra d7, $12be6
db 0x4E, 0x75 ; 012C4C: provisional 68k rts 
db 0x61, 0x00, 0x01, 0x86 ; 012C4E: provisional 68k bsr.w $12dd6
db 0x64, 0x02 ; 012C52: provisional 68k bcc.b $12c56
db 0x4E, 0x75 ; 012C54: provisional 68k rts 
db 0x61, 0x00, 0x01, 0x70 ; 012C56: provisional 68k bsr.w $12dc8
db 0x61, 0x00, 0x01, 0x3A ; 012C5A: provisional 68k bsr.w $12d96
db 0xE4, 0x48 ; 012C5E: provisional 68k lsr.w #$2, d0
db 0xC0, 0xFC, 0x00, 0x0A ; 012C60: provisional 68k mulu.w #$a, d0
db 0xE4, 0x49 ; 012C64: provisional 68k lsr.w #$2, d1
db 0xC2, 0xFC, 0x00, 0x0A ; 012C66: provisional 68k mulu.w #$a, d1
db 0xD4, 0xC1 ; 012C6A: provisional 68k adda.w d1, a2
db 0x42, 0x43 ; 012C6C: provisional 68k clr.w d3
db 0x53, 0x45 ; 012C6E: provisional 68k subq.w #$1, d5
db 0xE4, 0x4E ; 012C70: provisional 68k lsr.w #$2, d6
db 0xE2, 0x4F ; 012C72: provisional 68k lsr.w #$1, d7
db 0x53, 0x46 ; 012C74: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 012C76: provisional 68k subq.w #$1, d7
db 0x48, 0xA7, 0x63, 0x00 ; 012C78: provisional 68k movem.w d1-d2/d6-d7, -(a7)
db 0x53, 0x44 ; 012C7C: provisional 68k subq.w #$1, d4
db 0x6A, 0x0A ; 012C7E: provisional 68k bpl.b $12c8a
db 0x22, 0x69, 0x09, 0x34 ; 012C80: provisional 68k movea.l $934(a1), a1
db 0x24, 0x49 ; 012C84: provisional 68k movea.l a1, a2
db 0xD4, 0xC1 ; 012C86: provisional 68k adda.w d1, a2
db 0x38, 0x05 ; 012C88: provisional 68k move.w d5, d4
db 0x26, 0x58 ; 012C8A: provisional 68k movea.l (a0)+, a3
db 0xD6, 0xC0 ; 012C8C: provisional 68k adda.w d0, a3
db 0x42, 0x42 ; 012C8E: provisional 68k clr.w d2
db 0x2F, 0x0A ; 012C90: provisional 68k move.l a2, -(a7)
db 0x26, 0xDA ; 012C92: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012C94: provisional 68k move.l (a2)+, (a3)+
db 0x36, 0xDA ; 012C96: provisional 68k move.w (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xF8 ; 012C98: provisional 68k dbra d6, $12c92
db 0x24, 0x5F ; 012C9C: provisional 68k movea.l (a7)+, a2
db 0x4C, 0x9F, 0x00, 0xC6 ; 012C9E: provisional 68k movem.w (a7)+, d1-d2/d6-d7
db 0xD4, 0xC2 ; 012CA2: provisional 68k adda.w d2, a2
db 0x51, 0xCF, 0xFF, 0xD2 ; 012CA4: provisional 68k dbra d7, $12c78
db 0x4E, 0x75 ; 012CA8: provisional 68k rts 
db 0x61, 0x00, 0x01, 0x2A ; 012CAA: provisional 68k bsr.w $12dd6
db 0x64, 0x02 ; 012CAE: provisional 68k bcc.b $12cb2
db 0x4E, 0x75 ; 012CB0: provisional 68k rts 
db 0x61, 0x00, 0x01, 0x14 ; 012CB2: provisional 68k bsr.w $12dc8
db 0x61, 0x00, 0x00, 0xDE ; 012CB6: provisional 68k bsr.w $12d96
db 0xE4, 0x48 ; 012CBA: provisional 68k lsr.w #$2, d0
db 0xC0, 0xFC, 0x00, 0x0A ; 012CBC: provisional 68k mulu.w #$a, d0
db 0xE4, 0x49 ; 012CC0: provisional 68k lsr.w #$2, d1
db 0xC2, 0xFC, 0x00, 0x0A ; 012CC2: provisional 68k mulu.w #$a, d1
db 0xD4, 0xC1 ; 012CC6: provisional 68k adda.w d1, a2
db 0x42, 0x43 ; 012CC8: provisional 68k clr.w d3
db 0xE4, 0x4E ; 012CCA: provisional 68k lsr.w #$2, d6
db 0xE2, 0x4F ; 012CCC: provisional 68k lsr.w #$1, d7
db 0x53, 0x45 ; 012CCE: provisional 68k subq.w #$1, d5
db 0x53, 0x46 ; 012CD0: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 012CD2: provisional 68k subq.w #$1, d7
db 0x48, 0xA7, 0x63, 0x00 ; 012CD4: provisional 68k movem.w d1-d2/d6-d7, -(a7)
db 0x53, 0x44 ; 012CD8: provisional 68k subq.w #$1, d4
db 0x6A, 0x0A ; 012CDA: provisional 68k bpl.b $12ce6
db 0x22, 0x69, 0x09, 0x34 ; 012CDC: provisional 68k movea.l $934(a1), a1
db 0x24, 0x49 ; 012CE0: provisional 68k movea.l a1, a2
db 0xD4, 0xC1 ; 012CE2: provisional 68k adda.w d1, a2
db 0x38, 0x05 ; 012CE4: provisional 68k move.w d5, d4
db 0x26, 0x58 ; 012CE6: provisional 68k movea.l (a0)+, a3
db 0xD6, 0xC0 ; 012CE8: provisional 68k adda.w d0, a3
db 0x42, 0x42 ; 012CEA: provisional 68k clr.w d2
db 0x2F, 0x0A ; 012CEC: provisional 68k move.l a2, -(a7)
db 0x61, 0x00, 0x00, 0x1C ; 012CEE: provisional 68k bsr.w $12d0c
db 0x61, 0x00, 0x00, 0x6C ; 012CF2: provisional 68k bsr.w $12d60
db 0x47, 0xEB, 0x00, 0x0A ; 012CF6: provisional 68k lea.l $a(a3), a3
db 0x51, 0xCE, 0xFF, 0xF2 ; 012CFA: provisional 68k dbra d6, $12cee
db 0x24, 0x5F ; 012CFE: provisional 68k movea.l (a7)+, a2
db 0x4C, 0x9F, 0x00, 0xC6 ; 012D00: provisional 68k movem.w (a7)+, d1-d2/d6-d7
db 0xD4, 0xC2 ; 012D04: provisional 68k adda.w d2, a2
db 0x51, 0xCF, 0xFF, 0xCC ; 012D06: provisional 68k dbra d7, $12cd4
db 0x4E, 0x75 ; 012D0A: provisional 68k rts 
