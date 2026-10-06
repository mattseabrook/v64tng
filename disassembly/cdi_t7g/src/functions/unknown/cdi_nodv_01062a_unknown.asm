; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01062A–01064B, inclusive.
cdi_nodv_entry_01062a:
db 0x48, 0xE7, 0xF0, 0x00 ; 01062A: provisional 68k movem.l d0-d3, -(a7)
db 0x20, 0x2F, 0x00, 0x14 ; 01062E: provisional 68k move.l $14(a7), d0
db 0x26, 0x00 ; 010632: provisional 68k move.l d0, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 010634: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 010638: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x04 ; 01063C: provisional 68k move.w #$4, d2
db 0x4E, 0x40, 0x00, 0x8E ; 010640: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4C, 0xDF, 0x00, 0x0F ; 010644: provisional 68k movem.l (a7)+, d0-d3
db 0x2E, 0x9F ; 010648: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 01064A: provisional 68k rts 
