; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011B4C–011C9F, inclusive.
cdi_nodv_entry_011b4c:
db 0x20, 0x50 ; 011B4C: provisional 68k movea.l (a0), a0
db 0x4E, 0x40, 0x00, 0x29 ; 011B4E: provisional 68k trap #0 ; OS-9 service word $0029
db 0x65, 0x3A ; 011B52: provisional 68k bcs.b $11b8e
db 0x20, 0x02 ; 011B54: provisional 68k move.l d2, d0
db 0x60, 0xE6 ; 011B56: provisional 68k bra.b $11b3e
db 0x42, 0x6D, 0x00, 0x1C ; 011B58: provisional 68k clr.w $1c(a5)
db 0x42, 0x6D, 0x00, 0x1E ; 011B5C: provisional 68k clr.w $1e(a5)
db 0x42, 0x6D, 0x00, 0x20 ; 011B60: provisional 68k clr.w $20(a5)
db 0x42, 0xAD, 0x00, 0x22 ; 011B64: provisional 68k clr.l $22(a5)
db 0x42, 0xAD, 0x00, 0x26 ; 011B68: provisional 68k clr.l $26(a5)
db 0x42, 0xAD, 0x00, 0x30 ; 011B6C: provisional 68k clr.l $30(a5)
db 0x42, 0xAD, 0x00, 0x34 ; 011B70: provisional 68k clr.l $34(a5)
db 0x4E, 0x75 ; 011B74: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 011B76: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB0, 0x82 ; 011B7A: provisional 68k bsr.w $cbfe
db 0x74, 0x72 ; 011B7E: provisional 68k moveq #$72, d2
db 0x61, 0x73 ; 011B80: provisional 68k bsr.b $11bf5
db 0x68, 0x5F ; 011B82: provisional 68k bvc.b $11be3
db 0x64, 0x6E ; 011B84: provisional 68k bcc.b $11bf4
db 0x6F, 0x64 ; 011B86: provisional 68k ble.b $11bec
db 0x65, 0x73 ; 011B88: provisional 68k bcs.b $11bfd
db 0x3A, 0x20 ; 011B8A: provisional 68k move.w -(a0), d5
db 0x00, 0x00, 0x32, 0x3C ; 011B8C: provisional 68k ori.b #$3c, d0
db 0x80, 0x00 ; 011B90: provisional 68k or.b d0, d0
db 0x61, 0x00, 0xB0, 0x6A ; 011B92: provisional 68k bsr.w $cbfe
db 0x74, 0x72 ; 011B96: provisional 68k moveq #$72, d2
db 0x61, 0x73 ; 011B98: provisional 68k bsr.b $11c0d
db 0x68, 0x5F ; 011B9A: provisional 68k bvc.b $11bfb
db 0x64, 0x6E ; 011B9C: provisional 68k bcc.b $11c0c
db 0x6F, 0x64 ; 011B9E: provisional 68k ble.b $11c04
db 0x65, 0x73 ; 011BA0: provisional 68k bcs.b $11c15
db 0x3A, 0x20 ; 011BA2: provisional 68k move.w -(a0), d5
db 0x46, 0x24 ; 011BA4: provisional 68k not.b -(a4)
db 0x53, 0x52 ; 011BA6: provisional 68k subq.w #$1, (a2)
db 0x74, 0x4D ; 011BA8: provisional 68k moveq #$4d, d2
db 0x65, 0x6D ; 011BAA: provisional 68k bcs.b $11c19
db 0x00, 0x00, 0x4C, 0xEE ; 011BAC: provisional 68k ori.b #$ee, d0
db 0x00, 0x0E ; file 011BB0
db 0xCF, 0xE8, 0xB4, 0x7C ; 011BB2: provisional 68k muls.w -$4b84(a0), d7
db 0x09, 0x14 ; 011BB6: provisional 68k btst.l d4, (a4)
db 0x62, 0x00, 0x00, 0x5E ; 011BB8: provisional 68k bhi.w $11c18
db 0x28, 0x3C, 0x00, 0x00, 0x09, 0x14 ; 011BBC: provisional 68k move.l #$914, d4
db 0x88, 0xC2 ; 011BC2: provisional 68k divu.w d2, d4
db 0x42, 0x85 ; 011BC4: provisional 68k clr.l d5
db 0x3A, 0x01 ; 011BC6: provisional 68k move.w d1, d5
db 0x8A, 0xC4 ; 011BC8: provisional 68k divu.w d4, d5
db 0x48, 0x45 ; 011BCA: provisional 68k swap d5
db 0x4A, 0x45 ; 011BCC: provisional 68k tst.w d5
db 0x67, 0x06 ; 011BCE: provisional 68k beq.b $11bd6
db 0xDA, 0xBC, 0x00, 0x01, 0x00, 0x00 ; 011BD0: provisional 68k add.l #$10000, d5
db 0x48, 0x45 ; 011BD6: provisional 68k swap d5
db 0x3F, 0x05 ; 011BD8: provisional 68k move.w d5, -(a7)
db 0x2F, 0x03 ; 011BDA: provisional 68k move.l d3, -(a7)
db 0x61, 0x00, 0xB2, 0xCC ; 011BDC: provisional 68k bsr.w $ceaa
db 0x3B, 0x41, 0x00, 0x1C ; 011BE0: provisional 68k move.w d1, $1c(a5)
db 0x3B, 0x42, 0x00, 0x1E ; 011BE4: provisional 68k move.w d2, $1e(a5)
db 0x2B, 0x43, 0x00, 0x20 ; 011BE8: provisional 68k move.l d3, $20(a5)
db 0x3B, 0x44, 0x00, 0x28 ; 011BEC: provisional 68k move.w d4, $28(a5)
db 0x3B, 0x45, 0x00, 0x24 ; 011BF0: provisional 68k move.w d5, $24(a5)
db 0x2B, 0x48, 0x00, 0x2C ; 011BF4: provisional 68k move.l a0, $2c(a5)
db 0xBA, 0x7C, 0x00, 0x01 ; 011BF8: provisional 68k cmp.w #$1, d5
db 0x66, 0x00, 0x00, 0x0E ; 011BFC: provisional 68k bne.w $11c0c
db 0x3B, 0x41, 0x00, 0x26 ; 011C00: provisional 68k move.w d1, $26(a5)
db 0x3B, 0x41, 0x00, 0x2A ; 011C04: provisional 68k move.w d1, $2a(a5)
db 0x60, 0x00, 0x00, 0x0C ; 011C08: provisional 68k bra.w $11c16
db 0x3B, 0x44, 0x00, 0x26 ; 011C0C: provisional 68k move.w d4, $26(a5)
db 0x48, 0x45 ; 011C10: provisional 68k swap d5
db 0x3B, 0x45, 0x00, 0x2A ; 011C12: provisional 68k move.w d5, $2a(a5)
db 0x4E, 0x75 ; 011C16: provisional 68k rts 
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 011C18: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xAF, 0xDE ; 011C1E: provisional 68k bsr.w $cbfe
db 0x66, 0x72 ; 011C22: provisional 68k bne.b $11c96
db 0x61, 0x67 ; 011C24: provisional 68k bsr.b $11c8d
db 0x5F, 0x63 ; 011C26: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 011C28: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 011C2A: provisional 68k bsr.b $11ca0
db 0x65, 0x20 ; 011C2C: provisional 68k bcs.b $11c4e
db 0x3A, 0x20 ; 011C2E: provisional 68k move.w -(a0), d5
db 0x72, 0x65 ; 011C30: provisional 68k moveq #$65, d1
db 0x63, 0x6F ; 011C32: provisional 68k bls.b $11ca3
db 0x72, 0x64 ; 011C34: provisional 68k moveq #$64, d1
db 0x20, 0x74, 0x6F, 0x6F, 0x20, 0x62 ; 011C36: provisional 68k movea.l ([$2062, a4]), a0
db 0x69, 0x67 ; 011C3C: provisional 68k bvs.b $11ca5
db 0x20, 0x66 ; 011C3E: provisional 68k movea.l -(a6), a0
db 0x6F, 0x72 ; 011C40: provisional 68k ble.b $11cb4
db 0x20, 0x64 ; 011C42: provisional 68k movea.l -(a4), a0
db 0x2D, 0x6E, 0x6F, 0x64, 0x65, 0x21 ; 011C44: provisional 68k move.l $6f64(a6), $6521(a6)
db 0x21, 0x21 ; 011C4A: provisional 68k move.l -(a1), -(a0)
db 0x00, 0x00, 0x48, 0x7A ; 011C4C: provisional 68k ori.b #$7a, d0
db 0x00, 0x08 ; file 011C50
db 0x61, 0x00, 0xAF, 0x7C ; 011C52: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 011C56: provisional 68k bra.b $11c60
db 0x66, 0x72 ; 011C58: provisional 68k bne.b $11ccc
db 0x61, 0x67 ; 011C5A: provisional 68k bsr.b $11cc3
db 0x20, 0x2D, 0x20, 0x00 ; 011C5C: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 011C60: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xF5, 0x88 ; 011C62: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 011C66: provisional 68k rts 
db 0x4E, 0x75 ; 011C68: provisional 68k rts 
db 0x2F, 0x2D, 0x00, 0x2C ; 011C6A: provisional 68k move.l $2c(a5), -(a7)
db 0x61, 0x00, 0xB3, 0x88 ; 011C6E: provisional 68k bsr.w $cff8
db 0x4E, 0x75 ; 011C72: provisional 68k rts 
db 0x4E, 0x75 ; 011C74: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 011C76: provisional 68k movem.l -$3018(a6), d1-d3
db 0xB2, 0x7C, 0x02, 0x45 ; 011C7C: provisional 68k cmp.w #$245, d1
db 0x62, 0x00, 0x00, 0x48 ; 011C80: provisional 68k bhi.w $11cca
db 0x3B, 0x41, 0x00, 0x1C ; 011C84: provisional 68k move.w d1, $1c(a5)
db 0x3B, 0x42, 0x00, 0x1E ; 011C88: provisional 68k move.w d2, $1e(a5)
db 0x3F, 0x3C, 0x00, 0x03 ; 011C8C: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 011C90: provisional 68k move.l a5, -(a7)
db 0x2D, 0x41, 0xCF, 0xE8 ; 011C92: provisional 68k move.l d1, -$3018(a6)
db 0x2D, 0x42, 0xCF, 0xEC ; 011C96: provisional 68k move.l d2, -$3014(a6)
db 0x2D, 0x43, 0xCF, 0xF0 ; 011C9A: provisional 68k move.l d3, -$3010(a6)
db 0x61, 0x00 ; file 011C9E
