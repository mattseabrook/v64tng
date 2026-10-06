; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012FEE–013057, inclusive.
cdi_nodv_entry_012fee:
db 0x0C, 0x6C ; file 012FEE
db 0x00, 0x06, 0x00, 0x1C ; 012FF0: provisional 68k ori.b #$1c, d6
db 0x67, 0x0A ; 012FF4: provisional 68k beq.b $13000
db 0x0C, 0x6C, 0x00, 0x02, 0x00, 0x1C ; 012FF6: provisional 68k cmpi.w #$2, $1c(a4)
db 0x66, 0x00, 0x00, 0x3C ; 012FFC: provisional 68k bne.w $1303a
db 0x61, 0x00, 0x01, 0xB2 ; 013000: provisional 68k bsr.w $131b4
db 0x65, 0x00, 0x00, 0x32 ; 013004: provisional 68k bcs.w $13038
db 0xE2, 0x4A ; 013008: provisional 68k lsr.w #$1, d2
db 0xE2, 0x4C ; 01300A: provisional 68k lsr.w #$1, d4
db 0x20, 0x6D, 0x00, 0x34 ; 01300C: provisional 68k movea.l $34(a5), a0
db 0x22, 0x6C, 0x00, 0x34 ; 013010: provisional 68k movea.l $34(a4), a1
db 0xE5, 0x43 ; 013014: provisional 68k asl.w #$2, d3
db 0xD0, 0xC3 ; 013016: provisional 68k adda.w d3, a0
db 0xE5, 0x45 ; 013018: provisional 68k asl.w #$2, d5
db 0xD2, 0xC5 ; 01301A: provisional 68k adda.w d5, a1
db 0xE4, 0x4E ; 01301C: provisional 68k lsr.w #$2, d6
db 0x53, 0x46 ; 01301E: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 013020: provisional 68k subq.w #$1, d7
db 0x3F, 0x06 ; 013022: provisional 68k move.w d6, -(a7)
db 0x24, 0x58 ; 013024: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 013026: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 013028: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 01302A: provisional 68k adda.w d4, a3
db 0x36, 0xDA ; 01302C: provisional 68k move.w (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xFC ; 01302E: provisional 68k dbra d6, $1302c
db 0x3C, 0x1F ; 013032: provisional 68k move.w (a7)+, d6
db 0x51, 0xCF, 0xFF, 0xEC ; 013034: provisional 68k dbra d7, $13022
db 0x4E, 0x75 ; 013038: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 01303A: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9B, 0xBE ; 01303E: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 013042: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 013044
db 0x65, 0x5F ; 013046: provisional 68k bcs.b $130a7
db 0x63, 0x6C ; 013048: provisional 68k bls.b $130b6
db 0x38, 0x3A, 0x20, 0x55 ; 01304A: provisional 68k move.w $150a1(pc), d4
db 0x6E, 0x73 ; 01304E: provisional 68k bgt.b $130c3
db 0x75, 0x70 ; file 013050
db 0x70, 0x6F ; 013052: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 013054: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 013056: provisional 68k bcs.b $130bc
