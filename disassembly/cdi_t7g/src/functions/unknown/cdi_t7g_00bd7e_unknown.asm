; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BD7E–00BECF, inclusive.
cdi_t7g_entry_00bd7e:
db 0x20, 0x5F ; 00BD7E: provisional 68k movea.l (a7)+, a0
db 0x48, 0x50 ; 00BD80: provisional 68k pea.l (a0)
db 0x61, 0x00, 0xFF, 0xCC ; 00BD82: provisional 68k bsr.w $bd50
db 0x42, 0xE7 ; 00BD86: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00BD88: provisional 68k pea.l $bd92(pc)
db 0x61, 0x00, 0xFF, 0xC2 ; 00BD8C: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00BD90: provisional 68k bra.b $bd94
db 0x20, 0x00 ; 00BD92: provisional 68k move.l d0, d0
db 0x3F, 0x01 ; 00BD94: provisional 68k move.w d1, -(a7)
db 0x61, 0x00, 0xFF, 0x06 ; 00BD96: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00BD9A: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xFF, 0x98 ; 00BD9C: provisional 68k bsr.w $bd36
db 0x60, 0xDE ; 00BDA0: provisional 68k bra.b $bd80
db 0x42, 0x6E, 0xD0, 0x42 ; 00BDA2: provisional 68k clr.w -$2fbe(a6)
db 0x4A, 0x40 ; 00BDA6: provisional 68k tst.w d0
db 0x66, 0x02 ; 00BDA8: provisional 68k bne.b $bdac
db 0x4E, 0x75 ; 00BDAA: provisional 68k rts 
db 0x41, 0xFA, 0x00, 0x28 ; 00BDAC: provisional 68k lea.l $bdd6(pc), a0
db 0x70, 0x41 ; 00BDB0: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00BDB2: provisional 68k trap #0 ; OS-9 service word $0084
db 0x64, 0x18 ; 00BDB6: provisional 68k bcc.b $bdd0
db 0x32, 0x01 ; 00BDB8: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xFF, 0xC2 ; 00BDBA: provisional 68k bsr.w $bd7e
db 0x65, 0x72 ; 00BDBE: provisional 68k bcs.b $be32
db 0x72, 0x5F ; 00BDC0: provisional 68k moveq #$5f, d1
db 0x69, 0x6E ; 00BDC2: provisional 68k bvs.b $be32
db 0x69, 0x74 ; 00BDC4: provisional 68k bvs.b $be3a
db 0x69, 0x61 ; 00BDC6: provisional 68k bvs.b $be29
db 0x6C, 0x69 ; 00BDC8: provisional 68k bge.b $be33
db 0x73, 0x65 ; file 00BDCA
db 0x3A, 0x20 ; 00BDCC: provisional 68k move.w -(a0), d5
db 0x00, 0x00, 0x3D, 0x40 ; 00BDCE: provisional 68k ori.b #$40, d0
db 0xD0, 0x42 ; 00BDD2: provisional 68k add.w d2, d0
db 0x4E, 0x75 ; 00BDD4: provisional 68k rts 
db 0x2F, 0x63, 0x64, 0x2F ; 00BDD6: provisional 68k move.l -(a3), $642f(a7)
db 0x65, 0x72 ; 00BDDA: provisional 68k bcs.b $be4e
db 0x72, 0x6F ; 00BDDC: provisional 68k moveq #$6f, d1
db 0x72, 0x73 ; 00BDDE: provisional 68k moveq #$73, d1
db 0x2E, 0x74, 0x78, 0x74 ; 00BDE0: provisional 68k movea.l $74(a4, d7.l), a7
db 0x00, 0x00, 0x48, 0xE7 ; 00BDE4: provisional 68k ori.b #$e7, d0
db 0xC0, 0xC0 ; 00BDE8: provisional 68k mulu.w d0, d0
db 0x20, 0x2F, 0x00, 0x14 ; 00BDEA: provisional 68k move.l $14(a7), d0
db 0x66, 0x18 ; 00BDEE: provisional 68k bne.b $be08
db 0x48, 0x7A, 0x00, 0x08 ; 00BDF0: provisional 68k pea.l $bdfa(pc)
db 0x61, 0x00, 0xFF, 0x5A ; 00BDF4: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00BDF8: provisional 68k bra.b $be04
db 0x3C, 0x6E, 0x75, 0x6C ; 00BDFA: provisional 68k movea.w $756c(a6), a6
db 0x6C, 0x3E ; 00BDFE: provisional 68k bge.b $be3e
db 0x0D, 0x0A, 0x00, 0x00 ; 00BE00: provisional 68k movep.w $0(a2), d6
db 0x60, 0x00, 0x00, 0x5A ; 00BE04: provisional 68k bra.w $be60
db 0x20, 0x40 ; 00BE08: provisional 68k movea.l d0, a0
db 0x22, 0x48 ; 00BE0A: provisional 68k movea.l a0, a1
db 0x70, 0x01 ; 00BE0C: provisional 68k moveq #$1, d0
db 0x22, 0x29, 0x09, 0x34 ; 00BE0E: provisional 68k move.l $934(a1), d1
db 0x67, 0x00, 0x00, 0x10 ; 00BE12: provisional 68k beq.w $be24
db 0xB2, 0x88 ; 00BE16: provisional 68k cmp.l a0, d1
db 0x67, 0x00, 0x00, 0x0A ; 00BE18: provisional 68k beq.w $be24
db 0x22, 0x41 ; 00BE1C: provisional 68k movea.l d1, a1
db 0x52, 0x40 ; 00BE1E: provisional 68k addq.w #$1, d0
db 0x60, 0x00, 0xFF, 0xEC ; 00BE20: provisional 68k bra.w $be0e
db 0x42, 0xE7 ; 00BE24: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00BE26: provisional 68k pea.l $be30(pc)
db 0x61, 0x00, 0xFF, 0x24 ; 00BE2A: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 00BE2E: provisional 68k bra.b $be3c
db 0x64, 0x2D ; 00BE30: provisional 68k bcc.b $be5f
db 0x6E, 0x6F ; 00BE32: provisional 68k bgt.b $bea3
db 0x64, 0x65 ; 00BE34: provisional 68k bcc.b $be9b
db 0x73, 0x20 ; file 00BE36
db 0x3D, 0x20 ; 00BE38: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x00 ; 00BE3A: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xFE, 0x5E ; 00BE3E: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00BE42: provisional 68k move.w (a7)+, ccr
db 0xB2, 0x88 ; 00BE44: provisional 68k cmp.l a0, d1
db 0x66, 0x00, 0x00, 0x18 ; 00BE46: provisional 68k bne.w $be60
db 0x48, 0x7A, 0x00, 0x08 ; 00BE4A: provisional 68k pea.l $be54(pc)
db 0x61, 0x00, 0xFF, 0x00 ; 00BE4E: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 00BE52: provisional 68k bra.b $be60
db 0x20, 0x3C, 0x63, 0x69, 0x72, 0x63 ; 00BE54: provisional 68k move.l #$63697263, d0
db 0x75, 0x6C ; file 00BE5A
db 0x61, 0x72 ; 00BE5C: provisional 68k bsr.b $bed0
db 0x3E, 0x00 ; 00BE5E: provisional 68k move.w d0, d7
db 0x4C, 0xDF, 0x03, 0x03 ; 00BE60: provisional 68k movem.l (a7)+, d0-d1/a0-a1
db 0x2E, 0x9F ; 00BE64: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00BE66: provisional 68k rts 
db 0x48, 0xA7, 0xE0, 0x00 ; 00BE68: provisional 68k movem.w d0-d2, -(a7)
db 0x34, 0x1F ; 00BE6C: provisional 68k move.w (a7)+, d2
db 0x3F, 0x3C, 0x00, 0x02 ; 00BE6E: provisional 68k move.w #$2, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00BE72: provisional 68k move.l #$0, -(a7)
db 0x2D, 0x42, 0xCF, 0xE8 ; 00BE78: provisional 68k move.l d2, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x80, 0xCF, 0xEC ; 00BE7C: provisional 68k move.l #$80, -$3014(a6)
db 0x61, 0x00, 0x41, 0xF8 ; 00BE84: provisional 68k bsr.w $1007e
db 0x65, 0x00, 0x00, 0xCA ; 00BE88: provisional 68k bcs.w $bf54
db 0x48, 0x7A, 0x00, 0x0A ; 00BE8C: provisional 68k pea.l $be98(pc)
db 0x2F, 0x08 ; 00BE90: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x44, 0x8E ; 00BE92: provisional 68k bsr.w $10322
db 0x60, 0x08 ; 00BE96: provisional 68k bra.b $bea0
db 0x64, 0x6E ; 00BE98: provisional 68k bcc.b $bf08
db 0x6C, 0x69 ; 00BE9A: provisional 68k bge.b $bf05
db 0x73, 0x74 ; file 00BE9C
db 0x41, 0x00 ; 00BE9E: provisional 68k dc.w $4100
db 0x2D, 0x48, 0xA8, 0xFC ; 00BEA0: provisional 68k move.l a0, -$5704(a6)
db 0x34, 0x1F ; 00BEA4: provisional 68k move.w (a7)+, d2
db 0x3F, 0x3C, 0x00, 0x02 ; 00BEA6: provisional 68k move.w #$2, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00BEAA: provisional 68k move.l #$0, -(a7)
db 0x2D, 0x42, 0xCF, 0xE8 ; 00BEB0: provisional 68k move.l d2, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x81, 0xCF, 0xEC ; 00BEB4: provisional 68k move.l #$81, -$3014(a6)
db 0x61, 0x00, 0x41, 0xC0 ; 00BEBC: provisional 68k bsr.w $1007e
db 0x65, 0x00, 0x00, 0xCC ; 00BEC0: provisional 68k bcs.w $bf8e
db 0x48, 0x7A, 0x00, 0x0A ; 00BEC4: provisional 68k pea.l $bed0(pc)
db 0x2F, 0x08 ; 00BEC8: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x44, 0x56 ; 00BECA: provisional 68k bsr.w $10322
db 0x60, 0x08 ; 00BECE: provisional 68k bra.b $bed8
