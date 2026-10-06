; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00046E–000493, inclusive.
cdi_t7g_entry_00046e:
db 0x4A, 0x42 ; 00046E: provisional 68k tst.w d2
db 0x66, 0x12 ; 000470: provisional 68k bne.b $484
db 0x42, 0x41 ; 000472: provisional 68k clr.w d1
db 0x14, 0x19 ; 000474: provisional 68k move.b (a1)+, d2
db 0x6A, 0x06 ; 000476: provisional 68k bpl.b $47e
db 0xC4, 0x7C, 0x00, 0x7F ; 000478: provisional 68k and.w #$7f, d2
db 0x72, 0xFF ; 00047C: provisional 68k moveq #$ff, d1
db 0x53, 0x42 ; 00047E: provisional 68k subq.w #$1, d2
db 0x10, 0x19 ; 000480: provisional 68k move.b (a1)+, d0
db 0x4E, 0x75 ; 000482: provisional 68k rts 
db 0x53, 0x42 ; 000484: provisional 68k subq.w #$1, d2
db 0x4A, 0x41 ; 000486: provisional 68k tst.w d1
db 0x67, 0x06 ; 000488: provisional 68k beq.b $490
db 0x10, 0x29, 0xFF, 0xFF ; 00048A: provisional 68k move.b -$1(a1), d0
db 0x4E, 0x75 ; 00048E: provisional 68k rts 
db 0x10, 0x19 ; 000490: provisional 68k move.b (a1)+, d0
db 0x4E, 0x75 ; 000492: provisional 68k rts 
