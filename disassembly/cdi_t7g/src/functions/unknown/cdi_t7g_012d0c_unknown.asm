; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012D0C–012D5F, inclusive.
cdi_t7g_entry_012d0c:
db 0x42, 0x41 ; 012D0C: provisional 68k clr.w d1
db 0x16, 0x1A ; 012D0E: provisional 68k move.b (a2)+, d3
db 0x67, 0x04 ; 012D10: provisional 68k beq.b $12d16
db 0x16, 0x83 ; 012D12: provisional 68k move.b d3, (a3)
db 0x52, 0x41 ; 012D14: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 012D16: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 012D18: provisional 68k beq.b $12d20
db 0x17, 0x43, 0x00, 0x01 ; 012D1A: provisional 68k move.b d3, $1(a3)
db 0x52, 0x41 ; 012D1E: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 012D20: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 012D22: provisional 68k beq.b $12d2a
db 0x17, 0x43, 0x00, 0x02 ; 012D24: provisional 68k move.b d3, $2(a3)
db 0x52, 0x41 ; 012D28: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 012D2A: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 012D2C: provisional 68k beq.b $12d34
db 0x17, 0x43, 0x00, 0x03 ; 012D2E: provisional 68k move.b d3, $3(a3)
db 0x52, 0x41 ; 012D32: provisional 68k addq.w #$1, d1
db 0x14, 0x1A ; 012D34: provisional 68k move.b (a2)+, d2
db 0x16, 0x1A ; 012D36: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 012D38: provisional 68k beq.b $12d40
db 0x17, 0x43, 0x00, 0x05 ; 012D3A: provisional 68k move.b d3, $5(a3)
db 0x52, 0x41 ; 012D3E: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 012D40: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 012D42: provisional 68k beq.b $12d4a
db 0x17, 0x43, 0x00, 0x06 ; 012D44: provisional 68k move.b d3, $6(a3)
db 0x52, 0x41 ; 012D48: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 012D4A: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 012D4C: provisional 68k beq.b $12d54
db 0x17, 0x43, 0x00, 0x07 ; 012D4E: provisional 68k move.b d3, $7(a3)
db 0x52, 0x41 ; 012D52: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 012D54: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 012D56: provisional 68k beq.b $12d5e
db 0x17, 0x43, 0x00, 0x08 ; 012D58: provisional 68k move.b d3, $8(a3)
db 0x52, 0x41 ; 012D5C: provisional 68k addq.w #$1, d1
db 0x4E, 0x75 ; 012D5E: provisional 68k rts 
