; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0107EE–01080B, inclusive.
cdi_t7g_entry_0107ee:
db 0x3F, 0x00 ; 0107EE: provisional 68k move.w d0, -(a7)
db 0x2F, 0x0D ; 0107F0: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0x00, 0x18 ; 0107F2: provisional 68k bsr.w $1080c
db 0x20, 0x3C, 0x10, 0x00, 0x00, 0x00 ; 0107F6: provisional 68k move.l #$10000000, d0
db 0xC2, 0xED, 0x00, 0x22 ; 0107FC: provisional 68k mulu.w $22(a5), d1
db 0x53, 0x41 ; 010800: provisional 68k subq.w #$1, d1
db 0x67, 0x06 ; 010802: provisional 68k beq.b $1080a
db 0x20, 0xC0 ; 010804: provisional 68k move.l d0, (a0)+
db 0x51, 0xC9, 0xFF, 0xFC ; 010806: provisional 68k dbra d1, $10804
db 0x4E, 0x75 ; 01080A: provisional 68k rts 
