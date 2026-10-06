; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01105A–011081, inclusive.
cdi_nodv_entry_01105a:
db 0x48, 0xE7, 0x80, 0x40 ; 01105A: provisional 68k movem.l d0/a1, -(a7)
db 0x30, 0x2D, 0x00, 0x0A ; 01105E: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 011062: provisional 68k mulu.w #$16, d0
db 0x43, 0xFA, 0xFC, 0x8E ; 011066: provisional 68k lea.l $10cf6(pc), a1
db 0xD2, 0xC0 ; 01106A: provisional 68k adda.w d0, a1
db 0x41, 0xEE, 0xD0, 0x04 ; 01106C: provisional 68k lea.l -$2ffc(a6), a0
db 0x0C, 0x69, 0x00, 0x4C, 0x00, 0x14 ; 011070: provisional 68k cmpi.w #$4c, $14(a1)
db 0x6E, 0x04 ; 011076: provisional 68k bgt.b $1107c
db 0x41, 0xEE, 0xD0, 0x14 ; 011078: provisional 68k lea.l -$2fec(a6), a0
db 0x4C, 0xDF, 0x02, 0x01 ; 01107C: provisional 68k movem.l (a7)+, d0/a1
db 0x4E, 0x75 ; 011080: provisional 68k rts 
