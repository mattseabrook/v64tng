; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010FB4–010FD9, inclusive.
cdi_nodv_entry_010fb4:
db 0x48, 0xE7, 0xC0, 0x64 ; 010FB4: provisional 68k movem.l d0-d1/a1-a2/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 010FB8: provisional 68k movea.l $18(a7), a5
db 0x2F, 0x2D, 0x00, 0x14 ; 010FBC: provisional 68k move.l $14(a5), -(a7)
db 0x61, 0x00, 0x00, 0xC0 ; 010FC0: provisional 68k bsr.w $11082
db 0x22, 0x6F, 0x00, 0x20 ; 010FC4: provisional 68k movea.l $20(a7), a1
db 0x61, 0x00, 0x00, 0xE8 ; 010FC8: provisional 68k bsr.w $110b2
db 0x20, 0x5F ; 010FCC: provisional 68k movea.l (a7)+, a0
db 0x4C, 0xDF, 0x26, 0x03 ; 010FCE: provisional 68k movem.l (a7)+, d0-d1/a1-a2/a5
db 0x2F, 0x57, 0x00, 0x08 ; 010FD2: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 010FD6: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 010FD8: provisional 68k rts 
