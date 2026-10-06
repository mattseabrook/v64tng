; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010442–010497, inclusive.
cdi_t7g_entry_010442:
db 0x48, 0xE7, 0xFF, 0xFC ; 010442: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x61, 0x00, 0xB8, 0xEE ; 010446: provisional 68k bsr.w $bd36
db 0x20, 0x2F, 0x00, 0x3C ; 01044A: provisional 68k move.l $3c(a7), d0
db 0x66, 0x04 ; 01044E: provisional 68k bne.b $10454
db 0x20, 0x2E, 0xD0, 0x00 ; 010450: provisional 68k move.l -$3000(a6), d0
db 0x20, 0x40 ; 010454: provisional 68k movea.l d0, a0
db 0x42, 0xE7 ; 010456: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010458: provisional 68k pea.l $10462(pc)
db 0x61, 0x00, 0xB8, 0xF2 ; 01045C: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 010460: provisional 68k bra.b $10464
db 0x20, 0x00 ; 010462: provisional 68k move.l d0, d0
db 0x2F, 0x08 ; 010464: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xB7, 0xEC ; 010466: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 01046A: provisional 68k move.w (a7)+, ccr
db 0x48, 0x7A, 0x00, 0x08 ; 01046C: provisional 68k pea.l $10476(pc)
db 0x61, 0x00, 0xB8, 0xDE ; 010470: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 010474: provisional 68k bra.b $10478
db 0x20, 0x00 ; 010476: provisional 68k move.l d0, d0
db 0x2F, 0x08 ; 010478: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFE, 0x1E ; 01047A: provisional 68k bsr.w $1029a
db 0x61, 0x00, 0xB8, 0xB6 ; 01047E: provisional 68k bsr.w $bd36
db 0x42, 0x47 ; 010482: provisional 68k clr.w d7
db 0x20, 0x28, 0x00, 0x10 ; 010484: provisional 68k move.l $10(a0), d0
db 0x61, 0x00, 0x00, 0x0E ; 010488: provisional 68k bsr.w $10498
db 0x61, 0x00, 0xB8, 0xA8 ; 01048C: provisional 68k bsr.w $bd36
db 0x4C, 0xDF, 0x3F, 0xFF ; 010490: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 010494: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 010496: provisional 68k rts 
