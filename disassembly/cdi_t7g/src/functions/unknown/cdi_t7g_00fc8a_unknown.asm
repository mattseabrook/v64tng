; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FC8A–00FCFB, inclusive.
cdi_t7g_entry_00fc8a:
db 0x48, 0xE7, 0xFF, 0xFC ; 00FC8A: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x61, 0x00, 0xC0, 0xA6 ; 00FC8E: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xC0, 0xA2 ; 00FC92: provisional 68k bsr.w $bd36
db 0x30, 0x2F, 0x00, 0x3C ; 00FC96: provisional 68k move.w $3c(a7), d0
db 0x61, 0x00, 0xFF, 0x16 ; 00FC9A: provisional 68k bsr.w $fbb2
db 0x42, 0xE7 ; 00FC9E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00FCA0: provisional 68k pea.l $fcaa(pc)
db 0x61, 0x00, 0xC0, 0xAA ; 00FCA4: provisional 68k bsr.w $bd50
db 0x60, 0x06 ; 00FCA8: provisional 68k bra.b $fcb0
db 0x69, 0x64 ; 00FCAA: provisional 68k bvs.b $fd10
db 0x20, 0x3D ; file 00FCAC
db 0x20, 0x00 ; 00FCAE: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 00FCB0: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xBF, 0xEA ; 00FCB2: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00FCB6: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00FCB8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00FCBA: provisional 68k pea.l $fcc4(pc)
db 0x61, 0x00, 0xC0, 0x90 ; 00FCBE: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 00FCC2: provisional 68k bra.b $fcd0
db 0x20, 0x73, 0x74, 0x61 ; 00FCC4: provisional 68k movea.l $61(a3, d7.w), a0
db 0x74, 0x75 ; 00FCC8: provisional 68k moveq #$75, d2
db 0x73, 0x20 ; file 00FCCA
db 0x3D, 0x20 ; 00FCCC: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x1F, 0x29 ; 00FCCE: provisional 68k ori.b #$29, d0
db 0x00, 0x01, 0x61, 0x00 ; 00FCD2: provisional 68k ori.b #$0, d1
db 0xC0, 0x14 ; 00FCD6: provisional 68k and.b (a4), d0
db 0x44, 0xDF ; 00FCD8: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xC0, 0x5A ; 00FCDA: provisional 68k bsr.w $bd36
db 0x42, 0x47 ; 00FCDE: provisional 68k clr.w d7
db 0x20, 0x29, 0x00, 0x16 ; 00FCE0: provisional 68k move.l $16(a1), d0
db 0x61, 0x00, 0x00, 0x16 ; 00FCE4: provisional 68k bsr.w $fcfc
db 0x61, 0x00, 0xC0, 0x4C ; 00FCE8: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xC0, 0x48 ; 00FCEC: provisional 68k bsr.w $bd36
db 0x4C, 0xDF, 0x3F, 0xFF ; 00FCF0: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x02 ; 00FCF4: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00FCF8: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00FCFA: provisional 68k rts 
