; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E65E–00E6DF, inclusive.
cdi_t7g_entry_00e65e:
db 0x48, 0x7A, 0x00, 0x08 ; 00E65E: provisional 68k pea.l $e668(pc)
db 0x61, 0x00, 0xD6, 0xEC ; 00E662: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00E666: provisional 68k bra.b $e672
db 0x61, 0x76 ; 00E668: provisional 68k bsr.b $e6e0
db 0x6D, 0x61 ; 00E66A: provisional 68k blt.b $e6cd
db 0x6E, 0x3A ; 00E66C: provisional 68k bgt.b $e6a8
db 0x0D, 0x0A, 0x00, 0x00 ; 00E66E: provisional 68k movep.w $0(a2), d6
db 0x42, 0xE7 ; 00E672: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E674: provisional 68k pea.l $e67e(pc)
db 0x61, 0x00, 0xD6, 0xD6 ; 00E678: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 00E67C: provisional 68k bra.b $e68a
db 0x61, 0x76 ; 00E67E: provisional 68k bsr.b $e6f6
db 0x6D, 0x5F ; 00E680: provisional 68k blt.b $e6e1
db 0x73, 0x74 ; file 00E682
db 0x61, 0x74 ; 00E684: provisional 68k bsr.b $e6fa
db 0x65, 0x09 ; 00E686: provisional 68k bcs.b $e691
db 0x09, 0x00 ; 00E688: provisional 68k btst.l d4, d0
db 0x3F, 0x2E, 0xAC, 0x8C ; 00E68A: provisional 68k move.w -$5374(a6), -(a7)
db 0x61, 0x00, 0xD6, 0x0E ; 00E68E: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00E692: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xD6, 0xA0 ; 00E694: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 00E698: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E69A: provisional 68k pea.l $e6a4(pc)
db 0x61, 0x00, 0xD6, 0xB0 ; 00E69E: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00E6A2: provisional 68k bra.b $e6ae
db 0x63, 0x75 ; 00E6A4: provisional 68k bls.b $e71b
db 0x72, 0x5F ; 00E6A6: provisional 68k moveq #$5f, d1
db 0x61, 0x76 ; 00E6A8: provisional 68k bsr.b $e720
db 0x09, 0x09, 0x09, 0x00 ; 00E6AA: provisional 68k movep.w $900(a1), d4
db 0x2F, 0x2E, 0xAC, 0x8E ; 00E6AE: provisional 68k move.l -$5372(a6), -(a7)
db 0x61, 0x00, 0xD5, 0xA0 ; 00E6B2: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00E6B6: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xD6, 0x7C ; 00E6B8: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xD6, 0x78 ; 00E6BC: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 00E6C0: provisional 68k rts 
db 0x41, 0xFA, 0x02, 0x36 ; 00E6C2: provisional 68k lea.l $e8fa(pc), a0
db 0x2F, 0x08 ; 00E6C6: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xDB, 0x3A ; 00E6C8: provisional 68k bsr.w $c204
db 0x3D, 0x40, 0xAC, 0x92 ; 00E6CC: provisional 68k move.w d0, -$536e(a6)
db 0x41, 0xFA, 0x02, 0x44 ; 00E6D0: provisional 68k lea.l $e916(pc), a0
db 0x2F, 0x08 ; 00E6D4: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xDB, 0x2C ; 00E6D6: provisional 68k bsr.w $c204
db 0x3D, 0x40, 0xAC, 0xB8 ; 00E6DA: provisional 68k move.w d0, -$5348(a6)
db 0x3D, 0x7C ; file 00E6DE
