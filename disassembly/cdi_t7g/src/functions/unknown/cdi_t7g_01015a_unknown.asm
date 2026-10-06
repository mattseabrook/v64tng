; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01015A–010175, inclusive.
cdi_t7g_entry_01015a:
db 0x61, 0x00, 0x00, 0xA6 ; 01015A: provisional 68k bsr.w $10202
db 0x61, 0x00, 0x00, 0x7A ; 01015E: provisional 68k bsr.w $101da
db 0x2B, 0x68, 0x00, 0x08, 0x00, 0x14 ; 010162: provisional 68k move.l $8(a0), $14(a5)
db 0x21, 0x4D, 0x00, 0x08 ; 010168: provisional 68k move.l a5, $8(a0)
db 0x52, 0x68, 0x00, 0x04 ; 01016C: provisional 68k addq.w #$1, $4(a0)
db 0x53, 0x68, 0x00, 0x06 ; 010170: provisional 68k subq.w #$1, $6(a0)
db 0x4E, 0x75 ; 010174: provisional 68k rts 
