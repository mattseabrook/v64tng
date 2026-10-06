; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BBBA–00BBCD, inclusive.
cdi_t7g_entry_00bbba:
db 0x48, 0x7A, 0x00, 0x08 ; 00BBBA: provisional 68k pea.l $bbc4(pc)
db 0x61, 0x00, 0x01, 0x90 ; 00BBBE: provisional 68k bsr.w $bd50
db 0x60, 0x12 ; 00BBC2: provisional 68k bra.b $bbd6
db 0x48, 0x69, 0x20, 0x54 ; 00BBC4: provisional 68k pea.l $2054(a1)
db 0x65, 0x78 ; 00BBC8: provisional 68k bcs.b $bc42
db 0x74, 0x20 ; 00BBCA: provisional 68k moveq #$20, d2
db 0x53, 0x70 ; file 00BBCC
