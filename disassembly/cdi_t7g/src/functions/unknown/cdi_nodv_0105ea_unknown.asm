; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0105EA–010609, inclusive.
cdi_nodv_entry_0105ea:
db 0x48, 0xE7, 0xF0, 0x00 ; 0105EA: provisional 68k movem.l d0-d3, -(a7)
db 0x3D, 0x7C, 0xFF, 0xFF, 0xC0, 0xEE ; 0105EE: provisional 68k move.w #$ffff, -$3f12(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 0105F4: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 0105F8: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x01 ; 0105FC: provisional 68k move.w #$1, d2
db 0x4E, 0x40, 0x00, 0x8E ; 010600: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4C, 0xDF, 0x00, 0x0F ; 010604: provisional 68k movem.l (a7)+, d0-d3
db 0x4E, 0x75 ; 010608: provisional 68k rts 
