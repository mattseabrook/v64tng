; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BFD2–00BFEF, inclusive.
cdi_t7g_entry_00bfd2:
db 0x5F, 0x69, 0x6E, 0x69 ; 00BFD2: provisional 68k subq.w #$7, $6e69(a1)
db 0x74, 0x69 ; 00BFD6: provisional 68k moveq #$69, d2
db 0x61, 0x6C ; 00BFD8: provisional 68k bsr.b $c046
db 0x69, 0x73 ; 00BFDA: provisional 68k bvs.b $c04f
db 0x65, 0x20 ; 00BFDC: provisional 68k bcs.b $bffe
db 0x3A, 0x20 ; 00BFDE: provisional 68k move.w -(a0), d5
db 0x50, 0x72, 0x6F, 0x62, 0x6C, 0x65, 0x6D, 0x73 ; 00BFE0: provisional 68k addq.w #$8, ([$6c65, a2], $6d73)
db 0x20, 0x69, 0x6E, 0x20 ; 00BFE8: provisional 68k movea.l $6e20(a1), a0
db 0x73, 0x79, 0x73, 0x74 ; file 00BFEC
