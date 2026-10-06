; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CE8C–00CEA9, inclusive.
cdi_nodv_entry_00ce8c:
db 0x69, 0x73 ; 00CE8C: provisional 68k bvs.b $cf01
db 0x65, 0x20 ; 00CE8E: provisional 68k bcs.b $ceb0
db 0x3A, 0x20 ; 00CE90: provisional 68k move.w -(a0), d5
db 0x50, 0x72, 0x6F, 0x62, 0x6C, 0x65, 0x6D, 0x73 ; 00CE92: provisional 68k addq.w #$8, ([$6c65, a2], $6d73)
db 0x20, 0x69, 0x6E, 0x20 ; 00CE9A: provisional 68k movea.l $6e20(a1), a0
db 0x66, 0x6D ; 00CE9E: provisional 68k bne.b $cf0d
db 0x76, 0x20 ; 00CEA0: provisional 68k moveq #$20, d3
db 0x6D, 0x65 ; 00CEA2: provisional 68k blt.b $cf09
db 0x6D, 0x6F ; 00CEA4: provisional 68k blt.b $cf15
db 0x72, 0x79 ; 00CEA6: provisional 68k moveq #$79, d1
db 0x00, 0x00 ; file 00CEA8
