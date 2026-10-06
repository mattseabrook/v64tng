; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010CCC–010E1F, inclusive.
cdi_t7g_entry_010ccc:
db 0x20, 0x50 ; 010CCC: provisional 68k movea.l (a0), a0
db 0x4E, 0x40, 0x00, 0x29 ; 010CCE: provisional 68k trap #0 ; OS-9 service word $0029
db 0x65, 0x3A ; 010CD2: provisional 68k bcs.b $10d0e
db 0x20, 0x02 ; 010CD4: provisional 68k move.l d2, d0
db 0x60, 0xE6 ; 010CD6: provisional 68k bra.b $10cbe
db 0x42, 0x6D, 0x00, 0x1C ; 010CD8: provisional 68k clr.w $1c(a5)
db 0x42, 0x6D, 0x00, 0x1E ; 010CDC: provisional 68k clr.w $1e(a5)
db 0x42, 0x6D, 0x00, 0x20 ; 010CE0: provisional 68k clr.w $20(a5)
db 0x42, 0xAD, 0x00, 0x22 ; 010CE4: provisional 68k clr.l $22(a5)
db 0x42, 0xAD, 0x00, 0x26 ; 010CE8: provisional 68k clr.l $26(a5)
db 0x42, 0xAD, 0x00, 0x30 ; 010CEC: provisional 68k clr.l $30(a5)
db 0x42, 0xAD, 0x00, 0x34 ; 010CF0: provisional 68k clr.l $34(a5)
db 0x4E, 0x75 ; 010CF4: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 010CF6: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB0, 0x82 ; 010CFA: provisional 68k bsr.w $bd7e
db 0x74, 0x72 ; 010CFE: provisional 68k moveq #$72, d2
db 0x61, 0x73 ; 010D00: provisional 68k bsr.b $10d75
db 0x68, 0x5F ; 010D02: provisional 68k bvc.b $10d63
db 0x64, 0x6E ; 010D04: provisional 68k bcc.b $10d74
db 0x6F, 0x64 ; 010D06: provisional 68k ble.b $10d6c
db 0x65, 0x73 ; 010D08: provisional 68k bcs.b $10d7d
db 0x3A, 0x20 ; 010D0A: provisional 68k move.w -(a0), d5
db 0x00, 0x00, 0x32, 0x3C ; 010D0C: provisional 68k ori.b #$3c, d0
db 0x80, 0x00 ; 010D10: provisional 68k or.b d0, d0
db 0x61, 0x00, 0xB0, 0x6A ; 010D12: provisional 68k bsr.w $bd7e
db 0x74, 0x72 ; 010D16: provisional 68k moveq #$72, d2
db 0x61, 0x73 ; 010D18: provisional 68k bsr.b $10d8d
db 0x68, 0x5F ; 010D1A: provisional 68k bvc.b $10d7b
db 0x64, 0x6E ; 010D1C: provisional 68k bcc.b $10d8c
db 0x6F, 0x64 ; 010D1E: provisional 68k ble.b $10d84
db 0x65, 0x73 ; 010D20: provisional 68k bcs.b $10d95
db 0x3A, 0x20 ; 010D22: provisional 68k move.w -(a0), d5
db 0x46, 0x24 ; 010D24: provisional 68k not.b -(a4)
db 0x53, 0x52 ; 010D26: provisional 68k subq.w #$1, (a2)
db 0x74, 0x4D ; 010D28: provisional 68k moveq #$4d, d2
db 0x65, 0x6D ; 010D2A: provisional 68k bcs.b $10d99
db 0x00, 0x00, 0x4C, 0xEE ; 010D2C: provisional 68k ori.b #$ee, d0
db 0x00, 0x0E ; file 010D30
db 0xCF, 0xE8, 0xB4, 0x7C ; 010D32: provisional 68k muls.w -$4b84(a0), d7
db 0x09, 0x14 ; 010D36: provisional 68k btst.l d4, (a4)
db 0x62, 0x00, 0x00, 0x5E ; 010D38: provisional 68k bhi.w $10d98
db 0x28, 0x3C, 0x00, 0x00, 0x09, 0x14 ; 010D3C: provisional 68k move.l #$914, d4
db 0x88, 0xC2 ; 010D42: provisional 68k divu.w d2, d4
db 0x42, 0x85 ; 010D44: provisional 68k clr.l d5
db 0x3A, 0x01 ; 010D46: provisional 68k move.w d1, d5
db 0x8A, 0xC4 ; 010D48: provisional 68k divu.w d4, d5
db 0x48, 0x45 ; 010D4A: provisional 68k swap d5
db 0x4A, 0x45 ; 010D4C: provisional 68k tst.w d5
db 0x67, 0x06 ; 010D4E: provisional 68k beq.b $10d56
db 0xDA, 0xBC, 0x00, 0x01, 0x00, 0x00 ; 010D50: provisional 68k add.l #$10000, d5
db 0x48, 0x45 ; 010D56: provisional 68k swap d5
db 0x3F, 0x05 ; 010D58: provisional 68k move.w d5, -(a7)
db 0x2F, 0x03 ; 010D5A: provisional 68k move.l d3, -(a7)
db 0x61, 0x00, 0xB2, 0xCC ; 010D5C: provisional 68k bsr.w $c02a
db 0x3B, 0x41, 0x00, 0x1C ; 010D60: provisional 68k move.w d1, $1c(a5)
db 0x3B, 0x42, 0x00, 0x1E ; 010D64: provisional 68k move.w d2, $1e(a5)
db 0x2B, 0x43, 0x00, 0x20 ; 010D68: provisional 68k move.l d3, $20(a5)
db 0x3B, 0x44, 0x00, 0x28 ; 010D6C: provisional 68k move.w d4, $28(a5)
db 0x3B, 0x45, 0x00, 0x24 ; 010D70: provisional 68k move.w d5, $24(a5)
db 0x2B, 0x48, 0x00, 0x2C ; 010D74: provisional 68k move.l a0, $2c(a5)
db 0xBA, 0x7C, 0x00, 0x01 ; 010D78: provisional 68k cmp.w #$1, d5
db 0x66, 0x00, 0x00, 0x0E ; 010D7C: provisional 68k bne.w $10d8c
db 0x3B, 0x41, 0x00, 0x26 ; 010D80: provisional 68k move.w d1, $26(a5)
db 0x3B, 0x41, 0x00, 0x2A ; 010D84: provisional 68k move.w d1, $2a(a5)
db 0x60, 0x00, 0x00, 0x0C ; 010D88: provisional 68k bra.w $10d96
db 0x3B, 0x44, 0x00, 0x26 ; 010D8C: provisional 68k move.w d4, $26(a5)
db 0x48, 0x45 ; 010D90: provisional 68k swap d5
db 0x3B, 0x45, 0x00, 0x2A ; 010D92: provisional 68k move.w d5, $2a(a5)
db 0x4E, 0x75 ; 010D96: provisional 68k rts 
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 010D98: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xAF, 0xDE ; 010D9E: provisional 68k bsr.w $bd7e
db 0x66, 0x72 ; 010DA2: provisional 68k bne.b $10e16
db 0x61, 0x67 ; 010DA4: provisional 68k bsr.b $10e0d
db 0x5F, 0x63 ; 010DA6: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 010DA8: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 010DAA: provisional 68k bsr.b $10e20
db 0x65, 0x20 ; 010DAC: provisional 68k bcs.b $10dce
db 0x3A, 0x20 ; 010DAE: provisional 68k move.w -(a0), d5
db 0x72, 0x65 ; 010DB0: provisional 68k moveq #$65, d1
db 0x63, 0x6F ; 010DB2: provisional 68k bls.b $10e23
db 0x72, 0x64 ; 010DB4: provisional 68k moveq #$64, d1
db 0x20, 0x74, 0x6F, 0x6F, 0x20, 0x62 ; 010DB6: provisional 68k movea.l ([$2062, a4]), a0
db 0x69, 0x67 ; 010DBC: provisional 68k bvs.b $10e25
db 0x20, 0x66 ; 010DBE: provisional 68k movea.l -(a6), a0
db 0x6F, 0x72 ; 010DC0: provisional 68k ble.b $10e34
db 0x20, 0x64 ; 010DC2: provisional 68k movea.l -(a4), a0
db 0x2D, 0x6E, 0x6F, 0x64, 0x65, 0x21 ; 010DC4: provisional 68k move.l $6f64(a6), $6521(a6)
db 0x21, 0x21 ; 010DCA: provisional 68k move.l -(a1), -(a0)
db 0x00, 0x00, 0x48, 0x7A ; 010DCC: provisional 68k ori.b #$7a, d0
db 0x00, 0x08 ; file 010DD0
db 0x61, 0x00, 0xAF, 0x7C ; 010DD2: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 010DD6: provisional 68k bra.b $10de0
db 0x66, 0x72 ; 010DD8: provisional 68k bne.b $10e4c
db 0x61, 0x67 ; 010DDA: provisional 68k bsr.b $10e43
db 0x20, 0x2D, 0x20, 0x00 ; 010DDC: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 010DE0: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xF5, 0x88 ; 010DE2: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 010DE6: provisional 68k rts 
db 0x4E, 0x75 ; 010DE8: provisional 68k rts 
db 0x2F, 0x2D, 0x00, 0x2C ; 010DEA: provisional 68k move.l $2c(a5), -(a7)
db 0x61, 0x00, 0xB3, 0x88 ; 010DEE: provisional 68k bsr.w $c178
db 0x4E, 0x75 ; 010DF2: provisional 68k rts 
db 0x4E, 0x75 ; 010DF4: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 010DF6: provisional 68k movem.l -$3018(a6), d1-d3
db 0xB2, 0x7C, 0x02, 0x45 ; 010DFC: provisional 68k cmp.w #$245, d1
db 0x62, 0x00, 0x00, 0x48 ; 010E00: provisional 68k bhi.w $10e4a
db 0x3B, 0x41, 0x00, 0x1C ; 010E04: provisional 68k move.w d1, $1c(a5)
db 0x3B, 0x42, 0x00, 0x1E ; 010E08: provisional 68k move.w d2, $1e(a5)
db 0x3F, 0x3C, 0x00, 0x03 ; 010E0C: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 010E10: provisional 68k move.l a5, -(a7)
db 0x2D, 0x41, 0xCF, 0xE8 ; 010E12: provisional 68k move.l d1, -$3018(a6)
db 0x2D, 0x42, 0xCF, 0xEC ; 010E16: provisional 68k move.l d2, -$3014(a6)
db 0x2D, 0x43, 0xCF, 0xF0 ; 010E1A: provisional 68k move.l d3, -$3010(a6)
db 0x61, 0x00 ; file 010E1E
