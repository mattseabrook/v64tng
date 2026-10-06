; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01166E–01168B, inclusive.
cdi_nodv_entry_01166e:
db 0x3F, 0x00 ; 01166E: provisional 68k move.w d0, -(a7)
db 0x2F, 0x0D ; 011670: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0x00, 0x18 ; 011672: provisional 68k bsr.w $1168c
db 0x20, 0x3C, 0x10, 0x00, 0x00, 0x00 ; 011676: provisional 68k move.l #$10000000, d0
db 0xC2, 0xED, 0x00, 0x22 ; 01167C: provisional 68k mulu.w $22(a5), d1
db 0x53, 0x41 ; 011680: provisional 68k subq.w #$1, d1
db 0x67, 0x06 ; 011682: provisional 68k beq.b $1168a
db 0x20, 0xC0 ; 011684: provisional 68k move.l d0, (a0)+
db 0x51, 0xC9, 0xFF, 0xFC ; 011686: provisional 68k dbra d1, $11684
db 0x4E, 0x75 ; 01168A: provisional 68k rts 
