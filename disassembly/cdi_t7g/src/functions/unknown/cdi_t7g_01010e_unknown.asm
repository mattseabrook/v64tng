; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01010E–010133, inclusive.
cdi_t7g_entry_01010e:
db 0x48, 0xE7, 0x80, 0x04 ; 01010E: provisional 68k movem.l d0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 010112: provisional 68k movea.l $c(a7), a5
db 0x20, 0x2D, 0x00, 0x10 ; 010116: provisional 68k move.l $10(a5), d0
db 0x67, 0x10 ; 01011A: provisional 68k beq.b $1012c
db 0x2A, 0x40 ; 01011C: provisional 68k movea.l d0, a5
db 0x2F, 0x2D, 0x00, 0x14 ; 01011E: provisional 68k move.l $14(a5), -(a7)
db 0x2F, 0x0D ; 010122: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFF, 0xBE ; 010124: provisional 68k bsr.w $100e4
db 0x20, 0x1F ; 010128: provisional 68k move.l (a7)+, d0
db 0x66, 0xF0 ; 01012A: provisional 68k bne.b $1011c
db 0x4C, 0xDF, 0x20, 0x01 ; 01012C: provisional 68k movem.l (a7)+, d0/a5
db 0x2E, 0x9F ; 010130: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 010132: provisional 68k rts 
