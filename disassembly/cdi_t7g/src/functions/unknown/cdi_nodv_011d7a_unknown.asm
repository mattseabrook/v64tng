; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011D7A–011E51, inclusive.
cdi_nodv_entry_011d7a:
db 0x20, 0x6F, 0x00, 0x04 ; 011D7A: provisional 68k movea.l $4(a7), a0
db 0x20, 0x68, 0x00, 0x24 ; 011D7E: provisional 68k movea.l $24(a0), a0
db 0x20, 0x68, 0x00, 0x2C ; 011D82: provisional 68k movea.l $2c(a0), a0
db 0x2E, 0x9F ; 011D86: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 011D88: provisional 68k rts 
db 0x4E, 0x75 ; 011D8A: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 011D8C: provisional 68k movem.l -$3018(a6), d1-d3
db 0x22, 0x41 ; 011D92: provisional 68k movea.l d1, a1
db 0x4A, 0x81 ; 011D94: provisional 68k tst.l d1
db 0x67, 0x04 ; 011D96: provisional 68k beq.b $11d9c
db 0x34, 0x19 ; 011D98: provisional 68k move.w (a1)+, d2
db 0x36, 0x19 ; 011D9A: provisional 68k move.w (a1)+, d3
db 0x3B, 0x42, 0x00, 0x1C ; 011D9C: provisional 68k move.w d2, $1c(a5)
db 0x3B, 0x43, 0x00, 0x1E ; 011DA0: provisional 68k move.w d3, $1e(a5)
db 0x41, 0xED, 0x00, 0x28 ; 011DA4: provisional 68k lea.l $28(a5), a0
db 0x42, 0xAD, 0x00, 0x24 ; 011DA8: provisional 68k clr.l $24(a5)
db 0xB6, 0x7C, 0x00, 0x10 ; 011DAC: provisional 68k cmp.w #$10, d3
db 0x6F, 0x00, 0x00, 0x3C ; 011DB0: provisional 68k ble.w $11dee
db 0x3F, 0x3C, 0x00, 0x03 ; 011DB4: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 011DB8: provisional 68k move.l a5, -(a7)
db 0x2D, 0x43, 0xCF, 0xE8 ; 011DBA: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x04, 0xCF, 0xEC ; 011DBE: provisional 68k move.l #$4, -$3014(a6)
db 0x2D, 0x6E, 0xA9, 0x04, 0xCF, 0xF0 ; 011DC6: provisional 68k move.l -$56fc(a6), -$3010(a6)
db 0x61, 0x00, 0xF1, 0x30 ; 011DCC: provisional 68k bsr.w $10efe
db 0x48, 0x7A, 0x00, 0x0A ; 011DD0: provisional 68k pea.l $11ddc(pc)
db 0x2F, 0x08 ; 011DD4: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF3, 0xCA ; 011DD6: provisional 68k bsr.w $111a2
db 0x60, 0x0A ; 011DDA: provisional 68k bra.b $11de6
db 0x72, 0x67 ; 011DDC: provisional 68k moveq #$67, d1
db 0x62, 0x20 ; 011DDE: provisional 68k bhi.b $11e00
db 0x64, 0x61 ; 011DE0: provisional 68k bcc.b $11e43
db 0x74, 0x61 ; 011DE2: provisional 68k moveq #$61, d2
db 0x00, 0x00, 0x2B, 0x48 ; 011DE4: provisional 68k ori.b #$48, d0
db 0x00, 0x24, 0x20, 0x68 ; 011DE8: provisional 68k ori.b #$68, -(a4)
db 0x00, 0x2C, 0x2B, 0x48, 0x00, 0x20 ; 011DEC: provisional 68k ori.b #$48, $20(a4)
db 0x4A, 0x81 ; 011DF2: provisional 68k tst.l d1
db 0x67, 0x00, 0x00, 0x0A ; 011DF4: provisional 68k beq.w $11e00
db 0x53, 0x43 ; 011DF8: provisional 68k subq.w #$1, d3
db 0x20, 0xD9 ; 011DFA: provisional 68k move.l (a1)+, (a0)+
db 0x51, 0xCB, 0xFF, 0xFC ; 011DFC: provisional 68k dbra d3, $11dfa
db 0x4E, 0x75 ; 011E00: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 011E02: provisional 68k pea.l $11e0c(pc)
db 0x61, 0x00, 0xAD, 0xC8 ; 011E06: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 011E0A: provisional 68k bra.b $11e14
db 0x70, 0x6C ; 011E0C: provisional 68k moveq #$6c, d0
db 0x74, 0x65 ; 011E0E: provisional 68k moveq #$65, d2
db 0x20, 0x2D, 0x20, 0x00 ; 011E10: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 011E14: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xF3, 0xD4 ; 011E16: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 011E1A: provisional 68k rts 
db 0x4E, 0x75 ; 011E1C: provisional 68k rts 
db 0x4A, 0xAD, 0x00, 0x24 ; 011E1E: provisional 68k tst.l $24(a5)
db 0x67, 0x08 ; 011E22: provisional 68k beq.b $11e2c
db 0x2F, 0x2D, 0x00, 0x24 ; 011E24: provisional 68k move.l $24(a5), -(a7)
db 0x61, 0x00, 0xF1, 0x3A ; 011E28: provisional 68k bsr.w $10f64
db 0x4E, 0x75 ; 011E2C: provisional 68k rts 
db 0x48, 0xE7, 0x30, 0xC4 ; 011E2E: provisional 68k movem.l d2-d3/a0-a1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 011E32: provisional 68k movea.l $18(a7), a5
db 0x22, 0x6F, 0x00, 0x1C ; 011E36: provisional 68k movea.l $1c(a7), a1
db 0x61, 0x00, 0x00, 0x40 ; 011E3A: provisional 68k bsr.w $11e7c
db 0x53, 0x43 ; 011E3E: provisional 68k subq.w #$1, d3
db 0x20, 0xD9 ; 011E40: provisional 68k move.l (a1)+, (a0)+
db 0x51, 0xCB, 0xFF, 0xFC ; 011E42: provisional 68k dbra d3, $11e40
db 0x4C, 0xDF, 0x23, 0x0C ; 011E46: provisional 68k movem.l (a7)+, d2-d3/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x08 ; 011E4A: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011E4E: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 011E50: provisional 68k rts 
