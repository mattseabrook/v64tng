; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F16E–00F199, inclusive.
cdi_t7g_entry_00f16e:
db 0x24, 0x7C, 0x10, 0x00, 0x00, 0x00 ; 00F16E: provisional 68k movea.l #$10000000, a2
db 0x28, 0x4A ; 00F174: provisional 68k movea.l a2, a4
db 0x36, 0x6E, 0xC0, 0x54 ; 00F176: provisional 68k movea.w -$3fac(a6), a3
db 0x61, 0x1E ; 00F17A: provisional 68k bsr.b $f19a
db 0x36, 0x6E, 0xC0, 0x56 ; 00F17C: provisional 68k movea.w -$3faa(a6), a3
db 0x61, 0x18 ; 00F180: provisional 68k bsr.b $f19a
db 0x4E, 0x75 ; 00F182: provisional 68k rts 
db 0x32, 0x01 ; 00F184: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCB, 0xF6 ; 00F186: provisional 68k bsr.w $bd7e
db 0x77, 0x72 ; file 00F18A
db 0x69, 0x74 ; 00F18C: provisional 68k bvs.b $f202
db 0x65, 0x5F ; 00F18E: provisional 68k bcs.b $f1ef
db 0x70, 0x62 ; 00F190: provisional 68k moveq #$62, d0
db 0x5F, 0x64 ; 00F192: provisional 68k subq.w #$7, -(a4)
db 0x63, 0x70 ; 00F194: provisional 68k bls.b $f206
db 0x20, 0x3A, 0x20, 0x00 ; 00F196: provisional 68k move.l $11198(pc), d0
