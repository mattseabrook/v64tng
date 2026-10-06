; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0118C6–0118D1, inclusive.
cdi_nodv_entry_0118c6:
db 0x26, 0x01 ; 0118C6: provisional 68k move.l d1, d3
db 0x38, 0x02 ; 0118C8: provisional 68k move.w d2, d4
db 0x30, 0x04 ; 0118CA: provisional 68k move.w d4, d0
db 0xC0, 0xFC, 0x09, 0x38 ; 0118CC: provisional 68k mulu.w #$938, d0
db 0x50, 0x80 ; 0118D0: provisional 68k addq.l #$8, d0
