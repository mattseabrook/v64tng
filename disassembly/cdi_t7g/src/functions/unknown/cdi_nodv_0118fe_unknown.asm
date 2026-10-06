; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0118FE–011A41, inclusive.
cdi_nodv_entry_0118fe:
db 0x60, 0x1A ; 0118FE: provisional 68k bra.b $1191a
db 0x3E, 0x3E ; file 011900
db 0x3E, 0x20 ; 011902: provisional 68k move.w -(a0), d7
db 0x52, 0x4F ; 011904: provisional 68k addq.w #$1, a7
db 0x4D, 0x20 ; 011906: provisional 68k dc.w $4d20
db 0x4D, 0x45, 0x4D, 0x4F ; file 011908
db 0x52, 0x59 ; 01190C: provisional 68k addq.w #$1, (a1)+
db 0x20, 0x55 ; 01190E: provisional 68k movea.l (a5), a0
db 0x53, 0x45 ; 011910: provisional 68k subq.w #$1, d5
db 0x44, 0x20 ; 011912: provisional 68k neg.b -(a0)
db 0x3C, 0x3C, 0x3C, 0x0D ; 011914: provisional 68k move.w #$3c0d, d6
db 0x0A, 0x00, 0x24, 0x7C ; 011918: provisional 68k eori.b #$7c, d0
db 0x00, 0xD2 ; file 01191C
db 0x56, 0x38, 0x36, 0x3C ; 01191E: provisional 68k addq.b #$3, $363c.w
db 0x00, 0x80, 0x3D, 0x43, 0xD0, 0x28 ; 011922: provisional 68k ori.l #$3d43d028, d0
db 0x60, 0x00, 0x00, 0x5A ; 011928: provisional 68k bra.w $11984
db 0x4E, 0x40, 0x00, 0x5C ; 01192C: provisional 68k trap #0 ; OS-9 service word $005C
db 0x64, 0x00, 0x00, 0x52 ; 011930: provisional 68k bcc.w $11984
db 0x53, 0x44 ; 011934: provisional 68k subq.w #$1, d4
db 0x66, 0x92 ; 011936: provisional 68k bne.b $118ca
db 0x0C, 0x6E, 0x00, 0x01, 0xD0, 0x26 ; 011938: provisional 68k cmpi.w #$1, -$2fda(a6)
db 0x66, 0x00, 0x00, 0x3E ; 01193E: provisional 68k bne.w $1197e
db 0x0C, 0x6E, 0x00, 0x01, 0xD0, 0x28 ; 011942: provisional 68k cmpi.w #$1, -$2fd8(a6)
db 0x66, 0x0C ; 011948: provisional 68k bne.b $11956
db 0x36, 0x3C, 0x00, 0x39 ; 01194A: provisional 68k move.w #$39, d3
db 0x3D, 0x43, 0xD0, 0x28 ; 01194E: provisional 68k move.w d3, -$2fd8(a6)
db 0x60, 0x00, 0xFF, 0x74 ; 011952: provisional 68k bra.w $118c8
db 0x0C, 0x6E, 0x00, 0x39, 0xD0, 0x28 ; 011956: provisional 68k cmpi.w #$39, -$2fd8(a6)
db 0x66, 0x0C ; 01195C: provisional 68k bne.b $1196a
db 0x36, 0x3C, 0x00, 0x80 ; 01195E: provisional 68k move.w #$80, d3
db 0x3D, 0x43, 0xD0, 0x28 ; 011962: provisional 68k move.w d3, -$2fd8(a6)
db 0x60, 0x00, 0xFF, 0x60 ; 011966: provisional 68k bra.w $118c8
db 0x0C, 0x6E, 0x00, 0x80, 0xD0, 0x28 ; 01196A: provisional 68k cmpi.w #$80, -$2fd8(a6)
db 0x66, 0x0C ; 011970: provisional 68k bne.b $1197e
db 0x36, 0x3C, 0x00, 0x81 ; 011972: provisional 68k move.w #$81, d3
db 0x3D, 0x43, 0xD0, 0x28 ; 011976: provisional 68k move.w d3, -$2fd8(a6)
db 0x60, 0x00, 0xFF, 0x4C ; 01197A: provisional 68k bra.w $118c8
db 0x00, 0x3C, 0x00, 0x01 ; 01197E: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 011982: provisional 68k rts 
db 0x24, 0xBC, 0x00, 0x00, 0x00, 0x00 ; 011984: provisional 68k move.l #$0, (a2)
db 0x4A, 0x46 ; 01198A: provisional 68k tst.w d6
db 0x66, 0x10 ; 01198C: provisional 68k bne.b $1199e
db 0x2B, 0x4A, 0x00, 0x30 ; 01198E: provisional 68k move.l a2, $30(a5)
db 0x2B, 0x40, 0x00, 0x34 ; 011992: provisional 68k move.l d0, $34(a5)
db 0x28, 0x4A ; 011996: provisional 68k movea.l a2, a4
db 0x50, 0x4C ; 011998: provisional 68k addq.w #$8, a4
db 0x7C, 0xFF ; 01199A: provisional 68k moveq #$ff, d6
db 0x60, 0x06 ; 01199C: provisional 68k bra.b $119a4
db 0x22, 0x8A ; 01199E: provisional 68k move.l a2, (a1)
db 0x23, 0x40, 0x00, 0x04 ; 0119A0: provisional 68k move.l d0, $4(a1)
db 0x22, 0x4A ; 0119A4: provisional 68k movea.l a2, a1
db 0x50, 0x8A ; 0119A6: provisional 68k addq.l #$8, a2
db 0x3A, 0x04 ; 0119A8: provisional 68k move.w d4, d5
db 0x20, 0x08 ; 0119AA: provisional 68k move.l a0, d0
db 0x67, 0x04 ; 0119AC: provisional 68k beq.b $119b2
db 0x21, 0x4A, 0x09, 0x34 ; 0119AE: provisional 68k move.l a2, $934(a0)
db 0x26, 0x4A ; 0119B2: provisional 68k movea.l a2, a3
db 0x53, 0x45 ; 0119B4: provisional 68k subq.w #$1, d5
db 0x24, 0x4B ; 0119B6: provisional 68k movea.l a3, a2
db 0x27, 0x4D, 0x09, 0x30 ; 0119B8: provisional 68k move.l a5, $930(a3)
db 0x27, 0x4B, 0x09, 0x1E ; 0119BC: provisional 68k move.l a3, $91e(a3)
db 0x27, 0x7C, 0x00, 0x00, 0x00, 0x01, 0x09, 0x22 ; 0119C0: provisional 68k move.l #$1, $922(a3)
db 0x42, 0xAB, 0x09, 0x26 ; 0119C8: provisional 68k clr.l $926(a3)
db 0x47, 0xEB, 0x09, 0x38 ; 0119CC: provisional 68k lea.l $938(a3), a3
db 0x25, 0x4B, 0x09, 0x34 ; 0119D0: provisional 68k move.l a3, $934(a2)
db 0x51, 0xCD, 0xFF, 0xE0 ; 0119D4: provisional 68k dbra d5, $119b6
db 0x20, 0x4A ; 0119D8: provisional 68k movea.l a2, a0
db 0x94, 0x44 ; 0119DA: provisional 68k sub.w d4, d2
db 0x66, 0x00, 0xFE, 0xEA ; 0119DC: provisional 68k bne.w $118c8
db 0x42, 0xAA, 0x09, 0x34 ; 0119E0: provisional 68k clr.l $934(a2)
db 0x3B, 0x47, 0x00, 0x1C ; 0119E4: provisional 68k move.w d7, $1c(a5)
db 0x3B, 0x47, 0x00, 0x1E ; 0119E8: provisional 68k move.w d7, $1e(a5)
db 0x2B, 0x4C, 0x00, 0x22 ; 0119EC: provisional 68k move.l a4, $22(a5)
db 0x02, 0x3C, 0x00, 0x0E ; 0119F0: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 0119F4: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 0119F6: provisional 68k pea.l $11a00(pc)
db 0x61, 0x00, 0xB1, 0xD4 ; 0119FA: provisional 68k bsr.w $cbd0
db 0x60, 0x22 ; 0119FE: provisional 68k bra.b $11a22
db 0x64, 0x6E ; 011A00: provisional 68k bcc.b $11a70
db 0x6C, 0x69 ; 011A02: provisional 68k bge.b $11a6d
db 0x73, 0x74 ; file 011A04
db 0x5F, 0x64 ; 011A06: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 011A08: provisional 68k bcs.b $11a7d
db 0x74, 0x72 ; 011A0A: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 011A0C: provisional 68k ble.b $11a87
db 0x20, 0x3A, 0x20, 0x4B ; 011A0E: provisional 68k move.l $13a5b(pc), d0
db 0x69, 0x6C ; 011A12: provisional 68k bvs.b $11a80
db 0x6C, 0x69 ; 011A14: provisional 68k bge.b $11a7f
db 0x6E, 0x67 ; 011A16: provisional 68k bgt.b $11a7f
db 0x20, 0x6F, 0x62, 0x6A ; 011A18: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 011A1C: provisional 68k bcs.b $11a81
db 0x74, 0x0D ; 011A1E: provisional 68k moveq #$d, d2
db 0x0A, 0x00, 0x4E, 0x75 ; 011A20: provisional 68k eori.b #$75, d0
db 0x48, 0x7A, 0x00, 0x08 ; 011A24: provisional 68k pea.l $11a2e(pc)
db 0x61, 0x00, 0xB1, 0xA6 ; 011A28: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 011A2C: provisional 68k bra.b $11a38
db 0x64, 0x6E ; 011A2E: provisional 68k bcc.b $11a9e
db 0x6C, 0x69 ; 011A30: provisional 68k bge.b $11a9b
db 0x73, 0x74 ; file 011A32
db 0x20, 0x2D, 0x20, 0x00 ; 011A34: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 011A38: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xF7, 0xB0 ; 011A3A: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 011A3E: provisional 68k rts 
db 0x4E, 0x75 ; 011A40: provisional 68k rts 
