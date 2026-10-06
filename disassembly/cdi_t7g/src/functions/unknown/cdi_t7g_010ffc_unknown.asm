; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010FFC–011063, inclusive.
cdi_t7g_entry_010ffc:
db 0x4A, 0xAD, 0x00, 0x24 ; 010FFC: provisional 68k tst.l $24(a5)
db 0x67, 0x0C ; 011000: provisional 68k beq.b $1100e
db 0x2F, 0x2D, 0x00, 0x24 ; 011002: provisional 68k move.l $24(a5), -(a7)
db 0x61, 0x00, 0xF0, 0xDC ; 011006: provisional 68k bsr.w $100e4
db 0x42, 0xAD, 0x00, 0x24 ; 01100A: provisional 68k clr.l $24(a5)
db 0x34, 0x19 ; 01100E: provisional 68k move.w (a1)+, d2
db 0x36, 0x19 ; 011010: provisional 68k move.w (a1)+, d3
db 0x3B, 0x42, 0x00, 0x1C ; 011012: provisional 68k move.w d2, $1c(a5)
db 0x3B, 0x43, 0x00, 0x1E ; 011016: provisional 68k move.w d3, $1e(a5)
db 0x41, 0xED, 0x00, 0x28 ; 01101A: provisional 68k lea.l $28(a5), a0
db 0xB6, 0x7C, 0x00, 0x10 ; 01101E: provisional 68k cmp.w #$10, d3
db 0x6F, 0x3A ; 011022: provisional 68k ble.b $1105e
db 0x3F, 0x3C, 0x00, 0x03 ; 011024: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 011028: provisional 68k move.l a5, -(a7)
db 0x2D, 0x43, 0xCF, 0xE8 ; 01102A: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x04, 0xCF, 0xEC ; 01102E: provisional 68k move.l #$4, -$3014(a6)
db 0x2D, 0x6E, 0xA9, 0x04, 0xCF, 0xF0 ; 011036: provisional 68k move.l -$56fc(a6), -$3010(a6)
db 0x61, 0x00, 0xF0, 0x40 ; 01103C: provisional 68k bsr.w $1007e
db 0x48, 0x7A, 0x00, 0x0A ; 011040: provisional 68k pea.l $1104c(pc)
db 0x2F, 0x08 ; 011044: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF2, 0xDA ; 011046: provisional 68k bsr.w $10322
db 0x60, 0x0A ; 01104A: provisional 68k bra.b $11056
db 0x72, 0x67 ; 01104C: provisional 68k moveq #$67, d1
db 0x62, 0x20 ; 01104E: provisional 68k bhi.b $11070
db 0x64, 0x61 ; 011050: provisional 68k bcc.b $110b3
db 0x74, 0x61 ; 011052: provisional 68k moveq #$61, d2
db 0x00, 0x00, 0x2B, 0x48 ; 011054: provisional 68k ori.b #$48, d0
db 0x00, 0x24, 0x20, 0x68 ; 011058: provisional 68k ori.b #$68, -(a4)
db 0x00, 0x2C, 0x2B, 0x48, 0x00, 0x20 ; 01105C: provisional 68k ori.b #$48, $20(a4)
db 0x4E, 0x75 ; 011062: provisional 68k rts 
