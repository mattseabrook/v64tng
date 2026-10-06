; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010EDC–010EF9, inclusive.
cdi_t7g_entry_010edc:
db 0x20, 0x00 ; file 010EDC
db 0x2F, 0x0D ; 010EDE: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xF4, 0x8A ; 010EE0: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 010EE4: provisional 68k rts 
db 0x4E, 0x75 ; 010EE6: provisional 68k rts 
db 0x2F, 0x2D, 0x00, 0x20 ; 010EE8: provisional 68k move.l $20(a5), -(a7)
db 0x61, 0x00, 0xF1, 0xF6 ; 010EEC: provisional 68k bsr.w $100e4
db 0x2F, 0x2D, 0x00, 0x24 ; 010EF0: provisional 68k move.l $24(a5), -(a7)
db 0x61, 0x00, 0xF1, 0xEE ; 010EF4: provisional 68k bsr.w $100e4
db 0x4E, 0x75 ; 010EF8: provisional 68k rts 
