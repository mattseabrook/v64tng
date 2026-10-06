; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013C16–013C47, inclusive.
cdi_nodv_entry_013c16:
db 0x3A, 0x2D, 0x00, 0x38 ; 013C16: provisional 68k move.w $38(a5), d5
db 0x38, 0x05 ; 013C1A: provisional 68k move.w d5, d4
db 0x22, 0x6D, 0x00, 0x3C ; 013C1C: provisional 68k movea.l $3c(a5), a1
db 0xE2, 0x4B ; 013C20: provisional 68k lsr.w #$1, d3
db 0x48, 0xC3 ; 013C22: provisional 68k ext.l d3
db 0x67, 0x00, 0x00, 0x10 ; 013C24: provisional 68k beq.w $13c36
db 0x86, 0xC5 ; 013C28: provisional 68k divu.w d5, d3
db 0x53, 0x43 ; 013C2A: provisional 68k subq.w #$1, d3
db 0x6B, 0x08 ; 013C2C: provisional 68k bmi.b $13c36
db 0x22, 0x69, 0x09, 0x34 ; 013C2E: provisional 68k movea.l $934(a1), a1
db 0x51, 0xCB, 0xFF, 0xFA ; 013C32: provisional 68k dbra d3, $13c2e
db 0x24, 0x49 ; 013C36: provisional 68k movea.l a1, a2
db 0x48, 0x43 ; 013C38: provisional 68k swap d3
db 0x98, 0x43 ; 013C3A: provisional 68k sub.w d3, d4
db 0x32, 0x02 ; 013C3C: provisional 68k move.w d2, d1
db 0x34, 0x2D, 0x00, 0x2C ; 013C3E: provisional 68k move.w $2c(a5), d2
db 0xC6, 0xC2 ; 013C42: provisional 68k mulu.w d2, d3
db 0xD4, 0xC3 ; 013C44: provisional 68k adda.w d3, a2
db 0x4E, 0x75 ; 013C46: provisional 68k rts 
