; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 009BD8–009FF5, inclusive.
cdi_t7g_entry_009bd8:
db 0x01, 0x19 ; 009BD8: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009BDA: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009BDC
db 0x01, 0x0D, 0x01, 0x14 ; 009BDE: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009BE2: provisional 68k ori.b #$0, d0
db 0x01, 0x08, 0x01, 0x14 ; 009BE6: provisional 68k movep.w $114(a0), d0
db 0x00, 0xFF ; file 009BEA
db 0x01, 0x00 ; 009BEC: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009BEE: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 009BF2: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 009BF6: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009BF8: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009BFC: provisional 68k btst.l d0, (a4)
db 0x62, 0x30 ; 009BFE: provisional 68k bhi.b $9c30
db 0x01, 0x0E, 0x01, 0x14 ; 009C00: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 009C04: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 009C0A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C0C: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 009C10: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009C12: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009C14
db 0x01, 0x0D, 0x01, 0x14 ; 009C16: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009C1A: provisional 68k ori.b #$0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 009C1E: provisional 68k movep.w $114(a6), d0
db 0x01, 0x00 ; 009C22: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009C24: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009C26: provisional 68k ori.b #$4, d0
db 0x1B, 0x74, 0x00, 0x11, 0x01, 0x14 ; 009C2A: provisional 68k move.b $11(a4, d0.w), $114(a5)
db 0x00, 0x1B, 0x01, 0x0D ; 009C30: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 009C34: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009C36: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009C3A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009C3C: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009C40: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 009C44: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 009C48: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009C4A: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009C4C
db 0x01, 0x0D, 0x01, 0x14 ; 009C4E: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009C52: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 009C56: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009C58: provisional 68k ori.b #$f, d0
db 0x1B, 0xBC, 0x01, 0x18, 0x01, 0x14 ; 009C5C: provisional 68k move.b #$18, (a5, d0.w)
db 0x00, 0x01, 0x01, 0x00 ; 009C62: provisional 68k ori.b #$0, d1
db 0x01, 0x07 ; 009C66: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 009C68: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009C6A
db 0x01, 0x00 ; 009C6C: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009C6E: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 009C72: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 009C76: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C78: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009C7C: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 009C7E: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x13 ; 009C82: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009C84: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 009C86: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x18 ; 009C88: provisional 68k movep.w $118(a7), d0
db 0x01, 0x14 ; 009C8C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C8E: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 009C92: provisional 68k btst.l d0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 009C94: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x00 ; 009C98: provisional 68k ori.b #$0, (a0, d0.w)
db 0x00, 0x04, 0x1B, 0xFC ; 009C9E: provisional 68k ori.b #$fc, d4
db 0x00, 0x11, 0x01, 0x14 ; 009CA2: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 009CA6: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 009CAA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009CAC: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009CB0: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 009CB2: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x14 ; 009CB6: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 009CB8: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x13 ; 009CBA: provisional 68k movep.w $113(a7), d0
db 0x01, 0x18 ; 009CBE: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009CC0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009CC2: provisional 68k ori.b #$0, d1
db 0x01, 0x10 ; 009CC6: provisional 68k btst.l d0, (a0)
db 0x01, 0x14 ; 009CC8: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009CCA
db 0x01, 0x01 ; 009CCC: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x18 ; 009CCE: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009CD2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009CD4: provisional 68k ori.b #$0, d1
db 0x01, 0x11 ; 009CD8: provisional 68k btst.l d0, (a1)
db 0x01, 0x14 ; 009CDA: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009CDC
db 0x01, 0x00 ; 009CDE: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 009CE0: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 009CE4: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 009CE6
db 0x01, 0x00 ; 009CE8: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 009CEA: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009CEC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009CEE: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009CF2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009CF4: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009CF8: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009CFA: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009CFE: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009D00: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 009D04: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009D06: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x52 ; 009D0A: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 009D0E: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 009D10: provisional 68k btst.l d0, (a4)
db 0x1C, 0xB0, 0x01, 0x00 ; 009D12: provisional 68k move.b (a0, d0.w), (a6)
db 0x01, 0x00 ; 009D16: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 009D18: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 009D1A: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 009D1C: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 009D20: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009D22: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 009D26: provisional 68k move.b $f(a4), (a6)
db 0x1C, 0xAC, 0x01, 0x18 ; 009D2A: provisional 68k move.b $118(a4), (a6)
db 0x01, 0x14 ; 009D2E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009D30: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009D34: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009D36: provisional 68k btst.l d0, (a4)
db 0x00, 0x66, 0x01, 0x00 ; 009D38: provisional 68k ori.w #$100, -(a6)
db 0x00, 0x0F ; file 009D3C
db 0x1C, 0x92 ; 009D3E: provisional 68k move.b (a2), (a6)
db 0x01, 0x18 ; 009D40: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009D42: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009D44: provisional 68k ori.b #$0, d3
db 0x01, 0x05 ; 009D48: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009D4A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009D4C: provisional 68k ori.b #$0, d1
db 0x00, 0x07, 0x01, 0x14 ; 009D50: provisional 68k ori.b #$14, d7
db 0x00, 0x05, 0x01, 0x00 ; 009D54: provisional 68k ori.b #$0, d5
db 0x01, 0x14 ; 009D58: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009D5A: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x07 ; 009D5E: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009D62: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 009D64: provisional 68k ori.b #$0, d4
db 0x01, 0x18 ; 009D68: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009D6A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009D6C: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009D70: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009D72: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x15 ; 009D76: provisional 68k move.b $15(a4), (a6)
db 0x01, 0x18 ; 009D7A: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009D7C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009D7E: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009D82: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009D84: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 009D86: provisional 68k ori.b #$0, (a4)
db 0x01, 0x14 ; 009D8A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009D8C: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009D90: provisional 68k ori.b #$4, d0
db 0x10, 0x4A ; file 009D94
db 0x72, 0x74 ; 009D96: provisional 68k moveq #$74, d1
db 0x67, 0x72 ; 009D98: provisional 68k beq.b $9e0c
db 0x65, 0x65 ; 009D9A: provisional 68k bcs.b $9e01
db 0x6E, 0x00, 0x72, 0x74 ; 009D9C: provisional 68k bgt.w $11012
db 0x67, 0x72 ; 009DA0: provisional 68k beq.b $9e14
db 0x65, 0x65 ; 009DA2: provisional 68k bcs.b $9e09
db 0x6E, 0x00, 0x72, 0x74 ; 009DA4: provisional 68k bgt.w $1101a
db 0x67, 0x72 ; 009DA8: provisional 68k beq.b $9e1c
db 0x65, 0x65 ; 009DAA: provisional 68k bcs.b $9e11
db 0x6E, 0x00, 0x72, 0x74 ; 009DAC: provisional 68k bgt.w $11022
db 0x67, 0x72 ; 009DB0: provisional 68k beq.b $9e24
db 0x65, 0x65 ; 009DB2: provisional 68k bcs.b $9e19
db 0x6E, 0x00, 0x72, 0x74 ; 009DB4: provisional 68k bgt.w $1102a
db 0x67, 0x72 ; 009DB8: provisional 68k beq.b $9e2c
db 0x65, 0x65 ; 009DBA: provisional 68k bcs.b $9e21
db 0x6E, 0x00, 0x00, 0x07 ; 009DBC: provisional 68k bgt.w $9dc5
db 0x01, 0x14 ; 009DC0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009DC2: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 009DC6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009DC8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x10 ; 009DCC: provisional 68k ori.b #$10, d0
db 0x1E, 0xF0, 0x01, 0x13, 0x01, 0x14, 0x00, 0x01 ; 009DD0: provisional 68k move.b ([a0, d0.w], $1140001), (a7)+
db 0x01, 0x05 ; 009DD8: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009DDA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009DDC: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009DE0: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 009DE2: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 009DE6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009DE8: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 009DEC: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 009DEE: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009DF0: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 009DF4: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 009DF8: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 009DFA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009DFC: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009E00: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009E02: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009E06: provisional 68k btst.l d0, (a4)
db 0x00, 0x1E, 0x01, 0x00 ; 009E08: provisional 68k ori.b #$0, (a6)+
db 0x00, 0x07, 0x01, 0x14 ; 009E0C: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 009E10: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 009E14: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009E16: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009E1A: provisional 68k ori.b #$f, d0
db 0x1D, 0x78, 0x01, 0x13, 0x01, 0x18 ; 009E1E: provisional 68k move.b $113.w, $118(a6)
db 0x01, 0x14 ; 009E24: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009E26: provisional 68k ori.b #$0, d1
db 0x01, 0x05 ; 009E2A: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009E2C: provisional 68k btst.l d0, (a4)
db 0x00, 0x11, 0x01, 0x01 ; 009E2E: provisional 68k ori.b #$1, (a1)
db 0x01, 0x04 ; 009E32: provisional 68k btst.l d0, d4
db 0x01, 0x13 ; 009E34: provisional 68k btst.l d0, (a3)
db 0x01, 0x19 ; 009E36: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009E38: provisional 68k btst.l d0, (a4)
db 0x00, 0x24, 0x01, 0x0D ; 009E3A: provisional 68k ori.b #$d, -(a4)
db 0x01, 0x14 ; 009E3E: provisional 68k btst.l d0, (a4)
db 0x00, 0x24, 0x01, 0x00 ; 009E40: provisional 68k ori.b #$0, -(a4)
db 0x01, 0x05 ; 009E44: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009E46: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009E48: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009E4C: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009E4E: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009E52: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009E56: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 009E58: provisional 68k ori.b #$0, (a4)
db 0x00, 0x00, 0x00, 0x0F ; 009E5C: provisional 68k ori.b #$f, d0
db 0x1D, 0xAA, 0x01, 0x19, 0x01, 0x14 ; 009E60: provisional 68k move.b $119(a2), (a6, d0.w)
db 0x00, 0x0D ; file 009E66
db 0x01, 0x0D, 0x01, 0x18 ; 009E68: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009E6C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009E6E: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009E72: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 009E74: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009E76: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 009E78: provisional 68k ori.b #$0, d6
db 0x00, 0x07, 0x01, 0x14 ; 009E7C: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009E80: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009E84: provisional 68k btst.l d0, (a4)
db 0x00, 0x28, 0x01, 0x00, 0x00, 0x00 ; 009E86: provisional 68k ori.b #$0, $0(a0)
db 0x00, 0x04, 0x1E, 0xCE ; 009E8C: provisional 68k ori.b #$ce, d4
db 0x00, 0x0F ; file 009E90
db 0x1E, 0x3C, 0x01, 0x18 ; 009E92: provisional 68k move.b #$18, d7
db 0x01, 0x14 ; 009E96: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009E98: provisional 68k ori.b #$0, d1
db 0x01, 0x06 ; 009E9C: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 009E9E: provisional 68k btst.l d0, (a4)
db 0x00, 0x15, 0x01, 0x00 ; 009EA0: provisional 68k ori.b #$0, (a5)
db 0x00, 0x0F ; file 009EA4
db 0x1E, 0x38, 0x01, 0x13 ; 009EA6: provisional 68k move.b $113.w, d7
db 0x01, 0x19 ; 009EAA: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009EAC: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009EAE
db 0x01, 0x0D, 0x01, 0x1E ; 009EB0: provisional 68k movep.w $11e(a5), d0
db 0x01, 0x14 ; 009EB4: provisional 68k btst.l d0, (a4)
db 0x00, 0x1E, 0x01, 0x0D ; 009EB6: provisional 68k ori.b #$d, (a6)+
db 0x01, 0x14 ; 009EBA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x0F ; 009EBC: provisional 68k ori.b #$f, d2
db 0x01, 0x18 ; 009EC0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009EC2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009EC4: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009EC8: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009ECA: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 009ECC: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009ECE: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x01 ; 009ED0: provisional 68k ori.b #$1, d6
db 0x01, 0x02 ; 009ED4: provisional 68k btst.l d0, d2
db 0x01, 0x13 ; 009ED6: provisional 68k btst.l d0, (a3)
db 0x01, 0x19 ; 009ED8: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009EDA: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009EDC
db 0x01, 0x0D, 0x01, 0x1E ; 009EDE: provisional 68k movep.w $11e(a5), d0
db 0x01, 0x14 ; 009EE2: provisional 68k btst.l d0, (a4)
db 0x00, 0x1E, 0x01, 0x0D ; 009EE4: provisional 68k ori.b #$d, (a6)+
db 0x01, 0x13 ; 009EE8: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009EEA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x0F ; 009EEC: provisional 68k ori.b #$f, d2
db 0x01, 0x18 ; 009EF0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009EF2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009EF4: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 009EF8: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x14 ; 009EFA: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 009EFE: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009F02: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 009F04: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009F06: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x01 ; 009F08: provisional 68k ori.b #$1, d6
db 0x01, 0x00 ; 009F0C: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009F0E: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009F12: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009F16: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 009F18: provisional 68k ori.b #$0, (a4)
db 0x00, 0x00, 0x00, 0x04 ; 009F1C: provisional 68k ori.b #$4, d0
db 0x1E, 0xCE ; file 009F20
db 0x00, 0x07, 0x01, 0x14 ; 009F22: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009F26: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009F2A: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 009F2C: provisional 68k ori.b #$0, (a4)
db 0x00, 0x00, 0x00, 0x10 ; 009F30: provisional 68k ori.b #$10, d0
db 0x1E, 0xCE ; file 009F34
db 0x01, 0x13 ; 009F36: provisional 68k btst.l d0, (a3)
db 0x01, 0x18 ; 009F38: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009F3A: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009F3C: provisional 68k ori.b #$0, d3
db 0x01, 0x07 ; 009F40: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 009F42: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x01 ; 009F44: provisional 68k ori.b #$1, d7
db 0x01, 0x04 ; 009F48: provisional 68k btst.l d0, d4
db 0x01, 0x13 ; 009F4A: provisional 68k btst.l d0, (a3)
db 0x01, 0x18 ; 009F4C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009F4E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009F50: provisional 68k ori.b #$0, d2
db 0x01, 0x05 ; 009F54: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009F56: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x01 ; 009F58: provisional 68k ori.b #$1, (a4)
db 0x01, 0x00 ; 009F5C: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 009F5E
db 0x1E, 0xB0, 0x01, 0x19 ; 009F60: provisional 68k move.b ([a0, d0.w]), (a7)
db 0x01, 0x14 ; 009F64: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009F66
db 0x01, 0x0D, 0x01, 0x1E ; 009F68: provisional 68k movep.w $11e(a5), d0
db 0x01, 0x14 ; 009F6C: provisional 68k btst.l d0, (a4)
db 0x00, 0x4C ; file 009F6E
db 0x01, 0x0D, 0x01, 0x18 ; 009F70: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009F74: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009F76: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 009F7A: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009F7C: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 009F7E: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 009F80: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 009F82: provisional 68k ori.b #$0, d6
db 0x00, 0x07, 0x01, 0x14 ; 009F86: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009F8A: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009F8E: provisional 68k btst.l d0, (a4)
db 0x00, 0x1E, 0x01, 0x00 ; 009F90: provisional 68k ori.b #$0, (a6)+
db 0x00, 0x00, 0x00, 0x07 ; 009F94: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009F98: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009F9A: provisional 68k ori.b #$0, d3
db 0x01, 0x18 ; 009F9E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009FA0: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009FA2: provisional 68k ori.b #$0, d3
db 0x01, 0x0D, 0x01, 0x14 ; 009FA6: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 009FAA: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x04 ; 009FAE: provisional 68k ori.b #$4, d0
db 0x1E, 0x4C ; file 009FB2
db 0x00, 0x15, 0x01, 0x18 ; 009FB4: provisional 68k ori.b #$18, (a5)
db 0x01, 0x14 ; 009FB8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009FBA: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 009FBE: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009FC0: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009FC2
db 0x01, 0x00 ; 009FC4: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 009FC6: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009FC8: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009FCA: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009FCE: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009FD0: provisional 68k ori.b #$4, d0
db 0x1C, 0xE8, 0x20, 0x2E ; 009FD4: provisional 68k move.b $202e(a0), (a6)+
db 0x80, 0x4E ; file 009FD8
db 0x67, 0x3E ; 009FDA: provisional 68k beq.b $a01a
db 0x28, 0x40 ; 009FDC: provisional 68k movea.l d0, a4
db 0x0C, 0x6C, 0x00, 0x02, 0x00, 0x02 ; 009FDE: provisional 68k cmpi.w #$2, $2(a4)
db 0x67, 0x36 ; 009FE4: provisional 68k beq.b $a01c
db 0x61, 0x00, 0x00, 0xBE ; 009FE6: provisional 68k bsr.w $a0a6
db 0x20, 0x2C, 0x00, 0x0E ; 009FEA: provisional 68k move.l $e(a4), d0
db 0x67, 0x06 ; 009FEE: provisional 68k beq.b $9ff6
db 0x2D, 0x40, 0x80, 0x4E ; 009FF0: provisional 68k move.l d0, -$7fb2(a6)
db 0x4E, 0x75 ; 009FF4: provisional 68k rts 
