; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0121D8–0121E9, inclusive.
cdi_t7g_entry_0121d8:
db 0x20, 0x64 ; 0121D8: provisional 68k movea.l -(a4), a0
db 0x65, 0x73 ; 0121DA: provisional 68k bcs.b $1224f
db 0x74, 0x69 ; 0121DC: provisional 68k moveq #$69, d2
db 0x6E, 0x61 ; 0121DE: provisional 68k bgt.b $12241
db 0x74, 0x69 ; 0121E0: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 0121E2: provisional 68k ble.b $12252
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x00 ; file 0121E4
