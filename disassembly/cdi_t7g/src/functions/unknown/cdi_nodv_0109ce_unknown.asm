; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0109CE–010A11, inclusive.
cdi_nodv_entry_0109ce:
db 0x61, 0x00, 0x00, 0x72 ; 0109CE: provisional 68k bsr.w $10a42
db 0xB0, 0x6E, 0xCF, 0xD2 ; 0109D2: provisional 68k cmp.w -$302e(a6), d0
db 0x66, 0x04 ; 0109D6: provisional 68k bne.b $109dc
db 0x42, 0x6E, 0xCF, 0xD2 ; 0109D8: provisional 68k clr.w -$302e(a6)
db 0x26, 0x68, 0x00, 0x22 ; 0109DC: provisional 68k movea.l $22(a0), a3
db 0x24, 0x68, 0x00, 0x1E ; 0109E0: provisional 68k movea.l $1e(a0), a2
db 0x20, 0x0B ; 0109E4: provisional 68k move.l a3, d0
db 0x67, 0x04 ; 0109E6: provisional 68k beq.b $109ec
db 0x27, 0x4A, 0x00, 0x1E ; 0109E8: provisional 68k move.l a2, $1e(a3)
db 0x20, 0x0A ; 0109EC: provisional 68k move.l a2, d0
db 0x67, 0x06 ; 0109EE: provisional 68k beq.b $109f6
db 0x25, 0x4B, 0x00, 0x22 ; 0109F0: provisional 68k move.l a3, $22(a2)
db 0x60, 0x08 ; 0109F4: provisional 68k bra.b $109fe
db 0x24, 0x68, 0x00, 0x12 ; 0109F6: provisional 68k movea.l $12(a0), a2
db 0x25, 0x4B, 0x00, 0x16 ; 0109FA: provisional 68k move.l a3, $16(a2)
db 0x21, 0x6E, 0xC0, 0xF6, 0x00, 0x22 ; 0109FE: provisional 68k move.l -$3f0a(a6), $22(a0)
db 0x2D, 0x48, 0xC0, 0xF6 ; 010A04: provisional 68k move.l a0, -$3f0a(a6)
db 0x42, 0xA8, 0x00, 0x12 ; 010A08: provisional 68k clr.l $12(a0)
db 0x42, 0xA8, 0x00, 0x16 ; 010A0C: provisional 68k clr.l $16(a0)
db 0x4E, 0x75 ; 010A10: provisional 68k rts 
