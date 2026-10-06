; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E94C–00E96D, inclusive.
cdi_t7g_entry_00e94c:
db 0x17, 0x32 ; file 00E94C
db 0x2B, 0x48, 0x00, 0x44 ; 00E94E: provisional 68k move.l a0, $44(a5)
db 0x2F, 0x0C ; 00E952: provisional 68k move.l a4, -(a7)
db 0x2F, 0x2D, 0x00, 0x44 ; 00E954: provisional 68k move.l $44(a5), -(a7)
db 0x61, 0x00, 0x26, 0x78 ; 00E958: provisional 68k bsr.w $10fd2
db 0x2F, 0x0C ; 00E95C: provisional 68k move.l a4, -(a7)
db 0x61, 0x00, 0xD8, 0x18 ; 00E95E: provisional 68k bsr.w $c178
db 0x2D, 0x48, 0xAC, 0xBE ; 00E962: provisional 68k move.l a0, -$5342(a6)
db 0x53, 0x6E, 0xAC, 0xBA ; 00E966: provisional 68k subq.w #$1, -$5346(a6)
db 0x30, 0x1F ; 00E96A: provisional 68k move.w (a7)+, d0
db 0x4E, 0x75 ; 00E96C: provisional 68k rts 
