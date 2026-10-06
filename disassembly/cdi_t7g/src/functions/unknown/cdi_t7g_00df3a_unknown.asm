; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DF3A–00DFA1, inclusive.
cdi_t7g_entry_00df3a:
db 0x48, 0xE7, 0x00, 0x84 ; 00DF3A: provisional 68k movem.l a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 00DF3E: provisional 68k movea.l $c(a7), a5
db 0x20, 0x6D, 0x00, 0x2E ; 00DF42: provisional 68k movea.l $2e(a5), a0
db 0x3B, 0x68, 0x00, 0x20, 0x00, 0x3C ; 00DF46: provisional 68k move.w $20(a0), $3c(a5)
db 0x42, 0x6D, 0x00, 0x3E ; 00DF4C: provisional 68k clr.w $3e(a5)
db 0x4C, 0xDF, 0x21, 0x00 ; 00DF50: provisional 68k movem.l (a7)+, a0/a5
db 0x2E, 0x9F ; 00DF54: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00DF56: provisional 68k rts 
db 0x42, 0xE7 ; 00DF58: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00DF5A: provisional 68k pea.l $df64(pc)
db 0x61, 0x00, 0xDD, 0xF0 ; 00DF5E: provisional 68k bsr.w $bd50
db 0x60, 0x16 ; 00DF62: provisional 68k bra.b $df7a
db 0x64, 0x65 ; 00DF64: provisional 68k bcc.b $dfcb
db 0x62, 0x75 ; 00DF66: provisional 68k bhi.b $dfdd
db 0x67, 0x5F ; 00DF68: provisional 68k beq.b $dfc9
db 0x72, 0x61 ; 00DF6A: provisional 68k moveq #$61, d1
db 0x6E, 0x67 ; 00DF6C: provisional 68k bgt.b $dfd5
db 0x65, 0x3A ; 00DF6E: provisional 68k bcs.b $dfaa
db 0x20, 0x72, 0x61, 0x6E, 0x67, 0x65 ; 00DF70: provisional 68k movea.l ([$6765, a2]), a0
db 0x20, 0x3D ; file 00DF76
db 0x20, 0x00 ; 00DF78: provisional 68k move.l d0, d0
db 0x3F, 0x2D, 0x00, 0x3C ; 00DF7A: provisional 68k move.w $3c(a5), -(a7)
db 0x61, 0x00, 0xDD, 0x1E ; 00DF7E: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00DF82: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00DF84: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00DF86: provisional 68k pea.l $df90(pc)
db 0x61, 0x00, 0xDD, 0xC4 ; 00DF8A: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00DF8E: provisional 68k bra.b $df92
db 0x20, 0x00 ; 00DF90: provisional 68k move.l d0, d0
db 0x3F, 0x2D, 0x00, 0x3E ; 00DF92: provisional 68k move.w $3e(a5), -(a7)
db 0x61, 0x00, 0xDD, 0x06 ; 00DF96: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00DF9A: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xDD, 0x98 ; 00DF9C: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 00DFA0: provisional 68k rts 
