; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E8D0–00E907, inclusive.
cdi_nodv_entry_00e8d0:
db 0x28, 0x6D, 0x00, 0x2E ; 00E8D0: provisional 68k movea.l $2e(a5), a4
db 0x3F, 0x2D, 0x00, 0x3C ; 00E8D4: provisional 68k move.w $3c(a5), -(a7)
db 0x2F, 0x0C ; 00E8D8: provisional 68k move.l a4, -(a7)
db 0x61, 0x00, 0x2D, 0xB0 ; 00E8DA: provisional 68k bsr.w $1168c
db 0x3E, 0x2D, 0x00, 0x3E ; 00E8DE: provisional 68k move.w $3e(a5), d7
db 0x22, 0x3C, 0xC1, 0x80, 0x00, 0x00 ; 00E8E2: provisional 68k move.l #$c1800000, d1
db 0x24, 0x3C, 0xC0, 0x00, 0x10, 0x10 ; 00E8E8: provisional 68k move.l #$c0001010, d2
db 0x26, 0x2E, 0xC0, 0x60 ; 00E8EE: provisional 68k move.l -$3fa0(a6), d3
db 0x86, 0xBC, 0x40, 0x00, 0x00, 0x00 ; 00E8F2: provisional 68k or.l #$40000000, d3
db 0x53, 0x47 ; 00E8F8: provisional 68k subq.w #$1, d7
db 0x20, 0xC1 ; 00E8FA: provisional 68k move.l d1, (a0)+
db 0x20, 0xC2 ; 00E8FC: provisional 68k move.l d2, (a0)+
db 0x20, 0xC0 ; 00E8FE: provisional 68k move.l d0, (a0)+
db 0x20, 0xC3 ; 00E900: provisional 68k move.l d3, (a0)+
db 0x51, 0xCF, 0xFF, 0xF6 ; 00E902: provisional 68k dbra d7, $e8fa
db 0x4E, 0x75 ; 00E906: provisional 68k rts 
