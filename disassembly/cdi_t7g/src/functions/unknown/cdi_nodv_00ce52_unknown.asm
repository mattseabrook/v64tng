; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CE52–00CE6F, inclusive.
cdi_nodv_entry_00ce52:
db 0x5F, 0x69, 0x6E, 0x69 ; 00CE52: provisional 68k subq.w #$7, $6e69(a1)
db 0x74, 0x69 ; 00CE56: provisional 68k moveq #$69, d2
db 0x61, 0x6C ; 00CE58: provisional 68k bsr.b $cec6
db 0x69, 0x73 ; 00CE5A: provisional 68k bvs.b $cecf
db 0x65, 0x20 ; 00CE5C: provisional 68k bcs.b $ce7e
db 0x3A, 0x20 ; 00CE5E: provisional 68k move.w -(a0), d5
db 0x50, 0x72, 0x6F, 0x62, 0x6C, 0x65, 0x6D, 0x73 ; 00CE60: provisional 68k addq.w #$8, ([$6c65, a2], $6d73)
db 0x20, 0x69, 0x6E, 0x20 ; 00CE68: provisional 68k movea.l $6e20(a1), a0
db 0x73, 0x79, 0x73, 0x74 ; file 00CE6C
