; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011082–0110B1, inclusive.
cdi_nodv_entry_011082:
db 0x20, 0x6D, 0x00, 0x0C ; 011082: provisional 68k movea.l $c(a5), a0
db 0x22, 0x6D, 0x00, 0x14 ; 011086: provisional 68k movea.l $14(a5), a1
db 0x24, 0x6D, 0x00, 0x18 ; 01108A: provisional 68k movea.l $18(a5), a2
db 0x20, 0x09 ; 01108E: provisional 68k move.l a1, d0
db 0x67, 0x04 ; 011090: provisional 68k beq.b $11096
db 0x23, 0x4A, 0x00, 0x18 ; 011092: provisional 68k move.l a2, $18(a1)
db 0x20, 0x0A ; 011096: provisional 68k move.l a2, d0
db 0x67, 0x06 ; 011098: provisional 68k beq.b $110a0
db 0x25, 0x49, 0x00, 0x14 ; 01109A: provisional 68k move.l a1, $14(a2)
db 0x60, 0x04 ; 01109E: provisional 68k bra.b $110a4
db 0x21, 0x49, 0x00, 0x10 ; 0110A0: provisional 68k move.l a1, $10(a0)
db 0x42, 0xAD, 0x00, 0x0C ; 0110A4: provisional 68k clr.l $c(a5)
db 0x42, 0xAD, 0x00, 0x14 ; 0110A8: provisional 68k clr.l $14(a5)
db 0x42, 0xAD, 0x00, 0x18 ; 0110AC: provisional 68k clr.l $18(a5)
db 0x4E, 0x75 ; 0110B0: provisional 68k rts 
