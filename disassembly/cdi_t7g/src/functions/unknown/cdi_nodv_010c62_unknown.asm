; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010C62–010CAB, inclusive.
cdi_nodv_entry_010c62:
db 0x48, 0xE7, 0x70, 0x80 ; 010C62: provisional 68k movem.l d1-d3/a0, -(a7)
db 0x41, 0xEE, 0xCF, 0xD8 ; 010C66: provisional 68k lea.l -$3028(a6), a0
db 0x4C, 0xAE, 0x00, 0x0E, 0xD0, 0x44 ; 010C6A: provisional 68k movem.w -$2fbc(a6), d1-d3
db 0x30, 0x30, 0x10, 0x00 ; 010C70: provisional 68k move.w (a0, d1.w), d0
db 0xD0, 0x70, 0x20, 0x00 ; 010C74: provisional 68k add.w (a0, d2.w), d0
db 0x31, 0x80, 0x30, 0x00 ; 010C78: provisional 68k move.w d0, (a0, d3.w)
db 0x54, 0x41 ; 010C7C: provisional 68k addq.w #$2, d1
db 0x54, 0x42 ; 010C7E: provisional 68k addq.w #$2, d2
db 0x54, 0x43 ; 010C80: provisional 68k addq.w #$2, d3
db 0xC2, 0x7C, 0x00, 0x0F ; 010C82: provisional 68k and.w #$f, d1
db 0xC4, 0x7C, 0x00, 0x0F ; 010C86: provisional 68k and.w #$f, d2
db 0xC6, 0x7C, 0x00, 0x0F ; 010C8A: provisional 68k and.w #$f, d3
db 0x48, 0xAE, 0x00, 0x0E, 0xD0, 0x44 ; 010C8E: provisional 68k movem.w d1-d3, -$2fbc(a6)
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 010C94: provisional 68k and.l #$ffff, d0
db 0x80, 0xEF, 0x00, 0x14 ; 010C9A: provisional 68k divu.w $14(a7), d0
db 0x48, 0x40 ; 010C9E: provisional 68k swap d0
db 0x4C, 0xDF, 0x01, 0x0E ; 010CA0: provisional 68k movem.l (a7)+, d1-d3/a0
db 0x2F, 0x57, 0x00, 0x02 ; 010CA4: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 010CA8: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 010CAA: provisional 68k rts 
