; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011884–011897, inclusive.
cdi_nodv_entry_011884:
db 0x5F, 0x63 ; 011884: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 011886: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 011888: provisional 68k bsr.b $118fe
db 0x65, 0x20 ; 01188A: provisional 68k bcs.b $118ac
db 0x3A, 0x20 ; 01188C: provisional 68k move.w -(a0), d5
db 0x43, 0x6F, 0x75, 0x6C ; file 01188E
db 0x64, 0x6E ; 011892: provisional 68k bcc.b $11902
db 0x27, 0x74, 0x20, 0x6D ; file 011894
