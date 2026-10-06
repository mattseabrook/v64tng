; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FA54–00FA77, inclusive.
cdi_t7g_entry_00fa54:
db 0x41, 0xEE, 0xC0, 0xFA ; 00FA54: provisional 68k lea.l -$3f06(a6), a0
db 0x2D, 0x48, 0xC0, 0xF6 ; 00FA58: provisional 68k move.l a0, -$3f0a(a6)
db 0x30, 0x3C, 0x00, 0x62 ; 00FA5C: provisional 68k move.w #$62, d0
db 0x43, 0xE8, 0x00, 0x26 ; 00FA60: provisional 68k lea.l $26(a0), a1
db 0x42, 0xA8, 0x00, 0x12 ; 00FA64: provisional 68k clr.l $12(a0)
db 0x21, 0x49, 0x00, 0x22 ; 00FA68: provisional 68k move.l a1, $22(a0)
db 0x20, 0x49 ; 00FA6C: provisional 68k movea.l a1, a0
db 0x51, 0xC8, 0xFF, 0xF0 ; 00FA6E: provisional 68k dbra d0, $fa60
db 0x42, 0xA8, 0x00, 0x22 ; 00FA72: provisional 68k clr.l $22(a0)
db 0x4E, 0x75 ; 00FA76: provisional 68k rts 
