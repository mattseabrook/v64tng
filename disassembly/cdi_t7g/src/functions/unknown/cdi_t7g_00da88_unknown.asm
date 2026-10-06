; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DA88–00DAC7, inclusive.
cdi_t7g_entry_00da88:
db 0x28, 0x6D, 0x00, 0x32 ; 00DA88: provisional 68k movea.l $32(a5), a4
db 0x3F, 0x2D, 0x00, 0x3C ; 00DA8C: provisional 68k move.w $3c(a5), -(a7)
db 0x2F, 0x0C ; 00DA90: provisional 68k move.l a4, -(a7)
db 0x61, 0x00, 0x2D, 0x78 ; 00DA92: provisional 68k bsr.w $1080c
db 0x3E, 0x2D, 0x00, 0x3E ; 00DA96: provisional 68k move.w $3e(a5), d7
db 0x20, 0x3C, 0xD0, 0x00, 0xFC, 0x00 ; 00DA9A: provisional 68k move.l #$d000fc00, d0
db 0x22, 0x3C, 0x10, 0x00, 0x00, 0x00 ; 00DAA0: provisional 68k move.l #$10000000, d1
db 0x24, 0x2E, 0xC0, 0x64 ; 00DAA6: provisional 68k move.l -$3f9c(a6), d2
db 0x84, 0xBC, 0x40, 0x00, 0x00, 0x00 ; 00DAAA: provisional 68k or.l #$40000000, d2
db 0x53, 0x47 ; 00DAB0: provisional 68k subq.w #$1, d7
db 0x20, 0xC0 ; 00DAB2: provisional 68k move.l d0, (a0)+
db 0x20, 0xC1 ; 00DAB4: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00DAB6: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00DAB8: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00DABA: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00DABC: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00DABE: provisional 68k move.l d1, (a0)+
db 0x20, 0xC2 ; 00DAC0: provisional 68k move.l d2, (a0)+
db 0x51, 0xCF, 0xFF, 0xEE ; 00DAC2: provisional 68k dbra d7, $dab2
db 0x4E, 0x75 ; 00DAC6: provisional 68k rts 
