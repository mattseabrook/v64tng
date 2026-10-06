; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A46–010A51, inclusive.
cdi_t7g_entry_010a46:
db 0x26, 0x01 ; 010A46: provisional 68k move.l d1, d3
db 0x38, 0x02 ; 010A48: provisional 68k move.w d2, d4
db 0x30, 0x04 ; 010A4A: provisional 68k move.w d4, d0
db 0xC0, 0xFC, 0x09, 0x38 ; 010A4C: provisional 68k mulu.w #$938, d0
db 0x50, 0x80 ; 010A50: provisional 68k addq.l #$8, d0
