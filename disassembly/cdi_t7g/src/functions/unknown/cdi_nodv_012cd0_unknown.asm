; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012CD0–012D8F, inclusive.
cdi_nodv_entry_012cd0:
db 0x26, 0x53 ; 012CD0: provisional 68k movea.l (a3), a3
db 0x2A, 0x6C, 0x00, 0x04 ; 012CD2: provisional 68k movea.l $4(a4), a5
db 0x28, 0x54 ; 012CD6: provisional 68k movea.l (a4), a4
db 0x2E, 0x3C, 0x00, 0x10, 0x00, 0x10 ; 012CD8: provisional 68k move.l #$100010, d7
db 0x3A, 0x3C, 0x00, 0x80 ; 012CDE: provisional 68k move.w #$80, d5
db 0x38, 0x3C, 0x00, 0x80 ; 012CE2: provisional 68k move.w #$80, d4
db 0xE4, 0x4E ; 012CE6: provisional 68k lsr.w #$2, d6
db 0x42, 0x80 ; 012CE8: provisional 68k clr.l d0
db 0x42, 0x81 ; 012CEA: provisional 68k clr.l d1
db 0x42, 0x82 ; 012CEC: provisional 68k clr.l d2
db 0x42, 0x83 ; 012CEE: provisional 68k clr.l d3
db 0x53, 0x46 ; 012CF0: provisional 68k subq.w #$1, d6
db 0x20, 0x6E, 0xD0, 0x2A ; 012CF2: provisional 68k movea.l -$2fd6(a6), a0
db 0x43, 0xFA, 0xFA, 0xEC ; 012CF6: provisional 68k lea.l $127e4(pc), a1
db 0x45, 0xFA, 0xFB, 0xC6 ; 012CFA: provisional 68k lea.l $128c2(pc), a2
db 0x12, 0x07 ; 012CFE: provisional 68k move.b d7, d1
db 0xE1, 0x49 ; 012D00: provisional 68k lsl.w #$8, d1
db 0x12, 0x1B ; 012D02: provisional 68k move.b (a3)+, d1
db 0xD2, 0x1B ; 012D04: provisional 68k add.b (a3)+, d1
db 0xE2, 0x11 ; 012D06: provisional 68k roxr.b #$1, d1
db 0x14, 0x30, 0x18, 0x00 ; 012D08: provisional 68k move.b (a0, d1.l), d2
db 0xDE, 0x31, 0x20, 0x00 ; 012D0C: provisional 68k add.b (a1, d2.w), d7
db 0x48, 0x47 ; 012D10: provisional 68k swap d7
db 0x12, 0x07 ; 012D12: provisional 68k move.b d7, d1
db 0xE1, 0x49 ; 012D14: provisional 68k lsl.w #$8, d1
db 0x12, 0x1B ; 012D16: provisional 68k move.b (a3)+, d1
db 0xD2, 0x1B ; 012D18: provisional 68k add.b (a3)+, d1
db 0xE2, 0x11 ; 012D1A: provisional 68k roxr.b #$1, d1
db 0x10, 0x30, 0x18, 0x00 ; 012D1C: provisional 68k move.b (a0, d1.l), d0
db 0xDE, 0x31, 0x00, 0x00 ; 012D20: provisional 68k add.b (a1, d0.w), d7
db 0x48, 0x47 ; 012D24: provisional 68k swap d7
db 0x12, 0x05 ; 012D26: provisional 68k move.b d5, d1
db 0xE1, 0x41 ; 012D28: provisional 68k asl.w #$8, d1
db 0x12, 0x1B ; 012D2A: provisional 68k move.b (a3)+, d1
db 0x16, 0x30, 0x18, 0x00 ; 012D2C: provisional 68k move.b (a0, d1.l), d3
db 0xDA, 0x32, 0x30, 0x00 ; 012D30: provisional 68k add.b (a2, d3.w), d5
db 0x12, 0x03 ; 012D34: provisional 68k move.b d3, d1
db 0xE9, 0x41 ; 012D36: provisional 68k asl.w #$4, d1
db 0x82, 0x02 ; 012D38: provisional 68k or.b d2, d1
db 0x18, 0xC1 ; 012D3A: provisional 68k move.b d1, (a4)+
db 0x02, 0x01, 0x00, 0xF0 ; 012D3C: provisional 68k andi.b #$f0, d1
db 0x82, 0x00 ; 012D40: provisional 68k or.b d0, d1
db 0x1A, 0xC1 ; 012D42: provisional 68k move.b d1, (a5)+
db 0x12, 0x07 ; 012D44: provisional 68k move.b d7, d1
db 0xE1, 0x49 ; 012D46: provisional 68k lsl.w #$8, d1
db 0x12, 0x1B ; 012D48: provisional 68k move.b (a3)+, d1
db 0xD2, 0x1B ; 012D4A: provisional 68k add.b (a3)+, d1
db 0xE2, 0x11 ; 012D4C: provisional 68k roxr.b #$1, d1
db 0x14, 0x30, 0x18, 0x00 ; 012D4E: provisional 68k move.b (a0, d1.l), d2
db 0xDE, 0x31, 0x20, 0x00 ; 012D52: provisional 68k add.b (a1, d2.w), d7
db 0x48, 0x47 ; 012D56: provisional 68k swap d7
db 0x12, 0x07 ; 012D58: provisional 68k move.b d7, d1
db 0xE1, 0x49 ; 012D5A: provisional 68k lsl.w #$8, d1
db 0x12, 0x1B ; 012D5C: provisional 68k move.b (a3)+, d1
db 0xD2, 0x1B ; 012D5E: provisional 68k add.b (a3)+, d1
db 0xE2, 0x11 ; 012D60: provisional 68k roxr.b #$1, d1
db 0x10, 0x30, 0x18, 0x00 ; 012D62: provisional 68k move.b (a0, d1.l), d0
db 0xDE, 0x31, 0x00, 0x00 ; 012D66: provisional 68k add.b (a1, d0.w), d7
db 0x48, 0x47 ; 012D6A: provisional 68k swap d7
db 0x12, 0x04 ; 012D6C: provisional 68k move.b d4, d1
db 0xE1, 0x41 ; 012D6E: provisional 68k asl.w #$8, d1
db 0x12, 0x1B ; 012D70: provisional 68k move.b (a3)+, d1
db 0x16, 0x30, 0x18, 0x00 ; 012D72: provisional 68k move.b (a0, d1.l), d3
db 0xD8, 0x32, 0x30, 0x00 ; 012D76: provisional 68k add.b (a2, d3.w), d4
db 0x12, 0x03 ; 012D7A: provisional 68k move.b d3, d1
db 0xE9, 0x41 ; 012D7C: provisional 68k asl.w #$4, d1
db 0x82, 0x02 ; 012D7E: provisional 68k or.b d2, d1
db 0x18, 0xC1 ; 012D80: provisional 68k move.b d1, (a4)+
db 0x02, 0x01, 0x00, 0xF0 ; 012D82: provisional 68k andi.b #$f0, d1
db 0x82, 0x00 ; 012D86: provisional 68k or.b d0, d1
db 0x1A, 0xC1 ; 012D88: provisional 68k move.b d1, (a5)+
db 0x51, 0xCE, 0xFF, 0x72 ; 012D8A: provisional 68k dbra d6, $12cfe
db 0x4E, 0x75 ; 012D8E: provisional 68k rts 
