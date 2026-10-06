; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012F66–012FED, inclusive.
cdi_nodv_entry_012f66:
db 0x3F, 0x3C, 0xFF, 0xFF ; 012F66: provisional 68k move.w #$ffff, -(a7)
db 0x0C, 0x6C, 0x00, 0x01, 0x00, 0x1C ; 012F6A: provisional 68k cmpi.w #$1, $1c(a4)
db 0x66, 0x00, 0x00, 0x4A ; 012F70: provisional 68k bne.w $12fbc
db 0x61, 0x00, 0x02, 0x3E ; 012F74: provisional 68k bsr.w $131b4
db 0x65, 0x00, 0x00, 0x40 ; 012F78: provisional 68k bcs.w $12fba
db 0xE2, 0x4A ; 012F7C: provisional 68k lsr.w #$1, d2
db 0xE2, 0x4C ; 012F7E: provisional 68k lsr.w #$1, d4
db 0xE2, 0x4B ; 012F80: provisional 68k lsr.w #$1, d3
db 0xE2, 0x4D ; 012F82: provisional 68k lsr.w #$1, d5
db 0x20, 0x6D, 0x00, 0x34 ; 012F84: provisional 68k movea.l $34(a5), a0
db 0x22, 0x6C, 0x00, 0x34 ; 012F88: provisional 68k movea.l $34(a4), a1
db 0xE5, 0x43 ; 012F8C: provisional 68k asl.w #$2, d3
db 0xD0, 0xC3 ; 012F8E: provisional 68k adda.w d3, a0
db 0xE5, 0x45 ; 012F90: provisional 68k asl.w #$2, d5
db 0xE2, 0x4F ; 012F92: provisional 68k lsr.w #$1, d7
db 0x4A, 0x5F ; 012F94: provisional 68k tst.w (a7)+
db 0x67, 0x04 ; 012F96: provisional 68k beq.b $12f9c
db 0xE3, 0x4F ; 012F98: provisional 68k lsl.w #$1, d7
db 0xE3, 0x4D ; 012F9A: provisional 68k lsl.w #$1, d5
db 0xD2, 0xC5 ; 012F9C: provisional 68k adda.w d5, a1
db 0xE4, 0x4E ; 012F9E: provisional 68k lsr.w #$2, d6
db 0x53, 0x46 ; 012FA0: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 012FA2: provisional 68k subq.w #$1, d7
db 0x3F, 0x06 ; 012FA4: provisional 68k move.w d6, -(a7)
db 0x24, 0x58 ; 012FA6: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 012FA8: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 012FAA: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 012FAC: provisional 68k adda.w d4, a3
db 0x36, 0xDA ; 012FAE: provisional 68k move.w (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xFC ; 012FB0: provisional 68k dbra d6, $12fae
db 0x3C, 0x1F ; 012FB4: provisional 68k move.w (a7)+, d6
db 0x51, 0xCF, 0xFF, 0xEC ; 012FB6: provisional 68k dbra d7, $12fa4
db 0x4E, 0x75 ; 012FBA: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 012FBC: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9C, 0x3C ; 012FC0: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 012FC4: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012FC6
db 0x65, 0x5F ; 012FC8: provisional 68k bcs.b $13029
db 0x64, 0x79 ; 012FCA: provisional 68k bcc.b $13045
db 0x75, 0x76 ; file 012FCC
db 0x3A, 0x20 ; 012FCE: provisional 68k move.w -(a0), d5
db 0x55, 0x6E, 0x73, 0x75 ; 012FD0: provisional 68k subq.w #$2, $7375(a6)
db 0x70, 0x70 ; 012FD4: provisional 68k moveq #$70, d0
db 0x6F, 0x72 ; 012FD6: provisional 68k ble.b $1304a
db 0x74, 0x65 ; 012FD8: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 012FDA: provisional 68k bcc.b $12ffc
db 0x64, 0x65 ; 012FDC: provisional 68k bcc.b $13043
db 0x73, 0x74 ; file 012FDE
db 0x69, 0x6E ; 012FE0: provisional 68k bvs.b $13050
db 0x61, 0x74 ; 012FE2: provisional 68k bsr.b $13058
db 0x69, 0x6F ; 012FE4: provisional 68k bvs.b $13055
db 0x6E, 0x20 ; 012FE6: provisional 68k bgt.b $13008
db 0x74, 0x79 ; 012FE8: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 012FEA: provisional 68k moveq #$65, d0
db 0x00, 0x00 ; file 012FEC
