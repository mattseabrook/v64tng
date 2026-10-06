; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012738–012763, inclusive.
cdi_nodv_entry_012738:
db 0x48, 0xE7, 0x00, 0xC4 ; 012738: provisional 68k movem.l a0-a1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x10 ; 01273C: provisional 68k movea.l $10(a7), a5
db 0x22, 0x6F, 0x00, 0x14 ; 012740: provisional 68k movea.l $14(a7), a1
db 0x2F, 0x2D, 0x00, 0x44 ; 012744: provisional 68k move.l $44(a5), -(a7)
db 0x61, 0x00, 0xE8, 0x1A ; 012748: provisional 68k bsr.w $10f64
db 0x2F, 0x0D ; 01274C: provisional 68k move.l a5, -(a7)
db 0x2F, 0x09 ; 01274E: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0xE8, 0x62 ; 012750: provisional 68k bsr.w $10fb4
db 0x2B, 0x49, 0x00, 0x44 ; 012754: provisional 68k move.l a1, $44(a5)
db 0x4C, 0xDF, 0x23, 0x00 ; 012758: provisional 68k movem.l (a7)+, a0-a1/a5
db 0x2F, 0x57, 0x00, 0x08 ; 01275C: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 012760: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 012762: provisional 68k rts 
