; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00A07C–00A0A5, inclusive.
cdi_t7g_entry_00a07c:
db 0x48, 0xE7, 0x80, 0x08 ; 00A07C: provisional 68k movem.l d0/a4, -(a7)
db 0x4A, 0x80 ; 00A080: provisional 68k tst.l d0
db 0x67, 0x1C ; 00A082: provisional 68k beq.b $a0a0
db 0x28, 0x40 ; 00A084: provisional 68k movea.l d0, a4
db 0x20, 0x2C, 0x00, 0x0E ; 00A086: provisional 68k move.l $e(a4), d0
db 0x61, 0xF0 ; 00A08A: provisional 68k bsr.b $a07c
db 0x20, 0x2C, 0x00, 0x3E ; 00A08C: provisional 68k move.l $3e(a4), d0
db 0x29, 0x6E, 0x80, 0x56, 0x00, 0x3E ; 00A090: provisional 68k move.l -$7faa(a6), $3e(a4)
db 0x2D, 0x4C, 0x80, 0x56 ; 00A096: provisional 68k move.l a4, -$7faa(a6)
db 0x52, 0x6E, 0x80, 0x5A ; 00A09A: provisional 68k addq.w #$1, -$7fa6(a6)
db 0x60, 0xE0 ; 00A09E: provisional 68k bra.b $a080
db 0x4C, 0xDF, 0x10, 0x01 ; 00A0A0: provisional 68k movem.l (a7)+, d0/a4
db 0x4E, 0x75 ; 00A0A4: provisional 68k rts 
