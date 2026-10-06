; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010202–010231, inclusive.
cdi_t7g_entry_010202:
db 0x20, 0x6D, 0x00, 0x0C ; 010202: provisional 68k movea.l $c(a5), a0
db 0x22, 0x6D, 0x00, 0x14 ; 010206: provisional 68k movea.l $14(a5), a1
db 0x24, 0x6D, 0x00, 0x18 ; 01020A: provisional 68k movea.l $18(a5), a2
db 0x20, 0x09 ; 01020E: provisional 68k move.l a1, d0
db 0x67, 0x04 ; 010210: provisional 68k beq.b $10216
db 0x23, 0x4A, 0x00, 0x18 ; 010212: provisional 68k move.l a2, $18(a1)
db 0x20, 0x0A ; 010216: provisional 68k move.l a2, d0
db 0x67, 0x06 ; 010218: provisional 68k beq.b $10220
db 0x25, 0x49, 0x00, 0x14 ; 01021A: provisional 68k move.l a1, $14(a2)
db 0x60, 0x04 ; 01021E: provisional 68k bra.b $10224
db 0x21, 0x49, 0x00, 0x10 ; 010220: provisional 68k move.l a1, $10(a0)
db 0x42, 0xAD, 0x00, 0x0C ; 010224: provisional 68k clr.l $c(a5)
db 0x42, 0xAD, 0x00, 0x14 ; 010228: provisional 68k clr.l $14(a5)
db 0x42, 0xAD, 0x00, 0x18 ; 01022C: provisional 68k clr.l $18(a5)
db 0x4E, 0x75 ; 010230: provisional 68k rts 
