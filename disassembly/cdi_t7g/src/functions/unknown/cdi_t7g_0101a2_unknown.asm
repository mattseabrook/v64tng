; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0101A2–0101D9, inclusive.
cdi_t7g_entry_0101a2:
db 0x48, 0xE7, 0x80, 0x40 ; 0101A2: provisional 68k movem.l d0/a1, -(a7)
db 0x91, 0xC8 ; 0101A6: provisional 68k suba.l a0, a0
db 0x43, 0xEE, 0xD0, 0x14 ; 0101A8: provisional 68k lea.l -$2fec(a6), a1
db 0x42, 0x80 ; 0101AC: provisional 68k clr.l d0
db 0x30, 0x2F, 0x00, 0x0C ; 0101AE: provisional 68k move.w $c(a7), d0
db 0x67, 0x16 ; 0101B2: provisional 68k beq.b $101ca
db 0x6A, 0x08 ; 0101B4: provisional 68k bpl.b $101be
db 0x43, 0xEE, 0xD0, 0x04 ; 0101B6: provisional 68k lea.l -$2ffc(a6), a1
db 0xC0, 0x7C, 0x7F, 0xFF ; 0101BA: provisional 68k and.w #$7fff, d0
db 0xC0, 0xE9, 0x00, 0x00 ; 0101BE: provisional 68k mulu.w $0(a1), d0
db 0x20, 0x69, 0x00, 0x0C ; 0101C2: provisional 68k movea.l $c(a1), a0
db 0xD1, 0xC0 ; 0101C6: provisional 68k adda.l d0, a0
db 0x60, 0x02 ; 0101C8: provisional 68k bra.b $101cc
db 0x4E, 0x71 ; 0101CA: provisional 68k nop 
db 0x4C, 0xDF, 0x02, 0x01 ; 0101CC: provisional 68k movem.l (a7)+, d0/a1
db 0x2F, 0x57, 0x00, 0x02 ; 0101D0: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 0101D4: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 0101D8: provisional 68k rts 
