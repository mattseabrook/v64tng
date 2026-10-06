; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 009FF6–00A025, inclusive.
cdi_t7g_entry_009ff6:
db 0x20, 0x2C, 0x00, 0x3E ; 009FF6: provisional 68k move.l $3e(a4), d0
db 0x67, 0x06 ; 009FFA: provisional 68k beq.b $a002
db 0x2D, 0x40, 0x80, 0x4E ; 009FFC: provisional 68k move.l d0, -$7fb2(a6)
db 0x4E, 0x75 ; 00A000: provisional 68k rts 
db 0x20, 0x2C, 0x00, 0x0A ; 00A002: provisional 68k move.l $a(a4), d0
db 0x66, 0x06 ; 00A006: provisional 68k bne.b $a00e
db 0x20, 0x2E, 0x80, 0x52 ; 00A008: provisional 68k move.l -$7fae(a6), d0
db 0x60, 0x08 ; 00A00C: provisional 68k bra.b $a016
db 0x28, 0x40 ; 00A00E: provisional 68k movea.l d0, a4
db 0x20, 0x2C, 0x00, 0x3E ; 00A010: provisional 68k move.l $3e(a4), d0
db 0x67, 0xEC ; 00A014: provisional 68k beq.b $a002
db 0x2D, 0x40, 0x80, 0x4E ; 00A016: provisional 68k move.l d0, -$7fb2(a6)
db 0x4E, 0x75 ; 00A01A: provisional 68k rts 
db 0x20, 0x4C ; 00A01C: provisional 68k movea.l a4, a0
db 0x61, 0xD6 ; 00A01E: provisional 68k bsr.b $9ff6
db 0x61, 0x00, 0x00, 0x04 ; 00A020: provisional 68k bsr.w $a026
db 0x4E, 0x75 ; 00A024: provisional 68k rts 
