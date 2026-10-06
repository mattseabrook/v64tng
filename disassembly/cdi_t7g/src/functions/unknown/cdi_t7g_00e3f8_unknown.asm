; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E3F8–00E413, inclusive.
cdi_t7g_entry_00e3f8:
db 0x61, 0x00, 0x00, 0x48 ; 00E3F8: provisional 68k bsr.w $e442
db 0x08, 0x00, 0x00, 0x08 ; 00E3FC: provisional 68k btst.b #$8, d0
db 0x67, 0x04 ; 00E400: provisional 68k beq.b $e406
db 0x61, 0x00, 0x00, 0x5E ; 00E402: provisional 68k bsr.w $e462
db 0x08, 0x00, 0x00, 0x07 ; 00E406: provisional 68k btst.b #$7, d0
db 0x67, 0x04 ; 00E40A: provisional 68k beq.b $e410
db 0x61, 0x00, 0x00, 0x7E ; 00E40C: provisional 68k bsr.w $e48c
db 0x08, 0x00, 0x00, 0x0F ; 00E410: provisional 68k btst.b #$f, d0
