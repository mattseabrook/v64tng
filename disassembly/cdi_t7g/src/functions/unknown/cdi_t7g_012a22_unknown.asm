; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012A22–012A3D, inclusive.
cdi_t7g_entry_012a22:
db 0x2F, 0x0D ; 012A22: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 012A24: provisional 68k movea.l $8(a7), a5
db 0x3B, 0x6F, 0x00, 0x0C, 0x00, 0x26 ; 012A28: provisional 68k move.w $c(a7), $26(a5)
db 0x3B, 0x6F, 0x00, 0x0E, 0x00, 0x28 ; 012A2E: provisional 68k move.w $e(a7), $28(a5)
db 0x2A, 0x5F ; 012A34: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 012A36: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 012A3A: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 012A3C: provisional 68k rts 
