; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C464–00C4A1, inclusive.
cdi_t7g_entry_00c464:
db 0x48, 0x7A, 0x00, 0x08 ; 00C464: provisional 68k pea.l $c46e(pc)
db 0x61, 0x00, 0xF8, 0xE6 ; 00C468: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00C46C: provisional 68k bra.b $c478
db 0x6D, 0x76 ; 00C46E: provisional 68k blt.b $c4e6
db 0x6D, 0x61 ; 00C470: provisional 68k blt.b $c4d3
db 0x6E, 0x3A ; 00C472: provisional 68k bgt.b $c4ae
db 0x0D, 0x0A, 0x00, 0x00 ; 00C474: provisional 68k movep.w $0(a2), d6
db 0x42, 0xE7 ; 00C478: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C47A: provisional 68k pea.l $c484(pc)
db 0x61, 0x00, 0xF8, 0xD0 ; 00C47E: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00C482: provisional 68k bra.b $c48e
db 0x63, 0x75 ; 00C484: provisional 68k bls.b $c4fb
db 0x72, 0x5F ; 00C486: provisional 68k moveq #$5f, d1
db 0x6D, 0x76 ; 00C488: provisional 68k blt.b $c500
db 0x09, 0x09, 0x09, 0x00 ; 00C48A: provisional 68k movep.w $900(a1), d4
db 0x2F, 0x2E, 0xAA, 0x90 ; 00C48E: provisional 68k move.l -$5570(a6), -(a7)
db 0x61, 0x00, 0xF7, 0xC0 ; 00C492: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00C496: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xF8, 0x9C ; 00C498: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xF8, 0x98 ; 00C49C: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 00C4A0: provisional 68k rts 
