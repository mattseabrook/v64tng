; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FD78–00FDAD, inclusive.
cdi_t7g_entry_00fd78:
db 0x48, 0xE7, 0x70, 0xC0 ; 00FD78: provisional 68k movem.l d1-d3/a0-a1, -(a7)
db 0x70, 0xFF ; 00FD7C: provisional 68k moveq #$ff, d0
db 0x52, 0x40 ; 00FD7E: provisional 68k addq.w #$1, d0
db 0x32, 0x00 ; 00FD80: provisional 68k move.w d0, d1
db 0x74, 0x00 ; 00FD82: provisional 68k moveq #$0, d2
db 0x4A, 0x31, 0x20, 0x00 ; 00FD84: provisional 68k tst.b (a1, d2.w)
db 0x67, 0x12 ; 00FD88: provisional 68k beq.b $fd9c
db 0x16, 0x30, 0x10, 0x00 ; 00FD8A: provisional 68k move.b (a0, d1.w), d3
db 0x67, 0x16 ; 00FD8E: provisional 68k beq.b $fda6
db 0xB6, 0x31, 0x20, 0x00 ; 00FD90: provisional 68k cmp.b (a1, d2.w), d3
db 0x66, 0xE8 ; 00FD94: provisional 68k bne.b $fd7e
db 0x52, 0x41 ; 00FD96: provisional 68k addq.w #$1, d1
db 0x52, 0x42 ; 00FD98: provisional 68k addq.w #$1, d2
db 0x60, 0xE8 ; 00FD9A: provisional 68k bra.b $fd84
db 0x4C, 0xDF, 0x03, 0x0E ; 00FD9C: provisional 68k movem.l (a7)+, d1-d3/a0-a1
db 0x02, 0x3C, 0x00, 0x0B ; 00FDA0: provisional 68k andi.b #$b, ccr
db 0x4E, 0x75 ; 00FDA4: provisional 68k rts 
db 0x4C, 0xDF, 0x03, 0x0E ; 00FDA6: provisional 68k movem.l (a7)+, d1-d3/a0-a1
db 0x70, 0x00 ; 00FDAA: provisional 68k moveq #$0, d0
db 0x4E, 0x75 ; 00FDAC: provisional 68k rts 
