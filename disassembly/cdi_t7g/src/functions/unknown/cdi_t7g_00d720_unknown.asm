; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D720–00D751, inclusive.
cdi_t7g_entry_00d720:
db 0x48, 0xE7, 0x81, 0xE4 ; 00D720: provisional 68k movem.l d0/d7/a0-a2/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x1C ; 00D724: provisional 68k move.w $1c(a7), d0
db 0x61, 0x00, 0x03, 0x06 ; 00D728: provisional 68k bsr.w $da30
db 0x3E, 0x2D, 0x00, 0x58 ; 00D72C: provisional 68k move.w $58(a5), d7
db 0x67, 0x14 ; 00D730: provisional 68k beq.b $d746
db 0x43, 0xED, 0x00, 0x5A ; 00D732: provisional 68k lea.l $5a(a5), a1
db 0x53, 0x47 ; 00D736: provisional 68k subq.w #$1, d7
db 0x24, 0x59 ; 00D738: provisional 68k movea.l (a1)+, a2
db 0x2F, 0x0D ; 00D73A: provisional 68k move.l a5, -(a7)
db 0x2F, 0x0A ; 00D73C: provisional 68k move.l a2, -(a7)
db 0x61, 0x00, 0x29, 0xF4 ; 00D73E: provisional 68k bsr.w $10134
db 0x51, 0xCF, 0xFF, 0xF4 ; 00D742: provisional 68k dbra d7, $d738
db 0x4C, 0xDF, 0x27, 0x81 ; 00D746: provisional 68k movem.l (a7)+, d0/d7/a0-a2/a5
db 0x2F, 0x57, 0x00, 0x02 ; 00D74A: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00D74E: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00D750: provisional 68k rts 
