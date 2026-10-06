; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010E20–010E95, inclusive.
cdi_t7g_entry_010e20:
db 0xF2, 0x5E ; file 010E20
db 0x2B, 0x48, 0x00, 0x20 ; 010E22: provisional 68k move.l a0, $20(a5)
db 0x3F, 0x3C, 0x00, 0x03 ; 010E26: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 010E2A: provisional 68k move.l a5, -(a7)
db 0x2D, 0x41, 0xCF, 0xE8 ; 010E2C: provisional 68k move.l d1, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x04, 0xCF, 0xEC ; 010E30: provisional 68k move.l #$4, -$3014(a6)
db 0x2D, 0x43, 0xCF, 0xF0 ; 010E38: provisional 68k move.l d3, -$3010(a6)
db 0x61, 0x00, 0xF2, 0x40 ; 010E3C: provisional 68k bsr.w $1007e
db 0x2B, 0x48, 0x00, 0x24 ; 010E40: provisional 68k move.l a0, $24(a5)
db 0x61, 0x00, 0x00, 0x50 ; 010E44: provisional 68k bsr.w $10e96
db 0x4E, 0x75 ; 010E48: provisional 68k rts 
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 010E4A: provisional 68k move.l #$0, -(a7)
db 0x61, 0x00, 0xF5, 0xF0 ; 010E50: provisional 68k bsr.w $10442
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 010E54: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xAF, 0x22 ; 010E5A: provisional 68k bsr.w $bd7e
db 0x69, 0x62 ; 010E5E: provisional 68k bvs.b $10ec2
db 0x66, 0x72 ; 010E60: provisional 68k bne.b $10ed4
db 0x5F, 0x63 ; 010E62: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 010E64: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 010E66: provisional 68k bsr.b $10edc
db 0x65, 0x20 ; 010E68: provisional 68k bcs.b $10e8a
db 0x3A, 0x20 ; 010E6A: provisional 68k move.w -(a0), d5
db 0x54, 0x6F, 0x6F, 0x20 ; 010E6C: provisional 68k addq.w #$2, $6f20(a7)
db 0x6D, 0x61 ; 010E70: provisional 68k blt.b $10ed3
db 0x6E, 0x79 ; 010E72: provisional 68k bgt.b $10eed
db 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x20, 0x74 ; 010E74: provisional 68k movea.l ([$6f72, a2], $64732074), a0
db 0x6F, 0x20 ; 010E7E: provisional 68k ble.b $10ea0
db 0x66, 0x69 ; 010E80: provisional 68k bne.b $10eeb
db 0x74, 0x20 ; 010E82: provisional 68k moveq #$20, d2
db 0x69, 0x6E ; 010E84: provisional 68k bvs.b $10ef4
db 0x20, 0x69, 0x6E, 0x64 ; 010E86: provisional 68k movea.l $6e64(a1), a0
db 0x65, 0x63 ; 010E8A: provisional 68k bcs.b $10eef
db 0x69, 0x65 ; 010E8C: provisional 68k bvs.b $10ef3
db 0x73, 0x20 ; file 010E8E
db 0x66, 0x72 ; 010E90: provisional 68k bne.b $10f04
db 0x61, 0x67 ; 010E92: provisional 68k bsr.b $10efb
db 0x21, 0x00 ; 010E94: provisional 68k move.l d0, -(a0)
