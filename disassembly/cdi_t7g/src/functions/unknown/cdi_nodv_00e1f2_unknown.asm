; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E1F2–00E221, inclusive.
cdi_nodv_entry_00e1f2:
db 0x2F, 0x00 ; 00E1F2: provisional 68k move.l d0, -(a7)
db 0x42, 0x80 ; 00E1F4: provisional 68k clr.l d0
db 0x30, 0x2F, 0x00, 0x08 ; 00E1F6: provisional 68k move.w $8(a7), d0
db 0x2D, 0x40, 0xAB, 0xAE ; 00E1FA: provisional 68k move.l d0, -$5452(a6)
db 0x30, 0x2F, 0x00, 0x0A ; 00E1FE: provisional 68k move.w $a(a7), d0
db 0x2D, 0x40, 0xAB, 0xB2 ; 00E202: provisional 68k move.l d0, -$544e(a6)
db 0x20, 0x1F ; 00E206: provisional 68k move.l (a7)+, d0
db 0x2E, 0x9F ; 00E208: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00E20A: provisional 68k rts 
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0xC8, 0xAB, 0xAE ; 00E20C: provisional 68k move.l #$c8, -$5452(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x01, 0xAB, 0xB2 ; 00E214: provisional 68k move.l #$1, -$544e(a6)
db 0x42, 0xAE, 0xAB, 0xB6 ; 00E21C: provisional 68k clr.l -$544a(a6)
db 0x4E, 0x75 ; 00E220: provisional 68k rts 
