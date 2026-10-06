; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A7E–010BC1, inclusive.
cdi_t7g_entry_010a7e:
db 0x60, 0x1A ; 010A7E: provisional 68k bra.b $10a9a
db 0x3E, 0x3E ; file 010A80
db 0x3E, 0x20 ; 010A82: provisional 68k move.w -(a0), d7
db 0x52, 0x4F ; 010A84: provisional 68k addq.w #$1, a7
db 0x4D, 0x20 ; 010A86: provisional 68k dc.w $4d20
db 0x4D, 0x45, 0x4D, 0x4F ; file 010A88
db 0x52, 0x59 ; 010A8C: provisional 68k addq.w #$1, (a1)+
db 0x20, 0x55 ; 010A8E: provisional 68k movea.l (a5), a0
db 0x53, 0x45 ; 010A90: provisional 68k subq.w #$1, d5
db 0x44, 0x20 ; 010A92: provisional 68k neg.b -(a0)
db 0x3C, 0x3C, 0x3C, 0x0D ; 010A94: provisional 68k move.w #$3c0d, d6
db 0x0A, 0x00, 0x24, 0x7C ; 010A98: provisional 68k eori.b #$7c, d0
db 0x00, 0xD2 ; file 010A9C
db 0x56, 0x38, 0x36, 0x3C ; 010A9E: provisional 68k addq.b #$3, $363c.w
db 0x00, 0x80, 0x3D, 0x43, 0xD0, 0x28 ; 010AA2: provisional 68k ori.l #$3d43d028, d0
db 0x60, 0x00, 0x00, 0x5A ; 010AA8: provisional 68k bra.w $10b04
db 0x4E, 0x40, 0x00, 0x5C ; 010AAC: provisional 68k trap #0 ; OS-9 service word $005C
db 0x64, 0x00, 0x00, 0x52 ; 010AB0: provisional 68k bcc.w $10b04
db 0x53, 0x44 ; 010AB4: provisional 68k subq.w #$1, d4
db 0x66, 0x92 ; 010AB6: provisional 68k bne.b $10a4a
db 0x0C, 0x6E, 0x00, 0x01, 0xD0, 0x26 ; 010AB8: provisional 68k cmpi.w #$1, -$2fda(a6)
db 0x66, 0x00, 0x00, 0x3E ; 010ABE: provisional 68k bne.w $10afe
db 0x0C, 0x6E, 0x00, 0x01, 0xD0, 0x28 ; 010AC2: provisional 68k cmpi.w #$1, -$2fd8(a6)
db 0x66, 0x0C ; 010AC8: provisional 68k bne.b $10ad6
db 0x36, 0x3C, 0x00, 0x39 ; 010ACA: provisional 68k move.w #$39, d3
db 0x3D, 0x43, 0xD0, 0x28 ; 010ACE: provisional 68k move.w d3, -$2fd8(a6)
db 0x60, 0x00, 0xFF, 0x74 ; 010AD2: provisional 68k bra.w $10a48
db 0x0C, 0x6E, 0x00, 0x39, 0xD0, 0x28 ; 010AD6: provisional 68k cmpi.w #$39, -$2fd8(a6)
db 0x66, 0x0C ; 010ADC: provisional 68k bne.b $10aea
db 0x36, 0x3C, 0x00, 0x80 ; 010ADE: provisional 68k move.w #$80, d3
db 0x3D, 0x43, 0xD0, 0x28 ; 010AE2: provisional 68k move.w d3, -$2fd8(a6)
db 0x60, 0x00, 0xFF, 0x60 ; 010AE6: provisional 68k bra.w $10a48
db 0x0C, 0x6E, 0x00, 0x80, 0xD0, 0x28 ; 010AEA: provisional 68k cmpi.w #$80, -$2fd8(a6)
db 0x66, 0x0C ; 010AF0: provisional 68k bne.b $10afe
db 0x36, 0x3C, 0x00, 0x81 ; 010AF2: provisional 68k move.w #$81, d3
db 0x3D, 0x43, 0xD0, 0x28 ; 010AF6: provisional 68k move.w d3, -$2fd8(a6)
db 0x60, 0x00, 0xFF, 0x4C ; 010AFA: provisional 68k bra.w $10a48
db 0x00, 0x3C, 0x00, 0x01 ; 010AFE: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 010B02: provisional 68k rts 
db 0x24, 0xBC, 0x00, 0x00, 0x00, 0x00 ; 010B04: provisional 68k move.l #$0, (a2)
db 0x4A, 0x46 ; 010B0A: provisional 68k tst.w d6
db 0x66, 0x10 ; 010B0C: provisional 68k bne.b $10b1e
db 0x2B, 0x4A, 0x00, 0x30 ; 010B0E: provisional 68k move.l a2, $30(a5)
db 0x2B, 0x40, 0x00, 0x34 ; 010B12: provisional 68k move.l d0, $34(a5)
db 0x28, 0x4A ; 010B16: provisional 68k movea.l a2, a4
db 0x50, 0x4C ; 010B18: provisional 68k addq.w #$8, a4
db 0x7C, 0xFF ; 010B1A: provisional 68k moveq #$ff, d6
db 0x60, 0x06 ; 010B1C: provisional 68k bra.b $10b24
db 0x22, 0x8A ; 010B1E: provisional 68k move.l a2, (a1)
db 0x23, 0x40, 0x00, 0x04 ; 010B20: provisional 68k move.l d0, $4(a1)
db 0x22, 0x4A ; 010B24: provisional 68k movea.l a2, a1
db 0x50, 0x8A ; 010B26: provisional 68k addq.l #$8, a2
db 0x3A, 0x04 ; 010B28: provisional 68k move.w d4, d5
db 0x20, 0x08 ; 010B2A: provisional 68k move.l a0, d0
db 0x67, 0x04 ; 010B2C: provisional 68k beq.b $10b32
db 0x21, 0x4A, 0x09, 0x34 ; 010B2E: provisional 68k move.l a2, $934(a0)
db 0x26, 0x4A ; 010B32: provisional 68k movea.l a2, a3
db 0x53, 0x45 ; 010B34: provisional 68k subq.w #$1, d5
db 0x24, 0x4B ; 010B36: provisional 68k movea.l a3, a2
db 0x27, 0x4D, 0x09, 0x30 ; 010B38: provisional 68k move.l a5, $930(a3)
db 0x27, 0x4B, 0x09, 0x1E ; 010B3C: provisional 68k move.l a3, $91e(a3)
db 0x27, 0x7C, 0x00, 0x00, 0x00, 0x01, 0x09, 0x22 ; 010B40: provisional 68k move.l #$1, $922(a3)
db 0x42, 0xAB, 0x09, 0x26 ; 010B48: provisional 68k clr.l $926(a3)
db 0x47, 0xEB, 0x09, 0x38 ; 010B4C: provisional 68k lea.l $938(a3), a3
db 0x25, 0x4B, 0x09, 0x34 ; 010B50: provisional 68k move.l a3, $934(a2)
db 0x51, 0xCD, 0xFF, 0xE0 ; 010B54: provisional 68k dbra d5, $10b36
db 0x20, 0x4A ; 010B58: provisional 68k movea.l a2, a0
db 0x94, 0x44 ; 010B5A: provisional 68k sub.w d4, d2
db 0x66, 0x00, 0xFE, 0xEA ; 010B5C: provisional 68k bne.w $10a48
db 0x42, 0xAA, 0x09, 0x34 ; 010B60: provisional 68k clr.l $934(a2)
db 0x3B, 0x47, 0x00, 0x1C ; 010B64: provisional 68k move.w d7, $1c(a5)
db 0x3B, 0x47, 0x00, 0x1E ; 010B68: provisional 68k move.w d7, $1e(a5)
db 0x2B, 0x4C, 0x00, 0x22 ; 010B6C: provisional 68k move.l a4, $22(a5)
db 0x02, 0x3C, 0x00, 0x0E ; 010B70: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 010B74: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 010B76: provisional 68k pea.l $10b80(pc)
db 0x61, 0x00, 0xB1, 0xD4 ; 010B7A: provisional 68k bsr.w $bd50
db 0x60, 0x22 ; 010B7E: provisional 68k bra.b $10ba2
db 0x64, 0x6E ; 010B80: provisional 68k bcc.b $10bf0
db 0x6C, 0x69 ; 010B82: provisional 68k bge.b $10bed
db 0x73, 0x74 ; file 010B84
db 0x5F, 0x64 ; 010B86: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 010B88: provisional 68k bcs.b $10bfd
db 0x74, 0x72 ; 010B8A: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 010B8C: provisional 68k ble.b $10c07
db 0x20, 0x3A, 0x20, 0x4B ; 010B8E: provisional 68k move.l $12bdb(pc), d0
db 0x69, 0x6C ; 010B92: provisional 68k bvs.b $10c00
db 0x6C, 0x69 ; 010B94: provisional 68k bge.b $10bff
db 0x6E, 0x67 ; 010B96: provisional 68k bgt.b $10bff
db 0x20, 0x6F, 0x62, 0x6A ; 010B98: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 010B9C: provisional 68k bcs.b $10c01
db 0x74, 0x0D ; 010B9E: provisional 68k moveq #$d, d2
db 0x0A, 0x00, 0x4E, 0x75 ; 010BA0: provisional 68k eori.b #$75, d0
db 0x48, 0x7A, 0x00, 0x08 ; 010BA4: provisional 68k pea.l $10bae(pc)
db 0x61, 0x00, 0xB1, 0xA6 ; 010BA8: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 010BAC: provisional 68k bra.b $10bb8
db 0x64, 0x6E ; 010BAE: provisional 68k bcc.b $10c1e
db 0x6C, 0x69 ; 010BB0: provisional 68k bge.b $10c1b
db 0x73, 0x74 ; file 010BB2
db 0x20, 0x2D, 0x20, 0x00 ; 010BB4: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 010BB8: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xF7, 0xB0 ; 010BBA: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 010BBE: provisional 68k rts 
db 0x4E, 0x75 ; 010BC0: provisional 68k rts 
