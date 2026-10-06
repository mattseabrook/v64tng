; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011F10–011F31, inclusive.
cdi_t7g_entry_011f10:
db 0x2A, 0x48 ; 011F10: provisional 68k movea.l a0, a5
db 0x28, 0x49 ; 011F12: provisional 68k movea.l a1, a4
db 0x61, 0x00, 0x04, 0x1E ; 011F14: provisional 68k bsr.w $12334
db 0x26, 0x68, 0x00, 0x34 ; 011F18: provisional 68k movea.l $34(a0), a3
db 0x28, 0x69, 0x00, 0x38 ; 011F1C: provisional 68k movea.l $38(a1), a4
db 0x2A, 0x69, 0x00, 0x34 ; 011F20: provisional 68k movea.l $34(a1), a5
db 0xE5, 0x43 ; 011F24: provisional 68k asl.w #$2, d3
db 0xD6, 0xC3 ; 011F26: provisional 68k adda.w d3, a3
db 0xDA, 0x45 ; 011F28: provisional 68k add.w d5, d5
db 0xD8, 0xC5 ; 011F2A: provisional 68k adda.w d5, a4
db 0xDA, 0x45 ; 011F2C: provisional 68k add.w d5, d5
db 0xDA, 0xC5 ; 011F2E: provisional 68k adda.w d5, a5
db 0x4E, 0x75 ; 011F30: provisional 68k rts 
