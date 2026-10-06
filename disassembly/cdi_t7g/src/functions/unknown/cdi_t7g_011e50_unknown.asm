; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011E50–011F0F, inclusive.
cdi_t7g_entry_011e50:
db 0x26, 0x53 ; 011E50: provisional 68k movea.l (a3), a3
db 0x2A, 0x6C, 0x00, 0x04 ; 011E52: provisional 68k movea.l $4(a4), a5
db 0x28, 0x54 ; 011E56: provisional 68k movea.l (a4), a4
db 0x2E, 0x3C, 0x00, 0x10, 0x00, 0x10 ; 011E58: provisional 68k move.l #$100010, d7
db 0x3A, 0x3C, 0x00, 0x80 ; 011E5E: provisional 68k move.w #$80, d5
db 0x38, 0x3C, 0x00, 0x80 ; 011E62: provisional 68k move.w #$80, d4
db 0xE4, 0x4E ; 011E66: provisional 68k lsr.w #$2, d6
db 0x42, 0x80 ; 011E68: provisional 68k clr.l d0
db 0x42, 0x81 ; 011E6A: provisional 68k clr.l d1
db 0x42, 0x82 ; 011E6C: provisional 68k clr.l d2
db 0x42, 0x83 ; 011E6E: provisional 68k clr.l d3
db 0x53, 0x46 ; 011E70: provisional 68k subq.w #$1, d6
db 0x20, 0x6E, 0xD0, 0x2A ; 011E72: provisional 68k movea.l -$2fd6(a6), a0
db 0x43, 0xFA, 0xFA, 0xEC ; 011E76: provisional 68k lea.l $11964(pc), a1
db 0x45, 0xFA, 0xFB, 0xC6 ; 011E7A: provisional 68k lea.l $11a42(pc), a2
db 0x12, 0x07 ; 011E7E: provisional 68k move.b d7, d1
db 0xE1, 0x49 ; 011E80: provisional 68k lsl.w #$8, d1
db 0x12, 0x1B ; 011E82: provisional 68k move.b (a3)+, d1
db 0xD2, 0x1B ; 011E84: provisional 68k add.b (a3)+, d1
db 0xE2, 0x11 ; 011E86: provisional 68k roxr.b #$1, d1
db 0x14, 0x30, 0x18, 0x00 ; 011E88: provisional 68k move.b (a0, d1.l), d2
db 0xDE, 0x31, 0x20, 0x00 ; 011E8C: provisional 68k add.b (a1, d2.w), d7
db 0x48, 0x47 ; 011E90: provisional 68k swap d7
db 0x12, 0x07 ; 011E92: provisional 68k move.b d7, d1
db 0xE1, 0x49 ; 011E94: provisional 68k lsl.w #$8, d1
db 0x12, 0x1B ; 011E96: provisional 68k move.b (a3)+, d1
db 0xD2, 0x1B ; 011E98: provisional 68k add.b (a3)+, d1
db 0xE2, 0x11 ; 011E9A: provisional 68k roxr.b #$1, d1
db 0x10, 0x30, 0x18, 0x00 ; 011E9C: provisional 68k move.b (a0, d1.l), d0
db 0xDE, 0x31, 0x00, 0x00 ; 011EA0: provisional 68k add.b (a1, d0.w), d7
db 0x48, 0x47 ; 011EA4: provisional 68k swap d7
db 0x12, 0x05 ; 011EA6: provisional 68k move.b d5, d1
db 0xE1, 0x41 ; 011EA8: provisional 68k asl.w #$8, d1
db 0x12, 0x1B ; 011EAA: provisional 68k move.b (a3)+, d1
db 0x16, 0x30, 0x18, 0x00 ; 011EAC: provisional 68k move.b (a0, d1.l), d3
db 0xDA, 0x32, 0x30, 0x00 ; 011EB0: provisional 68k add.b (a2, d3.w), d5
db 0x12, 0x03 ; 011EB4: provisional 68k move.b d3, d1
db 0xE9, 0x41 ; 011EB6: provisional 68k asl.w #$4, d1
db 0x82, 0x02 ; 011EB8: provisional 68k or.b d2, d1
db 0x18, 0xC1 ; 011EBA: provisional 68k move.b d1, (a4)+
db 0x02, 0x01, 0x00, 0xF0 ; 011EBC: provisional 68k andi.b #$f0, d1
db 0x82, 0x00 ; 011EC0: provisional 68k or.b d0, d1
db 0x1A, 0xC1 ; 011EC2: provisional 68k move.b d1, (a5)+
db 0x12, 0x07 ; 011EC4: provisional 68k move.b d7, d1
db 0xE1, 0x49 ; 011EC6: provisional 68k lsl.w #$8, d1
db 0x12, 0x1B ; 011EC8: provisional 68k move.b (a3)+, d1
db 0xD2, 0x1B ; 011ECA: provisional 68k add.b (a3)+, d1
db 0xE2, 0x11 ; 011ECC: provisional 68k roxr.b #$1, d1
db 0x14, 0x30, 0x18, 0x00 ; 011ECE: provisional 68k move.b (a0, d1.l), d2
db 0xDE, 0x31, 0x20, 0x00 ; 011ED2: provisional 68k add.b (a1, d2.w), d7
db 0x48, 0x47 ; 011ED6: provisional 68k swap d7
db 0x12, 0x07 ; 011ED8: provisional 68k move.b d7, d1
db 0xE1, 0x49 ; 011EDA: provisional 68k lsl.w #$8, d1
db 0x12, 0x1B ; 011EDC: provisional 68k move.b (a3)+, d1
db 0xD2, 0x1B ; 011EDE: provisional 68k add.b (a3)+, d1
db 0xE2, 0x11 ; 011EE0: provisional 68k roxr.b #$1, d1
db 0x10, 0x30, 0x18, 0x00 ; 011EE2: provisional 68k move.b (a0, d1.l), d0
db 0xDE, 0x31, 0x00, 0x00 ; 011EE6: provisional 68k add.b (a1, d0.w), d7
db 0x48, 0x47 ; 011EEA: provisional 68k swap d7
db 0x12, 0x04 ; 011EEC: provisional 68k move.b d4, d1
db 0xE1, 0x41 ; 011EEE: provisional 68k asl.w #$8, d1
db 0x12, 0x1B ; 011EF0: provisional 68k move.b (a3)+, d1
db 0x16, 0x30, 0x18, 0x00 ; 011EF2: provisional 68k move.b (a0, d1.l), d3
db 0xD8, 0x32, 0x30, 0x00 ; 011EF6: provisional 68k add.b (a2, d3.w), d4
db 0x12, 0x03 ; 011EFA: provisional 68k move.b d3, d1
db 0xE9, 0x41 ; 011EFC: provisional 68k asl.w #$4, d1
db 0x82, 0x02 ; 011EFE: provisional 68k or.b d2, d1
db 0x18, 0xC1 ; 011F00: provisional 68k move.b d1, (a4)+
db 0x02, 0x01, 0x00, 0xF0 ; 011F02: provisional 68k andi.b #$f0, d1
db 0x82, 0x00 ; 011F06: provisional 68k or.b d0, d1
db 0x1A, 0xC1 ; 011F08: provisional 68k move.b d1, (a5)+
db 0x51, 0xCE, 0xFF, 0x72 ; 011F0A: provisional 68k dbra d6, $11e7e
db 0x4E, 0x75 ; 011F0E: provisional 68k rts 
