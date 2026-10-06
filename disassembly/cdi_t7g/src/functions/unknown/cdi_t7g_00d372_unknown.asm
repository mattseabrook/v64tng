; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D372–00D3A1, inclusive.
cdi_t7g_entry_00d372:
db 0x2F, 0x00 ; 00D372: provisional 68k move.l d0, -(a7)
db 0x42, 0x80 ; 00D374: provisional 68k clr.l d0
db 0x30, 0x2F, 0x00, 0x08 ; 00D376: provisional 68k move.w $8(a7), d0
db 0x2D, 0x40, 0xAB, 0xAE ; 00D37A: provisional 68k move.l d0, -$5452(a6)
db 0x30, 0x2F, 0x00, 0x0A ; 00D37E: provisional 68k move.w $a(a7), d0
db 0x2D, 0x40, 0xAB, 0xB2 ; 00D382: provisional 68k move.l d0, -$544e(a6)
db 0x20, 0x1F ; 00D386: provisional 68k move.l (a7)+, d0
db 0x2E, 0x9F ; 00D388: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00D38A: provisional 68k rts 
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0xC8, 0xAB, 0xAE ; 00D38C: provisional 68k move.l #$c8, -$5452(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x01, 0xAB, 0xB2 ; 00D394: provisional 68k move.l #$1, -$544e(a6)
db 0x42, 0xAE, 0xAB, 0xB6 ; 00D39C: provisional 68k clr.l -$544a(a6)
db 0x4E, 0x75 ; 00D3A0: provisional 68k rts 
