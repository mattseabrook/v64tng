; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011974–011E4F, inclusive.
cdi_t7g_entry_011974:
db 0x26, 0x53 ; 011974: provisional 68k movea.l (a3), a3
db 0x28, 0x54 ; 011976: provisional 68k movea.l (a4), a4
db 0x24, 0x6D, 0x00, 0x04 ; 011978: provisional 68k movea.l $4(a5), a2
db 0x2A, 0x5D ; 01197C: provisional 68k movea.l (a5)+, a5
db 0x3E, 0x2E, 0xD0, 0x36 ; 01197E: provisional 68k move.w -$2fca(a6), d7
db 0x3A, 0x2E, 0xD0, 0x38 ; 011982: provisional 68k move.w -$2fc8(a6), d5
db 0x38, 0x2E, 0xD0, 0x3A ; 011986: provisional 68k move.w -$2fc6(a6), d4
db 0xE4, 0x4E ; 01198A: provisional 68k lsr.w #$2, d6
db 0x42, 0x80 ; 01198C: provisional 68k clr.l d0
db 0x42, 0x81 ; 01198E: provisional 68k clr.l d1
db 0x42, 0x82 ; 011990: provisional 68k clr.l d2
db 0x42, 0x83 ; 011992: provisional 68k clr.l d3
db 0x2F, 0x0E ; 011994: provisional 68k move.l a6, -(a7)
db 0x53, 0x46 ; 011996: provisional 68k subq.w #$1, d6
db 0x20, 0x6E, 0xD0, 0x2A ; 011998: provisional 68k movea.l -$2fd6(a6), a0
db 0x42, 0x40 ; 01199C: provisional 68k clr.w d0
db 0x10, 0x13 ; 01199E: provisional 68k move.b (a3), d0
db 0x12, 0x07 ; 0119A0: provisional 68k move.b d7, d1
db 0xE1, 0x41 ; 0119A2: provisional 68k asl.w #$8, d1
db 0x12, 0x00 ; 0119A4: provisional 68k move.b d0, d1
db 0x14, 0x30, 0x18, 0xF0 ; 0119A6: provisional 68k move.b -$10(a0, d1.l), d2
db 0xDE, 0x3B, 0x20, 0xB8 ; 0119AA: provisional 68k add.b $11964(pc, d2.w), d7
db 0x43, 0xFA, 0x01, 0xA1 ; 0119AE: provisional 68k lea.l $11b51(pc), a1
db 0x92, 0xC7 ; 0119B2: provisional 68k suba.w d7, a1
db 0x4D, 0xE9, 0x01, 0xFF ; 0119B4: provisional 68k lea.l $1ff(a1), a6
db 0x42, 0x41 ; 0119B8: provisional 68k clr.w d1
db 0x12, 0x1B ; 0119BA: provisional 68k move.b (a3)+, d1
db 0x16, 0x36, 0x10, 0x00 ; 0119BC: provisional 68k move.b (a6, d1.w), d3
db 0x12, 0x1B ; 0119C0: provisional 68k move.b (a3)+, d1
db 0xD6, 0x31, 0x10, 0x00 ; 0119C2: provisional 68k add.b (a1, d1.w), d3
db 0x1A, 0xC3 ; 0119C6: provisional 68k move.b d3, (a5)+
db 0x12, 0x1B ; 0119C8: provisional 68k move.b (a3)+, d1
db 0x16, 0x36, 0x10, 0x00 ; 0119CA: provisional 68k move.b (a6, d1.w), d3
db 0x12, 0x1B ; 0119CE: provisional 68k move.b (a3)+, d1
db 0xD6, 0x31, 0x10, 0x00 ; 0119D0: provisional 68k add.b (a1, d1.w), d3
db 0x14, 0xC3 ; 0119D4: provisional 68k move.b d3, (a2)+
db 0x12, 0x05 ; 0119D6: provisional 68k move.b d5, d1
db 0xE1, 0x41 ; 0119D8: provisional 68k asl.w #$8, d1
db 0x12, 0x1B ; 0119DA: provisional 68k move.b (a3)+, d1
db 0x16, 0x30, 0x18, 0x00 ; 0119DC: provisional 68k move.b (a0, d1.l), d3
db 0xDA, 0x3B, 0x30, 0x60 ; 0119E0: provisional 68k add.b $11a42(pc, d3.w), d5
db 0x12, 0x03 ; 0119E4: provisional 68k move.b d3, d1
db 0xE9, 0x41 ; 0119E6: provisional 68k asl.w #$4, d1
db 0x82, 0x02 ; 0119E8: provisional 68k or.b d2, d1
db 0x18, 0xC1 ; 0119EA: provisional 68k move.b d1, (a4)+
db 0x10, 0x13 ; 0119EC: provisional 68k move.b (a3), d0
db 0x12, 0x07 ; 0119EE: provisional 68k move.b d7, d1
db 0xE1, 0x41 ; 0119F0: provisional 68k asl.w #$8, d1
db 0x12, 0x00 ; 0119F2: provisional 68k move.b d0, d1
db 0x14, 0x30, 0x18, 0xF0 ; 0119F4: provisional 68k move.b -$10(a0, d1.l), d2
db 0xDE, 0x3B, 0x20, 0x48 ; 0119F8: provisional 68k add.b $11a42(pc, d2.w), d7
db 0x43, 0xFA, 0x01, 0x53 ; 0119FC: provisional 68k lea.l $11b51(pc), a1
db 0x92, 0xC7 ; 011A00: provisional 68k suba.w d7, a1
db 0x4D, 0xE9, 0x01, 0xFF ; 011A02: provisional 68k lea.l $1ff(a1), a6
db 0x42, 0x41 ; 011A06: provisional 68k clr.w d1
db 0x12, 0x1B ; 011A08: provisional 68k move.b (a3)+, d1
db 0x16, 0x36, 0x10, 0x00 ; 011A0A: provisional 68k move.b (a6, d1.w), d3
db 0x12, 0x1B ; 011A0E: provisional 68k move.b (a3)+, d1
db 0xD6, 0x31, 0x10, 0x00 ; 011A10: provisional 68k add.b (a1, d1.w), d3
db 0x1A, 0xC3 ; 011A14: provisional 68k move.b d3, (a5)+
db 0x12, 0x1B ; 011A16: provisional 68k move.b (a3)+, d1
db 0x16, 0x36, 0x10, 0x00 ; 011A18: provisional 68k move.b (a6, d1.w), d3
db 0x12, 0x1B ; 011A1C: provisional 68k move.b (a3)+, d1
db 0xD6, 0x31, 0x10, 0x00 ; 011A1E: provisional 68k add.b (a1, d1.w), d3
db 0x14, 0xC3 ; 011A22: provisional 68k move.b d3, (a2)+
db 0x12, 0x04 ; 011A24: provisional 68k move.b d4, d1
db 0xE1, 0x41 ; 011A26: provisional 68k asl.w #$8, d1
db 0x12, 0x1B ; 011A28: provisional 68k move.b (a3)+, d1
db 0x16, 0x30, 0x18, 0x00 ; 011A2A: provisional 68k move.b (a0, d1.l), d3
db 0xD8, 0x3B, 0x30, 0x12 ; 011A2E: provisional 68k add.b $11a42(pc, d3.w), d4
db 0x12, 0x03 ; 011A32: provisional 68k move.b d3, d1
db 0xE9, 0x41 ; 011A34: provisional 68k asl.w #$4, d1
db 0x82, 0x02 ; 011A36: provisional 68k or.b d2, d1
db 0x18, 0xC1 ; 011A38: provisional 68k move.b d1, (a4)+
db 0x51, 0xCE, 0xFF, 0x60 ; 011A3A: provisional 68k dbra d6, $1199c
db 0x2C, 0x5F ; 011A3E: provisional 68k movea.l (a7)+, a6
db 0x4E, 0x75 ; 011A40: provisional 68k rts 
db 0x00, 0x01, 0x04, 0x09 ; 011A42: provisional 68k ori.b #$9, d1
db 0x10, 0x1B ; 011A46: provisional 68k move.b (a3)+, d0
db 0x2C, 0x4F ; 011A48: provisional 68k movea.l a7, a6
db 0x80, 0xB1, 0xD4, 0xE5 ; 011A4A: provisional 68k or.l -$1b(a1, a5.w), d0
db 0xF0, 0xF7 ; 011A4E: provisional 68k dc.w $f0f7
db 0xFC, 0xFF ; 011A50: provisional 68k dc.w $fcff
db 0x00, 0x00, 0x00, 0x00 ; 011A52: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A56: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A5A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A5E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A62: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A66: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A6A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A6E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A72: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A76: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A7A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A7E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A82: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A86: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A8A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A8E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A92: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A96: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A9A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011A9E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AA2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AA6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AAA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AAE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AB2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AB6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011ABA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011ABE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AC2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AC6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011ACA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011ACE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AD2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AD6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011ADA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011ADE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AE2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AE6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AEA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AEE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AF2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AF6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AFA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011AFE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B02: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B06: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B0A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B0E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B12: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B16: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B1A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B1E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B22: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B26: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B2A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B2E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B32: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B36: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B3A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B3E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B42: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011B46: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 011B4A: provisional 68k ori.b #$1, d0
db 0x01, 0x01 ; 011B4E: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 011B50: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 011B52: provisional 68k btst.l d0, d1
db 0x01, 0x02 ; 011B54: provisional 68k btst.l d0, d2
db 0x02, 0x02, 0x02, 0x02 ; 011B56: provisional 68k andi.b #$2, d2
db 0x02, 0x02, 0x02, 0x03 ; 011B5A: provisional 68k andi.b #$3, d2
db 0x03, 0x03 ; 011B5E: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 011B60: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 011B62: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 011B64: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 011B66: provisional 68k btst.l d1, d3
db 0x04, 0x04, 0x04, 0x04 ; 011B68: provisional 68k subi.b #$4, d4
db 0x04, 0x04, 0x04, 0x04 ; 011B6C: provisional 68k subi.b #$4, d4
db 0x05, 0x05 ; 011B70: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 011B72: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 011B74: provisional 68k btst.l d2, d5
db 0x05, 0x06 ; 011B76: provisional 68k btst.l d2, d6
db 0x06, 0x06, 0x06, 0x06 ; 011B78: provisional 68k addi.b #$6, d6
db 0x06, 0x06, 0x06, 0x06 ; 011B7C: provisional 68k addi.b #$6, d6
db 0x06, 0x07, 0x07, 0x07 ; 011B80: provisional 68k addi.b #$7, d7
db 0x07, 0x07 ; 011B84: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B86: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B88: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B8A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B8C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B8E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B90: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B92: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B94: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B96: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B98: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B9A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B9C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011B9E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BA0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BA2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BA4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BA6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BA8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BAA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BAC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BAE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BB0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BB2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BB4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BB6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BB8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BBA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BBC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BBE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BC0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BC2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BC4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BC6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BC8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BCA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BCC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BCE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BD0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BD2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BD4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BD6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BD8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BDA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BDC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BDE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BE0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BE2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BE4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BE6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BE8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BEA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BEC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BEE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BF0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BF2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BF4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BF6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BF8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BFA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BFC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011BFE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C00: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C02: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C04: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C06: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C08: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C0A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C0C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C0E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C10: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C12: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C14: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C16: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C18: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C1A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C1C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C1E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C20: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C22: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C24: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C26: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C28: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C2A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C2C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C2E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C30: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C32: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C34: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C36: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C38: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C3A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C3C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C3E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C40: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C42: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C44: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C46: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C48: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C4A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C4C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 011C4E: provisional 68k btst.l d3, d7
db 0x07, 0x00 ; 011C50: provisional 68k btst.l d3, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C52: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C56: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C5A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C5E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C62: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C66: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C6A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C6E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C72: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C76: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C7A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C7E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C82: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C86: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C8A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C8E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C92: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C96: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C9A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011C9E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CA2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CA6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CAA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CAE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CB2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CB6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CBA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CBE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CC2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CC6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CCA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CCE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CD2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CD6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CDA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CDE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CE2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CE6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CEA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CEE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CF2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CF6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CFA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011CFE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D02: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D06: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D0A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D0E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D12: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D16: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D1A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D1E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D22: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D26: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D2A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D2E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D32: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D36: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D3A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D3E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D42: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 011D46: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x10, 0x10 ; 011D4A: provisional 68k ori.b #$10, d0
db 0x10, 0x10 ; 011D4E: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 011D50: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 011D52: provisional 68k move.b (a0), d0
db 0x20, 0x20 ; 011D54: provisional 68k move.l -(a0), d0
db 0x20, 0x20 ; 011D56: provisional 68k move.l -(a0), d0
db 0x20, 0x20 ; 011D58: provisional 68k move.l -(a0), d0
db 0x20, 0x20 ; 011D5A: provisional 68k move.l -(a0), d0
db 0x30, 0x30, 0x30, 0x30 ; 011D5C: provisional 68k move.w $30(a0, d3.w), d0
db 0x30, 0x30, 0x30, 0x30 ; 011D60: provisional 68k move.w $30(a0, d3.w), d0
db 0x30, 0x30, 0x30, 0x40 ; 011D64: provisional 68k move.w $40(a0, d3.w), d0
db 0x40, 0x40 ; 011D68: provisional 68k negx.w d0
db 0x40, 0x40 ; 011D6A: provisional 68k negx.w d0
db 0x40, 0x40 ; 011D6C: provisional 68k negx.w d0
db 0x40, 0x50 ; 011D6E: provisional 68k negx.w (a0)
db 0x50, 0x50 ; 011D70: provisional 68k addq.w #$8, (a0)
db 0x50, 0x50 ; 011D72: provisional 68k addq.w #$8, (a0)
db 0x50, 0x50 ; 011D74: provisional 68k addq.w #$8, (a0)
db 0x60, 0x60 ; 011D76: provisional 68k bra.b $11dd8
db 0x60, 0x60 ; 011D78: provisional 68k bra.b $11dda
db 0x60, 0x60 ; 011D7A: provisional 68k bra.b $11ddc
db 0x60, 0x60 ; 011D7C: provisional 68k bra.b $11dde
db 0x60, 0x60 ; 011D7E: provisional 68k bra.b $11de0
db 0x70, 0x70 ; 011D80: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D82: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D84: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D86: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D88: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D8A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D8C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D8E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D90: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D92: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D94: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D96: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D98: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D9A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D9C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011D9E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DA0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DA2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DA4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DA6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DA8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DAA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DAC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DAE: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DB0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DB2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DB4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DB6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DB8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DBA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DBC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DBE: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DC0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DC2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DC4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DC6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DC8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DCA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DCC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DCE: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DD0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DD2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DD4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DD6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DD8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DDA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DDC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DDE: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DE0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DE2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DE4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DE6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DE8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DEA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DEC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DEE: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DF0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DF2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DF4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DF6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DF8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DFA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DFC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011DFE: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E00: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E02: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E04: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E06: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E08: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E0A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E0C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E0E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E10: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E12: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E14: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E16: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E18: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E1A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E1C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E1E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E20: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E22: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E24: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E26: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E28: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E2A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E2C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E2E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E30: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E32: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E34: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E36: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E38: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E3A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E3C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E3E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E40: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E42: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E44: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E46: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E48: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E4A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E4C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 011E4E: provisional 68k moveq #$70, d0
