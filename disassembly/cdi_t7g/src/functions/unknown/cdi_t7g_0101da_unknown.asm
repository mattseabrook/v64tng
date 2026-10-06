; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0101DA–010201, inclusive.
cdi_t7g_entry_0101da:
db 0x48, 0xE7, 0x80, 0x40 ; 0101DA: provisional 68k movem.l d0/a1, -(a7)
db 0x30, 0x2D, 0x00, 0x0A ; 0101DE: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 0101E2: provisional 68k mulu.w #$16, d0
db 0x43, 0xFA, 0xFC, 0x8E ; 0101E6: provisional 68k lea.l $fe76(pc), a1
db 0xD2, 0xC0 ; 0101EA: provisional 68k adda.w d0, a1
db 0x41, 0xEE, 0xD0, 0x04 ; 0101EC: provisional 68k lea.l -$2ffc(a6), a0
db 0x0C, 0x69, 0x00, 0x4C, 0x00, 0x14 ; 0101F0: provisional 68k cmpi.w #$4c, $14(a1)
db 0x6E, 0x04 ; 0101F6: provisional 68k bgt.b $101fc
db 0x41, 0xEE, 0xD0, 0x14 ; 0101F8: provisional 68k lea.l -$2fec(a6), a0
db 0x4C, 0xDF, 0x02, 0x01 ; 0101FC: provisional 68k movem.l (a7)+, d0/a1
db 0x4E, 0x75 ; 010200: provisional 68k rts 
