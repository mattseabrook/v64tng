; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E3B2–00E485, inclusive.
cdi_nodv_entry_00e3b2:
db 0x67, 0x06 ; 00E3B2: provisional 68k beq.b $e3ba
db 0x51, 0xCF, 0xFF, 0xFA ; 00E3B4: provisional 68k dbra d7, $e3b0
db 0x60, 0x2E ; 00E3B8: provisional 68k bra.b $e3e8
db 0x11, 0x7C, 0x00, 0xFF, 0xFF, 0xFC ; 00E3BA: provisional 68k move.b #$ff, -$4(a0)
db 0x53, 0x47 ; 00E3C0: provisional 68k subq.w #$1, d7
db 0x6B, 0x08 ; 00E3C2: provisional 68k bmi.b $e3cc
db 0x21, 0x58, 0xFF, 0xF8 ; 00E3C4: provisional 68k move.l (a0)+, -$8(a0)
db 0x51, 0xCF, 0xFF, 0xFA ; 00E3C8: provisional 68k dbra d7, $e3c4
db 0x53, 0x6D, 0x00, 0x58 ; 00E3CC: provisional 68k subq.w #$1, $58(a5)
db 0x0C, 0x69, 0x00, 0x06, 0x00, 0x0A ; 00E3D0: provisional 68k cmpi.w #$6, $a(a1)
db 0x66, 0x04 ; 00E3D6: provisional 68k bne.b $e3dc
db 0x61, 0x00, 0xFF, 0x8A ; 00E3D8: provisional 68k bsr.w $e364
db 0x4C, 0xDF, 0x23, 0x83 ; 00E3DC: provisional 68k movem.l (a7)+, d0-d1/d7/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x06 ; 00E3E0: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 00E3E4: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 00E3E6: provisional 68k rts 
db 0x42, 0xE7 ; 00E3E8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E3EA: provisional 68k pea.l $e3f4(pc)
db 0x61, 0x00, 0xE7, 0xE0 ; 00E3EE: provisional 68k bsr.w $cbd0
db 0x60, 0x12 ; 00E3F2: provisional 68k bra.b $e406
db 0x54, 0x72, 0x79, 0x69, 0x6E, 0x67 ; 00E3F4: provisional 68k addq.w #$2, ([$6e67, a2])
db 0x20, 0x74, 0x6F, 0x20, 0x72, 0x65 ; 00E3FA: provisional 68k movea.l $7265(a4, d6.l * 8), a0
db 0x6D, 0x6F ; 00E400: provisional 68k blt.b $e471
db 0x76, 0x65 ; 00E402: provisional 68k moveq #$65, d3
db 0x20, 0x00 ; 00E404: provisional 68k move.l d0, d0
db 0x2F, 0x00 ; 00E406: provisional 68k move.l d0, -(a7)
db 0x61, 0x00, 0xE6, 0xCA ; 00E408: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00E40C: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xE7, 0xA6 ; 00E40E: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0x00, 0x72 ; 00E412: provisional 68k bsr.w $e486
db 0x48, 0x7A, 0x00, 0x08 ; 00E416: provisional 68k pea.l $e420(pc)
db 0x61, 0x00, 0xE7, 0xB4 ; 00E41A: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 00E41E: provisional 68k bra.b $e42c
db 0x4F, 0x74 ; file 00E420
db 0x68, 0x65 ; 00E422: provisional 68k bvc.b $e489
db 0x72, 0x20 ; 00E424: provisional 68k moveq #$20, d1
db 0x64, 0x73 ; 00E426: provisional 68k bcc.b $e49b
db 0x70, 0x3A ; 00E428: provisional 68k moveq #$3a, d0
db 0x2D, 0x00 ; 00E42A: provisional 68k move.l d0, -(a6)
db 0x30, 0x2F, 0x00, 0x1C ; 00E42C: provisional 68k move.w $1c(a7), d0
db 0x42, 0xE7 ; 00E430: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E432: provisional 68k pea.l $e43c(pc)
db 0x61, 0x00, 0xE7, 0x98 ; 00E436: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00E43A: provisional 68k bra.b $e43e
db 0x20, 0x00 ; 00E43C: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 00E43E: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xE6, 0xDC ; 00E440: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00E444: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xE7, 0x6E ; 00E446: provisional 68k bsr.w $cbb6
db 0x0A, 0x40, 0x00, 0x01 ; 00E44A: provisional 68k eori.w #$1, d0
db 0x61, 0x00, 0x04, 0x60 ; 00E44E: provisional 68k bsr.w $e8b0
db 0x61, 0x00, 0x00, 0x32 ; 00E452: provisional 68k bsr.w $e486
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00E456: provisional 68k move.l #$0, -(a7)
db 0x61, 0x00, 0x2E, 0x64 ; 00E45C: provisional 68k bsr.w $112c2
db 0x32, 0x3C, 0x80, 0x00 ; 00E460: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xE7, 0x98 ; 00E464: provisional 68k bsr.w $cbfe
db 0x64, 0x73 ; 00E468: provisional 68k bcc.b $e4dd
db 0x70, 0x5F ; 00E46A: provisional 68k moveq #$5f, d0
db 0x72, 0x65 ; 00E46C: provisional 68k moveq #$65, d1
db 0x6D, 0x6F ; 00E46E: provisional 68k blt.b $e4df
db 0x76, 0x65 ; 00E470: provisional 68k moveq #$65, d3
db 0x3A, 0x20 ; 00E472: provisional 68k move.w -(a0), d5
db 0x4F, 0x62 ; file 00E474
db 0x6A, 0x65 ; 00E476: provisional 68k bpl.b $e4dd
db 0x63, 0x74 ; 00E478: provisional 68k bls.b $e4ee
db 0x20, 0x6E, 0x6F, 0x74 ; 00E47A: provisional 68k movea.l $6f74(a6), a0
db 0x20, 0x69, 0x6E, 0x20 ; 00E47E: provisional 68k movea.l $6e20(a1), a0
db 0x64, 0x73 ; 00E482: provisional 68k bcc.b $e4f7
db 0x70, 0x00 ; 00E484: provisional 68k moveq #$0, d0
