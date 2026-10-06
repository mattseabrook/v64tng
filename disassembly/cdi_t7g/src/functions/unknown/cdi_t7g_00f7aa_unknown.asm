; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F7AA–00F7CB, inclusive.
cdi_t7g_entry_00f7aa:
db 0x48, 0xE7, 0xF0, 0x00 ; 00F7AA: provisional 68k movem.l d0-d3, -(a7)
db 0x20, 0x2F, 0x00, 0x14 ; 00F7AE: provisional 68k move.l $14(a7), d0
db 0x26, 0x00 ; 00F7B2: provisional 68k move.l d0, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F7B4: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 00F7B8: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x04 ; 00F7BC: provisional 68k move.w #$4, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00F7C0: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4C, 0xDF, 0x00, 0x0F ; 00F7C4: provisional 68k movem.l (a7)+, d0-d3
db 0x2E, 0x9F ; 00F7C8: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00F7CA: provisional 68k rts 
