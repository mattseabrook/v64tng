; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D512–00D531, inclusive.
cdi_t7g_entry_00d512:
db 0x48, 0xE7, 0xC1, 0xC4 ; 00D512: provisional 68k movem.l d0-d1/d7/a0-a1/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x1C ; 00D516: provisional 68k move.w $1c(a7), d0
db 0x61, 0x00, 0x05, 0x14 ; 00D51A: provisional 68k bsr.w $da30
db 0x22, 0x6F, 0x00, 0x1E ; 00D51E: provisional 68k movea.l $1e(a7), a1
db 0x20, 0x09 ; 00D522: provisional 68k move.l a1, d0
db 0x3E, 0x2D, 0x00, 0x58 ; 00D524: provisional 68k move.w $58(a5), d7
db 0x67, 0x3E ; 00D528: provisional 68k beq.b $d568
db 0x41, 0xED, 0x00, 0x5A ; 00D52A: provisional 68k lea.l $5a(a5), a0
db 0x53, 0x47 ; 00D52E: provisional 68k subq.w #$1, d7
db 0xB0, 0x98 ; 00D530: provisional 68k cmp.l (a0)+, d0
