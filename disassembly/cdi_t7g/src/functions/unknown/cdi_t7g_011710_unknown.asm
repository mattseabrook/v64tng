; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011710–011735, inclusive.
cdi_t7g_entry_011710:
db 0x48, 0xE7, 0xC0, 0x04 ; 011710: provisional 68k movem.l d0-d1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x10 ; 011714: provisional 68k movea.l $10(a7), a5
db 0x30, 0x2F, 0x00, 0x14 ; 011718: provisional 68k move.w $14(a7), d0
db 0x32, 0x2D, 0x00, 0x28 ; 01171C: provisional 68k move.w $28(a5), d1
db 0x3F, 0x01 ; 011720: provisional 68k move.w d1, -(a7)
db 0x3F, 0x00 ; 011722: provisional 68k move.w d0, -(a7)
db 0x2F, 0x0D ; 011724: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFF, 0x9E ; 011726: provisional 68k bsr.w $116c6
db 0x4C, 0xDF, 0x20, 0x03 ; 01172A: provisional 68k movem.l (a7)+, d0-d1/a5
db 0x2F, 0x57, 0x00, 0x06 ; 01172E: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 011732: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 011734: provisional 68k rts 
