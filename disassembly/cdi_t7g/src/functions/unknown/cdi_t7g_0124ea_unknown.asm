; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0124EA–0124FD, inclusive.
cdi_t7g_entry_0124ea:
db 0x61, 0x00, 0x9B, 0x3E ; 0124EA: provisional 68k bsr.w $c02a
db 0x2B, 0x48, 0x00, 0x26 ; 0124EE: provisional 68k move.l a0, $26(a5)
db 0x4E, 0x75 ; 0124F2: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 0124F4: provisional 68k movem.l -$3018(a6), d1-d3
db 0x3F, 0x03 ; 0124FA: provisional 68k move.w d3, -(a7)
db 0x2F, 0x02 ; 0124FC: provisional 68k move.l d2, -(a7)
