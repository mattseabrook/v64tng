; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D666–00D6A1, inclusive.
cdi_t7g_entry_00d666:
db 0x48, 0xE7, 0xFF, 0xFC ; 00D666: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x30, 0x2F, 0x00, 0x3C ; 00D66A: provisional 68k move.w $3c(a7), d0
db 0x61, 0x00, 0x03, 0xC0 ; 00D66E: provisional 68k bsr.w $da30
db 0x61, 0x00, 0x03, 0xCC ; 00D672: provisional 68k bsr.w $da40
db 0x3E, 0x2D, 0x00, 0x58 ; 00D676: provisional 68k move.w $58(a5), d7
db 0x67, 0x1A ; 00D67A: provisional 68k beq.b $d696
db 0x41, 0xED, 0x00, 0x5A ; 00D67C: provisional 68k lea.l $5a(a5), a0
db 0x53, 0x47 ; 00D680: provisional 68k subq.w #$1, d7
db 0x48, 0xE7, 0x01, 0x84 ; 00D682: provisional 68k movem.l d7/a0/a5, -(a7)
db 0x20, 0x50 ; 00D686: provisional 68k movea.l (a0), a0
db 0x61, 0x00, 0x04, 0x3E ; 00D688: provisional 68k bsr.w $dac8
db 0x4C, 0xDF, 0x21, 0x80 ; 00D68C: provisional 68k movem.l (a7)+, d7/a0/a5
db 0x58, 0x48 ; 00D690: provisional 68k addq.w #$4, a0
db 0x51, 0xCF, 0xFF, 0xEE ; 00D692: provisional 68k dbra d7, $d682
db 0x4C, 0xDF, 0x3F, 0xFF ; 00D696: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x02 ; 00D69A: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00D69E: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00D6A0: provisional 68k rts 
