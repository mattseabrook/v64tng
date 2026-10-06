; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C00C–00C029, inclusive.
cdi_t7g_entry_00c00c:
db 0x69, 0x73 ; 00C00C: provisional 68k bvs.b $c081
db 0x65, 0x20 ; 00C00E: provisional 68k bcs.b $c030
db 0x3A, 0x20 ; 00C010: provisional 68k move.w -(a0), d5
db 0x50, 0x72, 0x6F, 0x62, 0x6C, 0x65, 0x6D, 0x73 ; 00C012: provisional 68k addq.w #$8, ([$6c65, a2], $6d73)
db 0x20, 0x69, 0x6E, 0x20 ; 00C01A: provisional 68k movea.l $6e20(a1), a0
db 0x66, 0x6D ; 00C01E: provisional 68k bne.b $c08d
db 0x76, 0x20 ; 00C020: provisional 68k moveq #$20, d3
db 0x6D, 0x65 ; 00C022: provisional 68k blt.b $c089
db 0x6D, 0x6F ; 00C024: provisional 68k blt.b $c095
db 0x72, 0x79 ; 00C026: provisional 68k moveq #$79, d1
db 0x00, 0x00 ; file 00C028
