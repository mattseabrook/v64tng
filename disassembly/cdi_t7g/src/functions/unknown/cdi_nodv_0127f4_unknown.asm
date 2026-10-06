; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0127F4–012CCF, inclusive.
cdi_nodv_entry_0127f4:
db 0x26, 0x53 ; 0127F4: provisional 68k movea.l (a3), a3
db 0x28, 0x54 ; 0127F6: provisional 68k movea.l (a4), a4
db 0x24, 0x6D, 0x00, 0x04 ; 0127F8: provisional 68k movea.l $4(a5), a2
db 0x2A, 0x5D ; 0127FC: provisional 68k movea.l (a5)+, a5
db 0x3E, 0x2E, 0xD0, 0x36 ; 0127FE: provisional 68k move.w -$2fca(a6), d7
db 0x3A, 0x2E, 0xD0, 0x38 ; 012802: provisional 68k move.w -$2fc8(a6), d5
db 0x38, 0x2E, 0xD0, 0x3A ; 012806: provisional 68k move.w -$2fc6(a6), d4
db 0xE4, 0x4E ; 01280A: provisional 68k lsr.w #$2, d6
db 0x42, 0x80 ; 01280C: provisional 68k clr.l d0
db 0x42, 0x81 ; 01280E: provisional 68k clr.l d1
db 0x42, 0x82 ; 012810: provisional 68k clr.l d2
db 0x42, 0x83 ; 012812: provisional 68k clr.l d3
db 0x2F, 0x0E ; 012814: provisional 68k move.l a6, -(a7)
db 0x53, 0x46 ; 012816: provisional 68k subq.w #$1, d6
db 0x20, 0x6E, 0xD0, 0x2A ; 012818: provisional 68k movea.l -$2fd6(a6), a0
db 0x42, 0x40 ; 01281C: provisional 68k clr.w d0
db 0x10, 0x13 ; 01281E: provisional 68k move.b (a3), d0
db 0x12, 0x07 ; 012820: provisional 68k move.b d7, d1
db 0xE1, 0x41 ; 012822: provisional 68k asl.w #$8, d1
db 0x12, 0x00 ; 012824: provisional 68k move.b d0, d1
db 0x14, 0x30, 0x18, 0xF0 ; 012826: provisional 68k move.b -$10(a0, d1.l), d2
db 0xDE, 0x3B, 0x20, 0xB8 ; 01282A: provisional 68k add.b $127e4(pc, d2.w), d7
db 0x43, 0xFA, 0x01, 0xA1 ; 01282E: provisional 68k lea.l $129d1(pc), a1
db 0x92, 0xC7 ; 012832: provisional 68k suba.w d7, a1
db 0x4D, 0xE9, 0x01, 0xFF ; 012834: provisional 68k lea.l $1ff(a1), a6
db 0x42, 0x41 ; 012838: provisional 68k clr.w d1
db 0x12, 0x1B ; 01283A: provisional 68k move.b (a3)+, d1
db 0x16, 0x36, 0x10, 0x00 ; 01283C: provisional 68k move.b (a6, d1.w), d3
db 0x12, 0x1B ; 012840: provisional 68k move.b (a3)+, d1
db 0xD6, 0x31, 0x10, 0x00 ; 012842: provisional 68k add.b (a1, d1.w), d3
db 0x1A, 0xC3 ; 012846: provisional 68k move.b d3, (a5)+
db 0x12, 0x1B ; 012848: provisional 68k move.b (a3)+, d1
db 0x16, 0x36, 0x10, 0x00 ; 01284A: provisional 68k move.b (a6, d1.w), d3
db 0x12, 0x1B ; 01284E: provisional 68k move.b (a3)+, d1
db 0xD6, 0x31, 0x10, 0x00 ; 012850: provisional 68k add.b (a1, d1.w), d3
db 0x14, 0xC3 ; 012854: provisional 68k move.b d3, (a2)+
db 0x12, 0x05 ; 012856: provisional 68k move.b d5, d1
db 0xE1, 0x41 ; 012858: provisional 68k asl.w #$8, d1
db 0x12, 0x1B ; 01285A: provisional 68k move.b (a3)+, d1
db 0x16, 0x30, 0x18, 0x00 ; 01285C: provisional 68k move.b (a0, d1.l), d3
db 0xDA, 0x3B, 0x30, 0x60 ; 012860: provisional 68k add.b $128c2(pc, d3.w), d5
db 0x12, 0x03 ; 012864: provisional 68k move.b d3, d1
db 0xE9, 0x41 ; 012866: provisional 68k asl.w #$4, d1
db 0x82, 0x02 ; 012868: provisional 68k or.b d2, d1
db 0x18, 0xC1 ; 01286A: provisional 68k move.b d1, (a4)+
db 0x10, 0x13 ; 01286C: provisional 68k move.b (a3), d0
db 0x12, 0x07 ; 01286E: provisional 68k move.b d7, d1
db 0xE1, 0x41 ; 012870: provisional 68k asl.w #$8, d1
db 0x12, 0x00 ; 012872: provisional 68k move.b d0, d1
db 0x14, 0x30, 0x18, 0xF0 ; 012874: provisional 68k move.b -$10(a0, d1.l), d2
db 0xDE, 0x3B, 0x20, 0x48 ; 012878: provisional 68k add.b $128c2(pc, d2.w), d7
db 0x43, 0xFA, 0x01, 0x53 ; 01287C: provisional 68k lea.l $129d1(pc), a1
db 0x92, 0xC7 ; 012880: provisional 68k suba.w d7, a1
db 0x4D, 0xE9, 0x01, 0xFF ; 012882: provisional 68k lea.l $1ff(a1), a6
db 0x42, 0x41 ; 012886: provisional 68k clr.w d1
db 0x12, 0x1B ; 012888: provisional 68k move.b (a3)+, d1
db 0x16, 0x36, 0x10, 0x00 ; 01288A: provisional 68k move.b (a6, d1.w), d3
db 0x12, 0x1B ; 01288E: provisional 68k move.b (a3)+, d1
db 0xD6, 0x31, 0x10, 0x00 ; 012890: provisional 68k add.b (a1, d1.w), d3
db 0x1A, 0xC3 ; 012894: provisional 68k move.b d3, (a5)+
db 0x12, 0x1B ; 012896: provisional 68k move.b (a3)+, d1
db 0x16, 0x36, 0x10, 0x00 ; 012898: provisional 68k move.b (a6, d1.w), d3
db 0x12, 0x1B ; 01289C: provisional 68k move.b (a3)+, d1
db 0xD6, 0x31, 0x10, 0x00 ; 01289E: provisional 68k add.b (a1, d1.w), d3
db 0x14, 0xC3 ; 0128A2: provisional 68k move.b d3, (a2)+
db 0x12, 0x04 ; 0128A4: provisional 68k move.b d4, d1
db 0xE1, 0x41 ; 0128A6: provisional 68k asl.w #$8, d1
db 0x12, 0x1B ; 0128A8: provisional 68k move.b (a3)+, d1
db 0x16, 0x30, 0x18, 0x00 ; 0128AA: provisional 68k move.b (a0, d1.l), d3
db 0xD8, 0x3B, 0x30, 0x12 ; 0128AE: provisional 68k add.b $128c2(pc, d3.w), d4
db 0x12, 0x03 ; 0128B2: provisional 68k move.b d3, d1
db 0xE9, 0x41 ; 0128B4: provisional 68k asl.w #$4, d1
db 0x82, 0x02 ; 0128B6: provisional 68k or.b d2, d1
db 0x18, 0xC1 ; 0128B8: provisional 68k move.b d1, (a4)+
db 0x51, 0xCE, 0xFF, 0x60 ; 0128BA: provisional 68k dbra d6, $1281c
db 0x2C, 0x5F ; 0128BE: provisional 68k movea.l (a7)+, a6
db 0x4E, 0x75 ; 0128C0: provisional 68k rts 
db 0x00, 0x01, 0x04, 0x09 ; 0128C2: provisional 68k ori.b #$9, d1
db 0x10, 0x1B ; 0128C6: provisional 68k move.b (a3)+, d0
db 0x2C, 0x4F ; 0128C8: provisional 68k movea.l a7, a6
db 0x80, 0xB1, 0xD4, 0xE5 ; 0128CA: provisional 68k or.l -$1b(a1, a5.w), d0
db 0xF0, 0xF7 ; 0128CE: provisional 68k dc.w $f0f7
db 0xFC, 0xFF ; 0128D0: provisional 68k dc.w $fcff
db 0x00, 0x00, 0x00, 0x00 ; 0128D2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128D6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128DA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128DE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128E2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128E6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128EA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128EE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128F2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128F6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128FA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0128FE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012902: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012906: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01290A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01290E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012912: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012916: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01291A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01291E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012922: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012926: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01292A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01292E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012932: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012936: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01293A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01293E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012942: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012946: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01294A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01294E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012952: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012956: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01295A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01295E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012962: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012966: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01296A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01296E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012972: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012976: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01297A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01297E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012982: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012986: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01298A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01298E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012992: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012996: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01299A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 01299E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129A2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129A6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129AA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129AE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129B2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129B6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129BA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129BE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129C2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0129C6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 0129CA: provisional 68k ori.b #$1, d0
db 0x01, 0x01 ; 0129CE: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 0129D0: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 0129D2: provisional 68k btst.l d0, d1
db 0x01, 0x02 ; 0129D4: provisional 68k btst.l d0, d2
db 0x02, 0x02, 0x02, 0x02 ; 0129D6: provisional 68k andi.b #$2, d2
db 0x02, 0x02, 0x02, 0x03 ; 0129DA: provisional 68k andi.b #$3, d2
db 0x03, 0x03 ; 0129DE: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 0129E0: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 0129E2: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 0129E4: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 0129E6: provisional 68k btst.l d1, d3
db 0x04, 0x04, 0x04, 0x04 ; 0129E8: provisional 68k subi.b #$4, d4
db 0x04, 0x04, 0x04, 0x04 ; 0129EC: provisional 68k subi.b #$4, d4
db 0x05, 0x05 ; 0129F0: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 0129F2: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 0129F4: provisional 68k btst.l d2, d5
db 0x05, 0x06 ; 0129F6: provisional 68k btst.l d2, d6
db 0x06, 0x06, 0x06, 0x06 ; 0129F8: provisional 68k addi.b #$6, d6
db 0x06, 0x06, 0x06, 0x06 ; 0129FC: provisional 68k addi.b #$6, d6
db 0x06, 0x07, 0x07, 0x07 ; 012A00: provisional 68k addi.b #$7, d7
db 0x07, 0x07 ; 012A04: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A06: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A08: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A0A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A0C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A0E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A10: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A12: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A14: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A16: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A18: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A1A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A1C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A1E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A20: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A22: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A24: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A26: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A28: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A2A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A2C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A2E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A30: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A32: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A34: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A36: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A38: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A3A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A3C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A3E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A40: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A42: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A44: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A46: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A48: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A4A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A4C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A4E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A50: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A52: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A54: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A56: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A58: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A5A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A5C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A5E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A60: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A62: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A64: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A66: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A68: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A6A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A6C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A6E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A70: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A72: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A74: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A76: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A78: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A7A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A7C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A7E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A80: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A82: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A84: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A86: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A88: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A8A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A8C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A8E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A90: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A92: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A94: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A96: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A98: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A9A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A9C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012A9E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AA0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AA2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AA4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AA6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AA8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AAA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AAC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AAE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AB0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AB2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AB4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AB6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AB8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012ABA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012ABC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012ABE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AC0: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AC2: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AC4: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AC6: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012AC8: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012ACA: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012ACC: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012ACE: provisional 68k btst.l d3, d7
db 0x07, 0x00 ; 012AD0: provisional 68k btst.l d3, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AD2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AD6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012ADA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012ADE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AE2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AE6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AEA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AEE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AF2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AF6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AFA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012AFE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B02: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B06: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B0A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B0E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B12: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B16: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B1A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B1E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B22: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B26: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B2A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B2E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B32: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B36: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B3A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B3E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B42: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B46: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B4A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B4E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B52: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B56: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B5A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B5E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B62: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B66: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B6A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B6E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B72: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B76: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B7A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B7E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B82: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B86: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B8A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B8E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B92: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B96: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B9A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012B9E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BA2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BA6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BAA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BAE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BB2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BB6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BBA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BBE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BC2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012BC6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x10, 0x10 ; 012BCA: provisional 68k ori.b #$10, d0
db 0x10, 0x10 ; 012BCE: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 012BD0: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 012BD2: provisional 68k move.b (a0), d0
db 0x20, 0x20 ; 012BD4: provisional 68k move.l -(a0), d0
db 0x20, 0x20 ; 012BD6: provisional 68k move.l -(a0), d0
db 0x20, 0x20 ; 012BD8: provisional 68k move.l -(a0), d0
db 0x20, 0x20 ; 012BDA: provisional 68k move.l -(a0), d0
db 0x30, 0x30, 0x30, 0x30 ; 012BDC: provisional 68k move.w $30(a0, d3.w), d0
db 0x30, 0x30, 0x30, 0x30 ; 012BE0: provisional 68k move.w $30(a0, d3.w), d0
db 0x30, 0x30, 0x30, 0x40 ; 012BE4: provisional 68k move.w $40(a0, d3.w), d0
db 0x40, 0x40 ; 012BE8: provisional 68k negx.w d0
db 0x40, 0x40 ; 012BEA: provisional 68k negx.w d0
db 0x40, 0x40 ; 012BEC: provisional 68k negx.w d0
db 0x40, 0x50 ; 012BEE: provisional 68k negx.w (a0)
db 0x50, 0x50 ; 012BF0: provisional 68k addq.w #$8, (a0)
db 0x50, 0x50 ; 012BF2: provisional 68k addq.w #$8, (a0)
db 0x50, 0x50 ; 012BF4: provisional 68k addq.w #$8, (a0)
db 0x60, 0x60 ; 012BF6: provisional 68k bra.b $12c58
db 0x60, 0x60 ; 012BF8: provisional 68k bra.b $12c5a
db 0x60, 0x60 ; 012BFA: provisional 68k bra.b $12c5c
db 0x60, 0x60 ; 012BFC: provisional 68k bra.b $12c5e
db 0x60, 0x60 ; 012BFE: provisional 68k bra.b $12c60
db 0x70, 0x70 ; 012C00: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C02: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C04: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C06: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C08: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C0A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C0C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C0E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C10: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C12: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C14: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C16: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C18: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C1A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C1C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C1E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C20: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C22: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C24: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C26: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C28: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C2A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C2C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C2E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C30: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C32: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C34: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C36: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C38: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C3A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C3C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C3E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C40: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C42: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C44: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C46: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C48: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C4A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C4C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C4E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C50: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C52: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C54: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C56: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C58: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C5A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C5C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C5E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C60: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C62: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C64: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C66: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C68: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C6A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C6C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C6E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C70: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C72: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C74: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C76: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C78: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C7A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C7C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C7E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C80: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C82: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C84: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C86: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C88: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C8A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C8C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C8E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C90: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C92: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C94: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C96: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C98: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C9A: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C9C: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012C9E: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CA0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CA2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CA4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CA6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CA8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CAA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CAC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CAE: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CB0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CB2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CB4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CB6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CB8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CBA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CBC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CBE: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CC0: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CC2: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CC4: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CC6: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CC8: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CCA: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CCC: provisional 68k moveq #$70, d0
db 0x70, 0x70 ; 012CCE: provisional 68k moveq #$70, d0
