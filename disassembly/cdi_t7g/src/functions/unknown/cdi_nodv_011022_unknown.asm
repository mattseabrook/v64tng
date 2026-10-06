; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011022–011059, inclusive.
cdi_nodv_entry_011022:
db 0x48, 0xE7, 0x80, 0x40 ; 011022: provisional 68k movem.l d0/a1, -(a7)
db 0x91, 0xC8 ; 011026: provisional 68k suba.l a0, a0
db 0x43, 0xEE, 0xD0, 0x14 ; 011028: provisional 68k lea.l -$2fec(a6), a1
db 0x42, 0x80 ; 01102C: provisional 68k clr.l d0
db 0x30, 0x2F, 0x00, 0x0C ; 01102E: provisional 68k move.w $c(a7), d0
db 0x67, 0x16 ; 011032: provisional 68k beq.b $1104a
db 0x6A, 0x08 ; 011034: provisional 68k bpl.b $1103e
db 0x43, 0xEE, 0xD0, 0x04 ; 011036: provisional 68k lea.l -$2ffc(a6), a1
db 0xC0, 0x7C, 0x7F, 0xFF ; 01103A: provisional 68k and.w #$7fff, d0
db 0xC0, 0xE9, 0x00, 0x00 ; 01103E: provisional 68k mulu.w $0(a1), d0
db 0x20, 0x69, 0x00, 0x0C ; 011042: provisional 68k movea.l $c(a1), a0
db 0xD1, 0xC0 ; 011046: provisional 68k adda.l d0, a0
db 0x60, 0x02 ; 011048: provisional 68k bra.b $1104c
db 0x4E, 0x71 ; 01104A: provisional 68k nop 
db 0x4C, 0xDF, 0x02, 0x01 ; 01104C: provisional 68k movem.l (a7)+, d0/a1
db 0x2F, 0x57, 0x00, 0x02 ; 011050: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 011054: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 011058: provisional 68k rts 
