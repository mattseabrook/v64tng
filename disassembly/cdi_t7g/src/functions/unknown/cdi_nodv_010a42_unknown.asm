; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A42–010A55, inclusive.
cdi_nodv_entry_010a42:
db 0x2F, 0x08 ; 010A42: provisional 68k move.l a0, -(a7)
db 0x20, 0x08 ; 010A44: provisional 68k move.l a0, d0
db 0x67, 0x0C ; 010A46: provisional 68k beq.b $10a54
db 0x41, 0xEE, 0xC0, 0xFA ; 010A48: provisional 68k lea.l -$3f06(a6), a0
db 0x90, 0x88 ; 010A4C: provisional 68k sub.l a0, d0
db 0x20, 0x5F ; 010A4E: provisional 68k movea.l (a7)+, a0
db 0x80, 0xFC, 0x00, 0x26 ; 010A50: provisional 68k divu.w #$26, d0
db 0x4E, 0x75 ; 010A54: provisional 68k rts 
