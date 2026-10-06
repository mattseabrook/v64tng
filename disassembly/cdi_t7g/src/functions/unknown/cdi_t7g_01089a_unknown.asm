; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01089A–0108E5, inclusive.
cdi_t7g_entry_01089a:
db 0x48, 0xE7 ; file 01089A
db 0xFF, 0x84 ; 01089C: provisional 68k dc.w $ff84
db 0x2A, 0x6F, 0x00, 0x2C ; 01089E: provisional 68k movea.l $2c(a7), a5
db 0x36, 0x2F, 0x00, 0x30 ; 0108A2: provisional 68k move.w $30(a7), d3
db 0x38, 0x2F, 0x00, 0x32 ; 0108A6: provisional 68k move.w $32(a7), d4
db 0x3C, 0x2F, 0x00, 0x34 ; 0108AA: provisional 68k move.w $34(a7), d6
db 0x61, 0x00, 0x00, 0x36 ; 0108AE: provisional 68k bsr.w $108e6
db 0x4C, 0xDF, 0x21, 0xFF ; 0108B2: provisional 68k movem.l (a7)+, d0-d7/a0/a5
db 0x2F, 0x57, 0x00, 0x0A ; 0108B6: provisional 68k move.l (a7), $a(a7)
db 0x4F, 0xEF, 0x00, 0x0A ; 0108BA: provisional 68k lea.l $a(a7), a7
db 0x4E, 0x75 ; 0108BE: provisional 68k rts 
db 0x48, 0xE7, 0xFF, 0x84 ; 0108C0: provisional 68k movem.l d0-d7/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x2C ; 0108C4: provisional 68k movea.l $2c(a7), a5
db 0x36, 0x2F, 0x00, 0x30 ; 0108C8: provisional 68k move.w $30(a7), d3
db 0x38, 0x2D, 0x00, 0x20 ; 0108CC: provisional 68k move.w $20(a5), d4
db 0x3C, 0x2D, 0x00, 0x1E ; 0108D0: provisional 68k move.w $1e(a5), d6
db 0x61, 0x00, 0x00, 0x10 ; 0108D4: provisional 68k bsr.w $108e6
db 0x4C, 0xDF, 0x21, 0xFF ; 0108D8: provisional 68k movem.l (a7)+, d0-d7/a0/a5
db 0x2F, 0x57, 0x00, 0x06 ; 0108DC: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 0108E0: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 0108E4: provisional 68k rts 
