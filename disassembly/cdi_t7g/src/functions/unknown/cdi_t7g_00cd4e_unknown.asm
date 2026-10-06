; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CD4E–00CDCB, inclusive.
cdi_t7g_entry_00cd4e:
db 0x48, 0x7A, 0x00, 0x08 ; 00CD4E: provisional 68k pea.l $cd58(pc)
db 0x61, 0x00, 0xEF, 0xFC ; 00CD52: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00CD56: provisional 68k bra.b $cd62
db 0x62, 0x61 ; 00CD58: provisional 68k bhi.b $cdbb
db 0x64, 0x6D ; 00CD5A: provisional 68k bcc.b $cdc9
db 0x61, 0x6E ; 00CD5C: provisional 68k bsr.b $cdcc
db 0x3A, 0x0D ; 00CD5E: provisional 68k move.w a5, d5
db 0x0A, 0x00, 0x42, 0xE7 ; 00CD60: provisional 68k eori.b #$e7, d0
db 0x48, 0x7A, 0x00, 0x08 ; 00CD64: provisional 68k pea.l $cd6e(pc)
db 0x61, 0x00, 0xEF, 0xE6 ; 00CD68: provisional 68k bsr.w $bd50
db 0x60, 0x0E ; 00CD6C: provisional 68k bra.b $cd7c
db 0x62, 0x75 ; 00CD6E: provisional 68k bhi.b $cde5
db 0x66, 0x66 ; 00CD70: provisional 68k bne.b $cdd8
db 0x65, 0x72 ; 00CD72: provisional 68k bcs.b $cde6
db 0x5F, 0x73, 0x69, 0x7A, 0x65, 0x09, 0x00, 0x00, 0x2F, 0x2E ; 00CD74: provisional 68k subq.w #$7, ([$65090000, a3], $2f2e)
db 0xAB, 0xAE ; 00CD7E: provisional 68k dc.w $abae
db 0x61, 0x00, 0xEE, 0xD2 ; 00CD80: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00CD84: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xEF, 0xAE ; 00CD86: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 00CD8A: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00CD8C: provisional 68k pea.l $cd96(pc)
db 0x61, 0x00, 0xEF, 0xBE ; 00CD90: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00CD94: provisional 68k bra.b $cda0
db 0x63, 0x75 ; 00CD96: provisional 68k bls.b $ce0d
db 0x72, 0x5F ; 00CD98: provisional 68k moveq #$5f, d1
db 0x62, 0x61 ; 00CD9A: provisional 68k bhi.b $cdfd
db 0x64, 0x09 ; 00CD9C: provisional 68k bcc.b $cda7
db 0x09, 0x00 ; 00CD9E: provisional 68k btst.l d4, d0
db 0x2F, 0x2E, 0xAB, 0xB6 ; 00CDA0: provisional 68k move.l -$544a(a6), -(a7)
db 0x61, 0x00, 0xEE, 0xAE ; 00CDA4: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00CDA8: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xEF, 0x8A ; 00CDAA: provisional 68k bsr.w $bd36
db 0x20, 0x6E, 0xAB, 0xB6 ; 00CDAE: provisional 68k movea.l -$544a(a6), a0
db 0x42, 0xE7 ; 00CDB2: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00CDB4: provisional 68k pea.l $cdbe(pc)
db 0x61, 0x00, 0xEF, 0x96 ; 00CDB8: provisional 68k bsr.w $bd50
db 0x60, 0x10 ; 00CDBC: provisional 68k bra.b $cdce
db 0x63, 0x75 ; 00CDBE: provisional 68k bls.b $ce35
db 0x72, 0x5F ; 00CDC0: provisional 68k moveq #$5f, d1
db 0x62, 0x61 ; 00CDC2: provisional 68k bhi.b $ce25
db 0x64, 0x20 ; 00CDC4: provisional 68k bcc.b $cde6
db 0x73, 0x74 ; file 00CDC6
db 0x61, 0x74 ; 00CDC8: provisional 68k bsr.b $ce3e
db 0x75, 0x65 ; file 00CDCA
