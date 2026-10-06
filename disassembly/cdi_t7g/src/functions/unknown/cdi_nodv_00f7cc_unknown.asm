; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F7CC–00F7ED, inclusive.
cdi_nodv_entry_00f7cc:
db 0x17, 0x32 ; file 00F7CC
db 0x2B, 0x48, 0x00, 0x44 ; 00F7CE: provisional 68k move.l a0, $44(a5)
db 0x2F, 0x0C ; 00F7D2: provisional 68k move.l a4, -(a7)
db 0x2F, 0x2D, 0x00, 0x44 ; 00F7D4: provisional 68k move.l $44(a5), -(a7)
db 0x61, 0x00, 0x26, 0x78 ; 00F7D8: provisional 68k bsr.w $11e52
db 0x2F, 0x0C ; 00F7DC: provisional 68k move.l a4, -(a7)
db 0x61, 0x00, 0xD8, 0x18 ; 00F7DE: provisional 68k bsr.w $cff8
db 0x2D, 0x48, 0xAC, 0xBE ; 00F7E2: provisional 68k move.l a0, -$5342(a6)
db 0x53, 0x6E, 0xAC, 0xBA ; 00F7E6: provisional 68k subq.w #$1, -$5346(a6)
db 0x30, 0x1F ; 00F7EA: provisional 68k move.w (a7)+, d0
db 0x4E, 0x75 ; 00F7EC: provisional 68k rts 
