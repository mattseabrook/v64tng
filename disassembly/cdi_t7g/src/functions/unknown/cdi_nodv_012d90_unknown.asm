; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012D90–012DB1, inclusive.
cdi_nodv_entry_012d90:
db 0x2A, 0x48 ; 012D90: provisional 68k movea.l a0, a5
db 0x28, 0x49 ; 012D92: provisional 68k movea.l a1, a4
db 0x61, 0x00, 0x04, 0x1E ; 012D94: provisional 68k bsr.w $131b4
db 0x26, 0x68, 0x00, 0x34 ; 012D98: provisional 68k movea.l $34(a0), a3
db 0x28, 0x69, 0x00, 0x38 ; 012D9C: provisional 68k movea.l $38(a1), a4
db 0x2A, 0x69, 0x00, 0x34 ; 012DA0: provisional 68k movea.l $34(a1), a5
db 0xE5, 0x43 ; 012DA4: provisional 68k asl.w #$2, d3
db 0xD6, 0xC3 ; 012DA6: provisional 68k adda.w d3, a3
db 0xDA, 0x45 ; 012DA8: provisional 68k add.w d5, d5
db 0xD8, 0xC5 ; 012DAA: provisional 68k adda.w d5, a4
db 0xDA, 0x45 ; 012DAC: provisional 68k add.w d5, d5
db 0xDA, 0xC5 ; 012DAE: provisional 68k adda.w d5, a5
db 0x4E, 0x75 ; 012DB0: provisional 68k rts 
