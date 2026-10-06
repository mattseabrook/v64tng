; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013548–013761, inclusive.
cdi_t7g_entry_013548:
db 0xAC, 0xAD ; 013548: provisional 68k dc.w $acad
db 0xAE, 0xAE ; 01354A: provisional 68k dc.w $aeae
db 0xAF, 0xB0 ; 01354C: provisional 68k dc.w $afb0
db 0xB1, 0xB1, 0xB2, 0xB3 ; 01354E: provisional 68k eor.l d0, -$4d(a1, a3.w)
db 0xB4, 0xB4, 0xB5, 0xB6, 0xB7, 0xB7, 0xB8, 0xB9, 0xBA, 0xBA ; 013552: provisional 68k cmp.l ([$b7b7b8b9], a3.w * 4, $baba), d2
db 0xBB, 0xBC, 0xBD, 0xBD, 0xBE, 0xBF ; file 01355C
db 0x00, 0x00, 0x01, 0x02 ; 013562: provisional 68k ori.b #$2, d0
db 0x03, 0x04 ; 013566: provisional 68k btst.l d1, d4
db 0x05, 0x06 ; 013568: provisional 68k btst.l d2, d6
db 0x07, 0x07 ; 01356A: provisional 68k btst.l d3, d7
db 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0E ; file 01356C
db 0x0F, 0x10 ; 013574: provisional 68k btst.l d7, (a0)
db 0x11, 0x12 ; 013576: provisional 68k move.b (a2), -(a0)
db 0x13, 0x14 ; 013578: provisional 68k move.b (a4), -(a1)
db 0x15, 0x15 ; 01357A: provisional 68k move.b (a5), -(a2)
db 0x16, 0x17 ; 01357C: provisional 68k move.b (a7), d3
db 0x18, 0x19 ; 01357E: provisional 68k move.b (a1)+, d4
db 0x1A, 0x1B ; 013580: provisional 68k move.b (a3)+, d5
db 0x1C, 0x1C ; 013582: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1E ; 013584: provisional 68k move.b (a6)+, -(a6)
db 0x1F, 0x20 ; 013586: provisional 68k move.b -(a0), -(a7)
db 0x21, 0x22 ; 013588: provisional 68k move.l -(a2), -(a0)
db 0x23, 0x23 ; 01358A: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x25 ; 01358C: provisional 68k move.l -(a5), d2
db 0x26, 0x27 ; 01358E: provisional 68k move.l -(a7), d3
db 0x28, 0x29, 0x2A, 0x2A ; 013590: provisional 68k move.l $2a2a(a1), d4
db 0x2B, 0x2C, 0x2D, 0x2E ; 013594: provisional 68k move.l $2d2e(a4), -(a5)
db 0x2F, 0x30, 0x31, 0x31, 0x32, 0x33, 0x34, 0x35 ; 013598: provisional 68k move.l ([$32333435, a0, d3.w]), -(a7)
db 0x36, 0x37, 0x38, 0x38 ; 0135A0: provisional 68k move.w $38(a7, d3.l), d3
db 0x39, 0x3A, 0x3B, 0x3C ; 0135A4: provisional 68k move.w $170e2(pc), -(a4)
db 0x3D, 0x3E, 0x3F, 0x3F ; file 0135A8
db 0x40, 0x41 ; 0135AC: provisional 68k negx.w d1
db 0x42, 0x43 ; 0135AE: provisional 68k clr.w d3
db 0x44, 0x45 ; 0135B0: provisional 68k neg.w d5
db 0x46, 0x46 ; 0135B2: provisional 68k not.w d6
db 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4D ; file 0135B4
db 0x4E, 0x4F ; 0135BC: provisional 68k trap #$f
db 0x50, 0x51 ; 0135BE: provisional 68k addq.w #$8, (a1)
db 0x52, 0x53 ; 0135C0: provisional 68k addq.w #$1, (a3)
db 0x54, 0x54 ; 0135C2: provisional 68k addq.w #$2, (a4)
db 0x55, 0x56 ; 0135C4: provisional 68k subq.w #$2, (a6)
db 0x57, 0x58 ; 0135C6: provisional 68k subq.w #$3, (a0)+
db 0x59, 0x5A ; 0135C8: provisional 68k subq.w #$4, (a2)+
db 0x5B, 0x5B ; 0135CA: provisional 68k subq.w #$5, (a3)+
db 0x5C, 0x5D ; 0135CC: provisional 68k addq.w #$6, (a5)+
db 0x5E, 0x5F ; 0135CE: provisional 68k addq.w #$7, (a7)+
db 0x60, 0x61 ; 0135D0: provisional 68k bra.b $13633
db 0x62, 0x62 ; 0135D2: provisional 68k bhi.b $13636
db 0x63, 0x64 ; 0135D4: provisional 68k bls.b $1363a
db 0x65, 0x66 ; 0135D6: provisional 68k bcs.b $1363e
db 0x67, 0x68 ; 0135D8: provisional 68k beq.b $13642
db 0x69, 0x69 ; 0135DA: provisional 68k bvs.b $13645
db 0x6A, 0x6B ; 0135DC: provisional 68k bpl.b $13649
db 0x6C, 0x6D ; 0135DE: provisional 68k bge.b $1364d
db 0x6E, 0x6F ; 0135E0: provisional 68k bgt.b $13651
db 0x70, 0x70 ; 0135E2: provisional 68k moveq #$70, d0
db 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x77 ; file 0135E4
db 0x78, 0x79 ; 0135EC: provisional 68k moveq #$79, d4
db 0x7A, 0x7B ; 0135EE: provisional 68k moveq #$7b, d5
db 0x7C, 0x7D ; 0135F0: provisional 68k moveq #$7d, d6
db 0x7E, 0x7E ; 0135F2: provisional 68k moveq #$7e, d7
db 0x7F, 0x80 ; file 0135F4
db 0x81, 0x82 ; 0135F6: provisional 68k dc.w $8182
db 0x83, 0x84 ; 0135F8: provisional 68k dc.w $8384
db 0x85, 0x85 ; 0135FA: provisional 68k dc.w $8585
db 0x86, 0x87 ; 0135FC: provisional 68k or.l d7, d3
db 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8C ; file 0135FE
db 0x8D, 0x8E ; 013604: provisional 68k dc.w $8d8e
db 0x8F, 0x90 ; 013606: provisional 68k or.l d7, (a0)
db 0x91, 0x92 ; 013608: provisional 68k sub.l d0, (a2)
db 0x93, 0x93 ; 01360A: provisional 68k sub.l d1, (a3)
db 0x94, 0x95 ; 01360C: provisional 68k sub.l (a5), d2
db 0x96, 0x97 ; 01360E: provisional 68k sub.l (a7), d3
db 0x98, 0x99 ; 013610: provisional 68k sub.l (a1)+, d4
db 0x9A, 0x9A ; 013612: provisional 68k sub.l (a2)+, d5
db 0x9B, 0x9C ; 013614: provisional 68k sub.l d5, (a4)+
db 0x9D, 0x9E ; 013616: provisional 68k sub.l d6, (a6)+
db 0x9F, 0xA0 ; 013618: provisional 68k sub.l d7, -(a0)
db 0xA1, 0xA1 ; 01361A: provisional 68k dc.w $a1a1
db 0xA2, 0xA3 ; 01361C: provisional 68k dc.w $a2a3
db 0xA4, 0xA5 ; 01361E: provisional 68k dc.w $a4a5
db 0xA6, 0xA7 ; 013620: provisional 68k dc.w $a6a7
db 0xA8, 0xA8 ; 013622: provisional 68k dc.w $a8a8
db 0xA9, 0xAA ; 013624: provisional 68k dc.w $a9aa
db 0xAB, 0xAC ; 013626: provisional 68k dc.w $abac
db 0xAD, 0xAE ; 013628: provisional 68k dc.w $adae
db 0xAF, 0xAF ; 01362A: provisional 68k dc.w $afaf
db 0xB0, 0xB1, 0xB2, 0xB3 ; 01362C: provisional 68k cmp.l -$4d(a1, a3.w), d0
db 0xB4, 0xB5, 0xB6, 0xB6 ; 013630: provisional 68k cmp.l -$4a(a5, a3.w), d2
db 0xB7, 0xB8, 0xB9, 0xBA ; 013634: provisional 68k eor.l d3, $b9ba.w
db 0xBB, 0xBC, 0xBD, 0xBD, 0xBE, 0xBF ; file 013638
db 0xC0, 0xC1 ; 01363E: provisional 68k mulu.w d1, d0
db 0xC2, 0xC3 ; 013640: provisional 68k mulu.w d3, d1
db 0xC4, 0xC4 ; 013642: provisional 68k mulu.w d4, d2
db 0xC5, 0xC6 ; 013644: provisional 68k muls.w d6, d2
db 0xC7, 0xC8, 0xC9, 0xCA, 0xCB, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF ; file 013646
db 0xD0, 0xD1 ; 013650: provisional 68k adda.w (a1), a0
db 0xD2, 0xD2 ; 013652: provisional 68k adda.w (a2), a1
db 0xD3, 0xD4 ; 013654: provisional 68k adda.l (a4), a1
db 0xD5, 0xD6 ; 013656: provisional 68k adda.l (a6), a2
db 0xD7, 0xD8 ; 013658: provisional 68k adda.l (a0)+, a3
db 0xD9, 0xD9 ; 01365A: provisional 68k adda.l (a1)+, a4
db 0xDA, 0xDB ; 01365C: provisional 68k adda.w (a3)+, a5
db 0xDC, 0xDD ; 01365E: provisional 68k adda.w (a5)+, a6
db 0xDE, 0xDF ; 013660: provisional 68k adda.w (a7)+, a7
db 0x00, 0x01, 0x02, 0x03 ; 013662: provisional 68k ori.b #$3, d1
db 0x04, 0x05, 0x06, 0x07 ; 013666: provisional 68k subi.b #$7, d5
db 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F ; file 01366A
db 0x10, 0x11 ; 013672: provisional 68k move.b (a1), d0
db 0x12, 0x13 ; 013674: provisional 68k move.b (a3), d1
db 0x14, 0x15 ; 013676: provisional 68k move.b (a5), d2
db 0x16, 0x17 ; 013678: provisional 68k move.b (a7), d3
db 0x18, 0x19 ; 01367A: provisional 68k move.b (a1)+, d4
db 0x1A, 0x1B ; 01367C: provisional 68k move.b (a3)+, d5
db 0x1C, 0x1D ; 01367E: provisional 68k move.b (a5)+, d6
db 0x1E, 0x1F ; 013680: provisional 68k move.b (a7)+, d7
db 0x20, 0x21 ; 013682: provisional 68k move.l -(a1), d0
db 0x22, 0x23 ; 013684: provisional 68k move.l -(a3), d1
db 0x24, 0x25 ; 013686: provisional 68k move.l -(a5), d2
db 0x26, 0x27 ; 013688: provisional 68k move.l -(a7), d3
db 0x28, 0x29, 0x2A, 0x2B ; 01368A: provisional 68k move.l $2a2b(a1), d4
db 0x2C, 0x2D, 0x2E, 0x2F ; 01368E: provisional 68k move.l $2e2f(a5), d6
db 0x30, 0x31, 0x32, 0x33 ; 013692: provisional 68k move.w $33(a1, d3.w), d0
db 0x34, 0x35, 0x36, 0x37 ; 013696: provisional 68k move.w $37(a5, d3.w), d2
db 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D ; 01369A: provisional 68k move.w $3a3b3c3d.l, d4
db 0x3E, 0x3F ; file 0136A0
db 0x40, 0x41 ; 0136A2: provisional 68k negx.w d1
db 0x42, 0x43 ; 0136A4: provisional 68k clr.w d3
db 0x44, 0x45 ; 0136A6: provisional 68k neg.w d5
db 0x46, 0x47 ; 0136A8: provisional 68k not.w d7
db 0x48, 0x49 ; 0136AA: provisional 68k dc.w $4849
db 0x4A, 0x4B ; 0136AC: provisional 68k dc.w $4a4b
db 0x4C, 0x4D ; file 0136AE
db 0x4E, 0x4F ; 0136B0: provisional 68k trap #$f
db 0x50, 0x51 ; 0136B2: provisional 68k addq.w #$8, (a1)
db 0x52, 0x53 ; 0136B4: provisional 68k addq.w #$1, (a3)
db 0x54, 0x55 ; 0136B6: provisional 68k addq.w #$2, (a5)
db 0x56, 0x57 ; 0136B8: provisional 68k addq.w #$3, (a7)
db 0x58, 0x59 ; 0136BA: provisional 68k addq.w #$4, (a1)+
db 0x5A, 0x5B ; 0136BC: provisional 68k addq.w #$5, (a3)+
db 0x5C, 0x5D ; 0136BE: provisional 68k addq.w #$6, (a5)+
db 0x5E, 0x5F ; 0136C0: provisional 68k addq.w #$7, (a7)+
db 0x60, 0x61 ; 0136C2: provisional 68k bra.b $13725
db 0x62, 0x63 ; 0136C4: provisional 68k bhi.b $13729
db 0x64, 0x65 ; 0136C6: provisional 68k bcc.b $1372d
db 0x66, 0x67 ; 0136C8: provisional 68k bne.b $13731
db 0x68, 0x69 ; 0136CA: provisional 68k bvc.b $13735
db 0x6A, 0x6B ; 0136CC: provisional 68k bpl.b $13739
db 0x6C, 0x6D ; 0136CE: provisional 68k bge.b $1373d
db 0x6E, 0x6F ; 0136D0: provisional 68k bgt.b $13741
db 0x70, 0x71 ; 0136D2: provisional 68k moveq #$71, d0
db 0x72, 0x73 ; 0136D4: provisional 68k moveq #$73, d1
db 0x74, 0x75 ; 0136D6: provisional 68k moveq #$75, d2
db 0x76, 0x77 ; 0136D8: provisional 68k moveq #$77, d3
db 0x78, 0x79 ; 0136DA: provisional 68k moveq #$79, d4
db 0x7A, 0x7B ; 0136DC: provisional 68k moveq #$7b, d5
db 0x7C, 0x7D ; 0136DE: provisional 68k moveq #$7d, d6
db 0x7E, 0x7F ; 0136E0: provisional 68k moveq #$7f, d7
db 0x80, 0x81 ; 0136E2: provisional 68k or.l d1, d0
db 0x82, 0x83 ; 0136E4: provisional 68k or.l d3, d1
db 0x84, 0x85 ; 0136E6: provisional 68k or.l d5, d2
db 0x86, 0x87 ; 0136E8: provisional 68k or.l d7, d3
db 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8D, 0x8E, 0x8F ; file 0136EA
db 0x90, 0x91 ; 0136F2: provisional 68k sub.l (a1), d0
db 0x92, 0x93 ; 0136F4: provisional 68k sub.l (a3), d1
db 0x94, 0x95 ; 0136F6: provisional 68k sub.l (a5), d2
db 0x96, 0x97 ; 0136F8: provisional 68k sub.l (a7), d3
db 0x98, 0x99 ; 0136FA: provisional 68k sub.l (a1)+, d4
db 0x9A, 0x9B ; 0136FC: provisional 68k sub.l (a3)+, d5
db 0x9C, 0x9D ; 0136FE: provisional 68k sub.l (a5)+, d6
db 0x9E, 0x9F ; 013700: provisional 68k sub.l (a7)+, d7
db 0xA0, 0xA1 ; 013702: provisional 68k dc.w $a0a1
db 0xA2, 0xA3 ; 013704: provisional 68k dc.w $a2a3
db 0xA4, 0xA5 ; 013706: provisional 68k dc.w $a4a5
db 0xA6, 0xA7 ; 013708: provisional 68k dc.w $a6a7
db 0xA8, 0xA9 ; 01370A: provisional 68k dc.w $a8a9
db 0xAA, 0xAB ; 01370C: provisional 68k dc.w $aaab
db 0xAC, 0xAD ; 01370E: provisional 68k dc.w $acad
db 0xAE, 0xAF ; 013710: provisional 68k dc.w $aeaf
db 0xB0, 0xB1, 0xB2, 0xB3 ; 013712: provisional 68k cmp.l -$4d(a1, a3.w), d0
db 0xB4, 0xB5, 0xB6, 0xB7 ; 013716: provisional 68k cmp.l -$49(a5, a3.w), d2
db 0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD ; 01371A: provisional 68k cmp.l $babbbcbd.l, d4
db 0xBE, 0xBF ; file 013720
db 0xC0, 0xC1 ; 013722: provisional 68k mulu.w d1, d0
db 0xC2, 0xC3 ; 013724: provisional 68k mulu.w d3, d1
db 0xC4, 0xC5 ; 013726: provisional 68k mulu.w d5, d2
db 0xC6, 0xC7 ; 013728: provisional 68k mulu.w d7, d3
db 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF ; file 01372A
db 0xD0, 0xD1 ; 013732: provisional 68k adda.w (a1), a0
db 0xD2, 0xD3 ; 013734: provisional 68k adda.w (a3), a1
db 0xD4, 0xD5 ; 013736: provisional 68k adda.w (a5), a2
db 0xD6, 0xD7 ; 013738: provisional 68k adda.w (a7), a3
db 0xD8, 0xD9 ; 01373A: provisional 68k adda.w (a1)+, a4
db 0xDA, 0xDB ; 01373C: provisional 68k adda.w (a3)+, a5
db 0xDC, 0xDD ; 01373E: provisional 68k adda.w (a5)+, a6
db 0xDE, 0xDF ; 013740: provisional 68k adda.w (a7)+, a7
db 0xE0, 0xE1 ; 013742: provisional 68k asr.w -(a1)
db 0xE2, 0xE3 ; 013744: provisional 68k lsr.w -(a3)
db 0xE4, 0xE5 ; 013746: provisional 68k roxr.w -(a5)
db 0xE6, 0xE7 ; 013748: provisional 68k ror.w -(a7)
db 0xE8, 0xE9, 0xEA, 0xEB, 0xEC, 0xED, 0xEE, 0xEF ; file 01374A
db 0xF0, 0xF1 ; 013752: provisional 68k dc.w $f0f1
db 0xF2, 0xF3 ; 013754: provisional 68k dc.w $f2f3
db 0xF4, 0xF5 ; 013756: provisional 68k dc.w $f4f5
db 0xF6, 0xF7 ; 013758: provisional 68k dc.w $f6f7
db 0xF8, 0xF9 ; 01375A: provisional 68k dc.w $f8f9
db 0xFA, 0xFB ; 01375C: provisional 68k dc.w $fafb
db 0xFC, 0xFD ; 01375E: provisional 68k dc.w $fcfd
db 0xFE, 0xFF ; 013760: provisional 68k dc.w $feff
