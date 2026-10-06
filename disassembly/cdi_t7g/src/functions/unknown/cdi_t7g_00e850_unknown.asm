; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E850–00E869, inclusive.
cdi_t7g_entry_00e850:
db 0x6D, 0x5F ; 00E850: provisional 68k blt.b $e8b1
db 0x65, 0x6F ; 00E852: provisional 68k bcs.b $e8c3
db 0x72, 0x5F ; 00E854: provisional 68k moveq #$5f, d1
db 0x73, 0x72 ; file 00E856
db 0x76, 0x3A ; 00E858: provisional 68k moveq #$3a, d3
db 0x20, 0x49 ; 00E85A: provisional 68k movea.l a1, a0
db 0x6C, 0x6C ; 00E85C: provisional 68k bge.b $e8ca
db 0x65, 0x67 ; 00E85E: provisional 68k bcs.b $e8c7
db 0x61, 0x6C ; 00E860: provisional 68k bsr.b $e8ce
db 0x20, 0x73, 0x74, 0x61 ; 00E862: provisional 68k movea.l $61(a3, d7.w), a0
db 0x74, 0x65 ; 00E866: provisional 68k moveq #$65, d2
db 0x00, 0x00 ; file 00E868
