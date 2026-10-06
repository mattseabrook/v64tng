; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0148A0–014B09, inclusive.
cdi_nodv_entry_0148a0:
db 0x53, 0x42 ; file 0148A0
db 0x48, 0xE7, 0xF8, 0xFE ; 0148A2: provisional 68k movem.l d0-d4/a0-a6, -(a7)
db 0x2C, 0x44 ; 0148A6: provisional 68k movea.l d4, a6
db 0x16, 0x3C, 0x00, 0xD0 ; 0148A8: provisional 68k move.b #$d0, d3
db 0x20, 0x1E ; 0148AC: provisional 68k move.l (a6)+, d0
db 0x28, 0x0E ; 0148AE: provisional 68k move.l a6, d4
db 0x2C, 0x40 ; 0148B0: provisional 68k movea.l d0, a6
db 0x24, 0x58 ; 0148B2: provisional 68k movea.l (a0)+, a2
db 0x20, 0x0D ; 0148B4: provisional 68k move.l a5, d0
db 0xE2, 0x88 ; 0148B6: provisional 68k lsr.l #$1, d0
db 0xD5, 0xC0 ; 0148B8: provisional 68k adda.l d0, a2
db 0xDD, 0xC0 ; 0148BA: provisional 68k adda.l d0, a6
db 0x48, 0xE7, 0x00, 0x0C ; 0148BC: provisional 68k movem.l a4-a5, -(a7)
db 0x72, 0x00 ; 0148C0: provisional 68k moveq #$0, d1
db 0x12, 0x19 ; 0148C2: provisional 68k move.b (a1)+, d1
db 0x6A, 0x06 ; 0148C4: provisional 68k bpl.b $148cc
db 0x12, 0x19 ; 0148C6: provisional 68k move.b (a1)+, d1
db 0x6B, 0x00, 0x00, 0xC8 ; 0148C8: provisional 68k bmi.w $14992
db 0x7C, 0x00 ; 0148CC: provisional 68k moveq #$0, d6
db 0x7A, 0x00 ; 0148CE: provisional 68k moveq #$0, d5
db 0xD4, 0xC1 ; 0148D0: provisional 68k adda.w d1, a2
db 0xDC, 0xC1 ; 0148D2: provisional 68k adda.w d1, a6
db 0xD2, 0x41 ; 0148D4: provisional 68k add.w d1, d1
db 0xDA, 0xC1 ; 0148D6: provisional 68k adda.w d1, a5
db 0x72, 0x00 ; 0148D8: provisional 68k moveq #$0, d1
db 0x7E, 0x00 ; 0148DA: provisional 68k moveq #$0, d7
db 0x12, 0x19 ; 0148DC: provisional 68k move.b (a1)+, d1
db 0x4A, 0x1E ; 0148DE: provisional 68k tst.b (a6)+
db 0x67, 0x22 ; 0148E0: provisional 68k beq.b $14904
db 0x4A, 0x06 ; 0148E2: provisional 68k tst.b d6
db 0x67, 0x16 ; 0148E4: provisional 68k beq.b $148fc
db 0x28, 0xCD ; 0148E6: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 0148E8: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 0148EC: provisional 68k move.b #$60, -$3(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0xFF, 0xFE ; 0148F2: provisional 68k ori.b #$fc, -$2(a4)
db 0x52, 0x03 ; 0148F8: provisional 68k addq.b #$1, d3
db 0x7C, 0x00 ; 0148FA: provisional 68k moveq #$0, d6
db 0x52, 0x4A ; 0148FC: provisional 68k addq.w #$1, a2
db 0x54, 0x4D ; 0148FE: provisional 68k addq.w #$2, a5
db 0x52, 0x49 ; 014900: provisional 68k addq.w #$1, a1
db 0x60, 0x44 ; 014902: provisional 68k bra.b $14948
db 0x4A, 0x06 ; 014904: provisional 68k tst.b d6
db 0x66, 0x30 ; 014906: provisional 68k bne.b $14938
db 0x28, 0xCD ; 014908: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 01490A: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 01490E: provisional 68k move.b #$60, -$3(a4)
db 0x52, 0x03 ; 014914: provisional 68k addq.b #$1, d3
db 0x7C, 0x01 ; 014916: provisional 68k moveq #$1, d6
db 0x4A, 0x01 ; 014918: provisional 68k tst.b d1
db 0x67, 0x32 ; 01491A: provisional 68k beq.b $1494e
db 0x10, 0x11 ; 01491C: provisional 68k move.b (a1), d0
db 0x6B, 0x18 ; 01491E: provisional 68k bmi.b $14938
db 0x52, 0xAC, 0xFF, 0xFC ; 014920: provisional 68k addq.l #$1, -$4(a4)
db 0x02, 0x00, 0x00, 0x0F ; 014924: provisional 68k andi.b #$f, d0
db 0x02, 0x12, 0x00, 0xF0 ; 014928: provisional 68k andi.b #$f0, (a2)
db 0x81, 0x1A ; 01492C: provisional 68k or.b d0, (a2)+
db 0x52, 0x49 ; 01492E: provisional 68k addq.w #$1, a1
db 0x54, 0x4D ; 014930: provisional 68k addq.w #$2, a5
db 0x4A, 0x41 ; 014932: provisional 68k tst.w d1
db 0x67, 0x8A ; 014934: provisional 68k beq.b $148c0
db 0x60, 0x06 ; 014936: provisional 68k bra.b $1493e
db 0x14, 0xD9 ; 014938: provisional 68k move.b (a1)+, (a2)+
db 0x4B, 0xED, 0x00, 0x02 ; 01493A: provisional 68k lea.l $2(a5), a5
db 0x53, 0x41 ; 01493E: provisional 68k subq.w #$1, d1
db 0x67, 0x0C ; 014940: provisional 68k beq.b $1494e
db 0x6A, 0x00, 0xFF, 0x9A ; 014942: provisional 68k bpl.w $148de
db 0x60, 0x28 ; 014946: provisional 68k bra.b $14970
db 0x51, 0xC9, 0xFF, 0x94 ; 014948: provisional 68k dbra d1, $148de
db 0x60, 0x22 ; 01494C: provisional 68k bra.b $14970
db 0x7A, 0x00 ; 01494E: provisional 68k moveq #$0, d5
db 0x10, 0x11 ; 014950: provisional 68k move.b (a1), d0
db 0x02, 0x00, 0x00, 0x0F ; 014952: provisional 68k andi.b #$f, d0
db 0x0C, 0x00, 0x00, 0x08 ; 014956: provisional 68k cmpi.b #$8, d0
db 0x6C, 0x00, 0xFF, 0xDC ; 01495A: provisional 68k bge.w $14938
db 0x02, 0x12, 0x00, 0x0F ; 01495E: provisional 68k andi.b #$f, (a2)
db 0x10, 0x19 ; 014962: provisional 68k move.b (a1)+, d0
db 0x02, 0x00, 0x00, 0xF0 ; 014964: provisional 68k andi.b #$f0, d0
db 0x81, 0x1A ; 014968: provisional 68k or.b d0, (a2)+
db 0x4B, 0xED, 0x00, 0x02 ; 01496A: provisional 68k lea.l $2(a5), a5
db 0x7A, 0x01 ; 01496E: provisional 68k moveq #$1, d5
db 0x4A, 0x06 ; 014970: provisional 68k tst.b d6
db 0x67, 0x00, 0xFF, 0x4C ; 014972: provisional 68k beq.w $148c0
db 0x28, 0xCD ; 014976: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 014978: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 01497C: provisional 68k move.b #$60, -$3(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0xFF, 0xFE ; 014982: provisional 68k ori.b #$fc, -$2(a4)
db 0x52, 0x03 ; 014988: provisional 68k addq.b #$1, d3
db 0x9B, 0xAC, 0xFF, 0xFC ; 01498A: provisional 68k sub.l d5, -$4(a4)
db 0x60, 0x00, 0xFF, 0x30 ; 01498E: provisional 68k bra.w $148c0
db 0x0C, 0x01, 0x00, 0x80 ; 014992: provisional 68k cmpi.b #$80, d1
db 0x66, 0x06 ; 014996: provisional 68k bne.b $1499e
db 0x26, 0x6B, 0x09, 0x34 ; 014998: provisional 68k movea.l $934(a3), a3
db 0x22, 0x4B ; 01499C: provisional 68k movea.l a3, a1
db 0x18, 0x83 ; 01499E: provisional 68k move.b d3, (a4)
db 0x19, 0x7C, 0x00, 0x00, 0x00, 0x01 ; 0149A0: provisional 68k move.b #$0, $1(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0x00, 0x02 ; 0149A6: provisional 68k ori.b #$fc, $2(a4)
db 0x4C, 0xDF, 0x30, 0x00 ; 0149AC: provisional 68k movem.l (a7)+, a4-a5
db 0x49, 0xEC, 0x00, 0x20 ; 0149B0: provisional 68k lea.l $20(a4), a4
db 0x51, 0xCA, 0xFE, 0xF0 ; 0149B4: provisional 68k dbra d2, $148a6
db 0x28, 0xBC, 0xD0, 0x00, 0x00, 0x00 ; 0149B8: provisional 68k move.l #$d0000000, (a4)
db 0x29, 0x7C, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x20 ; 0149BE: provisional 68k move.l #$d0000000, $20(a4)
db 0x4C, 0xDF, 0x7F, 0x1F ; 0149C6: provisional 68k movem.l (a7)+, d0-d4/a0-a6
db 0x4E, 0x75 ; 0149CA: provisional 68k rts 
db 0x20, 0x6E, 0xCF, 0xE8 ; 0149CC: provisional 68k movea.l -$3018(a6), a0
db 0x2B, 0x58, 0x00, 0x1C ; 0149D0: provisional 68k move.l (a0)+, $1c(a5)
db 0x2B, 0x58, 0x00, 0x20 ; 0149D4: provisional 68k move.l (a0)+, $20(a5)
db 0x2B, 0x58, 0x00, 0x24 ; 0149D8: provisional 68k move.l (a0)+, $24(a5)
db 0x2B, 0x58, 0x00, 0x28 ; 0149DC: provisional 68k move.l (a0)+, $28(a5)
db 0x2B, 0x58, 0x00, 0x2C ; 0149E0: provisional 68k move.l (a0)+, $2c(a5)
db 0x2B, 0x58, 0x00, 0x30 ; 0149E4: provisional 68k move.l (a0)+, $30(a5)
db 0x2B, 0x58, 0x00, 0x34 ; 0149E8: provisional 68k move.l (a0)+, $34(a5)
db 0x2B, 0x58, 0x00, 0x38 ; 0149EC: provisional 68k move.l (a0)+, $38(a5)
db 0x2B, 0x58, 0x00, 0x3C ; 0149F0: provisional 68k move.l (a0)+, $3c(a5)
db 0x2B, 0x48, 0x00, 0x40 ; 0149F4: provisional 68k move.l a0, $40(a5)
db 0x30, 0x2D, 0x00, 0x32 ; 0149F8: provisional 68k move.w $32(a5), d0
db 0xD0, 0x40 ; 0149FC: provisional 68k add.w d0, d0
db 0xD0, 0xC0 ; 0149FE: provisional 68k adda.w d0, a0
db 0x2B, 0x48, 0x00, 0x3C ; 014A00: provisional 68k move.l a0, $3c(a5)
db 0x0C, 0x6D, 0x00, 0x07, 0x00, 0x1C ; 014A04: provisional 68k cmpi.w #$7, $1c(a5)
db 0x66, 0x00, 0x00, 0x78 ; 014A0A: provisional 68k bne.w $14a84
db 0x0C, 0x6D, 0x00, 0x00, 0x00, 0x1E ; 014A0E: provisional 68k cmpi.w #$0, $1e(a5)
db 0x66, 0x00, 0x00, 0x94 ; 014A14: provisional 68k bne.w $14aaa
db 0x3A, 0x2D, 0x00, 0x1E ; 014A18: provisional 68k move.w $1e(a5), d5
db 0x3C, 0x2D, 0x00, 0x20 ; 014A1C: provisional 68k move.w $20(a5), d6
db 0x3E, 0x2D, 0x00, 0x22 ; 014A20: provisional 68k move.w $22(a5), d7
db 0x3F, 0x3C, 0x00, 0x0C ; 014A24: provisional 68k move.w #$c, -(a7)
db 0x2F, 0x0D ; 014A28: provisional 68k move.l a5, -(a7)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x07, 0xCF, 0xE8 ; 014A2A: provisional 68k move.l #$7, -$3018(a6)
db 0x2D, 0x46, 0xCF, 0xEC ; 014A32: provisional 68k move.l d6, -$3014(a6)
db 0x2D, 0x47, 0xCF, 0xF0 ; 014A36: provisional 68k move.l d7, -$3010(a6)
db 0x2D, 0x45, 0xCF, 0xF4 ; 014A3A: provisional 68k move.l d5, -$300c(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x01, 0xCF, 0xF8 ; 014A3E: provisional 68k move.l #$1, -$3008(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x01, 0xCF, 0xFC ; 014A46: provisional 68k move.l #$1, -$3004(a6)
db 0x61, 0x00, 0xC4, 0xAE ; 014A4E: provisional 68k bsr.w $10efe
db 0x48, 0x7A, 0x00, 0x0A ; 014A52: provisional 68k pea.l $14a5e(pc)
db 0x2F, 0x08 ; 014A56: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xC7, 0x48 ; 014A58: provisional 68k bsr.w $111a2
db 0x60, 0x08 ; 014A5C: provisional 68k bra.b $14a66
db 0x63, 0x65 ; 014A5E: provisional 68k bls.b $14ac5
db 0x6C, 0x6C ; 014A60: provisional 68k bge.b $14ace
db 0x73, 0x70 ; file 014A62
db 0x72, 0x00 ; 014A64: provisional 68k moveq #$0, d1
db 0x2B, 0x48, 0x00, 0x38 ; 014A66: provisional 68k move.l a0, $38(a5)
db 0x31, 0x6D, 0x00, 0x28, 0x00, 0x26 ; 014A6A: provisional 68k move.w $28(a5), $26(a0)
db 0x31, 0x6D, 0x00, 0x2A, 0x00, 0x28 ; 014A70: provisional 68k move.w $2a(a5), $28(a0)
db 0x2F, 0x28, 0x00, 0x3C ; 014A76: provisional 68k move.l $3c(a0), -(a7)
db 0x61, 0x00, 0x85, 0x7C ; 014A7A: provisional 68k bsr.w $cff8
db 0x42, 0xA8, 0x00, 0x3C ; 014A7E: provisional 68k clr.l $3c(a0)
db 0x4E, 0x75 ; 014A82: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 014A84: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x81, 0x74 ; 014A88: provisional 68k bsr.w $cbfe
db 0x63, 0x65 ; 014A8C: provisional 68k bls.b $14af3
db 0x6C, 0x6C ; 014A8E: provisional 68k bge.b $14afc
db 0x5F, 0x63 ; 014A90: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 014A92: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 014A94: provisional 68k bsr.b $14b0a
db 0x65, 0x3A ; 014A96: provisional 68k bcs.b $14ad2
db 0x20, 0x55 ; 014A98: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 014A9A: provisional 68k bgt.b $14b0f
db 0x75, 0x70 ; file 014A9C
db 0x6F, 0x72 ; 014A9E: provisional 68k ble.b $14b12
db 0x74, 0x65 ; 014AA0: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 014AA2: provisional 68k bcc.b $14ac4
db 0x74, 0x79 ; 014AA4: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 014AA6: provisional 68k moveq #$65, d0
db 0x00, 0x00, 0x32, 0x3C ; 014AA8: provisional 68k ori.b #$3c, d0
db 0x80, 0x00 ; 014AAC: provisional 68k or.b d0, d0
db 0x61, 0x00, 0x81, 0x4E ; 014AAE: provisional 68k bsr.w $cbfe
db 0x63, 0x65 ; 014AB2: provisional 68k bls.b $14b19
db 0x6C, 0x6C ; 014AB4: provisional 68k bge.b $14b22
db 0x5F, 0x63 ; 014AB6: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 014AB8: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 014ABA: provisional 68k bsr.b $14b30
db 0x65, 0x3A ; 014ABC: provisional 68k bcs.b $14af8
db 0x20, 0x55 ; 014ABE: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 014AC0: provisional 68k bgt.b $14b35
db 0x75, 0x70 ; file 014AC2
db 0x6F, 0x72 ; 014AC4: provisional 68k ble.b $14b38
db 0x74, 0x65 ; 014AC6: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 014AC8: provisional 68k bcc.b $14aea
db 0x72, 0x65 ; 014ACA: provisional 68k moveq #$65, d1
db 0x73, 0x6F ; file 014ACC
db 0x6C, 0x75 ; 014ACE: provisional 68k bge.b $14b45
db 0x74, 0x69 ; 014AD0: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 014AD2: provisional 68k ble.b $14b42
db 0x00, 0x00, 0x32, 0x39 ; 014AD4: provisional 68k ori.b #$39, d0
db 0x00, 0x00, 0x80, 0x00 ; 014AD8: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0x81, 0x20 ; 014ADC: provisional 68k bsr.w $cbfe
db 0x63, 0x65 ; 014AE0: provisional 68k bls.b $14b47
db 0x6C, 0x6C ; 014AE2: provisional 68k bge.b $14b50
db 0x5F, 0x70, 0x63, 0x62, 0x20, 0x3A, 0x20, 0x4E ; 014AE4: provisional 68k subq.w #$7, ([$203a, a0], $204e)
db 0x6F, 0x74 ; 014AEC: provisional 68k ble.b $14b62
db 0x20, 0x69, 0x6D, 0x70 ; 014AEE: provisional 68k movea.l $6d70(a1), a0
db 0x6C, 0x65 ; 014AF2: provisional 68k bge.b $14b59
db 0x6D, 0x65 ; 014AF4: provisional 68k blt.b $14b5b
db 0x6E, 0x74 ; 014AF6: provisional 68k bgt.b $14b6c
db 0x65, 0x64 ; 014AF8: provisional 68k bcs.b $14b5e
db 0x20, 0x79, 0x65, 0x74, 0x00, 0x00 ; 014AFA: provisional 68k movea.l $65740000.l, a0
db 0x48, 0x7A, 0x00, 0x08 ; 014B00: provisional 68k pea.l $14b0a(pc)
db 0x61, 0x00, 0x80, 0xCA ; 014B04: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 014B08: provisional 68k bra.b $14b12
