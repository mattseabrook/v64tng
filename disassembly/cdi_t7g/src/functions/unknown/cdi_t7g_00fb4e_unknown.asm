; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FB4E–00FB91, inclusive.
cdi_t7g_entry_00fb4e:
db 0x61, 0x00, 0x00, 0x72 ; 00FB4E: provisional 68k bsr.w $fbc2
db 0xB0, 0x6E, 0xCF, 0xD2 ; 00FB52: provisional 68k cmp.w -$302e(a6), d0
db 0x66, 0x04 ; 00FB56: provisional 68k bne.b $fb5c
db 0x42, 0x6E, 0xCF, 0xD2 ; 00FB58: provisional 68k clr.w -$302e(a6)
db 0x26, 0x68, 0x00, 0x22 ; 00FB5C: provisional 68k movea.l $22(a0), a3
db 0x24, 0x68, 0x00, 0x1E ; 00FB60: provisional 68k movea.l $1e(a0), a2
db 0x20, 0x0B ; 00FB64: provisional 68k move.l a3, d0
db 0x67, 0x04 ; 00FB66: provisional 68k beq.b $fb6c
db 0x27, 0x4A, 0x00, 0x1E ; 00FB68: provisional 68k move.l a2, $1e(a3)
db 0x20, 0x0A ; 00FB6C: provisional 68k move.l a2, d0
db 0x67, 0x06 ; 00FB6E: provisional 68k beq.b $fb76
db 0x25, 0x4B, 0x00, 0x22 ; 00FB70: provisional 68k move.l a3, $22(a2)
db 0x60, 0x08 ; 00FB74: provisional 68k bra.b $fb7e
db 0x24, 0x68, 0x00, 0x12 ; 00FB76: provisional 68k movea.l $12(a0), a2
db 0x25, 0x4B, 0x00, 0x16 ; 00FB7A: provisional 68k move.l a3, $16(a2)
db 0x21, 0x6E, 0xC0, 0xF6, 0x00, 0x22 ; 00FB7E: provisional 68k move.l -$3f0a(a6), $22(a0)
db 0x2D, 0x48, 0xC0, 0xF6 ; 00FB84: provisional 68k move.l a0, -$3f0a(a6)
db 0x42, 0xA8, 0x00, 0x12 ; 00FB88: provisional 68k clr.l $12(a0)
db 0x42, 0xA8, 0x00, 0x16 ; 00FB8C: provisional 68k clr.l $16(a0)
db 0x4E, 0x75 ; 00FB90: provisional 68k rts 
