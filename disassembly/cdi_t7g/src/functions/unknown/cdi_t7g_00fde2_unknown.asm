; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FDE2–00FE2B, inclusive.
cdi_t7g_entry_00fde2:
db 0x48, 0xE7, 0x70, 0x80 ; 00FDE2: provisional 68k movem.l d1-d3/a0, -(a7)
db 0x41, 0xEE, 0xCF, 0xD8 ; 00FDE6: provisional 68k lea.l -$3028(a6), a0
db 0x4C, 0xAE, 0x00, 0x0E, 0xD0, 0x44 ; 00FDEA: provisional 68k movem.w -$2fbc(a6), d1-d3
db 0x30, 0x30, 0x10, 0x00 ; 00FDF0: provisional 68k move.w (a0, d1.w), d0
db 0xD0, 0x70, 0x20, 0x00 ; 00FDF4: provisional 68k add.w (a0, d2.w), d0
db 0x31, 0x80, 0x30, 0x00 ; 00FDF8: provisional 68k move.w d0, (a0, d3.w)
db 0x54, 0x41 ; 00FDFC: provisional 68k addq.w #$2, d1
db 0x54, 0x42 ; 00FDFE: provisional 68k addq.w #$2, d2
db 0x54, 0x43 ; 00FE00: provisional 68k addq.w #$2, d3
db 0xC2, 0x7C, 0x00, 0x0F ; 00FE02: provisional 68k and.w #$f, d1
db 0xC4, 0x7C, 0x00, 0x0F ; 00FE06: provisional 68k and.w #$f, d2
db 0xC6, 0x7C, 0x00, 0x0F ; 00FE0A: provisional 68k and.w #$f, d3
db 0x48, 0xAE, 0x00, 0x0E, 0xD0, 0x44 ; 00FE0E: provisional 68k movem.w d1-d3, -$2fbc(a6)
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00FE14: provisional 68k and.l #$ffff, d0
db 0x80, 0xEF, 0x00, 0x14 ; 00FE1A: provisional 68k divu.w $14(a7), d0
db 0x48, 0x40 ; 00FE1E: provisional 68k swap d0
db 0x4C, 0xDF, 0x01, 0x0E ; 00FE20: provisional 68k movem.l (a7)+, d1-d3/a0
db 0x2F, 0x57, 0x00, 0x02 ; 00FE24: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00FE28: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00FE2A: provisional 68k rts 
