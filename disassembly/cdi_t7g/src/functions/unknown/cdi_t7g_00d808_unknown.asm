; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D808–00D825, inclusive.
cdi_t7g_entry_00d808:
db 0x48, 0xE7, 0x80, 0x04 ; 00D808: provisional 68k movem.l d0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x0C ; 00D80C: provisional 68k move.w $c(a7), d0
db 0x61, 0x00, 0x02, 0x1E ; 00D810: provisional 68k bsr.w $da30
db 0x3B, 0x6F, 0x00, 0x0E, 0x00, 0x1C ; 00D814: provisional 68k move.w $e(a7), $1c(a5)
db 0x50, 0xED, 0x00, 0x38 ; 00D81A: provisional 68k st.b $38(a5)
db 0x4C, 0xDF, 0x20, 0x01 ; 00D81E: provisional 68k movem.l (a7)+, d0/a5
db 0x2E, 0x9F ; 00D822: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00D824: provisional 68k rts 
