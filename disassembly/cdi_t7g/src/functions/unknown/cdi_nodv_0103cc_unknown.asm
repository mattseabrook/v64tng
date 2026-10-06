; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0103CC–0103F9, inclusive.
cdi_nodv_entry_0103cc:
db 0x48, 0xE7, 0xFF, 0xFC ; 0103CC: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x32, 0x2F, 0x00, 0x3C ; 0103D0: provisional 68k move.w $3c(a7), d1
db 0x34, 0x2F, 0x00, 0x3E ; 0103D4: provisional 68k move.w $3e(a7), d2
db 0x61, 0x00, 0x01, 0x0A ; 0103D8: provisional 68k bsr.w $104e4
db 0x4C, 0xDF, 0x3F, 0xFF ; 0103DC: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 0103E0: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 0103E2: provisional 68k rts 
db 0x2D, 0x6F, 0x00, 0x04, 0xC0, 0xE4 ; 0103E4: provisional 68k move.l $4(a7), -$3f1c(a6)
db 0x2D, 0x6F, 0x00, 0x08, 0xC0, 0xE8 ; 0103EA: provisional 68k move.l $8(a7), -$3f18(a6)
db 0x2F, 0x57, 0x00, 0x08 ; 0103F0: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 0103F4: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 0103F8: provisional 68k rts 
