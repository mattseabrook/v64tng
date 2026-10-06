; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0143C8–0145E1, inclusive.
cdi_nodv_entry_0143c8:
db 0xAC, 0xAD ; 0143C8: provisional 68k dc.w $acad
db 0xAE, 0xAE ; 0143CA: provisional 68k dc.w $aeae
db 0xAF, 0xB0 ; 0143CC: provisional 68k dc.w $afb0
db 0xB1, 0xB1, 0xB2, 0xB3 ; 0143CE: provisional 68k eor.l d0, -$4d(a1, a3.w)
db 0xB4, 0xB4, 0xB5, 0xB6, 0xB7, 0xB7, 0xB8, 0xB9, 0xBA, 0xBA ; 0143D2: provisional 68k cmp.l ([$b7b7b8b9], a3.w * 4, $baba), d2
db 0xBB, 0xBC, 0xBD, 0xBD, 0xBE, 0xBF ; file 0143DC
db 0x00, 0x00, 0x01, 0x02 ; 0143E2: provisional 68k ori.b #$2, d0
db 0x03, 0x04 ; 0143E6: provisional 68k btst.l d1, d4
db 0x05, 0x06 ; 0143E8: provisional 68k btst.l d2, d6
db 0x07, 0x07 ; 0143EA: provisional 68k btst.l d3, d7
db 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0E ; file 0143EC
db 0x0F, 0x10 ; 0143F4: provisional 68k btst.l d7, (a0)
db 0x11, 0x12 ; 0143F6: provisional 68k move.b (a2), -(a0)
db 0x13, 0x14 ; 0143F8: provisional 68k move.b (a4), -(a1)
db 0x15, 0x15 ; 0143FA: provisional 68k move.b (a5), -(a2)
db 0x16, 0x17 ; 0143FC: provisional 68k move.b (a7), d3
db 0x18, 0x19 ; 0143FE: provisional 68k move.b (a1)+, d4
db 0x1A, 0x1B ; 014400: provisional 68k move.b (a3)+, d5
db 0x1C, 0x1C ; 014402: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1E ; 014404: provisional 68k move.b (a6)+, -(a6)
db 0x1F, 0x20 ; 014406: provisional 68k move.b -(a0), -(a7)
db 0x21, 0x22 ; 014408: provisional 68k move.l -(a2), -(a0)
db 0x23, 0x23 ; 01440A: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x25 ; 01440C: provisional 68k move.l -(a5), d2
db 0x26, 0x27 ; 01440E: provisional 68k move.l -(a7), d3
db 0x28, 0x29, 0x2A, 0x2A ; 014410: provisional 68k move.l $2a2a(a1), d4
db 0x2B, 0x2C, 0x2D, 0x2E ; 014414: provisional 68k move.l $2d2e(a4), -(a5)
db 0x2F, 0x30, 0x31, 0x31, 0x32, 0x33, 0x34, 0x35 ; 014418: provisional 68k move.l ([$32333435, a0, d3.w]), -(a7)
db 0x36, 0x37, 0x38, 0x38 ; 014420: provisional 68k move.w $38(a7, d3.l), d3
db 0x39, 0x3A, 0x3B, 0x3C ; 014424: provisional 68k move.w $17f62(pc), -(a4)
db 0x3D, 0x3E, 0x3F, 0x3F ; file 014428
db 0x40, 0x41 ; 01442C: provisional 68k negx.w d1
db 0x42, 0x43 ; 01442E: provisional 68k clr.w d3
db 0x44, 0x45 ; 014430: provisional 68k neg.w d5
db 0x46, 0x46 ; 014432: provisional 68k not.w d6
db 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4D ; file 014434
db 0x4E, 0x4F ; 01443C: provisional 68k trap #$f
db 0x50, 0x51 ; 01443E: provisional 68k addq.w #$8, (a1)
db 0x52, 0x53 ; 014440: provisional 68k addq.w #$1, (a3)
db 0x54, 0x54 ; 014442: provisional 68k addq.w #$2, (a4)
db 0x55, 0x56 ; 014444: provisional 68k subq.w #$2, (a6)
db 0x57, 0x58 ; 014446: provisional 68k subq.w #$3, (a0)+
db 0x59, 0x5A ; 014448: provisional 68k subq.w #$4, (a2)+
db 0x5B, 0x5B ; 01444A: provisional 68k subq.w #$5, (a3)+
db 0x5C, 0x5D ; 01444C: provisional 68k addq.w #$6, (a5)+
db 0x5E, 0x5F ; 01444E: provisional 68k addq.w #$7, (a7)+
db 0x60, 0x61 ; 014450: provisional 68k bra.b $144b3
db 0x62, 0x62 ; 014452: provisional 68k bhi.b $144b6
db 0x63, 0x64 ; 014454: provisional 68k bls.b $144ba
db 0x65, 0x66 ; 014456: provisional 68k bcs.b $144be
db 0x67, 0x68 ; 014458: provisional 68k beq.b $144c2
db 0x69, 0x69 ; 01445A: provisional 68k bvs.b $144c5
db 0x6A, 0x6B ; 01445C: provisional 68k bpl.b $144c9
db 0x6C, 0x6D ; 01445E: provisional 68k bge.b $144cd
db 0x6E, 0x6F ; 014460: provisional 68k bgt.b $144d1
db 0x70, 0x70 ; 014462: provisional 68k moveq #$70, d0
db 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x77 ; file 014464
db 0x78, 0x79 ; 01446C: provisional 68k moveq #$79, d4
db 0x7A, 0x7B ; 01446E: provisional 68k moveq #$7b, d5
db 0x7C, 0x7D ; 014470: provisional 68k moveq #$7d, d6
db 0x7E, 0x7E ; 014472: provisional 68k moveq #$7e, d7
db 0x7F, 0x80 ; file 014474
db 0x81, 0x82 ; 014476: provisional 68k dc.w $8182
db 0x83, 0x84 ; 014478: provisional 68k dc.w $8384
db 0x85, 0x85 ; 01447A: provisional 68k dc.w $8585
db 0x86, 0x87 ; 01447C: provisional 68k or.l d7, d3
db 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8C ; file 01447E
db 0x8D, 0x8E ; 014484: provisional 68k dc.w $8d8e
db 0x8F, 0x90 ; 014486: provisional 68k or.l d7, (a0)
db 0x91, 0x92 ; 014488: provisional 68k sub.l d0, (a2)
db 0x93, 0x93 ; 01448A: provisional 68k sub.l d1, (a3)
db 0x94, 0x95 ; 01448C: provisional 68k sub.l (a5), d2
db 0x96, 0x97 ; 01448E: provisional 68k sub.l (a7), d3
db 0x98, 0x99 ; 014490: provisional 68k sub.l (a1)+, d4
db 0x9A, 0x9A ; 014492: provisional 68k sub.l (a2)+, d5
db 0x9B, 0x9C ; 014494: provisional 68k sub.l d5, (a4)+
db 0x9D, 0x9E ; 014496: provisional 68k sub.l d6, (a6)+
db 0x9F, 0xA0 ; 014498: provisional 68k sub.l d7, -(a0)
db 0xA1, 0xA1 ; 01449A: provisional 68k dc.w $a1a1
db 0xA2, 0xA3 ; 01449C: provisional 68k dc.w $a2a3
db 0xA4, 0xA5 ; 01449E: provisional 68k dc.w $a4a5
db 0xA6, 0xA7 ; 0144A0: provisional 68k dc.w $a6a7
db 0xA8, 0xA8 ; 0144A2: provisional 68k dc.w $a8a8
db 0xA9, 0xAA ; 0144A4: provisional 68k dc.w $a9aa
db 0xAB, 0xAC ; 0144A6: provisional 68k dc.w $abac
db 0xAD, 0xAE ; 0144A8: provisional 68k dc.w $adae
db 0xAF, 0xAF ; 0144AA: provisional 68k dc.w $afaf
db 0xB0, 0xB1, 0xB2, 0xB3 ; 0144AC: provisional 68k cmp.l -$4d(a1, a3.w), d0
db 0xB4, 0xB5, 0xB6, 0xB6 ; 0144B0: provisional 68k cmp.l -$4a(a5, a3.w), d2
db 0xB7, 0xB8, 0xB9, 0xBA ; 0144B4: provisional 68k eor.l d3, $b9ba.w
db 0xBB, 0xBC, 0xBD, 0xBD, 0xBE, 0xBF ; file 0144B8
db 0xC0, 0xC1 ; 0144BE: provisional 68k mulu.w d1, d0
db 0xC2, 0xC3 ; 0144C0: provisional 68k mulu.w d3, d1
db 0xC4, 0xC4 ; 0144C2: provisional 68k mulu.w d4, d2
db 0xC5, 0xC6 ; 0144C4: provisional 68k muls.w d6, d2
db 0xC7, 0xC8, 0xC9, 0xCA, 0xCB, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF ; file 0144C6
db 0xD0, 0xD1 ; 0144D0: provisional 68k adda.w (a1), a0
db 0xD2, 0xD2 ; 0144D2: provisional 68k adda.w (a2), a1
db 0xD3, 0xD4 ; 0144D4: provisional 68k adda.l (a4), a1
db 0xD5, 0xD6 ; 0144D6: provisional 68k adda.l (a6), a2
db 0xD7, 0xD8 ; 0144D8: provisional 68k adda.l (a0)+, a3
db 0xD9, 0xD9 ; 0144DA: provisional 68k adda.l (a1)+, a4
db 0xDA, 0xDB ; 0144DC: provisional 68k adda.w (a3)+, a5
db 0xDC, 0xDD ; 0144DE: provisional 68k adda.w (a5)+, a6
db 0xDE, 0xDF ; 0144E0: provisional 68k adda.w (a7)+, a7
db 0x00, 0x01, 0x02, 0x03 ; 0144E2: provisional 68k ori.b #$3, d1
db 0x04, 0x05, 0x06, 0x07 ; 0144E6: provisional 68k subi.b #$7, d5
db 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F ; file 0144EA
db 0x10, 0x11 ; 0144F2: provisional 68k move.b (a1), d0
db 0x12, 0x13 ; 0144F4: provisional 68k move.b (a3), d1
db 0x14, 0x15 ; 0144F6: provisional 68k move.b (a5), d2
db 0x16, 0x17 ; 0144F8: provisional 68k move.b (a7), d3
db 0x18, 0x19 ; 0144FA: provisional 68k move.b (a1)+, d4
db 0x1A, 0x1B ; 0144FC: provisional 68k move.b (a3)+, d5
db 0x1C, 0x1D ; 0144FE: provisional 68k move.b (a5)+, d6
db 0x1E, 0x1F ; 014500: provisional 68k move.b (a7)+, d7
db 0x20, 0x21 ; 014502: provisional 68k move.l -(a1), d0
db 0x22, 0x23 ; 014504: provisional 68k move.l -(a3), d1
db 0x24, 0x25 ; 014506: provisional 68k move.l -(a5), d2
db 0x26, 0x27 ; 014508: provisional 68k move.l -(a7), d3
db 0x28, 0x29, 0x2A, 0x2B ; 01450A: provisional 68k move.l $2a2b(a1), d4
db 0x2C, 0x2D, 0x2E, 0x2F ; 01450E: provisional 68k move.l $2e2f(a5), d6
db 0x30, 0x31, 0x32, 0x33 ; 014512: provisional 68k move.w $33(a1, d3.w), d0
db 0x34, 0x35, 0x36, 0x37 ; 014516: provisional 68k move.w $37(a5, d3.w), d2
db 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D ; 01451A: provisional 68k move.w $3a3b3c3d.l, d4
db 0x3E, 0x3F ; file 014520
db 0x40, 0x41 ; 014522: provisional 68k negx.w d1
db 0x42, 0x43 ; 014524: provisional 68k clr.w d3
db 0x44, 0x45 ; 014526: provisional 68k neg.w d5
db 0x46, 0x47 ; 014528: provisional 68k not.w d7
db 0x48, 0x49 ; 01452A: provisional 68k dc.w $4849
db 0x4A, 0x4B ; 01452C: provisional 68k dc.w $4a4b
db 0x4C, 0x4D ; file 01452E
db 0x4E, 0x4F ; 014530: provisional 68k trap #$f
db 0x50, 0x51 ; 014532: provisional 68k addq.w #$8, (a1)
db 0x52, 0x53 ; 014534: provisional 68k addq.w #$1, (a3)
db 0x54, 0x55 ; 014536: provisional 68k addq.w #$2, (a5)
db 0x56, 0x57 ; 014538: provisional 68k addq.w #$3, (a7)
db 0x58, 0x59 ; 01453A: provisional 68k addq.w #$4, (a1)+
db 0x5A, 0x5B ; 01453C: provisional 68k addq.w #$5, (a3)+
db 0x5C, 0x5D ; 01453E: provisional 68k addq.w #$6, (a5)+
db 0x5E, 0x5F ; 014540: provisional 68k addq.w #$7, (a7)+
db 0x60, 0x61 ; 014542: provisional 68k bra.b $145a5
db 0x62, 0x63 ; 014544: provisional 68k bhi.b $145a9
db 0x64, 0x65 ; 014546: provisional 68k bcc.b $145ad
db 0x66, 0x67 ; 014548: provisional 68k bne.b $145b1
db 0x68, 0x69 ; 01454A: provisional 68k bvc.b $145b5
db 0x6A, 0x6B ; 01454C: provisional 68k bpl.b $145b9
db 0x6C, 0x6D ; 01454E: provisional 68k bge.b $145bd
db 0x6E, 0x6F ; 014550: provisional 68k bgt.b $145c1
db 0x70, 0x71 ; 014552: provisional 68k moveq #$71, d0
db 0x72, 0x73 ; 014554: provisional 68k moveq #$73, d1
db 0x74, 0x75 ; 014556: provisional 68k moveq #$75, d2
db 0x76, 0x77 ; 014558: provisional 68k moveq #$77, d3
db 0x78, 0x79 ; 01455A: provisional 68k moveq #$79, d4
db 0x7A, 0x7B ; 01455C: provisional 68k moveq #$7b, d5
db 0x7C, 0x7D ; 01455E: provisional 68k moveq #$7d, d6
db 0x7E, 0x7F ; 014560: provisional 68k moveq #$7f, d7
db 0x80, 0x81 ; 014562: provisional 68k or.l d1, d0
db 0x82, 0x83 ; 014564: provisional 68k or.l d3, d1
db 0x84, 0x85 ; 014566: provisional 68k or.l d5, d2
db 0x86, 0x87 ; 014568: provisional 68k or.l d7, d3
db 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8D, 0x8E, 0x8F ; file 01456A
db 0x90, 0x91 ; 014572: provisional 68k sub.l (a1), d0
db 0x92, 0x93 ; 014574: provisional 68k sub.l (a3), d1
db 0x94, 0x95 ; 014576: provisional 68k sub.l (a5), d2
db 0x96, 0x97 ; 014578: provisional 68k sub.l (a7), d3
db 0x98, 0x99 ; 01457A: provisional 68k sub.l (a1)+, d4
db 0x9A, 0x9B ; 01457C: provisional 68k sub.l (a3)+, d5
db 0x9C, 0x9D ; 01457E: provisional 68k sub.l (a5)+, d6
db 0x9E, 0x9F ; 014580: provisional 68k sub.l (a7)+, d7
db 0xA0, 0xA1 ; 014582: provisional 68k dc.w $a0a1
db 0xA2, 0xA3 ; 014584: provisional 68k dc.w $a2a3
db 0xA4, 0xA5 ; 014586: provisional 68k dc.w $a4a5
db 0xA6, 0xA7 ; 014588: provisional 68k dc.w $a6a7
db 0xA8, 0xA9 ; 01458A: provisional 68k dc.w $a8a9
db 0xAA, 0xAB ; 01458C: provisional 68k dc.w $aaab
db 0xAC, 0xAD ; 01458E: provisional 68k dc.w $acad
db 0xAE, 0xAF ; 014590: provisional 68k dc.w $aeaf
db 0xB0, 0xB1, 0xB2, 0xB3 ; 014592: provisional 68k cmp.l -$4d(a1, a3.w), d0
db 0xB4, 0xB5, 0xB6, 0xB7 ; 014596: provisional 68k cmp.l -$49(a5, a3.w), d2
db 0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD ; 01459A: provisional 68k cmp.l $babbbcbd.l, d4
db 0xBE, 0xBF ; file 0145A0
db 0xC0, 0xC1 ; 0145A2: provisional 68k mulu.w d1, d0
db 0xC2, 0xC3 ; 0145A4: provisional 68k mulu.w d3, d1
db 0xC4, 0xC5 ; 0145A6: provisional 68k mulu.w d5, d2
db 0xC6, 0xC7 ; 0145A8: provisional 68k mulu.w d7, d3
db 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF ; file 0145AA
db 0xD0, 0xD1 ; 0145B2: provisional 68k adda.w (a1), a0
db 0xD2, 0xD3 ; 0145B4: provisional 68k adda.w (a3), a1
db 0xD4, 0xD5 ; 0145B6: provisional 68k adda.w (a5), a2
db 0xD6, 0xD7 ; 0145B8: provisional 68k adda.w (a7), a3
db 0xD8, 0xD9 ; 0145BA: provisional 68k adda.w (a1)+, a4
db 0xDA, 0xDB ; 0145BC: provisional 68k adda.w (a3)+, a5
db 0xDC, 0xDD ; 0145BE: provisional 68k adda.w (a5)+, a6
db 0xDE, 0xDF ; 0145C0: provisional 68k adda.w (a7)+, a7
db 0xE0, 0xE1 ; 0145C2: provisional 68k asr.w -(a1)
db 0xE2, 0xE3 ; 0145C4: provisional 68k lsr.w -(a3)
db 0xE4, 0xE5 ; 0145C6: provisional 68k roxr.w -(a5)
db 0xE6, 0xE7 ; 0145C8: provisional 68k ror.w -(a7)
db 0xE8, 0xE9, 0xEA, 0xEB, 0xEC, 0xED, 0xEE, 0xEF ; file 0145CA
db 0xF0, 0xF1 ; 0145D2: provisional 68k dc.w $f0f1
db 0xF2, 0xF3 ; 0145D4: provisional 68k dc.w $f2f3
db 0xF4, 0xF5 ; 0145D6: provisional 68k dc.w $f4f5
db 0xF6, 0xF7 ; 0145D8: provisional 68k dc.w $f6f7
db 0xF8, 0xF9 ; 0145DA: provisional 68k dc.w $f8f9
db 0xFA, 0xFB ; 0145DC: provisional 68k dc.w $fafb
db 0xFC, 0xFD ; 0145DE: provisional 68k dc.w $fcfd
db 0xFE, 0xFF ; 0145E0: provisional 68k dc.w $feff
