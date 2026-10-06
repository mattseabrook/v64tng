; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012E7A–012F07, inclusive.
cdi_nodv_entry_012e7a:
db 0x0C, 0x6C ; file 012E7A
db 0x00, 0x05, 0x00, 0x1C ; 012E7C: provisional 68k ori.b #$1c, d5
db 0x66, 0x00, 0x00, 0x56 ; 012E80: provisional 68k bne.w $12ed8
db 0x61, 0x00, 0x03, 0x2E ; 012E84: provisional 68k bsr.w $131b4
db 0x65, 0x00, 0x00, 0x4C ; 012E88: provisional 68k bcs.w $12ed6
db 0x20, 0x6D, 0x00, 0x34 ; 012E8C: provisional 68k movea.l $34(a5), a0
db 0x22, 0x6C, 0x00, 0x34 ; 012E90: provisional 68k movea.l $34(a4), a1
db 0xE4, 0x4A ; 012E94: provisional 68k lsr.w #$2, d2
db 0xD4, 0x42 ; 012E96: provisional 68k add.w d2, d2
db 0x3F, 0x02 ; 012E98: provisional 68k move.w d2, -(a7)
db 0xE5, 0x42 ; 012E9A: provisional 68k asl.w #$2, d2
db 0xD4, 0x5F ; 012E9C: provisional 68k add.w (a7)+, d2
db 0xE4, 0x4C ; 012E9E: provisional 68k lsr.w #$2, d4
db 0xD8, 0x44 ; 012EA0: provisional 68k add.w d4, d4
db 0x3F, 0x04 ; 012EA2: provisional 68k move.w d4, -(a7)
db 0xE5, 0x44 ; 012EA4: provisional 68k asl.w #$2, d4
db 0xD8, 0x5F ; 012EA6: provisional 68k add.w (a7)+, d4
db 0xE2, 0x4B ; 012EA8: provisional 68k lsr.w #$1, d3
db 0xE5, 0x43 ; 012EAA: provisional 68k asl.w #$2, d3
db 0xD0, 0xC3 ; 012EAC: provisional 68k adda.w d3, a0
db 0xE2, 0x4D ; 012EAE: provisional 68k lsr.w #$1, d5
db 0xE5, 0x45 ; 012EB0: provisional 68k asl.w #$2, d5
db 0xD2, 0xC5 ; 012EB2: provisional 68k adda.w d5, a1
db 0xE4, 0x4E ; 012EB4: provisional 68k lsr.w #$2, d6
db 0x53, 0x46 ; 012EB6: provisional 68k subq.w #$1, d6
db 0xE2, 0x4F ; 012EB8: provisional 68k lsr.w #$1, d7
db 0x53, 0x47 ; 012EBA: provisional 68k subq.w #$1, d7
db 0x3F, 0x06 ; 012EBC: provisional 68k move.w d6, -(a7)
db 0x24, 0x58 ; 012EBE: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 012EC0: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 012EC2: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 012EC4: provisional 68k adda.w d4, a3
db 0x26, 0xDA ; 012EC6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012EC8: provisional 68k move.l (a2)+, (a3)+
db 0x36, 0xDA ; 012ECA: provisional 68k move.w (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xF8 ; 012ECC: provisional 68k dbra d6, $12ec6
db 0x3C, 0x1F ; 012ED0: provisional 68k move.w (a7)+, d6
db 0x51, 0xCF, 0xFF, 0xE8 ; 012ED2: provisional 68k dbra d7, $12ebc
db 0x4E, 0x75 ; 012ED6: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 012ED8: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9D, 0x20 ; 012EDC: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 012EE0: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012EE2
db 0x65, 0x5F ; 012EE4: provisional 68k bcs.b $12f45
db 0x79, 0x75 ; file 012EE6
db 0x76, 0x3A ; 012EE8: provisional 68k moveq #$3a, d3
db 0x20, 0x55 ; 012EEA: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 012EEC: provisional 68k bgt.b $12f61
db 0x75, 0x70 ; file 012EEE
db 0x70, 0x6F ; 012EF0: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 012EF2: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 012EF4: provisional 68k bcs.b $12f5a
db 0x20, 0x64 ; 012EF6: provisional 68k movea.l -(a4), a0
db 0x65, 0x73 ; 012EF8: provisional 68k bcs.b $12f6d
db 0x74, 0x69 ; 012EFA: provisional 68k moveq #$69, d2
db 0x6E, 0x61 ; 012EFC: provisional 68k bgt.b $12f5f
db 0x74, 0x69 ; 012EFE: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 012F00: provisional 68k ble.b $12f70
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x00 ; file 012F02
