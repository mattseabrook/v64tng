; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010134–010159, inclusive.
cdi_t7g_entry_010134:
db 0x48, 0xE7, 0xC0, 0x64 ; 010134: provisional 68k movem.l d0-d1/a1-a2/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 010138: provisional 68k movea.l $18(a7), a5
db 0x2F, 0x2D, 0x00, 0x14 ; 01013C: provisional 68k move.l $14(a5), -(a7)
db 0x61, 0x00, 0x00, 0xC0 ; 010140: provisional 68k bsr.w $10202
db 0x22, 0x6F, 0x00, 0x20 ; 010144: provisional 68k movea.l $20(a7), a1
db 0x61, 0x00, 0x00, 0xE8 ; 010148: provisional 68k bsr.w $10232
db 0x20, 0x5F ; 01014C: provisional 68k movea.l (a7)+, a0
db 0x4C, 0xDF, 0x26, 0x03 ; 01014E: provisional 68k movem.l (a7)+, d0-d1/a1-a2/a5
db 0x2F, 0x57, 0x00, 0x08 ; 010152: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 010156: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 010158: provisional 68k rts 
