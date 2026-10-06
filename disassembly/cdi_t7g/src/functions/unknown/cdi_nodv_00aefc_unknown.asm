; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00AEFC–00AF25, inclusive.
cdi_nodv_entry_00aefc:
db 0x48, 0xE7, 0x80, 0x08 ; 00AEFC: provisional 68k movem.l d0/a4, -(a7)
db 0x4A, 0x80 ; 00AF00: provisional 68k tst.l d0
db 0x67, 0x1C ; 00AF02: provisional 68k beq.b $af20
db 0x28, 0x40 ; 00AF04: provisional 68k movea.l d0, a4
db 0x20, 0x2C, 0x00, 0x0E ; 00AF06: provisional 68k move.l $e(a4), d0
db 0x61, 0xF0 ; 00AF0A: provisional 68k bsr.b $aefc
db 0x20, 0x2C, 0x00, 0x3E ; 00AF0C: provisional 68k move.l $3e(a4), d0
db 0x29, 0x6E, 0x80, 0x56, 0x00, 0x3E ; 00AF10: provisional 68k move.l -$7faa(a6), $3e(a4)
db 0x2D, 0x4C, 0x80, 0x56 ; 00AF16: provisional 68k move.l a4, -$7faa(a6)
db 0x52, 0x6E, 0x80, 0x5A ; 00AF1A: provisional 68k addq.w #$1, -$7fa6(a6)
db 0x60, 0xE0 ; 00AF1E: provisional 68k bra.b $af00
db 0x4C, 0xDF, 0x10, 0x01 ; 00AF20: provisional 68k movem.l (a7)+, d0/a4
db 0x4E, 0x75 ; 00AF24: provisional 68k rts 
