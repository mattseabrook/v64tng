; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0108D4–0108F7, inclusive.
cdi_nodv_entry_0108d4:
db 0x41, 0xEE, 0xC0, 0xFA ; 0108D4: provisional 68k lea.l -$3f06(a6), a0
db 0x2D, 0x48, 0xC0, 0xF6 ; 0108D8: provisional 68k move.l a0, -$3f0a(a6)
db 0x30, 0x3C, 0x00, 0x62 ; 0108DC: provisional 68k move.w #$62, d0
db 0x43, 0xE8, 0x00, 0x26 ; 0108E0: provisional 68k lea.l $26(a0), a1
db 0x42, 0xA8, 0x00, 0x12 ; 0108E4: provisional 68k clr.l $12(a0)
db 0x21, 0x49, 0x00, 0x22 ; 0108E8: provisional 68k move.l a1, $22(a0)
db 0x20, 0x49 ; 0108EC: provisional 68k movea.l a1, a0
db 0x51, 0xC8, 0xFF, 0xF0 ; 0108EE: provisional 68k dbra d0, $108e0
db 0x42, 0xA8, 0x00, 0x22 ; 0108F2: provisional 68k clr.l $22(a0)
db 0x4E, 0x75 ; 0108F6: provisional 68k rts 
