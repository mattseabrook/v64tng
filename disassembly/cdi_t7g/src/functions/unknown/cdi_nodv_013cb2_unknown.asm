; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013CB2–0142E1, inclusive.
cdi_nodv_entry_013cb2:
db 0xD2, 0x40 ; 013CB2: provisional 68k add.w d0, d1
db 0x53, 0x41 ; 013CB4: provisional 68k subq.w #$1, d1
db 0xD6, 0x42 ; 013CB6: provisional 68k add.w d2, d3
db 0x53, 0x43 ; 013CB8: provisional 68k subq.w #$1, d3
db 0xB4, 0x41 ; 013CBA: provisional 68k cmp.w d1, d2
db 0x6E, 0x1E ; 013CBC: provisional 68k bgt.b $13cdc
db 0xB0, 0x43 ; 013CBE: provisional 68k cmp.w d3, d0
db 0x6E, 0x1A ; 013CC0: provisional 68k bgt.b $13cdc
db 0xB4, 0x40 ; 013CC2: provisional 68k cmp.w d0, d2
db 0x6D, 0x04 ; 013CC4: provisional 68k blt.b $13cca
db 0x30, 0x02 ; 013CC6: provisional 68k move.w d2, d0
db 0x60, 0x02 ; 013CC8: provisional 68k bra.b $13ccc
db 0x34, 0x00 ; 013CCA: provisional 68k move.w d0, d2
db 0xB6, 0x41 ; 013CCC: provisional 68k cmp.w d1, d3
db 0x6E, 0x02 ; 013CCE: provisional 68k bgt.b $13cd2
db 0x32, 0x03 ; 013CD0: provisional 68k move.w d3, d1
db 0x92, 0x40 ; 013CD2: provisional 68k sub.w d0, d1
db 0x52, 0x41 ; 013CD4: provisional 68k addq.w #$1, d1
db 0x02, 0x3C, 0x00, 0x0E ; 013CD6: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 013CDA: provisional 68k rts 
db 0x00, 0x3C, 0x00, 0x01 ; 013CDC: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 013CE0: provisional 68k rts 
db 0x00, 0x00, 0x00, 0x00 ; 013CE2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013CE6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013CEA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013CEE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013CF2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013CF6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013CFA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013CFE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D02: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D06: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D0A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D0E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D12: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D16: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D1A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D1E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D22: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D26: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D2A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D2E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D32: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D36: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D3A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D3E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D42: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D46: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D4A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D4E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D52: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D56: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D5A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D5E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D62: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D66: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D6A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D6E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D72: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D76: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D7A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D7E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D82: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D86: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D8A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D8E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D92: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D96: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D9A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013D9E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DA2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DA6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DAA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DAE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DB2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DB6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DBA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DBE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DC2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DC6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DCA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DCE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DD2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DD6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DDA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DDE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DE2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 013DE6: provisional 68k ori.b #$0, d0
db 0x01, 0x01 ; 013DEA: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 013DEC: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 013DEE: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 013DF0: provisional 68k btst.l d0, d1
db 0x02, 0x02, 0x02, 0x02 ; 013DF2: provisional 68k andi.b #$2, d2
db 0x02, 0x02, 0x02, 0x02 ; 013DF6: provisional 68k andi.b #$2, d2
db 0x03, 0x03 ; 013DFA: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 013DFC: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 013DFE: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 013E00: provisional 68k btst.l d1, d3
db 0x04, 0x04, 0x04, 0x04 ; 013E02: provisional 68k subi.b #$4, d4
db 0x04, 0x04, 0x04, 0x04 ; 013E06: provisional 68k subi.b #$4, d4
db 0x05, 0x05 ; 013E0A: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 013E0C: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 013E0E: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 013E10: provisional 68k btst.l d2, d5
db 0x06, 0x06, 0x06, 0x06 ; 013E12: provisional 68k addi.b #$6, d6
db 0x06, 0x06, 0x06, 0x06 ; 013E16: provisional 68k addi.b #$6, d6
db 0x07, 0x07 ; 013E1A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 013E1C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 013E1E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 013E20: provisional 68k btst.l d3, d7
db 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08 ; file 013E22
db 0x09, 0x09, 0x09, 0x09 ; 013E2A: provisional 68k movep.w $909(a1), d4
db 0x09, 0x09, 0x09, 0x09 ; 013E2E: provisional 68k movep.w $909(a1), d4
db 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A ; file 013E32
db 0x0B, 0x0B, 0x0B, 0x0B ; 013E3A: provisional 68k movep.w $b0b(a3), d5
db 0x0B, 0x0B, 0x0B, 0x0B ; 013E3E: provisional 68k movep.w $b0b(a3), d5
db 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C ; file 013E42
db 0x0D, 0x0D, 0x0D, 0x0D ; 013E4A: provisional 68k movep.w $d0d(a5), d6
db 0x0D, 0x0D, 0x0D, 0x0D ; 013E4E: provisional 68k movep.w $d0d(a5), d6
db 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E ; file 013E52
db 0x0F, 0x0F, 0x0F, 0x0F ; 013E5A: provisional 68k movep.w $f0f(a7), d7
db 0x0F, 0x0F, 0x0F, 0x0F ; 013E5E: provisional 68k movep.w $f0f(a7), d7
db 0x10, 0x10 ; 013E62: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 013E64: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 013E66: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 013E68: provisional 68k move.b (a0), d0
db 0x11, 0x11 ; 013E6A: provisional 68k move.b (a1), -(a0)
db 0x11, 0x11 ; 013E6C: provisional 68k move.b (a1), -(a0)
db 0x11, 0x11 ; 013E6E: provisional 68k move.b (a1), -(a0)
db 0x11, 0x11 ; 013E70: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 013E72: provisional 68k move.b (a2), d1
db 0x12, 0x12 ; 013E74: provisional 68k move.b (a2), d1
db 0x12, 0x12 ; 013E76: provisional 68k move.b (a2), d1
db 0x12, 0x12 ; 013E78: provisional 68k move.b (a2), d1
db 0x13, 0x13 ; 013E7A: provisional 68k move.b (a3), -(a1)
db 0x13, 0x13 ; 013E7C: provisional 68k move.b (a3), -(a1)
db 0x13, 0x13 ; 013E7E: provisional 68k move.b (a3), -(a1)
db 0x13, 0x13 ; 013E80: provisional 68k move.b (a3), -(a1)
db 0x14, 0x14 ; 013E82: provisional 68k move.b (a4), d2
db 0x14, 0x14 ; 013E84: provisional 68k move.b (a4), d2
db 0x14, 0x14 ; 013E86: provisional 68k move.b (a4), d2
db 0x14, 0x14 ; 013E88: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 013E8A: provisional 68k move.b (a5), -(a2)
db 0x15, 0x15 ; 013E8C: provisional 68k move.b (a5), -(a2)
db 0x15, 0x15 ; 013E8E: provisional 68k move.b (a5), -(a2)
db 0x15, 0x15 ; 013E90: provisional 68k move.b (a5), -(a2)
db 0x16, 0x16 ; 013E92: provisional 68k move.b (a6), d3
db 0x16, 0x16 ; 013E94: provisional 68k move.b (a6), d3
db 0x16, 0x16 ; 013E96: provisional 68k move.b (a6), d3
db 0x16, 0x16 ; 013E98: provisional 68k move.b (a6), d3
db 0x17, 0x17 ; 013E9A: provisional 68k move.b (a7), -(a3)
db 0x17, 0x17 ; 013E9C: provisional 68k move.b (a7), -(a3)
db 0x17, 0x17 ; 013E9E: provisional 68k move.b (a7), -(a3)
db 0x17, 0x17 ; 013EA0: provisional 68k move.b (a7), -(a3)
db 0x18, 0x18 ; 013EA2: provisional 68k move.b (a0)+, d4
db 0x18, 0x18 ; 013EA4: provisional 68k move.b (a0)+, d4
db 0x18, 0x18 ; 013EA6: provisional 68k move.b (a0)+, d4
db 0x18, 0x18 ; 013EA8: provisional 68k move.b (a0)+, d4
db 0x19, 0x19 ; 013EAA: provisional 68k move.b (a1)+, -(a4)
db 0x19, 0x19 ; 013EAC: provisional 68k move.b (a1)+, -(a4)
db 0x19, 0x19 ; 013EAE: provisional 68k move.b (a1)+, -(a4)
db 0x19, 0x19 ; 013EB0: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 013EB2: provisional 68k move.b (a2)+, d5
db 0x1A, 0x1A ; 013EB4: provisional 68k move.b (a2)+, d5
db 0x1A, 0x1A ; 013EB6: provisional 68k move.b (a2)+, d5
db 0x1A, 0x1A ; 013EB8: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1B ; 013EBA: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1B ; 013EBC: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1B ; 013EBE: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1B ; 013EC0: provisional 68k move.b (a3)+, -(a5)
db 0x1C, 0x1C ; 013EC2: provisional 68k move.b (a4)+, d6
db 0x1C, 0x1C ; 013EC4: provisional 68k move.b (a4)+, d6
db 0x1C, 0x1C ; 013EC6: provisional 68k move.b (a4)+, d6
db 0x1C, 0x1C ; 013EC8: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1D ; 013ECA: provisional 68k move.b (a5)+, -(a6)
db 0x1D, 0x1D ; 013ECC: provisional 68k move.b (a5)+, -(a6)
db 0x1D, 0x1D ; 013ECE: provisional 68k move.b (a5)+, -(a6)
db 0x1D, 0x1D ; 013ED0: provisional 68k move.b (a5)+, -(a6)
db 0x1E, 0x1E ; 013ED2: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1E ; 013ED4: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1E ; 013ED6: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1E ; 013ED8: provisional 68k move.b (a6)+, d7
db 0x1F, 0x1F ; 013EDA: provisional 68k move.b (a7)+, -(a7)
db 0x1F, 0x1F ; 013EDC: provisional 68k move.b (a7)+, -(a7)
db 0x1F, 0x1F ; 013EDE: provisional 68k move.b (a7)+, -(a7)
db 0x1F, 0x1F ; 013EE0: provisional 68k move.b (a7)+, -(a7)
db 0x00, 0x00, 0x00, 0x00 ; 013EE2: provisional 68k ori.b #$0, d0
db 0x01, 0x01 ; 013EE6: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 013EE8: provisional 68k btst.l d0, d1
db 0x02, 0x02, 0x02, 0x02 ; 013EEA: provisional 68k andi.b #$2, d2
db 0x03, 0x03 ; 013EEE: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 013EF0: provisional 68k btst.l d1, d3
db 0x04, 0x04, 0x04, 0x04 ; 013EF2: provisional 68k subi.b #$4, d4
db 0x05, 0x05 ; 013EF6: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 013EF8: provisional 68k btst.l d2, d5
db 0x06, 0x06, 0x06, 0x06 ; 013EFA: provisional 68k addi.b #$6, d6
db 0x07, 0x07 ; 013EFE: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 013F00: provisional 68k btst.l d3, d7
db 0x08, 0x08, 0x08, 0x08 ; file 013F02
db 0x09, 0x09, 0x09, 0x09 ; 013F06: provisional 68k movep.w $909(a1), d4
db 0x0A, 0x0A, 0x0A, 0x0A ; file 013F0A
db 0x0B, 0x0B, 0x0B, 0x0B ; 013F0E: provisional 68k movep.w $b0b(a3), d5
db 0x0C, 0x0C, 0x0C, 0x0C ; file 013F12
db 0x0D, 0x0D, 0x0D, 0x0D ; 013F16: provisional 68k movep.w $d0d(a5), d6
db 0x0E, 0x0E, 0x0E, 0x0E ; file 013F1A
db 0x0F, 0x0F, 0x0F, 0x0F ; 013F1E: provisional 68k movep.w $f0f(a7), d7
db 0x10, 0x10 ; 013F22: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 013F24: provisional 68k move.b (a0), d0
db 0x11, 0x11 ; 013F26: provisional 68k move.b (a1), -(a0)
db 0x11, 0x11 ; 013F28: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 013F2A: provisional 68k move.b (a2), d1
db 0x12, 0x12 ; 013F2C: provisional 68k move.b (a2), d1
db 0x13, 0x13 ; 013F2E: provisional 68k move.b (a3), -(a1)
db 0x13, 0x13 ; 013F30: provisional 68k move.b (a3), -(a1)
db 0x14, 0x14 ; 013F32: provisional 68k move.b (a4), d2
db 0x14, 0x14 ; 013F34: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 013F36: provisional 68k move.b (a5), -(a2)
db 0x15, 0x15 ; 013F38: provisional 68k move.b (a5), -(a2)
db 0x16, 0x16 ; 013F3A: provisional 68k move.b (a6), d3
db 0x16, 0x16 ; 013F3C: provisional 68k move.b (a6), d3
db 0x17, 0x17 ; 013F3E: provisional 68k move.b (a7), -(a3)
db 0x17, 0x17 ; 013F40: provisional 68k move.b (a7), -(a3)
db 0x18, 0x18 ; 013F42: provisional 68k move.b (a0)+, d4
db 0x18, 0x18 ; 013F44: provisional 68k move.b (a0)+, d4
db 0x19, 0x19 ; 013F46: provisional 68k move.b (a1)+, -(a4)
db 0x19, 0x19 ; 013F48: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 013F4A: provisional 68k move.b (a2)+, d5
db 0x1A, 0x1A ; 013F4C: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1B ; 013F4E: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1B ; 013F50: provisional 68k move.b (a3)+, -(a5)
db 0x1C, 0x1C ; 013F52: provisional 68k move.b (a4)+, d6
db 0x1C, 0x1C ; 013F54: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1D ; 013F56: provisional 68k move.b (a5)+, -(a6)
db 0x1D, 0x1D ; 013F58: provisional 68k move.b (a5)+, -(a6)
db 0x1E, 0x1E ; 013F5A: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1E ; 013F5C: provisional 68k move.b (a6)+, d7
db 0x1F, 0x1F ; 013F5E: provisional 68k move.b (a7)+, -(a7)
db 0x1F, 0x1F ; 013F60: provisional 68k move.b (a7)+, -(a7)
db 0x20, 0x20 ; 013F62: provisional 68k move.l -(a0), d0
db 0x20, 0x20 ; 013F64: provisional 68k move.l -(a0), d0
db 0x21, 0x21 ; 013F66: provisional 68k move.l -(a1), -(a0)
db 0x21, 0x21 ; 013F68: provisional 68k move.l -(a1), -(a0)
db 0x22, 0x22 ; 013F6A: provisional 68k move.l -(a2), d1
db 0x22, 0x22 ; 013F6C: provisional 68k move.l -(a2), d1
db 0x23, 0x23 ; 013F6E: provisional 68k move.l -(a3), -(a1)
db 0x23, 0x23 ; 013F70: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x24 ; 013F72: provisional 68k move.l -(a4), d2
db 0x24, 0x24 ; 013F74: provisional 68k move.l -(a4), d2
db 0x25, 0x25 ; 013F76: provisional 68k move.l -(a5), -(a2)
db 0x25, 0x25 ; 013F78: provisional 68k move.l -(a5), -(a2)
db 0x26, 0x26 ; 013F7A: provisional 68k move.l -(a6), d3
db 0x26, 0x26 ; 013F7C: provisional 68k move.l -(a6), d3
db 0x27, 0x27 ; 013F7E: provisional 68k move.l -(a7), -(a3)
db 0x27, 0x27 ; 013F80: provisional 68k move.l -(a7), -(a3)
db 0x28, 0x28, 0x28, 0x28 ; 013F82: provisional 68k move.l $2828(a0), d4
db 0x29, 0x29, 0x29, 0x29 ; 013F86: provisional 68k move.l $2929(a1), -(a4)
db 0x2A, 0x2A, 0x2A, 0x2A ; 013F8A: provisional 68k move.l $2a2a(a2), d5
db 0x2B, 0x2B, 0x2B, 0x2B ; 013F8E: provisional 68k move.l $2b2b(a3), -(a5)
db 0x2C, 0x2C, 0x2C, 0x2C ; 013F92: provisional 68k move.l $2c2c(a4), d6
db 0x2D, 0x2D, 0x2D, 0x2D ; 013F96: provisional 68k move.l $2d2d(a5), -(a6)
db 0x2E, 0x2E, 0x2E, 0x2E ; 013F9A: provisional 68k move.l $2e2e(a6), d7
db 0x2F, 0x2F, 0x2F, 0x2F ; 013F9E: provisional 68k move.l $2f2f(a7), -(a7)
db 0x30, 0x30, 0x30, 0x30 ; 013FA2: provisional 68k move.w $30(a0, d3.w), d0
db 0x31, 0x31, 0x31, 0x31, 0x32, 0x32, 0x32, 0x32 ; 013FA6: provisional 68k move.w ([$32323232, a1, d3.w]), -(a0)
db 0x33, 0x33, 0x33, 0x33, 0x34, 0x34, 0x34, 0x34, 0x35, 0x35, 0x35, 0x35 ; 013FAE: provisional 68k move.w ([$34343434, a3, d3.w * 2], $35353535), -(a1)
db 0x36, 0x36, 0x36, 0x36 ; 013FBA: provisional 68k move.w $36(a6, d3.w), d3
db 0x37, 0x37, 0x37, 0x37, 0x38, 0x38, 0x38, 0x38, 0x39, 0x39, 0x39, 0x39 ; 013FBE: provisional 68k move.w ([$38383838, a7], d3.w * 8, $39393939), -(a3)
db 0x3A, 0x3A, 0x3A, 0x3A ; 013FCA: provisional 68k move.w $17a06(pc), d5
db 0x3B, 0x3B, 0x3B, 0x3B, 0x3C, 0x3C, 0x3C, 0x3C, 0x3D, 0x3D, 0x3D, 0x3D ; 013FCE: provisional 68k move.w ([$3c3d7c0c, pc, d3.l * 2], $3d3d3d3d), -(a5)
db 0x3E, 0x3E, 0x3E, 0x3E, 0x3F, 0x3F, 0x3F, 0x3F ; file 013FDA
db 0x00, 0x00, 0x00, 0x01 ; 013FE2: provisional 68k ori.b #$1, d0
db 0x01, 0x01 ; 013FE6: provisional 68k btst.l d0, d1
db 0x02, 0x02, 0x03, 0x03 ; 013FE8: provisional 68k andi.b #$3, d2
db 0x03, 0x04 ; 013FEC: provisional 68k btst.l d1, d4
db 0x04, 0x04, 0x05, 0x05 ; 013FEE: provisional 68k subi.b #$5, d4
db 0x06, 0x06, 0x06, 0x07 ; 013FF2: provisional 68k addi.b #$7, d6
db 0x07, 0x07 ; 013FF6: provisional 68k btst.l d3, d7
db 0x08, 0x08 ; file 013FF8
db 0x09, 0x09, 0x09, 0x0A ; 013FFA: provisional 68k movep.w $90a(a1), d4
db 0x0A, 0x0A ; file 013FFE
db 0x0B, 0x0B, 0x0C, 0x0C ; 014000: provisional 68k movep.w $c0c(a3), d5
db 0x0C, 0x0D ; file 014004
db 0x0D, 0x0D, 0x0E, 0x0E ; 014006: provisional 68k movep.w $e0e(a5), d6
db 0x0F, 0x0F, 0x0F, 0x10 ; 01400A: provisional 68k movep.w $f10(a7), d7
db 0x10, 0x10 ; 01400E: provisional 68k move.b (a0), d0
db 0x11, 0x11 ; 014010: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 014012: provisional 68k move.b (a2), d1
db 0x12, 0x13 ; 014014: provisional 68k move.b (a3), d1
db 0x13, 0x13 ; 014016: provisional 68k move.b (a3), -(a1)
db 0x14, 0x14 ; 014018: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 01401A: provisional 68k move.b (a5), -(a2)
db 0x15, 0x16 ; 01401C: provisional 68k move.b (a6), -(a2)
db 0x16, 0x16 ; 01401E: provisional 68k move.b (a6), d3
db 0x17, 0x17 ; 014020: provisional 68k move.b (a7), -(a3)
db 0x18, 0x18 ; 014022: provisional 68k move.b (a0)+, d4
db 0x18, 0x19 ; 014024: provisional 68k move.b (a1)+, d4
db 0x19, 0x19 ; 014026: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 014028: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1B ; 01402A: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1C ; 01402C: provisional 68k move.b (a4)+, -(a5)
db 0x1C, 0x1C ; 01402E: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1D ; 014030: provisional 68k move.b (a5)+, -(a6)
db 0x1E, 0x1E ; 014032: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1F ; 014034: provisional 68k move.b (a7)+, d7
db 0x1F, 0x1F ; 014036: provisional 68k move.b (a7)+, -(a7)
db 0x20, 0x20 ; 014038: provisional 68k move.l -(a0), d0
db 0x21, 0x21 ; 01403A: provisional 68k move.l -(a1), -(a0)
db 0x21, 0x22 ; 01403C: provisional 68k move.l -(a2), -(a0)
db 0x22, 0x22 ; 01403E: provisional 68k move.l -(a2), d1
db 0x23, 0x23 ; 014040: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x24 ; 014042: provisional 68k move.l -(a4), d2
db 0x24, 0x25 ; 014044: provisional 68k move.l -(a5), d2
db 0x25, 0x25 ; 014046: provisional 68k move.l -(a5), -(a2)
db 0x26, 0x26 ; 014048: provisional 68k move.l -(a6), d3
db 0x27, 0x27 ; 01404A: provisional 68k move.l -(a7), -(a3)
db 0x27, 0x28, 0x28, 0x28 ; 01404C: provisional 68k move.l $2828(a0), -(a3)
db 0x29, 0x29, 0x2A, 0x2A ; 014050: provisional 68k move.l $2a2a(a1), -(a4)
db 0x2A, 0x2B, 0x2B, 0x2B ; 014054: provisional 68k move.l $2b2b(a3), d5
db 0x2C, 0x2C, 0x2D, 0x2D ; 014058: provisional 68k move.l $2d2d(a4), d6
db 0x2D, 0x2E, 0x2E, 0x2E ; 01405C: provisional 68k move.l $2e2e(a6), -(a6)
db 0x2F, 0x2F, 0x30, 0x30 ; 014060: provisional 68k move.l $3030(a7), -(a7)
db 0x30, 0x31, 0x31, 0x31, 0x32, 0x32, 0x33, 0x33 ; 014064: provisional 68k move.w ([$32323333, a1, d3.w]), d0
db 0x33, 0x34, 0x34, 0x34 ; 01406C: provisional 68k move.w $34(a4, d3.w), -(a1)
db 0x35, 0x35, 0x36, 0x36 ; 014070: provisional 68k move.w $36(a5, d3.w), -(a2)
db 0x36, 0x37, 0x37, 0x37, 0x38, 0x38, 0x39, 0x39, 0x39, 0x3A, 0x3A, 0x3A ; 014074: provisional 68k move.w ([$38383939, a7], d3.w * 8, $393a3a3a), d3
db 0x3B, 0x3B, 0x3C, 0x3C ; 014080: provisional 68k move.w $140be(pc, d3.l), -(a5)
db 0x3C, 0x3D, 0x3D, 0x3D, 0x3E, 0x3E, 0x3F, 0x3F ; file 014084
db 0x3F, 0x40, 0x40, 0x40 ; 01408C: provisional 68k move.w d0, $4040(a7)
db 0x41, 0x41 ; file 014090
db 0x42, 0x42 ; 014092: provisional 68k clr.w d2
db 0x42, 0x43 ; 014094: provisional 68k clr.w d3
db 0x43, 0x43 ; file 014096
db 0x44, 0x44 ; 014098: provisional 68k neg.w d4
db 0x45, 0x45, 0x45, 0x46 ; file 01409A
db 0x46, 0x46 ; 01409E: provisional 68k not.w d6
db 0x47, 0x47 ; file 0140A0
db 0x48, 0x48 ; 0140A2: provisional 68k dc.w $4848
db 0x48, 0x49 ; 0140A4: provisional 68k dc.w $4849
db 0x49, 0x49 ; file 0140A6
db 0x4A, 0x4A ; 0140A8: provisional 68k dc.w $4a4a
db 0x4B, 0x4B, 0x4B, 0x4C, 0x4C, 0x4C, 0x4D, 0x4D ; file 0140AA
db 0x4E, 0x4E ; 0140B2: provisional 68k trap #$e
db 0x4E, 0x4F ; 0140B4: provisional 68k trap #$f
db 0x4F, 0x4F ; file 0140B6
db 0x50, 0x50 ; 0140B8: provisional 68k addq.w #$8, (a0)
db 0x51, 0x51 ; 0140BA: provisional 68k subq.w #$8, (a1)
db 0x51, 0x52 ; 0140BC: provisional 68k subq.w #$8, (a2)
db 0x52, 0x52 ; 0140BE: provisional 68k addq.w #$1, (a2)
db 0x53, 0x53 ; 0140C0: provisional 68k subq.w #$1, (a3)
db 0x54, 0x54 ; 0140C2: provisional 68k addq.w #$2, (a4)
db 0x54, 0x55 ; 0140C4: provisional 68k addq.w #$2, (a5)
db 0x55, 0x55 ; 0140C6: provisional 68k subq.w #$2, (a5)
db 0x56, 0x56 ; 0140C8: provisional 68k addq.w #$3, (a6)
db 0x57, 0x57 ; 0140CA: provisional 68k subq.w #$3, (a7)
db 0x57, 0x58 ; 0140CC: provisional 68k subq.w #$3, (a0)+
db 0x58, 0x58 ; 0140CE: provisional 68k addq.w #$4, (a0)+
db 0x59, 0x59 ; 0140D0: provisional 68k subq.w #$4, (a1)+
db 0x5A, 0x5A ; 0140D2: provisional 68k addq.w #$5, (a2)+
db 0x5A, 0x5B ; 0140D4: provisional 68k addq.w #$5, (a3)+
db 0x5B, 0x5B ; 0140D6: provisional 68k subq.w #$5, (a3)+
db 0x5C, 0x5C ; 0140D8: provisional 68k addq.w #$6, (a4)+
db 0x5D, 0x5D ; 0140DA: provisional 68k subq.w #$6, (a5)+
db 0x5D, 0x5E ; 0140DC: provisional 68k subq.w #$6, (a6)+
db 0x5E, 0x5E ; 0140DE: provisional 68k addq.w #$7, (a6)+
db 0x5F, 0x5F ; 0140E0: provisional 68k subq.w #$7, (a7)+
db 0x00, 0x00, 0x01, 0x01 ; 0140E2: provisional 68k ori.b #$1, d0
db 0x02, 0x02, 0x03, 0x03 ; 0140E6: provisional 68k andi.b #$3, d2
db 0x04, 0x04, 0x05, 0x05 ; 0140EA: provisional 68k subi.b #$5, d4
db 0x06, 0x06, 0x07, 0x07 ; 0140EE: provisional 68k addi.b #$7, d6
db 0x08, 0x08 ; file 0140F2
db 0x09, 0x09, 0x0A, 0x0A ; 0140F4: provisional 68k movep.w $a0a(a1), d4
db 0x0B, 0x0B, 0x0C, 0x0C ; 0140F8: provisional 68k movep.w $c0c(a3), d5
db 0x0D, 0x0D, 0x0E, 0x0E ; 0140FC: provisional 68k movep.w $e0e(a5), d6
db 0x0F, 0x0F, 0x10, 0x10 ; 014100: provisional 68k movep.w $1010(a7), d7
db 0x11, 0x11 ; 014104: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 014106: provisional 68k move.b (a2), d1
db 0x13, 0x13 ; 014108: provisional 68k move.b (a3), -(a1)
db 0x14, 0x14 ; 01410A: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 01410C: provisional 68k move.b (a5), -(a2)
db 0x16, 0x16 ; 01410E: provisional 68k move.b (a6), d3
db 0x17, 0x17 ; 014110: provisional 68k move.b (a7), -(a3)
db 0x18, 0x18 ; 014112: provisional 68k move.b (a0)+, d4
db 0x19, 0x19 ; 014114: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 014116: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1B ; 014118: provisional 68k move.b (a3)+, -(a5)
db 0x1C, 0x1C ; 01411A: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1D ; 01411C: provisional 68k move.b (a5)+, -(a6)
db 0x1E, 0x1E ; 01411E: provisional 68k move.b (a6)+, d7
db 0x1F, 0x1F ; 014120: provisional 68k move.b (a7)+, -(a7)
db 0x20, 0x20 ; 014122: provisional 68k move.l -(a0), d0
db 0x21, 0x21 ; 014124: provisional 68k move.l -(a1), -(a0)
db 0x22, 0x22 ; 014126: provisional 68k move.l -(a2), d1
db 0x23, 0x23 ; 014128: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x24 ; 01412A: provisional 68k move.l -(a4), d2
db 0x25, 0x25 ; 01412C: provisional 68k move.l -(a5), -(a2)
db 0x26, 0x26 ; 01412E: provisional 68k move.l -(a6), d3
db 0x27, 0x27 ; 014130: provisional 68k move.l -(a7), -(a3)
db 0x28, 0x28, 0x29, 0x29 ; 014132: provisional 68k move.l $2929(a0), d4
db 0x2A, 0x2A, 0x2B, 0x2B ; 014136: provisional 68k move.l $2b2b(a2), d5
db 0x2C, 0x2C, 0x2D, 0x2D ; 01413A: provisional 68k move.l $2d2d(a4), d6
db 0x2E, 0x2E, 0x2F, 0x2F ; 01413E: provisional 68k move.l $2f2f(a6), d7
db 0x30, 0x30, 0x31, 0x31, 0x32, 0x32, 0x33, 0x33 ; 014142: provisional 68k move.w ([$32323333, a0, d3.w]), d0
db 0x34, 0x34, 0x35, 0x35, 0x36, 0x36, 0x37, 0x37 ; 01414A: provisional 68k move.w ([$36363737, a4], d3.w * 4), d2
db 0x38, 0x38, 0x39, 0x39 ; 014152: provisional 68k move.w $3939.w, d4
db 0x3A, 0x3A, 0x3B, 0x3B ; 014156: provisional 68k move.w $17c93(pc), d5
db 0x3C, 0x3C, 0x3D, 0x3D ; 01415A: provisional 68k move.w #$3d3d, d6
db 0x3E, 0x3E, 0x3F, 0x3F ; file 01415E
db 0x40, 0x40 ; 014162: provisional 68k negx.w d0
db 0x41, 0x41 ; file 014164
db 0x42, 0x42 ; 014166: provisional 68k clr.w d2
db 0x43, 0x43 ; file 014168
db 0x44, 0x44 ; 01416A: provisional 68k neg.w d4
db 0x45, 0x45 ; file 01416C
db 0x46, 0x46 ; 01416E: provisional 68k not.w d6
db 0x47, 0x47 ; file 014170
db 0x48, 0x48 ; 014172: provisional 68k dc.w $4848
db 0x49, 0x49 ; file 014174
db 0x4A, 0x4A ; 014176: provisional 68k dc.w $4a4a
db 0x4B, 0x4B, 0x4C, 0x4C, 0x4D, 0x4D ; file 014178
db 0x4E, 0x4E ; 01417E: provisional 68k trap #$e
db 0x4F, 0x4F ; file 014180
db 0x50, 0x50 ; 014182: provisional 68k addq.w #$8, (a0)
db 0x51, 0x51 ; 014184: provisional 68k subq.w #$8, (a1)
db 0x52, 0x52 ; 014186: provisional 68k addq.w #$1, (a2)
db 0x53, 0x53 ; 014188: provisional 68k subq.w #$1, (a3)
db 0x54, 0x54 ; 01418A: provisional 68k addq.w #$2, (a4)
db 0x55, 0x55 ; 01418C: provisional 68k subq.w #$2, (a5)
db 0x56, 0x56 ; 01418E: provisional 68k addq.w #$3, (a6)
db 0x57, 0x57 ; 014190: provisional 68k subq.w #$3, (a7)
db 0x58, 0x58 ; 014192: provisional 68k addq.w #$4, (a0)+
db 0x59, 0x59 ; 014194: provisional 68k subq.w #$4, (a1)+
db 0x5A, 0x5A ; 014196: provisional 68k addq.w #$5, (a2)+
db 0x5B, 0x5B ; 014198: provisional 68k subq.w #$5, (a3)+
db 0x5C, 0x5C ; 01419A: provisional 68k addq.w #$6, (a4)+
db 0x5D, 0x5D ; 01419C: provisional 68k subq.w #$6, (a5)+
db 0x5E, 0x5E ; 01419E: provisional 68k addq.w #$7, (a6)+
db 0x5F, 0x5F ; 0141A0: provisional 68k subq.w #$7, (a7)+
db 0x60, 0x60 ; 0141A2: provisional 68k bra.b $14204
db 0x61, 0x61 ; 0141A4: provisional 68k bsr.b $14207
db 0x62, 0x62 ; 0141A6: provisional 68k bhi.b $1420a
db 0x63, 0x63 ; 0141A8: provisional 68k bls.b $1420d
db 0x64, 0x64 ; 0141AA: provisional 68k bcc.b $14210
db 0x65, 0x65 ; 0141AC: provisional 68k bcs.b $14213
db 0x66, 0x66 ; 0141AE: provisional 68k bne.b $14216
db 0x67, 0x67 ; 0141B0: provisional 68k beq.b $14219
db 0x68, 0x68 ; 0141B2: provisional 68k bvc.b $1421c
db 0x69, 0x69 ; 0141B4: provisional 68k bvs.b $1421f
db 0x6A, 0x6A ; 0141B6: provisional 68k bpl.b $14222
db 0x6B, 0x6B ; 0141B8: provisional 68k bmi.b $14225
db 0x6C, 0x6C ; 0141BA: provisional 68k bge.b $14228
db 0x6D, 0x6D ; 0141BC: provisional 68k blt.b $1422b
db 0x6E, 0x6E ; 0141BE: provisional 68k bgt.b $1422e
db 0x6F, 0x6F ; 0141C0: provisional 68k ble.b $14231
db 0x70, 0x70 ; 0141C2: provisional 68k moveq #$70, d0
db 0x71, 0x71 ; file 0141C4
db 0x72, 0x72 ; 0141C6: provisional 68k moveq #$72, d1
db 0x73, 0x73 ; file 0141C8
db 0x74, 0x74 ; 0141CA: provisional 68k moveq #$74, d2
db 0x75, 0x75 ; file 0141CC
db 0x76, 0x76 ; 0141CE: provisional 68k moveq #$76, d3
db 0x77, 0x77 ; file 0141D0
db 0x78, 0x78 ; 0141D2: provisional 68k moveq #$78, d4
db 0x79, 0x79 ; file 0141D4
db 0x7A, 0x7A ; 0141D6: provisional 68k moveq #$7a, d5
db 0x7B, 0x7B ; file 0141D8
db 0x7C, 0x7C ; 0141DA: provisional 68k moveq #$7c, d6
db 0x7D, 0x7D ; file 0141DC
db 0x7E, 0x7E ; 0141DE: provisional 68k moveq #$7e, d7
db 0x7F, 0x7F ; file 0141E0
db 0x00, 0x00, 0x01, 0x01 ; 0141E2: provisional 68k ori.b #$1, d0
db 0x02, 0x03, 0x03, 0x04 ; 0141E6: provisional 68k andi.b #$4, d3
db 0x05, 0x05 ; 0141EA: provisional 68k btst.l d2, d5
db 0x06, 0x06, 0x07, 0x08 ; 0141EC: provisional 68k addi.b #$8, d6
db 0x08, 0x09, 0x0A, 0x0A ; file 0141F0
db 0x0B, 0x0B, 0x0C, 0x0D ; 0141F4: provisional 68k movep.w $c0d(a3), d5
db 0x0D, 0x0E, 0x0F, 0x0F ; 0141F8: provisional 68k movep.w $f0f(a6), d6
db 0x10, 0x10 ; 0141FC: provisional 68k move.b (a0), d0
db 0x11, 0x12 ; 0141FE: provisional 68k move.b (a2), -(a0)
db 0x12, 0x13 ; 014200: provisional 68k move.b (a3), d1
db 0x14, 0x14 ; 014202: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 014204: provisional 68k move.b (a5), -(a2)
db 0x16, 0x17 ; 014206: provisional 68k move.b (a7), d3
db 0x17, 0x18 ; 014208: provisional 68k move.b (a0)+, -(a3)
db 0x19, 0x19 ; 01420A: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 01420C: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1C ; 01420E: provisional 68k move.b (a4)+, -(a5)
db 0x1C, 0x1D ; 014210: provisional 68k move.b (a5)+, d6
db 0x1E, 0x1E ; 014212: provisional 68k move.b (a6)+, d7
db 0x1F, 0x1F ; 014214: provisional 68k move.b (a7)+, -(a7)
db 0x20, 0x21 ; 014216: provisional 68k move.l -(a1), d0
db 0x21, 0x22 ; 014218: provisional 68k move.l -(a2), -(a0)
db 0x23, 0x23 ; 01421A: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x24 ; 01421C: provisional 68k move.l -(a4), d2
db 0x25, 0x26 ; 01421E: provisional 68k move.l -(a6), -(a2)
db 0x26, 0x27 ; 014220: provisional 68k move.l -(a7), d3
db 0x28, 0x28, 0x29, 0x29 ; 014222: provisional 68k move.l $2929(a0), d4
db 0x2A, 0x2B, 0x2B, 0x2C ; 014226: provisional 68k move.l $2b2c(a3), d5
db 0x2D, 0x2D, 0x2E, 0x2E ; 01422A: provisional 68k move.l $2e2e(a5), -(a6)
db 0x2F, 0x30, 0x30, 0x31 ; 01422E: provisional 68k move.l $31(a0, d3.w), -(a7)
db 0x32, 0x32, 0x33, 0x33, 0x34, 0x35, 0x35, 0x36, 0x37, 0x37, 0x38, 0x38 ; 014232: provisional 68k move.w ([$34353536, a2, d3.w * 2], $37373838), d1
db 0x39, 0x3A, 0x3A, 0x3B ; 01423E: provisional 68k move.w $17c7b(pc), -(a4)
db 0x3C, 0x3C, 0x3D, 0x3D ; 014242: provisional 68k move.w #$3d3d, d6
db 0x3E, 0x3F ; file 014246
db 0x3F, 0x40, 0x41, 0x41 ; 014248: provisional 68k move.w d0, $4141(a7)
db 0x42, 0x42 ; 01424C: provisional 68k clr.w d2
db 0x43, 0x44 ; file 01424E
db 0x44, 0x45 ; 014250: provisional 68k neg.w d5
db 0x46, 0x46 ; 014252: provisional 68k not.w d6
db 0x47, 0x47 ; file 014254
db 0x48, 0x49 ; 014256: provisional 68k dc.w $4849
db 0x49, 0x4A, 0x4B, 0x4B, 0x4C, 0x4C, 0x4D, 0x4E ; file 014258
db 0x4E, 0x4F ; 014260: provisional 68k trap #$f
db 0x50, 0x50 ; 014262: provisional 68k addq.w #$8, (a0)
db 0x51, 0x51 ; 014264: provisional 68k subq.w #$8, (a1)
db 0x52, 0x53 ; 014266: provisional 68k addq.w #$1, (a3)
db 0x53, 0x54 ; 014268: provisional 68k subq.w #$1, (a4)
db 0x55, 0x55 ; 01426A: provisional 68k subq.w #$2, (a5)
db 0x56, 0x56 ; 01426C: provisional 68k addq.w #$3, (a6)
db 0x57, 0x58 ; 01426E: provisional 68k subq.w #$3, (a0)+
db 0x58, 0x59 ; 014270: provisional 68k addq.w #$4, (a1)+
db 0x5A, 0x5A ; 014272: provisional 68k addq.w #$5, (a2)+
db 0x5B, 0x5B ; 014274: provisional 68k subq.w #$5, (a3)+
db 0x5C, 0x5D ; 014276: provisional 68k addq.w #$6, (a5)+
db 0x5D, 0x5E ; 014278: provisional 68k subq.w #$6, (a6)+
db 0x5F, 0x5F ; 01427A: provisional 68k subq.w #$7, (a7)+
db 0x60, 0x60 ; 01427C: provisional 68k bra.b $142de
db 0x61, 0x62 ; 01427E: provisional 68k bsr.b $142e2
db 0x62, 0x63 ; 014280: provisional 68k bhi.b $142e5
db 0x64, 0x64 ; 014282: provisional 68k bcc.b $142e8
db 0x65, 0x65 ; 014284: provisional 68k bcs.b $142eb
db 0x66, 0x67 ; 014286: provisional 68k bne.b $142ef
db 0x67, 0x68 ; 014288: provisional 68k beq.b $142f2
db 0x69, 0x69 ; 01428A: provisional 68k bvs.b $142f5
db 0x6A, 0x6A ; 01428C: provisional 68k bpl.b $142f8
db 0x6B, 0x6C ; 01428E: provisional 68k bmi.b $142fc
db 0x6C, 0x6D ; 014290: provisional 68k bge.b $142ff
db 0x6E, 0x6E ; 014292: provisional 68k bgt.b $14302
db 0x6F, 0x6F ; 014294: provisional 68k ble.b $14305
db 0x70, 0x71 ; 014296: provisional 68k moveq #$71, d0
db 0x71, 0x72, 0x73, 0x73 ; file 014298
db 0x74, 0x74 ; 01429C: provisional 68k moveq #$74, d2
db 0x75, 0x76 ; file 01429E
db 0x76, 0x77 ; 0142A0: provisional 68k moveq #$77, d3
db 0x78, 0x78 ; 0142A2: provisional 68k moveq #$78, d4
db 0x79, 0x79 ; file 0142A4
db 0x7A, 0x7B ; 0142A6: provisional 68k moveq #$7b, d5
db 0x7B, 0x7C, 0x7D, 0x7D ; file 0142A8
db 0x7E, 0x7E ; 0142AC: provisional 68k moveq #$7e, d7
db 0x7F, 0x80 ; file 0142AE
db 0x80, 0x81 ; 0142B0: provisional 68k or.l d1, d0
db 0x82, 0x82 ; 0142B2: provisional 68k or.l d2, d1
db 0x83, 0x83 ; 0142B4: provisional 68k dc.w $8383
db 0x84, 0x85 ; 0142B6: provisional 68k or.l d5, d2
db 0x85, 0x86 ; 0142B8: provisional 68k dc.w $8586
db 0x87, 0x87 ; 0142BA: provisional 68k dc.w $8787
db 0x88, 0x88 ; file 0142BC
db 0x89, 0x8A ; 0142BE: provisional 68k dc.w $898a
db 0x8A, 0x8B, 0x8C, 0x8C ; file 0142C0
db 0x8D, 0x8D ; 0142C4: provisional 68k dc.w $8d8d
db 0x8E, 0x8F ; file 0142C6
db 0x8F, 0x90 ; 0142C8: provisional 68k or.l d7, (a0)
db 0x91, 0x91 ; 0142CA: provisional 68k sub.l d0, (a1)
db 0x92, 0x92 ; 0142CC: provisional 68k sub.l (a2), d1
db 0x93, 0x94 ; 0142CE: provisional 68k sub.l d1, (a4)
db 0x94, 0x95 ; 0142D0: provisional 68k sub.l (a5), d2
db 0x96, 0x96 ; 0142D2: provisional 68k sub.l (a6), d3
db 0x97, 0x97 ; 0142D4: provisional 68k sub.l d3, (a7)
db 0x98, 0x99 ; 0142D6: provisional 68k sub.l (a1)+, d4
db 0x99, 0x9A ; 0142D8: provisional 68k sub.l d4, (a2)+
db 0x9B, 0x9B ; 0142DA: provisional 68k sub.l d5, (a3)+
db 0x9C, 0x9C ; 0142DC: provisional 68k sub.l (a4)+, d6
db 0x9D, 0x9E ; 0142DE: provisional 68k sub.l d6, (a6)+
db 0x9E, 0x9F ; 0142E0: provisional 68k sub.l (a7)+, d7
