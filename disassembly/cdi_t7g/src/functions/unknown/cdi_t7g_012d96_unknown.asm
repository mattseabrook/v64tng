; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012D96–012DC7, inclusive.
cdi_t7g_entry_012d96:
db 0x3A, 0x2D, 0x00, 0x38 ; 012D96: provisional 68k move.w $38(a5), d5
db 0x38, 0x05 ; 012D9A: provisional 68k move.w d5, d4
db 0x22, 0x6D, 0x00, 0x3C ; 012D9C: provisional 68k movea.l $3c(a5), a1
db 0xE2, 0x4B ; 012DA0: provisional 68k lsr.w #$1, d3
db 0x48, 0xC3 ; 012DA2: provisional 68k ext.l d3
db 0x67, 0x00, 0x00, 0x10 ; 012DA4: provisional 68k beq.w $12db6
db 0x86, 0xC5 ; 012DA8: provisional 68k divu.w d5, d3
db 0x53, 0x43 ; 012DAA: provisional 68k subq.w #$1, d3
db 0x6B, 0x08 ; 012DAC: provisional 68k bmi.b $12db6
db 0x22, 0x69, 0x09, 0x34 ; 012DAE: provisional 68k movea.l $934(a1), a1
db 0x51, 0xCB, 0xFF, 0xFA ; 012DB2: provisional 68k dbra d3, $12dae
db 0x24, 0x49 ; 012DB6: provisional 68k movea.l a1, a2
db 0x48, 0x43 ; 012DB8: provisional 68k swap d3
db 0x98, 0x43 ; 012DBA: provisional 68k sub.w d3, d4
db 0x32, 0x02 ; 012DBC: provisional 68k move.w d2, d1
db 0x34, 0x2D, 0x00, 0x2C ; 012DBE: provisional 68k move.w $2c(a5), d2
db 0xC6, 0xC2 ; 012DC2: provisional 68k mulu.w d2, d3
db 0xD4, 0xC3 ; 012DC4: provisional 68k adda.w d3, a2
db 0x4E, 0x75 ; 012DC6: provisional 68k rts 
