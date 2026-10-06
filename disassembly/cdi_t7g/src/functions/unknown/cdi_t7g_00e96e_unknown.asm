; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E96E–00E97B, inclusive.
cdi_t7g_entry_00e96e:
db 0x2A, 0x6E, 0xAC, 0x8E ; 00E96E: provisional 68k movea.l -$5372(a6), a5
db 0x2F, 0x2D, 0x00, 0x22 ; 00E972: provisional 68k move.l $22(a5), -(a7)
db 0x61, 0x00, 0xC2, 0xE4 ; 00E976: provisional 68k bsr.w $ac5c
db 0x4E, 0x75 ; 00E97A: provisional 68k rts 
