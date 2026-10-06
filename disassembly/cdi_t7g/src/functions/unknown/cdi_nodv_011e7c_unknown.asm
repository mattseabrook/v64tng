; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011E7C–011EE3, inclusive.
cdi_nodv_entry_011e7c:
db 0x4A, 0xAD, 0x00, 0x24 ; 011E7C: provisional 68k tst.l $24(a5)
db 0x67, 0x0C ; 011E80: provisional 68k beq.b $11e8e
db 0x2F, 0x2D, 0x00, 0x24 ; 011E82: provisional 68k move.l $24(a5), -(a7)
db 0x61, 0x00, 0xF0, 0xDC ; 011E86: provisional 68k bsr.w $10f64
db 0x42, 0xAD, 0x00, 0x24 ; 011E8A: provisional 68k clr.l $24(a5)
db 0x34, 0x19 ; 011E8E: provisional 68k move.w (a1)+, d2
db 0x36, 0x19 ; 011E90: provisional 68k move.w (a1)+, d3
db 0x3B, 0x42, 0x00, 0x1C ; 011E92: provisional 68k move.w d2, $1c(a5)
db 0x3B, 0x43, 0x00, 0x1E ; 011E96: provisional 68k move.w d3, $1e(a5)
db 0x41, 0xED, 0x00, 0x28 ; 011E9A: provisional 68k lea.l $28(a5), a0
db 0xB6, 0x7C, 0x00, 0x10 ; 011E9E: provisional 68k cmp.w #$10, d3
db 0x6F, 0x3A ; 011EA2: provisional 68k ble.b $11ede
db 0x3F, 0x3C, 0x00, 0x03 ; 011EA4: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 011EA8: provisional 68k move.l a5, -(a7)
db 0x2D, 0x43, 0xCF, 0xE8 ; 011EAA: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x04, 0xCF, 0xEC ; 011EAE: provisional 68k move.l #$4, -$3014(a6)
db 0x2D, 0x6E, 0xA9, 0x04, 0xCF, 0xF0 ; 011EB6: provisional 68k move.l -$56fc(a6), -$3010(a6)
db 0x61, 0x00, 0xF0, 0x40 ; 011EBC: provisional 68k bsr.w $10efe
db 0x48, 0x7A, 0x00, 0x0A ; 011EC0: provisional 68k pea.l $11ecc(pc)
db 0x2F, 0x08 ; 011EC4: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF2, 0xDA ; 011EC6: provisional 68k bsr.w $111a2
db 0x60, 0x0A ; 011ECA: provisional 68k bra.b $11ed6
db 0x72, 0x67 ; 011ECC: provisional 68k moveq #$67, d1
db 0x62, 0x20 ; 011ECE: provisional 68k bhi.b $11ef0
db 0x64, 0x61 ; 011ED0: provisional 68k bcc.b $11f33
db 0x74, 0x61 ; 011ED2: provisional 68k moveq #$61, d2
db 0x00, 0x00, 0x2B, 0x48 ; 011ED4: provisional 68k ori.b #$48, d0
db 0x00, 0x24, 0x20, 0x68 ; 011ED8: provisional 68k ori.b #$68, -(a4)
db 0x00, 0x2C, 0x2B, 0x48, 0x00, 0x20 ; 011EDC: provisional 68k ori.b #$48, $20(a4)
db 0x4E, 0x75 ; 011EE2: provisional 68k rts 
