; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DF1A–00DF39, inclusive.
cdi_t7g_entry_00df1a:
db 0x48, 0xE7, 0x00, 0x84 ; 00DF1A: provisional 68k movem.l a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 00DF1E: provisional 68k movea.l $c(a7), a5
db 0x20, 0x6D, 0x00, 0x2E ; 00DF22: provisional 68k movea.l $2e(a5), a0
db 0x3B, 0x68, 0x00, 0x20, 0x00, 0x3C ; 00DF26: provisional 68k move.w $20(a0), $3c(a5)
db 0x3B, 0x68, 0x00, 0x1E, 0x00, 0x3E ; 00DF2C: provisional 68k move.w $1e(a0), $3e(a5)
db 0x4C, 0xDF, 0x21, 0x00 ; 00DF32: provisional 68k movem.l (a7)+, a0/a5
db 0x2E, 0x9F ; 00DF36: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00DF38: provisional 68k rts 
