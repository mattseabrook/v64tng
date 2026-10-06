; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CEB8–00CEE9, inclusive.
cdi_t7g_entry_00ceb8:
db 0x2F, 0x0B ; 00CEB8: provisional 68k move.l a3, -(a7)
db 0x3D, 0x40, 0xAB, 0xD8 ; 00CEBA: provisional 68k move.w d0, -$5428(a6)
db 0x3D, 0x41, 0xAB, 0xD4 ; 00CEBE: provisional 68k move.w d1, -$542c(a6)
db 0x3D, 0x6E, 0xAB, 0xDA, 0xAB, 0xD6 ; 00CEC2: provisional 68k move.w -$5426(a6), -$542a(a6)
db 0x90, 0x6E, 0xAB, 0xDA ; 00CEC8: provisional 68k sub.w -$5426(a6), d0
db 0x3D, 0x40, 0xAB, 0xD2 ; 00CECC: provisional 68k move.w d0, -$542e(a6)
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 00CED0: provisional 68k movea.l $0.l, a3
db 0x2D, 0x6B, 0x00, 0x54, 0xAB, 0xCE ; 00CED6: provisional 68k move.l $54(a3), -$5432(a6)
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAB, 0xCA ; 00CEDC: provisional 68k move.w #$ffff, -$5436(a6)
db 0x42, 0x6E, 0xAB, 0xCC ; 00CEE2: provisional 68k clr.w -$5434(a6)
db 0x26, 0x5F ; 00CEE6: provisional 68k movea.l (a7)+, a3
db 0x4E, 0x75 ; 00CEE8: provisional 68k rts 
