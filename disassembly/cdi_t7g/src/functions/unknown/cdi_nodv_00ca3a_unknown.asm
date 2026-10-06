; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CA3A–00CA4D, inclusive.
cdi_nodv_entry_00ca3a:
db 0x48, 0x7A, 0x00, 0x08 ; 00CA3A: provisional 68k pea.l $ca44(pc)
db 0x61, 0x00, 0x01, 0x90 ; 00CA3E: provisional 68k bsr.w $cbd0
db 0x60, 0x12 ; 00CA42: provisional 68k bra.b $ca56
db 0x48, 0x69, 0x20, 0x54 ; 00CA44: provisional 68k pea.l $2054(a1)
db 0x65, 0x78 ; 00CA48: provisional 68k bcs.b $cac2
db 0x74, 0x20 ; 00CA4A: provisional 68k moveq #$20, d2
db 0x53, 0x70 ; file 00CA4C
