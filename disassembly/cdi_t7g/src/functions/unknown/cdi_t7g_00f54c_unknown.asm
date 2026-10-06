; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F54C–00F579, inclusive.
cdi_t7g_entry_00f54c:
db 0x48, 0xE7, 0xFF, 0xFC ; 00F54C: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x32, 0x2F, 0x00, 0x3C ; 00F550: provisional 68k move.w $3c(a7), d1
db 0x34, 0x2F, 0x00, 0x3E ; 00F554: provisional 68k move.w $3e(a7), d2
db 0x61, 0x00, 0x01, 0x0A ; 00F558: provisional 68k bsr.w $f664
db 0x4C, 0xDF, 0x3F, 0xFF ; 00F55C: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 00F560: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00F562: provisional 68k rts 
db 0x2D, 0x6F, 0x00, 0x04, 0xC0, 0xE4 ; 00F564: provisional 68k move.l $4(a7), -$3f1c(a6)
db 0x2D, 0x6F, 0x00, 0x08, 0xC0, 0xE8 ; 00F56A: provisional 68k move.l $8(a7), -$3f18(a6)
db 0x2F, 0x57, 0x00, 0x08 ; 00F570: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 00F574: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 00F578: provisional 68k rts 
