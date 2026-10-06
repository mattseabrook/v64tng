; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E4E6–00E521, inclusive.
cdi_nodv_entry_00e4e6:
db 0x48, 0xE7, 0xFF, 0xFC ; 00E4E6: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x30, 0x2F, 0x00, 0x3C ; 00E4EA: provisional 68k move.w $3c(a7), d0
db 0x61, 0x00, 0x03, 0xC0 ; 00E4EE: provisional 68k bsr.w $e8b0
db 0x61, 0x00, 0x03, 0xCC ; 00E4F2: provisional 68k bsr.w $e8c0
db 0x3E, 0x2D, 0x00, 0x58 ; 00E4F6: provisional 68k move.w $58(a5), d7
db 0x67, 0x1A ; 00E4FA: provisional 68k beq.b $e516
db 0x41, 0xED, 0x00, 0x5A ; 00E4FC: provisional 68k lea.l $5a(a5), a0
db 0x53, 0x47 ; 00E500: provisional 68k subq.w #$1, d7
db 0x48, 0xE7, 0x01, 0x84 ; 00E502: provisional 68k movem.l d7/a0/a5, -(a7)
db 0x20, 0x50 ; 00E506: provisional 68k movea.l (a0), a0
db 0x61, 0x00, 0x04, 0x3E ; 00E508: provisional 68k bsr.w $e948
db 0x4C, 0xDF, 0x21, 0x80 ; 00E50C: provisional 68k movem.l (a7)+, d7/a0/a5
db 0x58, 0x48 ; 00E510: provisional 68k addq.w #$4, a0
db 0x51, 0xCF, 0xFF, 0xEE ; 00E512: provisional 68k dbra d7, $e502
db 0x4C, 0xDF, 0x3F, 0xFF ; 00E516: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x02 ; 00E51A: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00E51E: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00E520: provisional 68k rts 
