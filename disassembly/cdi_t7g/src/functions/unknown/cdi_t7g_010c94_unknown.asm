; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010C94–010CA9, inclusive.
cdi_t7g_entry_010c94:
db 0xB0, 0xEA ; file 010C94
db 0x64, 0x6E ; 010C96: provisional 68k bcc.b $10d06
db 0x6C, 0x69 ; 010C98: provisional 68k bge.b $10d03
db 0x73, 0x74 ; file 010C9A
db 0x5F, 0x63 ; 010C9C: provisional 68k subq.w #$7, -(a3)
db 0x6E, 0x66 ; 010C9E: provisional 68k bgt.b $10d06
db 0x3A, 0x20 ; 010CA0: provisional 68k move.w -(a0), d5
db 0x46, 0x61 ; 010CA2: provisional 68k not.w -(a1)
db 0x69, 0x6C ; 010CA4: provisional 68k bvs.b $10d12
db 0x65, 0x64 ; 010CA6: provisional 68k bcs.b $10d0c
db 0x21, 0x00 ; 010CA8: provisional 68k move.l d0, -(a0)
