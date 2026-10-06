; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00EFCC–00EFFF, inclusive.
cdi_t7g_entry_00efcc:
db 0x24, 0x7C, 0xC1, 0x80, 0x00, 0x00 ; 00EFCC: provisional 68k movea.l #$c1800000, a2
db 0x28, 0x7C, 0xC0, 0x00, 0x10, 0x10 ; 00EFD2: provisional 68k movea.l #$c0001010, a4
db 0x36, 0x6E, 0xC0, 0x50 ; 00EFD8: provisional 68k movea.w -$3fb0(a6), a3
db 0x61, 0x00, 0x01, 0xBC ; 00EFDC: provisional 68k bsr.w $f19a
db 0x36, 0x6E, 0xC0, 0x52 ; 00EFE0: provisional 68k movea.w -$3fae(a6), a3
db 0x61, 0x00, 0x01, 0xB4 ; 00EFE4: provisional 68k bsr.w $f19a
db 0x4E, 0x75 ; 00EFE8: provisional 68k rts 
db 0x32, 0x01 ; 00EFEA: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCD, 0x90 ; 00EFEC: provisional 68k bsr.w $bd7e
db 0x77, 0x72 ; file 00EFF0
db 0x69, 0x74 ; 00EFF2: provisional 68k bvs.b $f068
db 0x65, 0x5F ; 00EFF4: provisional 68k bcs.b $f055
db 0x70, 0x61 ; 00EFF6: provisional 68k moveq #$61, d0
db 0x5F, 0x64 ; 00EFF8: provisional 68k subq.w #$7, -(a4)
db 0x63, 0x70 ; 00EFFA: provisional 68k bls.b $f06c
db 0x20, 0x3A, 0x20, 0x00 ; 00EFFC: provisional 68k move.l $10ffe(pc), d0
