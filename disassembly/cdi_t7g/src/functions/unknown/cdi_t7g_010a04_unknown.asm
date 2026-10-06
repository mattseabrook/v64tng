; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A04–010A17, inclusive.
cdi_t7g_entry_010a04:
db 0x5F, 0x63 ; 010A04: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 010A06: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 010A08: provisional 68k bsr.b $10a7e
db 0x65, 0x20 ; 010A0A: provisional 68k bcs.b $10a2c
db 0x3A, 0x20 ; 010A0C: provisional 68k move.w -(a0), d5
db 0x43, 0x6F, 0x75, 0x6C ; file 010A0E
db 0x64, 0x6E ; 010A12: provisional 68k bcc.b $10a82
db 0x27, 0x74, 0x20, 0x6D ; file 010A14
