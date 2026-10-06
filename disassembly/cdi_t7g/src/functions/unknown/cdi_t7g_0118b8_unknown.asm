; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0118B8–0118E3, inclusive.
cdi_t7g_entry_0118b8:
db 0x48, 0xE7, 0x00, 0xC4 ; 0118B8: provisional 68k movem.l a0-a1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x10 ; 0118BC: provisional 68k movea.l $10(a7), a5
db 0x22, 0x6F, 0x00, 0x14 ; 0118C0: provisional 68k movea.l $14(a7), a1
db 0x2F, 0x2D, 0x00, 0x44 ; 0118C4: provisional 68k move.l $44(a5), -(a7)
db 0x61, 0x00, 0xE8, 0x1A ; 0118C8: provisional 68k bsr.w $100e4
db 0x2F, 0x0D ; 0118CC: provisional 68k move.l a5, -(a7)
db 0x2F, 0x09 ; 0118CE: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0xE8, 0x62 ; 0118D0: provisional 68k bsr.w $10134
db 0x2B, 0x49, 0x00, 0x44 ; 0118D4: provisional 68k move.l a1, $44(a5)
db 0x4C, 0xDF, 0x23, 0x00 ; 0118D8: provisional 68k movem.l (a7)+, a0-a1/a5
db 0x2F, 0x57, 0x00, 0x08 ; 0118DC: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 0118E0: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 0118E2: provisional 68k rts 
