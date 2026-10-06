; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F76A–00F789, inclusive.
cdi_t7g_entry_00f76a:
db 0x48, 0xE7, 0xF0, 0x00 ; 00F76A: provisional 68k movem.l d0-d3, -(a7)
db 0x3D, 0x7C, 0xFF, 0xFF, 0xC0, 0xEE ; 00F76E: provisional 68k move.w #$ffff, -$3f12(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F774: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 00F778: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x01 ; 00F77C: provisional 68k move.w #$1, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00F780: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4C, 0xDF, 0x00, 0x0F ; 00F784: provisional 68k movem.l (a7)+, d0-d3
db 0x4E, 0x75 ; 00F788: provisional 68k rts 
