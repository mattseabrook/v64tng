; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CEC6–00CEF7, inclusive.
cdi_nodv_entry_00cec6:
db 0x61, 0x74 ; 00CEC6: provisional 68k bsr.b $cf3c
db 0x65, 0x3A ; 00CEC8: provisional 68k bcs.b $cf04
db 0x20, 0x49 ; 00CECA: provisional 68k movea.l a1, a0
db 0x6E, 0x20 ; 00CECC: provisional 68k bgt.b $ceee
db 0x75, 0x73 ; file 00CECE
db 0x65, 0x21 ; 00CED0: provisional 68k bcs.b $cef3
db 0x00, 0x00, 0x50, 0xEE ; 00CED2: provisional 68k ori.b #$ee, d0
db 0xA9, 0x0C ; 00CED6: provisional 68k dc.w $a90c
db 0x2A, 0x6F, 0x00, 0x10 ; 00CED8: provisional 68k movea.l $10(a7), a5
db 0x30, 0x2F, 0x00, 0x14 ; 00CEDC: provisional 68k move.w $14(a7), d0
db 0xB0, 0x6D, 0x00, 0x1E ; 00CEE0: provisional 68k cmp.w $1e(a5), d0
db 0x62, 0x4E ; 00CEE4: provisional 68k bhi.b $cf34
db 0x91, 0x6D, 0x00, 0x1E ; 00CEE6: provisional 68k sub.w d0, $1e(a5)
db 0xD1, 0x6D, 0x00, 0x20 ; 00CEEA: provisional 68k add.w d0, $20(a5)
db 0x20, 0x6D, 0x00, 0x22 ; 00CEEE: provisional 68k movea.l $22(a5), a0
db 0x22, 0x48 ; 00CEF2: provisional 68k movea.l a0, a1
db 0x55, 0x40 ; 00CEF4: provisional 68k subq.w #$2, d0
db 0x6B, 0x00 ; file 00CEF6
