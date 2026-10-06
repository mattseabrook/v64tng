; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011FFA–012087, inclusive.
cdi_t7g_entry_011ffa:
db 0x0C, 0x6C ; file 011FFA
db 0x00, 0x05, 0x00, 0x1C ; 011FFC: provisional 68k ori.b #$1c, d5
db 0x66, 0x00, 0x00, 0x56 ; 012000: provisional 68k bne.w $12058
db 0x61, 0x00, 0x03, 0x2E ; 012004: provisional 68k bsr.w $12334
db 0x65, 0x00, 0x00, 0x4C ; 012008: provisional 68k bcs.w $12056
db 0x20, 0x6D, 0x00, 0x34 ; 01200C: provisional 68k movea.l $34(a5), a0
db 0x22, 0x6C, 0x00, 0x34 ; 012010: provisional 68k movea.l $34(a4), a1
db 0xE4, 0x4A ; 012014: provisional 68k lsr.w #$2, d2
db 0xD4, 0x42 ; 012016: provisional 68k add.w d2, d2
db 0x3F, 0x02 ; 012018: provisional 68k move.w d2, -(a7)
db 0xE5, 0x42 ; 01201A: provisional 68k asl.w #$2, d2
db 0xD4, 0x5F ; 01201C: provisional 68k add.w (a7)+, d2
db 0xE4, 0x4C ; 01201E: provisional 68k lsr.w #$2, d4
db 0xD8, 0x44 ; 012020: provisional 68k add.w d4, d4
db 0x3F, 0x04 ; 012022: provisional 68k move.w d4, -(a7)
db 0xE5, 0x44 ; 012024: provisional 68k asl.w #$2, d4
db 0xD8, 0x5F ; 012026: provisional 68k add.w (a7)+, d4
db 0xE2, 0x4B ; 012028: provisional 68k lsr.w #$1, d3
db 0xE5, 0x43 ; 01202A: provisional 68k asl.w #$2, d3
db 0xD0, 0xC3 ; 01202C: provisional 68k adda.w d3, a0
db 0xE2, 0x4D ; 01202E: provisional 68k lsr.w #$1, d5
db 0xE5, 0x45 ; 012030: provisional 68k asl.w #$2, d5
db 0xD2, 0xC5 ; 012032: provisional 68k adda.w d5, a1
db 0xE4, 0x4E ; 012034: provisional 68k lsr.w #$2, d6
db 0x53, 0x46 ; 012036: provisional 68k subq.w #$1, d6
db 0xE2, 0x4F ; 012038: provisional 68k lsr.w #$1, d7
db 0x53, 0x47 ; 01203A: provisional 68k subq.w #$1, d7
db 0x3F, 0x06 ; 01203C: provisional 68k move.w d6, -(a7)
db 0x24, 0x58 ; 01203E: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 012040: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 012042: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 012044: provisional 68k adda.w d4, a3
db 0x26, 0xDA ; 012046: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012048: provisional 68k move.l (a2)+, (a3)+
db 0x36, 0xDA ; 01204A: provisional 68k move.w (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xF8 ; 01204C: provisional 68k dbra d6, $12046
db 0x3C, 0x1F ; 012050: provisional 68k move.w (a7)+, d6
db 0x51, 0xCF, 0xFF, 0xE8 ; 012052: provisional 68k dbra d7, $1203c
db 0x4E, 0x75 ; 012056: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 012058: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9D, 0x20 ; 01205C: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 012060: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012062
db 0x65, 0x5F ; 012064: provisional 68k bcs.b $120c5
db 0x79, 0x75 ; file 012066
db 0x76, 0x3A ; 012068: provisional 68k moveq #$3a, d3
db 0x20, 0x55 ; 01206A: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 01206C: provisional 68k bgt.b $120e1
db 0x75, 0x70 ; file 01206E
db 0x70, 0x6F ; 012070: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 012072: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 012074: provisional 68k bcs.b $120da
db 0x20, 0x64 ; 012076: provisional 68k movea.l -(a4), a0
db 0x65, 0x73 ; 012078: provisional 68k bcs.b $120ed
db 0x74, 0x69 ; 01207A: provisional 68k moveq #$69, d2
db 0x6E, 0x61 ; 01207C: provisional 68k bgt.b $120df
db 0x74, 0x69 ; 01207E: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 012080: provisional 68k ble.b $120f0
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x00 ; file 012082
