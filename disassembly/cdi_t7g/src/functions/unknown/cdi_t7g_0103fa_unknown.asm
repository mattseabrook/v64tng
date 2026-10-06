; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0103FA–010405, inclusive.
cdi_t7g_entry_0103fa:
db 0x61, 0x00, 0x00, 0x2C ; 0103FA: provisional 68k bsr.w $10428
db 0x65, 0x04 ; 0103FE: provisional 68k bcs.b $10404
db 0x61, 0x00, 0x00, 0x04 ; 010400: provisional 68k bsr.w $10406
db 0x4E, 0x75 ; 010404: provisional 68k rts 
