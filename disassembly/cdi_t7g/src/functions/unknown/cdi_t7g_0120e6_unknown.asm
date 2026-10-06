; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0120E6–01216D, inclusive.
cdi_t7g_entry_0120e6:
db 0x3F, 0x3C, 0xFF, 0xFF ; 0120E6: provisional 68k move.w #$ffff, -(a7)
db 0x0C, 0x6C, 0x00, 0x01, 0x00, 0x1C ; 0120EA: provisional 68k cmpi.w #$1, $1c(a4)
db 0x66, 0x00, 0x00, 0x4A ; 0120F0: provisional 68k bne.w $1213c
db 0x61, 0x00, 0x02, 0x3E ; 0120F4: provisional 68k bsr.w $12334
db 0x65, 0x00, 0x00, 0x40 ; 0120F8: provisional 68k bcs.w $1213a
db 0xE2, 0x4A ; 0120FC: provisional 68k lsr.w #$1, d2
db 0xE2, 0x4C ; 0120FE: provisional 68k lsr.w #$1, d4
db 0xE2, 0x4B ; 012100: provisional 68k lsr.w #$1, d3
db 0xE2, 0x4D ; 012102: provisional 68k lsr.w #$1, d5
db 0x20, 0x6D, 0x00, 0x34 ; 012104: provisional 68k movea.l $34(a5), a0
db 0x22, 0x6C, 0x00, 0x34 ; 012108: provisional 68k movea.l $34(a4), a1
db 0xE5, 0x43 ; 01210C: provisional 68k asl.w #$2, d3
db 0xD0, 0xC3 ; 01210E: provisional 68k adda.w d3, a0
db 0xE5, 0x45 ; 012110: provisional 68k asl.w #$2, d5
db 0xE2, 0x4F ; 012112: provisional 68k lsr.w #$1, d7
db 0x4A, 0x5F ; 012114: provisional 68k tst.w (a7)+
db 0x67, 0x04 ; 012116: provisional 68k beq.b $1211c
db 0xE3, 0x4F ; 012118: provisional 68k lsl.w #$1, d7
db 0xE3, 0x4D ; 01211A: provisional 68k lsl.w #$1, d5
db 0xD2, 0xC5 ; 01211C: provisional 68k adda.w d5, a1
db 0xE4, 0x4E ; 01211E: provisional 68k lsr.w #$2, d6
db 0x53, 0x46 ; 012120: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 012122: provisional 68k subq.w #$1, d7
db 0x3F, 0x06 ; 012124: provisional 68k move.w d6, -(a7)
db 0x24, 0x58 ; 012126: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 012128: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 01212A: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 01212C: provisional 68k adda.w d4, a3
db 0x36, 0xDA ; 01212E: provisional 68k move.w (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xFC ; 012130: provisional 68k dbra d6, $1212e
db 0x3C, 0x1F ; 012134: provisional 68k move.w (a7)+, d6
db 0x51, 0xCF, 0xFF, 0xEC ; 012136: provisional 68k dbra d7, $12124
db 0x4E, 0x75 ; 01213A: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 01213C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9C, 0x3C ; 012140: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 012144: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012146
db 0x65, 0x5F ; 012148: provisional 68k bcs.b $121a9
db 0x64, 0x79 ; 01214A: provisional 68k bcc.b $121c5
db 0x75, 0x76 ; file 01214C
db 0x3A, 0x20 ; 01214E: provisional 68k move.w -(a0), d5
db 0x55, 0x6E, 0x73, 0x75 ; 012150: provisional 68k subq.w #$2, $7375(a6)
db 0x70, 0x70 ; 012154: provisional 68k moveq #$70, d0
db 0x6F, 0x72 ; 012156: provisional 68k ble.b $121ca
db 0x74, 0x65 ; 012158: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 01215A: provisional 68k bcc.b $1217c
db 0x64, 0x65 ; 01215C: provisional 68k bcc.b $121c3
db 0x73, 0x74 ; file 01215E
db 0x69, 0x6E ; 012160: provisional 68k bvs.b $121d0
db 0x61, 0x74 ; 012162: provisional 68k bsr.b $121d8
db 0x69, 0x6F ; 012164: provisional 68k bvs.b $121d5
db 0x6E, 0x20 ; 012166: provisional 68k bgt.b $12188
db 0x74, 0x79 ; 012168: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 01216A: provisional 68k moveq #$65, d0
db 0x00, 0x00 ; file 01216C
