; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010EFA–010FD1, inclusive.
cdi_t7g_entry_010efa:
db 0x20, 0x6F, 0x00, 0x04 ; 010EFA: provisional 68k movea.l $4(a7), a0
db 0x20, 0x68, 0x00, 0x24 ; 010EFE: provisional 68k movea.l $24(a0), a0
db 0x20, 0x68, 0x00, 0x2C ; 010F02: provisional 68k movea.l $2c(a0), a0
db 0x2E, 0x9F ; 010F06: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 010F08: provisional 68k rts 
db 0x4E, 0x75 ; 010F0A: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 010F0C: provisional 68k movem.l -$3018(a6), d1-d3
db 0x22, 0x41 ; 010F12: provisional 68k movea.l d1, a1
db 0x4A, 0x81 ; 010F14: provisional 68k tst.l d1
db 0x67, 0x04 ; 010F16: provisional 68k beq.b $10f1c
db 0x34, 0x19 ; 010F18: provisional 68k move.w (a1)+, d2
db 0x36, 0x19 ; 010F1A: provisional 68k move.w (a1)+, d3
db 0x3B, 0x42, 0x00, 0x1C ; 010F1C: provisional 68k move.w d2, $1c(a5)
db 0x3B, 0x43, 0x00, 0x1E ; 010F20: provisional 68k move.w d3, $1e(a5)
db 0x41, 0xED, 0x00, 0x28 ; 010F24: provisional 68k lea.l $28(a5), a0
db 0x42, 0xAD, 0x00, 0x24 ; 010F28: provisional 68k clr.l $24(a5)
db 0xB6, 0x7C, 0x00, 0x10 ; 010F2C: provisional 68k cmp.w #$10, d3
db 0x6F, 0x00, 0x00, 0x3C ; 010F30: provisional 68k ble.w $10f6e
db 0x3F, 0x3C, 0x00, 0x03 ; 010F34: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 010F38: provisional 68k move.l a5, -(a7)
db 0x2D, 0x43, 0xCF, 0xE8 ; 010F3A: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x04, 0xCF, 0xEC ; 010F3E: provisional 68k move.l #$4, -$3014(a6)
db 0x2D, 0x6E, 0xA9, 0x04, 0xCF, 0xF0 ; 010F46: provisional 68k move.l -$56fc(a6), -$3010(a6)
db 0x61, 0x00, 0xF1, 0x30 ; 010F4C: provisional 68k bsr.w $1007e
db 0x48, 0x7A, 0x00, 0x0A ; 010F50: provisional 68k pea.l $10f5c(pc)
db 0x2F, 0x08 ; 010F54: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF3, 0xCA ; 010F56: provisional 68k bsr.w $10322
db 0x60, 0x0A ; 010F5A: provisional 68k bra.b $10f66
db 0x72, 0x67 ; 010F5C: provisional 68k moveq #$67, d1
db 0x62, 0x20 ; 010F5E: provisional 68k bhi.b $10f80
db 0x64, 0x61 ; 010F60: provisional 68k bcc.b $10fc3
db 0x74, 0x61 ; 010F62: provisional 68k moveq #$61, d2
db 0x00, 0x00, 0x2B, 0x48 ; 010F64: provisional 68k ori.b #$48, d0
db 0x00, 0x24, 0x20, 0x68 ; 010F68: provisional 68k ori.b #$68, -(a4)
db 0x00, 0x2C, 0x2B, 0x48, 0x00, 0x20 ; 010F6C: provisional 68k ori.b #$48, $20(a4)
db 0x4A, 0x81 ; 010F72: provisional 68k tst.l d1
db 0x67, 0x00, 0x00, 0x0A ; 010F74: provisional 68k beq.w $10f80
db 0x53, 0x43 ; 010F78: provisional 68k subq.w #$1, d3
db 0x20, 0xD9 ; 010F7A: provisional 68k move.l (a1)+, (a0)+
db 0x51, 0xCB, 0xFF, 0xFC ; 010F7C: provisional 68k dbra d3, $10f7a
db 0x4E, 0x75 ; 010F80: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 010F82: provisional 68k pea.l $10f8c(pc)
db 0x61, 0x00, 0xAD, 0xC8 ; 010F86: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 010F8A: provisional 68k bra.b $10f94
db 0x70, 0x6C ; 010F8C: provisional 68k moveq #$6c, d0
db 0x74, 0x65 ; 010F8E: provisional 68k moveq #$65, d2
db 0x20, 0x2D, 0x20, 0x00 ; 010F90: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 010F94: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xF3, 0xD4 ; 010F96: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 010F9A: provisional 68k rts 
db 0x4E, 0x75 ; 010F9C: provisional 68k rts 
db 0x4A, 0xAD, 0x00, 0x24 ; 010F9E: provisional 68k tst.l $24(a5)
db 0x67, 0x08 ; 010FA2: provisional 68k beq.b $10fac
db 0x2F, 0x2D, 0x00, 0x24 ; 010FA4: provisional 68k move.l $24(a5), -(a7)
db 0x61, 0x00, 0xF1, 0x3A ; 010FA8: provisional 68k bsr.w $100e4
db 0x4E, 0x75 ; 010FAC: provisional 68k rts 
db 0x48, 0xE7, 0x30, 0xC4 ; 010FAE: provisional 68k movem.l d2-d3/a0-a1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 010FB2: provisional 68k movea.l $18(a7), a5
db 0x22, 0x6F, 0x00, 0x1C ; 010FB6: provisional 68k movea.l $1c(a7), a1
db 0x61, 0x00, 0x00, 0x40 ; 010FBA: provisional 68k bsr.w $10ffc
db 0x53, 0x43 ; 010FBE: provisional 68k subq.w #$1, d3
db 0x20, 0xD9 ; 010FC0: provisional 68k move.l (a1)+, (a0)+
db 0x51, 0xCB, 0xFF, 0xFC ; 010FC2: provisional 68k dbra d3, $10fc0
db 0x4C, 0xDF, 0x23, 0x0C ; 010FC6: provisional 68k movem.l (a7)+, d2-d3/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x08 ; 010FCA: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 010FCE: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 010FD0: provisional 68k rts 
