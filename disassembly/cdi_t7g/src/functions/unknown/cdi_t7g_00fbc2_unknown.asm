; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FBC2–00FBD5, inclusive.
cdi_t7g_entry_00fbc2:
db 0x2F, 0x08 ; 00FBC2: provisional 68k move.l a0, -(a7)
db 0x20, 0x08 ; 00FBC4: provisional 68k move.l a0, d0
db 0x67, 0x0C ; 00FBC6: provisional 68k beq.b $fbd4
db 0x41, 0xEE, 0xC0, 0xFA ; 00FBC8: provisional 68k lea.l -$3f06(a6), a0
db 0x90, 0x88 ; 00FBCC: provisional 68k sub.l a0, d0
db 0x20, 0x5F ; 00FBCE: provisional 68k movea.l (a7)+, a0
db 0x80, 0xFC, 0x00, 0x26 ; 00FBD0: provisional 68k divu.w #$26, d0
db 0x4E, 0x75 ; 00FBD4: provisional 68k rts 
