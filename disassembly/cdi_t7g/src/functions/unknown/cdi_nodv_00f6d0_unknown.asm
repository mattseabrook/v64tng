; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F6D0–00F6E9, inclusive.
cdi_nodv_entry_00f6d0:
db 0x6D, 0x5F ; 00F6D0: provisional 68k blt.b $f731
db 0x65, 0x6F ; 00F6D2: provisional 68k bcs.b $f743
db 0x72, 0x5F ; 00F6D4: provisional 68k moveq #$5f, d1
db 0x73, 0x72 ; file 00F6D6
db 0x76, 0x3A ; 00F6D8: provisional 68k moveq #$3a, d3
db 0x20, 0x49 ; 00F6DA: provisional 68k movea.l a1, a0
db 0x6C, 0x6C ; 00F6DC: provisional 68k bge.b $f74a
db 0x65, 0x67 ; 00F6DE: provisional 68k bcs.b $f747
db 0x61, 0x6C ; 00F6E0: provisional 68k bsr.b $f74e
db 0x20, 0x73, 0x74, 0x61 ; 00F6E2: provisional 68k movea.l $61(a3, d7.w), a0
db 0x74, 0x65 ; 00F6E6: provisional 68k moveq #$65, d2
db 0x00, 0x00 ; file 00F6E8
