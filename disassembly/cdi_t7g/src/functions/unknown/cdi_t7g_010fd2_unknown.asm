; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010FD2–010FFB, inclusive.
cdi_t7g_entry_010fd2:
db 0x48, 0xE7, 0x30, 0xC4 ; 010FD2: provisional 68k movem.l d2-d3/a0-a1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 010FD6: provisional 68k movea.l $18(a7), a5
db 0x22, 0x6F, 0x00, 0x1C ; 010FDA: provisional 68k movea.l $1c(a7), a1
db 0x61, 0x00, 0x00, 0x1C ; 010FDE: provisional 68k bsr.w $10ffc
db 0x53, 0x43 ; 010FE2: provisional 68k subq.w #$1, d3
db 0x42, 0x18 ; 010FE4: provisional 68k clr.b (a0)+
db 0x10, 0xD9 ; 010FE6: provisional 68k move.b (a1)+, (a0)+
db 0x10, 0xD9 ; 010FE8: provisional 68k move.b (a1)+, (a0)+
db 0x10, 0xD9 ; 010FEA: provisional 68k move.b (a1)+, (a0)+
db 0x51, 0xCB, 0xFF, 0xF6 ; 010FEC: provisional 68k dbra d3, $10fe4
db 0x4C, 0xDF, 0x23, 0x0C ; 010FF0: provisional 68k movem.l (a7)+, d2-d3/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x08 ; 010FF4: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 010FF8: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 010FFA: provisional 68k rts 
