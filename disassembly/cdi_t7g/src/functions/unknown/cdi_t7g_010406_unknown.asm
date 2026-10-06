; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010406–010427, inclusive.
cdi_t7g_entry_010406:
db 0x48, 0xE7, 0x00, 0x84 ; 010406: provisional 68k movem.l a0/a5, -(a7)
db 0x2A, 0x48 ; 01040A: provisional 68k movea.l a0, a5
db 0x20, 0x2D, 0x00, 0x10 ; 01040C: provisional 68k move.l $10(a5), d0
db 0x67, 0x08 ; 010410: provisional 68k beq.b $1041a
db 0x20, 0x40 ; 010412: provisional 68k movea.l d0, a0
db 0x61, 0x00, 0xFF, 0xE4 ; 010414: provisional 68k bsr.w $103fa
db 0x65, 0x08 ; 010418: provisional 68k bcs.b $10422
db 0x2A, 0x6D, 0x00, 0x14 ; 01041A: provisional 68k movea.l $14(a5), a5
db 0x20, 0x0D ; 01041E: provisional 68k move.l a5, d0
db 0x66, 0xEA ; 010420: provisional 68k bne.b $1040c
db 0x4C, 0xDF, 0x21, 0x00 ; 010422: provisional 68k movem.l (a7)+, a0/a5
db 0x4E, 0x75 ; 010426: provisional 68k rts 
