; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CA14–00CA39, inclusive.
cdi_nodv_entry_00ca14:
db 0x41, 0xEE, 0xA8, 0xF2 ; 00CA14: provisional 68k lea.l -$570e(a6), a0
db 0x43, 0xEE, 0xA8, 0xFA ; 00CA18: provisional 68k lea.l -$5706(a6), a1
db 0x20, 0x3C, 0xFF, 0xFF, 0xD1, 0x58 ; 00CA1C: provisional 68k move.l #$ffffd158, d0
db 0x45, 0xF6, 0x08, 0x00 ; 00CA22: provisional 68k lea.l (a6, d0.l), a2
db 0x30, 0x3C, 0x00, 0x01 ; 00CA26: provisional 68k move.w #$1, d0
db 0x20, 0xCA ; 00CA2A: provisional 68k move.l a2, (a0)+
db 0x42, 0x19 ; 00CA2C: provisional 68k clr.b (a1)+
db 0xD5, 0xFC, 0x00, 0x00, 0x40, 0x00 ; 00CA2E: provisional 68k adda.l #$4000, a2
db 0x51, 0xC8, 0xFF, 0xF4 ; 00CA34: provisional 68k dbra d0, $ca2a
db 0x4E, 0x75 ; 00CA38: provisional 68k rts 
