; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013B8C–013BDF, inclusive.
cdi_nodv_entry_013b8c:
db 0x42, 0x41 ; 013B8C: provisional 68k clr.w d1
db 0x16, 0x1A ; 013B8E: provisional 68k move.b (a2)+, d3
db 0x67, 0x04 ; 013B90: provisional 68k beq.b $13b96
db 0x16, 0x83 ; 013B92: provisional 68k move.b d3, (a3)
db 0x52, 0x41 ; 013B94: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 013B96: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 013B98: provisional 68k beq.b $13ba0
db 0x17, 0x43, 0x00, 0x01 ; 013B9A: provisional 68k move.b d3, $1(a3)
db 0x52, 0x41 ; 013B9E: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 013BA0: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 013BA2: provisional 68k beq.b $13baa
db 0x17, 0x43, 0x00, 0x02 ; 013BA4: provisional 68k move.b d3, $2(a3)
db 0x52, 0x41 ; 013BA8: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 013BAA: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 013BAC: provisional 68k beq.b $13bb4
db 0x17, 0x43, 0x00, 0x03 ; 013BAE: provisional 68k move.b d3, $3(a3)
db 0x52, 0x41 ; 013BB2: provisional 68k addq.w #$1, d1
db 0x14, 0x1A ; 013BB4: provisional 68k move.b (a2)+, d2
db 0x16, 0x1A ; 013BB6: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 013BB8: provisional 68k beq.b $13bc0
db 0x17, 0x43, 0x00, 0x05 ; 013BBA: provisional 68k move.b d3, $5(a3)
db 0x52, 0x41 ; 013BBE: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 013BC0: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 013BC2: provisional 68k beq.b $13bca
db 0x17, 0x43, 0x00, 0x06 ; 013BC4: provisional 68k move.b d3, $6(a3)
db 0x52, 0x41 ; 013BC8: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 013BCA: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 013BCC: provisional 68k beq.b $13bd4
db 0x17, 0x43, 0x00, 0x07 ; 013BCE: provisional 68k move.b d3, $7(a3)
db 0x52, 0x41 ; 013BD2: provisional 68k addq.w #$1, d1
db 0x16, 0x1A ; 013BD4: provisional 68k move.b (a2)+, d3
db 0x67, 0x06 ; 013BD6: provisional 68k beq.b $13bde
db 0x17, 0x43, 0x00, 0x08 ; 013BD8: provisional 68k move.b d3, $8(a3)
db 0x52, 0x41 ; 013BDC: provisional 68k addq.w #$1, d1
db 0x4E, 0x75 ; 013BDE: provisional 68k rts 
