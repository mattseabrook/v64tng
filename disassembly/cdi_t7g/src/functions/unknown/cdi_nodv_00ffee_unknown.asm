; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FFEE–010019, inclusive.
cdi_nodv_entry_00ffee:
db 0x24, 0x7C, 0x10, 0x00, 0x00, 0x00 ; 00FFEE: provisional 68k movea.l #$10000000, a2
db 0x28, 0x4A ; 00FFF4: provisional 68k movea.l a2, a4
db 0x36, 0x6E, 0xC0, 0x54 ; 00FFF6: provisional 68k movea.w -$3fac(a6), a3
db 0x61, 0x1E ; 00FFFA: provisional 68k bsr.b $1001a
db 0x36, 0x6E, 0xC0, 0x56 ; 00FFFC: provisional 68k movea.w -$3faa(a6), a3
db 0x61, 0x18 ; 010000: provisional 68k bsr.b $1001a
db 0x4E, 0x75 ; 010002: provisional 68k rts 
db 0x32, 0x01 ; 010004: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCB, 0xF6 ; 010006: provisional 68k bsr.w $cbfe
db 0x77, 0x72 ; file 01000A
db 0x69, 0x74 ; 01000C: provisional 68k bvs.b $10082
db 0x65, 0x5F ; 01000E: provisional 68k bcs.b $1006f
db 0x70, 0x62 ; 010010: provisional 68k moveq #$62, d0
db 0x5F, 0x64 ; 010012: provisional 68k subq.w #$7, -(a4)
db 0x63, 0x70 ; 010014: provisional 68k bls.b $10086
db 0x20, 0x3A, 0x20, 0x00 ; 010016: provisional 68k move.l $12018(pc), d0
