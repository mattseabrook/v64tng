; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F8AC–00F8E5, inclusive.
cdi_t7g_entry_00f8ac:
db 0x48, 0xE7, 0x80, 0xC0 ; 00F8AC: provisional 68k movem.l d0/a0-a1, -(a7)
db 0x30, 0x2F, 0x00, 0x10 ; 00F8B0: provisional 68k move.w $10(a7), d0
db 0x61, 0x00, 0x02, 0xFC ; 00F8B4: provisional 68k bsr.w $fbb2
db 0x51, 0xE9, 0x00, 0x01 ; 00F8B8: provisional 68k sf.b $1(a1)
db 0x20, 0x49 ; 00F8BC: provisional 68k movea.l a1, a0
db 0x30, 0x2E, 0xCF, 0xD2 ; 00F8BE: provisional 68k move.w -$302e(a6), d0
db 0x61, 0x00, 0x02, 0xEE ; 00F8C2: provisional 68k bsr.w $fbb2
db 0xB3, 0xC8 ; 00F8C6: provisional 68k cmpa.l a0, a1
db 0x67, 0x0C ; 00F8C8: provisional 68k beq.b $f8d6
db 0x20, 0x29, 0x00, 0x12 ; 00F8CA: provisional 68k move.l $12(a1), d0
db 0x67, 0x0A ; 00F8CE: provisional 68k beq.b $f8da
db 0x22, 0x40 ; 00F8D0: provisional 68k movea.l d0, a1
db 0x60, 0x00, 0xFF, 0xF2 ; 00F8D2: provisional 68k bra.w $f8c6
db 0x42, 0x6E, 0xCF, 0xD2 ; 00F8D6: provisional 68k clr.w -$302e(a6)
db 0x4C, 0xDF, 0x03, 0x01 ; 00F8DA: provisional 68k movem.l (a7)+, d0/a0-a1
db 0x2F, 0x57, 0x00, 0x02 ; 00F8DE: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00F8E2: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00F8E4: provisional 68k rts 
