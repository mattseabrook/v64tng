; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013A20–013C89, inclusive.
cdi_t7g_entry_013a20:
db 0x53, 0x42 ; file 013A20
db 0x48, 0xE7, 0xF8, 0xFE ; 013A22: provisional 68k movem.l d0-d4/a0-a6, -(a7)
db 0x2C, 0x44 ; 013A26: provisional 68k movea.l d4, a6
db 0x16, 0x3C, 0x00, 0xD0 ; 013A28: provisional 68k move.b #$d0, d3
db 0x20, 0x1E ; 013A2C: provisional 68k move.l (a6)+, d0
db 0x28, 0x0E ; 013A2E: provisional 68k move.l a6, d4
db 0x2C, 0x40 ; 013A30: provisional 68k movea.l d0, a6
db 0x24, 0x58 ; 013A32: provisional 68k movea.l (a0)+, a2
db 0x20, 0x0D ; 013A34: provisional 68k move.l a5, d0
db 0xE2, 0x88 ; 013A36: provisional 68k lsr.l #$1, d0
db 0xD5, 0xC0 ; 013A38: provisional 68k adda.l d0, a2
db 0xDD, 0xC0 ; 013A3A: provisional 68k adda.l d0, a6
db 0x48, 0xE7, 0x00, 0x0C ; 013A3C: provisional 68k movem.l a4-a5, -(a7)
db 0x72, 0x00 ; 013A40: provisional 68k moveq #$0, d1
db 0x12, 0x19 ; 013A42: provisional 68k move.b (a1)+, d1
db 0x6A, 0x06 ; 013A44: provisional 68k bpl.b $13a4c
db 0x12, 0x19 ; 013A46: provisional 68k move.b (a1)+, d1
db 0x6B, 0x00, 0x00, 0xC8 ; 013A48: provisional 68k bmi.w $13b12
db 0x7C, 0x00 ; 013A4C: provisional 68k moveq #$0, d6
db 0x7A, 0x00 ; 013A4E: provisional 68k moveq #$0, d5
db 0xD4, 0xC1 ; 013A50: provisional 68k adda.w d1, a2
db 0xDC, 0xC1 ; 013A52: provisional 68k adda.w d1, a6
db 0xD2, 0x41 ; 013A54: provisional 68k add.w d1, d1
db 0xDA, 0xC1 ; 013A56: provisional 68k adda.w d1, a5
db 0x72, 0x00 ; 013A58: provisional 68k moveq #$0, d1
db 0x7E, 0x00 ; 013A5A: provisional 68k moveq #$0, d7
db 0x12, 0x19 ; 013A5C: provisional 68k move.b (a1)+, d1
db 0x4A, 0x1E ; 013A5E: provisional 68k tst.b (a6)+
db 0x67, 0x22 ; 013A60: provisional 68k beq.b $13a84
db 0x4A, 0x06 ; 013A62: provisional 68k tst.b d6
db 0x67, 0x16 ; 013A64: provisional 68k beq.b $13a7c
db 0x28, 0xCD ; 013A66: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 013A68: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 013A6C: provisional 68k move.b #$60, -$3(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0xFF, 0xFE ; 013A72: provisional 68k ori.b #$fc, -$2(a4)
db 0x52, 0x03 ; 013A78: provisional 68k addq.b #$1, d3
db 0x7C, 0x00 ; 013A7A: provisional 68k moveq #$0, d6
db 0x52, 0x4A ; 013A7C: provisional 68k addq.w #$1, a2
db 0x54, 0x4D ; 013A7E: provisional 68k addq.w #$2, a5
db 0x52, 0x49 ; 013A80: provisional 68k addq.w #$1, a1
db 0x60, 0x44 ; 013A82: provisional 68k bra.b $13ac8
db 0x4A, 0x06 ; 013A84: provisional 68k tst.b d6
db 0x66, 0x30 ; 013A86: provisional 68k bne.b $13ab8
db 0x28, 0xCD ; 013A88: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 013A8A: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 013A8E: provisional 68k move.b #$60, -$3(a4)
db 0x52, 0x03 ; 013A94: provisional 68k addq.b #$1, d3
db 0x7C, 0x01 ; 013A96: provisional 68k moveq #$1, d6
db 0x4A, 0x01 ; 013A98: provisional 68k tst.b d1
db 0x67, 0x32 ; 013A9A: provisional 68k beq.b $13ace
db 0x10, 0x11 ; 013A9C: provisional 68k move.b (a1), d0
db 0x6B, 0x18 ; 013A9E: provisional 68k bmi.b $13ab8
db 0x52, 0xAC, 0xFF, 0xFC ; 013AA0: provisional 68k addq.l #$1, -$4(a4)
db 0x02, 0x00, 0x00, 0x0F ; 013AA4: provisional 68k andi.b #$f, d0
db 0x02, 0x12, 0x00, 0xF0 ; 013AA8: provisional 68k andi.b #$f0, (a2)
db 0x81, 0x1A ; 013AAC: provisional 68k or.b d0, (a2)+
db 0x52, 0x49 ; 013AAE: provisional 68k addq.w #$1, a1
db 0x54, 0x4D ; 013AB0: provisional 68k addq.w #$2, a5
db 0x4A, 0x41 ; 013AB2: provisional 68k tst.w d1
db 0x67, 0x8A ; 013AB4: provisional 68k beq.b $13a40
db 0x60, 0x06 ; 013AB6: provisional 68k bra.b $13abe
db 0x14, 0xD9 ; 013AB8: provisional 68k move.b (a1)+, (a2)+
db 0x4B, 0xED, 0x00, 0x02 ; 013ABA: provisional 68k lea.l $2(a5), a5
db 0x53, 0x41 ; 013ABE: provisional 68k subq.w #$1, d1
db 0x67, 0x0C ; 013AC0: provisional 68k beq.b $13ace
db 0x6A, 0x00, 0xFF, 0x9A ; 013AC2: provisional 68k bpl.w $13a5e
db 0x60, 0x28 ; 013AC6: provisional 68k bra.b $13af0
db 0x51, 0xC9, 0xFF, 0x94 ; 013AC8: provisional 68k dbra d1, $13a5e
db 0x60, 0x22 ; 013ACC: provisional 68k bra.b $13af0
db 0x7A, 0x00 ; 013ACE: provisional 68k moveq #$0, d5
db 0x10, 0x11 ; 013AD0: provisional 68k move.b (a1), d0
db 0x02, 0x00, 0x00, 0x0F ; 013AD2: provisional 68k andi.b #$f, d0
db 0x0C, 0x00, 0x00, 0x08 ; 013AD6: provisional 68k cmpi.b #$8, d0
db 0x6C, 0x00, 0xFF, 0xDC ; 013ADA: provisional 68k bge.w $13ab8
db 0x02, 0x12, 0x00, 0x0F ; 013ADE: provisional 68k andi.b #$f, (a2)
db 0x10, 0x19 ; 013AE2: provisional 68k move.b (a1)+, d0
db 0x02, 0x00, 0x00, 0xF0 ; 013AE4: provisional 68k andi.b #$f0, d0
db 0x81, 0x1A ; 013AE8: provisional 68k or.b d0, (a2)+
db 0x4B, 0xED, 0x00, 0x02 ; 013AEA: provisional 68k lea.l $2(a5), a5
db 0x7A, 0x01 ; 013AEE: provisional 68k moveq #$1, d5
db 0x4A, 0x06 ; 013AF0: provisional 68k tst.b d6
db 0x67, 0x00, 0xFF, 0x4C ; 013AF2: provisional 68k beq.w $13a40
db 0x28, 0xCD ; 013AF6: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 013AF8: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 013AFC: provisional 68k move.b #$60, -$3(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0xFF, 0xFE ; 013B02: provisional 68k ori.b #$fc, -$2(a4)
db 0x52, 0x03 ; 013B08: provisional 68k addq.b #$1, d3
db 0x9B, 0xAC, 0xFF, 0xFC ; 013B0A: provisional 68k sub.l d5, -$4(a4)
db 0x60, 0x00, 0xFF, 0x30 ; 013B0E: provisional 68k bra.w $13a40
db 0x0C, 0x01, 0x00, 0x80 ; 013B12: provisional 68k cmpi.b #$80, d1
db 0x66, 0x06 ; 013B16: provisional 68k bne.b $13b1e
db 0x26, 0x6B, 0x09, 0x34 ; 013B18: provisional 68k movea.l $934(a3), a3
db 0x22, 0x4B ; 013B1C: provisional 68k movea.l a3, a1
db 0x18, 0x83 ; 013B1E: provisional 68k move.b d3, (a4)
db 0x19, 0x7C, 0x00, 0x00, 0x00, 0x01 ; 013B20: provisional 68k move.b #$0, $1(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0x00, 0x02 ; 013B26: provisional 68k ori.b #$fc, $2(a4)
db 0x4C, 0xDF, 0x30, 0x00 ; 013B2C: provisional 68k movem.l (a7)+, a4-a5
db 0x49, 0xEC, 0x00, 0x20 ; 013B30: provisional 68k lea.l $20(a4), a4
db 0x51, 0xCA, 0xFE, 0xF0 ; 013B34: provisional 68k dbra d2, $13a26
db 0x28, 0xBC, 0xD0, 0x00, 0x00, 0x00 ; 013B38: provisional 68k move.l #$d0000000, (a4)
db 0x29, 0x7C, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x20 ; 013B3E: provisional 68k move.l #$d0000000, $20(a4)
db 0x4C, 0xDF, 0x7F, 0x1F ; 013B46: provisional 68k movem.l (a7)+, d0-d4/a0-a6
db 0x4E, 0x75 ; 013B4A: provisional 68k rts 
db 0x20, 0x6E, 0xCF, 0xE8 ; 013B4C: provisional 68k movea.l -$3018(a6), a0
db 0x2B, 0x58, 0x00, 0x1C ; 013B50: provisional 68k move.l (a0)+, $1c(a5)
db 0x2B, 0x58, 0x00, 0x20 ; 013B54: provisional 68k move.l (a0)+, $20(a5)
db 0x2B, 0x58, 0x00, 0x24 ; 013B58: provisional 68k move.l (a0)+, $24(a5)
db 0x2B, 0x58, 0x00, 0x28 ; 013B5C: provisional 68k move.l (a0)+, $28(a5)
db 0x2B, 0x58, 0x00, 0x2C ; 013B60: provisional 68k move.l (a0)+, $2c(a5)
db 0x2B, 0x58, 0x00, 0x30 ; 013B64: provisional 68k move.l (a0)+, $30(a5)
db 0x2B, 0x58, 0x00, 0x34 ; 013B68: provisional 68k move.l (a0)+, $34(a5)
db 0x2B, 0x58, 0x00, 0x38 ; 013B6C: provisional 68k move.l (a0)+, $38(a5)
db 0x2B, 0x58, 0x00, 0x3C ; 013B70: provisional 68k move.l (a0)+, $3c(a5)
db 0x2B, 0x48, 0x00, 0x40 ; 013B74: provisional 68k move.l a0, $40(a5)
db 0x30, 0x2D, 0x00, 0x32 ; 013B78: provisional 68k move.w $32(a5), d0
db 0xD0, 0x40 ; 013B7C: provisional 68k add.w d0, d0
db 0xD0, 0xC0 ; 013B7E: provisional 68k adda.w d0, a0
db 0x2B, 0x48, 0x00, 0x3C ; 013B80: provisional 68k move.l a0, $3c(a5)
db 0x0C, 0x6D, 0x00, 0x07, 0x00, 0x1C ; 013B84: provisional 68k cmpi.w #$7, $1c(a5)
db 0x66, 0x00, 0x00, 0x78 ; 013B8A: provisional 68k bne.w $13c04
db 0x0C, 0x6D, 0x00, 0x00, 0x00, 0x1E ; 013B8E: provisional 68k cmpi.w #$0, $1e(a5)
db 0x66, 0x00, 0x00, 0x94 ; 013B94: provisional 68k bne.w $13c2a
db 0x3A, 0x2D, 0x00, 0x1E ; 013B98: provisional 68k move.w $1e(a5), d5
db 0x3C, 0x2D, 0x00, 0x20 ; 013B9C: provisional 68k move.w $20(a5), d6
db 0x3E, 0x2D, 0x00, 0x22 ; 013BA0: provisional 68k move.w $22(a5), d7
db 0x3F, 0x3C, 0x00, 0x0C ; 013BA4: provisional 68k move.w #$c, -(a7)
db 0x2F, 0x0D ; 013BA8: provisional 68k move.l a5, -(a7)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x07, 0xCF, 0xE8 ; 013BAA: provisional 68k move.l #$7, -$3018(a6)
db 0x2D, 0x46, 0xCF, 0xEC ; 013BB2: provisional 68k move.l d6, -$3014(a6)
db 0x2D, 0x47, 0xCF, 0xF0 ; 013BB6: provisional 68k move.l d7, -$3010(a6)
db 0x2D, 0x45, 0xCF, 0xF4 ; 013BBA: provisional 68k move.l d5, -$300c(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x01, 0xCF, 0xF8 ; 013BBE: provisional 68k move.l #$1, -$3008(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x01, 0xCF, 0xFC ; 013BC6: provisional 68k move.l #$1, -$3004(a6)
db 0x61, 0x00, 0xC4, 0xAE ; 013BCE: provisional 68k bsr.w $1007e
db 0x48, 0x7A, 0x00, 0x0A ; 013BD2: provisional 68k pea.l $13bde(pc)
db 0x2F, 0x08 ; 013BD6: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xC7, 0x48 ; 013BD8: provisional 68k bsr.w $10322
db 0x60, 0x08 ; 013BDC: provisional 68k bra.b $13be6
db 0x63, 0x65 ; 013BDE: provisional 68k bls.b $13c45
db 0x6C, 0x6C ; 013BE0: provisional 68k bge.b $13c4e
db 0x73, 0x70 ; file 013BE2
db 0x72, 0x00 ; 013BE4: provisional 68k moveq #$0, d1
db 0x2B, 0x48, 0x00, 0x38 ; 013BE6: provisional 68k move.l a0, $38(a5)
db 0x31, 0x6D, 0x00, 0x28, 0x00, 0x26 ; 013BEA: provisional 68k move.w $28(a5), $26(a0)
db 0x31, 0x6D, 0x00, 0x2A, 0x00, 0x28 ; 013BF0: provisional 68k move.w $2a(a5), $28(a0)
db 0x2F, 0x28, 0x00, 0x3C ; 013BF6: provisional 68k move.l $3c(a0), -(a7)
db 0x61, 0x00, 0x85, 0x7C ; 013BFA: provisional 68k bsr.w $c178
db 0x42, 0xA8, 0x00, 0x3C ; 013BFE: provisional 68k clr.l $3c(a0)
db 0x4E, 0x75 ; 013C02: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 013C04: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x81, 0x74 ; 013C08: provisional 68k bsr.w $bd7e
db 0x63, 0x65 ; 013C0C: provisional 68k bls.b $13c73
db 0x6C, 0x6C ; 013C0E: provisional 68k bge.b $13c7c
db 0x5F, 0x63 ; 013C10: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 013C12: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 013C14: provisional 68k bsr.b $13c8a
db 0x65, 0x3A ; 013C16: provisional 68k bcs.b $13c52
db 0x20, 0x55 ; 013C18: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 013C1A: provisional 68k bgt.b $13c8f
db 0x75, 0x70 ; file 013C1C
db 0x6F, 0x72 ; 013C1E: provisional 68k ble.b $13c92
db 0x74, 0x65 ; 013C20: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 013C22: provisional 68k bcc.b $13c44
db 0x74, 0x79 ; 013C24: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 013C26: provisional 68k moveq #$65, d0
db 0x00, 0x00, 0x32, 0x3C ; 013C28: provisional 68k ori.b #$3c, d0
db 0x80, 0x00 ; 013C2C: provisional 68k or.b d0, d0
db 0x61, 0x00, 0x81, 0x4E ; 013C2E: provisional 68k bsr.w $bd7e
db 0x63, 0x65 ; 013C32: provisional 68k bls.b $13c99
db 0x6C, 0x6C ; 013C34: provisional 68k bge.b $13ca2
db 0x5F, 0x63 ; 013C36: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 013C38: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 013C3A: provisional 68k bsr.b $13cb0
db 0x65, 0x3A ; 013C3C: provisional 68k bcs.b $13c78
db 0x20, 0x55 ; 013C3E: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 013C40: provisional 68k bgt.b $13cb5
db 0x75, 0x70 ; file 013C42
db 0x6F, 0x72 ; 013C44: provisional 68k ble.b $13cb8
db 0x74, 0x65 ; 013C46: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 013C48: provisional 68k bcc.b $13c6a
db 0x72, 0x65 ; 013C4A: provisional 68k moveq #$65, d1
db 0x73, 0x6F ; file 013C4C
db 0x6C, 0x75 ; 013C4E: provisional 68k bge.b $13cc5
db 0x74, 0x69 ; 013C50: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 013C52: provisional 68k ble.b $13cc2
db 0x00, 0x00, 0x32, 0x39 ; 013C54: provisional 68k ori.b #$39, d0
db 0x00, 0x00, 0x80, 0x00 ; 013C58: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0x81, 0x20 ; 013C5C: provisional 68k bsr.w $bd7e
db 0x63, 0x65 ; 013C60: provisional 68k bls.b $13cc7
db 0x6C, 0x6C ; 013C62: provisional 68k bge.b $13cd0
db 0x5F, 0x70, 0x63, 0x62, 0x20, 0x3A, 0x20, 0x4E ; 013C64: provisional 68k subq.w #$7, ([$203a, a0], $204e)
db 0x6F, 0x74 ; 013C6C: provisional 68k ble.b $13ce2
db 0x20, 0x69, 0x6D, 0x70 ; 013C6E: provisional 68k movea.l $6d70(a1), a0
db 0x6C, 0x65 ; 013C72: provisional 68k bge.b $13cd9
db 0x6D, 0x65 ; 013C74: provisional 68k blt.b $13cdb
db 0x6E, 0x74 ; 013C76: provisional 68k bgt.b $13cec
db 0x65, 0x64 ; 013C78: provisional 68k bcs.b $13cde
db 0x20, 0x79, 0x65, 0x74, 0x00, 0x00 ; 013C7A: provisional 68k movea.l $65740000.l, a0
db 0x48, 0x7A, 0x00, 0x08 ; 013C80: provisional 68k pea.l $13c8a(pc)
db 0x61, 0x00, 0x80, 0xCA ; 013C84: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 013C88: provisional 68k bra.b $13c92
