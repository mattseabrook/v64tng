; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A52–010A7D, inclusive.
cdi_t7g_entry_010a52:
db 0x22, 0x03 ; 010A52: provisional 68k move.l d3, d1
db 0x0C, 0x81, 0x00, 0x00, 0x00, 0x39 ; 010A54: provisional 68k cmpi.l #$39, d1
db 0x66, 0x00, 0x00, 0x50 ; 010A5A: provisional 68k bne.w $10aac
db 0xB0, 0xBC, 0x00, 0x00, 0x00, 0x00 ; 010A5E: provisional 68k cmp.l #$0, d0
db 0x6B, 0x00, 0x00, 0x10 ; 010A64: provisional 68k bmi.w $10a76
db 0x53, 0x44 ; 010A68: provisional 68k subq.w #$1, d4
db 0x66, 0xDE ; 010A6A: provisional 68k bne.b $10a4a
db 0x36, 0x3C, 0x00, 0x80 ; 010A6C: provisional 68k move.w #$80, d3
db 0x3D, 0x43, 0xD0, 0x28 ; 010A70: provisional 68k move.w d3, -$2fd8(a6)
db 0x60, 0xD2 ; 010A74: provisional 68k bra.b $10a48
db 0x48, 0x7A, 0x00, 0x08 ; 010A76: provisional 68k pea.l $10a80(pc)
db 0x61, 0x00, 0xB2, 0xD4 ; 010A7A: provisional 68k bsr.w $bd50
