; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012DD6–012E31, inclusive.
cdi_t7g_entry_012dd6:
db 0x30, 0x2D, 0x00, 0x28 ; 012DD6: provisional 68k move.w $28(a5), d0
db 0x32, 0x2D, 0x00, 0x24 ; 012DDA: provisional 68k move.w $24(a5), d1
db 0x34, 0x2C, 0x00, 0x28 ; 012DDE: provisional 68k move.w $28(a4), d2
db 0x36, 0x2C, 0x00, 0x24 ; 012DE2: provisional 68k move.w $24(a4), d3
db 0x61, 0x00, 0x00, 0x4A ; 012DE6: provisional 68k bsr.w $12e32
db 0x65, 0x40 ; 012DEA: provisional 68k bcs.b $12e2c
db 0x90, 0x6D, 0x00, 0x28 ; 012DEC: provisional 68k sub.w $28(a5), d0
db 0x94, 0x6C, 0x00, 0x28 ; 012DF0: provisional 68k sub.w $28(a4), d2
db 0x36, 0x00 ; 012DF4: provisional 68k move.w d0, d3
db 0x3E, 0x01 ; 012DF6: provisional 68k move.w d1, d7
db 0x3A, 0x02 ; 012DF8: provisional 68k move.w d2, d5
db 0x48, 0xA7, 0x10, 0x00 ; 012DFA: provisional 68k movem.w d3, -(a7)
db 0x30, 0x2D, 0x00, 0x26 ; 012DFE: provisional 68k move.w $26(a5), d0
db 0x32, 0x2D, 0x00, 0x22 ; 012E02: provisional 68k move.w $22(a5), d1
db 0x34, 0x2C, 0x00, 0x26 ; 012E06: provisional 68k move.w $26(a4), d2
db 0x36, 0x2C, 0x00, 0x22 ; 012E0A: provisional 68k move.w $22(a4), d3
db 0x61, 0x00, 0x00, 0x22 ; 012E0E: provisional 68k bsr.w $12e32
db 0x4C, 0x9F, 0x00, 0x08 ; 012E12: provisional 68k movem.w (a7)+, d3
db 0x65, 0x14 ; 012E16: provisional 68k bcs.b $12e2c
db 0x90, 0x6D, 0x00, 0x26 ; 012E18: provisional 68k sub.w $26(a5), d0
db 0x94, 0x6C, 0x00, 0x26 ; 012E1C: provisional 68k sub.w $26(a4), d2
db 0x3C, 0x01 ; 012E20: provisional 68k move.w d1, d6
db 0x38, 0x02 ; 012E22: provisional 68k move.w d2, d4
db 0x34, 0x00 ; 012E24: provisional 68k move.w d0, d2
db 0x02, 0x3C, 0x00, 0x0E ; 012E26: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 012E2A: provisional 68k rts 
db 0x00, 0x3C, 0x00, 0x01 ; 012E2C: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 012E30: provisional 68k rts 
