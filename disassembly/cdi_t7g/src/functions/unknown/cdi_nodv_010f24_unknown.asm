; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010F24–010F4B, inclusive.
cdi_nodv_entry_010f24:
db 0x00, 0x00 ; file 010F24
db 0x20, 0x4D ; 010F26: provisional 68k movea.l a5, a0
db 0x4C, 0xDF, 0x3E, 0xFF ; 010F28: provisional 68k movem.l (a7)+, d0-d7/a1-a5
db 0x2F, 0x57, 0x00, 0x06 ; 010F2C: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 010F30: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 010F34: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 010F36: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xBC, 0xC2 ; 010F3A: provisional 68k bsr.w $cbfe
db 0x6F, 0x62 ; 010F3E: provisional 68k ble.b $10fa2
db 0x6A, 0x5F ; 010F40: provisional 68k bpl.b $10fa1
db 0x63, 0x72 ; 010F42: provisional 68k bls.b $10fb6
db 0x65, 0x61 ; 010F44: provisional 68k bcs.b $10fa7
db 0x74, 0x65 ; 010F46: provisional 68k moveq #$65, d2
db 0x20, 0x3A, 0x20, 0x43 ; 010F48: provisional 68k move.l $12f8d(pc), d0
