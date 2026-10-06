; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011B14–011B29, inclusive.
cdi_nodv_entry_011b14:
db 0xB0, 0xEA ; file 011B14
db 0x64, 0x6E ; 011B16: provisional 68k bcc.b $11b86
db 0x6C, 0x69 ; 011B18: provisional 68k bge.b $11b83
db 0x73, 0x74 ; file 011B1A
db 0x5F, 0x63 ; 011B1C: provisional 68k subq.w #$7, -(a3)
db 0x6E, 0x66 ; 011B1E: provisional 68k bgt.b $11b86
db 0x3A, 0x20 ; 011B20: provisional 68k move.w -(a0), d5
db 0x46, 0x61 ; 011B22: provisional 68k not.w -(a1)
db 0x69, 0x6C ; 011B24: provisional 68k bvs.b $11b92
db 0x65, 0x64 ; 011B26: provisional 68k bcs.b $11b8c
db 0x21, 0x00 ; 011B28: provisional 68k move.l d0, -(a0)
