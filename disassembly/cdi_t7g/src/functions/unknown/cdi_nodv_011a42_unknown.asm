; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011A42–011AE9, inclusive.
cdi_nodv_entry_011a42:
db 0x91, 0xC8 ; 011A42: provisional 68k suba.l a0, a0
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x04 ; 011A44: provisional 68k cmpi.w #$80, $4(a7)
db 0x66, 0x08 ; 011A4A: provisional 68k bne.b $11a54
db 0x20, 0x6E, 0xA8, 0xFC ; 011A4C: provisional 68k movea.l -$5704(a6), a0
db 0x60, 0x00, 0x00, 0x2E ; 011A50: provisional 68k bra.w $11a80
db 0x0C, 0x6F, 0x00, 0x81, 0x00, 0x04 ; 011A54: provisional 68k cmpi.w #$81, $4(a7)
db 0x66, 0x08 ; 011A5A: provisional 68k bne.b $11a64
db 0x20, 0x6E, 0xA9, 0x00 ; 011A5C: provisional 68k movea.l -$5700(a6), a0
db 0x60, 0x00, 0x00, 0x1E ; 011A60: provisional 68k bra.w $11a80
db 0x0C, 0x6F, 0x00, 0x01, 0x00, 0x04 ; 011A64: provisional 68k cmpi.w #$1, $4(a7)
db 0x66, 0x08 ; 011A6A: provisional 68k bne.b $11a74
db 0x20, 0x6E, 0xA9, 0x04 ; 011A6C: provisional 68k movea.l -$56fc(a6), a0
db 0x60, 0x00, 0x00, 0x0E ; 011A70: provisional 68k bra.w $11a80
db 0x0C, 0x6F, 0x00, 0x90, 0x00, 0x04 ; 011A74: provisional 68k cmpi.w #$90, $4(a7)
db 0x66, 0x0E ; 011A7A: provisional 68k bne.b $11a8a
db 0x20, 0x6E, 0xA9, 0x08 ; 011A7C: provisional 68k movea.l -$56f8(a6), a0
db 0x2F, 0x57, 0x00, 0x02 ; 011A80: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 011A84: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 011A88: provisional 68k rts 
db 0x30, 0x2F, 0x00, 0x04 ; 011A8A: provisional 68k move.w $4(a7), d0
db 0x42, 0xE7 ; 011A8E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 011A90: provisional 68k pea.l $11a9a(pc)
db 0x61, 0x00, 0xB1, 0x3A ; 011A94: provisional 68k bsr.w $cbd0
db 0x60, 0x1C ; 011A98: provisional 68k bra.b $11ab6
db 0x64, 0x6E ; 011A9A: provisional 68k bcc.b $11b0a
db 0x6C, 0x69 ; 011A9C: provisional 68k bge.b $11b07
db 0x73, 0x74 ; file 011A9E
db 0x5F, 0x6D, 0x70, 0x6C ; 011AA0: provisional 68k subq.w #$7, $706c(a5)
db 0x61, 0x6E ; 011AA4: provisional 68k bsr.b $11b14
db 0x65, 0x3A ; 011AA6: provisional 68k bcs.b $11ae2
db 0x20, 0x70, 0x6C, 0x61 ; 011AA8: provisional 68k movea.l $61(a0, d6.l), a0
db 0x6E, 0x65 ; 011AAC: provisional 68k bgt.b $11b13
db 0x20, 0x69, 0x64, 0x20 ; 011AAE: provisional 68k movea.l $6420(a1), a0
db 0x3D, 0x20 ; 011AB2: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x00 ; 011AB4: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xB0, 0x64 ; 011AB8: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 011ABC: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xB0, 0xF6 ; 011ABE: provisional 68k bsr.w $cbb6
db 0x32, 0x3C, 0x80, 0x00 ; 011AC2: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB1, 0x36 ; 011AC6: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 011ACA: provisional 68k bcc.b $11b3a
db 0x6C, 0x69 ; 011ACC: provisional 68k bge.b $11b37
db 0x73, 0x74 ; file 011ACE
db 0x5F, 0x6D, 0x70, 0x6C ; 011AD0: provisional 68k subq.w #$7, $706c(a5)
db 0x61, 0x6E ; 011AD4: provisional 68k bsr.b $11b44
db 0x65, 0x3A ; 011AD6: provisional 68k bcs.b $11b12
db 0x20, 0x49 ; 011AD8: provisional 68k movea.l a1, a0
db 0x6C, 0x6C ; 011ADA: provisional 68k bge.b $11b48
db 0x65, 0x67 ; 011ADC: provisional 68k bcs.b $11b45
db 0x61, 0x6C ; 011ADE: provisional 68k bsr.b $11b4c
db 0x20, 0x70, 0x6C, 0x61 ; 011AE0: provisional 68k movea.l $61(a0, d6.l), a0
db 0x6E, 0x65 ; 011AE4: provisional 68k bgt.b $11b4b
db 0x00, 0x00, 0x4E, 0x75 ; 011AE6: provisional 68k ori.b #$75, d0
