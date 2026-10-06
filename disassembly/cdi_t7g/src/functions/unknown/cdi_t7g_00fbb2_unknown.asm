; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FBB2–00FBC1, inclusive.
cdi_t7g_entry_00fbb2:
db 0x2F, 0x00 ; 00FBB2: provisional 68k move.l d0, -(a7)
db 0x43, 0xEE, 0xC0, 0xFA ; 00FBB4: provisional 68k lea.l -$3f06(a6), a1
db 0xC0, 0xFC, 0x00, 0x26 ; 00FBB8: provisional 68k mulu.w #$26, d0
db 0xD2, 0xC0 ; 00FBBC: provisional 68k adda.w d0, a1
db 0x20, 0x1F ; 00FBBE: provisional 68k move.l (a7)+, d0
db 0x4E, 0x75 ; 00FBC0: provisional 68k rts 
