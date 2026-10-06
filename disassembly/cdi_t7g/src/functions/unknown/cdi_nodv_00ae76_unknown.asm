; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00AE76–00AEA5, inclusive.
cdi_nodv_entry_00ae76:
db 0x20, 0x2C, 0x00, 0x3E ; 00AE76: provisional 68k move.l $3e(a4), d0
db 0x67, 0x06 ; 00AE7A: provisional 68k beq.b $ae82
db 0x2D, 0x40, 0x80, 0x4E ; 00AE7C: provisional 68k move.l d0, -$7fb2(a6)
db 0x4E, 0x75 ; 00AE80: provisional 68k rts 
db 0x20, 0x2C, 0x00, 0x0A ; 00AE82: provisional 68k move.l $a(a4), d0
db 0x66, 0x06 ; 00AE86: provisional 68k bne.b $ae8e
db 0x20, 0x2E, 0x80, 0x52 ; 00AE88: provisional 68k move.l -$7fae(a6), d0
db 0x60, 0x08 ; 00AE8C: provisional 68k bra.b $ae96
db 0x28, 0x40 ; 00AE8E: provisional 68k movea.l d0, a4
db 0x20, 0x2C, 0x00, 0x3E ; 00AE90: provisional 68k move.l $3e(a4), d0
db 0x67, 0xEC ; 00AE94: provisional 68k beq.b $ae82
db 0x2D, 0x40, 0x80, 0x4E ; 00AE96: provisional 68k move.l d0, -$7fb2(a6)
db 0x4E, 0x75 ; 00AE9A: provisional 68k rts 
db 0x20, 0x4C ; 00AE9C: provisional 68k movea.l a4, a0
db 0x61, 0xD6 ; 00AE9E: provisional 68k bsr.b $ae76
db 0x61, 0x00, 0x00, 0x04 ; 00AEA0: provisional 68k bsr.w $aea6
db 0x4E, 0x75 ; 00AEA4: provisional 68k rts 
