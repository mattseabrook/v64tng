; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0133D0–013419, inclusive.
cdi_nodv_entry_0133d0:
db 0x48, 0xE7, 0x00, 0x84 ; 0133D0: provisional 68k movem.l a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 0133D4: provisional 68k movea.l $c(a7), a5
db 0x20, 0x6F, 0x00, 0x10 ; 0133D8: provisional 68k movea.l $10(a7), a0
db 0x61, 0x00, 0x00, 0x3C ; 0133DC: provisional 68k bsr.w $1341a
db 0x42, 0x80 ; 0133E0: provisional 68k clr.l d0
db 0x10, 0x28, 0x00, 0x07 ; 0133E2: provisional 68k move.b $7(a0), d0
db 0xE1, 0x40 ; 0133E6: provisional 68k asl.w #$8, d0
db 0x10, 0x28, 0x00, 0x08 ; 0133E8: provisional 68k move.b $8(a0), d0
db 0xE1, 0x80 ; 0133EC: provisional 68k asl.l #$8, d0
db 0x10, 0x28, 0x00, 0x09 ; 0133EE: provisional 68k move.b $9(a0), d0
db 0xD0, 0xAD, 0x00, 0x20 ; 0133F2: provisional 68k add.l $20(a5), d0
db 0x4C, 0xDF, 0x21, 0x00 ; 0133F6: provisional 68k movem.l (a7)+, a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 0133FA: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 0133FE: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 013400: provisional 68k rts 
db 0x2F, 0x0D ; 013402: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 013404: provisional 68k movea.l $8(a7), a5
db 0x20, 0x6F, 0x00, 0x0C ; 013408: provisional 68k movea.l $c(a7), a0
db 0x61, 0x00, 0x00, 0x0C ; 01340C: provisional 68k bsr.w $1341a
db 0x2A, 0x5F ; 013410: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 013412: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 013416: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 013418: provisional 68k rts 
