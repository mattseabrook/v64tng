; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CBFE–00CD4F, inclusive.
cdi_nodv_entry_00cbfe:
db 0x20, 0x5F ; 00CBFE: provisional 68k movea.l (a7)+, a0
db 0x48, 0x50 ; 00CC00: provisional 68k pea.l (a0)
db 0x61, 0x00, 0xFF, 0xCC ; 00CC02: provisional 68k bsr.w $cbd0
db 0x42, 0xE7 ; 00CC06: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00CC08: provisional 68k pea.l $cc12(pc)
db 0x61, 0x00, 0xFF, 0xC2 ; 00CC0C: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00CC10: provisional 68k bra.b $cc14
db 0x20, 0x00 ; 00CC12: provisional 68k move.l d0, d0
db 0x3F, 0x01 ; 00CC14: provisional 68k move.w d1, -(a7)
db 0x61, 0x00, 0xFF, 0x06 ; 00CC16: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00CC1A: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xFF, 0x98 ; 00CC1C: provisional 68k bsr.w $cbb6
db 0x60, 0xDE ; 00CC20: provisional 68k bra.b $cc00
db 0x42, 0x6E, 0xD0, 0x42 ; 00CC22: provisional 68k clr.w -$2fbe(a6)
db 0x4A, 0x40 ; 00CC26: provisional 68k tst.w d0
db 0x66, 0x02 ; 00CC28: provisional 68k bne.b $cc2c
db 0x4E, 0x75 ; 00CC2A: provisional 68k rts 
db 0x41, 0xFA, 0x00, 0x28 ; 00CC2C: provisional 68k lea.l $cc56(pc), a0
db 0x70, 0x41 ; 00CC30: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00CC32: provisional 68k trap #0 ; OS-9 service word $0084
db 0x64, 0x18 ; 00CC36: provisional 68k bcc.b $cc50
db 0x32, 0x01 ; 00CC38: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xFF, 0xC2 ; 00CC3A: provisional 68k bsr.w $cbfe
db 0x65, 0x72 ; 00CC3E: provisional 68k bcs.b $ccb2
db 0x72, 0x5F ; 00CC40: provisional 68k moveq #$5f, d1
db 0x69, 0x6E ; 00CC42: provisional 68k bvs.b $ccb2
db 0x69, 0x74 ; 00CC44: provisional 68k bvs.b $ccba
db 0x69, 0x61 ; 00CC46: provisional 68k bvs.b $cca9
db 0x6C, 0x69 ; 00CC48: provisional 68k bge.b $ccb3
db 0x73, 0x65 ; file 00CC4A
db 0x3A, 0x20 ; 00CC4C: provisional 68k move.w -(a0), d5
db 0x00, 0x00, 0x3D, 0x40 ; 00CC4E: provisional 68k ori.b #$40, d0
db 0xD0, 0x42 ; 00CC52: provisional 68k add.w d2, d0
db 0x4E, 0x75 ; 00CC54: provisional 68k rts 
db 0x2F, 0x63, 0x64, 0x2F ; 00CC56: provisional 68k move.l -(a3), $642f(a7)
db 0x65, 0x72 ; 00CC5A: provisional 68k bcs.b $ccce
db 0x72, 0x6F ; 00CC5C: provisional 68k moveq #$6f, d1
db 0x72, 0x73 ; 00CC5E: provisional 68k moveq #$73, d1
db 0x2E, 0x74, 0x78, 0x74 ; 00CC60: provisional 68k movea.l $74(a4, d7.l), a7
db 0x00, 0x00, 0x48, 0xE7 ; 00CC64: provisional 68k ori.b #$e7, d0
db 0xC0, 0xC0 ; 00CC68: provisional 68k mulu.w d0, d0
db 0x20, 0x2F, 0x00, 0x14 ; 00CC6A: provisional 68k move.l $14(a7), d0
db 0x66, 0x18 ; 00CC6E: provisional 68k bne.b $cc88
db 0x48, 0x7A, 0x00, 0x08 ; 00CC70: provisional 68k pea.l $cc7a(pc)
db 0x61, 0x00, 0xFF, 0x5A ; 00CC74: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00CC78: provisional 68k bra.b $cc84
db 0x3C, 0x6E, 0x75, 0x6C ; 00CC7A: provisional 68k movea.w $756c(a6), a6
db 0x6C, 0x3E ; 00CC7E: provisional 68k bge.b $ccbe
db 0x0D, 0x0A, 0x00, 0x00 ; 00CC80: provisional 68k movep.w $0(a2), d6
db 0x60, 0x00, 0x00, 0x5A ; 00CC84: provisional 68k bra.w $cce0
db 0x20, 0x40 ; 00CC88: provisional 68k movea.l d0, a0
db 0x22, 0x48 ; 00CC8A: provisional 68k movea.l a0, a1
db 0x70, 0x01 ; 00CC8C: provisional 68k moveq #$1, d0
db 0x22, 0x29, 0x09, 0x34 ; 00CC8E: provisional 68k move.l $934(a1), d1
db 0x67, 0x00, 0x00, 0x10 ; 00CC92: provisional 68k beq.w $cca4
db 0xB2, 0x88 ; 00CC96: provisional 68k cmp.l a0, d1
db 0x67, 0x00, 0x00, 0x0A ; 00CC98: provisional 68k beq.w $cca4
db 0x22, 0x41 ; 00CC9C: provisional 68k movea.l d1, a1
db 0x52, 0x40 ; 00CC9E: provisional 68k addq.w #$1, d0
db 0x60, 0x00, 0xFF, 0xEC ; 00CCA0: provisional 68k bra.w $cc8e
db 0x42, 0xE7 ; 00CCA4: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00CCA6: provisional 68k pea.l $ccb0(pc)
db 0x61, 0x00, 0xFF, 0x24 ; 00CCAA: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 00CCAE: provisional 68k bra.b $ccbc
db 0x64, 0x2D ; 00CCB0: provisional 68k bcc.b $ccdf
db 0x6E, 0x6F ; 00CCB2: provisional 68k bgt.b $cd23
db 0x64, 0x65 ; 00CCB4: provisional 68k bcc.b $cd1b
db 0x73, 0x20 ; file 00CCB6
db 0x3D, 0x20 ; 00CCB8: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x00 ; 00CCBA: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xFE, 0x5E ; 00CCBE: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00CCC2: provisional 68k move.w (a7)+, ccr
db 0xB2, 0x88 ; 00CCC4: provisional 68k cmp.l a0, d1
db 0x66, 0x00, 0x00, 0x18 ; 00CCC6: provisional 68k bne.w $cce0
db 0x48, 0x7A, 0x00, 0x08 ; 00CCCA: provisional 68k pea.l $ccd4(pc)
db 0x61, 0x00, 0xFF, 0x00 ; 00CCCE: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 00CCD2: provisional 68k bra.b $cce0
db 0x20, 0x3C, 0x63, 0x69, 0x72, 0x63 ; 00CCD4: provisional 68k move.l #$63697263, d0
db 0x75, 0x6C ; file 00CCDA
db 0x61, 0x72 ; 00CCDC: provisional 68k bsr.b $cd50
db 0x3E, 0x00 ; 00CCDE: provisional 68k move.w d0, d7
db 0x4C, 0xDF, 0x03, 0x03 ; 00CCE0: provisional 68k movem.l (a7)+, d0-d1/a0-a1
db 0x2E, 0x9F ; 00CCE4: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00CCE6: provisional 68k rts 
db 0x48, 0xA7, 0xE0, 0x00 ; 00CCE8: provisional 68k movem.w d0-d2, -(a7)
db 0x34, 0x1F ; 00CCEC: provisional 68k move.w (a7)+, d2
db 0x3F, 0x3C, 0x00, 0x02 ; 00CCEE: provisional 68k move.w #$2, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00CCF2: provisional 68k move.l #$0, -(a7)
db 0x2D, 0x42, 0xCF, 0xE8 ; 00CCF8: provisional 68k move.l d2, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x80, 0xCF, 0xEC ; 00CCFC: provisional 68k move.l #$80, -$3014(a6)
db 0x61, 0x00, 0x41, 0xF8 ; 00CD04: provisional 68k bsr.w $10efe
db 0x65, 0x00, 0x00, 0xCA ; 00CD08: provisional 68k bcs.w $cdd4
db 0x48, 0x7A, 0x00, 0x0A ; 00CD0C: provisional 68k pea.l $cd18(pc)
db 0x2F, 0x08 ; 00CD10: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x44, 0x8E ; 00CD12: provisional 68k bsr.w $111a2
db 0x60, 0x08 ; 00CD16: provisional 68k bra.b $cd20
db 0x64, 0x6E ; 00CD18: provisional 68k bcc.b $cd88
db 0x6C, 0x69 ; 00CD1A: provisional 68k bge.b $cd85
db 0x73, 0x74 ; file 00CD1C
db 0x41, 0x00 ; 00CD1E: provisional 68k dc.w $4100
db 0x2D, 0x48, 0xA8, 0xFC ; 00CD20: provisional 68k move.l a0, -$5704(a6)
db 0x34, 0x1F ; 00CD24: provisional 68k move.w (a7)+, d2
db 0x3F, 0x3C, 0x00, 0x02 ; 00CD26: provisional 68k move.w #$2, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00CD2A: provisional 68k move.l #$0, -(a7)
db 0x2D, 0x42, 0xCF, 0xE8 ; 00CD30: provisional 68k move.l d2, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x81, 0xCF, 0xEC ; 00CD34: provisional 68k move.l #$81, -$3014(a6)
db 0x61, 0x00, 0x41, 0xC0 ; 00CD3C: provisional 68k bsr.w $10efe
db 0x65, 0x00, 0x00, 0xCC ; 00CD40: provisional 68k bcs.w $ce0e
db 0x48, 0x7A, 0x00, 0x0A ; 00CD44: provisional 68k pea.l $cd50(pc)
db 0x2F, 0x08 ; 00CD48: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x44, 0x56 ; 00CD4A: provisional 68k bsr.w $111a2
db 0x60, 0x08 ; 00CD4E: provisional 68k bra.b $cd58
