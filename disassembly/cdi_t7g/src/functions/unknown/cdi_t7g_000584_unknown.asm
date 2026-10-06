; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 000584–009325, inclusive.
cdi_t7g_entry_000584:
db 0x4E, 0xAE, 0xD1, 0x2E ; 000584: provisional 68k jsr -$2ed2(a6)
db 0x4E, 0x75 ; 000588: provisional 68k rts 
db 0x00, 0x07, 0x00, 0x00 ; 00058A: provisional 68k ori.b #$0, d7
db 0x00, 0x1F, 0x00, 0x30 ; 00058E: provisional 68k ori.b #$30, (a7)+
db 0x00, 0x00, 0x00, 0x58 ; 000592: provisional 68k ori.b #$58, d0
db 0x00, 0x00, 0x00, 0x00 ; 000596: provisional 68k ori.b #$0, d0
db 0x00, 0x0C ; file 00059A
db 0x00, 0x1E, 0x00, 0x00 ; 00059C: provisional 68k ori.b #$0, (a6)+
db 0x00, 0x0A ; file 0005A0
db 0x00, 0x06, 0x00, 0x0A ; 0005A2: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 0005A6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0005AA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 0005AE: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 0005B2: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 0005B6: provisional 68k ori.b #$5, d4
db 0x00, 0x04, 0x00, 0x03 ; 0005BA: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 0005BE: provisional 68k ori.b #$1, d2
db 0x00, 0x0C ; file 0005C2
db 0x02, 0x40, 0x04, 0x96 ; 0005C4: provisional 68k andi.w #$496, d0
db 0x06, 0xFE ; file 0005C8
db 0x09, 0x9A ; 0005CA: provisional 68k bclr.b d4, (a2)+
db 0x0C, 0x50, 0x00, 0x00 ; 0005CC: provisional 68k cmpi.w #$0, (a0)
db 0x00, 0x00, 0x00, 0x20 ; 0005D0: provisional 68k ori.b #$20, d0
db 0x00, 0x30, 0x00, 0x10, 0x08, 0x08 ; 0005D4: provisional 68k ori.b #$10, $8(a0, d0.l)
db 0x08, 0x10 ; file 0005DA
db 0x10, 0x10 ; 0005DC: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0005DE: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0005E0: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0005E2: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0005E4: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0005E8: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0005EC: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0005EE: provisional 68k neg.w d4
db 0x10, 0x18 ; 0005F0: provisional 68k move.b (a0)+, d0
db 0x20, 0xB0, 0xB8, 0xB4 ; 0005F2: provisional 68k move.l -$4c(a0, a3.l), (a0)
db 0x64, 0x6C ; 0005F6: provisional 68k bcc.b $664
db 0x80, 0x44 ; 0005F8: provisional 68k or.w d4, d0
db 0x48, 0x78, 0xE8, 0xF0 ; 0005FA: provisional 68k pea.l $e8f0.w
db 0xEC, 0x34 ; 0005FE: provisional 68k roxr.l #$6, d4
db 0x3C, 0x54 ; 000600: provisional 68k movea.w (a4), a6
db 0x08, 0x08, 0x5C, 0x7C, 0x84, 0x8C ; file 000602
db 0xFF, 0xFF ; 000608: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00060A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00060C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00060E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000610: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000612: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000614: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000616: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000618: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00061A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00061C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00061E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000620: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000622: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 000624: provisional 68k btst.l d3, d1
db 0xA9, 0x9B ; 000626: provisional 68k dc.w $a99b
db 0xFF, 0xFF ; 000628: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 00062A: provisional 68k btst.l d3, d1
db 0xFC, 0x9A ; 00062C: provisional 68k dc.w $fc9a
db 0xFF, 0xFF ; 00062E: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 000630: provisional 68k btst.l d3, d1
db 0xB9, 0xFD ; file 000632
db 0xFF, 0xFF ; 000634: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 000636: provisional 68k btst.l d3, d1
db 0xB9, 0xF1, 0x01, 0x03, 0xF9, 0x9D, 0x19, 0x91 ; 000638: provisional 68k cmpa.l ([a1, d0.w], $f99d1991), a4
db 0xFF, 0xFF ; 000640: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 000642: provisional 68k btst.l d2, d3
db 0xFF, 0xAD ; 000644: provisional 68k dc.w $ffad
db 0xA9, 0xF1 ; 000646: provisional 68k dc.w $a9f1
db 0x01, 0x04 ; 000648: provisional 68k btst.l d0, d4
db 0xFC, 0xFD ; 00064A: provisional 68k dc.w $fcfd
db 0x1F, 0x9A, 0xEE, 0xFF ; 00064C: provisional 68k move.b (a2)+, -$1(a7, a6.l)
db 0xFF, 0x04 ; 000650: provisional 68k dc.w $ff04
db 0x04, 0x1D, 0xFF, 0xDB ; 000652: provisional 68k subi.b #$db, (a5)+
db 0x99, 0x9B ; 000656: provisional 68k sub.l d4, (a3)+
db 0x01, 0x03 ; 000658: provisional 68k btst.l d0, d3
db 0x19, 0xA1, 0x1D, 0x99 ; 00065A: provisional 68k move.b -(a1), ([, d1.l * 4])
db 0xFF, 0xFF ; 00065E: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xBF, 0x9A ; 000660: provisional 68k subi.b #$9a, d4
db 0xDF, 0xCC ; 000664: provisional 68k adda.l a4, a7
db 0x9A, 0x01 ; 000666: provisional 68k sub.b d1, d5
db 0x04, 0x19, 0xA1, 0xEE ; 000668: provisional 68k subi.b #$ee, (a1)+
db 0xFC, 0xF1 ; 00066C: provisional 68k dc.w $fcf1
db 0xFF, 0xFF ; 00066E: provisional 68k dc.w $ffff
db 0x04, 0x07, 0x9C, 0xC9 ; 000670: provisional 68k subi.b #$c9, d7
db 0xAF, 0xCC ; 000674: provisional 68k dc.w $afcc
db 0x9B, 0xEE, 0x99, 0xFB ; 000676: provisional 68k suba.l -$6605(a6), a5
db 0x01, 0x01 ; 00067A: provisional 68k btst.l d0, d1
db 0xAC, 0x9D ; 00067C: provisional 68k dc.w $ac9d
db 0xFF, 0xFF ; 00067E: provisional 68k dc.w $ffff
db 0x03, 0x08, 0x1D, 0x9C ; 000680: provisional 68k movep.w $1d9c(a0), d1
db 0xC9, 0xBA ; file 000684
db 0xCC, 0x9B ; 000686: provisional 68k and.l (a3)+, d6
db 0xEA, 0xCC ; file 000688
db 0x9A, 0x01 ; 00068A: provisional 68k sub.b d1, d5
db 0x01, 0xA9, 0x9B, 0xFF ; 00068C: provisional 68k bclr.b d0, -$6401(a1)
db 0xFF, 0x03 ; 000690: provisional 68k dc.w $ff03
db 0x08, 0xBB ; file 000692
db 0x9C, 0xCF ; 000694: provisional 68k suba.w a7, a6
db 0x8B, 0xCC ; file 000696
db 0x9B, 0xEF, 0xCC, 0x9B ; 000698: provisional 68k suba.l -$3365(a7), a5
db 0x01, 0x01 ; 00069C: provisional 68k btst.l d0, d1
db 0xBF, 0x9D ; 00069E: provisional 68k eor.l d7, (a5)+
db 0xFF, 0xFF ; 0006A0: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 0006A2
db 0xF9, 0xFA ; 0006A4: provisional 68k dc.w $f9fa
db 0x9C, 0xC9 ; 0006A6: provisional 68k suba.w a1, a6
db 0x8B, 0xCC ; file 0006A8
db 0x9B, 0x8F ; 0006AA: provisional 68k subx.l -(a7), -(a5)
db 0xCC, 0x9D ; 0006AC: provisional 68k and.l (a5)+, d6
db 0x01, 0x01 ; 0006AE: provisional 68k btst.l d0, d1
db 0xB9, 0x9D ; 0006B0: provisional 68k eor.l d4, (a5)+
db 0xFF, 0xFF ; 0006B2: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x1F, 0xCC ; 0006B4: provisional 68k movep.w $1fcc(a2), d0
db 0x9D, 0xFC, 0xC9, 0xDA, 0xCC, 0x9B ; 0006B8: provisional 68k suba.l #$c9dacc9b, a6
db 0xEF, 0xCC ; file 0006BE
db 0x9D, 0x01 ; 0006C0: provisional 68k subx.b d1, d6
db 0x01, 0xB9, 0x91, 0xFF, 0xFF, 0x01 ; 0006C2: provisional 68k bclr.b d0, $91ffff01.l
db 0x0A, 0x1F, 0xCC, 0xFD ; 0006C8: provisional 68k eori.b #$fd, (a7)+
db 0xFC, 0xC9 ; 0006CC: provisional 68k dc.w $fcc9
db 0xBA, 0xCC ; 0006CE: provisional 68k cmpa.w a4, a5
db 0x9B, 0xEF, 0xCC, 0x9D ; 0006D0: provisional 68k suba.l -$3363(a7), a5
db 0x01, 0x01 ; 0006D4: provisional 68k btst.l d0, d1
db 0xB9, 0x91 ; 0006D6: provisional 68k eor.l d4, (a1)
db 0xFF, 0xFF ; 0006D8: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x1A, 0x9C ; 0006DA: provisional 68k movep.w $1a9c(a2), d0
db 0xFD, 0xAC ; 0006DE: provisional 68k dc.w $fdac
db 0xC9, 0xAB, 0xCC, 0x9B ; 0006E0: provisional 68k and.l d4, -$3365(a3)
db 0xEF, 0xCC ; file 0006E4
db 0xF1, 0x01 ; 0006E6: provisional 68k dc.w $f101
db 0x01, 0xA9, 0xF1, 0xFF ; 0006E8: provisional 68k bclr.b d0, -$e01(a1)
db 0xFF, 0x01 ; 0006EC: provisional 68k dc.w $ff01
db 0x0A, 0x1B, 0x9C, 0x9D ; 0006EE: provisional 68k eori.b #$9d, (a3)+
db 0xB9, 0xC9 ; 0006F2: provisional 68k cmpa.l a1, a4
db 0xDB, 0xCC ; 0006F4: provisional 68k adda.l a4, a5
db 0x9D, 0xEF, 0xC9, 0xA1 ; 0006F6: provisional 68k suba.l -$365f(a7), a6
db 0x01, 0x01 ; 0006FA: provisional 68k btst.l d0, d1
db 0xFC, 0xF1 ; 0006FC: provisional 68k dc.w $fcf1
db 0xFF, 0xFF ; 0006FE: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1B, 0x9C ; 000700: provisional 68k movep.w $1b9c(a5), d0
db 0xCA, 0xB9, 0xC9, 0xDD, 0xCC, 0x9B ; 000704: provisional 68k and.l $c9ddcc9b.l, d5
db 0xEF, 0xC9 ; file 00070A
db 0xB1, 0x1D ; 00070C: provisional 68k eor.b d0, (a5)+
db 0x9C, 0xFD ; file 00070E
db 0xFF, 0xFF ; 000710: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1B, 0x9C ; 000712: provisional 68k movep.w $1b9c(a5), d0
db 0xCF, 0xB9, 0xCC, 0xAD, 0xCC, 0x9B ; 000716: provisional 68k and.l d7, $ccadcc9b.l
db 0xD9, 0xC9 ; 00071C: provisional 68k adda.l a1, a4
db 0xB1, 0x1A ; 00071E: provisional 68k eor.b d0, (a2)+
db 0xFF, 0xBD ; 000720: provisional 68k dc.w $ffbd
db 0xFF, 0xFF ; 000722: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1D, 0xFC ; 000724: provisional 68k movep.w $1dfc(a5), d0
db 0xCD, 0x8F ; 000728: provisional 68k exg.l d6, a7
db 0xCC, 0xFD ; file 00072A
db 0xCC, 0x9B ; 00072C: provisional 68k and.l (a3)+, d6
db 0xD9, 0xC9 ; 00072E: provisional 68k adda.l a1, a4
db 0xD1, 0xBC ; file 000730
db 0xC9, 0xAD, 0xFF, 0xFF ; 000732: provisional 68k and.l d4, -$1(a5)
db 0x01, 0x0D, 0x1D, 0xA9 ; 000736: provisional 68k movep.w $1da9(a5), d0
db 0xC9, 0xDA ; 00073A: provisional 68k muls.w (a2)+, d4
db 0xCC, 0xFA, 0xCC, 0x9B ; 00073C: provisional 68k mulu.w $ffffd3d9(pc), d6
db 0xB9, 0xC9 ; 000740: provisional 68k cmpa.l a1, a4
db 0xD1, 0xFC, 0xC9, 0xB1, 0xFF, 0xFF ; 000742: provisional 68k adda.l #$c9b1ffff, a0
db 0x02, 0x0B ; file 000748
db 0xD9, 0xCC ; 00074A: provisional 68k adda.l a4, a4
db 0xDF, 0x9C ; 00074C: provisional 68k add.l d7, (a4)+
db 0x9A, 0xCC ; 00074E: provisional 68k suba.w a4, a5
db 0xCB, 0xA9, 0xC9, 0xDD ; 000750: provisional 68k and.l d5, -$3623(a1)
db 0xCC, 0x9B ; 000754: provisional 68k and.l (a3)+, d6
db 0xFF, 0xFF ; 000756: provisional 68k dc.w $ffff
db 0x02, 0x0B ; file 000758
db 0xDF, 0xCC ; 00075A: provisional 68k adda.l a4, a7
db 0xAA, 0x9C ; 00075C: provisional 68k dc.w $aa9c
db 0x9F, 0xCC ; 00075E: provisional 68k suba.l a4, a7
db 0xCA, 0xA9, 0xC9, 0xB9 ; 000760: provisional 68k and.l -$3647(a1), d5
db 0xC9, 0xBE ; file 000764
db 0xFF, 0xFF ; 000766: provisional 68k dc.w $ffff
db 0x02, 0x0B ; file 000768
db 0x1A, 0x9C ; 00076A: provisional 68k move.b (a4)+, (a5)
db 0x9A, 0xFC, 0x99, 0xCC ; 00076C: provisional 68k suba.w #$99cc, a5
db 0x9D, 0xAC, 0xC9, 0xAC ; 000770: provisional 68k sub.l d6, -$3654(a4)
db 0xCA, 0xD1 ; 000774: provisional 68k mulu.w (a1), d5
db 0xFF, 0xFF ; 000776: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 000778
db 0x1B, 0x9C, 0x9A, 0xF9 ; 00077A: provisional 68k move.b (a4)+, -$7(a5, a1.l)
db 0x9A, 0xC9 ; 00077E: provisional 68k suba.w a1, a5
db 0xF8, 0xFC ; 000780: provisional 68k dc.w $f8fc
db 0x9F, 0xFC, 0x9D, 0xFF, 0xFF, 0x02 ; 000782: provisional 68k suba.l #$9dffff02, a7
db 0x0A, 0x1B, 0x99, 0xFB ; 000788: provisional 68k eori.b #$fb, (a3)+
db 0xF9, 0xAD ; 00078C: provisional 68k dc.w $f9ad
db 0x9F, 0xD8 ; 00078E: provisional 68k suba.l (a0)+, a7
db 0xFC, 0xFB ; 000790: provisional 68k dc.w $fcfb
db 0xF9, 0xB1 ; 000792: provisional 68k dc.w $f9b1
db 0xFF, 0xFF ; 000794: provisional 68k dc.w $ffff
db 0x02, 0x09, 0x1B, 0xFF ; file 000796
db 0xBD, 0xAF, 0xD8, 0xFA ; 00079A: provisional 68k eor.l d6, -$2706(a7)
db 0x88, 0xF9, 0xA8, 0xAA, 0xFF, 0xFF ; 00079E: provisional 68k divu.w $a8aaffff.l, d4
db 0x03, 0x08, 0xAB, 0xDD ; 0007A4: provisional 68k movep.w -$5423(a0), d1
db 0xDD, 0xDA ; 0007A8: provisional 68k adda.l (a2)+, a6
db 0x9F, 0xA9, 0x9F, 0xD8 ; 0007AA: provisional 68k sub.l d7, -$6028(a1)
db 0xDD, 0xFF ; file 0007AE
db 0xFF, 0x03 ; 0007B0: provisional 68k dc.w $ff03
db 0x08, 0x1F ; file 0007B2
db 0x99, 0xF9, 0xCC, 0xC9, 0x99, 0x9A ; 0007B4: provisional 68k suba.l $ccc9999a.l, a4
db 0xD8, 0xD1 ; 0007BA: provisional 68k adda.w (a1), a4
db 0xFF, 0xFF ; 0007BC: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 0007BE: provisional 68k btst.l d1, d7
db 0xFC, 0xCC ; 0007C0: provisional 68k dc.w $fccc
db 0xCC, 0xCC, 0xC9, 0xFF ; file 0007C2
db 0xAD, 0x8D ; 0007C6: provisional 68k dc.w $ad8d
db 0xFF, 0xFF ; 0007C8: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 0007CA: provisional 68k btst.l d1, d7
db 0xFC, 0xCC ; 0007CC: provisional 68k dc.w $fccc
db 0xCC, 0xCC ; file 0007CE
db 0x9F, 0xAD, 0x88, 0xD1 ; 0007D0: provisional 68k sub.l d7, -$772f(a5)
db 0xFF, 0xFF ; 0007D4: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 0007D6: provisional 68k btst.l d1, d6
db 0x1A, 0xF9, 0x99, 0x99, 0xFB, 0xD8 ; 0007D8: provisional 68k move.b $9999fbd8.l, (a5)+
db 0x88, 0xFF ; file 0007DE
db 0xFF, 0x03 ; 0007E0: provisional 68k dc.w $ff03
db 0x06, 0xEE ; file 0007E2
db 0x8D, 0xAF, 0xAA, 0xD8 ; 0007E4: provisional 68k or.l d6, -$5528(a7)
db 0x88, 0xD1 ; 0007E8: provisional 68k divu.w (a1), d4
db 0xFF, 0xFF ; 0007EA: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x88, 0x8D ; 0007EC: provisional 68k subi.b #$8d, d4
db 0xDD, 0xD8 ; 0007F0: provisional 68k adda.l (a0)+, a6
db 0x8D, 0xFF ; file 0007F2
db 0xFF, 0x04 ; 0007F4: provisional 68k dc.w $ff04
db 0x04, 0xDD ; file 0007F6
db 0xDD, 0xDD ; 0007F8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 0007FA: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0007FC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0007FE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000800: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 000802: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 000806: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 00080A: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 00080E
db 0x10, 0x10 ; 000810: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 000812: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 000814: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 000816: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 000818: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00081C: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 000820: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 000822: provisional 68k neg.w d4
db 0x34, 0x3C, 0x50, 0xE4 ; 000824: provisional 68k move.w #$50e4, d2
db 0xE8, 0xE8 ; file 000828
db 0xA4, 0xB0 ; 00082A: provisional 68k dc.w $a4b0
db 0xB0, 0x10 ; 00082C: provisional 68k cmp.b (a0), d0
db 0x18, 0x20 ; 00082E: provisional 68k move.b -(a0), d4
db 0x7C, 0x84 ; 000830: provisional 68k moveq #$84, d6
db 0x88, 0x68, 0x70, 0x7C ; 000832: provisional 68k or.w $707c(a0), d4
db 0x08, 0x0C ; file 000836
db 0x54, 0x40 ; 000838: provisional 68k addq.w #$2, d0
db 0x40, 0x78, 0xFF, 0xFF ; 00083A: provisional 68k negx.w $ffff.w
db 0xFF, 0xFF ; 00083E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000840: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000842: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000844: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000846: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000848: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00084A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00084C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00084E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000850: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000852: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000854: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 000856: provisional 68k btst.l d3, d1
db 0xCA, 0xC1 ; 000858: provisional 68k mulu.w d1, d5
db 0x01, 0x01 ; 00085A: provisional 68k btst.l d0, d1
db 0xDA, 0xA8, 0xFF, 0xFF ; 00085C: provisional 68k add.l -$1(a0), d5
db 0x07, 0x01 ; 000860: provisional 68k btst.l d3, d1
db 0x99, 0xAF, 0x01, 0x01 ; 000862: provisional 68k sub.l d4, $101(a7)
db 0xA9, 0xA8 ; 000866: provisional 68k dc.w $a9a8
db 0xFF, 0xFF ; 000868: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 00086A: provisional 68k btst.l d3, d1
db 0xC9, 0xD8 ; 00086C: provisional 68k muls.w (a0)+, d4
db 0x01, 0x01 ; 00086E: provisional 68k btst.l d0, d1
db 0xD9, 0xA8, 0xFF, 0xFF ; 000870: provisional 68k add.l d4, -$1(a0)
db 0x07, 0x01 ; 000874: provisional 68k btst.l d3, d1
db 0xD9, 0xD1 ; 000876: provisional 68k adda.l (a1), a4
db 0x01, 0x03 ; 000878: provisional 68k btst.l d0, d3
db 0x19, 0xC1, 0x1D, 0xD1 ; file 00087A
db 0xFF, 0xFF ; 00087E: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x1F, 0xCA ; 000880: provisional 68k subi.b #$ca, d4
db 0xF8, 0xC9 ; 000884: provisional 68k dc.w $f8c9
db 0xD1, 0x01 ; 000886: provisional 68k addx.b d1, d0
db 0x03, 0xC9, 0xC1, 0x1A ; 000888: provisional 68k movep.l d1, -$3ee6(a1)
db 0xAF, 0xFF ; 00088C: provisional 68k dc.w $afff
db 0xFF, 0x04 ; 00088E: provisional 68k dc.w $ff04
db 0x04, 0x1C, 0xAA, 0x88 ; 000890: provisional 68k subi.b #$88, (a4)+
db 0xCA, 0xC8 ; file 000894
db 0x01, 0x04 ; 000896: provisional 68k btst.l d0, d4
db 0xC9, 0xC1 ; 000898: provisional 68k muls.w d1, d4
db 0x1D, 0xAC, 0xE1, 0xFF, 0xFF, 0x04 ; 00089A: provisional 68k move.b -$1e01(a4), (a6, a7.l * 8)
db 0x04, 0x1D, 0xAD, 0xBF ; 0008A0: provisional 68k subi.b #$bf, (a5)+
db 0xA9, 0xA8 ; 0008A4: provisional 68k dc.w $a9a8
db 0x01, 0x01 ; 0008A6: provisional 68k btst.l d0, d1
db 0xC9, 0xC1 ; 0008A8: provisional 68k muls.w d1, d4
db 0x01, 0x01 ; 0008AA: provisional 68k btst.l d0, d1
db 0xAA, 0x81 ; 0008AC: provisional 68k dc.w $aa81
db 0xFF, 0xFF ; 0008AE: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x1A, 0xA8 ; 0008B0: provisional 68k subi.b #$a8, d4
db 0x8C, 0x9A ; 0008B4: provisional 68k or.l (a2)+, d6
db 0xAF, 0x01 ; 0008B6: provisional 68k dc.w $af01
db 0x01, 0xC9, 0xC1, 0x01 ; 0008B8: provisional 68k movep.l d0, -$3eff(a1)
db 0x01, 0xD9 ; 0008BC: provisional 68k bset.b d0, (a1)+
db 0xA1, 0xFF ; 0008BE: provisional 68k dc.w $a1ff
db 0xFF, 0x04 ; 0008C0: provisional 68k dc.w $ff04
db 0x07, 0xA9, 0x9C, 0xFA ; 0008C2: provisional 68k bclr.b d3, -$6306(a1)
db 0x9A, 0xAD, 0xEF, 0xA9 ; 0008C6: provisional 68k sub.l -$1057(a5), d5
db 0xA8, 0x01 ; 0008CA: provisional 68k dc.w $a801
db 0x01, 0xF9, 0x9F, 0xFF, 0xFF, 0x03 ; 0008CC: provisional 68k bset.b d0, $9fffff03.l
db 0x08, 0x1D ; file 0008D2
db 0x99, 0x9C ; 0008D4: provisional 68k sub.l d4, (a4)+
db 0xDA, 0x99 ; 0008D6: provisional 68k add.l (a1)+, d5
db 0xAF, 0xED ; 0008D8: provisional 68k dc.w $afed
db 0x99, 0xAF, 0x01, 0x01 ; 0008DA: provisional 68k sub.l d4, $101(a7)
db 0xFA, 0x9D ; 0008DE: provisional 68k dc.w $fa9d
db 0xFF, 0xFF ; 0008E0: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 0008E2
db 0xFA, 0xAD ; 0008E4: provisional 68k dc.w $faad
db 0xA9, 0x9C ; 0008E6: provisional 68k dc.w $a99c
db 0x8C, 0x99 ; 0008E8: provisional 68k or.l (a1)+, d6
db 0xA8, 0x8F ; 0008EA: provisional 68k dc.w $a88f
db 0xCC, 0xD8 ; 0008EC: provisional 68k mulu.w (a0)+, d6
db 0x01, 0x01 ; 0008EE: provisional 68k btst.l d0, d1
db 0xFC, 0xA8 ; 0008F0: provisional 68k dc.w $fca8
db 0xFF, 0xFF ; 0008F2: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 0008F4
db 0xDC, 0xDC ; 0008F6: provisional 68k adda.w (a4)+, a6
db 0xA9, 0x9D ; 0008F8: provisional 68k dc.w $a99d
db 0x8C, 0x99 ; 0008FA: provisional 68k or.l (a1)+, d6
db 0xAF, 0xEC ; 0008FC: provisional 68k dc.w $afec
db 0x99, 0xA8, 0x01, 0x01 ; 0008FE: provisional 68k sub.l d4, $101(a0)
db 0xFA, 0x98 ; 000902: provisional 68k dc.w $fa98
db 0xFF, 0xFF ; 000904: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xFA, 0x9A ; 000906: provisional 68k movep.w -$566(a2), d0
db 0xDD, 0xA9, 0x9D, 0xBC ; 00090A: provisional 68k add.l d6, -$6244(a1)
db 0x99, 0xAF, 0xEC, 0x99 ; 00090E: provisional 68k sub.l d4, -$1367(a7)
db 0xA8, 0x01 ; 000912: provisional 68k dc.w $a801
db 0x01, 0xFA ; file 000914
db 0xA8, 0xFF ; 000916: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 000918: provisional 68k dc.w $ff01
db 0x0A, 0xFA ; file 00091A
db 0x99, 0xA8, 0xA9, 0x9C ; 00091C: provisional 68k sub.l d4, -$5664(a0)
db 0xBD, 0x99 ; 000920: provisional 68k eor.l d6, (a1)+
db 0xAF, 0xEC ; 000922: provisional 68k dc.w $afec
db 0x99, 0xA8, 0x01, 0x01 ; 000924: provisional 68k sub.l d4, $101(a0)
db 0xFA, 0xA8 ; 000928: provisional 68k dc.w $faa8
db 0xFF, 0xFF ; 00092A: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xFA, 0x99 ; 00092C: provisional 68k movep.w -$567(a2), d0
db 0xDB, 0xA9, 0x9C, 0xBF ; 000930: provisional 68k add.l d5, -$6341(a1)
db 0x99, 0xAF, 0xEC, 0x99 ; 000934: provisional 68k sub.l d4, -$1367(a7)
db 0xC8, 0x01 ; 000938: provisional 68k and.b d1, d4
db 0x01, 0xFA ; file 00093A
db 0xA1, 0xFF ; 00093C: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 00093E: provisional 68k dc.w $ff01
db 0x0A, 0xFA ; file 000940
db 0x99, 0x8B ; 000942: provisional 68k subx.l -(a3), -(a4)
db 0xC9, 0x9C ; 000944: provisional 68k and.l d4, (a4)+
db 0xBF, 0x99 ; 000946: provisional 68k eor.l d7, (a1)+
db 0xC1, 0x1C ; 000948: provisional 68k and.b d0, (a4)+
db 0x9A, 0xD1 ; 00094A: provisional 68k suba.w (a1), a5
db 0x01, 0x01 ; 00094C: provisional 68k btst.l d0, d1
db 0xC9, 0xA1 ; 00094E: provisional 68k and.l d4, -(a1)
db 0xFF, 0xFF ; 000950: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x8C, 0x99 ; 000952: provisional 68k movep.w -$7367(a5), d0
db 0xA8, 0xD9 ; 000956: provisional 68k dc.w $a8d9
db 0x9A, 0x8F ; 000958: provisional 68k sub.l a7, d5
db 0x99, 0xC8 ; 00095A: provisional 68k suba.l a0, a4
db 0xEC, 0x9A ; 00095C: provisional 68k ror.l #$6, d2
db 0x81, 0x1E ; 00095E: provisional 68k or.b d0, (a6)+
db 0xA9, 0xA8 ; 000960: provisional 68k dc.w $a9a8
db 0xFF, 0xFF ; 000962: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xED, 0x99 ; 000964: provisional 68k movep.w -$1267(a5), d0
db 0xA8, 0xDA ; 000968: provisional 68k dc.w $a8da
db 0x9A, 0x8F ; 00096A: provisional 68k sub.l a7, d5
db 0x99, 0xA8, 0x8A, 0x9A ; 00096C: provisional 68k sub.l d4, -$7566(a0)
db 0x81, 0x1F ; 000970: provisional 68k or.b d0, (a7)+
db 0xAA, 0xD8 ; 000972: provisional 68k dc.w $aad8
db 0xFF, 0xFF ; 000974: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1F, 0xA9 ; 000976: provisional 68k movep.w $1fa9(a5), d0
db 0xAD, 0xFA ; 00097A: provisional 68k dc.w $adfa
db 0x99, 0xDF ; 00097C: provisional 68k suba.l (a7)+, a4
db 0x99, 0xA8, 0x8A, 0x9A ; 00097E: provisional 68k sub.l d4, -$7566(a0)
db 0x81, 0xFA, 0xAC, 0xD8 ; 000982: provisional 68k divs.w $ffffb65c(pc), d0
db 0xFF, 0xFF ; 000986: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1F, 0xC9 ; 000988: provisional 68k movep.w $1fc9(a5), d0
db 0x9D, 0x8C ; 00098C: provisional 68k subx.l -(a4), -(a6)
db 0x99, 0xD8 ; 00098E: provisional 68k suba.l (a0)+, a4
db 0x99, 0xAF, 0x8A, 0x9A ; 000990: provisional 68k sub.l d4, -$7566(a7)
db 0x81, 0xD9 ; 000994: provisional 68k divs.w (a1)+, d0
db 0x99, 0xD1 ; 000996: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 000998: provisional 68k dc.w $ffff
db 0x02, 0x0C ; file 00099A
db 0xDA, 0x9A ; 00099C: provisional 68k add.l (a2)+, d5
db 0x8C, 0x99 ; 00099E: provisional 68k or.l (a1)+, d6
db 0xD8, 0x99 ; 0009A0: provisional 68k add.l (a1)+, d4
db 0xA8, 0xFA ; 0009A2: provisional 68k dc.w $a8fa
db 0x9A, 0x8E ; 0009A4: provisional 68k sub.l a6, d5
db 0xA9, 0x9C ; 0009A6: provisional 68k dc.w $a99c
db 0x81, 0xFF ; file 0009A8
db 0xFF, 0x02 ; 0009AA: provisional 68k dc.w $ff02
db 0x0B, 0xFA ; file 0009AC
db 0x9A, 0x8D ; 0009AE: provisional 68k sub.l a5, d5
db 0x99, 0xAD, 0x99, 0xAF ; 0009B0: provisional 68k sub.l d4, -$6651(a5)
db 0xFA, 0x9A ; 0009B4: provisional 68k dc.w $fa9a
db 0x8A, 0x9A ; 0009B6: provisional 68k or.l (a2)+, d5
db 0xD8, 0xFF ; file 0009B8
db 0xFF, 0x02 ; 0009BA: provisional 68k dc.w $ff02
db 0x0B, 0x8C, 0x99, 0xCD ; 0009BC: provisional 68k movep.w d5, -$6633(a4)
db 0xA9, 0xAC ; 0009C0: provisional 68k dc.w $a9ac
db 0x99, 0xA8, 0xD9, 0x9A ; 0009C2: provisional 68k sub.l d4, -$2666(a0)
db 0xD9, 0x9D ; 0009C6: provisional 68k add.l d4, (a5)+
db 0xE1, 0xFF ; file 0009C8
db 0xFF, 0x02 ; 0009CA: provisional 68k dc.w $ff02
db 0x0B, 0x1D ; 0009CC: provisional 68k btst.l d5, (a5)+
db 0xA9, 0xAC ; 0009CE: provisional 68k dc.w $a9ac
db 0xA9, 0xAC ; 0009D0: provisional 68k dc.w $a9ac
db 0x99, 0xCB ; 0009D2: provisional 68k suba.l a3, a4
db 0xC9, 0x9C ; 0009D4: provisional 68k and.l d4, (a4)+
db 0xD9, 0xA8, 0xE1, 0xFF ; 0009D6: provisional 68k add.l d4, -$1e01(a0)
db 0xFF, 0x02 ; 0009DA: provisional 68k dc.w $ff02
db 0x0A, 0x1F, 0xA9, 0xAD ; 0009DC: provisional 68k eori.b #$ad, (a7)+
db 0xCA, 0xD8 ; 0009E0: provisional 68k mulu.w (a0)+, d5
db 0xAA, 0xDB ; 0009E2: provisional 68k dc.w $aadb
db 0xC9, 0xA8, 0xDA, 0xDE ; 0009E4: provisional 68k and.l d4, -$2522(a0)
db 0xFF, 0xFF ; 0009E8: provisional 68k dc.w $ffff
db 0x02, 0x0A, 0x1F, 0xCA ; file 0009EA
db 0xD8, 0xDC ; 0009EE: provisional 68k adda.w (a4)+, a4
db 0x88, 0xAD, 0xBB, 0xCA ; 0009F0: provisional 68k or.l -$4436(a5), d4
db 0x8B, 0xDD ; 0009F4: provisional 68k divs.w (a5)+, d5
db 0x81, 0xFF ; file 0009F6
db 0xFF, 0x02 ; 0009F8: provisional 68k dc.w $ff02
db 0x09, 0x18 ; 0009FA: provisional 68k btst.l d4, (a0)+
db 0xDD, 0x88 ; 0009FC: provisional 68k addx.l -(a0), -(a6)
db 0xFF, 0xB8 ; 0009FE: provisional 68k dc.w $ffb8
db 0xC8, 0x8C ; file 000A00
db 0xAD, 0x8B ; 000A02: provisional 68k dc.w $ad8b
db 0x88, 0xFF ; file 000A04
db 0xFF, 0x03 ; 000A06: provisional 68k dc.w $ff03
db 0x08, 0x8D ; file 000A08
db 0xCD, 0x8E ; 000A0A: provisional 68k exg.l d6, a6
db 0xD9, 0x9A ; 000A0C: provisional 68k add.l d4, (a2)+
db 0xAA, 0xAC ; 000A0E: provisional 68k dc.w $aaac
db 0x8B, 0x81 ; 000A10: provisional 68k dc.w $8b81
db 0xFF, 0xFF ; 000A12: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 000A14: provisional 68k btst.l d1, d7
db 0xA9, 0x99 ; 000A16: provisional 68k dc.w $a999
db 0xAA, 0x99 ; 000A18: provisional 68k dc.w $aa99
db 0x9A, 0xAA, 0xC8, 0xB8 ; 000A1A: provisional 68k sub.l -$3748(a2), d5
db 0xFF, 0xFF ; 000A1E: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 000A20: provisional 68k btst.l d1, d7
db 0xA9, 0x99 ; 000A22: provisional 68k dc.w $a999
db 0x99, 0x99 ; 000A24: provisional 68k sub.l d4, (a1)+
db 0x9C, 0xD8 ; 000A26: provisional 68k suba.w (a0)+, a6
db 0xBB, 0xE1 ; 000A28: provisional 68k cmpa.l -(a1), a5
db 0xFF, 0xFF ; 000A2A: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 000A2C: provisional 68k btst.l d1, d6
db 0x8C, 0xC9 ; file 000A2E
db 0x9A, 0xAA, 0xCD, 0x8B ; 000A30: provisional 68k sub.l -$3275(a2), d5
db 0xBE, 0xFF ; file 000A34
db 0xFF, 0x03 ; 000A36: provisional 68k dc.w $ff03
db 0x06, 0xEB ; file 000A38
db 0xBD, 0xCC ; 000A3A: provisional 68k cmpa.l a4, a6
db 0xDD, 0x8B ; 000A3C: provisional 68k addx.l -(a3), -(a6)
db 0xBB, 0x81 ; 000A3E: provisional 68k eor.l d5, d1
db 0xFF, 0xFF ; 000A40: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xBB, 0xB8 ; 000A42: provisional 68k subi.b #$b8, d4
db 0x8B, 0xBB, 0xB8, 0xFF ; file 000A46
db 0xFF, 0x04 ; 000A4A: provisional 68k dc.w $ff04
db 0x03, 0xEB, 0xBB, 0xBB ; 000A4C: provisional 68k bset.b d1, -$4445(a3)
db 0xBE, 0xFF ; file 000A50
db 0xFF, 0xFF ; 000A52: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000A54: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 000A56: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 000A58: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 000A5C: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 000A60: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 000A64
db 0x10, 0x10 ; 000A66: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 000A68: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 000A6A: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 000A6C: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 000A6E: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 000A72: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 000A76: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 000A78: provisional 68k neg.w d4
db 0x28, 0x2C, 0x48, 0xA4 ; 000A7A: provisional 68k move.l $48a4(a4), d4
db 0xB0, 0xB0, 0x0C, 0x18 ; 000A7E: provisional 68k cmp.l $18(a0, d0.l), d0
db 0x1C, 0x78 ; file 000A82
db 0x84, 0x84 ; 000A84: provisional 68k or.l d4, d2
db 0xE0, 0xE4 ; 000A86: provisional 68k asr.w -(a4)
db 0xE4, 0x08 ; 000A88: provisional 68k lsr.b #$2, d0
db 0x0C, 0x50, 0x48, 0x50 ; 000A8A: provisional 68k cmpi.w #$4850, (a0)
db 0x78, 0x48 ; 000A8E: provisional 68k moveq #$48, d4
db 0x50, 0x58 ; 000A90: provisional 68k addq.w #$8, (a0)+
db 0xFF, 0xFF ; 000A92: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000A94: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000A96: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000A98: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000A9A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000A9C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000A9E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000AA0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000AA2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000AA4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000AA6: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xEB, 0xE8 ; 000AA8: provisional 68k eori.b #$e8, d1
db 0xFF, 0xFF ; 000AAC: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 000AAE: provisional 68k btst.l d3, d1
db 0xEE, 0xE1 ; file 000AB0
db 0x01, 0x01 ; 000AB2: provisional 68k btst.l d0, d1
db 0xBC, 0x9E ; 000AB4: provisional 68k cmp.l (a6)+, d6
db 0xFF, 0xFF ; 000AB6: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1E, 0xCC ; 000AB8: provisional 68k addi.b #$cc, d5
db 0x9F, 0xD1 ; 000ABC: provisional 68k suba.l (a1), a7
db 0x9C, 0x9E ; 000ABE: provisional 68k sub.l (a6)+, d6
db 0xFF, 0xFF ; 000AC0: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1E, 0xCC ; 000AC2: provisional 68k addi.b #$cc, d5
db 0xB8, 0xD1 ; 000AC6: provisional 68k cmpa.w (a1), a4
db 0xBC, 0x9F ; 000AC8: provisional 68k cmp.l (a7)+, d6
db 0xFF, 0xFF ; 000ACA: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 000ACC: provisional 68k btst.l d3, d1
db 0x9C, 0xB1, 0x01, 0x01 ; 000ACE: provisional 68k sub.l ([a1, d0.w]), d6
db 0x1C, 0x98 ; 000AD2: provisional 68k move.b (a0)+, (a6)
db 0xFF, 0xFF ; 000AD4: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x18, 0xEE ; 000AD6: provisional 68k subi.b #$ee, d4
db 0x88, 0x9C ; 000ADA: provisional 68k or.l (a4)+, d4
db 0xB1, 0x01 ; 000ADC: provisional 68k eor.b d0, d1
db 0x03, 0x1C ; 000ADE: provisional 68k btst.l d1, (a4)+
db 0xC1, 0x1E ; 000AE0: provisional 68k and.b d0, (a6)+
db 0xE1, 0xFF ; file 000AE2
db 0xFF, 0x04 ; 000AE4: provisional 68k dc.w $ff04
db 0x04, 0x89 ; file 000AE6
db 0xC9, 0xE8, 0x9C, 0xB1 ; 000AE8: provisional 68k muls.w -$634f(a0), d4
db 0x01, 0x03 ; 000AEC: provisional 68k btst.l d0, d3
db 0x1C, 0x91 ; 000AEE: provisional 68k move.b (a1), (a6)
db 0x19, 0x9E, 0xFF, 0xFF, 0x04, 0x04, 0x89, 0xCB ; 000AF0: provisional 68k move.b (a6)+, ([$40489cb])
db 0x8F, 0x9C ; 000AF8: provisional 68k or.l d7, (a4)+
db 0xB1, 0x01 ; 000AFA: provisional 68k eor.b d0, d1
db 0x04, 0x1C, 0x91, 0x1E ; 000AFC: provisional 68k subi.b #$1e, (a4)+
db 0x9B, 0xD1 ; 000B00: provisional 68k suba.l (a1), a5
db 0xFF, 0xFF ; 000B02: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xD9, 0x9F ; 000B04: provisional 68k subi.b #$9f, d4
db 0xDE, 0x99 ; 000B08: provisional 68k add.l (a1)+, d7
db 0xB1, 0x01 ; 000B0A: provisional 68k eor.b d0, d1
db 0x04, 0xBC ; file 000B0C
db 0x91, 0x1D ; 000B0E: provisional 68k sub.b d0, (a5)+
db 0x99, 0xE1 ; 000B10: provisional 68k suba.l -(a1), a4
db 0xFF, 0xFF ; 000B12: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x19, 0xBF ; 000B14: provisional 68k subi.b #$bf, d4
db 0xFB, 0xCC ; 000B18: provisional 68k dc.w $fbcc
db 0x9E, 0x01 ; 000B1A: provisional 68k sub.b d1, d7
db 0x01, 0xBC ; file 000B1C
db 0x91, 0x01 ; 000B1E: provisional 68k subx.b d1, d0
db 0x01, 0xBC, 0x91, 0xFF ; file 000B20
db 0xFF, 0x04 ; 000B24: provisional 68k dc.w $ff04
db 0x07, 0x9C ; 000B26: provisional 68k bclr.b d3, (a4)+
db 0x9E, 0xE9, 0xCC, 0x9F ; 000B28: provisional 68k suba.w -$3361(a1), a7
db 0xD1, 0x9C ; 000B2C: provisional 68k add.l d0, (a4)+
db 0x9F, 0x01 ; 000B2E: provisional 68k subx.b d1, d7
db 0x01, 0xE9, 0xCE, 0xFF ; 000B30: provisional 68k bset.b d0, -$3101(a1)
db 0xFF, 0x03 ; 000B34: provisional 68k dc.w $ff03
db 0x08, 0x1B, 0xCC, 0xCB ; file 000B36
db 0xFB, 0x99 ; 000B3A: provisional 68k dc.w $fb99
db 0xB8, 0xD1 ; 000B3C: provisional 68k cmpa.w (a1), a4
db 0xCC, 0xCE ; file 000B3E
db 0x01, 0x01 ; 000B40: provisional 68k btst.l d0, d1
db 0xE9, 0xCB ; file 000B42
db 0xFF, 0xFF ; 000B44: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x18, 0xBC ; 000B46: provisional 68k movep.w $18bc(a2), d0
db 0x9B, 0xCC ; 000B4A: provisional 68k suba.l a4, a5
db 0x9B, 0xE9, 0xCC, 0x9F ; 000B4C: provisional 68k suba.l -$3361(a1), a5
db 0xD1, 0xCC ; 000B50: provisional 68k adda.l a4, a0
db 0x9F, 0x01 ; 000B52: provisional 68k subx.b d1, d7
db 0x01, 0x1B ; 000B54: provisional 68k btst.l d0, (a3)+
db 0x9E, 0xFF ; file 000B56
db 0xFF, 0x02 ; 000B58: provisional 68k dc.w $ff02
db 0x09, 0xBB ; file 000B5A
db 0xFB, 0xCC ; 000B5C: provisional 68k dc.w $fbcc
db 0x9F, 0xF9, 0xCC, 0xB8, 0x8E, 0x99 ; 000B5E: provisional 68k suba.l $ccb88e99.l, a7
db 0xBF, 0x01 ; 000B64: provisional 68k eor.b d7, d1
db 0x01, 0x19 ; 000B66: provisional 68k btst.l d0, (a1)+
db 0xC8, 0xFF ; file 000B68
db 0xFF, 0x01 ; 000B6A: provisional 68k dc.w $ff01
db 0x0A, 0xEB ; file 000B6C
db 0x9B, 0xEB, 0xCC, 0xCF ; 000B6E: provisional 68k suba.l -$3331(a3), a5
db 0x89, 0xCC ; file 000B72
db 0x91, 0xDB ; 000B74: provisional 68k suba.l (a3)+, a0
db 0xCC, 0x9F ; 000B76: provisional 68k and.l (a7)+, d6
db 0x01, 0x01 ; 000B78: provisional 68k btst.l d0, d1
db 0x19, 0xCF ; file 000B7A
db 0xFF, 0xFF ; 000B7C: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xBC, 0xC9 ; 000B7E: provisional 68k movep.w -$4337(a2), d0
db 0xBB, 0xCC ; 000B82: provisional 68k cmpa.l a4, a5
db 0xCF, 0xAB, 0xCC, 0xB1 ; 000B84: provisional 68k and.l d7, -$334f(a3)
db 0xDB, 0xCC ; 000B88: provisional 68k adda.l a4, a5
db 0x98, 0x01 ; 000B8A: provisional 68k sub.b d1, d4
db 0x01, 0xE9, 0xC8, 0xFF ; 000B8C: provisional 68k bset.b d0, -$3701(a1)
db 0xFF, 0x01 ; 000B90: provisional 68k dc.w $ff01
db 0x0A, 0xBC ; file 000B92
db 0xCC, 0xB8, 0x9C, 0xCF ; 000B94: provisional 68k and.l $9ccf.w, d6
db 0xAE, 0xCC ; 000B98: provisional 68k dc.w $aecc
db 0xB1, 0xDB ; 000B9A: provisional 68k cmpa.l (a3)+, a0
db 0xCC, 0xB8, 0x01, 0x01 ; 000B9C: provisional 68k and.l $101.w, d6
db 0xE9, 0x98 ; 000BA0: provisional 68k rol.l #$4, d0
db 0xFF, 0xFF ; 000BA2: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xE9, 0xCC ; 000BA4: provisional 68k movep.w -$1634(a2), d0
db 0xFA, 0x9C ; 000BA8: provisional 68k dc.w $fa9c
db 0xCB, 0xAE, 0xCC, 0xB1 ; 000BAA: provisional 68k and.l d5, -$334f(a6)
db 0xDB, 0xCC ; 000BAE: provisional 68k adda.l a4, a5
db 0xB8, 0x01 ; 000BB0: provisional 68k cmp.b d1, d4
db 0x01, 0xBC, 0x98, 0xFF ; file 000BB2
db 0xFF, 0x01 ; 000BB6: provisional 68k dc.w $ff01
db 0x0D, 0xE9, 0xCC, 0xF8 ; 000BB8: provisional 68k bset.b d6, -$3308(a1)
db 0x9C, 0xCB ; 000BBC: provisional 68k suba.w a3, a6
db 0xAE, 0xCC ; 000BBE: provisional 68k dc.w $aecc
db 0xB1, 0x1B ; 000BC0: provisional 68k eor.b d0, (a3)+
db 0xC9, 0xE8, 0x18, 0x9C ; 000BC2: provisional 68k muls.w $189c(a0), d4
db 0x98, 0xFF ; file 000BC6
db 0xFF, 0x01 ; 000BC8: provisional 68k dc.w $ff01
db 0x0D, 0xE9, 0xCC, 0x98 ; 000BCA: provisional 68k bset.b d6, -$3368(a1)
db 0xBC, 0xCB ; 000BCE: provisional 68k cmpa.w a3, a6
db 0xAE, 0xCC ; 000BD0: provisional 68k dc.w $aecc
db 0xB1, 0x8B ; 000BD2: provisional 68k cmpm.l (a3)+, (a0)+
db 0xC9, 0xF1, 0x1E, 0x9C ; 000BD4: provisional 68k muls.w -$64(a1, d1.l), d4
db 0x9F, 0xFF ; file 000BD8
db 0xFF, 0x01 ; 000BDA: provisional 68k dc.w $ff01
db 0x0D, 0x8B, 0xCC, 0xB8 ; 000BDC: provisional 68k movep.w d6, -$3348(a3)
db 0xE9, 0xC9 ; file 000BE0
db 0xFE, 0xCC ; 000BE2: provisional 68k dc.w $fecc
db 0xB8, 0x89 ; 000BE4: provisional 68k cmp.l a1, d4
db 0xC9, 0x81 ; file 000BE6
db 0xE9, 0xBE ; 000BE8: provisional 68k rol.l d4, d6
db 0xF8, 0xFF ; 000BEA: provisional 68k dc.w $f8ff
db 0xFF, 0x01 ; 000BEC: provisional 68k dc.w $ff01
db 0x0D, 0x1E ; 000BEE: provisional 68k btst.l d6, (a6)+
db 0x9C, 0xBA, 0xE9, 0xC9 ; 000BF0: provisional 68k sub.l $fffff5bb(pc), d6
db 0xFF, 0xCC ; 000BF4: provisional 68k dc.w $ffcc
db 0xB8, 0xF9, 0xC9, 0x81, 0xE9, 0xC9 ; 000BF6: provisional 68k cmpa.w $c981e9c9.l, a4
db 0xB1, 0xFF ; file 000BFC
db 0xFF, 0x01 ; 000BFE: provisional 68k dc.w $ff01
db 0x0D, 0x1E ; 000C00: provisional 68k btst.l d6, (a6)+
db 0xBC, 0x9B ; 000C02: provisional 68k cmp.l (a3)+, d6
db 0xE9, 0xC9 ; file 000C04
db 0xF8, 0xCC ; 000C06: provisional 68k dc.w $f8cc
db 0x9F, 0xE9, 0xC9, 0x8D ; 000C08: provisional 68k suba.l -$3673(a1), a7
db 0x9C, 0xC9 ; 000C0C: provisional 68k suba.w a1, a6
db 0xE1, 0xFF ; file 000C0E
db 0xFF, 0x01 ; 000C10: provisional 68k dc.w $ff01
db 0x0C, 0x18, 0xB9, 0xC9 ; 000C12: provisional 68k cmpi.b #$c9, (a0)+
db 0x8B, 0xCC ; file 000C16
db 0xBF, 0xCC ; 000C18: provisional 68k cmpa.l a4, a7
db 0x9F, 0xF9, 0xC9, 0x8B, 0xC9, 0xEE ; 000C1A: provisional 68k suba.l $c98bc9ee.l, a7
db 0xFF, 0xFF ; 000C20: provisional 68k dc.w $ffff
db 0x02, 0x0B, 0xE9, 0xC9 ; file 000C22
db 0xFB, 0x9C ; 000C26: provisional 68k dc.w $fb9c
db 0x9B, 0xCC ; 000C28: provisional 68k suba.l a4, a5
db 0x9F, 0xE9, 0xC9, 0xFC ; 000C2A: provisional 68k suba.l -$3604(a1), a7
db 0xCB, 0xD1 ; 000C2E: provisional 68k muls.w (a1), d5
db 0xFF, 0xFF ; 000C30: provisional 68k dc.w $ffff
db 0x02, 0x0B ; file 000C32
db 0xFB, 0xCC ; 000C34: provisional 68k dc.w $fbcc
db 0xBB, 0x9C ; 000C36: provisional 68k eor.l d5, (a4)+
db 0x9B, 0xCC ; 000C38: provisional 68k suba.l a4, a5
db 0x98, 0xBC, 0xC9, 0xBC, 0x9F, 0xD1 ; 000C3A: provisional 68k sub.l #$c9bc9fd1, d4
db 0xFF, 0xFF ; 000C40: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 000C42
db 0x1F, 0x9C, 0x9B, 0xB9, 0xBF, 0x99, 0xFA, 0xBC ; 000C44: provisional 68k move.b (a4)+, ([$bf99fabc, a1.l * 2])
db 0x9B, 0xEC, 0xF8, 0xFF ; 000C4C: provisional 68k suba.l -$701(a4), a5
db 0xFF, 0x02 ; 000C50: provisional 68k dc.w $ff02
db 0x0A, 0x1E, 0x99, 0xBF ; 000C52: provisional 68k eori.b #$bf, (a6)+
db 0xBB, 0xF8, 0x9B, 0x8A ; 000C56: provisional 68k cmpa.l $9b8a.w, a5
db 0xB9, 0xB8, 0xFB, 0x81 ; 000C5A: provisional 68k eor.l d4, $fb81.w
db 0xFF, 0xFF ; 000C5E: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 000C60
db 0x1F, 0xBB, 0x88, 0xFF, 0xA8, 0xBF ; 000C62: provisional 68k move.b $c63(pc, a0.l), -$41(a7, a2.l)
db 0xA8, 0xBB ; 000C68: provisional 68k dc.w $a8bb
db 0x8A, 0x88 ; file 000C6A
db 0xFF, 0xFF ; 000C6C: provisional 68k dc.w $ffff
db 0x02, 0x09, 0x18, 0xFF ; file 000C6E
db 0xFF, 0x88 ; 000C72: provisional 68k dc.w $ff88
db 0xF9, 0x99 ; 000C74: provisional 68k dc.w $f999
db 0x9C, 0x9B ; 000C76: provisional 68k sub.l (a3)+, d6
db 0x8A, 0x88 ; file 000C78
db 0xFF, 0xFF ; 000C7A: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 000C7C: provisional 68k btst.l d1, d7
db 0x9C, 0xCC ; 000C7E: provisional 68k suba.w a4, a6
db 0xBB, 0xCC ; 000C80: provisional 68k cmpa.l a4, a5
db 0xC9, 0x99 ; 000C82: provisional 68k and.l d4, (a1)+
db 0x9F, 0xA8, 0xFF, 0xFF ; 000C84: provisional 68k sub.l d7, -$1(a0)
db 0x03, 0x07 ; 000C88: provisional 68k btst.l d1, d7
db 0x9C, 0xCC ; 000C8A: provisional 68k suba.w a4, a6
db 0xCC, 0xCC, 0xC9, 0xBF ; file 000C8C
db 0x88, 0x81 ; 000C90: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 000C92: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 000C94: provisional 68k btst.l d1, d6
db 0xEB, 0xCC, 0xCC, 0xC9 ; file 000C96
db 0x9B, 0xFA, 0xA8, 0xFF ; 000C9A: provisional 68k suba.l $ffffb59b(pc), a5
db 0xFF, 0x03 ; 000C9E: provisional 68k dc.w $ff03
db 0x06, 0xD8 ; file 000CA0
db 0xFB, 0xBB ; 000CA2: provisional 68k dc.w $fbbb
db 0xBB, 0xFA, 0xAA, 0x81 ; 000CA4: provisional 68k cmpa.l $ffffb727(pc), a5
db 0xFF, 0xFF ; 000CA8: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xAA, 0x88 ; 000CAA: provisional 68k subi.b #$88, d4
db 0x88, 0xAA, 0xA8, 0xFF ; 000CAE: provisional 68k or.l -$5701(a2), d4
db 0xFF, 0x04 ; 000CB2: provisional 68k dc.w $ff04
db 0x04, 0x8A ; file 000CB4
db 0xAA, 0xAA ; 000CB6: provisional 68k dc.w $aaaa
db 0x88, 0x81 ; 000CB8: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 000CBA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000CBC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000CBE: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 000CC0: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 000CC4: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 000CC8: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 000CCC
db 0x10, 0x10 ; 000CCE: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 000CD0: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 000CD2: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 000CD4: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 000CD6: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 000CDA: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 000CDE: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 000CE0: provisional 68k neg.w d4
db 0x0C, 0x14, 0x24, 0x98 ; 000CE2: provisional 68k cmpi.b #$98, (a4)
db 0xA0, 0xA0 ; 000CE6: provisional 68k dc.w $a0a0
db 0x68, 0x70 ; 000CE8: provisional 68k bvc.b $d5a
db 0x78, 0xE4 ; 000CEA: provisional 68k moveq #$e4, d4
db 0xEC, 0xE8, 0x44, 0x48 ; file 000CEC
db 0x6C, 0xC0 ; 000CF0: provisional 68k bge.b $cb2
db 0xC8, 0xC8 ; file 000CF2
db 0x30, 0x38, 0x48, 0x08 ; 000CF4: provisional 68k move.w $4808.w, d0
db 0x08, 0x64 ; file 000CF8
db 0xFF, 0xFF ; 000CFA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000CFC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000CFE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000D00: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000D02: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xA1 ; 000D04: provisional 68k eori.b #$a1, d1
db 0xFF, 0xFF ; 000D08: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xA1 ; 000D0A: provisional 68k eori.b #$a1, d1
db 0xFF, 0xFF ; 000D0E: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xCD, 0xDA ; 000D10: provisional 68k eori.b #$da, d1
db 0xFF, 0xFF ; 000D14: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xCB, 0xBA ; 000D16: provisional 68k eori.b #$ba, d1
db 0xFF, 0xFF ; 000D1A: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xCD, 0xBC ; 000D1C: provisional 68k eori.b #$bc, d1
db 0xFF, 0xFF ; 000D20: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xC9, 0xBC ; 000D22: provisional 68k eori.b #$bc, d1
db 0xFF, 0xFF ; 000D26: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xC9, 0xDC ; 000D28: provisional 68k eori.b #$dc, d1
db 0xFF, 0xFF ; 000D2C: provisional 68k dc.w $ffff
db 0x06, 0x02, 0x1A, 0xD9 ; 000D2E: provisional 68k addi.b #$d9, d2
db 0xA1, 0x01 ; 000D32: provisional 68k dc.w $a101
db 0x01, 0xC9, 0xDC, 0xFF ; 000D34: provisional 68k movep.l d0, -$2301(a1)
db 0xFF, 0x06 ; 000D38: provisional 68k dc.w $ff06
db 0x02, 0x19, 0xBB, 0xA1 ; 000D3A: provisional 68k andi.b #$a1, (a1)+
db 0x01, 0x01 ; 000D3E: provisional 68k btst.l d0, d1
db 0xCD, 0xDA ; 000D40: provisional 68k muls.w (a2)+, d6
db 0xFF, 0xFF ; 000D42: provisional 68k dc.w $ffff
db 0x06, 0x02, 0x19, 0xBB ; 000D44: provisional 68k addi.b #$bb, d2
db 0xAF, 0x01 ; 000D48: provisional 68k dc.w $af01
db 0x02, 0xAB, 0xD9, 0xE1, 0xFF, 0xFF, 0x06, 0x02 ; 000D4A: provisional 68k andi.l #$d9e1ffff, $602(a3)
db 0xFC, 0xBB ; 000D52: provisional 68k dc.w $fcbb
db 0xC1, 0x01 ; 000D54: provisional 68k abcd.b d1, d0
db 0x02, 0x9B, 0xD9, 0xE1, 0xFF, 0xFF ; 000D56: provisional 68k andi.l #$d9e1ffff, (a3)+
db 0x04, 0x04, 0xAD, 0xDA ; 000D5C: provisional 68k subi.b #$da, d4
db 0xFC, 0xBB ; 000D60: provisional 68k dc.w $fcbb
db 0xC1, 0x01 ; 000D62: provisional 68k abcd.b d1, d0
db 0x02, 0xAD, 0xDA, 0xE1, 0xFF, 0xFF, 0x04, 0x04 ; 000D64: provisional 68k andi.l #$dae1ffff, $404(a5)
db 0xDB, 0xDC ; 000D6C: provisional 68k adda.l (a4)+, a5
db 0xFC, 0xBD ; 000D6E: provisional 68k dc.w $fcbd
db 0xC1, 0x01 ; 000D70: provisional 68k abcd.b d1, d0
db 0x03, 0xC9, 0xAE, 0xEA ; 000D72: provisional 68k movep.l d1, -$5116(a1)
db 0x9C, 0xFF ; file 000D76
db 0xFF, 0x04 ; 000D78: provisional 68k dc.w $ff04
db 0x04, 0x9B, 0x9E, 0xFC, 0xBB, 0xC1 ; 000D7A: provisional 68k subi.l #$9efcbbc1, (a3)+
db 0x01, 0x04 ; 000D80: provisional 68k btst.l d0, d4
db 0xC9, 0x9E ; 000D82: provisional 68k and.l d4, (a6)+
db 0x8A, 0xDA ; 000D84: provisional 68k divu.w (a2)+, d5
db 0xFF, 0xFF ; 000D86: provisional 68k dc.w $ffff
db 0xFF, 0x04 ; 000D88: provisional 68k dc.w $ff04
db 0x04, 0xAB, 0xAF, 0xFC, 0xBB, 0xC1, 0x01, 0x04 ; 000D8A: provisional 68k subi.l #$affcbbc1, $104(a3)
db 0xCD, 0x9E ; 000D92: provisional 68k and.l d6, (a6)+
db 0xFF, 0x99 ; 000D94: provisional 68k dc.w $ff99
db 0xE1, 0xFF ; file 000D96
db 0xFF, 0x04 ; 000D98: provisional 68k dc.w $ff04
db 0x04, 0x9B, 0xAE, 0xFC, 0xBB, 0xC1 ; 000D9A: provisional 68k subi.l #$aefcbbc1, (a3)+
db 0x01, 0x01 ; 000DA0: provisional 68k btst.l d0, d1
db 0xCD, 0x9E ; 000DA2: provisional 68k and.l d6, (a6)+
db 0x01, 0x01 ; 000DA4: provisional 68k btst.l d0, d1
db 0xCD, 0xAF, 0xFF, 0xFF ; 000DA6: provisional 68k and.l d6, -$1(a7)
db 0x02, 0x06, 0xFF, 0xFF ; 000DAA: provisional 68k andi.b #$ff, d6
db 0x9B, 0x9C ; 000DAE: provisional 68k sub.l d5, (a4)+
db 0xEA, 0xBB ; 000DB0: provisional 68k ror.l d5, d3
db 0xA1, 0x01 ; 000DB2: provisional 68k dc.w $a101
db 0x01, 0xCD, 0x9E, 0x01 ; 000DB4: provisional 68k movep.l d0, -$61ff(a5)
db 0x01, 0xC9, 0xDC, 0xFF ; 000DB8: provisional 68k movep.l d0, -$2301(a1)
db 0xFF, 0x02 ; 000DBC: provisional 68k dc.w $ff02
db 0x09, 0xCC, 0xEC, 0xDB ; 000DBE: provisional 68k movep.l d4, -$1325(a4)
db 0x9C, 0xC9 ; 000DC2: provisional 68k suba.w a1, a6
db 0xBB, 0x9C ; 000DC4: provisional 68k eor.l d5, (a4)+
db 0xFF, 0xCB ; 000DC6: provisional 68k dc.w $ffcb
db 0x9E, 0x01 ; 000DC8: provisional 68k sub.b d1, d7
db 0x02, 0xFA ; file 000DCA
db 0xB9, 0xE1 ; 000DCC: provisional 68k cmpa.l -(a1), a4
db 0xFF, 0xFF ; 000DCE: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xED, 0xB9 ; 000DD0: provisional 68k movep.w -$1247(a2), d0
db 0xC9, 0xBB ; file 000DD4
db 0x9C, 0xCB ; 000DD6: provisional 68k suba.w a3, a6
db 0xBB, 0xDE ; 000DD8: provisional 68k cmpa.l (a6)+, a5
db 0xFF, 0xAB ; 000DDA: provisional 68k dc.w $ffab
db 0x9E, 0x01 ; 000DDC: provisional 68k sub.b d1, d7
db 0x02, 0xF9 ; file 000DDE
db 0xBD, 0xC1 ; 000DE0: provisional 68k cmpa.l d1, a6
db 0xFF, 0xFF ; 000DE2: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xF9, 0xDA ; 000DE4: provisional 68k movep.w -$626(a2), d0
db 0xCB, 0xBD ; file 000DE8
db 0x9C, 0xEA, 0xAE, 0xEE ; 000DEA: provisional 68k suba.w -$5112(a2), a6
db 0xFC, 0xDB ; 000DEE: provisional 68k dc.w $fcdb
db 0xDA, 0x01 ; 000DF0: provisional 68k add.b d1, d5
db 0x02, 0xFC ; file 000DF2
db 0x9A, 0xE1 ; 000DF4: provisional 68k suba.w -(a1), a5
db 0xFF, 0xFF ; 000DF6: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xE9, 0x9E ; 000DF8: provisional 68k movep.w -$1662(a2), d0
db 0xE9, 0x99 ; 000DFC: provisional 68k rol.l #$4, d1
db 0x9E, 0xE9, 0xDD, 0xAE ; 000DFE: provisional 68k suba.w -$2252(a1), a7
db 0x8A, 0xDB ; 000E02: provisional 68k divu.w (a3)+, d5
db 0xDA, 0x01 ; 000E04: provisional 68k add.b d1, d5
db 0x01, 0xFA, 0xDC, 0xFF ; file 000E06
db 0xFF, 0x01 ; 000E0A: provisional 68k dc.w $ff01
db 0x0D, 0xC9, 0x9A, 0x9D ; 000E0C: provisional 68k movep.l d6, -$6563(a1)
db 0xBD, 0x9E ; 000E10: provisional 68k eor.l d6, (a6)+
db 0xED, 0xBB ; 000E12: provisional 68k rol.l d6, d3
db 0xAE, 0xEA ; 000E14: provisional 68k dc.w $aeea
db 0x99, 0xDA ; 000E16: provisional 68k suba.l (a2)+, a4
db 0xE1, 0xFA, 0xDC, 0xFF ; file 000E18
db 0xFF, 0x00 ; 000E1C: provisional 68k dc.w $ff00
db 0x0E, 0x1C ; file 000E1E
db 0x9B, 0xD9 ; 000E20: provisional 68k suba.l (a1)+, a5
db 0x9D, 0xBB ; file 000E22
db 0x98, 0xED, 0xBD, 0xAE ; 000E24: provisional 68k suba.w -$4252(a5), a4
db 0xEA, 0xBD ; 000E28: provisional 68k ror.l d5, d5
db 0xDC, 0xE1 ; 000E2A: provisional 68k adda.w -(a1), a6
db 0xF9, 0xDC ; 000E2C: provisional 68k dc.w $f9dc
db 0xFF, 0xFF ; 000E2E: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 000E30
db 0x1A, 0xDB ; 000E32: provisional 68k move.b (a3)+, (a5)+
db 0xD9, 0x99 ; 000E34: provisional 68k add.l d4, (a1)+
db 0xBB, 0x9E ; 000E36: provisional 68k eor.l d5, (a6)+
db 0xE9, 0xBD ; 000E38: provisional 68k rol.l d4, d5
db 0xAE, 0xFA ; 000E3A: provisional 68k dc.w $aefa
db 0xBB, 0x9E ; 000E3C: provisional 68k eor.l d5, (a6)+
db 0xE1, 0xC9, 0xDC, 0xFF ; file 000E3E
db 0xFF, 0x00 ; 000E42: provisional 68k dc.w $ff00
db 0x0E, 0x1A ; file 000E44
db 0x9B, 0xDA ; 000E46: provisional 68k suba.l (a2)+, a5
db 0xAA, 0xDD ; 000E48: provisional 68k dc.w $aadd
db 0x9C, 0xEA, 0xB9, 0xAE ; 000E4A: provisional 68k suba.w -$4652(a2), a6
db 0xFC, 0xDB ; 000E4E: provisional 68k dc.w $fcdb
db 0xAE, 0xFF ; 000E50: provisional 68k dc.w $aeff
db 0xAD, 0xDC ; 000E52: provisional 68k dc.w $addc
db 0xFF, 0xFF ; 000E54: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 000E56
db 0x1A, 0x9B ; 000E58: provisional 68k move.b (a3)+, (a5)
db 0xDC, 0x8A ; 000E5A: provisional 68k add.l a2, d6
db 0x9D, 0x9C ; 000E5C: provisional 68k sub.l d6, (a4)+
db 0x8A, 0xD9 ; 000E5E: provisional 68k divu.w (a1)+, d5
db 0xAE, 0xEC ; 000E60: provisional 68k dc.w $aeec
db 0xDD, 0xA8, 0xFF, 0x9B ; 000E62: provisional 68k add.l d6, -$65(a0)
db 0xDC, 0xFF ; file 000E66
db 0xFF, 0x00 ; 000E68: provisional 68k dc.w $ff00
db 0x0E, 0x1C ; file 000E6A
db 0xAD, 0xDA ; 000E6C: provisional 68k dc.w $adda
db 0x8C, 0x9D ; 000E6E: provisional 68k or.l (a5)+, d6
db 0x9E, 0x8C ; 000E70: provisional 68k sub.l a4, d7
db 0xD9, 0xCE ; 000E72: provisional 68k adda.l a6, a4
db 0xFA, 0xD9 ; 000E74: provisional 68k dc.w $fad9
db 0xCE, 0xFC, 0x9D, 0x9C ; 000E76: provisional 68k mulu.w #$9d9c, d7
db 0xFF, 0xFF ; 000E7A: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xA9, 0xD9 ; 000E7C: provisional 68k movep.w -$5627(a5), d0
db 0xEE, 0x9D ; 000E80: provisional 68k ror.l #$7, d5
db 0x9E, 0x8C ; 000E82: provisional 68k sub.l a4, d7
db 0xD9, 0xCE ; 000E84: provisional 68k adda.l a6, a4
db 0xEA, 0xD9, 0xEE, 0xC9 ; file 000E86
db 0xAC, 0xEE ; 000E8A: provisional 68k dc.w $acee
db 0xFF, 0xFF ; 000E8C: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xC9, 0xD9 ; 000E8E: provisional 68k movep.w -$3627(a5), d0
db 0xAE, 0xAD ; 000E92: provisional 68k dc.w $aead
db 0x9A, 0xEC, 0xD9, 0xAE ; 000E94: provisional 68k suba.w -$2652(a4), a5
db 0xE9, 0xD9 ; file 000E98
db 0xE8, 0xAD ; 000E9A: provisional 68k lsr.l d4, d5
db 0xD9, 0xAC, 0xFF, 0xFF ; 000E9C: provisional 68k add.l d4, -$1(a4)
db 0x01, 0x0D, 0xEA, 0x9D ; 000EA0: provisional 68k movep.w -$1563(a5), d0
db 0xA8, 0xA9 ; 000EA4: provisional 68k dc.w $a8a9
db 0xD9, 0xEE, 0xD9, 0xAE ; 000EA6: provisional 68k adda.l -$2652(a6), a4
db 0xC9, 0xDA ; 000EAA: provisional 68k muls.w (a2)+, d4
db 0xEE, 0xDB ; file 000EAC
db 0xD9, 0xC1 ; 000EAE: provisional 68k adda.l d1, a4
db 0xFF, 0xFF ; 000EB0: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0x1C, 0x9D ; 000EB2: provisional 68k movep.w $1c9d(a4), d0
db 0x9C, 0xC9 ; 000EB6: provisional 68k suba.w a1, a6
db 0xD9, 0xEE, 0xD9, 0xAE ; 000EB8: provisional 68k adda.l -$2652(a6), a4
db 0xC9, 0xDA ; 000EBC: provisional 68k muls.w (a2)+, d4
db 0xE9, 0xB9 ; 000EBE: provisional 68k rol.l d4, d1
db 0xCE, 0xFF ; file 000EC0
db 0xFF, 0x01 ; 000EC2: provisional 68k dc.w $ff01
db 0x0C, 0x1C, 0xAD, 0x9A ; 000EC4: provisional 68k cmpi.b #$9a, (a4)+
db 0xEA, 0xD9 ; file 000EC8
db 0xCE, 0xDD ; 000ECA: provisional 68k mulu.w (a5)+, d7
db 0xAE, 0xCD ; 000ECC: provisional 68k dc.w $aecd
db 0xDA, 0xEB, 0xBC, 0x81 ; 000ECE: provisional 68k adda.w -$437f(a3), a5
db 0xFF, 0xFF ; 000ED2: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 000ED4
db 0xC9, 0xD9 ; 000ED6: provisional 68k muls.w (a1)+, d4
db 0xCA, 0x99 ; 000ED8: provisional 68k and.l (a1)+, d5
db 0xAA, 0xDD ; 000EDA: provisional 68k dc.w $aadd
db 0x9E, 0xAD, 0xDA, 0xEB ; 000EDC: provisional 68k sub.l -$2515(a5), d7
db 0x9E, 0xFF ; file 000EE0
db 0xFF, 0x02 ; 000EE2: provisional 68k dc.w $ff02
db 0x0A, 0xEA ; file 000EE4
db 0xD9, 0x9A ; 000EE6: provisional 68k add.l d4, (a2)+
db 0x99, 0xAA, 0x99, 0xA8 ; 000EE8: provisional 68k sub.l d4, -$6658(a2)
db 0xAD, 0xDA ; 000EEC: provisional 68k dc.w $adda
db 0xE9, 0xEF ; file 000EEE
db 0xFF, 0xFF ; 000EF0: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 000EF2
db 0xEA, 0x99 ; 000EF4: provisional 68k ror.l #$5, d1
db 0xAC, 0xAA ; 000EF6: provisional 68k dc.w $acaa
db 0xEE, 0x9A ; 000EF8: provisional 68k ror.l #$7, d2
db 0xE8, 0xA9 ; 000EFA: provisional 68k lsr.l d4, d1
db 0xAE, 0xEE ; 000EFC: provisional 68k dc.w $aeee
db 0xE1, 0xFF ; file 000EFE
db 0xFF, 0x02 ; 000F00: provisional 68k dc.w $ff02
db 0x09, 0xFE ; file 000F02
db 0xAC, 0x88 ; 000F04: provisional 68k dc.w $ac88
db 0xEE, 0x88 ; 000F06: provisional 68k lsr.l #$7, d0
db 0xCE, 0x88 ; file 000F08
db 0xCC, 0xE8, 0x8E, 0xFF ; 000F0A: provisional 68k mulu.w -$7101(a0), d6
db 0xFF, 0x02 ; 000F0E: provisional 68k dc.w $ff02
db 0x08, 0x1E, 0xEE, 0xEE, 0xE8, 0xCA ; file 000F10
db 0xAA, 0xA9 ; 000F16: provisional 68k dc.w $aaa9
db 0x9A, 0xEE, 0xFF, 0xFF ; 000F18: provisional 68k suba.w -$1(a6), a5
db 0x02, 0x08 ; file 000F1C
db 0x1C, 0x9D ; 000F1E: provisional 68k move.b (a5)+, (a6)
db 0xDD, 0x99 ; 000F20: provisional 68k add.l d6, (a1)+
db 0xBB, 0xDD ; 000F22: provisional 68k cmpa.l (a5)+, a5
db 0x99, 0xAE, 0xE1, 0xFF ; 000F24: provisional 68k sub.l d4, -$1e01(a6)
db 0xFF, 0x03 ; 000F28: provisional 68k dc.w $ff03
db 0x06, 0x9B, 0xBB, 0xBB, 0xBB, 0xB9 ; 000F2A: provisional 68k addi.l #$bbbbbbb9, (a3)+
db 0xAE, 0x88 ; 000F30: provisional 68k dc.w $ae88
db 0xFF, 0xFF ; 000F32: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 000F34: provisional 68k btst.l d1, d6
db 0xE9, 0xDD ; file 000F36
db 0xD9, 0x99 ; 000F38: provisional 68k add.l d4, (a1)+
db 0xAE, 0x88 ; 000F3A: provisional 68k dc.w $ae88
db 0x81, 0xFF ; file 000F3C
db 0xFF, 0x03 ; 000F3E: provisional 68k dc.w $ff03
db 0x05, 0xFF ; file 000F40
db 0xEC, 0xAC ; 000F42: provisional 68k lsr.l d6, d4
db 0xEE, 0xE8, 0x88, 0xFF ; file 000F44
db 0xFF, 0x04 ; 000F48: provisional 68k dc.w $ff04
db 0x04, 0x88, 0x88, 0x88 ; file 000F4A
db 0x88, 0xE1 ; 000F4E: provisional 68k divu.w -(a1), d4
db 0xFF, 0xFF ; 000F50: provisional 68k dc.w $ffff
db 0x04, 0x03, 0xEE, 0xEE ; 000F52: provisional 68k subi.b #$ee, d3
db 0xEE, 0xE1 ; file 000F56
db 0xFF, 0xFF ; 000F58: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 000F5A: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 000F5C: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 000F60: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 000F64: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 000F68
db 0x10, 0x10 ; 000F6A: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 000F6C: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 000F6E: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 000F70: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 000F72: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 000F76: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 000F7A: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 000F7C: provisional 68k neg.w d4
db 0x0C, 0x18, 0x18, 0x8C ; 000F7E: provisional 68k cmpi.b #$8c, (a0)+
db 0x94, 0x94 ; 000F82: provisional 68k sub.l (a4), d2
db 0x68, 0x70 ; 000F84: provisional 68k bvc.b $ff6
db 0x74, 0x44 ; 000F86: provisional 68k moveq #$44, d2
db 0x48, 0x74, 0xD4, 0xD8 ; 000F88: provisional 68k pea.l -$28(a4, a5.w)
db 0xD8, 0x44 ; 000F8C: provisional 68k add.w d4, d4
db 0x4C, 0x54 ; file 000F8E
db 0x24, 0x28, 0x44, 0x0C ; 000F90: provisional 68k move.l $440c(a0), d2
db 0x0C, 0x5C, 0xFF, 0xFF ; 000F94: provisional 68k cmpi.w #$ffff, (a4)+
db 0x0A, 0x01, 0x1B, 0xAB ; 000F98: provisional 68k eori.b #$ab, d1
db 0xFF, 0xFF ; 000F9C: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1B, 0xCA ; 000F9E: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 000FA2: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1B, 0xCA ; 000FA4: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 000FA8: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1B, 0xCA ; 000FAA: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 000FAE: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1B, 0xCA ; 000FB0: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 000FB4: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xCA ; 000FB6: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 000FBA: provisional 68k dc.w $ffff
db 0x0A, 0x02, 0xB9, 0x9A ; 000FBC: provisional 68k eori.b #$9a, d2
db 0xD1, 0xFF ; file 000FC0
db 0xFF, 0x0A ; 000FC2: provisional 68k dc.w $ff0a
db 0x02, 0xB9, 0xC9, 0xD1, 0xFF, 0xFF, 0x0A, 0x01, 0x19, 0xCA ; 000FC4: provisional 68k andi.l #$c9d1ffff, $a0119ca.l
db 0xFF, 0xFF ; 000FCE: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xCA ; 000FD0: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 000FD4: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xCA ; 000FD6: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 000FDA: provisional 68k dc.w $ffff
db 0x06, 0x02, 0x1B, 0x99 ; 000FDC: provisional 68k addi.b #$99, d2
db 0xD1, 0x01 ; 000FE0: provisional 68k addx.b d1, d0
db 0x01, 0x19 ; 000FE2: provisional 68k btst.l d0, (a1)+
db 0xCA, 0xFF ; file 000FE4
db 0xFF, 0x06 ; 000FE6: provisional 68k dc.w $ff06
db 0x02, 0xBC ; file 000FE8
db 0xCC, 0xA1 ; 000FEA: provisional 68k and.l -(a1), d6
db 0x01, 0x01 ; 000FEC: provisional 68k btst.l d0, d1
db 0x19, 0xCA ; file 000FEE
db 0xFF, 0xFF ; 000FF0: provisional 68k dc.w $ffff
db 0x06, 0x02, 0xBC, 0xCC ; 000FF2: provisional 68k addi.b #$cc, d2
db 0xA1, 0x01 ; 000FF6: provisional 68k dc.w $a101
db 0x01, 0x19 ; 000FF8: provisional 68k btst.l d0, (a1)+
db 0xC9, 0xFF ; file 000FFA
db 0xFF, 0x06 ; 000FFC: provisional 68k dc.w $ff06
db 0x02, 0x19, 0xCC, 0xBF ; 000FFE: provisional 68k andi.b #$bf, (a1)+
db 0x01, 0x02 ; 001002: provisional 68k btst.l d0, d2
db 0xBC, 0xC9 ; 001004: provisional 68k cmpa.w a1, a6
db 0xDF, 0xFF ; file 001006
db 0xFF, 0x03 ; 001008: provisional 68k dc.w $ff03
db 0x05, 0x1B ; 00100A: provisional 68k btst.l d2, (a3)+
db 0xCC, 0x9B ; 00100C: provisional 68k and.l (a3)+, d6
db 0xFB, 0xCC ; 00100E: provisional 68k dc.w $fbcc
db 0xD1, 0x01 ; 001010: provisional 68k addx.b d1, d0
db 0x02, 0xAC, 0x99, 0xDF, 0xFF, 0xFF, 0x03, 0x05 ; 001012: provisional 68k andi.l #$99dfffff, $305(a4)
db 0x1A, 0xCC ; file 00101A
db 0x9B, 0xFB, 0xCC, 0xD1 ; 00101C: provisional 68k suba.l $fef(pc, a4.l), a5
db 0x01, 0x03 ; 001020: provisional 68k btst.l d0, d3
db 0x9C, 0xC9 ; 001022: provisional 68k suba.w a1, a6
db 0xDE, 0xD1 ; 001024: provisional 68k adda.w (a1), a7
db 0xFF, 0xFF ; 001026: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xCC, 0x9F ; 001028: provisional 68k subi.b #$9f, d4
db 0xFB, 0xCC ; 00102C: provisional 68k dc.w $fbcc
db 0xB1, 0x01 ; 00102E: provisional 68k eor.b d0, d1
db 0x04, 0xB9, 0xAD, 0x1B, 0x99, 0xFF, 0xFF, 0xFF, 0x04, 0x04 ; 001030: provisional 68k subi.l #$ad1b99ff, $ffff0404.l
db 0xCC, 0xAF, 0xFB, 0xCC ; 00103A: provisional 68k and.l -$434(a7), d6
db 0xB1, 0x01 ; 00103E: provisional 68k eor.b d0, d1
db 0x04, 0xBA ; file 001040
db 0xAE, 0x1B ; 001042: provisional 68k dc.w $ae1b
db 0x99, 0xE1 ; 001044: provisional 68k suba.l -(a1), a4
db 0xFF, 0xFF ; 001046: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xCC, 0xAE ; 001048: provisional 68k subi.b #$ae, d4
db 0xFB, 0xCC ; 00104C: provisional 68k dc.w $fbcc
db 0xD1, 0x01 ; 00104E: provisional 68k addx.b d1, d0
db 0x01, 0xBC ; file 001050
db 0x9D, 0x01 ; 001052: provisional 68k subx.b d1, d6
db 0x01, 0xA9, 0xB1, 0xFF ; 001054: provisional 68k bclr.b d0, -$4e01(a1)
db 0xFF, 0x04 ; 001058: provisional 68k dc.w $ff04
db 0x04, 0xCC ; file 00105A
db 0x9D, 0xFB, 0xCC, 0xB1 ; 00105C: provisional 68k suba.l $100f(pc, a4.l), a6
db 0x01, 0x01 ; 001060: provisional 68k btst.l d0, d1
db 0xBC, 0x9D ; 001062: provisional 68k cmp.l (a5)+, d6
db 0x01, 0x01 ; 001064: provisional 68k btst.l d0, d1
db 0xB9, 0x9D ; 001066: provisional 68k eor.l d4, (a5)+
db 0xFF, 0xFF ; 001068: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xCC, 0xAE ; 00106A: provisional 68k subi.b #$ae, d4
db 0xE9, 0xCC ; file 00106E
db 0xA1, 0x01 ; 001070: provisional 68k dc.w $a101
db 0x01, 0xBC ; file 001072
db 0x9D, 0x01 ; 001074: provisional 68k subx.b d1, d6
db 0x02, 0x19, 0xCA, 0xE1 ; 001076: provisional 68k andi.b #$e1, (a1)+
db 0xFF, 0xFF ; 00107A: provisional 68k dc.w $ffff
db 0x01, 0x07 ; 00107C: provisional 68k btst.l d0, d7
db 0xBC, 0xCA ; 00107E: provisional 68k cmpa.w a2, a6
db 0xEA, 0xCC ; file 001080
db 0x9E, 0xD9 ; 001082: provisional 68k suba.w (a1)+, a7
db 0xCC, 0x9D ; 001084: provisional 68k and.l (a5)+, d6
db 0x01, 0x01 ; 001086: provisional 68k btst.l d0, d1
db 0xBC, 0x9D ; 001088: provisional 68k cmp.l (a5)+, d6
db 0x01, 0x02 ; 00108A: provisional 68k btst.l d0, d2
db 0x1B, 0xCC, 0xB1, 0xFF ; file 00108C
db 0xFF, 0x01 ; 001090: provisional 68k dc.w $ff01
db 0x0A, 0xAC, 0xCD, 0xE9, 0xCC, 0x9E, 0xAC, 0xCC ; 001092: provisional 68k eori.l #$cde9cc9e, -$5334(a4)
db 0xCD, 0xFF ; file 00109A
db 0xAC, 0x9B ; 00109C: provisional 68k dc.w $ac9b
db 0x01, 0x02 ; 00109E: provisional 68k btst.l d0, d2
db 0x1B, 0xCC ; file 0010A0
db 0xA1, 0xFF ; 0010A2: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 0010A4: provisional 68k dc.w $ff01
db 0x0E, 0xBC ; file 0010A6
db 0x9E, 0xAC, 0xCC, 0x9D ; 0010A8: provisional 68k sub.l -$3363(a4), d7
db 0xB9, 0x99 ; 0010AC: provisional 68k eor.l d4, (a1)+
db 0xAE, 0xFB ; 0010AE: provisional 68k dc.w $aefb
db 0xCC, 0x9A ; 0010B0: provisional 68k and.l (a2)+, d6
db 0xE1, 0x1B ; 0010B2: provisional 68k rol.b #$8, d3
db 0x9A, 0xD1 ; 0010B4: provisional 68k suba.w (a1), a5
db 0xFF, 0xFF ; 0010B6: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xAC, 0xCA ; 0010B8: provisional 68k movep.w -$5336(a5), d0
db 0xA9, 0x9A ; 0010BC: provisional 68k dc.w $a99a
db 0xAE, 0xDA ; 0010BE: provisional 68k dc.w $aeda
db 0xAA, 0xAD ; 0010C0: provisional 68k dc.w $aaad
db 0xEA, 0xCC ; file 0010C2
db 0x9A, 0xD1 ; 0010C4: provisional 68k suba.w (a1), a5
db 0x1B, 0x9D, 0xFF, 0xFF, 0x01, 0x0D, 0x9C, 0x99 ; 0010C6: provisional 68k move.b (a5)+, ([$10d9c99])
db 0x99, 0x9A ; 0010CE: provisional 68k sub.l d4, (a2)+
db 0xAE, 0xD9 ; 0010D0: provisional 68k dc.w $aed9
db 0xCC, 0x9E ; 0010D2: provisional 68k and.l (a6)+, d6
db 0xEA, 0x99 ; 0010D4: provisional 68k ror.l #$5, d1
db 0x9A, 0xD1 ; 0010D6: provisional 68k suba.w (a1), a5
db 0x1A, 0xCB ; file 0010D8
db 0xFF, 0xFF ; 0010DA: provisional 68k dc.w $ffff
db 0x00, 0x0E, 0x1B, 0xCC ; file 0010DC
db 0x9A, 0x9C ; 0010E0: provisional 68k sub.l (a4)+, d5
db 0xCC, 0xAE, 0xBC, 0xCC ; 0010E2: provisional 68k and.l -$4334(a6), d6
db 0xAE, 0xEA ; 0010E6: provisional 68k dc.w $aeea
db 0x9C, 0x9A ; 0010E8: provisional 68k sub.l (a2)+, d6
db 0xE1, 0x19 ; 0010EA: provisional 68k rol.b #$8, d1
db 0xCB, 0xFF ; file 0010EC
db 0xFF, 0x00 ; 0010EE: provisional 68k dc.w $ff00
db 0x0E, 0x19 ; file 0010F0
db 0xCC, 0x9A ; 0010F2: provisional 68k and.l (a2)+, d6
db 0xAC, 0xCC ; 0010F4: provisional 68k dc.w $accc
db 0xAE, 0xE9 ; 0010F6: provisional 68k dc.w $aee9
db 0xC9, 0xAE, 0xFA, 0xCC ; 0010F8: provisional 68k and.l d4, -$534(a6)
db 0xCD, 0xE1 ; 0010FC: provisional 68k muls.w -(a1), d6
db 0xB9, 0xCB ; 0010FE: provisional 68k cmpa.l a3, a4
db 0xFF, 0xFF ; 001100: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 001102
db 0x1A, 0x99 ; 001104: provisional 68k move.b (a1)+, (a5)
db 0x9A, 0xD9 ; 001106: provisional 68k suba.w (a1)+, a5
db 0xCC, 0xAE, 0xE9, 0xC9 ; 001108: provisional 68k and.l -$1637(a6), d6
db 0xDE, 0xEB, 0xCC, 0x9E ; 00110C: provisional 68k adda.w -$3362(a3), a7
db 0xFF, 0xAC ; 001110: provisional 68k dc.w $ffac
db 0xCD, 0xFF ; file 001112
db 0xFF, 0x00 ; 001114: provisional 68k dc.w $ff00
db 0x0E, 0x1A ; file 001116
db 0xCC, 0x9D ; 001118: provisional 68k and.l (a5)+, d6
db 0xD9, 0x9C ; 00111A: provisional 68k add.l d4, (a4)+
db 0xAE, 0xEA ; 00111C: provisional 68k dc.w $aeea
db 0xC9, 0xDE ; 00111E: provisional 68k muls.w (a6)+, d4
db 0xEA, 0xCC ; file 001120
db 0xAE, 0xFF ; 001122: provisional 68k dc.w $aeff
db 0x9C, 0xCA ; 001124: provisional 68k suba.w a2, a6
db 0xFF, 0xFF ; 001126: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 001128
db 0x1B, 0x9C, 0xCA, 0x8B ; 00112A: provisional 68k move.b (a4)+, -$75(a5, a4.l)
db 0x99, 0xAE, 0x8A, 0x99 ; 00112E: provisional 68k sub.l d4, -$7567(a6)
db 0xDE, 0xEA, 0xC9, 0xDE ; 001132: provisional 68k adda.w -$3622(a2), a7
db 0xEA, 0x99 ; 001136: provisional 68k ror.l #$5, d1
db 0x9D, 0xFF ; file 001138
db 0xFF, 0x00 ; 00113A: provisional 68k dc.w $ff00
db 0x0E, 0x1B ; file 00113C
db 0xA9, 0xCA ; 00113E: provisional 68k dc.w $a9ca
db 0x8B, 0x99 ; 001140: provisional 68k or.l d5, (a1)+
db 0xAE, 0x8A ; 001142: provisional 68k dc.w $ae8a
db 0x99, 0xDE ; 001144: provisional 68k suba.l (a6)+, a4
db 0xEA, 0xC9 ; file 001146
db 0xDE, 0xD9 ; 001148: provisional 68k adda.w (a1)+, a7
db 0x9A, 0xBE ; file 00114A
db 0xFF, 0xFF ; 00114C: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xD9, 0x99 ; 00114E: provisional 68k movep.w -$2667(a5), d0
db 0xDE, 0xA9, 0x9D, 0xEB ; 001152: provisional 68k add.l -$6215(a1), d7
db 0xC9, 0xDE ; 001156: provisional 68k muls.w (a6)+, d4
db 0xD9, 0xCA ; 001158: provisional 68k adda.l a2, a4
db 0xEE, 0x9C ; 00115A: provisional 68k ror.l #$7, d4
db 0xC9, 0xAE, 0xFF, 0xFF ; 00115C: provisional 68k and.l d4, -$1(a6)
db 0x01, 0x0D, 0xBA, 0x99 ; 001160: provisional 68k movep.w -$4567(a5), d0
db 0xA8, 0xA9 ; 001164: provisional 68k dc.w $a8a9
db 0x9A, 0xED, 0xC9, 0xDE ; 001166: provisional 68k suba.w -$3622(a5), a5
db 0xD9, 0xCA ; 00116A: provisional 68k adda.l a2, a4
db 0xE9, 0xCC ; file 00116C
db 0xAA, 0xB1 ; 00116E: provisional 68k dc.w $aab1
db 0xFF, 0xFF ; 001170: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0x1D, 0x99 ; 001172: provisional 68k movep.w $1d99(a4), d0
db 0xAE, 0xD9 ; 001176: provisional 68k dc.w $aed9
db 0x9A, 0xEE, 0xC9, 0xAE ; 001178: provisional 68k suba.w -$3652(a6), a5
db 0xD9, 0x9A ; 00117C: provisional 68k add.l d4, (a2)+
db 0xEC, 0xCA, 0x88, 0xFF ; file 00117E
db 0xFF, 0x01 ; 001182: provisional 68k dc.w $ff01
db 0x0C, 0x1B, 0xA9, 0x9D ; 001184: provisional 68k cmpi.b #$9d, (a3)+
db 0xDA, 0x99 ; 001188: provisional 68k add.l (a1)+, d5
db 0xDD, 0x99 ; 00118A: provisional 68k add.l d6, (a1)+
db 0xAE, 0xAC ; 00118C: provisional 68k dc.w $aeac
db 0xCA, 0xEC, 0x9D, 0xE1 ; 00118E: provisional 68k mulu.w -$621f(a4), d5
db 0xFF, 0xFF ; 001192: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1E, 0xD9 ; 001194: provisional 68k movep.w $1ed9(a3), d0
db 0x9A, 0xDA ; 001198: provisional 68k suba.w (a2)+, a5
db 0x99, 0xAA, 0x99, 0xA8 ; 00119A: provisional 68k sub.l d4, -$6658(a2)
db 0xAC, 0x9A ; 00119E: provisional 68k dc.w $ac9a
db 0xE9, 0xDE ; file 0011A0
db 0xFF, 0xFF ; 0011A2: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 0011A4
db 0xDA, 0x99 ; 0011A6: provisional 68k add.l (a1)+, d5
db 0xAA, 0x99 ; 0011A8: provisional 68k dc.w $aa99
db 0xAD, 0x99 ; 0011AA: provisional 68k dc.w $ad99
db 0xA8, 0xAC ; 0011AC: provisional 68k dc.w $a8ac
db 0x9D, 0x8D ; 0011AE: provisional 68k subx.l -(a5), -(a6)
db 0xE1, 0xFF ; file 0011B0
db 0xFF, 0x02 ; 0011B2: provisional 68k dc.w $ff02
db 0x09, 0xFD ; file 0011B4
db 0x99, 0xAE, 0xDD, 0xEE ; 0011B6: provisional 68k sub.l d4, -$2212(a6)
db 0xAD, 0x88 ; 0011BA: provisional 68k dc.w $ad88
db 0xDA, 0xD8 ; 0011BC: provisional 68k adda.w (a0)+, a5
db 0x8E, 0xFF ; file 0011BE
db 0xFF, 0x02 ; 0011C0: provisional 68k dc.w $ff02
db 0x09, 0x1E ; 0011C2: provisional 68k btst.l d4, (a6)+
db 0xE8, 0x88 ; 0011C4: provisional 68k lsr.l #$4, d0
db 0x88, 0x88 ; file 0011C6
db 0xD8, 0x8D ; 0011C8: provisional 68k add.l a5, d4
db 0xAE, 0x8E ; 0011CA: provisional 68k dc.w $ae8e
db 0xE1, 0xFF ; file 0011CC
db 0xFF, 0x02 ; 0011CE: provisional 68k dc.w $ff02
db 0x08, 0x1D ; file 0011D0
db 0xAD, 0xA9 ; 0011D2: provisional 68k dc.w $ada9
db 0xAA, 0x99 ; 0011D4: provisional 68k dc.w $aa99
db 0x9A, 0x99 ; 0011D6: provisional 68k sub.l (a1)+, d5
db 0xD8, 0xE1 ; 0011D8: provisional 68k adda.w -(a1), a4
db 0xFF, 0xFF ; 0011DA: provisional 68k dc.w $ffff
db 0x02, 0x08 ; file 0011DC
db 0x1B, 0x9C, 0xCC, 0xCC ; 0011DE: provisional 68k move.b (a4)+, -$34(a5, a4.l)
db 0xCC, 0xCC ; file 0011E2
db 0x9A, 0xEE, 0xE1, 0xFF ; 0011E4: provisional 68k suba.w -$1e01(a6), a5
db 0xFF, 0x03 ; 0011E8: provisional 68k dc.w $ff03
db 0x06, 0xDC, 0xCC, 0xCC ; file 0011EA
db 0xCC, 0x9A ; 0011EE: provisional 68k and.l (a2)+, d6
db 0xE8, 0x8E ; 0011F0: provisional 68k lsr.l #$4, d6
db 0xFF, 0xFF ; 0011F2: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 0011F4: provisional 68k btst.l d1, d6
db 0x1B, 0xA9, 0x9A, 0xAD, 0x88, 0x88 ; 0011F6: provisional 68k move.b -$6553(a1), -$78(a5, a0.l)
db 0xE1, 0xFF ; file 0011FC
db 0xFF, 0x04 ; 0011FE: provisional 68k dc.w $ff04
db 0x04, 0x88, 0x88, 0x88 ; file 001200
db 0x88, 0xE1 ; 001204: provisional 68k divu.w -(a1), d4
db 0xFF, 0xFF ; 001206: provisional 68k dc.w $ffff
db 0x04, 0x03, 0xEE, 0xEE ; 001208: provisional 68k subi.b #$ee, d3
db 0xEE, 0xE1 ; file 00120C
db 0xFF, 0xFF ; 00120E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001210: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 001212: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 001216: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 00121A: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 00121E
db 0x10, 0x10 ; 001220: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001222: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001224: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001226: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001228: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00122C: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 001230: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 001232: provisional 68k neg.w d4
db 0x0C, 0x18, 0x1C, 0x78 ; 001234: provisional 68k cmpi.b #$78, (a0)+
db 0x84, 0x84 ; 001238: provisional 68k or.l d4, d2
db 0xD0, 0xD4 ; 00123A: provisional 68k adda.w (a4), a0
db 0xD4, 0x60 ; 00123C: provisional 68k add.w -(a0), d2
db 0x64, 0x74 ; 00123E: provisional 68k bcc.b $12b4
db 0x38, 0x38, 0x6C, 0x30 ; 001240: provisional 68k move.w $6c30.w, d4
db 0x38, 0x44 ; 001244: provisional 68k movea.w d4, a4
db 0x94, 0x9C ; 001246: provisional 68k sub.l (a4)+, d2
db 0xA4, 0x0C ; 001248: provisional 68k dc.w $a40c
db 0x0C, 0x60, 0xFF, 0xFF ; 00124A: provisional 68k cmpi.w #$ffff, -(a0)
db 0xFF, 0xFF ; 00124E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001250: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 001252: provisional 68k btst.l d5, d1
db 0xCE, 0xB1, 0xFF, 0xFF, 0x0B, 0x01, 0xBA, 0xBF ; 001254: provisional 68k and.l ([$b01babf]), d7
db 0xFF, 0xFF ; 00125C: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 00125E: provisional 68k btst.l d5, d1
db 0xBE, 0xCF ; 001260: provisional 68k cmpa.w a7, a7
db 0xFF, 0xFF ; 001262: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 001264: provisional 68k btst.l d5, d1
db 0xBE, 0xCF ; 001266: provisional 68k cmpa.w a7, a7
db 0xFF, 0xFF ; 001268: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 00126A: provisional 68k btst.l d5, d1
db 0x9E, 0xCF ; 00126C: provisional 68k suba.w a7, a7
db 0xFF, 0xFF ; 00126E: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 001270: provisional 68k btst.l d5, d1
db 0xAA, 0xBF ; 001272: provisional 68k dc.w $aabf
db 0xFF, 0xFF ; 001274: provisional 68k dc.w $ffff
db 0x0A, 0x02, 0xFB, 0xAA ; 001276: provisional 68k eori.b #$aa, d2
db 0xB1, 0xFF ; file 00127A
db 0xFF, 0x0A ; 00127C: provisional 68k dc.w $ff0a
db 0x02, 0x1B, 0xAA, 0xBF ; 00127E: provisional 68k andi.b #$bf, (a3)+
db 0xFF, 0xFF ; 001282: provisional 68k dc.w $ffff
db 0x0A, 0x02, 0x1B, 0xE9 ; 001284: provisional 68k eori.b #$e9, d2
db 0xDF, 0xFF ; file 001288
db 0xFF, 0x06 ; 00128A: provisional 68k dc.w $ff06
db 0x01, 0x1C ; 00128C: provisional 68k btst.l d0, (a4)+
db 0xBB, 0x02 ; 00128E: provisional 68k eor.b d5, d2
db 0x02, 0x1B, 0xEB, 0xD1 ; 001290: provisional 68k andi.b #$d1, (a3)+
db 0xFF, 0xFF ; 001294: provisional 68k dc.w $ffff
db 0x06, 0x02, 0xCA, 0xAA ; 001296: provisional 68k addi.b #$aa, d2
db 0xB1, 0x01 ; 00129A: provisional 68k eor.b d0, d1
db 0x02, 0x1B, 0xA9, 0xC1 ; 00129C: provisional 68k andi.b #$c1, (a3)+
db 0xFF, 0xFF ; 0012A0: provisional 68k dc.w $ffff
db 0x06, 0x02, 0xBA, 0xAA ; 0012A2: provisional 68k addi.b #$aa, d2
db 0xBF, 0x01 ; 0012A6: provisional 68k eor.b d7, d1
db 0x01, 0x1B ; 0012A8: provisional 68k btst.l d0, (a3)+
db 0xA9, 0xFF ; 0012AA: provisional 68k dc.w $a9ff
db 0xFF, 0x06 ; 0012AC: provisional 68k dc.w $ff06
db 0x02, 0xCA ; file 0012AE
db 0xAA, 0xCF ; 0012B0: provisional 68k dc.w $aacf
db 0x01, 0x01 ; 0012B2: provisional 68k btst.l d0, d1
db 0x1B, 0xA9, 0xFF, 0xFF, 0x03, 0x05 ; 0012B4: provisional 68k move.b -$1(a1), ([a5], d0.w * 2)
db 0x1B, 0xEE ; file 0012BA
db 0xBF, 0xDE ; 0012BC: provisional 68k cmpa.l (a6)+, a7
db 0xAA, 0xDF ; 0012BE: provisional 68k dc.w $aadf
db 0x01, 0x02 ; 0012C0: provisional 68k btst.l d0, d2
db 0xCE, 0xA9, 0xDF, 0xFF ; 0012C2: provisional 68k and.l -$2001(a1), d7
db 0xFF, 0x03 ; 0012C6: provisional 68k dc.w $ff03
db 0x05, 0x1E ; 0012C8: provisional 68k btst.l d2, (a6)+
db 0xAA, 0xEF ; 0012CA: provisional 68k dc.w $aaef
db 0xDE, 0xAA, 0xDF, 0x01 ; 0012CC: provisional 68k add.l -$20ff(a2), d7
db 0x02, 0xBA ; file 0012D0
db 0xAE, 0xDF ; 0012D2: provisional 68k dc.w $aedf
db 0xFF, 0xFF ; 0012D4: provisional 68k dc.w $ffff
db 0x03, 0x05 ; 0012D6: provisional 68k btst.l d1, d5
db 0x19, 0xAA, 0xBF, 0xD9, 0xAA, 0xCF ; 0012D8: provisional 68k move.b -$4027(a2), -$31(a4, a2.l)
db 0x01, 0x03 ; 0012DE: provisional 68k btst.l d0, d3
db 0xBA, 0xAE, 0xBF, 0xCC ; 0012E0: provisional 68k cmp.l -$4034(a6), d5
db 0xFF, 0xFF ; 0012E4: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xAA, 0xBF ; 0012E6: provisional 68k subi.b #$bf, d4
db 0xD9, 0xAA, 0xCF, 0x01 ; 0012EA: provisional 68k add.l d4, -$30ff(a2)
db 0x04, 0xBE, 0xEB, 0xDD, 0xEE, 0xFF ; file 0012EE
db 0xFF, 0xFF ; 0012F4: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xAA, 0xBF ; 0012F6: provisional 68k subi.b #$bf, d4
db 0xD9, 0xAA, 0xCF, 0x01 ; 0012FA: provisional 68k add.l d4, -$30ff(a2)
db 0x04, 0xDB, 0xBD, 0xFF, 0xEE, 0xD1 ; file 0012FE
db 0xFF, 0xFF ; 001304: provisional 68k dc.w $ffff
db 0x03, 0x05 ; 001306: provisional 68k btst.l d1, d5
db 0x1B, 0xAA, 0xBF, 0xD9, 0xAA, 0xBF ; 001308: provisional 68k move.b -$4027(a2), -$41(a5, a2.l)
db 0x01, 0x01 ; 00130E: provisional 68k btst.l d0, d1
db 0xB9, 0x9D ; 001310: provisional 68k eor.l d4, (a5)+
db 0x01, 0x01 ; 001312: provisional 68k btst.l d0, d1
db 0xC9, 0xBD ; file 001314
db 0xFF, 0xFF ; 001316: provisional 68k dc.w $ffff
db 0x03, 0x05 ; 001318: provisional 68k btst.l d1, d5
db 0x1B, 0xAA, 0xBF, 0xD9, 0xAA, 0xBF ; 00131A: provisional 68k move.b -$4027(a2), -$41(a5, a2.l)
db 0x01, 0x01 ; 001320: provisional 68k btst.l d0, d1
db 0xBE, 0xEC, 0x01, 0x01 ; 001322: provisional 68k cmpa.w $101(a4), a7
db 0x19, 0xEC ; file 001326
db 0xFF, 0xFF ; 001328: provisional 68k dc.w $ffff
db 0x01, 0x07 ; 00132A: provisional 68k btst.l d0, d7
db 0xBE, 0xEC, 0xDB, 0xAA ; 00132C: provisional 68k cmpa.w -$2456(a4), a7
db 0xBD, 0xDE ; 001330: provisional 68k cmpa.l (a6)+, a6
db 0xAA, 0xB1 ; 001332: provisional 68k dc.w $aab1
db 0x01, 0x01 ; 001334: provisional 68k btst.l d0, d1
db 0xBE, 0xED, 0x01, 0x02 ; 001336: provisional 68k cmpa.w $102(a5), a7
db 0x1C, 0xAE, 0xC1, 0xFF ; 00133A: provisional 68k move.b -$3e01(a6), (a6)
db 0xFF, 0x01 ; 00133E: provisional 68k dc.w $ff01
db 0x07, 0xEA, 0xAC, 0xD9 ; 001340: provisional 68k bset.b d3, -$5327(a2)
db 0xAA, 0x9D ; 001344: provisional 68k dc.w $aa9d
db 0xD9, 0xAA, 0x91, 0x01 ; 001346: provisional 68k add.l d4, -$6eff(a2)
db 0x01, 0xBA ; file 00134A
db 0xED, 0x02 ; 00134C: provisional 68k asl.b #$6, d2
db 0x01, 0xAA, 0xB1, 0xFF ; 00134E: provisional 68k bclr.b d0, -$4e01(a2)
db 0xFF, 0x01 ; 001352: provisional 68k dc.w $ff01
db 0x0A, 0xEA, 0xE8, 0xCA ; file 001354
db 0xAA, 0x9D ; 001358: provisional 68k dc.w $aa9d
db 0xBA, 0xAA, 0xAB, 0xFF ; 00135A: provisional 68k cmp.l -$5401(a2), d5
db 0xBA, 0xED, 0x02, 0x01 ; 00135E: provisional 68k cmpa.w $201(a5), a5
db 0xAA, 0xB1 ; 001362: provisional 68k dc.w $aab1
db 0xFF, 0xFF ; 001364: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xEA, 0x9D ; 001366: provisional 68k movep.w -$1563(a3), d0
db 0x9A, 0xAA, 0xED, 0xBA ; 00136A: provisional 68k sub.l -$1246(a2), d5
db 0xAA, 0xED ; 00136E: provisional 68k dc.w $aaed
db 0xFF, 0xEA ; 001370: provisional 68k dc.w $ffea
db 0xED, 0xC1 ; 001372: provisional 68k dc.w $edc1
db 0x01, 0x01 ; 001374: provisional 68k btst.l d0, d1
db 0xE9, 0xD1 ; file 001376
db 0xFF, 0xFF ; 001378: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xEA, 0xEB ; 00137A: provisional 68k movep.w -$1515(a3), d0
db 0xBE, 0xE9, 0xBD, 0xDB ; 00137E: provisional 68k cmpa.w -$4225(a1), a7
db 0xBB, 0xBC ; file 001382
db 0xFB, 0xAA ; 001384: provisional 68k dc.w $fbaa
db 0xA9, 0xD1 ; 001386: provisional 68k dc.w $a9d1
db 0x01, 0x01 ; 001388: provisional 68k btst.l d0, d1
db 0xEB, 0xFF ; file 00138A
db 0xFF, 0xFF ; 00138C: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 00138E
db 0xFF, 0xEA ; 001390: provisional 68k dc.w $ffea
db 0x9B, 0xCB ; 001392: provisional 68k suba.l a3, a5
db 0xBB, 0xDD ; 001394: provisional 68k cmpa.l (a5)+, a5
db 0xDB, 0x99 ; 001396: provisional 68k add.l d5, (a1)+
db 0xBD, 0xDB ; 001398: provisional 68k cmpa.l (a3)+, a6
db 0xEE, 0xE9 ; file 00139A
db 0xD1, 0x1B ; 00139C: provisional 68k add.b d0, (a3)+
db 0xAB, 0xFF ; 00139E: provisional 68k dc.w $abff
db 0xFF, 0x00 ; 0013A0: provisional 68k dc.w $ff00
db 0x0E, 0x1C ; file 0013A2
db 0xAA, 0x9B ; 0013A4: provisional 68k dc.w $aa9b
db 0xEE, 0xEE ; file 0013A6
db 0xBD, 0xCA ; 0013A8: provisional 68k cmpa.l a2, a6
db 0xAA, 0x9D ; 0013AA: provisional 68k dc.w $aa9d
db 0xFB, 0xEE ; 0013AC: provisional 68k dc.w $fbee
db 0xEB, 0xD1 ; 0013AE: provisional 68k dc.w $ebd1
db 0x19, 0xAB, 0xFF, 0xFF, 0x00, 0x0E ; 0013B0: provisional 68k move.b -$1(a3), $e(a4, d0.w)
db 0x1E, 0xAA, 0xEB, 0xEA ; 0013B6: provisional 68k move.b -$1416(a2), (a7)
db 0xAA, 0xD8 ; 0013BA: provisional 68k dc.w $aad8
db 0xCE, 0xAE, 0xBD, 0xFB ; 0013BC: provisional 68k and.l -$4205(a6), d7
db 0xAA, 0xAB ; 0013C0: provisional 68k dc.w $aaab
db 0xDF, 0xCE ; 0013C2: provisional 68k adda.l a6, a7
db 0xAB, 0xFF ; 0013C4: provisional 68k dc.w $abff
db 0xFF, 0x00 ; 0013C6: provisional 68k dc.w $ff00
db 0x0F, 0xC9, 0xE9, 0x9B ; 0013C8: provisional 68k movep.l d7, -$1665(a1)
db 0xBE, 0xAE, 0xD8, 0xCE ; 0013CC: provisional 68k cmp.l -$2732(a6), d7
db 0xAE, 0xDD ; 0013D0: provisional 68k dc.w $aedd
db 0xFC, 0xAA ; 0013D2: provisional 68k dc.w $fcaa
db 0xED, 0xDF ; file 0013D4
db 0xEA, 0xAB ; 0013D6: provisional 68k lsr.l d5, d3
db 0xD1, 0xFF ; file 0013D8
db 0xFF, 0x00 ; 0013DA: provisional 68k dc.w $ff00
db 0x0F, 0xC9, 0xAA, 0xED ; 0013DC: provisional 68k movep.l d7, -$5513(a1)
db 0x89, 0xEE, 0xBD, 0xD9 ; 0013E0: provisional 68k divs.w -$4227(a6), d4
db 0xA9, 0xDD ; 0013E4: provisional 68k dc.w $a9dd
db 0xFC, 0xAA ; 0013E6: provisional 68k dc.w $fcaa
db 0xB8, 0xFB, 0xEA, 0xA9 ; 0013E8: provisional 68k cmpa.w $1393(pc, a6.l), a4
db 0xD1, 0xFF ; file 0013EC
db 0xFF, 0x00 ; 0013EE: provisional 68k dc.w $ff00
db 0x0E, 0x1B, 0xEA, 0xED ; file 0013F0
db 0x8B, 0xEE, 0xBD, 0xDB ; 0013F4: provisional 68k divs.w -$4225(a6), d5
db 0xE9, 0xDD ; file 0013F8
db 0xFB, 0xEE ; 0013FA: provisional 68k dc.w $fbee
db 0xB8, 0x89 ; 0013FC: provisional 68k cmp.l a1, d4
db 0xBC, 0xBD ; file 0013FE
db 0xFF, 0xFF ; 001400: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 001402
db 0x1C, 0x9E ; 001404: provisional 68k move.b (a6)+, (a6)
db 0xEB, 0x8C ; 001406: provisional 68k lsl.l #$5, d4
db 0x9E, 0xBD ; file 001408
db 0x8B, 0xE9, 0xDD, 0xFB ; 00140A: provisional 68k divs.w -$2205(a1), d5
db 0xE9, 0xDD ; file 00140E
db 0x9A, 0xE9, 0xCD, 0xFF ; 001410: provisional 68k suba.w -$3201(a1), a5
db 0xFF, 0x01 ; 001414: provisional 68k dc.w $ff01
db 0x0D, 0xB9, 0xEB, 0xDD, 0x9E, 0x9D ; 001416: provisional 68k bclr.b d6, $ebdd9e9d.l
db 0x8C, 0xE9, 0xDD, 0xD9 ; 00141C: provisional 68k divu.w -$2227(a1), d6
db 0xE9, 0x8B ; 001420: provisional 68k lsl.l #$4, d3
db 0xAA, 0xA9 ; 001422: provisional 68k dc.w $aaa9
db 0xCD, 0xFF ; file 001424
db 0xFF, 0x01 ; 001426: provisional 68k dc.w $ff01
db 0x0D, 0xC9, 0x99, 0xBD ; 001428: provisional 68k movep.l d6, -$6643(a1)
db 0xBE, 0x9B ; 00142C: provisional 68k cmp.l (a3)+, d7
db 0x8D, 0xE9, 0xDD, 0xCE ; 00142E: provisional 68k divs.w -$2232(a1), d6
db 0xAB, 0x8E ; 001432: provisional 68k dc.w $ab8e
db 0xAE, 0xBD ; 001434: provisional 68k dc.w $aebd
db 0xD1, 0xFF ; file 001436
db 0xFF, 0x01 ; 001438: provisional 68k dc.w $ff01
db 0x0C, 0xCB, 0x9E, 0xBD ; file 00143A
db 0xD9, 0xEB, 0xDD, 0xE9 ; 00143E: provisional 68k adda.l -$2217(a3), a4
db 0xBD, 0xBE ; file 001442
db 0xEB, 0x8E ; 001444: provisional 68k lsl.l #$5, d6
db 0xAD, 0x8F ; 001446: provisional 68k dc.w $ad8f
db 0xFF, 0xFF ; 001448: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1C, 0xBE ; 00144A: provisional 68k movep.w $1cbe(a3), d0
db 0x9B, 0xDB ; 00144E: provisional 68k suba.l (a3)+, a5
db 0xE9, 0xDD ; file 001450
db 0xEE, 0xBD ; 001452: provisional 68k ror.l d7, d5
db 0xBA, 0xEB, 0x8E, 0xBD ; 001454: provisional 68k cmpa.w -$7143(a3), a5
db 0xFF, 0xFF ; 001458: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1C, 0xD9 ; 00145A: provisional 68k movep.w $1cd9(a3), d0
db 0x9B, 0xBB, 0x99, 0xBD ; file 00145E
db 0xEE, 0xBD ; 001462: provisional 68k ror.l d7, d5
db 0xBA, 0xEB, 0x8B, 0xDF ; 001464: provisional 68k cmpa.w -$7421(a3), a5
db 0xFF, 0xFF ; 001468: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 00146A
db 0xDB, 0xE9, 0x9D, 0xB9 ; 00146C: provisional 68k adda.l -$6247(a1), a5
db 0xDD, 0xE9, 0xD8, 0xC9 ; 001470: provisional 68k adda.l -$2737(a1), a6
db 0xB8, 0x88 ; 001474: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 001476: provisional 68k dc.w $ffff
db 0xFF, 0x02 ; 001478: provisional 68k dc.w $ff02
db 0x09, 0xFD ; file 00147A
db 0xBB, 0xD8 ; 00147C: provisional 68k cmpa.l (a0)+, a5
db 0x88, 0x88 ; file 00147E
db 0xBD, 0x8D ; 001480: provisional 68k cmpm.l (a5)+, (a6)+
db 0xDD, 0x88 ; 001482: provisional 68k addx.l -(a0), -(a6)
db 0x8D, 0xFF ; file 001484
db 0xFF, 0x02 ; 001486: provisional 68k dc.w $ff02
db 0x08, 0x18, 0x88, 0x8D ; file 001488
db 0x88, 0xDB ; 00148C: provisional 68k divu.w (a3)+, d4
db 0xD8, 0xD9 ; 00148E: provisional 68k adda.w (a1)+, a4
db 0x9D, 0x8D ; 001490: provisional 68k subx.l -(a5), -(a6)
db 0xFF, 0xFF ; 001492: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 001494: provisional 68k btst.l d1, d7
db 0xBB, 0x9E ; 001496: provisional 68k eor.l d5, (a6)+
db 0xEE, 0xAA ; 001498: provisional 68k lsr.l d7, d2
db 0xEE, 0xEB ; file 00149A
db 0xDD, 0xD1 ; 00149C: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 00149E: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 0014A0: provisional 68k btst.l d1, d6
db 0x9A, 0xAA, 0xAA, 0xAA ; 0014A2: provisional 68k sub.l -$5556(a2), d5
db 0xAE, 0xB8 ; 0014A6: provisional 68k dc.w $aeb8
db 0x8D, 0xFF ; file 0014A8
db 0xFF, 0x03 ; 0014AA: provisional 68k dc.w $ff03
db 0x06, 0xCE ; 0014AC: provisional 68k dc.w $6ce
db 0xAA, 0xEE ; 0014AE: provisional 68k dc.w $aaee
db 0xE9, 0xB8 ; 0014B0: provisional 68k rol.l d4, d0
db 0x88, 0xD1 ; 0014B2: provisional 68k divu.w (a1), d4
db 0xFF, 0xFF ; 0014B4: provisional 68k dc.w $ffff
db 0x03, 0x05 ; 0014B6: provisional 68k btst.l d1, d5
db 0x1D, 0x8D, 0x88, 0x88, 0x88, 0x8D ; file 0014B8
db 0xFF, 0xFF ; 0014BE: provisional 68k dc.w $ffff
db 0x04, 0x03, 0xDD, 0xDD ; 0014C0: provisional 68k subi.b #$dd, d3
db 0xDD, 0xD1 ; 0014C4: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0014C6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0014C8: provisional 68k dc.w $ffff
db 0x00, 0x07, 0x00, 0x00 ; 0014CA: provisional 68k ori.b #$0, d7
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x00 ; 0014CE: provisional 68k ori.b #$26, (a0, d0.w)
db 0x00, 0x58, 0x00, 0x00 ; 0014D4: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x18 ; 0014D8: provisional 68k ori.b #$18, d0
db 0x00, 0x12, 0x00, 0x00 ; 0014DC: provisional 68k ori.b #$0, (a2)
db 0x00, 0x0A ; file 0014E0
db 0x00, 0x06, 0x00, 0x0A ; 0014E2: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 0014E6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0014EA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 0014EE: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 0014F2: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 0014F6: provisional 68k ori.b #$5, d4
db 0x00, 0x04, 0x00, 0x03 ; 0014FA: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 0014FE: provisional 68k ori.b #$1, d2
db 0x00, 0x0C ; file 001502
db 0x01, 0xB6, 0x03, 0x5E ; 001504: provisional 68k bclr.b d0, ([a6])
db 0x05, 0x0E, 0x06, 0xCC ; 001508: provisional 68k movep.w $6cc(a6), d2
db 0x08, 0x84, 0x00, 0x00 ; 00150C: provisional 68k bclr.b #$0, d4
db 0x00, 0x00, 0x00, 0x30 ; 001510: provisional 68k ori.b #$30, d0
db 0x00, 0x26, 0x00, 0x10 ; 001514: provisional 68k ori.b #$10, -(a6)
db 0x08, 0x08, 0x08, 0x10 ; file 001518
db 0x10, 0x10 ; 00151C: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00151E: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001520: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001522: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001524: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 001528: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00152C: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00152E: provisional 68k neg.w d4
db 0x30, 0x38, 0x44, 0x88 ; 001530: provisional 68k move.w $4488.w, d0
db 0x8C, 0x94 ; 001534: provisional 68k or.l (a4), d6
db 0xDC, 0xDC ; 001536: provisional 68k adda.w (a4)+, a6
db 0xE0, 0x60 ; 001538: provisional 68k asr.w d0, d0
db 0x64, 0x74 ; 00153A: provisional 68k bcc.b $15b0
db 0x38, 0x38, 0x74, 0xB0 ; 00153C: provisional 68k move.w $74b0.w, d4
db 0xB4, 0xB8, 0x10, 0x10 ; 001540: provisional 68k cmp.l $1010.w, d2
db 0x60, 0x10 ; 001544: provisional 68k bra.b $1556
db 0x10, 0x70 ; file 001546
db 0xFF, 0xFF ; 001548: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00154A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00154C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00154E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001550: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001552: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001554: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001556: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001558: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00155A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00155C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00155E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001560: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001562: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001564: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001566: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001568: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00156A: provisional 68k dc.w $ffff
db 0x08, 0x04 ; file 00156C
db 0xBB, 0xB9, 0x99, 0xBC, 0xC1, 0xFF ; 00156E: provisional 68k eor.l d5, $99bcc1ff.l
db 0xFF, 0x08 ; 001574: provisional 68k dc.w $ff08
db 0x05, 0xBB ; file 001576
db 0x99, 0x99 ; 001578: provisional 68k sub.l d4, (a1)+
db 0x99, 0xBC, 0xCC, 0xFF ; file 00157A
db 0xFF, 0x09 ; 00157E: provisional 68k dc.w $ff09
db 0x05, 0xEE, 0x88, 0x89 ; 001580: provisional 68k bset.b d2, -$7777(a6)
db 0xDD, 0xD9 ; 001584: provisional 68k adda.l (a1)+, a6
db 0xC1, 0xFF ; file 001586
db 0xFF, 0x0B ; 001588: provisional 68k dc.w $ff0b
db 0x03, 0x1C ; 00158A: provisional 68k btst.l d1, (a4)+
db 0x9D, 0x9B ; 00158C: provisional 68k sub.l d6, (a3)+
db 0xBC, 0xFF ; file 00158E
db 0xFF, 0x06 ; 001590: provisional 68k dc.w $ff06
db 0x02, 0xC9 ; file 001592
db 0x99, 0xDB ; 001594: provisional 68k suba.l (a3)+, a4
db 0x03, 0x03 ; 001596: provisional 68k btst.l d1, d3
db 0x8B, 0xAD, 0xB9, 0xB1 ; 001598: provisional 68k or.l d5, -$464f(a5)
db 0xFF, 0xFF ; 00159C: provisional 68k dc.w $ffff
db 0x06, 0x04, 0xCC, 0xCB ; 00159E: provisional 68k addi.b #$cb, d4
db 0xBB, 0x99 ; 0015A2: provisional 68k eor.l d5, (a1)+
db 0xBC, 0x01 ; 0015A4: provisional 68k cmp.b d1, d6
db 0x04, 0xFC, 0xDD, 0xBB ; file 0015A6
db 0x99, 0xC1 ; 0015AA: provisional 68k suba.l d1, a4
db 0xFF, 0xFF ; 0015AC: provisional 68k dc.w $ffff
db 0x06, 0x0B ; file 0015AE
db 0xFC, 0xCC ; 0015B0: provisional 68k dc.w $fccc
db 0xCC, 0xBB, 0xDD, 0xC1 ; 0015B2: provisional 68k and.l ([$15b4]), d6
db 0x1C, 0x9B ; 0015B6: provisional 68k move.b (a3)+, (a6)
db 0x8E, 0xBD ; file 0015B8
db 0xDC, 0xF1, 0xFF, 0xFF, 0x09, 0x04, 0xC8, 0x9D ; 0015BA: provisional 68k adda.w ([$904c89d]), a6
db 0xC1, 0x1B ; 0015C2: provisional 68k and.b d0, (a3)+
db 0x9C, 0x01 ; 0015C4: provisional 68k sub.b d1, d6
db 0x02, 0xCD ; file 0015C6
db 0xAB, 0xEE ; 0015C8: provisional 68k dc.w $abee
db 0xFF, 0xFF ; 0015CA: provisional 68k dc.w $ffff
db 0x09, 0x04 ; 0015CC: provisional 68k btst.l d4, d4
db 0xEE, 0xBB ; 0015CE: provisional 68k ror.l d7, d3
db 0xEE, 0xED ; file 0015D0
db 0x9F, 0x01 ; 0015D2: provisional 68k subx.b d1, d7
db 0x02, 0xBD ; file 0015D4
db 0x9C, 0xF1, 0xFF, 0xFF, 0x02, 0x00, 0xCC, 0x03 ; 0015D6: provisional 68k suba.w ([$200cc03]), a6
db 0x01, 0xCC, 0xCF, 0x01 ; 0015DE: provisional 68k movep.l d0, -$30ff(a4)
db 0x07, 0x1C ; 0015E2: provisional 68k btst.l d3, (a4)+
db 0x9B, 0xEF, 0xBA, 0x9C ; 0015E4: provisional 68k suba.l -$4564(a7), a5
db 0xBB, 0xD9 ; 0015E8: provisional 68k cmpa.l (a1)+, a5
db 0x81, 0xFF ; file 0015EA
db 0xFF, 0x01 ; 0015EC: provisional 68k dc.w $ff01
db 0x0E, 0x1B ; file 0015EE
db 0xDA, 0x9B ; 0015F0: provisional 68k add.l (a3)+, d5
db 0xB1, 0x1C ; 0015F2: provisional 68k eor.b d0, (a4)+
db 0x9D, 0x9B ; 0015F4: provisional 68k sub.l d6, (a3)+
db 0xB1, 0x1B ; 0015F6: provisional 68k eor.b d0, (a3)+
db 0x9B, 0x8B ; 0015F8: provisional 68k subx.l -(a3), -(a5)
db 0xDA, 0x9B ; 0015FA: provisional 68k add.l (a3)+, d5
db 0x9D, 0xDC ; 0015FC: provisional 68k suba.l (a4)+, a6
db 0xFF, 0xFF ; 0015FE: provisional 68k dc.w $ffff
db 0x01, 0x0E, 0xBA, 0xAA ; 001600: provisional 68k movep.w -$4556(a6), d0
db 0xAA, 0xAA ; 001604: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 001606: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 001608: provisional 68k dc.w $aaad
db 0xDA, 0xAA, 0xAA, 0xAD ; 00160A: provisional 68k add.l -$5553(a2), d5
db 0x9B, 0xBB, 0x88, 0xFF ; file 00160E
db 0xFF, 0x00 ; 001612: provisional 68k dc.w $ff00
db 0x0F, 0x1C ; 001614: provisional 68k btst.l d7, (a4)+
db 0x9D, 0xD9 ; 001616: provisional 68k suba.l (a1)+, a6
db 0xDD, 0xDD ; 001618: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 00161A: provisional 68k adda.l (a2)+, a6
db 0xA9, 0xDD ; 00161C: provisional 68k dc.w $a9dd
db 0xDD, 0x99 ; 00161E: provisional 68k add.l d6, (a1)+
db 0x9B, 0xBB ; file 001620
db 0x89, 0xD8 ; 001622: provisional 68k divs.w (a0)+, d4
db 0xEE, 0xFF ; file 001624
db 0xFF, 0x00 ; 001626: provisional 68k dc.w $ff00
db 0x0E, 0x99 ; file 001628
db 0x9B, 0xB8, 0x88, 0x88 ; 00162A: provisional 68k sub.l d5, $8888.w
db 0x88, 0xBB, 0xBB, 0x9B, 0x8B, 0x9D, 0xDD, 0x98 ; 00162E: provisional 68k or.l ([$1630, a3.l * 2], $8b9ddd98), d4
db 0x9D, 0x98 ; 001636: provisional 68k sub.l d6, (a0)+
db 0xFF, 0xFF ; 001638: provisional 68k dc.w $ffff
db 0x00, 0x11, 0xBB, 0x88 ; 00163A: provisional 68k ori.b #$88, (a1)
db 0x88, 0x88 ; file 00163E
db 0xB8, 0x88 ; 001640: provisional 68k cmp.l a0, d4
db 0x88, 0x89 ; file 001642
db 0x99, 0x9D ; 001644: provisional 68k sub.l d4, (a5)+
db 0xAA, 0xAA ; 001646: provisional 68k dc.w $aaaa
db 0xAD, 0xAD ; 001648: provisional 68k dc.w $adad
db 0xCC, 0xCC, 0xCC, 0xCC ; file 00164A
db 0x02, 0x01, 0x1C, 0xCF ; 00164E: provisional 68k andi.b #$cf, d1
db 0xFF, 0xFF ; 001652: provisional 68k dc.w $ffff
db 0x00, 0x17, 0x88, 0x88 ; 001654: provisional 68k ori.b #$88, (a7)
db 0x88, 0x89 ; file 001658
db 0x99, 0x9B ; 00165A: provisional 68k sub.l d4, (a3)+
db 0xB8, 0xBD ; file 00165C
db 0xDA, 0xAA, 0xAA, 0xD9 ; 00165E: provisional 68k add.l -$5527(a2), d5
db 0xAA, 0xAD ; 001662: provisional 68k dc.w $aaad
db 0x99, 0xD9 ; 001664: provisional 68k suba.l (a1)+, a4
db 0xDA, 0xD9 ; 001666: provisional 68k adda.w (a1)+, a5
db 0xB9, 0xDD ; 001668: provisional 68k cmpa.l (a5)+, a4
db 0x99, 0x9B ; 00166A: provisional 68k sub.l d4, (a3)+
db 0x99, 0x9E ; 00166C: provisional 68k sub.l d4, (a6)+
db 0xFF, 0xFF ; 00166E: provisional 68k dc.w $ffff
db 0x00, 0x17, 0x88, 0x88 ; 001670: provisional 68k ori.b #$88, (a7)
db 0x88, 0x89, 0x9B, 0xBB ; file 001674
db 0x99, 0xB9, 0xDD, 0xAA, 0xAD, 0x9B ; 001678: provisional 68k sub.l d4, $ddaaad9b.l
db 0x9B, 0x9D ; 00167E: provisional 68k sub.l d5, (a5)+
db 0xDD, 0xDD ; 001680: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 001682: provisional 68k add.l d6, (a1)+
db 0x9D, 0xDD ; 001684: provisional 68k suba.l (a5)+, a6
db 0xDD, 0x99 ; 001686: provisional 68k add.l d6, (a1)+
db 0x9D, 0x98 ; 001688: provisional 68k sub.l d6, (a0)+
db 0xFF, 0xFF ; 00168A: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 00168C: provisional 68k btst.l d0, (a4)
db 0xE8, 0x88 ; 00168E: provisional 68k lsr.l #$4, d0
db 0x8C, 0xC8, 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB ; file 001690
db 0xB8, 0x88 ; 001698: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x8C, 0x88, 0x88, 0x88, 0x88, 0x8E, 0xFF ; file 00169A
db 0xFF, 0x02 ; 0016A4: provisional 68k dc.w $ff02
db 0x0A, 0x1F, 0x88, 0x88 ; 0016A6: provisional 68k eori.b #$88, (a7)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0016AA
db 0xFF, 0xFF ; 0016B2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016B4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016B6: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0016B8: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 0016BC: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0016C2
db 0x10, 0x10 ; 0016C6: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0016C8: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0016CA: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0016CC: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0016CE: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0016D2: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0016D6: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0016D8: provisional 68k neg.w d4
db 0x2C, 0x34, 0x3C, 0xA8 ; 0016DA: provisional 68k move.l -$58(a4, d3.l), d6
db 0xAC, 0xB0 ; 0016DE: provisional 68k dc.w $acb0
db 0x7C, 0x80 ; 0016E0: provisional 68k moveq #$80, d6
db 0x88, 0x0C ; file 0016E2
db 0x14, 0x2C, 0x0C, 0x0C ; 0016E4: provisional 68k move.b $c0c(a4), d2
db 0x6C, 0x40 ; 0016E8: provisional 68k bge.b $172a
db 0x44, 0x70, 0xD8, 0xDC ; 0016EA: provisional 68k neg.w -$24(a0, a5.l)
db 0xDC, 0x08 ; file 0016EE
db 0x0C, 0x5C, 0xFF, 0xFF ; 0016F0: provisional 68k cmpi.w #$ffff, (a4)+
db 0xFF, 0xFF ; 0016F4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016F6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016F8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016FA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016FC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016FE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001700: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001702: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001704: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001706: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001708: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00170A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00170C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00170E: provisional 68k dc.w $ffff
db 0x07, 0x05 ; 001710: provisional 68k btst.l d3, d5
db 0x1D, 0xA9, 0x9A, 0xAA, 0x99, 0xA1, 0xFF, 0xFF ; 001712: provisional 68k move.b -$6556(a1), ([$ffff, a1.l])
db 0x06, 0x07, 0xDA, 0xAA ; 00171A: provisional 68k addi.b #$aa, d7
db 0xAA, 0xAA ; 00171E: provisional 68k dc.w $aaaa
db 0xA9, 0x9A ; 001720: provisional 68k dc.w $a99a
db 0xDA, 0xA1 ; 001722: provisional 68k add.l -(a1), d5
db 0xFF, 0xFF ; 001724: provisional 68k dc.w $ffff
db 0x06, 0x01, 0xDD, 0xDD ; 001726: provisional 68k addi.b #$dd, d1
db 0x02, 0x05, 0xDA, 0xA9 ; 00172A: provisional 68k andi.b #$a9, d5
db 0x9A, 0xAA, 0xAD, 0xD1 ; 00172E: provisional 68k sub.l -$522f(a2), d5
db 0x05, 0x00 ; 001732: provisional 68k btst.l d2, d0
db 0xAD, 0xFF ; 001734: provisional 68k dc.w $adff
db 0xFF, 0x0A ; 001736: provisional 68k dc.w $ff0a
db 0x05, 0xCF, 0xDA, 0xEA ; 001738: provisional 68k movep.l d2, -$2516(a7)
db 0xDD, 0xA9, 0x91, 0x03 ; 00173C: provisional 68k add.l d6, -$6efd(a1)
db 0x02, 0x1D, 0xAA, 0xAD ; 001740: provisional 68k andi.b #$ad, (a5)+
db 0xFF, 0xFF ; 001744: provisional 68k dc.w $ffff
db 0x06, 0x02, 0x1D, 0xDD ; 001746: provisional 68k addi.b #$dd, d2
db 0xDD, 0x02 ; 00174A: provisional 68k addx.b d2, d6
db 0x04, 0x1D, 0xAD, 0xCF ; 00174C: provisional 68k subi.b #$cf, (a5)+
db 0xDE, 0xED, 0x02, 0x03 ; 001750: provisional 68k adda.w $203(a5), a7
db 0x1D, 0xAA, 0x9A, 0xDC, 0xFF, 0xFF, 0x05, 0x0A, 0x1D, 0xAA ; 001754: provisional 68k move.b -$6524(a2), ([$50a1daa])
db 0x9A, 0xAA, 0x9A, 0xD1 ; 00175E: provisional 68k sub.l -$652f(a2), d5
db 0x1D, 0xAD, 0x88, 0xD9, 0xAD, 0x02, 0x02, 0xD9 ; 001762: provisional 68k move.b -$7727(a5), ([a6, a2.l * 4], $2d9)
db 0xEA, 0x8C ; 00176A: provisional 68k lsr.l #$5, d4
db 0xFF, 0xFF ; 00176C: provisional 68k dc.w $ffff
db 0x04, 0x0B ; file 00176E
db 0x1C, 0xAA, 0xAD, 0xD8 ; 001770: provisional 68k move.b -$5228(a2), (a6)
db 0xDA, 0x99 ; 001774: provisional 68k add.l (a1)+, d5
db 0xD1, 0x1D ; 001776: provisional 68k add.b d0, (a5)+
db 0x9D, 0xB8, 0xA9, 0xF1 ; 001778: provisional 68k sub.l d6, $a9f1.w
db 0x01, 0x02 ; 00177C: provisional 68k btst.l d0, d2
db 0xD9, 0xEA, 0xD8, 0xFF ; 00177E: provisional 68k adda.l -$2701(a2), a4
db 0xFF, 0x09 ; 001782: provisional 68k dc.w $ff09
db 0x09, 0xDD ; 001784: provisional 68k bset.b d4, (a5)+
db 0xD1, 0x1A ; 001786: provisional 68k add.b d0, (a2)+
db 0x9D, 0xBA ; file 001788
db 0x9A, 0xCD ; 00178A: provisional 68k suba.w a5, a5
db 0x9E, 0xEA, 0xD8, 0xFF ; 00178C: provisional 68k suba.w -$2701(a2), a7
db 0xFF, 0x09 ; 001790: provisional 68k dc.w $ff09
db 0x09, 0xDA ; 001792: provisional 68k bset.b d4, (a2)+
db 0xDC, 0x19 ; 001794: provisional 68k add.b (a1)+, d6
db 0xEA, 0xA9 ; 001796: provisional 68k lsr.l d5, d1
db 0x9D, 0xDE ; 001798: provisional 68k suba.l (a6)+, a6
db 0xE9, 0xAD ; 00179A: provisional 68k lsl.l d4, d5
db 0xC1, 0xFF ; file 00179C
db 0xFF, 0x09 ; 00179E: provisional 68k dc.w $ff09
db 0x08, 0xDA ; file 0017A0
db 0xAA, 0x9E ; 0017A2: provisional 68k dc.w $aa9e
db 0x9A, 0xAA, 0xDA, 0x99 ; 0017A4: provisional 68k sub.l -$2567(a2), d5
db 0xA8, 0xFC ; 0017A8: provisional 68k dc.w $a8fc
db 0xFF, 0xFF ; 0017AA: provisional 68k dc.w $ffff
db 0x05, 0x0B, 0xCD, 0xDA ; 0017AC: provisional 68k movep.w -$3226(a3), d2
db 0xAA, 0xDD ; 0017B0: provisional 68k dc.w $aadd
db 0xAE, 0xE9 ; 0017B2: provisional 68k dc.w $aee9
db 0x9A, 0xAD, 0xA9, 0xA9 ; 0017B4: provisional 68k sub.l -$5657(a5), d5
db 0x9D, 0x8F ; 0017B8: provisional 68k subx.l -(a7), -(a6)
db 0xFF, 0xFF ; 0017BA: provisional 68k dc.w $ffff
db 0x02, 0x0D ; file 0017BC
db 0xDD, 0xDD ; 0017BE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xA9, 0xEE, 0xEE ; 0017C0: provisional 68k add.l d6, -$1112(a1)
db 0x99, 0x99 ; 0017C4: provisional 68k sub.l d4, (a1)+
db 0x9A, 0xAA, 0x8D, 0xEE ; 0017C6: provisional 68k sub.l -$7212(a2), d5
db 0x9A, 0x8F ; 0017CA: provisional 68k sub.l a7, d5
db 0xFF, 0xFF ; 0017CC: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1A, 0x99 ; 0017CE: provisional 68k movep.w $1a99(a5), d0
db 0x99, 0x9E ; 0017D2: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xEE ; file 0017D4
db 0x99, 0x99 ; 0017D6: provisional 68k sub.l d4, (a1)+
db 0xAA, 0xA9 ; 0017D8: provisional 68k dc.w $aaa9
db 0x9E, 0x9E ; 0017DA: provisional 68k sub.l (a6)+, d7
db 0xE9, 0xDF ; file 0017DC
db 0xFF, 0xFF ; 0017DE: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xAE, 0xE9 ; 0017E0: provisional 68k movep.w -$5117(a5), d0
db 0xE9, 0x9A ; 0017E4: provisional 68k rol.l #$4, d2
db 0xAA, 0xAA ; 0017E6: provisional 68k dc.w $aaaa
db 0xDA, 0xDD ; 0017E8: provisional 68k adda.w (a5)+, a5
db 0xAE, 0xEE ; 0017EA: provisional 68k dc.w $aeee
db 0xEE, 0xEE ; file 0017EC
db 0xA8, 0xC1 ; 0017EE: provisional 68k dc.w $a8c1
db 0xFF, 0xFF ; 0017F0: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 0017F2
db 0x1D, 0x9E, 0xAA, 0xAD ; 0017F4: provisional 68k move.b (a6)+, -$53(a6, a2.l)
db 0x88, 0x88 ; file 0017F8
db 0x8B, 0x89 ; 0017FA: provisional 68k dc.w $8b89
db 0x8E, 0xEE, 0xEE, 0x9A ; 0017FC: provisional 68k divu.w -$1166(a6), d7
db 0x9A, 0x8C ; 001800: provisional 68k sub.l a4, d5
db 0xFF, 0xFF ; 001802: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 001804
db 0x1A, 0xAD, 0x88, 0x88 ; 001806: provisional 68k move.b -$7778(a5), (a5)
db 0xBB, 0x88 ; 00180A: provisional 68k cmpm.l (a0)+, (a5)+
db 0x8B, 0x8E ; 00180C: provisional 68k dc.w $8b8e
db 0xEE, 0xEE ; file 00180E
db 0xE9, 0xAD ; 001810: provisional 68k lsl.l d4, d5
db 0x88, 0x81 ; 001812: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 001814: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 001816
db 0xAA, 0x88 ; 001818: provisional 68k dc.w $aa88
db 0x8B, 0x8A ; 00181A: provisional 68k dc.w $8b8a
db 0xAA, 0xAA ; 00181C: provisional 68k dc.w $aaaa
db 0xAA, 0xD9 ; 00181E: provisional 68k dc.w $aad9
db 0x9A, 0xAA, 0xD8, 0x88 ; 001820: provisional 68k sub.l -$2778(a2), d5
db 0x88, 0xFF ; file 001824
db 0xFF, 0x00 ; 001826: provisional 68k dc.w $ff00
db 0x0B, 0xD8 ; 001828: provisional 68k bset.b d5, (a0)+
db 0x88, 0x8B ; file 00182A
db 0x8A, 0xAA, 0xDD, 0xAD ; 00182C: provisional 68k or.l -$2253(a2), d5
db 0xD8, 0x88 ; 001830: provisional 68k add.l a0, d4
db 0x88, 0xBB, 0x88, 0xFF ; 001832: provisional 68k or.l $1833(pc, a0.l), d4
db 0xFF, 0x00 ; 001836: provisional 68k dc.w $ff00
db 0x0A, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 001838
db 0x88, 0xB8, 0xFF, 0xF1 ; 001840: provisional 68k or.l $fff1.w, d4
db 0xFF, 0xFF ; 001844: provisional 68k dc.w $ffff
db 0x00, 0x07, 0x18, 0x88 ; 001846: provisional 68k ori.b #$88, d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00184A
db 0xFF, 0xFF ; 001850: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x18, 0x88 ; 001852: provisional 68k andi.b #$88, d2
db 0x81, 0xFF ; file 001856
db 0xFF, 0xFF ; 001858: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00185A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00185C: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 00185E: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 001860: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 001864: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 00186A
db 0x10, 0x10 ; 00186E: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001870: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001872: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001874: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001876: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00187A: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00187E: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 001880: provisional 68k neg.w d4
db 0x2C, 0x34, 0x3C, 0x90 ; 001882: provisional 68k move.l -$70(a4, d3.l), d6
db 0x94, 0x94 ; 001886: provisional 68k sub.l (a4), d2
db 0xD8, 0xDC ; 001888: provisional 68k adda.w (a4)+, a4
db 0xDC, 0x58 ; 00188A: provisional 68k add.w (a0)+, d6
db 0x58, 0x74, 0x2C, 0x2C ; 00188C: provisional 68k addq.w #$4, $2c(a4, d2.l)
db 0x6C, 0xB8 ; 001890: provisional 68k bge.b $184a
db 0xBC, 0xC0 ; 001892: provisional 68k cmpa.w d0, a6
db 0xA4, 0xA4 ; 001894: provisional 68k dc.w $a4a4
db 0xB4, 0x70, 0x74, 0x80 ; 001896: provisional 68k cmp.w -$80(a0, d7.w), d2
db 0xFF, 0xFF ; 00189A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00189C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00189E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0018A0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0018A2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0018A4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0018A6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0018A8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0018AA: provisional 68k dc.w $ffff
db 0x12, 0x01 ; 0018AC: provisional 68k move.b d1, d1
db 0x1B, 0xF1 ; file 0018AE
db 0xFF, 0xFF ; 0018B0: provisional 68k dc.w $ffff
db 0x12, 0x01 ; 0018B2: provisional 68k move.b d1, d1
db 0xB9, 0xB1, 0xFF, 0xFF, 0x11, 0x01, 0x1F, 0x9F ; 0018B4: provisional 68k eor.l d4, ([$11011f9f])
db 0xFF, 0xFF ; 0018BC: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xCB, 0xC1 ; 0018BE: provisional 68k eori.b #$c1, d1
db 0x05, 0x01 ; 0018C2: provisional 68k btst.l d2, d1
db 0xFE, 0xF1 ; 0018C4: provisional 68k dc.w $fef1
db 0xFF, 0xFF ; 0018C6: provisional 68k dc.w $ffff
db 0x07, 0x05 ; 0018C8: provisional 68k btst.l d3, d5
db 0x1C, 0xBC, 0xBF, 0x9E ; 0018CA: provisional 68k move.b #$9e, (a6)
db 0x9B, 0xCC ; 0018CE: provisional 68k suba.l a4, a5
db 0x03, 0x02 ; 0018D0: provisional 68k btst.l d1, d2
db 0x19, 0xEF, 0xC1, 0xFF ; file 0018D2
db 0xFF, 0x06 ; 0018D6: provisional 68k dc.w $ff06
db 0x07, 0x1B ; 0018D8: provisional 68k btst.l d3, (a3)+
db 0xED, 0xDE, 0xE9, 0xFF ; file 0018DA
db 0xF9, 0xE9 ; 0018DE: provisional 68k dc.w $f9e9
db 0xBC, 0x02 ; 0018E0: provisional 68k cmp.b d2, d6
db 0x02, 0xBD ; file 0018E2
db 0xB8, 0xC1 ; 0018E4: provisional 68k cmpa.w d1, a4
db 0xFF, 0xFF ; 0018E6: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0xC9, 0xEF ; 0018E8: provisional 68k movep.w -$3611(a4), d2
db 0xBC, 0xCB ; 0018EC: provisional 68k cmpa.w a3, a6
db 0xBB, 0x9D ; 0018EE: provisional 68k eor.l d5, (a5)+
db 0xA9, 0xBB ; 0018F0: provisional 68k dc.w $a9bb
db 0xEA, 0xDB ; file 0018F2
db 0x1B, 0xAF, 0xC1, 0xFF, 0xFF, 0x05 ; 0018F4: provisional 68k move.b -$3e01(a7), ([a5], a7.l * 8)
db 0x01, 0xCB, 0xBC, 0x03 ; 0018FA: provisional 68k movep.l d0, -$43fd(a3)
db 0x06, 0x1B, 0x9F, 0x81 ; 0018FE: provisional 68k addi.b #$81, (a3)+
db 0xCD, 0xAF, 0xBA, 0x9C ; 001902: provisional 68k and.l d6, -$4564(a7)
db 0xFF, 0xFF ; 001906: provisional 68k dc.w $ffff
db 0x0B, 0x05 ; 001908: provisional 68k btst.l d5, d5
db 0xFB, 0xC1 ; 00190A: provisional 68k dc.w $fbc1
db 0x1F, 0xED ; file 00190C
db 0xD9, 0xC1 ; 00190E: provisional 68k adda.l d1, a4
db 0xFF, 0xFF ; 001910: provisional 68k dc.w $ffff
db 0x05, 0x04 ; 001912: provisional 68k btst.l d2, d4
db 0x1C, 0xBF ; file 001914
db 0xBB, 0xF9, 0xBC, 0x01, 0x00, 0xFF ; 001916: provisional 68k cmpa.l $bc0100ff.l, a5
db 0x01, 0x02 ; 00191C: provisional 68k btst.l d0, d2
db 0xCF, 0xEA, 0xD8, 0xFF ; 00191E: provisional 68k muls.w -$2701(a2), d7
db 0xFF, 0x04 ; 001922: provisional 68k dc.w $ff04
db 0x05, 0x1C ; 001924: provisional 68k btst.l d2, (a4)+
db 0xBF, 0x99 ; 001926: provisional 68k eor.l d7, (a1)+
db 0xFF, 0x9A ; 001928: provisional 68k dc.w $ff9a
db 0x9C, 0x01 ; 00192A: provisional 68k sub.b d1, d6
db 0x00, 0xF9 ; file 00192C
db 0x01, 0x02 ; 00192E: provisional 68k btst.l d0, d2
db 0xFD, 0xE9 ; 001930: provisional 68k dc.w $fde9
db 0xBC, 0xFF ; file 001932
db 0xFF, 0x04 ; 001934: provisional 68k dc.w $ff04
db 0x05, 0x1F ; 001936: provisional 68k btst.l d2, (a7)+
db 0x9F, 0xCC ; 001938: provisional 68k suba.l a4, a7
db 0xCC, 0x8B ; file 00193A
db 0xFC, 0x01 ; 00193C: provisional 68k dc.w $fc01
db 0x04, 0x9E, 0xCB, 0xED, 0xF8, 0x81 ; 00193E: provisional 68k subi.l #$cbedf881, (a6)+
db 0xFF, 0xFF ; 001944: provisional 68k dc.w $ffff
db 0x04, 0x00, 0x1C, 0x03 ; 001946: provisional 68k subi.b #$3, d0
db 0x06, 0x1C, 0xFB, 0x1B ; 00194A: provisional 68k addi.b #$1b, (a4)+
db 0xDD, 0xDD ; 00194E: provisional 68k adda.l (a5)+, a6
db 0x9B, 0x8C ; 001950: provisional 68k subx.l -(a4), -(a5)
db 0xFF, 0xFF ; 001952: provisional 68k dc.w $ffff
db 0x08, 0x06 ; file 001954
db 0x1C, 0x9F ; 001956: provisional 68k move.b (a7)+, (a6)
db 0xBD, 0xDE ; 001958: provisional 68k cmpa.l (a6)+, a6
db 0xFF, 0xDF ; 00195A: provisional 68k dc.w $ffdf
db 0x81, 0xFF ; file 00195C
db 0xFF, 0x08 ; 00195E: provisional 68k dc.w $ff08
db 0x05, 0xCB, 0xDA, 0xD9 ; 001960: provisional 68k movep.l d2, -$2527(a3)
db 0xFB, 0x8D ; 001964: provisional 68k dc.w $fb8d
db 0xEB, 0xFF ; file 001966
db 0xFF, 0x05 ; 001968: provisional 68k dc.w $ff05
db 0x08, 0xCF, 0xED, 0xDE ; file 00196A
db 0xDD, 0xD9 ; 00196E: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 001970: provisional 68k dc.w $ffff
db 0xED, 0xB1 ; 001972: provisional 68k roxl.l d6, d1
db 0xFF, 0xFF ; 001974: provisional 68k dc.w $ffff
db 0x03, 0x0A, 0x1C, 0xBF ; 001976: provisional 68k movep.w $1cbf(a2), d1
db 0xDA, 0xAA, 0xAA, 0xA9 ; 00197A: provisional 68k add.l -$5557(a2), d5
db 0xF9, 0xED ; 00197E: provisional 68k dc.w $f9ed
db 0xAA, 0xA9 ; 001980: provisional 68k dc.w $aaa9
db 0xC1, 0xFF ; file 001982
db 0xFF, 0x01 ; 001984: provisional 68k dc.w $ff01
db 0x0C, 0x1F, 0xFF, 0x99 ; 001986: provisional 68k cmpi.b #$99, (a7)+
db 0xED, 0xAA ; 00198A: provisional 68k lsl.l d6, d2
db 0xDE, 0xF9, 0xFF, 0x9A, 0xAA, 0xAA ; 00198C: provisional 68k adda.w $ff9aaaaa.l, a7
db 0xDF, 0xCC ; 001992: provisional 68k adda.l a4, a7
db 0xFF, 0xFF ; 001994: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0xFA, 0xAA ; 001996: provisional 68k movep.w -$556(a4), d0
db 0xDE, 0x9F ; 00199A: provisional 68k add.l (a7)+, d7
db 0xBB, 0xBB ; file 00199C
db 0xBB, 0xFA, 0xAA, 0xAA ; 00199E: provisional 68k cmpa.l $ffffc44a(pc), a5
db 0x9F, 0xB8, 0x81, 0xFF ; 0019A2: provisional 68k sub.l d7, $81ff.w
db 0xFF, 0x00 ; 0019A6: provisional 68k dc.w $ff00
db 0x0C, 0x1C, 0xAA, 0x9F ; 0019A8: provisional 68k cmpi.b #$9f, (a4)+
db 0xBB, 0x88 ; 0019AC: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88 ; file 0019AE
db 0xFD, 0xAA ; 0019B0: provisional 68k dc.w $fdaa
db 0xAA, 0xD9 ; 0019B2: provisional 68k dc.w $aad9
db 0xBB, 0x88 ; 0019B4: provisional 68k cmpm.l (a0)+, (a5)+
db 0xFF, 0xFF ; 0019B6: provisional 68k dc.w $ffff
db 0x00, 0x0C, 0x1F, 0xE9, 0x88, 0x88 ; file 0019B8
db 0x88, 0xBB, 0x88, 0xBA ; 0019BE: provisional 68k or.l $197a(pc, a0.l), d4
db 0xE9, 0x9B ; 0019C2: provisional 68k rol.l #$4, d3
db 0x88, 0x88, 0x88, 0xFF ; file 0019C4
db 0xFF, 0x00 ; 0019C8: provisional 68k dc.w $ff00
db 0x0B, 0xCF, 0xBB, 0x88 ; 0019CA: provisional 68k movep.l d5, -$4478(a7)
db 0x8B, 0xFF ; file 0019CE
db 0xFF, 0xFB ; 0019D0: provisional 68k dc.w $fffb
db 0xBB, 0x88 ; 0019D2: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x81, 0xFF ; file 0019D4
db 0xFF, 0x00 ; 0019D8: provisional 68k dc.w $ff00
db 0x09, 0xF8, 0x88, 0x88 ; 0019DA: provisional 68k bset.b d4, $8888.w
db 0x8F, 0xFB, 0x88, 0x88 ; 0019DE: provisional 68k divs.w $1968(pc, a0.l), d7
db 0x88, 0x88, 0xC1, 0xFF ; file 0019E2
db 0xFF, 0x00 ; 0019E6: provisional 68k dc.w $ff00
db 0x08, 0xB8, 0x88, 0x88 ; file 0019E8
db 0x8B, 0x88 ; 0019EC: provisional 68k dc.w $8b88
db 0x88, 0x88, 0x8C, 0xCC ; file 0019EE
db 0xFF, 0xFF ; 0019F2: provisional 68k dc.w $ffff
db 0x00, 0x06, 0x18, 0x88 ; 0019F4: provisional 68k ori.b #$88, d6
db 0x88, 0x88, 0x88, 0x8C, 0xC1, 0xFF ; file 0019F8
db 0xFF, 0x00 ; 0019FE: provisional 68k dc.w $ff00
db 0x04, 0x1C, 0x88, 0xC8 ; 001A00: provisional 68k subi.b #$c8, (a4)+
db 0x88, 0xC1 ; 001A04: provisional 68k divu.w d1, d4
db 0xFF, 0xFF ; 001A06: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001A08: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001A0A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001A0C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001A0E: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 001A10: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 001A14: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 001A1A
db 0x10, 0x10 ; 001A1E: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001A20: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001A22: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001A24: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001A26: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 001A2A: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 001A2E: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 001A30: provisional 68k neg.w d4
db 0x30, 0x34, 0x38, 0x90 ; 001A32: provisional 68k move.w -$70(a4, d3.l), d0
db 0x94, 0xA4 ; 001A36: provisional 68k sub.l -(a4), d2
db 0x78, 0x7C ; 001A38: provisional 68k moveq #$7c, d4
db 0x84, 0xD8 ; 001A3A: provisional 68k divu.w (a0)+, d2
db 0xD8, 0xDC ; 001A3C: provisional 68k adda.w (a4)+, a4
db 0x3C, 0x3C, 0x6C, 0x0C ; 001A3E: provisional 68k move.w #$6c0c, d6
db 0x0C, 0x54, 0xB0, 0xB4 ; 001A42: provisional 68k cmpi.w #$b0b4, (a4)
db 0xB4, 0x04 ; 001A46: provisional 68k cmp.b d4, d2
db 0x04, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0xC1, 0xFF ; 001A48: provisional 68k subi.w #$ffff, ([$f00c1ff])
db 0xFF, 0x0E ; 001A52: provisional 68k dc.w $ff0e
db 0x01, 0x1C ; 001A54: provisional 68k btst.l d0, (a4)+
db 0x91, 0xFF ; file 001A56
db 0xFF, 0x0E ; 001A58: provisional 68k dc.w $ff0e
db 0x01, 0xCA, 0xA1, 0xFF ; 001A5A: provisional 68k movep.l d0, -$5e01(a2)
db 0xFF, 0x0E ; 001A5E: provisional 68k dc.w $ff0e
db 0x01, 0xC9, 0xC1, 0xFF ; 001A60: provisional 68k movep.l d0, -$3e01(a1)
db 0xFF, 0x0E ; 001A64: provisional 68k dc.w $ff0e
db 0x01, 0xAE, 0xDD, 0xFF ; 001A66: provisional 68k bclr.b d0, -$2201(a6)
db 0xFF, 0x0D ; 001A6A: provisional 68k dc.w $ff0d
db 0x02, 0x1C, 0x9A, 0x81 ; 001A6C: provisional 68k andi.b #$81, (a4)+
db 0xFF, 0xFF ; 001A70: provisional 68k dc.w $ffff
db 0x0D, 0x01 ; 001A72: provisional 68k btst.l d6, d1
db 0x1C, 0xAC, 0xFF, 0xFF ; 001A74: provisional 68k move.b -$1(a4), (a6)
db 0x0D, 0x01 ; 001A78: provisional 68k btst.l d6, d1
db 0x1A, 0x98 ; 001A7A: provisional 68k move.b (a0)+, (a5)
db 0xFF, 0xFF ; 001A7C: provisional 68k dc.w $ffff
db 0x09, 0x01 ; 001A7E: provisional 68k btst.l d4, d1
db 0xCA, 0xC1 ; 001A80: provisional 68k mulu.w d1, d5
db 0x02, 0x01, 0x19, 0xAD ; 001A82: provisional 68k andi.b #$ad, d1
db 0xFF, 0xFF ; 001A86: provisional 68k dc.w $ffff
db 0x07, 0x07 ; 001A88: provisional 68k btst.l d3, d7
db 0xCC, 0xCA ; file 001A8A
db 0xAA, 0xAC ; 001A8C: provisional 68k dc.w $aaac
db 0xAC, 0xC1 ; 001A8E: provisional 68k dc.w $acc1
db 0xA9, 0xC1 ; 001A90: provisional 68k dc.w $a9c1
db 0xFF, 0xFF ; 001A92: provisional 68k dc.w $ffff
db 0x06, 0x08 ; file 001A94
db 0xCA, 0xAA, 0x9E, 0xE9 ; 001A96: provisional 68k and.l -$6117(a2), d5
db 0x99, 0x99 ; 001A9A: provisional 68k sub.l d4, (a1)+
db 0xAA, 0xB9 ; 001A9C: provisional 68k dc.w $aab9
db 0xC1, 0xFF ; file 001A9E
db 0xFF, 0x05 ; 001AA0: provisional 68k dc.w $ff05
db 0x09, 0x1C ; 001AA2: provisional 68k btst.l d4, (a4)+
db 0xAE, 0x9A ; 001AA4: provisional 68k dc.w $ae9a
db 0xA9, 0x9E ; 001AA6: provisional 68k dc.w $a99e
db 0xEA, 0xCC ; file 001AA8
db 0xAB, 0xBA ; 001AAA: provisional 68k dc.w $abba
db 0xDD, 0xFF ; file 001AAC
db 0xFF, 0x04 ; 001AAE: provisional 68k dc.w $ff04
db 0x0A, 0x1C, 0xA9, 0xA8 ; 001AB0: provisional 68k eori.b #$a8, (a4)+
db 0x88, 0x88 ; file 001AB4
db 0x88, 0xA9, 0xCF, 0xFE ; 001AB6: provisional 68k or.l -$3002(a1), d4
db 0xBA, 0xDD ; 001ABA: provisional 68k cmpa.w (a5)+, a5
db 0xFF, 0xFF ; 001ABC: provisional 68k dc.w $ffff
db 0x04, 0x01, 0x1A, 0xA1 ; 001ABE: provisional 68k subi.b #$a1, d1
db 0x04, 0x04, 0xCA, 0xDF ; 001AC2: provisional 68k subi.b #$df, d4
db 0xC9, 0x9C ; 001AC6: provisional 68k and.l d4, (a4)+
db 0xDD, 0xFF ; file 001AC8
db 0xFF, 0x08 ; 001ACA: provisional 68k dc.w $ff08
db 0x00, 0xC1 ; file 001ACC
db 0x01, 0x03 ; 001ACE: provisional 68k btst.l d0, d3
db 0xCA, 0xCF ; file 001AD0
db 0xCA, 0xAC, 0xFF, 0xFF ; 001AD2: provisional 68k and.l -$1(a4), d5
db 0x05, 0x03 ; 001AD6: provisional 68k btst.l d2, d3
db 0x1C, 0xAA, 0x99, 0xEA ; 001AD8: provisional 68k move.b -$6616(a2), (a6)
db 0x01, 0x03 ; 001ADC: provisional 68k btst.l d0, d3
db 0xCA, 0xCF ; file 001ADE
db 0xAB, 0xEC ; 001AE0: provisional 68k dc.w $abec
db 0xFF, 0xFF ; 001AE2: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x1C, 0xAA ; 001AE4: provisional 68k subi.b #$aa, d4
db 0xAA, 0xAA ; 001AE8: provisional 68k dc.w $aaaa
db 0xEA, 0x01 ; 001AEA: provisional 68k asr.b #$5, d1
db 0x03, 0xCE, 0x9A, 0x9E ; 001AEC: provisional 68k movep.l d1, -$6562(a6)
db 0xAC, 0xFF ; 001AF0: provisional 68k dc.w $acff
db 0xFF, 0x04 ; 001AF2: provisional 68k dc.w $ff04
db 0x09, 0xAA, 0xAC, 0x8D ; 001AF4: provisional 68k bclr.b d4, -$5373(a2)
db 0xDD, 0xCA ; 001AF8: provisional 68k adda.l a2, a6
db 0x1F, 0xAB, 0xEE, 0xAC, 0x81, 0xFF, 0xFF, 0x04, 0x00, 0xAC ; 001AFA: provisional 68k move.b -$1154(a3), ([$ff0400ac])
db 0x03, 0x05 ; 001B04: provisional 68k btst.l d1, d5
db 0x19, 0xAC, 0xEE, 0xAC, 0xCA, 0xC1 ; 001B06: provisional 68k move.b -$1154(a4), -$3f(a4, a4.l)
db 0xFF, 0xFF ; 001B0C: provisional 68k dc.w $ffff
db 0x08, 0x05 ; file 001B0E
db 0x1E, 0xBB, 0x9A, 0xCC ; 001B10: provisional 68k move.b $1ade(pc, a1.l), (a7)
db 0x9A, 0xC1 ; 001B14: provisional 68k suba.w d1, a5
db 0xFF, 0xFF ; 001B16: provisional 68k dc.w $ffff
db 0x05, 0x08, 0x1F, 0x1C ; 001B18: provisional 68k movep.w $1f1c(a0), d2
db 0xCA, 0xEB, 0xEA, 0xCA ; 001B1C: provisional 68k mulu.w -$1536(a3), d5
db 0x9B, 0x9A ; 001B20: provisional 68k sub.l d5, (a2)+
db 0xC1, 0xFF ; file 001B22
db 0xFF, 0x04 ; 001B24: provisional 68k dc.w $ff04
db 0x09, 0xF1, 0xAE, 0xBB ; 001B26: provisional 68k bset.b d4, -$45(a1, a2.l)
db 0xBB, 0xEA, 0xC9, 0xBB ; 001B2A: provisional 68k cmpa.l -$3645(a2), a5
db 0xBB, 0xE9, 0xC1, 0xFF ; 001B2E: provisional 68k cmpa.l -$3e01(a1), a5
db 0xFF, 0x03 ; 001B32: provisional 68k dc.w $ff03
db 0x09, 0xF1, 0xAE, 0xBB ; 001B34: provisional 68k bset.b d4, -$45(a1, a2.l)
db 0xBE, 0xEE, 0xAA, 0xEB ; 001B38: provisional 68k cmpa.w -$5515(a6), a7
db 0xBB, 0xB9, 0xAC, 0xFF, 0xFF, 0x01 ; 001B3C: provisional 68k eor.l d5, $acffff01.l
db 0x0B, 0x1C ; 001B42: provisional 68k btst.l d5, (a4)+
db 0xCC, 0xA9, 0x9E, 0xEE ; 001B44: provisional 68k and.l -$6112(a1), d6
db 0xAA, 0xC8 ; 001B48: provisional 68k dc.w $aac8
db 0x9B, 0xBB ; file 001B4A
db 0xBE, 0xAA, 0x8D, 0xFF ; 001B4C: provisional 68k cmp.l -$7201(a2), d7
db 0xFF, 0x01 ; 001B50: provisional 68k dc.w $ff01
db 0x0B, 0xA9, 0x9E, 0xEE ; 001B52: provisional 68k bclr.b d5, -$6112(a1)
db 0xAC, 0xC8 ; 001B56: provisional 68k dc.w $acc8
db 0x88, 0xAA, 0xBB, 0xBB ; 001B58: provisional 68k or.l -$4445(a2), d4
db 0x9A, 0xCC ; 001B5C: provisional 68k suba.w a4, a5
db 0x81, 0xFF ; file 001B5E
db 0xFF, 0x00 ; 001B60: provisional 68k dc.w $ff00
db 0x0C, 0x1C, 0xBB, 0x99 ; 001B62: provisional 68k cmpi.b #$99, (a4)+
db 0xAC, 0x88 ; 001B66: provisional 68k dc.w $ac88
db 0x88, 0x8C, 0xBB, 0xBE ; file 001B68
db 0xAA, 0x88 ; 001B6C: provisional 68k dc.w $aa88
db 0x88, 0x81 ; 001B6E: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 001B70: provisional 68k dc.w $ffff
db 0x00, 0x0B ; file 001B72
db 0x1A, 0xB9, 0xC8, 0x88, 0x88, 0xCA ; 001B74: provisional 68k move.b $c88888ca.l, (a5)
db 0xCC, 0xA9, 0xAC, 0x88 ; 001B7A: provisional 68k and.l -$5378(a1), d6
db 0x88, 0x8C ; file 001B7E
db 0xFF, 0xFF ; 001B80: provisional 68k dc.w $ffff
db 0x00, 0x0A ; file 001B82
db 0x1A, 0xAC, 0x88, 0x88 ; 001B84: provisional 68k move.b -$7778(a4), (a5)
db 0xAA, 0xAA ; 001B88: provisional 68k dc.w $aaaa
db 0xA8, 0x88 ; 001B8A: provisional 68k dc.w $a888
db 0x88, 0x88, 0xDD, 0xFF ; file 001B8C
db 0xFF, 0x00 ; 001B90: provisional 68k dc.w $ff00
db 0x08, 0xC8, 0x88, 0x88 ; file 001B92
db 0x8A, 0xAC, 0x88, 0x88 ; 001B96: provisional 68k or.l -$7778(a4), d5
db 0x88, 0x81 ; 001B9A: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 001B9C: provisional 68k dc.w $ffff
db 0x00, 0x06, 0xA8, 0x88 ; 001B9E: provisional 68k ori.b #$88, d6
db 0x88, 0x8C, 0x88, 0x88, 0x88, 0xFF ; file 001BA2
db 0xFF, 0x00 ; 001BA8: provisional 68k dc.w $ff00
db 0x05, 0xC8, 0x88, 0x88 ; 001BAA: provisional 68k movep.l d2, -$7778(a0)
db 0x88, 0x88, 0xCD, 0xFF ; file 001BAE
db 0xFF, 0x00 ; 001BB2: provisional 68k dc.w $ff00
db 0x04, 0xD8, 0x88, 0x88, 0x88, 0x8C ; file 001BB4
db 0xFF, 0xFF ; 001BBA: provisional 68k dc.w $ffff
db 0x00, 0x04, 0xDD, 0x8C ; 001BBC: provisional 68k ori.b #$8c, d4
db 0xCC, 0xCC, 0xC1, 0xFF ; file 001BC0
db 0xFF, 0xFF ; 001BC4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001BC6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001BC8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001BCA: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 001BCC: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 001BCE: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 001BD2: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 001BD8
db 0x10, 0x10 ; 001BDC: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001BDE: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001BE0: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001BE2: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001BE4: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 001BE8: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 001BEC: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 001BEE: provisional 68k neg.w d4
db 0x30, 0x34, 0x38, 0x78 ; 001BF0: provisional 68k move.w $78(a4, d3.l), d0
db 0x7C, 0x84 ; 001BF4: provisional 68k moveq #$84, d6
db 0xD4, 0xD4 ; 001BF6: provisional 68k adda.w (a4), a2
db 0xD8, 0x50 ; 001BF8: provisional 68k add.w (a0), d4
db 0x54, 0x70, 0x10, 0x14 ; 001BFA: provisional 68k addq.w #$2, $14(a0, d1.w)
db 0x44, 0xA4 ; 001BFE: provisional 68k neg.l -(a4)
db 0xA4, 0xA8 ; 001C00: provisional 68k dc.w $a4a8
db 0x0C, 0x0C ; file 001C02
db 0x70, 0x30 ; 001C04: provisional 68k moveq #$30, d0
db 0x34, 0x60 ; 001C06: provisional 68k movea.w -(a0), a2
db 0x09, 0x00 ; 001C08: provisional 68k btst.l d4, d0
db 0x99, 0xFF ; file 001C0A
db 0xFF, 0x09 ; 001C0C: provisional 68k dc.w $ff09
db 0x01, 0xB9, 0xF1, 0xFF, 0xFF, 0x09 ; 001C0E: provisional 68k bclr.b d0, $f1ffff09.l
db 0x01, 0xF9, 0xB1, 0xFF, 0xFF, 0x09 ; 001C14: provisional 68k bset.b d0, $b1ffff09.l
db 0x01, 0x19 ; 001C1A: provisional 68k btst.l d0, (a1)+
db 0xDF, 0xFF ; file 001C1C
db 0xFF, 0x09 ; 001C1E: provisional 68k dc.w $ff09
db 0x01, 0x1B ; 001C20: provisional 68k btst.l d0, (a3)+
db 0xD9, 0xFF ; file 001C22
db 0xFF, 0x09 ; 001C24: provisional 68k dc.w $ff09
db 0x02, 0x1F, 0x99, 0xF1 ; 001C26: provisional 68k andi.b #$f1, (a7)+
db 0xFF, 0xFF ; 001C2A: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xFB, 0xF1 ; 001C2C: provisional 68k eori.b #$f1, d1
db 0xFF, 0xFF ; 001C30: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xF9, 0xB1 ; 001C32: provisional 68k eori.b #$b1, d1
db 0xFF, 0xFF ; 001C36: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xF9, 0x9F ; 001C38: provisional 68k eori.b #$9f, d1
db 0xFF, 0xFF ; 001C3C: provisional 68k dc.w $ffff
db 0x08, 0x04, 0xB9, 0xBF ; file 001C3E
db 0xFB, 0xDF ; 001C42: provisional 68k dc.w $fbdf
db 0xF1, 0xFF ; 001C44: provisional 68k dc.w $f1ff
db 0xFF, 0x06 ; 001C46: provisional 68k dc.w $ff06
db 0x06, 0x1E, 0xB9, 0x99 ; 001C48: provisional 68k addi.b #$99, (a6)+
db 0xBB, 0x9D ; 001C4C: provisional 68k eor.l d5, (a5)+
db 0xAD, 0xDF ; 001C4E: provisional 68k dc.w $addf
db 0xFF, 0xFF ; 001C50: provisional 68k dc.w $ffff
db 0x05, 0x07 ; 001C52: provisional 68k btst.l d2, d7
db 0x1B, 0x99, 0xDD, 0xDD ; 001C54: provisional 68k move.b (a1)+, ([])
db 0xDD, 0xDD ; 001C58: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xAD ; 001C5A: provisional 68k dc.w $aaad
db 0xFF, 0xFF ; 001C5C: provisional 68k dc.w $ffff
db 0x05, 0x07 ; 001C5E: provisional 68k btst.l d2, d7
db 0x9D, 0xDD ; 001C60: provisional 68k suba.l (a5)+, a6
db 0x99, 0xDD ; 001C62: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xBF ; file 001C64
db 0xD9, 0xD9 ; 001C66: provisional 68k adda.l (a1)+, a4
db 0xFF, 0xFF ; 001C68: provisional 68k dc.w $ffff
db 0x04, 0x08, 0x19, 0xDB, 0x8C, 0xFF ; file 001C6A
db 0xCC, 0xFB, 0xBF, 0x99 ; 001C70: provisional 68k mulu.w ([$1c72, a3.l * 8]), d6
db 0xB8, 0xFF ; file 001C74
db 0xFF, 0x03 ; 001C76: provisional 68k dc.w $ff03
db 0x02, 0x1B, 0xD9, 0xFE ; 001C78: provisional 68k andi.b #$fe, (a3)+
db 0x03, 0x03 ; 001C7C: provisional 68k btst.l d1, d3
db 0xC9, 0x9F ; 001C7E: provisional 68k and.l d4, (a7)+
db 0xBB, 0xDB ; 001C80: provisional 68k cmpa.l (a3)+, a5
db 0xFF, 0xFF ; 001C82: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 001C84: provisional 68k btst.l d1, d1
db 0x1B, 0xB1, 0x02, 0x00, 0xFF, 0x01 ; 001C86: provisional 68k move.b (a1, d0.w * 2), ([a5, a7.l * 8])
db 0x03, 0x1F ; 001C8C: provisional 68k btst.l d1, (a7)+
db 0x9B, 0x99 ; 001C8E: provisional 68k sub.l d5, (a1)+
db 0xAD, 0xFF ; 001C90: provisional 68k dc.w $adff
db 0xFF, 0x05 ; 001C92: provisional 68k dc.w $ff05
db 0x07, 0xFB ; file 001C94
db 0xB9, 0xDA ; 001C96: provisional 68k cmpa.l (a2)+, a4
db 0xB1, 0x1F ; 001C98: provisional 68k eor.b d0, (a7)+
db 0xDD, 0xDA ; 001C9A: provisional 68k adda.l (a2)+, a6
db 0xDB, 0xFF ; file 001C9C
db 0xFF, 0x04 ; 001C9E: provisional 68k dc.w $ff04
db 0x08, 0x19 ; file 001CA0
db 0xD9, 0x9B ; 001CA2: provisional 68k add.l d4, (a3)+
db 0x99, 0xBF ; file 001CA4
db 0x1F, 0xAD, 0xDD, 0x9F, 0xFF, 0xFF, 0x03, 0x09, 0x1B, 0x99 ; 001CA6: provisional 68k move.b -$2261(a5), ([$3091b99])
db 0x9B, 0xFF ; file 001CB0
db 0xF8, 0x9F ; 001CB2: provisional 68k dc.w $f89f
db 0xFD, 0xA9 ; 001CB4: provisional 68k dc.w $fda9
db 0xB9, 0x9F ; 001CB6: provisional 68k eor.l d4, (a7)+
db 0xFF, 0xFF ; 001CB8: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 001CBA: provisional 68k btst.l d1, d2
db 0x19, 0x9F, 0xFE, 0x01 ; 001CBC: provisional 68k move.b (a7)+, $1(a4, a7.l)
db 0x05, 0x1F ; 001CC0: provisional 68k btst.l d2, (a7)+
db 0xDD, 0xDD ; 001CC2: provisional 68k adda.l (a5)+, a6
db 0xBB, 0xBD, 0xDF, 0xFF ; file 001CC4
db 0xFF, 0x03 ; 001CC8: provisional 68k dc.w $ff03
db 0x01, 0x1F ; 001CCA: provisional 68k btst.l d0, (a7)+
db 0xE1, 0x02 ; 001CCC: provisional 68k asl.b #$8, d2
db 0x05, 0x1B ; 001CCE: provisional 68k btst.l d2, (a3)+
db 0xAA, 0xDB ; 001CD0: provisional 68k dc.w $aadb
db 0xBB, 0xDD ; 001CD2: provisional 68k cmpa.l (a5)+, a5
db 0xDF, 0xFF ; file 001CD4
db 0xFF, 0x06 ; 001CD6: provisional 68k dc.w $ff06
db 0x06, 0xB9, 0x9A, 0xA9, 0xB9, 0xAA, 0xAA, 0xAF, 0xFF, 0xFF ; 001CD8: provisional 68k addi.l #$9aa9b9aa, $aaafffff.l
db 0x04, 0x08, 0x1F, 0xDA ; file 001CE2
db 0xAA, 0xAD ; 001CE6: provisional 68k dc.w $aaad
db 0xB9, 0xDA ; 001CE8: provisional 68k cmpa.l (a2)+, a4
db 0xAA, 0xA9 ; 001CEA: provisional 68k dc.w $aaa9
db 0x9F, 0xFF ; file 001CEC
db 0xFF, 0x03 ; 001CEE: provisional 68k dc.w $ff03
db 0x09, 0x1E ; 001CF0: provisional 68k btst.l d4, (a6)+
db 0x9A, 0xAA, 0xAD, 0xDB ; 001CF2: provisional 68k sub.l -$5225(a2), d5
db 0x9D, 0xAA, 0xAD, 0x9B ; 001CF6: provisional 68k sub.l d6, -$5265(a2)
db 0xF1, 0xFF ; 001CFA: provisional 68k dc.w $f1ff
db 0xFF, 0x02 ; 001CFC: provisional 68k dc.w $ff02
db 0x0A, 0xEF ; file 001CFE
db 0xBD, 0xDA ; 001D00: provisional 68k cmpa.l (a2)+, a6
db 0xDD, 0xB8, 0x89, 0xAA ; 001D02: provisional 68k add.l d6, $89aa.w
db 0xAA, 0xDB ; 001D06: provisional 68k dc.w $aadb
db 0x8B, 0x81 ; 001D08: provisional 68k dc.w $8b81
db 0xFF, 0xFF ; 001D0A: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xFB, 0xB9 ; 001D0C: provisional 68k movep.w -$447(a2), d0
db 0xDD, 0x9B ; 001D10: provisional 68k add.l d6, (a3)+
db 0xB8, 0x88 ; 001D12: provisional 68k cmp.l a0, d4
db 0xDA, 0xAA, 0xD9, 0xB8 ; 001D14: provisional 68k add.l -$2648(a2), d5
db 0x88, 0xFF ; file 001D18
db 0xFF, 0x01 ; 001D1A: provisional 68k dc.w $ff01
db 0x0A, 0xDD ; file 001D1C
db 0xDD, 0x98 ; 001D1E: provisional 68k add.l d6, (a0)+
db 0x88, 0xCC ; file 001D20
db 0x89, 0xAA, 0xD9, 0xB8 ; 001D22: provisional 68k or.l d4, -$2648(a2)
db 0x88, 0xCC ; file 001D26
db 0xFF, 0xFF ; 001D28: provisional 68k dc.w $ffff
db 0x00, 0x09 ; file 001D2A
db 0x19, 0xAD, 0xBB, 0x88, 0x88, 0x88 ; 001D2C: provisional 68k move.b -$4478(a5), -$78(a4, a0.l)
db 0xB9, 0x9B ; 001D32: provisional 68k eor.l d4, (a3)+
db 0x88, 0x88 ; file 001D34
db 0xFF, 0xFF ; 001D36: provisional 68k dc.w $ffff
db 0x00, 0x09, 0x1D, 0xDB, 0x88, 0x88 ; file 001D38
db 0xB9, 0xDD ; 001D3E: provisional 68k cmpa.l (a5)+, a4
db 0x98, 0x88 ; 001D40: provisional 68k sub.l a0, d4
db 0x88, 0xF1, 0xFF, 0xFF, 0x00, 0x07, 0xFB, 0xB8 ; 001D42: provisional 68k divu.w ([$7fbb8]), d4
db 0x88, 0xB9, 0x9B, 0x88, 0x88, 0x88 ; 001D4A: provisional 68k or.l $9b888888.l, d4
db 0xFF, 0xFF ; 001D50: provisional 68k dc.w $ffff
db 0x00, 0x06, 0xF8, 0x88 ; 001D52: provisional 68k ori.b #$88, d6
db 0x88, 0x8B, 0x88, 0x88, 0x88, 0xFF ; file 001D56
db 0xFF, 0x00 ; 001D5C: provisional 68k dc.w $ff00
db 0x05, 0xB8, 0x88, 0x88 ; 001D5E: provisional 68k bclr.b d2, $8888.w
db 0x88, 0x88, 0x81, 0xFF ; file 001D62
db 0xFF, 0x00 ; 001D66: provisional 68k dc.w $ff00
db 0x04, 0x88, 0x88, 0x88 ; file 001D68
db 0x88, 0x81 ; 001D6C: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 001D6E: provisional 68k dc.w $ffff
db 0x00, 0x04, 0xC8, 0x88 ; 001D70: provisional 68k ori.b #$88, d4
db 0xCC, 0xCC ; file 001D74
db 0xF1, 0xFF ; 001D76: provisional 68k dc.w $f1ff
db 0xFF, 0x01 ; 001D78: provisional 68k dc.w $ff01
db 0x00, 0xF1 ; file 001D7A
db 0xFF, 0xFF ; 001D7C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001D7E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001D80: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001D82: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001D84: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 001D86: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 001D8A: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 001D90
db 0x10, 0x10 ; 001D94: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001D96: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001D98: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001D9A: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001D9C: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 001DA0: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 001DA4: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 001DA6: provisional 68k neg.w d4
db 0x2C, 0x34, 0x34, 0xA0 ; 001DA8: provisional 68k move.l -$60(a4, d3.w), d6
db 0xA4, 0xAC ; 001DAC: provisional 68k dc.w $a4ac
db 0x7C, 0x80 ; 001DAE: provisional 68k moveq #$80, d6
db 0x84, 0x10 ; 001DB0: provisional 68k or.b (a0), d2
db 0x14, 0x3C, 0xD4, 0xD4 ; 001DB2: provisional 68k move.b #$d4, d2
db 0xD8, 0x40 ; 001DB6: provisional 68k add.w d0, d4
db 0x40, 0x68, 0x08, 0x08 ; 001DB8: provisional 68k negx.w $808(a0)
db 0x6C, 0x0C ; 001DBC: provisional 68k bge.b $1dca
db 0x0C, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF ; 001DBE: provisional 68k cmpi.w #$ffff, ([$ffffffff])
db 0xFF, 0xFF ; 001DC8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001DCA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001DCC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001DCE: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1F, 0xDA ; 001DD0: provisional 68k addi.b #$da, d5
db 0xAA, 0xDD ; 001DD4: provisional 68k dc.w $aadd
db 0xDA, 0x9D ; 001DD6: provisional 68k add.l (a5)+, d5
db 0xFF, 0xFF ; 001DD8: provisional 68k dc.w $ffff
db 0x05, 0x07 ; 001DDA: provisional 68k btst.l d2, d7
db 0xFF, 0xDA ; 001DDC: provisional 68k dc.w $ffda
db 0xAA, 0xAA ; 001DDE: provisional 68k dc.w $aaaa
db 0x99, 0xAA, 0xC9, 0xD1 ; 001DE0: provisional 68k sub.l d4, -$362f(a2)
db 0xFF, 0xFF ; 001DE4: provisional 68k dc.w $ffff
db 0x04, 0x08 ; file 001DE6
db 0x1E, 0xDA ; 001DE8: provisional 68k move.b (a2)+, (a7)+
db 0xA9, 0x99 ; 001DEA: provisional 68k dc.w $a999
db 0x99, 0xCC ; 001DEC: provisional 68k suba.l a4, a4
db 0xAA, 0xAA ; 001DEE: provisional 68k dc.w $aaaa
db 0xD1, 0xFF ; file 001DF0
db 0xFF, 0x04 ; 001DF2: provisional 68k dc.w $ff04
db 0x08, 0x1A ; file 001DF4
db 0x9A, 0xAD, 0xAA, 0xAA ; 001DF6: provisional 68k sub.l -$5556(a5), d5
db 0xAA, 0xDD ; 001DFA: provisional 68k dc.w $aadd
db 0xDD, 0xBB ; file 001DFC
db 0xFF, 0xFF ; 001DFE: provisional 68k dc.w $ffff
db 0x04, 0x08 ; file 001E00
db 0xA9, 0xA8 ; 001E02: provisional 68k dc.w $a9a8
db 0xBB, 0xBB ; file 001E04
db 0xBD, 0xDD ; 001E06: provisional 68k cmpa.l (a5)+, a6
db 0x88, 0xAA, 0xD1, 0xFF ; 001E08: provisional 68k or.l -$2e01(a2), d4
db 0xFF, 0x03 ; 001E0C: provisional 68k dc.w $ff03
db 0x02, 0x1A, 0xA8, 0xBB ; 001E0E: provisional 68k andi.b #$bb, (a2)+
db 0x02, 0x04, 0x1D, 0xA9 ; 001E12: provisional 68k andi.b #$a9, d4
db 0xDD, 0x9C ; 001E16: provisional 68k add.l d6, (a4)+
db 0xA1, 0xFF ; 001E18: provisional 68k dc.w $a1ff
db 0xFF, 0x03 ; 001E1A: provisional 68k dc.w $ff03
db 0x01, 0xA9, 0xD1, 0x03 ; 001E1C: provisional 68k bclr.b d0, -$2efd(a1)
db 0x04, 0xBB ; file 001E20
db 0x99, 0xAA, 0xC9, 0xD1 ; 001E22: provisional 68k sub.l d4, -$362f(a2)
db 0xFF, 0xFF ; 001E26: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 001E28: provisional 68k btst.l d1, d1
db 0xDD, 0xF1, 0x01, 0x01 ; 001E2A: provisional 68k adda.l ([a1, d0.w]), a6
db 0xAC, 0x9D ; 001E2E: provisional 68k dc.w $ac9d
db 0x01, 0x02 ; 001E30: provisional 68k btst.l d0, d2
db 0xA9, 0xCC ; 001E32: provisional 68k dc.w $a9cc
db 0xAA, 0xFF ; 001E34: provisional 68k dc.w $aaff
db 0xFF, 0x03 ; 001E36: provisional 68k dc.w $ff03
db 0x04, 0x1E, 0xD9, 0x9A ; 001E38: provisional 68k subi.b #$9a, (a6)+
db 0xAA, 0xAD ; 001E3C: provisional 68k dc.w $aaad
db 0x01, 0x02 ; 001E3E: provisional 68k btst.l d0, d2
db 0x9C, 0x9A ; 001E40: provisional 68k sub.l (a2)+, d6
db 0xAA, 0xFF ; 001E42: provisional 68k dc.w $aaff
db 0xFF, 0x03 ; 001E44: provisional 68k dc.w $ff03
db 0x08, 0x1D ; file 001E46
db 0xAA, 0xAD ; 001E48: provisional 68k dc.w $aaad
db 0x1F, 0xDA ; file 001E4A
db 0xDA, 0x99 ; 001E4C: provisional 68k add.l (a1)+, d5
db 0xAD, 0xA9 ; 001E4E: provisional 68k dc.w $ada9
db 0xFF, 0xFF ; 001E50: provisional 68k dc.w $ffff
db 0x03, 0x08, 0xDA, 0xAD ; 001E52: provisional 68k movep.w -$2553(a0), d1
db 0xE1, 0x1E ; 001E56: provisional 68k rol.b #$8, d6
db 0xD9, 0x9C ; 001E58: provisional 68k add.l d4, (a4)+
db 0xA8, 0xDA ; 001E5A: provisional 68k dc.w $a8da
db 0x99, 0xFF ; file 001E5C
db 0xFF, 0x02 ; 001E5E: provisional 68k dc.w $ff02
db 0x02, 0x1D, 0xAA, 0xBB ; 001E60: provisional 68k andi.b #$bb, (a5)+
db 0x02, 0x05, 0xA9, 0xCA ; 001E64: provisional 68k andi.b #$ca, d5
db 0xAA, 0x9C ; 001E68: provisional 68k dc.w $aa9c
db 0xCC, 0xD1 ; 001E6A: provisional 68k mulu.w (a1), d6
db 0xFF, 0xFF ; 001E6C: provisional 68k dc.w $ffff
db 0x05, 0x07 ; 001E6E: provisional 68k btst.l d2, d7
db 0x1D, 0xAA, 0xC9, 0xAD, 0x9C, 0xCC ; 001E70: provisional 68k move.b -$3653(a2), -$34(a6, a1.l)
db 0x99, 0xD1 ; 001E76: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 001E78: provisional 68k dc.w $ffff
db 0x04, 0x08 ; file 001E7A
db 0x1D, 0x9C, 0xCC, 0x9A ; 001E7C: provisional 68k move.b (a4)+, -$66(a6, a4.l)
db 0xAC, 0xCC ; 001E80: provisional 68k dc.w $accc
db 0xCA, 0xDD ; 001E82: provisional 68k mulu.w (a5)+, d5
db 0xD1, 0xFF ; file 001E84
db 0xFF, 0x04 ; 001E86: provisional 68k dc.w $ff04
db 0x07, 0x9C ; 001E88: provisional 68k bclr.b d3, (a4)+
db 0xC9, 0x99 ; 001E8A: provisional 68k and.l d4, (a1)+
db 0xA9, 0xCC ; 001E8C: provisional 68k dc.w $a9cc
db 0xCC, 0xAA, 0xAD, 0xFF ; 001E8E: provisional 68k and.l -$5201(a2), d6
db 0xFF, 0x02 ; 001E92: provisional 68k dc.w $ff02
db 0x09, 0x1F ; 001E94: provisional 68k btst.l d4, (a7)+
db 0xD9, 0xCC ; 001E96: provisional 68k adda.l a4, a4
db 0x9A, 0xD8 ; 001E98: provisional 68k suba.w (a0)+, a5
db 0xDC, 0xCC ; 001E9A: provisional 68k adda.w a4, a6
db 0xC9, 0xD8 ; 001E9C: provisional 68k muls.w (a0)+, d4
db 0xD8, 0xFF ; file 001E9E
db 0xFF, 0x02 ; 001EA0: provisional 68k dc.w $ff02
db 0x09, 0xDA ; 001EA2: provisional 68k bset.b d4, (a2)+
db 0x99, 0xAD, 0x88, 0xDA ; 001EA4: provisional 68k sub.l d4, -$7726(a5)
db 0xCC, 0xC9 ; file 001EA8
db 0xD8, 0x88 ; 001EAA: provisional 68k add.l a0, d4
db 0x8F, 0xFF ; file 001EAC
db 0xFF, 0x00 ; 001EAE: provisional 68k dc.w $ff00
db 0x0A, 0x1D, 0xDA, 0xA9 ; 001EB0: provisional 68k eori.b #$a9, (a5)+
db 0xA8, 0x88 ; 001EB4: provisional 68k dc.w $a888
db 0xBB, 0xD9 ; 001EB6: provisional 68k cmpa.l (a1)+, a5
db 0xC9, 0xA8, 0x88, 0x8B ; 001EB8: provisional 68k and.l d4, -$7775(a0)
db 0xFF, 0xFF ; 001EBC: provisional 68k dc.w $ffff
db 0x00, 0x09 ; file 001EBE
db 0x1A, 0x99 ; 001EC0: provisional 68k move.b (a1)+, (a5)
db 0xAD, 0x8B ; 001EC2: provisional 68k dc.w $ad8b
db 0x88, 0xDD ; 001EC4: provisional 68k divu.w (a5)+, d4
db 0xDA, 0xAD, 0x88, 0x8B ; 001EC6: provisional 68k add.l -$7775(a5), d5
db 0xFF, 0xFF ; 001ECA: provisional 68k dc.w $ffff
db 0x00, 0x08 ; file 001ECC
db 0x19, 0x9D, 0x88, 0x88 ; 001ECE: provisional 68k move.b (a5)+, -$78(a4, a0.l)
db 0xDA, 0xAA, 0xD8, 0x88 ; 001ED2: provisional 68k add.l -$2778(a2), d5
db 0x88, 0xFF ; file 001ED6
db 0xFF, 0x00 ; 001ED8: provisional 68k dc.w $ff00
db 0x07, 0xD9 ; 001EDA: provisional 68k bset.b d3, (a1)+
db 0xA8, 0x88 ; 001EDC: provisional 68k dc.w $a888
db 0x8A, 0xAD, 0xD8, 0x88 ; 001EDE: provisional 68k or.l -$2778(a5), d5
db 0x88, 0xFF ; file 001EE2
db 0xFF, 0x00 ; 001EE4: provisional 68k dc.w $ff00
db 0x06, 0xDD ; file 001EE6
db 0xD8, 0x8D ; 001EE8: provisional 68k add.l a5, d4
db 0xAA, 0x88 ; 001EEA: provisional 68k dc.w $aa88
db 0x88, 0x8D ; file 001EEC
db 0xFF, 0xFF ; 001EEE: provisional 68k dc.w $ffff
db 0x00, 0x05, 0xD8, 0x88 ; 001EF0: provisional 68k ori.b #$88, d5
db 0x88, 0x88, 0x88, 0x8B ; file 001EF4
db 0xFF, 0xFF ; 001EF8: provisional 68k dc.w $ffff
db 0x00, 0x04, 0x88, 0x88 ; 001EFA: provisional 68k ori.b #$88, d4
db 0x88, 0x88, 0x81, 0xFF ; file 001EFE
db 0xFF, 0x00 ; 001F02: provisional 68k dc.w $ff00
db 0x04, 0x88, 0x88, 0x88 ; file 001F04
db 0x88, 0xF1, 0xFF, 0xFF, 0x00, 0x03, 0x18, 0x8B ; 001F08: provisional 68k divu.w ([$3188b]), d4
db 0xBF, 0xF1, 0xFF, 0xFF, 0x00, 0x00, 0x1D, 0xFF ; 001F10: provisional 68k cmpa.l ([$1dff]), a7
db 0xFF, 0xFF ; 001F18: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001F1A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001F1C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001F1E: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 001F20: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 001F22: provisional 68k ori.b #$0, d7
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x00 ; 001F26: provisional 68k ori.b #$26, (a0, d0.w)
db 0x00, 0x58, 0x00, 0x00 ; 001F2C: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x18 ; 001F30: provisional 68k ori.b #$18, d0
db 0x00, 0x12, 0x00, 0x00 ; 001F34: provisional 68k ori.b #$0, (a2)
db 0x00, 0x0A ; file 001F38
db 0x00, 0x06, 0x00, 0x0A ; 001F3A: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 001F3E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 001F42: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 001F46: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 001F4A: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 001F4E: provisional 68k ori.b #$5, d4
db 0x00, 0x04, 0x00, 0x03 ; 001F52: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 001F56: provisional 68k ori.b #$1, d2
db 0x00, 0x0C ; file 001F5A
db 0x01, 0xB2, 0x03, 0x5A, 0x05, 0x0A ; 001F5C: provisional 68k bclr.b d0, ([a2], $50a)
db 0x06, 0xC4 ; 001F62: provisional 68k dc.w $6c4
db 0x08, 0x7C ; file 001F64
db 0x00, 0x00, 0x00, 0x00 ; 001F66: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 001F6A: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 001F70
db 0x10, 0x10 ; 001F74: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001F76: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001F78: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001F7A: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001F7C: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 001F80: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 001F84: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 001F86: provisional 68k neg.w d4
db 0x30, 0x38, 0x44, 0x88 ; 001F88: provisional 68k move.w $4488.w, d0
db 0x8C, 0x94 ; 001F8C: provisional 68k or.l (a4), d6
db 0xDC, 0xDC ; 001F8E: provisional 68k adda.w (a4)+, a6
db 0xE0, 0x60 ; 001F90: provisional 68k asr.w d0, d0
db 0x64, 0x74 ; 001F92: provisional 68k bcc.b $2008
db 0x38, 0x38, 0x74, 0xB0 ; 001F94: provisional 68k move.w $74b0.w, d4
db 0xB4, 0xB8, 0x10, 0x10 ; 001F98: provisional 68k cmp.l $1010.w, d2
db 0x60, 0x10 ; 001F9C: provisional 68k bra.b $1fae
db 0x10, 0x70 ; file 001F9E
db 0xFF, 0xFF ; 001FA0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FA2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FA4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FA6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FA8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FAA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FAC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FAE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FB0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FB2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FB4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FB6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FB8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FBA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FBC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FBE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FC0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001FC2: provisional 68k dc.w $ffff
db 0x0B, 0x04 ; 001FC4: provisional 68k btst.l d5, d4
db 0x1C, 0xCB ; file 001FC6
db 0x99, 0x9B ; 001FC8: provisional 68k sub.l d4, (a3)+
db 0xBB, 0xFF ; file 001FCA
db 0xFF, 0x0A ; 001FCC: provisional 68k dc.w $ff0a
db 0x05, 0xCC, 0xCB, 0x99 ; 001FCE: provisional 68k movep.l d2, -$3467(a4)
db 0x99, 0x99 ; 001FD2: provisional 68k sub.l d4, (a1)+
db 0xBB, 0xFF ; file 001FD4
db 0xFF, 0x09 ; 001FD6: provisional 68k dc.w $ff09
db 0x05, 0x1C ; 001FD8: provisional 68k btst.l d2, (a4)+
db 0x9D, 0xDD ; 001FDA: provisional 68k suba.l (a5)+, a6
db 0x98, 0x88 ; 001FDC: provisional 68k sub.l a0, d4
db 0xEE, 0xFF ; file 001FDE
db 0xFF, 0x09 ; 001FE0: provisional 68k dc.w $ff09
db 0x03, 0xCB, 0xB9, 0xD9 ; 001FE2: provisional 68k movep.l d1, -$4627(a3)
db 0xC1, 0xFF ; file 001FE6
db 0xFF, 0x08 ; 001FE8: provisional 68k dc.w $ff08
db 0x03, 0x1B ; 001FEA: provisional 68k btst.l d1, (a3)+
db 0x9B, 0xDA ; 001FEC: provisional 68k suba.l (a2)+, a5
db 0xB8, 0x03 ; 001FEE: provisional 68k cmp.b d3, d4
db 0x02, 0xBD ; file 001FF0
db 0x99, 0x9C ; 001FF2: provisional 68k sub.l d4, (a4)+
db 0xFF, 0xFF ; 001FF4: provisional 68k dc.w $ffff
db 0x07, 0x04 ; 001FF6: provisional 68k btst.l d3, d4
db 0x1C, 0x99 ; 001FF8: provisional 68k move.b (a1)+, (a6)
db 0xBB, 0xDD ; 001FFA: provisional 68k cmpa.l (a5)+, a5
db 0xCF, 0x01 ; 001FFC: provisional 68k abcd.b d1, d7
db 0x04, 0xCB, 0x99, 0xBB ; file 001FFE
db 0xBC, 0xCC ; 002002: provisional 68k cmpa.w a4, a6
db 0xFF, 0xFF ; 002004: provisional 68k dc.w $ffff
db 0x07, 0x0A, 0xCD, 0xDB ; 002006: provisional 68k movep.w -$3225(a2), d3
db 0xE8, 0xB9 ; 00200A: provisional 68k ror.l d4, d1
db 0xC1, 0x1C ; 00200C: provisional 68k and.b d0, (a4)+
db 0xDD, 0xBB, 0xCC, 0xCC, 0xC1, 0xFF ; file 00200E
db 0xFF, 0x06 ; 002014: provisional 68k dc.w $ff06
db 0x02, 0xEE ; file 002016
db 0xBA, 0xDC ; 002018: provisional 68k cmpa.w (a4)+, a5
db 0x01, 0x04 ; 00201A: provisional 68k btst.l d0, d4
db 0xC9, 0xB1, 0x1C, 0xD9 ; 00201C: provisional 68k and.l d4, -$27(a1, d1.l)
db 0x8C, 0xFF ; file 002020
db 0xFF, 0x07 ; 002022: provisional 68k dc.w $ff07
db 0x01, 0xC9, 0xDB, 0x01 ; 002024: provisional 68k movep.l d0, -$24ff(a1)
db 0x04, 0xF9 ; file 002028
db 0xDE, 0xEE, 0xBB, 0xEE ; 00202A: provisional 68k adda.w -$4412(a6), a7
db 0xFF, 0xFF ; 00202E: provisional 68k dc.w $ffff
db 0x07, 0x07 ; 002030: provisional 68k btst.l d3, d7
db 0x18, 0x9D ; 002032: provisional 68k move.b (a5)+, (a4)
db 0xBB, 0xC9 ; 002034: provisional 68k cmpa.l a1, a5
db 0xAB, 0xFE ; 002036: provisional 68k dc.w $abfe
db 0xB9, 0xC1 ; 002038: provisional 68k cmpa.l d1, a4
db 0x01, 0x01 ; 00203A: provisional 68k btst.l d0, d1
db 0xFC, 0xCC ; 00203C: provisional 68k dc.w $fccc
db 0xFF, 0xFF ; 00203E: provisional 68k dc.w $ffff
db 0x08, 0x0E ; file 002040
db 0xCD, 0xD9 ; 002042: provisional 68k muls.w (a1)+, d6
db 0xB9, 0xAD, 0xB8, 0xB9 ; 002044: provisional 68k eor.l d4, -$4747(a5)
db 0xB1, 0x1B ; 002048: provisional 68k eor.b d0, (a3)+
db 0xB9, 0xD9 ; 00204A: provisional 68k cmpa.l (a1)+, a4
db 0xC1, 0x1B ; 00204C: provisional 68k and.b d0, (a3)+
db 0xB9, 0xAD, 0xB1, 0xFF ; 00204E: provisional 68k eor.l d4, -$4e01(a5)
db 0xFF, 0x08 ; 002052: provisional 68k dc.w $ff08
db 0x0E, 0x88 ; file 002054
db 0xBB, 0xB9, 0xDA, 0xAA, 0xAA, 0xAD ; 002056: provisional 68k eor.l d5, $daaaaaad.l
db 0xDA, 0xAA, 0xAA, 0xAA ; 00205C: provisional 68k add.l -$5556(a2), d5
db 0xAA, 0xAA ; 002060: provisional 68k dc.w $aaaa
db 0xAA, 0xAB ; 002062: provisional 68k dc.w $aaab
db 0xFF, 0xFF ; 002064: provisional 68k dc.w $ffff
db 0x08, 0x0F ; file 002066
db 0xEE, 0x8D ; 002068: provisional 68k lsr.l #$7, d5
db 0x98, 0xBB, 0xB9, 0x99 ; 00206A: provisional 68k sub.l ([$206c, a3.l]), d4
db 0xDD, 0xDD ; 00206E: provisional 68k adda.l (a5)+, a6
db 0x9A, 0xAD, 0xDD, 0xDD ; 002070: provisional 68k sub.l -$2223(a5), d5
db 0xDD, 0x9D ; 002074: provisional 68k add.l d6, (a5)+
db 0xD9, 0xC1 ; 002076: provisional 68k adda.l d1, a4
db 0xFF, 0xFF ; 002078: provisional 68k dc.w $ffff
db 0x09, 0x0E, 0x89, 0xD9 ; 00207A: provisional 68k movep.w -$7627(a6), d4
db 0x89, 0xDD ; 00207E: provisional 68k divs.w (a5)+, d4
db 0xD9, 0xB8, 0xB9, 0xBB ; 002080: provisional 68k add.l d4, $b9bb.w
db 0xBB, 0x88 ; 002084: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88 ; file 002086
db 0x8B, 0xB9, 0x99, 0xFF, 0xFF, 0x02 ; 002088: provisional 68k or.l d5, $99ffff02.l
db 0x01, 0xFC ; file 00208E
db 0xC1, 0x02 ; 002090: provisional 68k abcd.b d2, d0
db 0x11, 0xCC, 0xCC, 0xCC ; file 002092
db 0xCC, 0xDA ; 002096: provisional 68k mulu.w (a2)+, d6
db 0xDA, 0xAA, 0xAA, 0xD9 ; 002098: provisional 68k add.l -$5527(a2), d5
db 0x99, 0x98 ; 00209C: provisional 68k sub.l d4, (a0)+
db 0x88, 0x88 ; file 00209E
db 0x8B, 0x88 ; 0020A0: provisional 68k dc.w $8b88
db 0x88, 0x88, 0xBB, 0xFF ; file 0020A2
db 0xFF, 0x00 ; 0020A6: provisional 68k dc.w $ff00
db 0x17, 0xE9 ; file 0020A8
db 0x99, 0xB9, 0x99, 0xDD, 0x9B, 0x9D ; 0020AA: provisional 68k sub.l d4, $99dd9b9d.l
db 0xAD, 0x9D ; 0020B0: provisional 68k dc.w $ad9d
db 0x99, 0xDA ; 0020B2: provisional 68k suba.l (a2)+, a4
db 0xAA, 0x9D ; 0020B4: provisional 68k dc.w $aa9d
db 0xAA, 0xAA ; 0020B6: provisional 68k dc.w $aaaa
db 0xAD, 0xDB ; 0020B8: provisional 68k dc.w $addb
db 0x8B, 0xB9, 0x99, 0x98, 0x88, 0x88 ; 0020BA: provisional 68k or.l d5, $99988888.l
db 0x88, 0xFF ; file 0020C0
db 0xFF, 0x00 ; 0020C2: provisional 68k dc.w $ff00
db 0x17, 0x89 ; file 0020C4
db 0xD9, 0x99 ; 0020C6: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 0020C8: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x99 ; 0020CA: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 0020CC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 0020CE: provisional 68k adda.l (a1)+, a6
db 0xB9, 0xB9, 0xDA, 0xAA, 0xDD, 0x9B ; 0020D0: provisional 68k eor.l d4, $daaadd9b.l
db 0x99, 0xBB ; file 0020D6
db 0xB9, 0x98 ; 0020D8: provisional 68k eor.l d4, (a0)+
db 0x88, 0x88, 0x88, 0xFF ; file 0020DA
db 0xFF, 0x02 ; 0020DE: provisional 68k dc.w $ff02
db 0x14, 0xE8, 0x88, 0x88 ; 0020E0: provisional 68k move.b -$7778(a0), (a2)+
db 0x88, 0x88, 0xC8, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB ; file 0020E4
db 0xB8, 0x88 ; 0020EE: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x8C, 0xC8, 0x88, 0x8E ; file 0020F0
db 0xFF, 0xFF ; 0020F6: provisional 68k dc.w $ffff
db 0x0B, 0x0A, 0x88, 0x88 ; 0020F8: provisional 68k movep.w -$7778(a2), d5
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0020FC
db 0xF1, 0xFF ; 002104: provisional 68k dc.w $f1ff
db 0xFF, 0xFF ; 002106: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002108: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 00210A: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 00210C: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 002110: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 002116
db 0x10, 0x10 ; 00211A: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00211C: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00211E: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002120: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 002122: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002126: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00212A: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00212C: provisional 68k neg.w d4
db 0x2C, 0x34, 0x3C, 0xA8 ; 00212E: provisional 68k move.l -$58(a4, d3.l), d6
db 0xAC, 0xB0 ; 002132: provisional 68k dc.w $acb0
db 0x7C, 0x80 ; 002134: provisional 68k moveq #$80, d6
db 0x88, 0x0C ; file 002136
db 0x14, 0x2C, 0x0C, 0x0C ; 002138: provisional 68k move.b $c0c(a4), d2
db 0x6C, 0x40 ; 00213C: provisional 68k bge.b $217e
db 0x44, 0x70, 0xD8, 0xDC ; 00213E: provisional 68k neg.w -$24(a0, a5.l)
db 0xDC, 0x08 ; file 002142
db 0x0C, 0x5C, 0xFF, 0xFF ; 002144: provisional 68k cmpi.w #$ffff, (a4)+
db 0xFF, 0xFF ; 002148: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00214A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00214C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00214E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002150: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002152: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002154: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002156: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002158: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00215A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00215C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00215E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002160: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002162: provisional 68k dc.w $ffff
db 0x0B, 0x05 ; 002164: provisional 68k btst.l d5, d5
db 0x1A, 0x99 ; 002166: provisional 68k move.b (a1)+, (a5)
db 0xAA, 0xA9 ; 002168: provisional 68k dc.w $aaa9
db 0x9A, 0xD1 ; 00216A: provisional 68k suba.w (a1), a5
db 0xFF, 0xFF ; 00216C: provisional 68k dc.w $ffff
db 0x0A, 0x07, 0x1A, 0xAD ; 00216E: provisional 68k eori.b #$ad, d7
db 0xA9, 0x9A ; 002172: provisional 68k dc.w $a99a
db 0xAA, 0xAA ; 002174: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 002176: provisional 68k dc.w $aaad
db 0xFF, 0xFF ; 002178: provisional 68k dc.w $ffff
db 0x02, 0x00, 0xDA, 0x05 ; 00217A: provisional 68k andi.b #$5, d0
db 0x05, 0x1D ; 00217E: provisional 68k btst.l d2, (a5)+
db 0xDA, 0xAA, 0xA9, 0x9A ; 002180: provisional 68k add.l -$5666(a2), d5
db 0xAD, 0x02 ; 002184: provisional 68k dc.w $ad02
db 0x01, 0xDD ; 002186: provisional 68k bset.b d0, (a5)+
db 0xDD, 0xFF ; file 002188
db 0xFF, 0x02 ; 00218A: provisional 68k dc.w $ff02
db 0x02, 0xDA ; file 00218C
db 0xAA, 0xD1 ; 00218E: provisional 68k dc.w $aad1
db 0x03, 0x05 ; 002190: provisional 68k btst.l d1, d5
db 0x19, 0x9A, 0xDD, 0xAE, 0xAD, 0xFC, 0xFF, 0xFF ; 002192: provisional 68k move.b (a2)+, ([$adfc], a5.l * 4, $ffff)
db 0x02, 0x03, 0xCD, 0xA9 ; 00219A: provisional 68k andi.b #$a9, d3
db 0xAA, 0xD1 ; 00219E: provisional 68k dc.w $aad1
db 0x02, 0x04, 0xDE, 0xED ; 0021A0: provisional 68k andi.b #$ed, d4
db 0xFC, 0xDA ; 0021A4: provisional 68k dc.w $fcda
db 0xD1, 0x02 ; 0021A6: provisional 68k addx.b d2, d0
db 0x02, 0xDD ; file 0021A8
db 0xDD, 0xD1 ; 0021AA: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0021AC: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 0021AE: provisional 68k btst.l d1, d2
db 0xC8, 0xAE, 0x9D, 0x02 ; 0021B0: provisional 68k and.l -$62fe(a6), d4
db 0x0A, 0xDA ; file 0021B4
db 0x9D, 0x88 ; 0021B6: provisional 68k subx.l -(a0), -(a6)
db 0xDA, 0xD1 ; 0021B8: provisional 68k adda.w (a1), a5
db 0x1D, 0xA9, 0xAA, 0xA9, 0xAA, 0xD1 ; 0021BA: provisional 68k move.b -$5557(a1), -$2f(a6, a2.l)
db 0xFF, 0xFF ; 0021C0: provisional 68k dc.w $ffff
db 0x04, 0x02, 0x8D, 0xAE ; 0021C2: provisional 68k subi.b #$ae, d2
db 0x9D, 0x01 ; 0021C6: provisional 68k subx.b d1, d6
db 0x0B, 0x1F ; 0021C8: provisional 68k btst.l d5, (a7)+
db 0x9A, 0x8B ; 0021CA: provisional 68k sub.l a3, d5
db 0xD9, 0xD1 ; 0021CC: provisional 68k adda.l (a1), a4
db 0x1D, 0x99, 0xAD, 0x8D ; 0021CE: provisional 68k move.b (a1)+, ([], a2.l * 4)
db 0xDA, 0xAA, 0xC1, 0xFF ; 0021D2: provisional 68k add.l -$3e01(a2), d5
db 0xFF, 0x05 ; 0021D6: provisional 68k dc.w $ff05
db 0x09, 0x8D, 0xAE, 0xE9 ; 0021D8: provisional 68k movep.w d4, -$5117(a5)
db 0xDC, 0xA9, 0xAB, 0xD9 ; 0021DC: provisional 68k add.l -$5427(a1), d6
db 0xA1, 0x1D ; 0021E0: provisional 68k dc.w $a11d
db 0xDD, 0xFF ; file 0021E2
db 0xFF, 0x05 ; 0021E4: provisional 68k dc.w $ff05
db 0x09, 0x1C ; 0021E6: provisional 68k btst.l d4, (a4)+
db 0xDA, 0x9E ; 0021E8: provisional 68k add.l (a6)+, d5
db 0xED, 0xD9 ; file 0021EA
db 0x9A, 0xAE, 0x91, 0xCD ; 0021EC: provisional 68k sub.l -$6e33(a6), d5
db 0xAD, 0xFF ; 0021F0: provisional 68k dc.w $adff
db 0xFF, 0x06 ; 0021F2: provisional 68k dc.w $ff06
db 0x08, 0xCF ; file 0021F4
db 0x8A, 0x99 ; 0021F6: provisional 68k or.l (a1)+, d5
db 0xAD, 0xAA ; 0021F8: provisional 68k dc.w $adaa
db 0xA9, 0xE9 ; 0021FA: provisional 68k dc.w $a9e9
db 0xAA, 0xAD ; 0021FC: provisional 68k dc.w $aaad
db 0xFF, 0xFF ; 0021FE: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0xF8, 0xD9 ; 002200: provisional 68k movep.w -$727(a3), d3
db 0x9A, 0x9A ; 002204: provisional 68k sub.l (a2)+, d5
db 0xDA, 0xA9, 0x9E, 0xEA ; 002206: provisional 68k add.l -$6116(a1), d5
db 0xDD, 0xAA, 0xAD, 0xDC ; 00220A: provisional 68k add.l d6, -$5224(a2)
db 0xFF, 0xFF ; 00220E: provisional 68k dc.w $ffff
db 0x08, 0x0D ; file 002210
db 0xF8, 0xA9 ; 002212: provisional 68k dc.w $f8a9
db 0xEE, 0xD8 ; file 002214
db 0xAA, 0xA9 ; 002216: provisional 68k dc.w $aaa9
db 0x99, 0x99 ; 002218: provisional 68k sub.l d4, (a1)+
db 0xEE, 0xEE ; file 00221A
db 0x9A, 0xDD ; 00221C: provisional 68k suba.w (a5)+, a5
db 0xDD, 0xDD ; 00221E: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 002220: provisional 68k dc.w $ffff
db 0x09, 0x0D, 0xFD, 0x9E ; 002222: provisional 68k movep.w -$262(a5), d4
db 0xE9, 0xE9 ; file 002226
db 0x9A, 0xAA, 0x99, 0x99 ; 002228: provisional 68k sub.l -$6667(a2), d5
db 0xEE, 0xEE ; file 00222C
db 0xE9, 0x99 ; 00222E: provisional 68k rol.l #$4, d1
db 0x99, 0xA1 ; 002230: provisional 68k sub.l d4, -(a1)
db 0xFF, 0xFF ; 002232: provisional 68k dc.w $ffff
db 0x09, 0x0D, 0x1C, 0x8A ; 002234: provisional 68k movep.w $1c8a(a5), d4
db 0xEE, 0xEE, 0xEE, 0xEA ; file 002238
db 0xDD, 0xAD, 0xAA, 0xAA ; 00223C: provisional 68k add.l d6, -$5556(a5)
db 0xA9, 0x9E ; 002240: provisional 68k dc.w $a99e
db 0x9E, 0xEA, 0xFF, 0xFF ; 002242: provisional 68k suba.w -$1(a2), a7
db 0x0A, 0x0D ; file 002246
db 0xC8, 0xA9, 0xA9, 0xEE ; 002248: provisional 68k and.l -$5612(a1), d4
db 0xEE, 0xE8 ; file 00224C
db 0x98, 0xB8, 0x88, 0x88 ; 00224E: provisional 68k sub.l $8888.w, d4
db 0xDA, 0xAA, 0xE9, 0xD1 ; 002252: provisional 68k add.l -$162f(a2), d5
db 0xFF, 0xFF ; 002256: provisional 68k dc.w $ffff
db 0x0A, 0x0D, 0x18, 0x88 ; file 002258
db 0xDA, 0x9E ; 00225C: provisional 68k add.l (a6)+, d5
db 0xEE, 0xEE ; file 00225E
db 0xE8, 0xB8 ; 002260: provisional 68k ror.l d4, d0
db 0x88, 0xBB, 0x88, 0x88 ; 002262: provisional 68k or.l $21ec(pc, a0.l), d4
db 0xDA, 0xA1 ; 002266: provisional 68k add.l -(a1), d5
db 0xFF, 0xFF ; 002268: provisional 68k dc.w $ffff
db 0x0B, 0x0C, 0x88, 0x88 ; 00226A: provisional 68k movep.w -$7778(a4), d5
db 0x8D, 0xAA, 0xA9, 0x9D ; 00226E: provisional 68k or.l d6, -$5663(a2)
db 0xAA, 0xAA ; 002272: provisional 68k dc.w $aaaa
db 0xAA, 0xA8 ; 002274: provisional 68k dc.w $aaa8
db 0xB8, 0x88 ; 002276: provisional 68k cmp.l a0, d4
db 0xAA, 0xFF ; 002278: provisional 68k dc.w $aaff
db 0xFF, 0x0C ; 00227A: provisional 68k dc.w $ff0c
db 0x0B, 0x88, 0xBB, 0x88 ; 00227C: provisional 68k movep.w d5, -$4478(a0)
db 0x88, 0x8D ; file 002280
db 0xDA, 0xDD ; 002282: provisional 68k adda.w (a5)+, a5
db 0xAA, 0xA8 ; 002284: provisional 68k dc.w $aaa8
db 0xB8, 0x88 ; 002286: provisional 68k cmp.l a0, d4
db 0x8D, 0xFF ; file 002288
db 0xFF, 0x0D ; 00228A: provisional 68k dc.w $ff0d
db 0x0A, 0x1F, 0xFF, 0x8B ; 00228C: provisional 68k eori.b #$8b, (a7)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 002290
db 0xFF, 0xFF ; 002298: provisional 68k dc.w $ffff
db 0x10, 0x07 ; 00229A: provisional 68k move.b d7, d0
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00229C
db 0x88, 0x81 ; 0022A2: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0022A4: provisional 68k dc.w $ffff
db 0x13, 0x02 ; 0022A6: provisional 68k move.b d2, -(a1)
db 0x18, 0x88, 0x81, 0xFF ; file 0022A8
db 0xFF, 0xFF ; 0022AC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022AE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022B0: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0022B2: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 0022B4: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 0022B8: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0022BE
db 0x10, 0x10 ; 0022C2: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0022C4: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0022C6: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0022C8: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0022CA: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0022CE: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0022D2: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0022D4: provisional 68k neg.w d4
db 0x2C, 0x34, 0x3C, 0x90 ; 0022D6: provisional 68k move.l -$70(a4, d3.l), d6
db 0x94, 0x94 ; 0022DA: provisional 68k sub.l (a4), d2
db 0xD8, 0xDC ; 0022DC: provisional 68k adda.w (a4)+, a4
db 0xDC, 0x58 ; 0022DE: provisional 68k add.w (a0)+, d6
db 0x58, 0x74, 0x2C, 0x2C ; 0022E0: provisional 68k addq.w #$4, $2c(a4, d2.l)
db 0x6C, 0xB8 ; 0022E4: provisional 68k bge.b $229e
db 0xBC, 0xC0 ; 0022E6: provisional 68k cmpa.w d0, a6
db 0xA4, 0xA4 ; 0022E8: provisional 68k dc.w $a4a4
db 0xB4, 0x70, 0x74, 0x80 ; 0022EA: provisional 68k cmp.w -$80(a0, d7.w), d2
db 0xFF, 0xFF ; 0022EE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022F0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022F2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022F4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022F6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022F8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022FA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022FC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0022FE: provisional 68k dc.w $ffff
db 0x04, 0x01, 0x1F, 0xB1 ; 002300: provisional 68k subi.b #$b1, d1
db 0xFF, 0xFF ; 002304: provisional 68k dc.w $ffff
db 0x04, 0x01, 0x1B, 0x9B ; 002306: provisional 68k subi.b #$9b, d1
db 0xFF, 0xFF ; 00230A: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 00230C: provisional 68k btst.l d2, d1
db 0xF9, 0xF1 ; 00230E: provisional 68k dc.w $f9f1
db 0xFF, 0xFF ; 002310: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 002312: provisional 68k btst.l d2, d1
db 0x1F, 0xEF ; file 002314
db 0x05, 0x01 ; 002316: provisional 68k btst.l d2, d1
db 0x1C, 0xBC, 0xFF, 0xFF ; 002318: provisional 68k move.b #$ff, (a6)
db 0x05, 0x02 ; 00231C: provisional 68k btst.l d2, d2
db 0x1C, 0xFE ; file 00231E
db 0x91, 0x03 ; 002320: provisional 68k subx.b d3, d0
db 0x05, 0xCC, 0xB9, 0xE9 ; 002322: provisional 68k movep.l d2, -$4617(a4)
db 0xFB, 0xCB ; 002326: provisional 68k dc.w $fbcb
db 0xC1, 0xFF ; file 002328
db 0xFF, 0x05 ; 00232A: provisional 68k dc.w $ff05
db 0x02, 0x1C, 0x8B, 0xDB ; 00232C: provisional 68k andi.b #$db, (a4)+
db 0x02, 0x07, 0xCB, 0x9E ; 002330: provisional 68k andi.b #$9e, d7
db 0x9F, 0xFF ; file 002334
db 0x9E, 0xED, 0xDE, 0xB1 ; 002336: provisional 68k suba.w -$214f(a5), a7
db 0xFF, 0xFF ; 00233A: provisional 68k dc.w $ffff
db 0x06, 0x0C ; file 00233C
db 0x1C, 0xFA, 0xB1, 0xBD ; 00233E: provisional 68k move.b $ffffd4fd(pc), (a6)+
db 0xAE, 0xBB ; 002342: provisional 68k dc.w $aebb
db 0x9A, 0xD9 ; 002344: provisional 68k suba.w (a1)+, a5
db 0xBB, 0xBC, 0xCB, 0xFE, 0x9C, 0xFF ; file 002346
db 0xFF, 0x07 ; 00234C: provisional 68k dc.w $ff07
db 0x06, 0xC9 ; 00234E: provisional 68k dc.w $6c9
db 0xAB, 0xFA ; 002350: provisional 68k dc.w $abfa
db 0xDC, 0x18 ; 002352: provisional 68k add.b (a0)+, d6
db 0xF9, 0xB1 ; 002354: provisional 68k dc.w $f9b1
db 0x03, 0x01 ; 002356: provisional 68k btst.l d1, d1
db 0xCB, 0xBC ; file 002358
db 0xFF, 0xFF ; 00235A: provisional 68k dc.w $ffff
db 0x07, 0x05 ; 00235C: provisional 68k btst.l d3, d5
db 0x1C, 0x9D ; 00235E: provisional 68k move.b (a5)+, (a6)
db 0xDE, 0xF1, 0x1C, 0xBF ; 002360: provisional 68k adda.w -$41(a1, d1.l), a7
db 0xFF, 0xFF ; 002364: provisional 68k dc.w $ffff
db 0x08, 0x02 ; file 002366
db 0x8D, 0xAE, 0xFC, 0x01 ; 002368: provisional 68k or.l d6, -$3ff(a6)
db 0x00, 0xFF ; file 00236C
db 0x01, 0x04 ; 00236E: provisional 68k btst.l d0, d4
db 0xCB, 0x9F ; 002370: provisional 68k and.l d5, (a7)+
db 0xBB, 0xFB, 0xC1, 0xFF, 0xFF, 0x08, 0x02, 0xCB ; 002372: provisional 68k cmpa.l ([$ff08263f]), a5
db 0x9E, 0xDF ; 00237A: provisional 68k suba.w (a7)+, a7
db 0x01, 0x00 ; 00237C: provisional 68k btst.l d0, d0
db 0x9F, 0x01 ; 00237E: provisional 68k subx.b d1, d7
db 0x05, 0xC9, 0xA9, 0xFF ; 002380: provisional 68k movep.l d2, -$5601(a1)
db 0x99, 0xFB, 0xC1, 0xFF, 0xFF, 0x08, 0x04, 0x18 ; 002384: provisional 68k suba.l ([$ff08279e]), a4
db 0x8F, 0xDE ; 00238C: provisional 68k divs.w (a6)+, d7
db 0xBC, 0xE9, 0x01, 0x05 ; 00238E: provisional 68k cmpa.w $105(a1), a6
db 0xCF, 0xB8, 0xCC, 0xCC ; 002392: provisional 68k and.l d7, $cccc.w
db 0xF9, 0xF1 ; 002396: provisional 68k dc.w $f9f1
db 0xFF, 0xFF ; 002398: provisional 68k dc.w $ffff
db 0x09, 0x06 ; 00239A: provisional 68k btst.l d4, d6
db 0xC8, 0xB9, 0xDD, 0xDD, 0xB1, 0xBF ; 00239C: provisional 68k and.l $ddddb1bf.l, d4
db 0xC1, 0x03 ; 0023A2: provisional 68k abcd.b d3, d0
db 0x00, 0xC1 ; file 0023A4
db 0xFF, 0xFF ; 0023A6: provisional 68k dc.w $ffff
db 0x09, 0x06 ; 0023A8: provisional 68k btst.l d4, d6
db 0x18, 0xFD ; file 0023AA
db 0xFF, 0xED ; 0023AC: provisional 68k dc.w $ffed
db 0xDB, 0xF9, 0xC1, 0xFF, 0xFF, 0x0A ; 0023AE: provisional 68k adda.l $c1ffff0a.l, a5
db 0x05, 0xBE, 0xD8, 0xBF ; file 0023B4
db 0x9D, 0xAD, 0xBC, 0xFF ; 0023B8: provisional 68k sub.l d6, -$4301(a5)
db 0xFF, 0x0A ; 0023BC: provisional 68k dc.w $ff0a
db 0x08, 0x1B, 0xDE, 0xFF ; file 0023BE
db 0xFF, 0x9D ; 0023C2: provisional 68k dc.w $ff9d
db 0xDD, 0xED, 0xDE, 0xFC ; 0023C4: provisional 68k adda.l -$2104(a5), a6
db 0xFF, 0xFF ; 0023C8: provisional 68k dc.w $ffff
db 0x0A, 0x0A ; file 0023CA
db 0x1C, 0x9A ; 0023CC: provisional 68k move.b (a2)+, (a6)
db 0xAA, 0xDE ; 0023CE: provisional 68k dc.w $aade
db 0x9F, 0x9A ; 0023D0: provisional 68k sub.l d7, (a2)+
db 0xAA, 0xAA ; 0023D2: provisional 68k dc.w $aaaa
db 0xAD, 0xFB ; 0023D4: provisional 68k dc.w $adfb
db 0xC1, 0xFF ; file 0023D6
db 0xFF, 0x0A ; 0023D8: provisional 68k dc.w $ff0a
db 0x0C, 0xCC ; file 0023DA
db 0xFD, 0xAA ; 0023DC: provisional 68k dc.w $fdaa
db 0xAA, 0xA9 ; 0023DE: provisional 68k dc.w $aaa9
db 0xFF, 0x9F ; 0023E0: provisional 68k dc.w $ff9f
db 0xED, 0xAA ; 0023E2: provisional 68k lsl.l d6, d2
db 0xDE, 0x99 ; 0023E4: provisional 68k add.l (a1)+, d7
db 0xFF, 0xF1 ; 0023E6: provisional 68k dc.w $fff1
db 0xFF, 0xFF ; 0023E8: provisional 68k dc.w $ffff
db 0x0A, 0x0C, 0x18, 0x8B ; file 0023EA
db 0xF9, 0xAA ; 0023EE: provisional 68k dc.w $f9aa
db 0xAA, 0xAF ; 0023F0: provisional 68k dc.w $aaaf
db 0xBB, 0xBB ; file 0023F2
db 0xBB, 0xF9, 0xED, 0xAA, 0xAF, 0xFF ; 0023F4: provisional 68k cmpa.l $edaaafff.l, a5
db 0xFF, 0x0B ; 0023FA: provisional 68k dc.w $ff0b
db 0x0C, 0x88 ; file 0023FC
db 0xBB, 0x9D ; 0023FE: provisional 68k eor.l d5, (a5)+
db 0xAA, 0xAA ; 002400: provisional 68k dc.w $aaaa
db 0xDF, 0x88 ; 002402: provisional 68k addx.l -(a0), -(a7)
db 0x88, 0x88 ; file 002404
db 0xBB, 0xF9, 0xAA, 0xC1, 0xFF, 0xFF ; 002406: provisional 68k cmpa.l $aac1ffff.l, a5
db 0x0B, 0x0C, 0x88, 0x88 ; 00240C: provisional 68k movep.w -$7778(a4), d5
db 0x88, 0xB9, 0x9E, 0xAB, 0x88, 0xBB ; 002410: provisional 68k or.l $9eab88bb.l, d4
db 0x88, 0x88 ; file 002416
db 0x88, 0x9E ; 002418: provisional 68k or.l (a6)+, d4
db 0xF1, 0xFF ; 00241A: provisional 68k dc.w $f1ff
db 0xFF, 0x0C ; 00241C: provisional 68k dc.w $ff0c
db 0x0B, 0x18 ; 00241E: provisional 68k btst.l d5, (a0)+
db 0x88, 0x88 ; file 002420
db 0x88, 0xBB, 0xBF, 0xFF, 0xFF, 0xB8, 0x88, 0xBB ; 002422: provisional 68k or.l ([$ffb8acdf]), d4
db 0xFC, 0xFF ; 00242A: provisional 68k dc.w $fcff
db 0xFF, 0x0E ; 00242C: provisional 68k dc.w $ff0e
db 0x09, 0x1C ; 00242E: provisional 68k btst.l d4, (a4)+
db 0x88, 0x88, 0x88, 0x88 ; file 002430
db 0xBF, 0xF8, 0x88, 0x88 ; 002434: provisional 68k cmpa.l $8888.w, a7
db 0x8F, 0xFF ; file 002438
db 0xFF, 0x0F ; 00243A: provisional 68k dc.w $ff0f
db 0x08, 0xCC, 0xC8, 0x88, 0x88, 0x88 ; file 00243C
db 0xB8, 0x88 ; 002442: provisional 68k cmp.l a0, d4
db 0x88, 0x8B ; file 002444
db 0xFF, 0xFF ; 002446: provisional 68k dc.w $ffff
db 0x11, 0x06 ; 002448: provisional 68k move.b d6, -(a0)
db 0x1C, 0xC8, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 00244A
db 0xFF, 0x13 ; 002452: provisional 68k dc.w $ff13
db 0x04, 0x1C, 0x88, 0x8C ; 002454: provisional 68k subi.b #$8c, (a4)+
db 0x88, 0xC1 ; 002458: provisional 68k divu.w d1, d4
db 0xFF, 0xFF ; 00245A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00245C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00245E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002460: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002462: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 002464: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 002468: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 00246E
db 0x10, 0x10 ; 002472: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 002474: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 002476: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002478: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00247A: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00247E: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 002482: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002484: provisional 68k neg.w d4
db 0x30, 0x34, 0x38, 0x90 ; 002486: provisional 68k move.w -$70(a4, d3.l), d0
db 0x94, 0xA4 ; 00248A: provisional 68k sub.l -(a4), d2
db 0x78, 0x7C ; 00248C: provisional 68k moveq #$7c, d4
db 0x84, 0xD8 ; 00248E: provisional 68k divu.w (a0)+, d2
db 0xD8, 0xDC ; 002490: provisional 68k adda.w (a4)+, a4
db 0x3C, 0x3C, 0x6C, 0x0C ; 002492: provisional 68k move.w #$6c0c, d6
db 0x0C, 0x54, 0xB0, 0xB4 ; 002496: provisional 68k cmpi.w #$b0b4, (a4)
db 0xB4, 0x04 ; 00249A: provisional 68k cmp.b d4, d2
db 0x04, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0x08, 0x00, 0x1C, 0xFF ; 00249C: provisional 68k subi.w #$ffff, ([$8001cff])
db 0xFF, 0x08 ; 0024A6: provisional 68k dc.w $ff08
db 0x01, 0x19 ; 0024A8: provisional 68k btst.l d0, (a1)+
db 0xC1, 0xFF ; file 0024AA
db 0xFF, 0x08 ; 0024AC: provisional 68k dc.w $ff08
db 0x01, 0x1A ; 0024AE: provisional 68k btst.l d0, (a2)+
db 0xAC, 0xFF ; 0024B0: provisional 68k dc.w $acff
db 0xFF, 0x08 ; 0024B2: provisional 68k dc.w $ff08
db 0x01, 0x1C ; 0024B4: provisional 68k btst.l d0, (a4)+
db 0x9C, 0xFF ; file 0024B6
db 0xFF, 0x08 ; 0024B8: provisional 68k dc.w $ff08
db 0x01, 0xDD ; 0024BA: provisional 68k bset.b d0, (a5)+
db 0xEA, 0xFF ; file 0024BC
db 0xFF, 0x08 ; 0024BE: provisional 68k dc.w $ff08
db 0x02, 0x18, 0xA9, 0xC1 ; 0024C0: provisional 68k andi.b #$c1, (a0)+
db 0xFF, 0xFF ; 0024C4: provisional 68k dc.w $ffff
db 0x09, 0x01 ; 0024C6: provisional 68k btst.l d4, d1
db 0xCA, 0xC1 ; 0024C8: provisional 68k mulu.w d1, d5
db 0xFF, 0xFF ; 0024CA: provisional 68k dc.w $ffff
db 0x09, 0x01 ; 0024CC: provisional 68k btst.l d4, d1
db 0x89, 0xA1 ; 0024CE: provisional 68k or.l d4, -(a1)
db 0xFF, 0xFF ; 0024D0: provisional 68k dc.w $ffff
db 0x09, 0x01 ; 0024D2: provisional 68k btst.l d4, d1
db 0xDA, 0x91 ; 0024D4: provisional 68k add.l (a1), d5
db 0x02, 0x01, 0x1C, 0xAC ; 0024D6: provisional 68k andi.b #$ac, d1
db 0xFF, 0xFF ; 0024DA: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 0024DC: provisional 68k btst.l d4, d7
db 0x1C, 0x9A ; 0024DE: provisional 68k move.b (a2)+, (a6)
db 0x1C, 0xCA ; file 0024E0
db 0xCA, 0xAA, 0xAC, 0xCC ; 0024E2: provisional 68k and.l -$5334(a2), d5
db 0xFF, 0xFF ; 0024E6: provisional 68k dc.w $ffff
db 0x09, 0x08, 0x1C, 0x9B ; 0024E8: provisional 68k movep.w $1c9b(a0), d4
db 0xAA, 0x99 ; 0024EC: provisional 68k dc.w $aa99
db 0x99, 0x9E ; 0024EE: provisional 68k sub.l d4, (a6)+
db 0xE9, 0xAA ; 0024F0: provisional 68k lsl.l d4, d2
db 0xAC, 0xFF ; 0024F2: provisional 68k dc.w $acff
db 0xFF, 0x09 ; 0024F4: provisional 68k dc.w $ff09
db 0x09, 0xDD ; 0024F6: provisional 68k bset.b d4, (a5)+
db 0xAB, 0xBA ; 0024F8: provisional 68k dc.w $abba
db 0xCC, 0xAE, 0xE9, 0x9A ; 0024FA: provisional 68k and.l -$1666(a6), d6
db 0xA9, 0xEA ; 0024FE: provisional 68k dc.w $a9ea
db 0xC1, 0xFF ; file 002500
db 0xFF, 0x09 ; 002502: provisional 68k dc.w $ff09
db 0x0A, 0xDD ; file 002504
db 0xAB, 0xE8 ; 002506: provisional 68k dc.w $abe8
db 0x8C, 0x9A ; 002508: provisional 68k or.l (a2)+, d6
db 0x88, 0x88, 0x88, 0x8A ; file 00250A
db 0x9A, 0xC1 ; 00250E: provisional 68k suba.w d1, a5
db 0xFF, 0xFF ; 002510: provisional 68k dc.w $ffff
db 0x09, 0x04 ; 002512: provisional 68k btst.l d4, d4
db 0xDD, 0xC9 ; 002514: provisional 68k adda.l a1, a6
db 0x9C, 0x8D ; 002516: provisional 68k sub.l a5, d6
db 0xAC, 0x04 ; 002518: provisional 68k dc.w $ac04
db 0x01, 0x1A ; 00251A: provisional 68k btst.l d0, (a2)+
db 0xA1, 0xFF ; 00251C: provisional 68k dc.w $a1ff
db 0xFF, 0x0A ; 00251E: provisional 68k dc.w $ff0a
db 0x03, 0xCA, 0xAC, 0x8C ; 002520: provisional 68k movep.l d1, -$5374(a2)
db 0xAC, 0x01 ; 002524: provisional 68k dc.w $ac01
db 0x00, 0x1C, 0xFF, 0xFF ; 002526: provisional 68k ori.b #$ff, (a4)+
db 0x0A, 0x03, 0xCE, 0xBA ; 00252A: provisional 68k eori.b #$ba, d3
db 0x8C, 0xAC, 0x01, 0x03 ; 00252E: provisional 68k or.l $103(a4), d6
db 0xAE, 0x99 ; 002532: provisional 68k dc.w $ae99
db 0xAA, 0xC1 ; 002534: provisional 68k dc.w $aac1
db 0xFF, 0xFF ; 002536: provisional 68k dc.w $ffff
db 0x0A, 0x03, 0xCA, 0xE9 ; 002538: provisional 68k eori.b #$e9, d3
db 0xA9, 0xEC ; 00253C: provisional 68k dc.w $a9ec
db 0x01, 0x04 ; 00253E: provisional 68k btst.l d0, d4
db 0xAE, 0xAA ; 002540: provisional 68k dc.w $aeaa
db 0xAA, 0xAA ; 002542: provisional 68k dc.w $aaaa
db 0xC1, 0xFF ; file 002544
db 0xFF, 0x0A ; 002546: provisional 68k dc.w $ff0a
db 0x09, 0x18 ; 002548: provisional 68k btst.l d4, (a0)+
db 0xCA, 0xEE, 0xBA, 0xF1 ; 00254A: provisional 68k mulu.w -$450f(a6), d5
db 0xAC, 0xDD ; 00254E: provisional 68k dc.w $acdd
db 0xD8, 0xCA ; 002550: provisional 68k adda.w a2, a4
db 0xAA, 0xFF ; 002552: provisional 68k dc.w $aaff
db 0xFF, 0x0A ; 002554: provisional 68k dc.w $ff0a
db 0x05, 0x1C ; 002556: provisional 68k btst.l d2, (a4)+
db 0xAC, 0xCA ; 002558: provisional 68k dc.w $acca
db 0xEE, 0xCA ; file 00255A
db 0x91, 0x03 ; 00255C: provisional 68k subx.b d3, d0
db 0x00, 0xCA ; file 00255E
db 0xFF, 0xFF ; 002560: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0x1C, 0xA9 ; 002562: provisional 68k eori.b #$a9, d5
db 0xCC, 0xA9, 0xBB, 0xE1 ; 002566: provisional 68k and.l -$441f(a1), d6
db 0xFF, 0xFF ; 00256A: provisional 68k dc.w $ffff
db 0x0A, 0x07, 0x1C, 0xA9 ; 00256C: provisional 68k eori.b #$a9, d7
db 0xB9, 0xAC, 0xAE, 0xBE ; 002570: provisional 68k eor.l d4, -$5142(a4)
db 0xAC, 0xC1 ; 002574: provisional 68k dc.w $acc1
db 0xFF, 0xFF ; 002576: provisional 68k dc.w $ffff
db 0x0A, 0x08 ; file 002578
db 0x1C, 0x9E ; 00257A: provisional 68k move.b (a6)+, (a6)
db 0xBB, 0xBB ; file 00257C
db 0x9C, 0xAE, 0xBB, 0xBB ; 00257E: provisional 68k sub.l -$4445(a6), d6
db 0xEA, 0xFF ; file 002582
db 0xFF, 0x0B ; 002584: provisional 68k dc.w $ff0b
db 0x08, 0xCA, 0x9B, 0xBB ; file 002586
db 0xBE, 0xAA, 0xEE, 0xEB ; 00258A: provisional 68k cmp.l -$1115(a2), d7
db 0xBB, 0xEA, 0xFF, 0xFF ; 00258E: provisional 68k cmpa.l -$1(a2), a5
db 0x0B, 0x0B, 0xD8, 0xAA ; 002592: provisional 68k movep.w -$2756(a3), d5
db 0xEB, 0xBB ; 002596: provisional 68k rol.l d5, d3
db 0xB9, 0x8C ; 002598: provisional 68k cmpm.l (a4)+, (a4)+
db 0xAA, 0xEE ; 00259A: provisional 68k dc.w $aaee
db 0xE9, 0x9A ; 00259C: provisional 68k rol.l #$4, d2
db 0xCC, 0xC1 ; 00259E: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 0025A0: provisional 68k dc.w $ffff
db 0x0B, 0x0B, 0x18, 0xCC ; 0025A2: provisional 68k movep.w $18cc(a3), d5
db 0xA9, 0xBB ; 0025A6: provisional 68k dc.w $a9bb
db 0xBB, 0xAA, 0x88, 0x8C ; 0025A8: provisional 68k eor.l d5, -$7774(a2)
db 0xCA, 0xEE, 0xE9, 0x9A ; 0025AC: provisional 68k mulu.w -$1666(a6), d5
db 0xFF, 0xFF ; 0025B0: provisional 68k dc.w $ffff
db 0x0B, 0x0C, 0x18, 0x88 ; 0025B2: provisional 68k movep.w $1888(a4), d5
db 0x88, 0xAA, 0xEB, 0xBB ; 0025B6: provisional 68k or.l -$1445(a2), d4
db 0xC8, 0x88, 0x88, 0xCA, 0x99, 0xBB, 0xC1, 0xFF ; file 0025BA
db 0xFF, 0x0C ; 0025C2: provisional 68k dc.w $ff0c
db 0x0B, 0xC8, 0x88, 0x88 ; 0025C4: provisional 68k movep.l d5, -$7778(a0)
db 0xCA, 0x9A ; 0025C8: provisional 68k and.l (a2)+, d5
db 0xCC, 0xAC, 0x88, 0x88 ; 0025CA: provisional 68k and.l -$7778(a4), d6
db 0x8C, 0x9B ; 0025CE: provisional 68k or.l (a3)+, d6
db 0xA1, 0xFF ; 0025D0: provisional 68k dc.w $a1ff
db 0xFF, 0x0D ; 0025D2: provisional 68k dc.w $ff0d
db 0x0A, 0xDD, 0x88, 0x88, 0x88, 0x8A ; file 0025D4
db 0xAA, 0xAA ; 0025DA: provisional 68k dc.w $aaaa
db 0x88, 0x88 ; file 0025DC
db 0xCA, 0xA1 ; 0025DE: provisional 68k and.l -(a1), d5
db 0xFF, 0xFF ; 0025E0: provisional 68k dc.w $ffff
db 0x0F, 0x08, 0x18, 0x88 ; 0025E2: provisional 68k movep.w $1888(a0), d7
db 0x88, 0x88 ; file 0025E6
db 0xCA, 0xA8, 0x88, 0x88 ; 0025E8: provisional 68k and.l -$7778(a0), d5
db 0x8C, 0xFF ; file 0025EC
db 0xFF, 0x11 ; 0025EE: provisional 68k dc.w $ff11
db 0x06, 0x88, 0x88, 0x88, 0xC8, 0x88, 0x88, 0x8A ; file 0025F0
db 0xFF, 0xFF ; 0025F8: provisional 68k dc.w $ffff
db 0x12, 0x05 ; 0025FA: provisional 68k move.b d5, d1
db 0xDC, 0x88 ; 0025FC: provisional 68k add.l a0, d6
db 0x88, 0x88, 0x88, 0x8C ; file 0025FE
db 0xFF, 0xFF ; 002602: provisional 68k dc.w $ffff
db 0x13, 0x04 ; 002604: provisional 68k move.b d4, -(a1)
db 0xC8, 0x88, 0x88, 0x88, 0x8D, 0xFF ; file 002606
db 0xFF, 0x13 ; 00260C: provisional 68k dc.w $ff13
db 0x04, 0x1C, 0xCC, 0xCC ; 00260E: provisional 68k subi.b #$cc, (a4)+
db 0xC8, 0xDD ; 002612: provisional 68k mulu.w (a5)+, d4
db 0xFF, 0xFF ; 002614: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002616: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002618: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00261A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00261C: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 00261E: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 002622: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 002628
db 0x10, 0x10 ; 00262C: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00262E: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 002630: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002632: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 002634: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002638: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00263C: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00263E: provisional 68k neg.w d4
db 0x30, 0x34, 0x38, 0x78 ; 002640: provisional 68k move.w $78(a4, d3.l), d0
db 0x7C, 0x84 ; 002644: provisional 68k moveq #$84, d6
db 0xD4, 0xD4 ; 002646: provisional 68k adda.w (a4), a2
db 0xD8, 0x50 ; 002648: provisional 68k add.w (a0), d4
db 0x54, 0x70, 0x10, 0x14 ; 00264A: provisional 68k addq.w #$2, $14(a0, d1.w)
db 0x44, 0xA4 ; 00264E: provisional 68k neg.l -(a4)
db 0xA4, 0xA8 ; 002650: provisional 68k dc.w $a4a8
db 0x0C, 0x0C ; file 002652
db 0x70, 0x30 ; 002654: provisional 68k moveq #$30, d0
db 0x34, 0x60 ; 002656: provisional 68k movea.w -(a0), a2
db 0x0E, 0x00, 0x99, 0xFF ; file 002658
db 0xFF, 0x0D ; 00265C: provisional 68k dc.w $ff0d
db 0x01, 0x1F ; 00265E: provisional 68k btst.l d0, (a7)+
db 0x9B, 0xFF ; file 002660
db 0xFF, 0x0D ; 002662: provisional 68k dc.w $ff0d
db 0x01, 0x1B ; 002664: provisional 68k btst.l d0, (a3)+
db 0x9F, 0xFF ; file 002666
db 0xFF, 0x0D ; 002668: provisional 68k dc.w $ff0d
db 0x01, 0xFD, 0x91, 0xFF ; file 00266A
db 0xFF, 0x0D ; 00266E: provisional 68k dc.w $ff0d
db 0x01, 0x9D ; 002670: provisional 68k bclr.b d0, (a5)+
db 0xB1, 0xFF ; file 002672
db 0xFF, 0x0C ; 002674: provisional 68k dc.w $ff0c
db 0x02, 0x1F, 0x99, 0xF1 ; 002676: provisional 68k andi.b #$f1, (a7)+
db 0xFF, 0xFF ; 00267A: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0x1F, 0xBF ; 00267C: provisional 68k cmpi.b #$bf, d1
db 0xFF, 0xFF ; 002680: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0x1B, 0x9F ; 002682: provisional 68k cmpi.b #$9f, d1
db 0xFF, 0xFF ; 002686: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xF9, 0x9F ; 002688: provisional 68k cmpi.b #$9f, d1
db 0xFF, 0xFF ; 00268C: provisional 68k dc.w $ffff
db 0x0B, 0x04 ; 00268E: provisional 68k btst.l d5, d4
db 0x1F, 0xFD ; file 002690
db 0xBF, 0xFB, 0x9B, 0xFF, 0xFF, 0x0B, 0x06, 0xFD ; 002692: provisional 68k cmpa.l ([$ff0b2d91]), a7
db 0xDA, 0xD9 ; 00269A: provisional 68k adda.w (a1)+, a5
db 0xBB, 0x99 ; 00269C: provisional 68k eor.l d5, (a1)+
db 0x9B, 0xE1 ; 00269E: provisional 68k suba.l -(a1), a5
db 0xFF, 0xFF ; 0026A0: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 0026A2: provisional 68k btst.l d5, d7
db 0xDA, 0xAA, 0xDD, 0xDD ; 0026A4: provisional 68k add.l -$2223(a2), d5
db 0xDD, 0xDD ; 0026A8: provisional 68k adda.l (a5)+, a6
db 0x99, 0xB1, 0xFF, 0xFF, 0x0B, 0x07, 0x9D, 0x9D ; 0026AA: provisional 68k sub.l d4, ([$b079d9d])
db 0xFB, 0xDD ; 0026B2: provisional 68k dc.w $fbdd
db 0xDD, 0x99 ; 0026B4: provisional 68k add.l d6, (a1)+
db 0xDD, 0xD9 ; 0026B6: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 0026B8: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0x8B, 0x99 ; 0026BA: provisional 68k movep.w -$7467(a0), d5
db 0xFB, 0xBF ; 0026BE: provisional 68k dc.w $fbbf
db 0xCC, 0xFF, 0xC8, 0xBD, 0x91, 0xFF ; file 0026C0
db 0xFF, 0x0B ; 0026C6: provisional 68k dc.w $ff0b
db 0x03, 0xBD ; file 0026C8
db 0xBB, 0xF9, 0x9C, 0x03, 0x02, 0xEF ; 0026CA: provisional 68k cmpa.l $9c0302ef.l, a5
db 0x9D, 0xB1, 0xFF, 0xFF, 0x0B, 0x03, 0xDA, 0x99 ; 0026D0: provisional 68k sub.l d6, ([$b03da99])
db 0xB9, 0xF1, 0x01, 0x00 ; 0026D8: provisional 68k cmpa.l (a1, d0.w), a4
db 0xFF, 0x02 ; 0026DC: provisional 68k dc.w $ff02
db 0x01, 0x1B ; 0026DE: provisional 68k btst.l d0, (a3)+
db 0xB1, 0xFF ; file 0026E0
db 0xFF, 0x0B ; 0026E2: provisional 68k dc.w $ff0b
db 0x07, 0xBD ; file 0026E4
db 0xAD, 0xDD ; 0026E6: provisional 68k dc.w $addd
db 0xF1, 0x1B ; 0026E8: provisional 68k dc.w $f11b
db 0xAD, 0x9B ; 0026EA: provisional 68k dc.w $ad9b
db 0xBF, 0xFF ; file 0026EC
db 0xFF, 0x0B ; 0026EE: provisional 68k dc.w $ff0b
db 0x08, 0xF9 ; file 0026F0
db 0xDD, 0xDA ; 0026F2: provisional 68k adda.l (a2)+, a6
db 0xF1, 0xFB ; 0026F4: provisional 68k dc.w $f1fb
db 0x99, 0xB9, 0x9D, 0x91, 0xFF, 0xFF ; 0026F6: provisional 68k sub.l d4, $9d91ffff.l
db 0x0B, 0x09, 0xF9, 0x9B ; 0026FC: provisional 68k movep.w -$665(a1), d5
db 0x9A, 0xDF ; 002700: provisional 68k suba.w (a7)+, a5
db 0xF9, 0x8F ; 002702: provisional 68k dc.w $f98f
db 0xFF, 0xB9 ; 002704: provisional 68k dc.w $ffb9
db 0x99, 0xB1, 0xFF, 0xFF, 0x0B, 0x05, 0xFD, 0xDB ; 002706: provisional 68k sub.l d4, ([$b05fddb])
db 0xBB, 0xDD ; 00270E: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xF1, 0x01, 0x02, 0xEF, 0xF9 ; 002710: provisional 68k adda.l ([a1, d0.w], $eff9), a6
db 0x91, 0xFF ; file 002716
db 0xFF, 0x0B ; 002718: provisional 68k dc.w $ff0b
db 0x05, 0xFD, 0xDD, 0xBB ; file 00271A
db 0xBD, 0xAA, 0xB1, 0x02 ; 00271E: provisional 68k eor.l d6, -$4efe(a2)
db 0x01, 0x1E ; 002722: provisional 68k btst.l d0, (a6)+
db 0xF1, 0xFF ; 002724: provisional 68k dc.w $f1ff
db 0xFF, 0x0B ; 002726: provisional 68k dc.w $ff0b
db 0x06, 0xFA ; file 002728
db 0xAA, 0xAA ; 00272A: provisional 68k dc.w $aaaa
db 0x9B, 0x9A ; 00272C: provisional 68k sub.l d5, (a2)+
db 0xA9, 0x9B ; 00272E: provisional 68k dc.w $a99b
db 0xFF, 0xFF ; 002730: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0xF9, 0x9A ; 002732: provisional 68k movep.w -$666(a0), d5
db 0xAA, 0xAD ; 002736: provisional 68k dc.w $aaad
db 0x9B, 0xDA ; 002738: provisional 68k suba.l (a2)+, a5
db 0xAA, 0xAD ; 00273A: provisional 68k dc.w $aaad
db 0xF1, 0xFF ; 00273C: provisional 68k dc.w $f1ff
db 0xFF, 0x0B ; 00273E: provisional 68k dc.w $ff0b
db 0x09, 0x1F ; 002740: provisional 68k btst.l d4, (a7)+
db 0xB9, 0xDA ; 002742: provisional 68k cmpa.l (a2)+, a4
db 0xAA, 0xD9 ; 002744: provisional 68k dc.w $aad9
db 0xBD, 0xDA ; 002746: provisional 68k cmpa.l (a2)+, a6
db 0xAA, 0xA9 ; 002748: provisional 68k dc.w $aaa9
db 0xE1, 0xFF ; file 00274A
db 0xFF, 0x0B ; 00274C: provisional 68k dc.w $ff0b
db 0x0A, 0x18, 0xB8, 0xBD ; 00274E: provisional 68k eori.b #$bd, (a0)+
db 0xAA, 0xAA ; 002752: provisional 68k dc.w $aaaa
db 0x98, 0x8B ; 002754: provisional 68k sub.l a3, d4
db 0xDD, 0xAD, 0xDB, 0xFE ; 002756: provisional 68k add.l d6, -$2402(a5)
db 0xFF, 0xFF ; 00275A: provisional 68k dc.w $ffff
db 0x0C, 0x0A, 0x88, 0x8B ; file 00275C
db 0x9D, 0xAA, 0xAD, 0x88 ; 002760: provisional 68k sub.l d6, -$5278(a2)
db 0x8B, 0xB9, 0xDD, 0x9B, 0xBF, 0xFF ; 002764: provisional 68k or.l d5, $dd9bbfff.l
db 0xFF, 0x0C ; 00276A: provisional 68k dc.w $ff0c
db 0x0A, 0xCC, 0x88, 0x8B ; file 00276C
db 0x9D, 0xAA, 0x98, 0xCC ; 002770: provisional 68k sub.l d6, -$6734(a2)
db 0x88, 0x89 ; file 002774
db 0xDD, 0xDD ; 002776: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 002778: provisional 68k dc.w $ffff
db 0x0E, 0x09, 0x88, 0x88 ; file 00277A
db 0xB9, 0x9B ; 00277E: provisional 68k eor.l d4, (a3)+
db 0x88, 0x88 ; file 002780
db 0x88, 0xBB, 0xDA, 0x91 ; 002782: provisional 68k or.l $2715(pc, a5.l), d4
db 0xFF, 0xFF ; 002786: provisional 68k dc.w $ffff
db 0x0E, 0x09, 0x1F, 0x88, 0x88, 0x89 ; file 002788
db 0xDD, 0x9B ; 00278E: provisional 68k add.l d6, (a3)+
db 0x88, 0x88 ; file 002790
db 0xBD, 0xD1 ; 002792: provisional 68k cmpa.l (a1), a6
db 0xFF, 0xFF ; 002794: provisional 68k dc.w $ffff
db 0x10, 0x07 ; 002796: provisional 68k move.b d7, d0
db 0x88, 0x88 ; file 002798
db 0x88, 0xB9, 0x9B, 0x88, 0x8B, 0xBF ; 00279A: provisional 68k or.l $9b888bbf.l, d4
db 0xFF, 0xFF ; 0027A0: provisional 68k dc.w $ffff
db 0x11, 0x06 ; 0027A2: provisional 68k move.b d6, -(a0)
db 0x88, 0x88 ; file 0027A4
db 0x88, 0xB8, 0x88, 0x88 ; 0027A6: provisional 68k or.l $8888.w, d4
db 0x8F, 0xFF ; file 0027AA
db 0xFF, 0x12 ; 0027AC: provisional 68k dc.w $ff12
db 0x05, 0x18 ; 0027AE: provisional 68k btst.l d2, (a0)+
db 0x88, 0x88, 0x88, 0x88, 0x8B, 0xFF ; file 0027B0
db 0xFF, 0x13 ; 0027B6: provisional 68k dc.w $ff13
db 0x04, 0x18, 0x88, 0x88 ; 0027B8: provisional 68k subi.b #$88, (a0)+
db 0x88, 0x88 ; file 0027BC
db 0xFF, 0xFF ; 0027BE: provisional 68k dc.w $ffff
db 0x13, 0x04 ; 0027C0: provisional 68k move.b d4, -(a1)
db 0x1F, 0xCC, 0xCC, 0x88, 0x8C, 0xFF ; file 0027C2
db 0xFF, 0x16 ; 0027C8: provisional 68k dc.w $ff16
db 0x00, 0x1F, 0xFF, 0xFF ; 0027CA: provisional 68k ori.b #$ff, (a7)+
db 0xFF, 0xFF ; 0027CE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0027D0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0027D2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0027D4: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0027D6: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 0027DA: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0027E0
db 0x10, 0x10 ; 0027E4: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0027E6: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0027E8: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0027EA: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0027EC: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0027F0: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0027F4: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0027F6: provisional 68k neg.w d4
db 0x2C, 0x34, 0x34, 0xA0 ; 0027F8: provisional 68k move.l -$60(a4, d3.w), d6
db 0xA4, 0xAC ; 0027FC: provisional 68k dc.w $a4ac
db 0x7C, 0x80 ; 0027FE: provisional 68k moveq #$80, d6
db 0x84, 0x10 ; 002800: provisional 68k or.b (a0), d2
db 0x14, 0x3C, 0xD4, 0xD4 ; 002802: provisional 68k move.b #$d4, d2
db 0xD8, 0x40 ; 002806: provisional 68k add.w d0, d4
db 0x40, 0x68, 0x08, 0x08 ; 002808: provisional 68k negx.w $808(a0)
db 0x6C, 0x0C ; 00280C: provisional 68k bge.b $281a
db 0x0C, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF ; 00280E: provisional 68k cmpi.w #$ffff, ([$ffffffff])
db 0xFF, 0xFF ; 002818: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00281A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00281C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00281E: provisional 68k dc.w $ffff
db 0x0C, 0x05, 0xD9, 0xAD ; 002820: provisional 68k cmpi.b #$ad, d5
db 0xDD, 0xAA, 0xAD, 0xF1 ; 002824: provisional 68k add.l d6, -$520f(a2)
db 0xFF, 0xFF ; 002828: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 00282A: provisional 68k btst.l d5, d7
db 0x1D, 0x9C, 0xAA, 0x99 ; 00282C: provisional 68k move.b (a4)+, -$67(a6, a2.l)
db 0xAA, 0xAA ; 002830: provisional 68k dc.w $aaaa
db 0xAD, 0xFF ; 002832: provisional 68k dc.w $adff
db 0xFF, 0xFF ; 002834: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0x1D, 0xAA ; 002836: provisional 68k movep.w $1daa(a0), d5
db 0xAA, 0xCC ; 00283A: provisional 68k dc.w $aacc
db 0x99, 0x99 ; 00283C: provisional 68k sub.l d4, (a1)+
db 0x9A, 0xAD, 0xE1, 0xFF ; 00283E: provisional 68k sub.l -$1e01(a5), d5
db 0xFF, 0x0B ; 002842: provisional 68k dc.w $ff0b
db 0x08, 0xBB ; file 002844
db 0xDD, 0xDD ; 002846: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xAA ; 002848: provisional 68k dc.w $aaaa
db 0xAA, 0xDA ; 00284A: provisional 68k dc.w $aada
db 0xA9, 0xA1 ; 00284C: provisional 68k dc.w $a9a1
db 0xFF, 0xFF ; 00284E: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0x1D, 0xAA ; 002850: provisional 68k movep.w $1daa(a0), d5
db 0x88, 0xDD ; 002854: provisional 68k divu.w (a5)+, d4
db 0xDB, 0xBB ; file 002856
db 0xBB, 0x8A ; 002858: provisional 68k cmpm.l (a2)+, (a5)+
db 0x9A, 0xFF ; file 00285A
db 0xFF, 0x0B ; 00285C: provisional 68k dc.w $ff0b
db 0x04, 0x1A, 0xC9, 0xDD ; 00285E: provisional 68k subi.b #$dd, (a2)+
db 0x9A, 0xD1 ; 002862: provisional 68k suba.w (a1), a5
db 0x02, 0x02, 0xBB, 0x8A ; 002864: provisional 68k andi.b #$8a, d2
db 0xA1, 0xFF ; 002868: provisional 68k dc.w $a1ff
db 0xFF, 0x0B ; 00286A: provisional 68k dc.w $ff0b
db 0x04, 0x1D, 0x9C, 0xAA ; 00286C: provisional 68k subi.b #$aa, (a5)+
db 0x99, 0xBB ; file 002870
db 0x03, 0x01 ; 002872: provisional 68k btst.l d1, d1
db 0x1D, 0x9A, 0xFF, 0xFF, 0x0C, 0x02, 0xAA, 0xCC ; 002874: provisional 68k move.b (a2)+, ([$c02aacc])
db 0x9A, 0x01 ; 00287C: provisional 68k sub.b d1, d5
db 0x01, 0xD9 ; 00287E: provisional 68k bset.b d0, (a1)+
db 0xCA, 0x01 ; 002880: provisional 68k and.b d1, d5
db 0x01, 0x1F ; 002882: provisional 68k btst.l d0, (a7)+
db 0xDD, 0xFF ; file 002884
db 0xFF, 0x0C ; 002886: provisional 68k dc.w $ff0c
db 0x02, 0xAA, 0xA9, 0xC9, 0x01, 0x04, 0xDA, 0xAA ; 002888: provisional 68k andi.l #$a9c90104, -$2556(a2)
db 0xA9, 0x9D ; 002890: provisional 68k dc.w $a99d
db 0xE1, 0xFF ; file 002892
db 0xFF, 0x0C ; 002894: provisional 68k dc.w $ff0c
db 0x08, 0x9A ; file 002896
db 0xDA, 0x99 ; 002898: provisional 68k add.l (a1)+, d5
db 0xAD, 0xAD ; 00289A: provisional 68k dc.w $adad
db 0xF1, 0xDA ; 00289C: provisional 68k dc.w $f1da
db 0xAA, 0xD1 ; 00289E: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 0028A0: provisional 68k dc.w $ffff
db 0x0C, 0x08 ; file 0028A2
db 0x99, 0xAD, 0x8A, 0xC9 ; 0028A4: provisional 68k sub.l d4, -$7537(a5)
db 0x9D, 0xE1 ; 0028A8: provisional 68k suba.l -(a1), a6
db 0x1E, 0xDA ; 0028AA: provisional 68k move.b (a2)+, (a7)+
db 0xAD, 0xFF ; 0028AC: provisional 68k dc.w $adff
db 0xFF, 0x0B ; 0028AE: provisional 68k dc.w $ff0b
db 0x05, 0x1D ; 0028B0: provisional 68k btst.l d2, (a5)+
db 0xCC, 0xC9 ; file 0028B2
db 0xAA, 0xAC ; 0028B4: provisional 68k dc.w $aaac
db 0x9A, 0x02 ; 0028B6: provisional 68k sub.b d2, d5
db 0x02, 0xBB ; file 0028B8
db 0xAA, 0xD1 ; 0028BA: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 0028BC: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 0028BE: provisional 68k btst.l d5, d7
db 0x1D, 0x99, 0xCC, 0xC9 ; 0028C0: provisional 68k move.b (a1)+, -$37(a6, a4.l)
db 0xDA, 0x9C ; 0028C4: provisional 68k add.l (a4)+, d5
db 0xAA, 0xD1 ; 0028C6: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 0028C8: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0x1D, 0xDD ; 0028CA: provisional 68k movep.w $1ddd(a0), d5
db 0xAC, 0xCC ; 0028CE: provisional 68k dc.w $accc
db 0xCA, 0xA9, 0xCC, 0xC9 ; 0028D0: provisional 68k and.l -$3337(a1), d5
db 0xD1, 0xFF ; file 0028D4
db 0xFF, 0x0C ; 0028D6: provisional 68k dc.w $ff0c
db 0x07, 0xDA ; 0028D8: provisional 68k bset.b d3, (a2)+
db 0xAA, 0xCC ; 0028DA: provisional 68k dc.w $aacc
db 0xCC, 0x9A ; 0028DC: provisional 68k and.l (a2)+, d6
db 0x99, 0x9C ; 0028DE: provisional 68k sub.l d4, (a4)+
db 0xC9, 0xFF ; file 0028E0
db 0xFF, 0x0C ; 0028E2: provisional 68k dc.w $ff0c
db 0x09, 0x8D, 0x8D, 0x9C ; 0028E4: provisional 68k movep.w d4, -$7264(a5)
db 0xCC, 0xCD ; file 0028E8
db 0x8D, 0xA9, 0xCC, 0x9D ; 0028EA: provisional 68k or.l d6, -$3363(a1)
db 0xF1, 0xFF ; 0028EE: provisional 68k dc.w $f1ff
db 0xFF, 0x0C ; 0028F0: provisional 68k dc.w $ff0c
db 0x09, 0xF8, 0x88, 0x8D ; 0028F2: provisional 68k bset.b d4, $888d.w
db 0x9C, 0xCC ; 0028F6: provisional 68k suba.w a4, a6
db 0xAD, 0x88 ; 0028F8: provisional 68k dc.w $ad88
db 0xDA, 0x99 ; 0028FA: provisional 68k add.l (a1)+, d5
db 0xAD, 0xFF ; 0028FC: provisional 68k dc.w $adff
db 0xFF, 0x0D ; 0028FE: provisional 68k dc.w $ff0d
db 0x0A, 0xB8, 0x88, 0x8A, 0x9C, 0x9D, 0xBB, 0x88 ; 002900: provisional 68k eori.l #$888a9c9d, $bb88.w
db 0x8A, 0x9A ; 002908: provisional 68k or.l (a2)+, d5
db 0xAD, 0xD1 ; 00290A: provisional 68k dc.w $add1
db 0xFF, 0xFF ; 00290C: provisional 68k dc.w $ffff
db 0x0E, 0x09 ; file 00290E
db 0xB8, 0x88 ; 002910: provisional 68k cmp.l a0, d4
db 0xDA, 0xAD, 0xDD, 0x88 ; 002912: provisional 68k add.l -$2278(a5), d5
db 0xB8, 0xDA ; 002916: provisional 68k cmpa.w (a2)+, a4
db 0x99, 0xA1 ; 002918: provisional 68k sub.l d4, -(a1)
db 0xFF, 0xFF ; 00291A: provisional 68k dc.w $ffff
db 0x0F, 0x08, 0x88, 0x88 ; 00291C: provisional 68k movep.w -$7778(a0), d7
db 0x8D, 0xAA, 0xAD, 0x88 ; 002920: provisional 68k or.l d6, -$5278(a2)
db 0x88, 0xD9 ; 002924: provisional 68k divu.w (a1)+, d4
db 0x91, 0xFF ; file 002926
db 0xFF, 0x10 ; 002928: provisional 68k dc.w $ff10
db 0x07, 0x88, 0x88, 0x8D ; 00292A: provisional 68k movep.w d3, -$7773(a0)
db 0xDA, 0xA8, 0x88, 0x8A ; 00292E: provisional 68k add.l -$7776(a0), d5
db 0x9D, 0xFF ; file 002932
db 0xFF, 0x11 ; 002934: provisional 68k dc.w $ff11
db 0x06, 0xD8, 0x88, 0x88 ; file 002936
db 0xAA, 0xD8 ; 00293A: provisional 68k dc.w $aad8
db 0x8D, 0xDD ; 00293C: provisional 68k divs.w (a5)+, d6
db 0xFF, 0xFF ; 00293E: provisional 68k dc.w $ffff
db 0x12, 0x05 ; 002940: provisional 68k move.b d5, d1
db 0xB8, 0x88 ; 002942: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x8D ; file 002944
db 0xFF, 0xFF ; 002948: provisional 68k dc.w $ffff
db 0x13, 0x04 ; 00294A: provisional 68k move.b d4, -(a1)
db 0x18, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 00294C
db 0xFF, 0x13 ; 002952: provisional 68k dc.w $ff13
db 0x04, 0x1F, 0x88, 0x88 ; 002954: provisional 68k subi.b #$88, (a7)+
db 0x88, 0x88 ; file 002958
db 0xFF, 0xFF ; 00295A: provisional 68k dc.w $ffff
db 0x14, 0x03 ; 00295C: provisional 68k move.b d3, d2
db 0x1F, 0xFB ; file 00295E
db 0xB8, 0x81 ; 002960: provisional 68k cmp.l d1, d4
db 0xFF, 0xFF ; 002962: provisional 68k dc.w $ffff
db 0x17, 0x00 ; 002964: provisional 68k move.b d0, -(a3)
db 0xD1, 0xFF ; file 002966
db 0xFF, 0xFF ; 002968: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00296A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00296C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00296E: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 002970: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 002972: provisional 68k ori.b #$0, d7
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x00 ; 002976: provisional 68k ori.b #$30, $0(a0)
db 0x00, 0x58, 0x00, 0x00 ; 00297C: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x14 ; 002980: provisional 68k ori.b #$14, d0
db 0x00, 0x18, 0x00, 0x00 ; 002984: provisional 68k ori.b #$0, (a0)+
db 0x00, 0x0A ; file 002988
db 0x00, 0x06, 0x00, 0x0A ; 00298A: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 00298E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 002992: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 002996: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 00299A: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 00299E: provisional 68k ori.b #$5, d4
db 0x00, 0x04, 0x00, 0x03 ; 0029A2: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 0029A6: provisional 68k ori.b #$1, d2
db 0x00, 0x0C ; file 0029AA
db 0x02, 0xB2, 0x05, 0x5E, 0x08, 0x0A, 0x0A, 0xB8 ; 0029AC: provisional 68k andi.l #$55e080a, -$48(a2, d0.l)
db 0x0D, 0x60 ; 0029B4: provisional 68k bchg.b d6, -(a0)
db 0x00, 0x00, 0x00, 0x00 ; 0029B6: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 0029BA: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 0029C0
db 0x10, 0x10 ; 0029C4: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0029C6: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0029C8: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0029CA: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0029CC: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0029D0: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0029D4: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0029D6: provisional 68k neg.w d4
db 0x2C, 0x34, 0x4C, 0xA0 ; 0029D8: provisional 68k move.l -$60(a4, d4.l), d6
db 0xA4, 0xA8 ; 0029DC: provisional 68k dc.w $a4a8
db 0x70, 0x74 ; 0029DE: provisional 68k moveq #$74, d0
db 0x88, 0xE0 ; 0029E0: provisional 68k divu.w -(a0), d4
db 0xE4, 0xE0 ; 0029E2: provisional 68k roxr.w -(a0)
db 0x60, 0x68 ; 0029E4: provisional 68k bra.b $2a4e
db 0x6C, 0x0C ; 0029E6: provisional 68k bge.b $29f4
db 0x10, 0x50 ; file 0029E8
db 0x34, 0x38, 0x6C, 0x08 ; 0029EA: provisional 68k move.w $6c08.w, d2
db 0x08, 0x6C ; file 0029EE
db 0xFF, 0xFF ; 0029F0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0029F2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0029F4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0029F6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0029F8: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x1F, 0xFF ; 0029FA: provisional 68k ori.b #$ff, d0
db 0xFF, 0x00 ; 0029FE: provisional 68k dc.w $ff00
db 0x01, 0x1A ; 002A00: provisional 68k btst.l d0, (a2)+
db 0xF1, 0xFF ; 002A02: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 002A04: provisional 68k dc.w $ff00
db 0x01, 0x19 ; 002A06: provisional 68k btst.l d0, (a1)+
db 0x9F, 0xFF ; file 002A08
db 0xFF, 0x00 ; 002A0A: provisional 68k dc.w $ff00
db 0x02, 0x1E, 0x9C, 0xF1 ; 002A0C: provisional 68k andi.b #$f1, (a6)+
db 0xFF, 0xFF ; 002A10: provisional 68k dc.w $ffff
db 0x01, 0x01 ; 002A12: provisional 68k btst.l d0, d1
db 0x9B, 0xA1 ; 002A14: provisional 68k sub.l d5, -(a1)
db 0xFF, 0xFF ; 002A16: provisional 68k dc.w $ffff
db 0x01, 0x01 ; 002A18: provisional 68k btst.l d0, d1
db 0xCB, 0x9E ; 002A1A: provisional 68k and.l d5, (a6)+
db 0xFF, 0xFF ; 002A1C: provisional 68k dc.w $ffff
db 0x01, 0x01 ; 002A1E: provisional 68k btst.l d0, d1
db 0xEA, 0x9F ; 002A20: provisional 68k ror.l #$5, d7
db 0xFF, 0xFF ; 002A22: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 002A24: provisional 68k btst.l d0, d2
db 0x1E, 0x99 ; 002A26: provisional 68k move.b (a1)+, (a7)
db 0xF1, 0x02 ; 002A28: provisional 68k dc.w $f102
db 0x02, 0x1F, 0xAA, 0x91 ; 002A2A: provisional 68k andi.b #$91, (a7)+
db 0xFF, 0xFF ; 002A2E: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 002A30: provisional 68k btst.l d0, d2
db 0x1F, 0x9B, 0xAF, 0x02, 0x02, 0x1A ; 002A32: provisional 68k move.b (a3)+, ([a7, a2.l * 8], $21a)
db 0xBB, 0xA1 ; 002A38: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 002A3A: provisional 68k dc.w $ffff
db 0x02, 0x01, 0xE9, 0xBE ; 002A3C: provisional 68k andi.b #$be, d1
db 0x02, 0x02, 0x1C, 0xBB ; 002A40: provisional 68k andi.b #$bb, d2
db 0x91, 0xFF ; file 002A44
db 0xFF, 0x02 ; 002A46: provisional 68k dc.w $ff02
db 0x02, 0xDA ; file 002A48
db 0xBB, 0xE1 ; 002A4A: provisional 68k cmpa.l -(a1), a5
db 0x01, 0x02 ; 002A4C: provisional 68k btst.l d0, d2
db 0xD8, 0x9B ; 002A4E: provisional 68k add.l (a3)+, d4
db 0xA1, 0xFF ; 002A50: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 002A52: provisional 68k dc.w $ff02
db 0x02, 0x1C, 0xBB, 0x91 ; 002A54: provisional 68k andi.b #$91, (a4)+
db 0x01, 0x05 ; 002A58: provisional 68k btst.l d0, d5
db 0xDD, 0xAB, 0x91, 0xFE ; 002A5A: provisional 68k add.l d6, -$6e02(a3)
db 0x9B, 0xB9, 0xFF, 0xFF, 0x02, 0x02 ; 002A5E: provisional 68k sub.l d5, $ffff0202.l
db 0x1E, 0xA9, 0x9F, 0x01 ; 002A64: provisional 68k move.b -$60ff(a1), (a7)
db 0x05, 0x1F ; 002A68: provisional 68k btst.l d2, (a7)+
db 0xAB, 0x9E ; 002A6A: provisional 68k dc.w $ab9e
db 0xFE, 0x9B ; 002A6C: provisional 68k dc.w $fe9b
db 0xBA, 0xFF ; file 002A6E
db 0xFF, 0x03 ; 002A70: provisional 68k dc.w $ff03
db 0x01, 0x8A, 0xBC, 0x01 ; 002A72: provisional 68k movep.w d0, -$43ff(a2)
db 0x05, 0x1F ; 002A76: provisional 68k btst.l d2, (a7)+
db 0xAB, 0xBC ; 002A78: provisional 68k dc.w $abbc
db 0xDD, 0xC9 ; 002A7A: provisional 68k adda.l a1, a6
db 0xBA, 0xFF ; file 002A7C
db 0xFF, 0x03 ; 002A7E: provisional 68k dc.w $ff03
db 0x08, 0x8C ; file 002A80
db 0xB9, 0xEF, 0xDD, 0xCB ; 002A82: provisional 68k cmpa.l -$2235(a7), a4
db 0x9C, 0x1F ; 002A86: provisional 68k sub.b (a7)+, d6
db 0x89, 0xB9, 0xFF, 0xFF, 0x02, 0x09 ; 002A88: provisional 68k or.l d4, $ffff0209.l
db 0xEA, 0xA8 ; 002A8E: provisional 68k lsr.l d5, d0
db 0x9B, 0xA1 ; 002A90: provisional 68k sub.l d5, -(a1)
db 0x1F, 0xEA ; file 002A92
db 0x9A, 0xED, 0xDC, 0xB9 ; 002A94: provisional 68k suba.w -$2347(a5), a5
db 0x02, 0x00, 0xFF, 0xFF ; 002A98: provisional 68k andi.b #$ff, d0
db 0xFF, 0x02 ; 002A9C: provisional 68k dc.w $ff02
db 0x0D, 0xA9, 0xAD, 0xCB ; 002A9E: provisional 68k bclr.b d6, -$5235(a1)
db 0xBE, 0xF1, 0x1C, 0xB9 ; 002AA2: provisional 68k cmpa.w -$47(a1, d1.l), a7
db 0x9C, 0x8C ; 002AA6: provisional 68k sub.l a4, d6
db 0xBB, 0xC1 ; 002AA8: provisional 68k cmpa.l d1, a5
db 0x19, 0xAA, 0x91, 0xFF, 0xFF, 0x02, 0x0D, 0xCA ; 002AAA: provisional 68k move.b -$6e01(a2), ([a4, a7.l * 8], $dca)
db 0xED, 0x89 ; 002AB2: provisional 68k lsl.l #$6, d1
db 0xB9, 0xE1 ; 002AB4: provisional 68k cmpa.l -(a1), a4
db 0x1C, 0xB9, 0x9A, 0xEC, 0x9B, 0xA1 ; 002AB6: provisional 68k move.b $9aec9ba1.l, (a6)
db 0xFA, 0xBB ; 002ABC: provisional 68k dc.w $fabb
db 0x91, 0xFF ; file 002ABE
db 0xFF, 0x01 ; 002AC0: provisional 68k dc.w $ff01
db 0x0E, 0x1F ; file 002AC2
db 0x99, 0x81 ; 002AC4: provisional 68k subx.l d1, d4
db 0x1E, 0xBB, 0x9E, 0xFC ; 002AC6: provisional 68k move.b $2ac4(pc, a1.l), (a7)
db 0xBB, 0xB9, 0xC9, 0xBB, 0x98, 0xE8 ; 002ACA: provisional 68k eor.l d5, $c9bb98e8.l
db 0xA9, 0xC1 ; 002AD0: provisional 68k dc.w $a9c1
db 0xFF, 0xFF ; 002AD2: provisional 68k dc.w $ffff
db 0x01, 0x0E, 0x1E, 0x99 ; 002AD4: provisional 68k movep.w $1e99(a6), d0
db 0xDD, 0x1E ; 002AD8: provisional 68k add.b d6, (a6)+
db 0xBB, 0x9E ; 002ADA: provisional 68k eor.l d5, (a6)+
db 0xFE, 0x9B ; 002ADC: provisional 68k dc.w $fe9b
db 0xBA, 0xCC ; 002ADE: provisional 68k cmpa.w a4, a5
db 0xA9, 0xAE ; 002AE0: provisional 68k dc.w $a9ae
db 0xC8, 0xCB ; file 002AE2
db 0xA1, 0xFF ; 002AE4: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 002AE6: provisional 68k dc.w $ff01
db 0x0E, 0x1A ; file 002AE8
db 0xB9, 0xDD ; 002AEA: provisional 68k cmpa.l (a5)+, a4
db 0x1E, 0x99 ; 002AEC: provisional 68k move.b (a1)+, (a7)
db 0x99, 0xA1 ; 002AEE: provisional 68k sub.l d4, -(a1)
db 0xC9, 0x9A ; 002AF0: provisional 68k and.l d4, (a2)+
db 0x88, 0xCA ; file 002AF2
db 0xAE, 0xA9 ; 002AF4: provisional 68k dc.w $aea9
db 0x9B, 0x91 ; 002AF6: provisional 68k sub.l d5, (a1)
db 0xFF, 0xFF ; 002AF8: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 002AFA: provisional 68k btst.l d0, d2
db 0x19, 0xB9, 0xE1, 0x01, 0x0A, 0xC9, 0xBB, 0xAF, 0x8C, 0x9A, 0x88, 0xCA, 0xAE, 0x89 ; 002AFC: provisional 68k move.b $e1010ac9.l, ([$8c9a], a3.l * 2, $88caae89)
db 0x9B, 0x91 ; 002B0A: provisional 68k sub.l d5, (a1)
db 0xFF, 0xFF ; 002B0C: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 002B0E: provisional 68k btst.l d0, d2
db 0x1E, 0xAA, 0xE1, 0x01 ; 002B10: provisional 68k move.b -$1eff(a2), (a7)
db 0x0A, 0xEA ; file 002B14
db 0x9B, 0x9F ; 002B16: provisional 68k sub.l d5, (a7)+
db 0x8A, 0x99 ; 002B18: provisional 68k or.l (a1)+, d5
db 0xE8, 0xC9 ; file 002B1A
db 0x9E, 0x88 ; 002B1C: provisional 68k sub.l a0, d7
db 0xAB, 0xBE ; 002B1E: provisional 68k dc.w $abbe
db 0xFF, 0xFF ; 002B20: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 002B22: provisional 68k btst.l d0, d2
db 0xDD, 0xEC, 0xE1, 0x01 ; 002B24: provisional 68k adda.l -$1eff(a4), a6
db 0x0A, 0x1C, 0xA9, 0x9F ; 002B28: provisional 68k eori.b #$9f, (a4)+
db 0xDA, 0xBB, 0xA8, 0xC9 ; 002B2C: provisional 68k add.l $2af7(pc, a2.l), d5
db 0xBC, 0x88 ; 002B30: provisional 68k cmp.l a0, d6
db 0xC9, 0xBC ; file 002B32
db 0xFF, 0xFF ; 002B34: provisional 68k dc.w $ffff
db 0x02, 0x01, 0xE9, 0xAF ; 002B36: provisional 68k andi.b #$af, d1
db 0x01, 0x0A, 0x1E, 0xC9 ; 002B3A: provisional 68k movep.w $1ec9(a2), d0
db 0x9E, 0x1C ; 002B3E: provisional 68k sub.b (a4)+, d7
db 0xBB, 0xA8, 0xAB, 0xBA ; 002B40: provisional 68k eor.l d5, -$5446(a0)
db 0x8C, 0x99 ; 002B44: provisional 68k or.l (a1)+, d6
db 0x9E, 0xFF ; file 002B46
db 0xFF, 0x02 ; 002B48: provisional 68k dc.w $ff02
db 0x01, 0xE9, 0x9E, 0x01 ; 002B4A: provisional 68k bset.b d0, -$61ff(a1)
db 0x0A, 0x1E, 0xC9, 0xBA ; 002B4E: provisional 68k eori.b #$ba, (a6)+
db 0x1E, 0x9B ; 002B52: provisional 68k move.b (a3)+, (a7)
db 0x98, 0xA9, 0x9C, 0xEA ; 002B54: provisional 68k sub.l -$6316(a1), d4
db 0xBB, 0xAE, 0xFF, 0xFF ; 002B58: provisional 68k eor.l d5, -$1(a6)
db 0x02, 0x01, 0x1A, 0x9A ; 002B5C: provisional 68k andi.b #$9a, d1
db 0x01, 0x0A, 0xDD, 0xC9 ; 002B60: provisional 68k movep.w -$2237(a2), d0
db 0xB9, 0xD8 ; 002B64: provisional 68k cmpa.l (a0)+, a4
db 0x9B, 0x9C ; 002B66: provisional 68k sub.l d5, (a4)+
db 0xAB, 0xBE ; 002B68: provisional 68k dc.w $abbe
db 0xEA, 0xBB ; 002B6A: provisional 68k ror.l d5, d3
db 0x9C, 0xFF ; file 002B6C
db 0xFF, 0x02 ; 002B6E: provisional 68k dc.w $ff02
db 0x02, 0x1C, 0x99, 0x8F ; 002B70: provisional 68k andi.b #$8f, (a4)+
db 0x01, 0x09, 0xE9, 0xBB ; 002B74: provisional 68k movep.w -$1645(a1), d0
db 0xE8, 0x9B ; 002B78: provisional 68k ror.l #$4, d3
db 0xBA, 0xAB, 0xBA, 0xEA ; 002B7A: provisional 68k cmp.l -$4516(a3), d5
db 0xBB, 0x9A ; 002B7E: provisional 68k eor.l d5, (a2)+
db 0xFF, 0xFF ; 002B80: provisional 68k dc.w $ffff
db 0x02, 0x0D ; file 002B82
db 0x1A, 0xBB, 0x9A, 0x81 ; 002B84: provisional 68k move.b $2b07(pc, a1.l), (a5)
db 0xEA, 0xBB ; 002B88: provisional 68k ror.l d5, d3
db 0xA8, 0xAB ; 002B8A: provisional 68k dc.w $a8ab
db 0xB9, 0xAB, 0xB9, 0xC9 ; 002B8C: provisional 68k eor.l d4, -$4637(a3)
db 0xBB, 0xCE ; 002B90: provisional 68k cmpa.l a6, a5
db 0xFF, 0xFF ; 002B92: provisional 68k dc.w $ffff
db 0x02, 0x0D ; file 002B94
db 0x1E, 0x9B ; 002B96: provisional 68k move.b (a3)+, (a7)
db 0xBB, 0xC1 ; 002B98: provisional 68k cmpa.l d1, a5
db 0x1C, 0xBB, 0x98, 0xAB ; 002B9A: provisional 68k move.b $2b47(pc, a1.l), (a6)
db 0xBB, 0xAB, 0xB9, 0xA9 ; 002B9E: provisional 68k eor.l d5, -$4657(a3)
db 0xBB, 0xA1 ; 002BA2: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 002BA4: provisional 68k dc.w $ffff
db 0x02, 0x0D, 0x1E, 0xC9 ; file 002BA6
db 0xBB, 0x9E ; 002BAA: provisional 68k eor.l d5, (a6)+
db 0xDE, 0x9B ; 002BAC: provisional 68k add.l (a3)+, d7
db 0xBE, 0xAB, 0xBB, 0xAB ; 002BAE: provisional 68k cmp.l -$4455(a3), d7
db 0xBB, 0xA9, 0xBB, 0xA1 ; 002BB2: provisional 68k eor.l d5, -$445f(a1)
db 0xFF, 0xFF ; 002BB6: provisional 68k dc.w $ffff
db 0x03, 0x0C, 0x8A, 0x9B ; 002BB8: provisional 68k movep.w -$7565(a4), d1
db 0xB9, 0x88 ; 002BBC: provisional 68k cmpm.l (a0)+, (a4)+
db 0x9B, 0xB9, 0xA9, 0xBB, 0xA9, 0xB9 ; 002BBE: provisional 68k sub.l d5, $a9bba9b9.l
db 0xA9, 0xB9 ; 002BC4: provisional 68k dc.w $a9b9
db 0x81, 0xFF ; file 002BC6
db 0xFF, 0x03 ; 002BC8: provisional 68k dc.w $ff03
db 0x0C, 0x18, 0x89, 0xBB ; 002BCA: provisional 68k cmpi.b #$bb, (a0)+
db 0x9C, 0xAB, 0xBB, 0xCA ; 002BCE: provisional 68k sub.l -$4436(a3), d6
db 0xB9, 0xC9 ; 002BD2: provisional 68k cmpa.l a1, a4
db 0x9C, 0xEA, 0xAC, 0xDD ; 002BD4: provisional 68k suba.w -$5323(a2), a6
db 0xFF, 0xFF ; 002BD8: provisional 68k dc.w $ffff
db 0x04, 0x0B ; file 002BDA
db 0xD8, 0xAB, 0xBB, 0xA9 ; 002BDC: provisional 68k add.l -$4457(a3), d4
db 0xBB, 0xCC ; 002BE0: provisional 68k cmpa.l a4, a5
db 0xAC, 0xCC ; 002BE2: provisional 68k dc.w $accc
db 0x88, 0x88 ; file 002BE4
db 0x88, 0x81 ; 002BE6: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 002BE8: provisional 68k dc.w $ffff
db 0x04, 0x0A, 0x18, 0x8A, 0xBB, 0xBB ; file 002BEA
db 0x9B, 0xCE ; 002BF0: provisional 68k suba.l a6, a5
db 0x8C, 0x9B ; 002BF2: provisional 68k or.l (a3)+, d6
db 0xBB, 0x9B ; 002BF4: provisional 68k eor.l d5, (a3)+
db 0x9C, 0xFF ; file 002BF6
db 0xFF, 0x05 ; 002BF8: provisional 68k dc.w $ff05
db 0x0A, 0x88, 0x9B, 0xBB ; file 002BFA
db 0xBC, 0x9B ; 002BFE: provisional 68k cmp.l (a3)+, d6
db 0xBB, 0xBB, 0xBB, 0xBB ; file 002C00
db 0xB9, 0xAA, 0xFF, 0xFF ; 002C04: provisional 68k eor.l d4, -$1(a2)
db 0x05, 0x0A, 0x18, 0xC9 ; 002C08: provisional 68k movep.w $18c9(a2), d2
db 0x9B, 0x9A ; 002C0C: provisional 68k sub.l d5, (a2)+
db 0xE9, 0xBB ; 002C0E: provisional 68k rol.l d4, d3
db 0xBB, 0xBB ; file 002C10
db 0xB9, 0xA9, 0x99, 0xFF ; 002C12: provisional 68k eor.l d4, -$6601(a1)
db 0xFF, 0x06 ; 002C16: provisional 68k dc.w $ff06
db 0x09, 0x8C, 0xCC, 0x9A ; 002C18: provisional 68k movep.w d4, -$3366(a4)
db 0xEA, 0xBB ; 002C1C: provisional 68k ror.l d5, d3
db 0xBB, 0xBB ; file 002C1E
db 0xB9, 0xCC ; 002C20: provisional 68k cmpa.l a4, a4
db 0xCA, 0xFF ; file 002C22
db 0xFF, 0x06 ; 002C24: provisional 68k dc.w $ff06
db 0x09, 0x18 ; 002C26: provisional 68k btst.l d4, (a0)+
db 0x88, 0xAA, 0xA9, 0x99 ; 002C28: provisional 68k or.l -$5667(a2), d4
db 0xB9, 0xB9, 0x99, 0xC8, 0x8E, 0xFF ; 002C2C: provisional 68k eor.l d4, $99c88eff.l
db 0xFF, 0x07 ; 002C32: provisional 68k dc.w $ff07
db 0x08, 0x1E, 0xEC, 0xCC ; file 002C34
db 0xCA, 0x99 ; 002C38: provisional 68k and.l (a1)+, d5
db 0x9A, 0xAC, 0x88, 0xEE ; 002C3A: provisional 68k sub.l -$7712(a4), d5
db 0xFF, 0xFF ; 002C3E: provisional 68k dc.w $ffff
db 0x08, 0x06, 0x1E, 0x8D ; file 002C40
db 0x88, 0xAA, 0xCC, 0xC8 ; 002C44: provisional 68k or.l -$3338(a2), d4
db 0x8D, 0xFF ; file 002C48
db 0xFF, 0x09 ; 002C4A: provisional 68k dc.w $ff09
db 0x04, 0xDD ; file 002C4C
db 0xD8, 0xCC ; 002C4E: provisional 68k adda.w a4, a4
db 0x88, 0x8E ; file 002C50
db 0xFF, 0xFF ; 002C52: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 002C54: provisional 68k btst.l d5, d1
db 0xEE, 0x81 ; 002C56: provisional 68k asr.l #$7, d1
db 0xFF, 0xFF ; 002C58: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C5A: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 002C5C: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 002C60: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 002C66
db 0x10, 0x10 ; 002C6A: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 002C6C: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 002C6E: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002C70: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 002C72: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002C76: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 002C7A: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002C7C: provisional 68k neg.w d4
db 0x24, 0x28, 0x54, 0xA4 ; 002C7E: provisional 68k move.l $54a4(a0), d2
db 0xA8, 0xA8 ; 002C82: provisional 68k dc.w $a8a8
db 0x64, 0x68 ; 002C84: provisional 68k bcc.b $2cee
db 0x7C, 0xE0 ; 002C86: provisional 68k moveq #$e0, d6
db 0xE4, 0xE4 ; 002C88: provisional 68k roxr.w -(a4)
db 0x48, 0x50 ; 002C8A: provisional 68k pea.l (a0)
db 0x58, 0x40 ; 002C8C: provisional 68k addq.w #$4, d0
db 0x44, 0x78, 0x0C, 0x10 ; 002C8E: provisional 68k neg.w $c10.w
db 0x5C, 0x74, 0x78, 0x84 ; 002C92: provisional 68k addq.w #$6, -$7c(a4, d7.l)
db 0xFF, 0xFF ; 002C96: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C98: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C9A: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002C9C: provisional 68k btst.l d1, d1
db 0x8F, 0x81 ; 002C9E: provisional 68k dc.w $8f81
db 0xFF, 0xFF ; 002CA0: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002CA2: provisional 68k btst.l d1, d1
db 0xF9, 0xD1 ; 002CA4: provisional 68k dc.w $f9d1
db 0xFF, 0xFF ; 002CA6: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002CA8: provisional 68k btst.l d1, d1
db 0xFF, 0xF1 ; 002CAA: provisional 68k dc.w $fff1
db 0xFF, 0xFF ; 002CAC: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002CAE: provisional 68k btst.l d1, d1
db 0xDF, 0x91 ; 002CB0: provisional 68k add.l d7, (a1)
db 0xFF, 0xFF ; 002CB2: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002CB4: provisional 68k btst.l d1, d1
db 0x8F, 0xBF ; file 002CB6
db 0xFF, 0xFF ; 002CB8: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002CBA: provisional 68k btst.l d1, d1
db 0x1D, 0xB9, 0xFF, 0xFF, 0x03, 0x01, 0xE8, 0xF9 ; 002CBC: provisional 68k move.b $ffff0301.l, -$7(a6, a6.l)
db 0xFF, 0xFF ; 002CC4: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 002CC6: provisional 68k btst.l d1, d2
db 0xEE, 0xCB ; file 002CC8
db 0xAE, 0xFF ; 002CCA: provisional 68k dc.w $aeff
db 0xFF, 0x04 ; 002CCC: provisional 68k dc.w $ff04
db 0x01, 0x1B ; 002CCE: provisional 68k btst.l d0, (a3)+
db 0x91, 0x02 ; 002CD0: provisional 68k subx.b d2, d0
db 0x01, 0xDA ; 002CD2: provisional 68k bset.b d0, (a2)+
db 0xF8, 0xFF ; 002CD4: provisional 68k dc.w $f8ff
db 0xFF, 0x04 ; 002CD6: provisional 68k dc.w $ff04
db 0x02, 0x19, 0xBD, 0xEE ; 002CD8: provisional 68k andi.b #$ee, (a1)+
db 0x01, 0x01 ; 002CDC: provisional 68k btst.l d0, d1
db 0xFB, 0xBA ; 002CDE: provisional 68k dc.w $fbba
db 0xFF, 0xFF ; 002CE0: provisional 68k dc.w $ffff
db 0x04, 0x02, 0x19, 0xB9 ; 002CE2: provisional 68k subi.b #$b9, d2
db 0x81, 0x01 ; 002CE6: provisional 68k sbcd.b d1, d0
db 0x02, 0xAB, 0xBF, 0x81, 0xFF, 0xFF, 0x04, 0x06 ; 002CE8: provisional 68k andi.l #$bf81ffff, $406(a3)
db 0x19, 0xBB, 0xD1, 0xEE, 0x8B, 0xBA, 0xEE, 0xFF ; 002CF0: provisional 68k move.b ([$b8ac]), -$1(a4, a6.l)
db 0xFF, 0x04 ; 002CF8: provisional 68k dc.w $ff04
db 0x02, 0x1F, 0x99, 0xD1 ; 002CFA: provisional 68k andi.b #$d1, (a7)+
db 0x01, 0x01 ; 002CFE: provisional 68k btst.l d0, d1
db 0x89, 0xBC ; file 002D00
db 0x01, 0x01 ; 002D02: provisional 68k btst.l d0, d1
db 0x1F, 0x9F, 0xFF, 0xFF, 0x04, 0x02, 0x18, 0xF9 ; 002D04: provisional 68k move.b (a7)+, ([$40218f9])
db 0xA1, 0x01 ; 002D0C: provisional 68k dc.w $a101
db 0x05, 0x19 ; 002D0E: provisional 68k btst.l d2, (a1)+
db 0xBF, 0xEE, 0xAB, 0xBB ; 002D10: provisional 68k cmpa.l -$5445(a6), a7
db 0xAE, 0xFF ; 002D14: provisional 68k dc.w $aeff
db 0xFF, 0x05 ; 002D16: provisional 68k dc.w $ff05
db 0x01, 0xAB, 0x98, 0x01 ; 002D18: provisional 68k bclr.b d0, -$67ff(a3)
db 0x05, 0x89, 0xB9, 0xDE ; 002D1C: provisional 68k movep.w d2, -$4622(a1)
db 0xC9, 0xB9, 0xD1, 0xFF, 0xFF, 0x03 ; 002D20: provisional 68k and.l d4, $d1ffff03.l
db 0x03, 0x1F ; 002D26: provisional 68k btst.l d1, (a7)+
db 0xF8, 0x89 ; 002D28: provisional 68k dc.w $f889
db 0x9D, 0x01 ; 002D2A: provisional 68k subx.b d1, d6
db 0x05, 0x89, 0xB9, 0xD1 ; 002D2C: provisional 68k movep.w d2, -$462f(a1)
db 0xEC, 0xB9 ; 002D30: provisional 68k ror.l d6, d1
db 0xD1, 0xFF ; file 002D32
db 0xFF, 0x03 ; 002D34: provisional 68k dc.w $ff03
db 0x03, 0xD9 ; 002D36: provisional 68k bset.b d1, (a1)+
db 0xF8, 0x89 ; 002D38: provisional 68k dc.w $f889
db 0xBF, 0x01 ; 002D3A: provisional 68k eor.b d7, d1
db 0x05, 0xEA, 0x9F, 0xD8 ; 002D3C: provisional 68k bset.b d2, -$6028(a2)
db 0xEC, 0xBB ; 002D40: provisional 68k ror.l d6, d3
db 0xD1, 0xFF ; file 002D42
db 0xFF, 0x03 ; 002D44: provisional 68k dc.w $ff03
db 0x0A, 0xD9 ; file 002D46
db 0xC1, 0xEF, 0xB9, 0xEE ; 002D48: provisional 68k muls.w -$4612(a7), d0
db 0x1A, 0xB9, 0xAD, 0x88, 0xBB, 0xDE ; 002D4C: provisional 68k move.b $ad88bbde.l, (a5)
db 0xFF, 0xFF ; 002D52: provisional 68k dc.w $ffff
db 0x02, 0x0E, 0xEE, 0xF9 ; file 002D54
db 0xEE, 0x1D ; 002D58: provisional 68k ror.b #$7, d5
db 0xBB, 0xAE, 0x8A, 0xBB ; 002D5A: provisional 68k eor.l d5, -$7545(a6)
db 0x9F, 0xC8 ; 002D5E: provisional 68k suba.l a0, a7
db 0x9B, 0xFE ; file 002D60
db 0x18, 0xAF, 0x81, 0xFF ; 002D62: provisional 68k move.b -$7e01(a7), (a4)
db 0xFF, 0x02 ; 002D66: provisional 68k dc.w $ff02
db 0x01, 0x1D ; 002D68: provisional 68k btst.l d0, (a5)+
db 0x9F, 0x01 ; 002D6A: provisional 68k subx.b d1, d7
db 0x0B, 0x1D ; 002D6C: provisional 68k btst.l d5, (a5)+
db 0xBB, 0x98 ; 002D6E: provisional 68k eor.l d5, (a0)+
db 0x8C, 0x9B ; 002D70: provisional 68k or.l (a3)+, d6
db 0xB9, 0xCF ; 002D72: provisional 68k cmpa.l a7, a4
db 0x9B, 0x91 ; 002D74: provisional 68k sub.l d5, (a1)
db 0xEA, 0xBB ; 002D76: provisional 68k ror.l d5, d3
db 0x91, 0xFF ; file 002D78
db 0xFF, 0x02 ; 002D7A: provisional 68k dc.w $ff02
db 0x01, 0x89, 0xBF, 0x01 ; 002D7C: provisional 68k movep.w d0, -$40ff(a1)
db 0x0B, 0x1A ; 002D80: provisional 68k btst.l d5, (a2)+
db 0xBB, 0x9D ; 002D82: provisional 68k eor.l d5, (a5)+
db 0x88, 0x9B ; 002D84: provisional 68k or.l (a3)+, d4
db 0x9F, 0xA9, 0x9B, 0x9D ; 002D86: provisional 68k sub.l d7, -$6463(a1)
db 0x1A, 0xFB, 0xA1, 0xFF, 0xFF, 0x02, 0x01, 0x89 ; 002D8A: provisional 68k move.b ([$ff022f15]), (a5)+
db 0xB9, 0x01 ; 002D92: provisional 68k eor.b d4, d1
db 0x0B, 0x1D ; 002D94: provisional 68k btst.l d5, (a5)+
db 0xA9, 0xB9 ; 002D96: provisional 68k dc.w $a9b9
db 0x88, 0xA9, 0x9F, 0xCF ; 002D98: provisional 68k or.l -$6031(a1), d4
db 0xF9, 0xFC ; 002D9C: provisional 68k dc.w $f9fc
db 0xCC, 0xCB ; file 002D9E
db 0xA1, 0xFF ; 002DA0: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 002DA2: provisional 68k dc.w $ff02
db 0x01, 0x8A, 0xFA, 0x01 ; 002DA4: provisional 68k movep.w d0, -$5ff(a2)
db 0x0B, 0x18 ; 002DA8: provisional 68k btst.l d5, (a0)+
db 0xF9, 0xBB ; 002DAA: provisional 68k dc.w $f9bb
db 0xD8, 0xAF, 0x9F, 0x8C ; 002DAC: provisional 68k add.l -$6074(a7), d4
db 0xC9, 0xFC, 0xF9, 0x9B ; 002DB0: provisional 68k muls.w #$f99b, d4
db 0xA1, 0xFF ; 002DB4: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 002DB6: provisional 68k dc.w $ff02
db 0x01, 0x18 ; 002DB8: provisional 68k btst.l d0, (a0)+
db 0xAA, 0x02 ; 002DBA: provisional 68k dc.w $aa02
db 0x0A, 0xA9, 0x99, 0xDE, 0xC9, 0x9A, 0x8C, 0xF9 ; 002DBC: provisional 68k eori.l #$99dec99a, -$7307(a1)
db 0xFC, 0xF9 ; 002DC4: provisional 68k dc.w $fcf9
db 0xBB, 0xF1, 0xFF, 0xFF, 0x02, 0x02, 0x18, 0xF9 ; 002DC6: provisional 68k cmpa.l ([$20218f9]), a5
db 0x81, 0x01 ; 002DCE: provisional 68k sbcd.b d1, d0
db 0x0A, 0x8A ; file 002DD0
db 0x99, 0xD1 ; 002DD2: provisional 68k suba.l (a1), a4
db 0xD9, 0xBF ; file 002DD4
db 0x8C, 0x99 ; 002DD6: provisional 68k or.l (a1)+, d6
db 0xFC, 0x8A ; 002DD8: provisional 68k dc.w $fc8a
db 0x9B, 0x91 ; 002DDA: provisional 68k sub.l d5, (a1)
db 0xFF, 0xFF ; 002DDC: provisional 68k dc.w $ffff
db 0x02, 0x02, 0xEE, 0xFB ; 002DDE: provisional 68k andi.b #$fb, d2
db 0xD1, 0x01 ; 002DE2: provisional 68k addx.b d1, d0
db 0x0A, 0x1C, 0x99, 0xD1 ; 002DE4: provisional 68k eori.b #$d1, (a4)+
db 0xC9, 0xB9, 0x8A, 0xBB, 0x9D, 0x8A ; 002DE8: provisional 68k and.l d4, $8abb9d8a.l
db 0x99, 0x91 ; 002DEE: provisional 68k sub.l d4, (a1)
db 0xFF, 0xFF ; 002DF0: provisional 68k dc.w $ffff
db 0x02, 0x02, 0xEE, 0xF9 ; 002DF2: provisional 68k andi.b #$f9, d2
db 0xF1, 0x01 ; 002DF6: provisional 68k dc.w $f101
db 0x0A, 0x1C, 0x9B, 0xF1 ; 002DF8: provisional 68k eori.b #$f1, (a4)+
db 0x89, 0xB9, 0x8F, 0xB9, 0x9A, 0xC9 ; 002DFC: provisional 68k or.l d4, $8fb99ac9.l
db 0x9F, 0xA1 ; 002E02: provisional 68k sub.l d7, -(a1)
db 0xFF, 0xFF ; 002E04: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002E06: provisional 68k btst.l d1, d1
db 0xF9, 0x91 ; 002E08: provisional 68k dc.w $f991
db 0x02, 0x09 ; file 002E0A
db 0x9B, 0x91 ; 002E0C: provisional 68k sub.l d5, (a1)
db 0x89, 0xBB ; file 002E0E
db 0xDF, 0xB9, 0xFC, 0xAB, 0xBF, 0xA1 ; 002E10: provisional 68k add.l d7, $fcabbfa1.l
db 0xFF, 0xFF ; 002E16: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002E18: provisional 68k btst.l d1, d1
db 0xF9, 0xBF ; 002E1A: provisional 68k dc.w $f9bf
db 0x02, 0x09 ; file 002E1C
db 0x9B, 0xB1, 0x89, 0xBB, 0xFF, 0xBB, 0xA8, 0xFB, 0xBF, 0xF1, 0xFF, 0xFF ; 002E1E: provisional 68k sub.l d5, ([$ffbba8fb, a0.l], $bff1ffff)
db 0x02, 0x03, 0xEE, 0xC9 ; 002E2A: provisional 68k andi.b #$c9, d3
db 0xBB, 0x9D ; 002E2E: provisional 68k eor.l d5, (a5)+
db 0x01, 0x09, 0xFB, 0xBA ; 002E30: provisional 68k movep.w -$446(a1), d0
db 0x8F, 0xBB, 0x9F, 0xBB ; file 002E34
db 0xAC, 0x9B ; 002E38: provisional 68k dc.w $ac9b
db 0xB9, 0x91 ; 002E3A: provisional 68k eor.l d4, (a1)
db 0xFF, 0xFF ; 002E3C: provisional 68k dc.w $ffff
db 0x03, 0x0D, 0x8F, 0xBB ; 002E3E: provisional 68k movep.w -$7045(a5), d1
db 0xBF, 0x8E ; 002E42: provisional 68k cmpm.l (a6)+, (a7)+
db 0xAB, 0xB9 ; 002E44: provisional 68k dc.w $abb9
db 0x8F, 0xBB, 0xB9, 0xBB ; file 002E46
db 0xFC, 0x9B ; 002E4A: provisional 68k dc.w $fc9b
db 0xBC, 0xC1 ; 002E4C: provisional 68k cmpa.w d1, a6
db 0xFF, 0xFF ; 002E4E: provisional 68k dc.w $ffff
db 0x03, 0x0D, 0x8C, 0x9B ; 002E50: provisional 68k movep.w -$7365(a5), d1
db 0xB9, 0xDE ; 002E54: provisional 68k cmpa.l (a6)+, a4
db 0xAB, 0xBB ; 002E56: provisional 68k dc.w $abbb
db 0x8F, 0xBB, 0xB9, 0xBB ; file 002E58
db 0x9F, 0x9B ; 002E5C: provisional 68k sub.l d7, (a3)+
db 0xBC, 0xEE, 0xFF, 0xFF ; 002E5E: provisional 68k cmpa.w -$1(a6), a6
db 0x03, 0x0C, 0x18, 0xCF ; 002E62: provisional 68k movep.w $18cf(a4), d1
db 0x9B, 0x98 ; 002E66: provisional 68k sub.l d5, (a0)+
db 0xC9, 0xBB ; file 002E68
db 0xAF, 0xBB ; 002E6A: provisional 68k dc.w $afbb
db 0xB9, 0xBB, 0x99, 0xBB, 0xB8, 0xFF ; file 002E6C
db 0xFF, 0x04 ; 002E72: provisional 68k dc.w $ff04
db 0x0B, 0xE8, 0xFB, 0xB9 ; 002E74: provisional 68k bset.b d5, -$447(a0)
db 0xA9, 0xBB ; 002E78: provisional 68k dc.w $a9bb
db 0x9F, 0x9B ; 002E7A: provisional 68k sub.l d7, (a3)+
db 0x99, 0xBB, 0x99, 0xBB, 0x98, 0xFF ; file 002E7C
db 0xFF, 0x04 ; 002E82: provisional 68k dc.w $ff04
db 0x0B, 0x18 ; 002E84: provisional 68k btst.l d5, (a0)+
db 0x8F, 0xBB ; file 002E86
db 0xB9, 0x9B ; 002E88: provisional 68k eor.l d4, (a3)+
db 0x9F, 0xF9, 0xAA, 0xFF, 0x8C, 0xFA ; 002E8A: provisional 68k suba.l $aaff8cfa.l, a7
db 0xC8, 0xFF ; file 002E90
db 0xFF, 0x05 ; 002E92: provisional 68k dc.w $ff05
db 0x0A, 0x8C ; file 002E94
db 0xFB, 0xBB ; 002E96: provisional 68k dc.w $fbbb
db 0x9B, 0x9A ; 002E98: provisional 68k sub.l d5, (a2)+
db 0xAA, 0xCC ; 002E9A: provisional 68k dc.w $aacc
db 0xC8, 0x8C, 0x88, 0x88 ; file 002E9C
db 0xFF, 0xFF ; 002EA0: provisional 68k dc.w $ffff
db 0x05, 0x09, 0x88, 0xC9 ; 002EA2: provisional 68k movep.w -$7737(a1), d2
db 0xBB, 0xB9, 0xAF, 0x9B, 0xBB, 0xBB ; 002EA6: provisional 68k eor.l d5, $af9bbbbb.l
db 0xBB, 0xB9, 0xFF, 0xFF, 0x05, 0x0A ; 002EAC: provisional 68k eor.l d5, $ffff050a.l
db 0x18, 0x8A ; file 002EB2
db 0x9B, 0xB9, 0xDF, 0xBB, 0xBB, 0xBB ; 002EB4: provisional 68k sub.l d5, $dfbbbbbb.l
db 0xBB, 0xB9, 0x88, 0xFF, 0xFF, 0x06 ; 002EBA: provisional 68k eor.l d5, $88ffff06.l
db 0x09, 0x8C, 0xCA, 0xF9 ; 002EC0: provisional 68k movep.w d4, -$3507(a4)
db 0xDA, 0x9B ; 002EC4: provisional 68k add.l (a3)+, d5
db 0xBB, 0xBB ; file 002EC6
db 0xBB, 0x99 ; 002EC8: provisional 68k eor.l d5, (a1)+
db 0xFB, 0xFF ; 002ECA: provisional 68k dc.w $fbff
db 0xFF, 0x07 ; 002ECC: provisional 68k dc.w $ff07
db 0x08, 0x88 ; file 002ECE
db 0xA9, 0xFF ; 002ED0: provisional 68k dc.w $a9ff
db 0x9B, 0xBB ; file 002ED2
db 0xBB, 0xB9, 0xAC, 0xA9, 0xFF, 0xFF ; 002ED4: provisional 68k eor.l d5, $aca9ffff.l
db 0x07, 0x08, 0x18, 0xDA ; 002EDA: provisional 68k movep.w $18da(a0), d3
db 0xAA, 0xA9 ; 002EDE: provisional 68k dc.w $aaa9
db 0x99, 0x99 ; 002EE0: provisional 68k sub.l d4, (a1)+
db 0x99, 0xC8 ; 002EE2: provisional 68k suba.l a0, a4
db 0x8D, 0xFF ; file 002EE4
db 0xFF, 0x09 ; 002EE6: provisional 68k dc.w $ff09
db 0x06, 0x88 ; file 002EE8
db 0x8C, 0x9F ; 002EEA: provisional 68k or.l (a7)+, d6
db 0xFF, 0xFA ; 002EEC: provisional 68k dc.w $fffa
db 0xC8, 0x88 ; file 002EEE
db 0xFF, 0xFF ; 002EF0: provisional 68k dc.w $ffff
db 0x09, 0x05 ; 002EF2: provisional 68k btst.l d4, d5
db 0x18, 0xE8, 0xFA, 0xCC ; 002EF4: provisional 68k move.b -$534(a0), (a4)+
db 0xCC, 0x8E ; file 002EF8
db 0xFF, 0xFF ; 002EFA: provisional 68k dc.w $ffff
db 0x0A, 0x03, 0x18, 0xDC ; 002EFC: provisional 68k eori.b #$dc, d3
db 0x88, 0x88 ; file 002F00
db 0xFF, 0xFF ; 002F02: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002F04: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002F06: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 002F08: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 002F0C: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 002F12
db 0x10, 0x10 ; 002F16: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 002F18: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 002F1A: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002F1C: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 002F1E: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002F22: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 002F26: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002F28: provisional 68k neg.w d4
db 0x24, 0x28, 0x54, 0xA0 ; 002F2A: provisional 68k move.l $54a0(a0), d2
db 0xA4, 0xA4 ; 002F2E: provisional 68k dc.w $a4a4
db 0x60, 0x64 ; 002F30: provisional 68k bra.b $2f96
db 0x80, 0xE0 ; 002F32: provisional 68k divu.w -(a0), d0
db 0xE4, 0xE0 ; 002F34: provisional 68k roxr.w -(a0)
db 0x4C, 0x54, 0x5C, 0x3C ; file 002F36
db 0x3C, 0x7C, 0x74, 0x78 ; 002F3A: provisional 68k movea.w #$7478, a6
db 0x84, 0x10 ; 002F3E: provisional 68k or.b (a0), d2
db 0x10, 0x74 ; file 002F40
db 0xFF, 0xFF ; 002F42: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1D, 0xE1 ; 002F44: provisional 68k addi.b #$e1, d1
db 0xFF, 0xFF ; 002F48: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8A, 0x98 ; 002F4A: provisional 68k addi.b #$98, d1
db 0xFF, 0xFF ; 002F4E: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8A, 0x98 ; 002F50: provisional 68k addi.b #$98, d1
db 0xFF, 0xFF ; 002F54: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8A, 0xBD ; 002F56: provisional 68k addi.b #$bd, d1
db 0xFF, 0xFF ; 002F5A: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8E, 0xBE ; 002F5C: provisional 68k addi.b #$be, d1
db 0xFF, 0xFF ; 002F60: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8A, 0x9E ; 002F62: provisional 68k addi.b #$9e, d1
db 0xFF, 0xFF ; 002F66: provisional 68k dc.w $ffff
db 0x06, 0x01, 0xFC, 0x9A ; 002F68: provisional 68k addi.b #$9a, d1
db 0xFF, 0xFF ; 002F6C: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1A, 0x9E ; 002F6E: provisional 68k addi.b #$9e, d1
db 0xFF, 0xFF ; 002F72: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1D, 0x99 ; 002F74: provisional 68k addi.b #$99, d1
db 0xFF, 0xFF ; 002F78: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1D, 0x99 ; 002F7A: provisional 68k addi.b #$99, d5
db 0xFF, 0x18 ; 002F7E: provisional 68k dc.w $ff18
db 0xAA, 0x81 ; 002F80: provisional 68k dc.w $aa81
db 0xFF, 0xFF ; 002F82: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1D, 0xBB ; 002F84: provisional 68k addi.b #$bb, d5
db 0xD1, 0xFE ; file 002F88
db 0x9B, 0x98 ; 002F8A: provisional 68k sub.l d5, (a0)+
db 0xFF, 0xFF ; 002F8C: provisional 68k dc.w $ffff
db 0x06, 0x05, 0xFE, 0xBB ; 002F8E: provisional 68k addi.b #$bb, d5
db 0xA1, 0x8E ; 002F92: provisional 68k dc.w $a18e
db 0xBB, 0x98 ; 002F94: provisional 68k eor.l d5, (a0)+
db 0xFF, 0xFF ; 002F96: provisional 68k dc.w $ffff
db 0x06, 0x06, 0xFA, 0xB9 ; 002F98: provisional 68k addi.b #$b9, d6
db 0xA1, 0xF8 ; 002F9C: provisional 68k dc.w $a1f8
db 0x9B, 0xA8, 0xFF, 0xFF ; 002F9E: provisional 68k sub.l d5, -$1(a0)
db 0xFF, 0x06 ; 002FA2: provisional 68k dc.w $ff06
db 0x05, 0xF8, 0xE9, 0xD1 ; 002FA4: provisional 68k bset.b d2, $e9d1.w
db 0x18, 0x9B ; 002FA8: provisional 68k move.b (a3)+, (a4)
db 0xA1, 0x01 ; 002FAA: provisional 68k dc.w $a101
db 0x01, 0x8D, 0xD1, 0xFF ; 002FAC: provisional 68k movep.w d0, -$2e01(a5)
db 0xFF, 0x06 ; 002FB0: provisional 68k dc.w $ff06
db 0x08, 0x1D ; file 002FB2
db 0x9B, 0xC1 ; 002FB4: provisional 68k suba.l d1, a5
db 0x18, 0x9B ; 002FB6: provisional 68k move.b (a3)+, (a4)
db 0xE1, 0x1A ; 002FB8: provisional 68k rol.b #$8, d2
db 0x9B, 0x9D ; 002FBA: provisional 68k sub.l d5, (a5)+
db 0xFF, 0xFF ; 002FBC: provisional 68k dc.w $ffff
db 0x05, 0x09, 0xDD, 0x1D ; 002FBE: provisional 68k movep.w -$22e3(a1), d2
db 0x9B, 0xA1 ; 002FC2: provisional 68k sub.l d5, -(a1)
db 0x18, 0x9B ; 002FC4: provisional 68k move.b (a3)+, (a4)
db 0x98, 0x8A ; 002FC6: provisional 68k sub.l a2, d4
db 0xBB, 0x9D ; 002FC8: provisional 68k eor.l d5, (a5)+
db 0xFF, 0xFF ; 002FCA: provisional 68k dc.w $ffff
db 0x04, 0x0A ; file 002FCC
db 0x1A, 0x9D ; 002FCE: provisional 68k move.b (a5)+, (a5)
db 0x18, 0x9B ; 002FD0: provisional 68k move.b (a3)+, (a4)
db 0xA1, 0x18 ; 002FD2: provisional 68k dc.w $a118
db 0x9B, 0x98 ; 002FD4: provisional 68k sub.l d5, (a0)+
db 0x88, 0x9B ; 002FD6: provisional 68k or.l (a3)+, d4
db 0x98, 0xFF ; file 002FD8
db 0xFF, 0x04 ; 002FDA: provisional 68k dc.w $ff04
db 0x0A, 0x1E, 0xED, 0x18 ; 002FDC: provisional 68k eori.b #$18, (a6)+
db 0x9B, 0xE1 ; 002FE0: provisional 68k suba.l -(a1), a5
db 0x18, 0xE9, 0xE8, 0x88 ; 002FE2: provisional 68k move.b -$1778(a1), (a4)+
db 0xEB, 0x98 ; 002FE6: provisional 68k rol.l #$5, d0
db 0xFF, 0xFF ; 002FE8: provisional 68k dc.w $ffff
db 0x04, 0x0A ; file 002FEA
db 0xD9, 0xCF ; 002FEC: provisional 68k adda.l a7, a4
db 0x18, 0xEB, 0xE1, 0xFC ; 002FEE: provisional 68k move.b -$1e04(a3), (a4)+
db 0x99, 0x9D ; 002FF2: provisional 68k sub.l d4, (a5)+
db 0xD8, 0xAB, 0x98, 0xFF ; 002FF4: provisional 68k add.l -$6701(a3), d4
db 0xFF, 0x04 ; 002FF8: provisional 68k dc.w $ff04
db 0x0A, 0x99, 0xDF, 0x1D, 0x9B, 0x9D ; 002FFA: provisional 68k eori.l #$df1d9b9d, (a1)+
db 0xFA, 0x9B ; 003000: provisional 68k dc.w $fa9b
db 0x9A, 0xA8, 0xCB, 0xB8 ; 003002: provisional 68k sub.l -$3448(a0), d5
db 0xFF, 0xFF ; 003006: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003008: provisional 68k btst.l d1, d1
db 0x1A, 0xB9, 0x01, 0x08, 0x1D, 0x9B ; 00300A: provisional 68k move.b $1081d9b.l, (a5)
db 0xBC, 0xFD ; file 003010
db 0x9B, 0x9E ; 003012: provisional 68k sub.l d5, (a6)+
db 0xAC, 0xAB ; 003014: provisional 68k dc.w $acab
db 0xBD, 0x01 ; 003016: provisional 68k eor.b d6, d1
db 0x01, 0xDD ; 003018: provisional 68k bset.b d0, (a5)+
db 0xD1, 0xFF ; file 00301A
db 0xFF, 0x03 ; 00301C: provisional 68k dc.w $ff03
db 0x01, 0x1E ; 00301E: provisional 68k btst.l d0, (a6)+
db 0xBE, 0x01 ; 003020: provisional 68k cmp.b d1, d7
db 0x0B, 0x1D ; 003022: provisional 68k btst.l d5, (a5)+
db 0x9B, 0x9E ; 003024: provisional 68k sub.l d5, (a6)+
db 0x1D, 0x9B, 0xBE, 0xA9 ; 003026: provisional 68k move.b (a3)+, -$57(a6, a3.l)
db 0x9B, 0xBA ; file 00302A
db 0x8D, 0x9B ; 00302C: provisional 68k or.l d6, (a3)+
db 0x9D, 0xFF ; file 00302E
db 0xFF, 0x03 ; 003030: provisional 68k dc.w $ff03
db 0x01, 0x1E ; 003032: provisional 68k btst.l d0, (a6)+
db 0x9E, 0x01 ; 003034: provisional 68k sub.b d1, d7
db 0x0B, 0x1D ; 003036: provisional 68k btst.l d5, (a5)+
db 0xE9, 0xB9 ; 003038: provisional 68k rol.l d4, d1
db 0xDD, 0xE9, 0x9A, 0xA9 ; 00303A: provisional 68k adda.l -$6557(a1), a6
db 0xEE, 0xEC ; file 00303E
db 0xDA, 0xEB, 0x9D, 0xFF ; 003040: provisional 68k adda.w -$6201(a3), a5
db 0xFF, 0x03 ; 003044: provisional 68k dc.w $ff03
db 0x0E, 0x1C, 0xEA, 0xD1 ; file 003046
db 0x18, 0xE9, 0xBB, 0xD8 ; 00304A: provisional 68k move.b -$4428(a1), (a4)+
db 0xA9, 0xEC ; 00304E: provisional 68k dc.w $a9ec
db 0xCE, 0xE9, 0x9E, 0xA8 ; 003050: provisional 68k mulu.w -$6158(a1), d7
db 0xCB, 0xEF, 0xFF, 0xFF ; 003054: provisional 68k muls.w -$1(a7), d5
db 0x04, 0x01, 0xEE, 0xD1 ; 003058: provisional 68k subi.b #$d1, d1
db 0x01, 0x0A, 0xC9, 0x99 ; 00305C: provisional 68k movep.w -$3667(a2), d0
db 0xDF, 0xA9, 0x9C, 0xCA ; 003060: provisional 68k add.l d7, -$6336(a1)
db 0xE9, 0x9E ; 003064: provisional 68k rol.l #$4, d6
db 0x99, 0xEB, 0xAF, 0xFF ; 003066: provisional 68k suba.l -$5001(a3), a4
db 0xFF, 0x04 ; 00306A: provisional 68k dc.w $ff04
db 0x01, 0xE9, 0xD1, 0x01 ; 00306C: provisional 68k bset.b d0, -$2eff(a1)
db 0x0A, 0xCE ; file 003070
db 0x99, 0xD1 ; 003072: provisional 68k suba.l (a1), a4
db 0xE9, 0x9C ; 003074: provisional 68k rol.l #$4, d4
db 0xDE, 0x99 ; 003076: provisional 68k add.l (a1)+, d7
db 0xEA, 0x99 ; 003078: provisional 68k ror.l #$5, d1
db 0x9B, 0xAF, 0xFF, 0xFF ; 00307A: provisional 68k sub.l d5, -$1(a7)
db 0x04, 0x01, 0xEB, 0xD1 ; 00307E: provisional 68k subi.b #$d1, d1
db 0x01, 0x0A, 0x8E, 0x99 ; 003082: provisional 68k movep.w -$7167(a2), d0
db 0xD8, 0xEB, 0xBA, 0xDE ; 003086: provisional 68k adda.w -$4522(a3), a4
db 0xBB, 0x9C ; 00308A: provisional 68k eor.l d5, (a4)+
db 0xCE, 0x9B ; 00308C: provisional 68k and.l (a3)+, d7
db 0xEF, 0xFF ; file 00308E
db 0xFF, 0x04 ; 003090: provisional 68k dc.w $ff04
db 0x01, 0xAB, 0xAF, 0x01 ; 003092: provisional 68k bclr.b d0, -$50ff(a3)
db 0x0A, 0x1A, 0x9B, 0xDF ; 003096: provisional 68k eori.b #$df, (a2)+
db 0xEB, 0xBA ; 00309A: provisional 68k rol.l d5, d2
db 0xC9, 0xBB ; file 00309C
db 0x9C, 0xC9 ; 00309E: provisional 68k suba.w a1, a6
db 0x9B, 0x98 ; 0030A0: provisional 68k sub.l d5, (a0)+
db 0xFF, 0xFF ; 0030A2: provisional 68k dc.w $ffff
db 0x04, 0x01, 0xEB, 0x9D ; 0030A4: provisional 68k subi.b #$9d, d1
db 0x01, 0x0A, 0x1E, 0xBB ; 0030A8: provisional 68k movep.w $1ebb(a2), d0
db 0xA8, 0xEB ; 0030AC: provisional 68k dc.w $a8eb
db 0xBE, 0xA9, 0xBB, 0xEA ; 0030AE: provisional 68k cmp.l -$4416(a1), d7
db 0xE9, 0xEE, 0xED, 0xFF ; file 0030B2
db 0xFF, 0x04 ; 0030B6: provisional 68k dc.w $ff04
db 0x0D, 0x9B ; 0030B8: provisional 68k bclr.b d6, (a3)+
db 0xBE, 0x81 ; 0030BA: provisional 68k cmp.l d1, d7
db 0x1E, 0xBB, 0xE8, 0xEB ; 0030BC: provisional 68k move.b $30a9(pc, a6.l), (a7)
db 0xBE, 0xA9, 0xB9, 0xCA ; 0030C0: provisional 68k cmp.l -$4636(a1), d7
db 0x9B, 0xE9, 0xAF, 0xFF ; 0030C4: provisional 68k suba.l -$5001(a1), a5
db 0xFF, 0x04 ; 0030C8: provisional 68k dc.w $ff04
db 0x0D, 0xA9, 0xBB, 0xEF ; 0030CA: provisional 68k bclr.b d6, -$4411(a1)
db 0x1E, 0xBB, 0xE8, 0xEB ; 0030CE: provisional 68k move.b $30bb(pc, a6.l), (a7)
db 0xB9, 0xEB, 0xB9, 0xDE ; 0030D2: provisional 68k cmpa.l -$4622(a3), a4
db 0xBB, 0xE9, 0xD1, 0xFF ; 0030D6: provisional 68k cmpa.l -$2e01(a1), a5
db 0xFF, 0x04 ; 0030DA: provisional 68k dc.w $ff04
db 0x0D, 0xE9, 0xBB, 0x98 ; 0030DC: provisional 68k bset.b d6, -$4468(a1)
db 0xFC, 0xBB ; 0030E0: provisional 68k dc.w $fcbb
db 0x98, 0xAB, 0xB9, 0xEB ; 0030E2: provisional 68k sub.l -$4615(a3), d4
db 0xB9, 0x8E ; 0030E6: provisional 68k cmpm.l (a6)+, (a4)+
db 0xBB, 0xE9, 0xA1, 0xFF ; 0030E8: provisional 68k cmpa.l -$5e01(a1), a5
db 0xFF, 0x04 ; 0030EC: provisional 68k dc.w $ff04
db 0x0D, 0xCC, 0x9B, 0x9C ; 0030EE: provisional 68k movep.l d6, -$6464(a4)
db 0x8C, 0x9B ; 0030F2: provisional 68k or.l (a3)+, d6
db 0xBC, 0xAB, 0xBB, 0x9B ; 0030F4: provisional 68k cmp.l -$4465(a3), d6
db 0xB9, 0xA9, 0xBB, 0xCE ; 0030F8: provisional 68k eor.l d4, -$4432(a1)
db 0xD1, 0xFF ; file 0030FC
db 0xFF, 0x04 ; 0030FE: provisional 68k dc.w $ff04
db 0x0C, 0xF8 ; file 003100
db 0xCE, 0xB9, 0xCC, 0x9B, 0xBA, 0xEB ; 003102: provisional 68k and.l $cc9bbaeb.l, d7
db 0xBB, 0x9B ; 003108: provisional 68k eor.l d5, (a3)+
db 0xB9, 0xEB, 0xBB, 0x88 ; 00310A: provisional 68k cmpa.l -$4478(a3), a4
db 0xFF, 0xFF ; 00310E: provisional 68k dc.w $ffff
db 0x04, 0x0C ; file 003110
db 0xFF, 0x8C ; 003112: provisional 68k dc.w $ff8c
db 0x9B, 0x9E ; 003114: provisional 68k sub.l d5, (a6)+
db 0x9B, 0xBE ; file 003116
db 0xEB, 0xB9 ; 003118: provisional 68k rol.l d5, d1
db 0x9B, 0xB9, 0xEB, 0xBB, 0x8F, 0xFF ; 00311A: provisional 68k sub.l d5, $ebbb8fff.l
db 0xFF, 0x05 ; 003120: provisional 68k dc.w $ff05
db 0x0B, 0x88, 0xEB, 0xBB ; 003122: provisional 68k movep.w d5, -$1445(a0)
db 0x9B, 0xBE ; file 003126
db 0xE9, 0x9E ; 003128: provisional 68k rol.l #$4, d6
db 0x99, 0x9E ; 00312A: provisional 68k sub.l d4, (a6)+
db 0xEB, 0xB9 ; 00312C: provisional 68k rol.l d5, d1
db 0x8F, 0xFF ; file 00312E
db 0xFF, 0x05 ; 003130: provisional 68k dc.w $ff05
db 0x0B, 0x18 ; 003132: provisional 68k btst.l d5, (a0)+
db 0xCE, 0xBB, 0xB9, 0x9A, 0xCE, 0xAA ; 003134: provisional 68k and.l ([$3136, a3.l], $ceaa), d7
db 0xEE, 0xC8 ; file 00313A
db 0xCE, 0xE8, 0x81, 0xFF ; 00313C: provisional 68k mulu.w -$7e01(a0), d7
db 0xFF, 0x06 ; 003140: provisional 68k dc.w $ff06
db 0x09, 0x8C, 0x9B, 0xB9 ; 003142: provisional 68k movep.w d4, -$6447(a4)
db 0xA8, 0x8D ; 003146: provisional 68k dc.w $a88d
db 0xA9, 0x9C ; 003148: provisional 68k dc.w $a99c
db 0x8C, 0x88, 0x88, 0xFF ; file 00314A
db 0xFF, 0x06 ; 00314E: provisional 68k dc.w $ff06
db 0x09, 0x8C, 0xE9, 0x9B ; 003150: provisional 68k movep.w d4, -$1665(a4)
db 0xEE, 0x9B ; 003154: provisional 68k ror.l #$7, d3
db 0xBB, 0xBB ; file 003156
db 0xBB, 0xB9, 0xDD, 0xFF, 0xFF, 0x06 ; 003158: provisional 68k eor.l d5, $ddffff06.l
db 0x09, 0x18 ; 00315E: provisional 68k btst.l d4, (a0)+
db 0xCC, 0x89, 0xED, 0xEB, 0xBB, 0xBB ; file 003160
db 0xBB, 0xB9, 0x8D, 0xFF, 0xFF, 0x07 ; 003166: provisional 68k eor.l d5, $8dffff07.l
db 0x09, 0xF8, 0x89, 0x9E ; 00316C: provisional 68k bset.b d4, $899e.w
db 0xE9, 0xBB ; 003170: provisional 68k rol.l d4, d3
db 0xBB, 0xBB ; file 003172
db 0x9E, 0xD9 ; 003174: provisional 68k suba.w (a1)+, a7
db 0xA1, 0xFF ; 003176: provisional 68k dc.w $a1ff
db 0xFF, 0x08 ; 003178: provisional 68k dc.w $ff08
db 0x08, 0x1E, 0xEA, 0xCE ; file 00317A
db 0xB9, 0x9B ; 00317E: provisional 68k eor.l d4, (a3)+
db 0xBB, 0xEC, 0xCB, 0xA1 ; 003180: provisional 68k cmpa.l -$345f(a4), a5
db 0xFF, 0xFF ; 003184: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 003186: provisional 68k btst.l d4, d7
db 0xC8, 0x8C ; file 003188
db 0x99, 0xE9, 0x99, 0xA8 ; 00318A: provisional 68k suba.l -$6658(a1), a4
db 0x8C, 0x81 ; 00318E: provisional 68k or.l d1, d6
db 0xFF, 0xFF ; 003190: provisional 68k dc.w $ffff
db 0x09, 0x06 ; 003192: provisional 68k btst.l d4, d6
db 0x18, 0x88 ; file 003194
db 0xAE, 0xCA ; 003196: provisional 68k dc.w $aeca
db 0xEA, 0x88 ; 003198: provisional 68k lsr.l #$5, d0
db 0x88, 0xFF ; file 00319A
db 0xFF, 0x0A ; 00319C: provisional 68k dc.w $ff0a
db 0x05, 0x88, 0xCC, 0x88 ; 00319E: provisional 68k movep.w d2, -$3378(a0)
db 0xCC, 0x88, 0x81, 0xFF ; file 0031A2
db 0xFF, 0x0B ; 0031A6: provisional 68k dc.w $ff0b
db 0x03, 0x88, 0x88, 0x88 ; 0031A8: provisional 68k movep.w d1, -$7778(a0)
db 0xFF, 0xFF ; 0031AC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0031AE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0031B0: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0031B2: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 0031B4: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 0031B8: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 0031BE
db 0x10, 0x10 ; 0031C2: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0031C4: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0031C6: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0031C8: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0031CA: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0031CE: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0031D2: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0031D4: provisional 68k neg.w d4
db 0x34, 0x3C, 0x58, 0xA4 ; 0031D6: provisional 68k move.w #$58a4, d2
db 0xA8, 0xA8 ; 0031DA: provisional 68k dc.w $a8a8
db 0x78, 0x80 ; 0031DC: provisional 68k moveq #$80, d4
db 0x8C, 0xDC ; 0031DE: provisional 68k divu.w (a4)+, d6
db 0xE0, 0xE0 ; 0031E0: provisional 68k asr.w -(a0)
db 0x64, 0x68 ; 0031E2: provisional 68k bcc.b $324c
db 0x80, 0x0C, 0x14, 0x4C, 0x08, 0x08 ; file 0031E4
db 0x6C, 0x40 ; 0031EA: provisional 68k bge.b $322c
db 0x44, 0x74, 0x0A, 0x00 ; 0031EC: provisional 68k neg.w (a4, d0.l * 2)
db 0x88, 0xFF ; file 0031F0
db 0xFF, 0x09 ; 0031F2: provisional 68k dc.w $ff09
db 0x01, 0x1F ; 0031F4: provisional 68k btst.l d0, (a7)+
db 0x9A, 0xFF ; file 0031F6
db 0xFF, 0x09 ; 0031F8: provisional 68k dc.w $ff09
db 0x01, 0x1F ; 0031FA: provisional 68k btst.l d0, (a7)+
db 0x9A, 0xFF ; file 0031FC
db 0xFF, 0x09 ; 0031FE: provisional 68k dc.w $ff09
db 0x01, 0x1A ; 003200: provisional 68k btst.l d0, (a2)+
db 0x98, 0xFF ; file 003202
db 0xFF, 0x09 ; 003204: provisional 68k dc.w $ff09
db 0x01, 0x19 ; 003206: provisional 68k btst.l d0, (a1)+
db 0x98, 0xFF ; file 003208
db 0xFF, 0x09 ; 00320A: provisional 68k dc.w $ff09
db 0x01, 0x89, 0x98, 0xFF ; 00320C: provisional 68k movep.w d0, -$6701(a1)
db 0xFF, 0x09 ; 003210: provisional 68k dc.w $ff09
db 0x01, 0x19 ; 003212: provisional 68k btst.l d0, (a1)+
db 0x98, 0xFF ; file 003214
db 0xFF, 0x09 ; 003216: provisional 68k dc.w $ff09
db 0x01, 0x89, 0x9D, 0xFF ; 003218: provisional 68k movep.w d0, -$6201(a1)
db 0xFF, 0x09 ; 00321C: provisional 68k dc.w $ff09
db 0x01, 0xFB ; file 00321E
db 0xAE, 0xFF ; 003220: provisional 68k dc.w $aeff
db 0xFF, 0x09 ; 003222: provisional 68k dc.w $ff09
db 0x01, 0xCB, 0xAE, 0xFF ; 003224: provisional 68k movep.l d0, -$5101(a3)
db 0xFF, 0x08 ; 003228: provisional 68k dc.w $ff08
db 0x04, 0x18, 0x9B, 0xCE ; 00322A: provisional 68k subi.b #$ce, (a0)+
db 0xF9, 0x9A ; 00322E: provisional 68k dc.w $f99a
db 0xFF, 0xFF ; 003230: provisional 68k dc.w $ffff
db 0x08, 0x04 ; file 003232
db 0x1F, 0xBB, 0xAD, 0xCB, 0xB9, 0xFF, 0xFF, 0x08, 0x05, 0x1F, 0x9B, 0xA8, 0xF9, 0xBA ; 003234: provisional 68k move.b ([$3236], $b9ffff08), ([a7], d0.w * 4, $9ba8f9ba)
db 0x81, 0xFF ; file 003242
db 0xFF, 0x08 ; 003244: provisional 68k dc.w $ff08
db 0x05, 0x18 ; 003246: provisional 68k btst.l d2, (a0)+
db 0x99, 0xFD, 0x89, 0xBC, 0x81, 0xFF ; file 003248
db 0xFF, 0x08 ; 00324E: provisional 68k dc.w $ff08
db 0x07, 0x1F ; 003250: provisional 68k btst.l d3, (a7)+
db 0xBA, 0xFE ; file 003252
db 0xF9, 0xBF ; 003254: provisional 68k dc.w $f9bf
db 0x81, 0x88 ; 003256: provisional 68k dc.w $8188
db 0x81, 0xFF ; file 003258
db 0xFF, 0x06 ; 00325A: provisional 68k dc.w $ff06
db 0x09, 0xCA, 0x81, 0x1A ; 00325C: provisional 68k movep.l d4, -$7ee6(a2)
db 0xBA, 0xFE, 0x89, 0xBF ; file 003260
db 0xE1, 0xAB ; 003264: provisional 68k lsl.l d0, d3
db 0xB9, 0xFF ; file 003266
db 0xFF, 0x05 ; 003268: provisional 68k dc.w $ff05
db 0x07, 0x18 ; 00326A: provisional 68k btst.l d3, (a0)+
db 0x99, 0xDD ; 00326C: provisional 68k suba.l (a5)+, a4
db 0x1A, 0xBA, 0xEE, 0xF9 ; 00326E: provisional 68k move.b $2169(pc), (a5)
db 0x9A, 0x01 ; 003272: provisional 68k sub.b d1, d5
db 0x01, 0xAB, 0xB9, 0xFF ; 003274: provisional 68k bclr.b d0, -$4601(a3)
db 0xFF, 0x05 ; 003278: provisional 68k dc.w $ff05
db 0x01, 0x1A ; 00327A: provisional 68k btst.l d0, (a2)+
db 0x9F, 0x01 ; 00327C: provisional 68k subx.b d1, d7
db 0x04, 0x19, 0xBA, 0xEE ; 00327E: provisional 68k subi.b #$ee, (a1)+
db 0x89, 0xBC ; file 003282
db 0x01, 0x01 ; 003284: provisional 68k btst.l d0, d1
db 0x89, 0xBA ; file 003286
db 0xFF, 0xFF ; 003288: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 00328A: provisional 68k btst.l d2, d1
db 0xF9, 0xAD ; 00328C: provisional 68k dc.w $f9ad
db 0x01, 0x07 ; 00328E: provisional 68k btst.l d0, d7
db 0x19, 0xBC, 0xE8, 0xC9, 0xBF, 0xED, 0x89, 0xBC ; 003290: provisional 68k move.b #$c9, ([$89bc])
db 0xFF, 0xFF ; 003298: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 00329A: provisional 68k btst.l d2, d1
db 0x99, 0xFE ; file 00329C
db 0x01, 0x07 ; 00329E: provisional 68k btst.l d0, d7
db 0xCB, 0xBF ; file 0032A0
db 0xEC, 0xAA ; 0032A2: provisional 68k lsr.l d6, d2
db 0x9F, 0x88 ; 0032A4: provisional 68k subx.l -(a0), -(a7)
db 0x89, 0xBC ; file 0032A6
db 0xFF, 0xFF ; 0032A8: provisional 68k dc.w $ffff
db 0x04, 0x02, 0x1C, 0xB9 ; 0032AA: provisional 68k subi.b #$b9, d2
db 0x81, 0x01 ; 0032AE: provisional 68k sbcd.b d1, d0
db 0x07, 0x9B ; 0032B0: provisional 68k bclr.b d3, (a3)+
db 0xBC, 0xDC ; 0032B2: provisional 68k cmpa.w (a4)+, a6
db 0x99, 0x9C ; 0032B4: provisional 68k sub.l d4, (a4)+
db 0xC8, 0xDA ; 0032B6: provisional 68k mulu.w (a2)+, d4
db 0xBC, 0xFF ; file 0032B8
db 0xFF, 0x04 ; 0032BA: provisional 68k dc.w $ff04
db 0x02, 0x1C, 0x9A, 0x81 ; 0032BC: provisional 68k andi.b #$81, (a4)+
db 0x01, 0x07 ; 0032C0: provisional 68k btst.l d0, d7
db 0xA9, 0xBA ; 0032C2: provisional 68k dc.w $a9ba
db 0x8F, 0x9B ; 0032C4: provisional 68k or.l d7, (a3)+
db 0x9A, 0xAC, 0xC9, 0xBA ; 0032C6: provisional 68k sub.l -$3646(a4), d5
db 0x01, 0x01 ; 0032CA: provisional 68k btst.l d0, d1
db 0x88, 0x81 ; 0032CC: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0032CE: provisional 68k dc.w $ffff
db 0x04, 0x02, 0x18, 0xCF ; 0032D0: provisional 68k subi.b #$cf, d2
db 0x81, 0x01 ; 0032D4: provisional 68k sbcd.b d1, d0
db 0x07, 0xAA, 0x9A, 0x88 ; 0032D6: provisional 68k bclr.b d3, -$6578(a2)
db 0xA9, 0x9A ; 0032DA: provisional 68k dc.w $a99a
db 0xA9, 0xBB ; 0032DC: provisional 68k dc.w $a9bb
db 0xBA, 0x01 ; 0032DE: provisional 68k cmp.b d1, d5
db 0x01, 0xA9, 0xC1, 0xFF ; 0032E0: provisional 68k bclr.b d0, -$3e01(a1)
db 0xFF, 0x04 ; 0032E4: provisional 68k dc.w $ff04
db 0x02, 0x18, 0x9C, 0x81 ; 0032E6: provisional 68k andi.b #$81, (a0)+
db 0x01, 0x0A, 0x9B, 0xB9 ; 0032EA: provisional 68k movep.w -$6447(a2), d0
db 0x88, 0xAA, 0x9F, 0xC9 ; 0032EE: provisional 68k or.l -$6037(a2), d4
db 0xAC, 0x9C ; 0032F2: provisional 68k dc.w $ac9c
db 0xDD, 0x9B ; 0032F4: provisional 68k add.l d6, (a3)+
db 0xBF, 0xFF ; file 0032F6
db 0xFF, 0x04 ; 0032F8: provisional 68k dc.w $ff04
db 0x02, 0x18, 0x9A, 0x81 ; 0032FA: provisional 68k andi.b #$81, (a0)+
db 0x01, 0x0A, 0xC9, 0x9A ; 0032FE: provisional 68k movep.w -$3666(a2), d0
db 0x88, 0xA9, 0x9F, 0xFA ; 003302: provisional 68k or.l -$6006(a1), d4
db 0xA9, 0x9C ; 003306: provisional 68k dc.w $a99c
db 0xA8, 0xCB ; 003308: provisional 68k dc.w $a8cb
db 0x9D, 0xFF ; file 00330A
db 0xFF, 0x04 ; 00330C: provisional 68k dc.w $ff04
db 0x02, 0x18, 0x99, 0x81 ; 00330E: provisional 68k andi.b #$81, (a0)+
db 0x01, 0x0A, 0xFA, 0x9A ; 003312: provisional 68k movep.w -$566(a2), d0
db 0x88, 0xA9, 0xAF, 0x8A ; 003316: provisional 68k or.l -$5076(a1), d4
db 0x99, 0x9A ; 00331A: provisional 68k sub.l d4, (a2)+
db 0xBA, 0xAB, 0x9E, 0xFF ; 00331C: provisional 68k cmp.l -$6101(a3), d5
db 0xFF, 0x04 ; 003320: provisional 68k dc.w $ff04
db 0x02, 0x18, 0x99, 0x81 ; 003322: provisional 68k andi.b #$81, (a0)+
db 0x01, 0x0A, 0x8A, 0x9C ; 003326: provisional 68k movep.w -$7564(a2), d0
db 0xD8, 0x9B ; 00332A: provisional 68k add.l (a3)+, d4
db 0xAF, 0x89 ; 00332C: provisional 68k dc.w $af89
db 0x99, 0x9A ; 00332E: provisional 68k sub.l d4, (a2)+
db 0x99, 0x9B ; 003330: provisional 68k sub.l d4, (a3)+
db 0xA1, 0xFF ; 003332: provisional 68k dc.w $a1ff
db 0xFF, 0x04 ; 003334: provisional 68k dc.w $ff04
db 0x02, 0x18, 0xB9, 0xFE ; 003336: provisional 68k andi.b #$fe, (a0)+
db 0x01, 0x0A, 0xF9, 0xBA ; 00333A: provisional 68k movep.w -$646(a2), d0
db 0xDF, 0x9B ; 00333E: provisional 68k add.l d7, (a3)+
db 0x98, 0xC9 ; 003340: provisional 68k suba.w a1, a4
db 0x99, 0x9F ; 003342: provisional 68k sub.l d4, (a7)+
db 0xA9, 0xBB ; 003344: provisional 68k dc.w $a9bb
db 0xA1, 0xFF ; 003346: provisional 68k dc.w $a1ff
db 0xFF, 0x04 ; 003348: provisional 68k dc.w $ff04
db 0x0E, 0x1F ; file 00334A
db 0xBB, 0xA8, 0xE1, 0xF9 ; 00334C: provisional 68k eor.l d5, -$1e07(a0)
db 0xBA, 0xDF ; 003350: provisional 68k cmpa.w (a7)+, a5
db 0xBB, 0x9F ; 003352: provisional 68k eor.l d5, (a7)+
db 0xAB, 0xB9 ; 003354: provisional 68k dc.w $abb9
db 0x98, 0xA9, 0x9B, 0xA1 ; 003356: provisional 68k sub.l -$645f(a1), d4
db 0xFF, 0xFF ; 00335A: provisional 68k dc.w $ffff
db 0x04, 0x0E ; file 00335C
db 0x1C, 0x9B ; 00335E: provisional 68k move.b (a3)+, (a6)
db 0xBC, 0xDD ; 003360: provisional 68k cmpa.w (a5)+, a6
db 0xF9, 0xB9 ; 003362: provisional 68k dc.w $f9b9
db 0x8F, 0xBB ; file 003364
db 0x9F, 0x9B ; 003366: provisional 68k sub.l d7, (a3)+
db 0xB9, 0x9C ; 003368: provisional 68k eor.l d4, (a4)+
db 0x9A, 0x99 ; 00336A: provisional 68k sub.l (a1)+, d5
db 0xC1, 0xFF ; file 00336C
db 0xFF, 0x04 ; 00336E: provisional 68k dc.w $ff04
db 0x0E, 0x1C ; file 003370
db 0x9B, 0xB9, 0xDD, 0x89, 0xB9, 0x8F ; 003372: provisional 68k sub.l d5, $dd89b98f.l
db 0xBB, 0x9C ; 003378: provisional 68k eor.l d5, (a4)+
db 0x9B, 0xBC ; file 00337A
db 0xFA, 0xBA ; 00337C: provisional 68k dc.w $faba
db 0x9A, 0xF1, 0xFF, 0xFF, 0x04, 0x0E, 0x18, 0xC9 ; 00337E: provisional 68k suba.w ([$40e18c9]), a5
db 0xB9, 0xDD ; 003386: provisional 68k cmpa.l (a5)+, a4
db 0x89, 0xBB ; file 003388
db 0xFC, 0xBB ; 00338A: provisional 68k dc.w $fcbb
db 0x9A, 0x9B ; 00338C: provisional 68k sub.l (a3)+, d5
db 0x98, 0xC9 ; 00338E: provisional 68k suba.w a1, a4
db 0xBA, 0xAA, 0x81, 0xFF ; 003390: provisional 68k cmp.l -$7e01(a2), d5
db 0xFF, 0x05 ; 003394: provisional 68k dc.w $ff05
db 0x0D, 0x8C, 0x99, 0xAD ; 003396: provisional 68k movep.w d6, -$6653(a4)
db 0xD9, 0xBB ; file 00339A
db 0xF8, 0xBB ; 00339C: provisional 68k dc.w $f8bb
db 0xB9, 0xBB ; file 00339E
db 0x98, 0xAB, 0xBC, 0x9A ; 0033A0: provisional 68k sub.l -$4366(a3), d4
db 0xE1, 0xFF ; file 0033A4
db 0xFF, 0x05 ; 0033A6: provisional 68k dc.w $ff05
db 0x0C, 0x88 ; file 0033A8
db 0xCB, 0xB8, 0xD9, 0xBB ; 0033AA: provisional 68k and.l d5, $d9bb.w
db 0xAA, 0xBB ; 0033AE: provisional 68k dc.w $aabb
db 0xBB, 0xBB ; file 0033B0
db 0x98, 0x9B ; 0033B2: provisional 68k sub.l (a3)+, d4
db 0xBF, 0x9A ; 0033B4: provisional 68k eor.l d7, (a2)+
db 0xFF, 0xFF ; 0033B6: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0x18, 0x89 ; 0033B8: provisional 68k movep.w $1889(a4), d2
db 0xB9, 0xC9 ; 0033BC: provisional 68k cmpa.l a1, a4
db 0xBB, 0x9C ; 0033BE: provisional 68k eor.l d5, (a4)+
db 0xBB, 0xBB ; file 0033C0
db 0xBB, 0x9C ; 0033C2: provisional 68k eor.l d5, (a4)+
db 0xBB, 0xBF ; file 0033C4
db 0xFF, 0xFF ; 0033C6: provisional 68k dc.w $ffff
db 0xFF, 0x06 ; 0033C8: provisional 68k dc.w $ff06
db 0x0B, 0x8C, 0xBB, 0xB9 ; 0033CA: provisional 68k movep.w d5, -$4447(a4)
db 0xBB, 0x9C ; 0033CE: provisional 68k eor.l d5, (a4)+
db 0xBB, 0x99 ; 0033D0: provisional 68k eor.l d5, (a1)+
db 0xBB, 0x99 ; 0033D2: provisional 68k eor.l d5, (a1)+
db 0xBB, 0xB8, 0xDD, 0xFF ; 0033D4: provisional 68k eor.l d5, $ddff.w
db 0xFF, 0x06 ; 0033D8: provisional 68k dc.w $ff06
db 0x0A, 0xD8 ; file 0033DA
db 0xAB, 0xBB ; 0033DC: provisional 68k dc.w $abbb
db 0xBB, 0xAC, 0xAA, 0xA9 ; 0033DE: provisional 68k eor.l d5, -$5557(a4)
db 0x99, 0x99 ; 0033E2: provisional 68k sub.l d4, (a1)+
db 0xBB, 0xA8, 0xFF, 0xFF ; 0033E4: provisional 68k eor.l d5, -$1(a0)
db 0x06, 0x0A, 0x18, 0xC9 ; file 0033E8
db 0xBB, 0x9C ; 0033EC: provisional 68k eor.l d5, (a4)+
db 0xCC, 0xCC, 0xCA, 0xC8 ; file 0033EE
db 0x8A, 0x99 ; 0033F2: provisional 68k or.l (a1)+, d5
db 0x8E, 0xFF ; file 0033F4
db 0xFF, 0x07 ; 0033F6: provisional 68k dc.w $ff07
db 0x09, 0x8A, 0x99, 0x9C ; 0033F8: provisional 68k movep.w d4, -$6664(a2)
db 0xC9, 0xBB ; file 0033FC
db 0xB9, 0xC8 ; 0033FE: provisional 68k cmpa.l a0, a4
db 0x88, 0xDD ; 003400: provisional 68k divu.w (a5)+, d4
db 0xDD, 0xFF ; file 003402
db 0xFF, 0x07 ; 003404: provisional 68k dc.w $ff07
db 0x08, 0x88 ; file 003406
db 0x8F, 0x9F ; 003408: provisional 68k or.l d7, (a7)+
db 0xFA, 0xBB ; 00340A: provisional 68k dc.w $fabb
db 0xBB, 0xBB ; file 00340C
db 0xBB, 0x9A ; 00340E: provisional 68k eor.l d5, (a2)+
db 0xFF, 0xFF ; 003410: provisional 68k dc.w $ffff
db 0x07, 0x08, 0x1E, 0xD9 ; 003412: provisional 68k movep.w $1ed9(a0), d3
db 0x9A, 0xC9 ; 003416: provisional 68k suba.w a1, a5
db 0xBB, 0xBB, 0xBB, 0xBB, 0x9A, 0xFF ; file 003418
db 0xFF, 0x08 ; 00341E: provisional 68k dc.w $ff08
db 0x08, 0x1C ; file 003420
db 0xAA, 0xCA ; 003422: provisional 68k dc.w $aaca
db 0xBB, 0xBB ; file 003424
db 0xBB, 0xB9, 0x9A, 0xC1, 0xFF, 0xFF ; 003426: provisional 68k eor.l d5, $9ac1ffff.l
db 0x09, 0x07 ; 00342C: provisional 68k btst.l d4, d7
db 0xF8, 0x8F ; 00342E: provisional 68k dc.w $f88f
db 0x99, 0x99 ; 003430: provisional 68k sub.l d4, (a1)+
db 0xBB, 0x9C ; 003432: provisional 68k eor.l d5, (a4)+
db 0xC9, 0xA1 ; 003434: provisional 68k and.l d4, -(a1)
db 0xFF, 0xFF ; 003436: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 003438: provisional 68k btst.l d4, d7
db 0xDD, 0xD8 ; 00343A: provisional 68k adda.l (a0)+, a6
db 0xAA, 0xCA ; 00343C: provisional 68k dc.w $aaca
db 0x99, 0xC8 ; 00343E: provisional 68k suba.l a0, a4
db 0x8C, 0xC1 ; 003440: provisional 68k divu.w d1, d6
db 0xFF, 0xFF ; 003442: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0xD8, 0xCC ; 003444: provisional 68k eori.b #$cc, d5
db 0x8F, 0xCC ; file 003448
db 0x8D, 0xD8 ; 00344A: provisional 68k divs.w (a0)+, d6
db 0xFF, 0xFF ; 00344C: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0x18, 0x88 ; 00344E: provisional 68k eori.b #$88, d4
db 0x88, 0x88, 0xDD, 0xFF ; file 003452
db 0xFF, 0x0B ; 003456: provisional 68k dc.w $ff0b
db 0x01, 0x18 ; 003458: provisional 68k btst.l d0, (a0)+
db 0x88, 0xFF ; file 00345A
db 0xFF, 0xFF ; 00345C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00345E: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 003460: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 003462: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 003466: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 00346C
db 0x10, 0x10 ; 003470: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 003472: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 003474: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 003476: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 003478: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00347C: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003480: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003482: provisional 68k neg.w d4
db 0x38, 0x3C, 0x58, 0xA4 ; 003484: provisional 68k move.w #$58a4, d4
db 0xA8, 0xAC ; 003488: provisional 68k dc.w $a8ac
db 0x80, 0x84 ; 00348A: provisional 68k or.l d4, d0
db 0x88, 0xE0 ; 00348C: provisional 68k divu.w -(a0), d4
db 0xE4, 0xE0 ; 00348E: provisional 68k roxr.w -(a0)
db 0x0C, 0x14, 0x44, 0x64 ; 003490: provisional 68k cmpi.b #$64, (a4)
db 0x68, 0x7C ; 003494: provisional 68k bvc.b $3512
db 0x0C, 0x0C ; file 003496
db 0x6C, 0x44 ; 003498: provisional 68k bge.b $34de
db 0x44, 0x7C ; file 00349A
db 0x0C, 0x01, 0x1F, 0xD1 ; 00349C: provisional 68k cmpi.b #$d1, d1
db 0xFF, 0xFF ; 0034A0: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xF9, 0xF1 ; 0034A2: provisional 68k cmpi.b #$f1, d1
db 0xFF, 0xFF ; 0034A6: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xD9, 0xD1 ; 0034A8: provisional 68k cmpi.b #$d1, d1
db 0xFF, 0xFF ; 0034AC: provisional 68k dc.w $ffff
db 0x0B, 0x02 ; 0034AE: provisional 68k btst.l d5, d2
db 0x18, 0x9D ; 0034B0: provisional 68k move.b (a5)+, (a4)
db 0xF1, 0xFF ; 0034B2: provisional 68k dc.w $f1ff
db 0xFF, 0x0B ; 0034B4: provisional 68k dc.w $ff0b
db 0x02, 0x1A, 0xBD, 0xF1 ; 0034B6: provisional 68k andi.b #$f1, (a2)+
db 0xFF, 0xFF ; 0034BA: provisional 68k dc.w $ffff
db 0x0B, 0x02 ; 0034BC: provisional 68k btst.l d5, d2
db 0x19, 0xBD, 0xE1, 0xFF ; file 0034BE
db 0xFF, 0x0B ; 0034C2: provisional 68k dc.w $ff0b
db 0x01, 0x1A ; 0034C4: provisional 68k btst.l d0, (a2)+
db 0xAF, 0xFF ; 0034C6: provisional 68k dc.w $afff
db 0xFF, 0x0B ; 0034C8: provisional 68k dc.w $ff0b
db 0x01, 0xFB, 0xDF, 0xFF ; file 0034CA
db 0xFF, 0x0B ; 0034CE: provisional 68k dc.w $ff0b
db 0x01, 0xAB, 0x8F, 0xFF ; 0034D0: provisional 68k bclr.b d0, -$7001(a3)
db 0xFF, 0x0A ; 0034D4: provisional 68k dc.w $ff0a
db 0x02, 0x1F, 0x9B, 0xF8 ; 0034D6: provisional 68k andi.b #$f8, (a7)+
db 0xFF, 0xFF ; 0034DA: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0x1A, 0xB9 ; 0034DC: provisional 68k eori.b #$b9, d4
db 0x89, 0xB9, 0xF1, 0xFF, 0xFF, 0x0A ; 0034E0: provisional 68k or.l d4, $f1ffff0a.l
db 0x04, 0xFB ; file 0034E6
db 0xB9, 0x89 ; 0034E8: provisional 68k cmpm.l (a1)+, (a4)+
db 0xBB, 0xF1, 0xFF, 0xFF, 0x0A, 0x04, 0xF9, 0x9A ; 0034EA: provisional 68k cmpa.l ([$a04f99a]), a5
db 0x8A, 0xB9, 0x81, 0xFF, 0xFF, 0x0A ; 0034F2: provisional 68k or.l $81ffff0a.l, d5
db 0x04, 0xF9 ; file 0034F8
db 0xA8, 0xCA ; 0034FA: provisional 68k dc.w $a8ca
db 0xBA, 0xE1 ; 0034FC: provisional 68k cmpa.w -(a1), a5
db 0xFF, 0xFF ; 0034FE: provisional 68k dc.w $ffff
db 0x07, 0x00 ; 003500: provisional 68k btst.l d3, d0
db 0xDD, 0x02 ; 003502: provisional 68k addx.b d2, d6
db 0x06, 0x9B, 0xDC, 0x89, 0xBA, 0xE1 ; 003504: provisional 68k addi.l #$dc89bae1, (a3)+
db 0x1D, 0xD1 ; file 00350A
db 0xFF, 0xFF ; 00350C: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1F, 0x99 ; 00350E: provisional 68k addi.b #$99, d1
db 0x01, 0x07 ; 003512: provisional 68k btst.l d0, d7
db 0x1F, 0xBB, 0x8C, 0x89, 0xBA, 0xE1 ; 003514: provisional 68k move.b $349f(pc, a0.l), -$1f(a7, a3.l)
db 0xDB, 0x9A ; 00351A: provisional 68k add.l d5, (a2)+
db 0xFF, 0xFF ; 00351C: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1A, 0x98 ; 00351E: provisional 68k addi.b #$98, d1
db 0x01, 0x04 ; 003522: provisional 68k btst.l d0, d4
db 0x1D, 0xB9, 0xCC, 0x89, 0xBA, 0x01, 0x02, 0xDB ; 003524: provisional 68k move.b $cc89ba01.l, -$25(a6, d0.w)
db 0xB9, 0xF1, 0xFF, 0xFF, 0x06, 0x01, 0xF9, 0xAE ; 00352C: provisional 68k cmpa.l ([$601f9ae]), a4
db 0x01, 0x07 ; 003534: provisional 68k btst.l d0, d7
db 0xE9, 0xBA ; 003536: provisional 68k rol.l d4, d2
db 0xC8, 0x89 ; file 003538
db 0x9D, 0xEE, 0x89, 0xBA ; 00353A: provisional 68k suba.l -$7646(a6), a6
db 0xFF, 0xFF ; 00353E: provisional 68k dc.w $ffff
db 0x05, 0x02 ; 003540: provisional 68k btst.l d2, d2
db 0x1F, 0xB9, 0x81, 0x01, 0x08, 0xFB, 0xBD, 0x8D ; 003542: provisional 68k move.b $810108fb.l, ([], a3.l * 4)
db 0x89, 0x9F ; 00354A: provisional 68k or.l d4, (a7)+
db 0xEC, 0xC9 ; file 00354C
db 0xBD, 0xE1 ; 00354E: provisional 68k cmpa.l -(a1), a6
db 0xFF, 0xFF ; 003550: provisional 68k dc.w $ffff
db 0x05, 0x0B, 0x19, 0xB9 ; 003552: provisional 68k movep.w $19b9(a3), d2
db 0xE1, 0x1F ; 003556: provisional 68k rol.b #$8, d7
db 0x9B, 0xBF ; file 003558
db 0x8A, 0xA9, 0xA8, 0xF8 ; 00355A: provisional 68k or.l -$5708(a1), d5
db 0xC9, 0xBF ; file 00355E
db 0xFF, 0xFF ; 003560: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 003562: provisional 68k btst.l d2, d1
db 0x8A, 0x9D ; 003564: provisional 68k or.l (a5)+, d5
db 0x01, 0x08, 0x1F, 0x9B ; 003566: provisional 68k movep.w $1f9b(a0), d0
db 0x9F, 0x8D ; 00356A: provisional 68k subx.l -(a5), -(a7)
db 0xBB, 0x9F ; 00356C: provisional 68k eor.l d5, (a7)+
db 0xF8, 0xC9 ; 00356E: provisional 68k dc.w $f8c9
db 0xBF, 0xFF ; file 003570
db 0xFF, 0x05 ; 003572: provisional 68k dc.w $ff05
db 0x01, 0xE8, 0xD8, 0x01 ; 003574: provisional 68k bset.b d0, -$27ff(a0)
db 0x08, 0x18 ; file 003578
db 0xA9, 0x9D ; 00357A: provisional 68k dc.w $a99d
db 0xED, 0xBB ; 00357C: provisional 68k rol.l d6, d3
db 0xBA, 0xAD, 0x8B, 0xBF ; 00357E: provisional 68k cmp.l -$7441(a5), d5
db 0xFF, 0xFF ; 003582: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 003584: provisional 68k btst.l d2, d1
db 0xFD, 0xAF ; 003586: provisional 68k dc.w $fdaf
db 0x01, 0x08, 0x1D, 0xBB ; 003588: provisional 68k movep.w $1dbb(a0), d0
db 0xBA, 0x8A ; 00358C: provisional 68k cmp.l a2, d5
db 0x99, 0xAA, 0x99, 0x9B ; 00358E: provisional 68k sub.l d4, -$6665(a2)
db 0xBD, 0x01 ; 003592: provisional 68k eor.b d6, d1
db 0x00, 0xDD ; file 003594
db 0xFF, 0xFF ; 003596: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 003598: provisional 68k btst.l d2, d1
db 0xFA, 0x9F ; 00359A: provisional 68k dc.w $fa9f
db 0x01, 0x0B, 0x1F, 0x9B ; 00359C: provisional 68k movep.w $1f9b(a3), d0
db 0x9D, 0xED, 0x9A, 0xDD ; 0035A0: provisional 68k suba.l -$6523(a5), a6
db 0xA9, 0xAA ; 0035A4: provisional 68k dc.w $a9aa
db 0x9D, 0xCD ; 0035A6: provisional 68k suba.l a5, a6
db 0xBB, 0xA1 ; 0035A8: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 0035AA: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 0035AC: provisional 68k btst.l d2, d1
db 0xFA, 0x9F ; 0035AE: provisional 68k dc.w $fa9f
db 0x01, 0x0B, 0x18, 0xA9 ; 0035B0: provisional 68k movep.w $18a9(a3), d0
db 0x9F, 0xED, 0x9A, 0x8F ; 0035B4: provisional 68k suba.l -$6571(a5), a7
db 0xA9, 0x99 ; 0035B8: provisional 68k dc.w $a999
db 0x9D, 0xDD ; 0035BA: provisional 68k suba.l (a5)+, a6
db 0xAB, 0xD1 ; 0035BC: provisional 68k dc.w $abd1
db 0xFF, 0xFF ; 0035BE: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 0035C0: provisional 68k btst.l d2, d1
db 0xFA, 0x9F ; 0035C2: provisional 68k dc.w $fa9f
db 0x01, 0x0B, 0x18, 0xA9 ; 0035C4: provisional 68k movep.w $18a9(a3), d0
db 0xA8, 0x8D ; 0035C8: provisional 68k dc.w $a88d
db 0xB9, 0x88 ; 0035CA: provisional 68k cmpm.l (a0)+, (a4)+
db 0xA9, 0x99 ; 0035CC: provisional 68k dc.w $a999
db 0x99, 0xDC ; 0035CE: provisional 68k suba.l (a4)+, a4
db 0xAB, 0x81 ; 0035D0: provisional 68k dc.w $ab81
db 0xFF, 0xFF ; 0035D2: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 0035D4: provisional 68k btst.l d2, d1
db 0xF9, 0xBD ; 0035D6: provisional 68k dc.w $f9bd
db 0x01, 0x0A, 0x18, 0xAB ; 0035D8: provisional 68k movep.w $18ab(a2), d0
db 0xA8, 0x8A ; 0035DC: provisional 68k dc.w $a88a
db 0xB9, 0x88 ; 0035DE: provisional 68k cmpm.l (a0)+, (a4)+
db 0x99, 0xA9, 0xA9, 0x9A ; 0035E0: provisional 68k sub.l d4, -$5666(a1)
db 0xBB, 0xFF ; file 0035E4
db 0xFF, 0x05 ; 0035E6: provisional 68k dc.w $ff05
db 0x01, 0xF9, 0xB9, 0x01, 0x0A, 0x18 ; 0035E8: provisional 68k bset.b d0, $b9010a18.l
db 0x9B, 0x98 ; 0035EE: provisional 68k sub.l d5, (a0)+
db 0x89, 0xB9, 0x8D, 0x99, 0xD9, 0xAA ; 0035F0: provisional 68k or.l d4, $8d99d9aa.l
db 0x9B, 0xB9, 0xFF, 0xFF, 0x05, 0x0D ; 0035F6: provisional 68k sub.l d5, $ffff050d.l
db 0xF9, 0xBB ; 0035FC: provisional 68k dc.w $f9bb
db 0xDE, 0x18 ; 0035FE: provisional 68k add.b (a0)+, d7
db 0x9B, 0x98 ; 003600: provisional 68k sub.l d5, (a0)+
db 0x8B, 0xB9, 0xFA, 0xB9, 0xAB, 0xAA ; 003602: provisional 68k or.l d5, $fab9abaa.l
db 0x99, 0xB9, 0xFF, 0xFF, 0x05, 0x0D ; 003608: provisional 68k sub.l d4, $ffff050d.l
db 0xF9, 0xBB ; 00360E: provisional 68k dc.w $f9bb
db 0x9C, 0x18 ; 003610: provisional 68k sub.b (a0)+, d6
db 0x9B, 0x98 ; 003612: provisional 68k sub.l d5, (a0)+
db 0x8B, 0xB9, 0xD9, 0xBB, 0xA9, 0xA9 ; 003614: provisional 68k or.l d5, $d9bba9a9.l
db 0xA9, 0xB9 ; 00361A: provisional 68k dc.w $a9b9
db 0xFF, 0xFF ; 00361C: provisional 68k dc.w $ffff
db 0x05, 0x0D, 0x8D, 0x9B ; 00361E: provisional 68k movep.w -$7265(a5), d2
db 0x98, 0x18 ; 003622: provisional 68k sub.b (a0)+, d4
db 0x9B, 0x98 ; 003624: provisional 68k sub.l d5, (a0)+
db 0xDB, 0xB9, 0xD9, 0xBB, 0x8F, 0xAB ; 003626: provisional 68k add.l d5, $d9bb8fab.l
db 0xAD, 0xAF ; 00362C: provisional 68k dc.w $adaf
db 0xFF, 0xFF ; 00362E: provisional 68k dc.w $ffff
db 0x05, 0x0D, 0x18, 0xD9 ; 003630: provisional 68k movep.w $18d9(a5), d2
db 0x9F, 0x1D ; 003634: provisional 68k sub.b d7, (a5)+
db 0xBB, 0x98 ; 003636: provisional 68k eor.l d5, (a0)+
db 0xDB, 0xB9, 0xAB, 0xB9, 0xCD, 0x9B ; 003638: provisional 68k add.l d5, $abb9cd9b.l
db 0xAD, 0xA8 ; 00363E: provisional 68k dc.w $ada8
db 0xFF, 0xFF ; 003640: provisional 68k dc.w $ffff
db 0x05, 0x0D, 0x1E, 0x8A ; 003642: provisional 68k movep.w $1e8a(a5), d2
db 0x99, 0x8D ; 003646: provisional 68k subx.l -(a5), -(a4)
db 0x9B, 0xBF ; file 003648
db 0x8B, 0xB9, 0x9B, 0xBA, 0xCA, 0xBB ; 00364A: provisional 68k or.l d5, $9bbacabb.l
db 0x8D, 0x91 ; 003650: provisional 68k or.l d6, (a1)
db 0xFF, 0xFF ; 003652: provisional 68k dc.w $ffff
db 0x06, 0x0C, 0xCD, 0xBB ; file 003654
db 0x9A, 0xBB, 0xBD, 0xAB, 0xB9, 0xBB, 0xB9, 0xFB, 0xBB, 0xDA ; 003658: provisional 68k sub.l ([$f015, a3.l * 4], $b9fbbbda), d5
db 0x91, 0xFF ; file 003662
db 0xFF, 0x06 ; 003664: provisional 68k dc.w $ff06
db 0x0C, 0x18, 0xAB, 0xB9 ; 003666: provisional 68k cmpi.b #$b9, (a0)+
db 0xBB, 0xBA, 0x9B, 0xBB ; file 00366A
db 0xBB, 0xB9, 0xAB, 0xB9, 0xFD, 0xF1 ; 00366E: provisional 68k eor.l d5, $abb9fdf1.l
db 0xFF, 0xFF ; 003674: provisional 68k dc.w $ffff
db 0x06, 0x0B ; file 003676
db 0x18, 0xD9 ; 003678: provisional 68k move.b (a1)+, (a4)+
db 0xBB, 0xBB ; file 00367A
db 0x9A, 0x9B ; 00367C: provisional 68k sub.l (a3)+, d5
db 0xB9, 0xBB, 0xB9, 0xBB ; file 00367E
db 0xB9, 0x8E ; 003682: provisional 68k cmpm.l (a6)+, (a4)+
db 0xFF, 0xFF ; 003684: provisional 68k dc.w $ffff
db 0x07, 0x09, 0x8A, 0xBB ; 003686: provisional 68k movep.w -$7545(a1), d3
db 0xBA, 0xD8 ; 00368A: provisional 68k cmpa.w (a0)+, a5
db 0xDD, 0xDA ; 00368C: provisional 68k adda.l (a2)+, a6
db 0x99, 0xAA, 0xBB, 0xBD ; 00368E: provisional 68k sub.l d4, -$4443(a2)
db 0xFF, 0xFF ; 003692: provisional 68k dc.w $ffff
db 0x07, 0x09, 0x8D, 0x99 ; 003694: provisional 68k movep.w -$7267(a1), d3
db 0xBD, 0xC8 ; 003698: provisional 68k cmpa.l a0, a6
db 0xDD, 0xDA ; 00369A: provisional 68k adda.l (a2)+, a6
db 0xD8, 0x8D ; 00369C: provisional 68k add.l a5, d4
db 0xA9, 0x98 ; 00369E: provisional 68k dc.w $a998
db 0xFF, 0xFF ; 0036A0: provisional 68k dc.w $ffff
db 0x07, 0x09, 0x18, 0xDA ; 0036A2: provisional 68k movep.w $18da(a1), d3
db 0x9A, 0xA9, 0xBB, 0xBB ; 0036A6: provisional 68k sub.l -$4445(a1), d5
db 0x98, 0x88 ; 0036AA: provisional 68k sub.l a0, d4
db 0xCC, 0xCC ; file 0036AC
db 0xFF, 0xFF ; 0036AE: provisional 68k dc.w $ffff
db 0x08, 0x08 ; file 0036B0
db 0xC8, 0x9A ; 0036B2: provisional 68k and.l (a2)+, d4
db 0x8D, 0x9B ; 0036B4: provisional 68k or.l d6, (a3)+
db 0xBB, 0xBB ; file 0036B6
db 0xBB, 0x98 ; 0036B8: provisional 68k eor.l d5, (a0)+
db 0x81, 0xFF ; file 0036BA
db 0xFF, 0x08 ; 0036BC: provisional 68k dc.w $ff08
db 0x08, 0x18 ; file 0036BE
db 0x9A, 0xDA ; 0036C0: provisional 68k suba.w (a2)+, a5
db 0x9B, 0xBB, 0xBB, 0xBB ; file 0036C2
db 0xBC, 0xE1 ; 0036C6: provisional 68k cmpa.w -(a1), a6
db 0xFF, 0xFF ; 0036C8: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 0036CA: provisional 68k btst.l d4, d7
db 0xFD, 0xDD ; 0036CC: provisional 68k dc.w $fddd
db 0x9B, 0x9B ; 0036CE: provisional 68k sub.l d5, (a3)+
db 0xBB, 0xB9, 0x9F, 0xF1, 0xFF, 0xFF ; 0036D0: provisional 68k eor.l d5, $9ff1ffff.l
db 0x09, 0x07 ; 0036D6: provisional 68k btst.l d4, d7
db 0x18, 0xC8 ; file 0036D8
db 0xA9, 0xA9 ; 0036DA: provisional 68k dc.w $a9a9
db 0x9B, 0x9D ; 0036DC: provisional 68k sub.l d5, (a5)+
db 0x8A, 0x91 ; 0036DE: provisional 68k or.l (a1), d5
db 0xFF, 0xFF ; 0036E0: provisional 68k dc.w $ffff
db 0x0A, 0x06, 0xC8, 0xDA ; 0036E2: provisional 68k eori.b #$da, d6
db 0xDD, 0xAA, 0xA8, 0xC8 ; 0036E6: provisional 68k add.l d6, -$5738(a2)
db 0xA1, 0xFF ; 0036EA: provisional 68k dc.w $a1ff
db 0xFF, 0x0A ; 0036EC: provisional 68k dc.w $ff0a
db 0x06, 0xCC ; 0036EE: provisional 68k dc.w $6cc
db 0x8D, 0x88 ; 0036F0: provisional 68k dc.w $8d88
db 0xDD, 0x8C ; 0036F2: provisional 68k addx.l -(a4), -(a6)
db 0xCC, 0x81 ; 0036F4: provisional 68k and.l d1, d6
db 0xFF, 0xFF ; 0036F6: provisional 68k dc.w $ffff
db 0x0B, 0x04 ; 0036F8: provisional 68k btst.l d5, d4
db 0x88, 0xC8, 0x88, 0xCC, 0x88, 0xFF ; file 0036FA
db 0xFF, 0x0C ; 003700: provisional 68k dc.w $ff0c
db 0x00, 0x88 ; file 003702
db 0xFF, 0xFF ; 003704: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003706: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003708: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 00370A: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 00370E: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 003714
db 0x10, 0x10 ; 003718: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00371A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00371C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00371E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 003720: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 003724: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003728: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00372A: provisional 68k neg.w d4
db 0x24, 0x28, 0x50, 0xA4 ; 00372C: provisional 68k move.l $50a4(a0), d2
db 0xA8, 0xAC ; 003730: provisional 68k dc.w $a8ac
db 0x64, 0x68 ; 003732: provisional 68k bcc.b $379c
db 0x7C, 0xE0 ; 003734: provisional 68k moveq #$e0, d6
db 0xE4, 0xE0 ; 003736: provisional 68k roxr.w -(a0)
db 0x44, 0x44 ; 003738: provisional 68k neg.w d4
db 0x78, 0x0C ; 00373A: provisional 68k moveq #$c, d4
db 0x10, 0x50 ; file 00373C
db 0x48, 0x4C ; 00373E: provisional 68k dc.w $484c
db 0x58, 0x7C, 0x80, 0x88 ; file 003740
db 0xFF, 0xFF ; 003744: provisional 68k dc.w $ffff
db 0x0D, 0x01 ; 003746: provisional 68k btst.l d6, d1
db 0xA9, 0xA1 ; 003748: provisional 68k dc.w $a9a1
db 0xFF, 0xFF ; 00374A: provisional 68k dc.w $ffff
db 0x0D, 0x01 ; 00374C: provisional 68k btst.l d6, d1
db 0x99, 0xC1 ; 00374E: provisional 68k suba.l d1, a4
db 0xFF, 0xFF ; 003750: provisional 68k dc.w $ffff
db 0x0C, 0x02, 0x1C, 0x9F ; 003752: provisional 68k cmpi.b #$9f, d2
db 0xDD, 0xFF ; file 003756
db 0xFF, 0x0C ; 003758: provisional 68k dc.w $ff0c
db 0x01, 0x19 ; 00375A: provisional 68k btst.l d0, (a1)+
db 0x9A, 0xFF ; file 00375C
db 0xFF, 0x0C ; 00375E: provisional 68k dc.w $ff0c
db 0x01, 0xE9, 0x9D, 0xFF ; 003760: provisional 68k bset.b d0, -$6201(a1)
db 0xFF, 0x0C ; 003764: provisional 68k dc.w $ff0c
db 0x01, 0xC9, 0xF8, 0xFF ; 003766: provisional 68k movep.l d0, -$701(a1)
db 0xFF, 0x0C ; 00376A: provisional 68k dc.w $ff0c
db 0x01, 0x99 ; 00376C: provisional 68k bclr.b d0, (a1)+
db 0xED, 0xFF ; file 00376E
db 0xFF, 0x0B ; 003770: provisional 68k dc.w $ff0b
db 0x01, 0x1C ; 003772: provisional 68k btst.l d0, (a4)+
db 0xBF, 0xFF ; file 003774
db 0xFF, 0x0B ; 003776: provisional 68k dc.w $ff0b
db 0x02, 0x19, 0xBA, 0x88 ; 003778: provisional 68k andi.b #$88, (a1)+
db 0xFF, 0xFF ; 00377C: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 00377E: provisional 68k btst.l d5, d3
db 0xAB, 0xBA ; 003780: provisional 68k dc.w $abba
db 0x9B, 0x9C ; 003782: provisional 68k sub.l d5, (a4)+
db 0xFF, 0xFF ; 003784: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0x1C, 0x9B ; 003786: provisional 68k eori.b #$9b, d4
db 0x9E, 0x9B ; 00378A: provisional 68k sub.l (a3)+, d7
db 0xBE, 0xFF ; file 00378C
db 0xFF, 0x0A ; 00378E: provisional 68k dc.w $ff0a
db 0x04, 0x1C, 0x9B, 0xF8 ; 003790: provisional 68k subi.b #$f8, (a4)+
db 0x9B, 0x98 ; 003794: provisional 68k sub.l d5, (a0)+
db 0xFF, 0xFF ; 003796: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 003798: provisional 68k btst.l d3, d1
db 0x1C, 0xDD ; 00379A: provisional 68k move.b (a5)+, (a6)+
db 0x01, 0x04 ; 00379C: provisional 68k btst.l d0, d4
db 0x1C, 0x9F ; 00379E: provisional 68k move.b (a7)+, (a6)
db 0xCD, 0x9B ; 0037A0: provisional 68k and.l d6, (a3)+
db 0xFD, 0xFF ; 0037A2: provisional 68k dc.w $fdff
db 0xFF, 0x07 ; 0037A4: provisional 68k dc.w $ff07
db 0x01, 0xCF, 0xF1, 0x01 ; 0037A6: provisional 68k movep.l d0, -$eff(a7)
db 0x04, 0x8F ; file 0037AA
db 0xBA, 0x8D ; 0037AC: provisional 68k cmp.l a5, d5
db 0x9B, 0xF1, 0xFF, 0xFF, 0x07, 0x01, 0xA9, 0xA1 ; 0037AE: provisional 68k suba.l ([$701a9a1]), a5
db 0x01, 0x07 ; 0037B6: provisional 68k btst.l d0, d7
db 0xCB, 0xB8, 0x8E, 0xBB ; 0037B8: provisional 68k and.l d5, $8ebb.w
db 0xF1, 0x1F ; 0037BC: provisional 68k dc.w $f11f
db 0x99, 0xA1 ; 0037BE: provisional 68k sub.l d4, -(a1)
db 0xFF, 0xFF ; 0037C0: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1C, 0x9A ; 0037C2: provisional 68k addi.b #$9a, d1
db 0x01, 0x08, 0xDD, 0xFB ; 0037C6: provisional 68k movep.w -$2205(a0), d0
db 0x98, 0x8E ; 0037CA: provisional 68k sub.l a6, d4
db 0x99, 0xFD ; file 0037CC
db 0x1F, 0xBB, 0x9C, 0xFF, 0xFF, 0x06, 0x01, 0xC9 ; 0037CE: provisional 68k move.b $37cf(pc, a1.l), ([a7], a7.l * 8, $1c9)
db 0x98, 0x01 ; 0037D6: provisional 68k sub.b d1, d4
db 0x08, 0x1C ; file 0037D8
db 0x9B, 0xA8, 0x8E, 0x99 ; 0037DA: provisional 68k sub.l d5, -$7167(a0)
db 0xC1, 0x1E ; 0037DE: provisional 68k and.b d0, (a6)+
db 0xBB, 0xAD, 0xFF, 0xFF ; 0037E0: provisional 68k eor.l d5, -$1(a5)
db 0x06, 0x01, 0xFB, 0xF1 ; 0037E4: provisional 68k addi.b #$f1, d1
db 0x01, 0x04 ; 0037E8: provisional 68k btst.l d0, d4
db 0x1F, 0xB9, 0x88, 0xFA, 0x99, 0x01, 0x02, 0xDD ; 0037EA: provisional 68k move.b $88fa9901.l, -$23(a7, d0.w)
db 0xBB, 0xE1 ; 0037F2: provisional 68k cmpa.l -(a1), a5
db 0xFF, 0xFF ; 0037F4: provisional 68k dc.w $ffff
db 0x05, 0x02 ; 0037F6: provisional 68k btst.l d2, d2
db 0x1C, 0x9B ; 0037F8: provisional 68k move.b (a3)+, (a6)
db 0xA1, 0x01 ; 0037FA: provisional 68k dc.w $a101
db 0x08, 0xAB ; file 0037FC
db 0xB9, 0x8E ; 0037FE: provisional 68k cmpm.l (a6)+, (a4)+
db 0x9F, 0xBF, 0x8C, 0x88 ; file 003800
db 0xBB, 0xE1 ; 003804: provisional 68k cmpa.l -(a1), a5
db 0xFF, 0xFF ; 003806: provisional 68k dc.w $ffff
db 0x05, 0x02 ; 003808: provisional 68k btst.l d2, d2
db 0x1C, 0xFF ; file 00380A
db 0xC1, 0x01 ; 00380C: provisional 68k abcd.b d1, d0
db 0x08, 0xF9 ; file 00380E
db 0xB9, 0xD8 ; 003810: provisional 68k cmpa.l (a0)+, a4
db 0x99, 0xBF, 0xCE, 0x88 ; file 003812
db 0xBB, 0xE1 ; 003816: provisional 68k cmpa.l -(a1), a5
db 0xFF, 0xFF ; 003818: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0xDD, 0xEE ; 00381A: provisional 68k movep.w -$2212(a4), d2
db 0xDD, 0x18 ; 00381E: provisional 68k add.b d6, (a0)+
db 0xF9, 0x99 ; 003820: provisional 68k dc.w $f999
db 0x88, 0xBB, 0xB9, 0xFF, 0xEE, 0xBB, 0xE1, 0xFF ; 003822: provisional 68k or.l ([$eebc1a23]), d4
db 0xFF, 0x05 ; 00382A: provisional 68k dc.w $ff05
db 0x0E, 0x18 ; file 00382C
db 0x9F, 0xDD ; 00382E: provisional 68k suba.l (a5)+, a7
db 0x18, 0x9B ; 003830: provisional 68k move.b (a3)+, (a4)
db 0xB9, 0xE8, 0x99, 0x9F ; 003832: provisional 68k cmpa.l -$6661(a0), a4
db 0xF9, 0x99 ; 003836: provisional 68k dc.w $f999
db 0xB9, 0xE1 ; 003838: provisional 68k cmpa.l -(a1), a4
db 0xAF, 0xA1 ; 00383A: provisional 68k dc.w $afa1
db 0xFF, 0xFF ; 00383C: provisional 68k dc.w $ffff
db 0x05, 0x0E, 0x1C, 0x99 ; 00383E: provisional 68k movep.w $1c99(a6), d2
db 0x81, 0x18 ; 003842: provisional 68k or.b d0, (a0)+
db 0xF9, 0x9F ; 003844: provisional 68k dc.w $f99f
db 0x88, 0x99 ; 003846: provisional 68k or.l (a1)+, d4
db 0x9A, 0xA9, 0x9F, 0xF9 ; 003848: provisional 68k sub.l -$6007(a1), d5
db 0xE1, 0xFB, 0x9C, 0xFF ; file 00384C
db 0xFF, 0x05 ; 003850: provisional 68k dc.w $ff05
db 0x0E, 0x1C ; file 003852
db 0x99, 0x81 ; 003854: provisional 68k subx.l d1, d4
db 0x18, 0xA9, 0x9F, 0x88 ; 003856: provisional 68k move.b -$6078(a1), (a4)
db 0xF9, 0xA8 ; 00385A: provisional 68k dc.w $f9a8
db 0xA9, 0x99 ; 00385C: provisional 68k dc.w $a999
db 0x9F, 0xFA, 0xAB, 0x9E ; 00385E: provisional 68k suba.l $ffffe3fe(pc), a7
db 0xFF, 0xFF ; 003862: provisional 68k dc.w $ffff
db 0x05, 0x0E, 0x1C, 0x99 ; 003864: provisional 68k movep.w $1c99(a6), d2
db 0x81, 0x18 ; 003868: provisional 68k or.b d0, (a0)+
db 0xA9, 0x9C ; 00386A: provisional 68k dc.w $a99c
db 0xDE, 0x9B ; 00386C: provisional 68k add.l (a3)+, d7
db 0xA8, 0xA9 ; 00386E: provisional 68k dc.w $a8a9
db 0x9F, 0x9F ; 003870: provisional 68k sub.l d7, (a7)+
db 0xFE, 0xEB ; 003872: provisional 68k dc.w $feeb
db 0x91, 0xFF ; file 003874
db 0xFF, 0x05 ; 003876: provisional 68k dc.w $ff05
db 0x0E, 0x1F ; file 003878
db 0xB9, 0x81 ; 00387A: provisional 68k eor.l d4, d1
db 0x18, 0xA9, 0x9C, 0xDA ; 00387C: provisional 68k move.b -$6326(a1), (a4)
db 0x9B, 0xA8, 0xF9, 0x9A ; 003880: provisional 68k sub.l d5, -$666(a0)
db 0x99, 0xB9, 0x9B, 0xF1, 0xFF, 0xFF ; 003884: provisional 68k sub.l d4, $9bf1ffff.l
db 0x05, 0x0E, 0x89, 0xBB ; 00388A: provisional 68k movep.w -$7645(a6), d2
db 0xF1, 0x18 ; 00388E: provisional 68k dc.w $f118
db 0xFB, 0xBA ; 003890: provisional 68k dc.w $fbba
db 0xDF, 0xBB ; file 003892
db 0xAC, 0x9B ; 003894: provisional 68k dc.w $ac9b
db 0x9A, 0x99 ; 003896: provisional 68k sub.l (a1)+, d5
db 0x99, 0xBB ; file 003898
db 0xA1, 0xFF ; 00389A: provisional 68k dc.w $a1ff
db 0xFF, 0x05 ; 00389C: provisional 68k dc.w $ff05
db 0x0E, 0x8F ; file 00389E
db 0xBB, 0x9C ; 0038A0: provisional 68k eor.l d5, (a4)+
db 0x18, 0x9B ; 0038A2: provisional 68k move.b (a3)+, (a4)
db 0xBA, 0xDF ; 0038A4: provisional 68k cmpa.w (a7)+, a5
db 0xBB, 0xCC ; 0038A6: provisional 68k cmpa.l a4, a5
db 0xBB, 0x99 ; 0038A8: provisional 68k eor.l d5, (a1)+
db 0x9F, 0xF9, 0xBB, 0xC1, 0xFF, 0xFF ; 0038AA: provisional 68k suba.l $bbc1ffff.l, a7
db 0x05, 0x0E, 0x8F, 0xBB ; 0038B0: provisional 68k movep.w -$7045(a6), d2
db 0xBA, 0xDD ; 0038B4: provisional 68k cmpa.w (a5)+, a5
db 0x9B, 0xBA ; file 0038B6
db 0xE9, 0xBB ; 0038B8: provisional 68k rol.l d4, d3
db 0xCA, 0xBB, 0x9F, 0xFF, 0x9F, 0x9B, 0xC1, 0xFF ; 0038BA: provisional 68k and.l ([$9f9bfabb]), d5
db 0xFF, 0x05 ; 0038C2: provisional 68k dc.w $ff05
db 0x0E, 0x18 ; file 0038C4
db 0xF9, 0x9F ; 0038C6: provisional 68k dc.w $f99f
db 0xDD, 0x9B ; 0038C8: provisional 68k add.l d6, (a3)+
db 0xBA, 0xEB, 0xBB, 0xFF ; 0038CA: provisional 68k cmpa.w -$4401(a3), a5
db 0xBB, 0xFE ; file 0038CE
db 0xF9, 0x9A ; 0038D0: provisional 68k dc.w $f99a
db 0xAF, 0xC1 ; 0038D2: provisional 68k dc.w $afc1
db 0xFF, 0xFF ; 0038D4: provisional 68k dc.w $ffff
db 0x06, 0x0D ; file 0038D6
db 0xEF, 0x99 ; 0038D8: provisional 68k rol.l #$7, d1
db 0x88, 0x9B ; 0038DA: provisional 68k or.l (a3)+, d4
db 0xBA, 0x8B ; 0038DC: provisional 68k cmp.l a3, d5
db 0xBB, 0x99 ; 0038DE: provisional 68k eor.l d5, (a1)+
db 0xBB, 0xE8, 0x9B, 0x9A ; 0038E0: provisional 68k cmpa.l -$6466(a0), a5
db 0xAA, 0x81 ; 0038E4: provisional 68k dc.w $aa81
db 0xFF, 0xFF ; 0038E6: provisional 68k dc.w $ffff
db 0x06, 0x0C ; file 0038E8
db 0x8A, 0x9B ; 0038EA: provisional 68k or.l (a3)+, d5
db 0xC8, 0x9B ; 0038EC: provisional 68k and.l (a3)+, d4
db 0xBF, 0xCB ; 0038EE: provisional 68k cmpa.l a3, a7
db 0xBB, 0x9B ; 0038F0: provisional 68k eor.l d5, (a3)+
db 0xB9, 0x8A ; 0038F2: provisional 68k cmpm.l (a2)+, (a4)+
db 0xBB, 0x9A ; 0038F4: provisional 68k eor.l d5, (a2)+
db 0xFC, 0xFF ; 0038F6: provisional 68k dc.w $fcff
db 0xFF, 0x06 ; 0038F8: provisional 68k dc.w $ff06
db 0x0C, 0x8E ; file 0038FA
db 0xFB, 0xBA ; 0038FC: provisional 68k dc.w $fbba
db 0x9B, 0xB9, 0xAB, 0xBB, 0x9B, 0xB9 ; 0038FE: provisional 68k sub.l d5, $abbb9bb9.l
db 0x89, 0xBB ; file 003904
db 0xAF, 0x9C ; 003906: provisional 68k dc.w $af9c
db 0xFF, 0xFF ; 003908: provisional 68k dc.w $ffff
db 0x06, 0x0C ; file 00390A
db 0x18, 0xA9, 0xBB, 0xBB ; 00390C: provisional 68k move.b -$4445(a1), (a4)
db 0xB9, 0xAB, 0xBB, 0xBB ; 003910: provisional 68k eor.l d4, -$4445(a3)
db 0xB9, 0xEB, 0xBB, 0xEE ; 003914: provisional 68k cmpa.l -$4412(a3), a4
db 0xF8, 0xFF ; 003918: provisional 68k dc.w $f8ff
db 0xFF, 0x07 ; 00391A: provisional 68k dc.w $ff07
db 0x0B, 0xEF, 0xBB, 0xBB ; 00391C: provisional 68k bset.b d5, -$4445(a7)
db 0xBF, 0xE9, 0x99, 0xBB ; 003920: provisional 68k cmpa.l -$6645(a1), a7
db 0xB9, 0x9B ; 003924: provisional 68k eor.l d4, (a3)+
db 0xB9, 0xCD ; 003926: provisional 68k cmpa.l a5, a4
db 0x81, 0xFF ; file 003928
db 0xFF, 0x07 ; 00392A: provisional 68k dc.w $ff07
db 0x0A, 0xCA ; file 00392C
db 0x9B, 0xB9, 0xFE, 0xEA, 0xEA, 0xF9 ; 00392E: provisional 68k sub.l d5, $feeaeaf9.l
db 0xFF, 0xBB ; 003934: provisional 68k dc.w $ffbb
db 0xBF, 0xE1 ; 003936: provisional 68k cmpa.l -(a1), a7
db 0xFF, 0xFF ; 003938: provisional 68k dc.w $ffff
db 0x07, 0x0A, 0x1E, 0xFF ; 00393A: provisional 68k movep.w $1eff(a2), d3
db 0x9F, 0xEE, 0xAA, 0xAF ; 00393E: provisional 68k suba.l -$5551(a6), a7
db 0xA8, 0x8A ; 003942: provisional 68k dc.w $a88a
db 0x99, 0x9E ; 003944: provisional 68k sub.l d4, (a6)+
db 0xDD, 0xFF ; file 003946
db 0xFF, 0x07 ; 003948: provisional 68k dc.w $ff07
db 0x09, 0x18 ; 00394A: provisional 68k btst.l d4, (a0)+
db 0x88, 0xF9, 0xAA, 0xBB, 0xBB, 0x9E ; 00394C: provisional 68k divu.w $aabbbb9e.l, d4
db 0xEE, 0xE8, 0x88, 0xFF ; file 003952
db 0xFF, 0x08 ; 003956: provisional 68k dc.w $ff08
db 0x08, 0x88 ; file 003958
db 0x99, 0xAA, 0x9B, 0xBB ; 00395A: provisional 68k sub.l d4, -$6445(a2)
db 0xBB, 0xBB ; file 00395E
db 0x98, 0x81 ; 003960: provisional 68k sub.l d1, d4
db 0xFF, 0xFF ; 003962: provisional 68k dc.w $ffff
db 0x08, 0x08, 0x18, 0xFF ; file 003964
db 0xFA, 0x9B ; 003968: provisional 68k dc.w $fa9b
db 0xBB, 0xBB ; file 00396A
db 0xBB, 0xB8, 0x81, 0xFF ; 00396C: provisional 68k eor.l d5, $81ff.w
db 0xFF, 0x09 ; 003970: provisional 68k dc.w $ff09
db 0x07, 0xCE, 0xEE, 0x9B ; 003972: provisional 68k movep.l d3, -$1165(a6)
db 0x99, 0xBB ; file 003976
db 0xB9, 0x9C ; 003978: provisional 68k eor.l d4, (a4)+
db 0xC1, 0xFF ; file 00397A
db 0xFF, 0x09 ; 00397C: provisional 68k dc.w $ff09
db 0x07, 0x18 ; 00397E: provisional 68k btst.l d3, (a0)+
db 0x88, 0xF9, 0xF9, 0x9B, 0x9A, 0xEA ; 003980: provisional 68k divu.w $f99b9aea.l, d4
db 0x91, 0xFF ; file 003986
db 0xFF, 0x0A ; 003988: provisional 68k dc.w $ff0a
db 0x06, 0xD8 ; file 00398A
db 0xAF, 0xAA ; 00398C: provisional 68k dc.w $afaa
db 0xF9, 0xFE ; 00398E: provisional 68k dc.w $f9fe
db 0x8E, 0x91 ; 003990: provisional 68k or.l (a1), d7
db 0xFF, 0xFF ; 003992: provisional 68k dc.w $ffff
db 0x0A, 0x06, 0x18, 0xEE ; 003994: provisional 68k eori.b #$ee, d6
db 0x8E, 0xAE, 0x88, 0x88 ; 003998: provisional 68k or.l -$7778(a6), d7
db 0xE1, 0xFF ; file 00399C
db 0xFF, 0x0B ; 00399E: provisional 68k dc.w $ff0b
db 0x03, 0x88, 0x88, 0x88 ; 0039A0: provisional 68k movep.w d1, -$7778(a0)
db 0x88, 0xFF ; file 0039A4
db 0xFF, 0x0C ; 0039A6: provisional 68k dc.w $ff0c
db 0x00, 0x81, 0xFF, 0xFF, 0xFF, 0xFF ; 0039A8: provisional 68k ori.l #$ffffffff, d1
db 0xFF, 0xFF ; 0039AE: provisional 68k dc.w $ffff
db 0x00, 0x07, 0x00, 0x00 ; 0039B0: provisional 68k ori.b #$0, d7
db 0x00, 0x1A, 0x00, 0x2E ; 0039B4: provisional 68k ori.b #$2e, (a2)+
db 0x00, 0x00, 0x00, 0x58 ; 0039B8: provisional 68k ori.b #$58, d0
db 0x00, 0x00, 0x00, 0x00 ; 0039BC: provisional 68k ori.b #$0, d0
db 0x00, 0x0C ; file 0039C0
db 0x00, 0x16, 0x00, 0x00 ; 0039C2: provisional 68k ori.b #$0, (a6)
db 0x00, 0x01, 0x00, 0x06 ; 0039C6: provisional 68k ori.b #$6, d1
db 0x00, 0x0A ; file 0039CA
db 0x00, 0x00, 0x00, 0x00 ; 0039CC: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0039D0: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x02 ; 0039D4: provisional 68k ori.b #$2, d0
db 0x00, 0x07, 0x00, 0x00 ; 0039D8: provisional 68k ori.b #$0, d7
db 0x00, 0x2E, 0x00, 0x39, 0x00, 0x00 ; 0039DC: provisional 68k ori.b #$39, $0(a6)
db 0x00, 0x58, 0x00, 0x00 ; 0039E2: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x16 ; 0039E6: provisional 68k ori.b #$16, d0
db 0x00, 0x1D, 0x00, 0x00 ; 0039EA: provisional 68k ori.b #$0, (a5)+
db 0x00, 0x0C ; file 0039EE
db 0x00, 0x07, 0x00, 0x0A ; 0039F0: provisional 68k ori.b #$a, d7
db 0x00, 0x00, 0x00, 0x00 ; 0039F4: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0039F8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 0039FC: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 003A00: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 003A04: provisional 68k ori.b #$5, d4
db 0x00, 0x06, 0x00, 0x05 ; 003A08: provisional 68k ori.b #$5, d6
db 0x00, 0x04, 0x00, 0x03 ; 003A0C: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 003A10: provisional 68k ori.b #$1, d2
db 0x00, 0x0E, 0x04, 0xC8 ; file 003A14
db 0x09, 0x3C, 0x0D, 0x82, 0x11, 0xB4 ; 003A18: provisional 68k btst.l d4, #$d8211b4
db 0x16, 0x02 ; 003A1E: provisional 68k move.b d2, d3
db 0x1A, 0x90 ; 003A20: provisional 68k move.b (a0), (a5)
db 0x00, 0x00, 0x00, 0x00 ; 003A22: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 003A26: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 003A2C
db 0x10, 0x10 ; 003A30: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 003A32: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 003A34: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 003A36: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 003A38: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 003A3C: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003A40: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003A42: provisional 68k neg.w d4
db 0x00, 0x0C ; file 003A44
db 0x20, 0xB4, 0x90, 0x78 ; 003A46: provisional 68k move.l $78(a4, a1.w), (a0)
db 0x78, 0x64 ; 003A4A: provisional 68k moveq #$64, d4
db 0x50, 0x00 ; 003A4C: provisional 68k addq.b #$8, d0
db 0x38, 0x80 ; 003A4E: provisional 68k move.w d0, (a4)
db 0x48, 0x3C ; file 003A50
db 0x38, 0xA8, 0x74, 0x64 ; 003A52: provisional 68k move.w $7464(a0), (a4)
db 0xE4, 0xA8 ; 003A56: provisional 68k lsr.l d2, d0
db 0x88, 0x24 ; 003A58: provisional 68k or.b -(a4), d4
db 0x1C, 0x18 ; 003A5A: provisional 68k move.b (a0)+, d6
db 0x09, 0x06 ; 003A5C: provisional 68k btst.l d4, d6
db 0xAA, 0xAA ; 003A5E: provisional 68k dc.w $aaaa
db 0xDD, 0xD9 ; 003A60: provisional 68k adda.l (a1)+, a6
db 0xDA, 0xAA, 0xF1, 0xFF ; 003A62: provisional 68k add.l -$e01(a2), d5
db 0xFF, 0x06 ; 003A66: provisional 68k dc.w $ff06
db 0x0A, 0x1A, 0xAD, 0x99 ; 003A68: provisional 68k eori.b #$99, (a2)+
db 0x99, 0xDD ; 003A6C: provisional 68k suba.l (a5)+, a4
db 0x99, 0xDE ; 003A6E: provisional 68k suba.l (a6)+, a4
db 0x99, 0x99 ; 003A70: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xA1 ; 003A72: provisional 68k sub.l d6, -(a1)
db 0xFF, 0xFF ; 003A74: provisional 68k dc.w $ffff
db 0x04, 0x0D ; file 003A76
db 0x1C, 0xAA, 0xD9, 0x9D ; 003A78: provisional 68k move.b -$2663(a2), (a6)
db 0xDD, 0xDA ; 003A7C: provisional 68k adda.l (a2)+, a6
db 0xA9, 0xED ; 003A7E: provisional 68k dc.w $a9ed
db 0xDD, 0x9E ; 003A80: provisional 68k add.l d6, (a6)+
db 0x9D, 0xDD ; 003A82: provisional 68k suba.l (a5)+, a6
db 0x9E, 0xDF ; 003A84: provisional 68k suba.w (a7)+, a7
db 0xFF, 0xFF ; 003A86: provisional 68k dc.w $ffff
db 0x04, 0x0E ; file 003A88
db 0xAA, 0xAD ; 003A8A: provisional 68k dc.w $aaad
db 0xD9, 0xE9, 0xD9, 0xEE ; 003A8C: provisional 68k adda.l -$2612(a1), a4
db 0xE9, 0xDD ; file 003A90
db 0x9E, 0x99 ; 003A92: provisional 68k sub.l (a1)+, d7
db 0xEE, 0xE9, 0xEE, 0xED ; file 003A94
db 0xA1, 0xFF ; 003A98: provisional 68k dc.w $a1ff
db 0xFF, 0x03 ; 003A9A: provisional 68k dc.w $ff03
db 0x0F, 0xCA, 0xDD, 0xDD ; 003A9C: provisional 68k movep.l d7, -$2223(a2)
db 0xD9, 0xEE, 0x9E, 0xE9 ; 003AA0: provisional 68k adda.l -$6117(a6), a4
db 0xDD, 0xD9 ; 003AA4: provisional 68k adda.l (a1)+, a6
db 0xEE, 0x99 ; 003AA6: provisional 68k ror.l #$7, d1
db 0x99, 0xEE, 0xD9, 0xE9 ; 003AA8: provisional 68k suba.l -$2617(a6), a4
db 0x9D, 0xFF ; file 003AAC
db 0xFF, 0x02 ; 003AAE: provisional 68k dc.w $ff02
db 0x11, 0x1C ; 003AB0: provisional 68k move.b (a4)+, -(a0)
db 0xAD, 0xD9 ; 003AB2: provisional 68k dc.w $add9
db 0x9D, 0x99 ; 003AB4: provisional 68k sub.l d6, (a1)+
db 0x9E, 0xE9, 0xEE, 0xE9 ; 003AB6: provisional 68k suba.w -$1117(a1), a7
db 0x99, 0x9E ; 003ABA: provisional 68k sub.l d4, (a6)+
db 0xEE, 0x9D ; 003ABC: provisional 68k ror.l #$7, d5
db 0x9E, 0x9D ; 003ABE: provisional 68k sub.l (a5)+, d7
db 0x99, 0xD9 ; 003AC0: provisional 68k suba.l (a1)+, a4
db 0xD1, 0xFF ; file 003AC2
db 0xFF, 0x02 ; 003AC4: provisional 68k dc.w $ff02
db 0x11, 0xCA ; file 003AC6
db 0xAA, 0xAD ; 003AC8: provisional 68k dc.w $aaad
db 0xDD, 0x99 ; 003ACA: provisional 68k add.l d6, (a1)+
db 0xDE, 0xE9, 0xEE, 0x9E ; 003ACC: provisional 68k adda.w -$1162(a1), a7
db 0xEE, 0xEE ; file 003AD0
db 0xEE, 0x9D ; 003AD2: provisional 68k ror.l #$7, d5
db 0xDE, 0xEE, 0x99, 0x9D ; 003AD4: provisional 68k adda.w -$6663(a6), a7
db 0x9A, 0xFF ; file 003AD8
db 0xFF, 0x01 ; 003ADA: provisional 68k dc.w $ff01
db 0x12, 0x1C ; 003ADC: provisional 68k move.b (a4)+, d1
db 0xAD, 0xAA ; 003ADE: provisional 68k dc.w $adaa
db 0xAA, 0xDD ; 003AE0: provisional 68k dc.w $aadd
db 0xDD, 0x9E ; 003AE2: provisional 68k add.l d6, (a6)+
db 0x99, 0xE9, 0x9E, 0xEE ; 003AE4: provisional 68k suba.l -$6112(a1), a4
db 0xEE, 0xEE ; file 003AE8
db 0x9E, 0xE9, 0xE9, 0x9E ; 003AEA: provisional 68k suba.w -$1662(a1), a7
db 0x9D, 0xDD ; 003AEE: provisional 68k suba.l (a5)+, a6
db 0xFF, 0xFF ; 003AF0: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 003AF2: provisional 68k btst.l d0, (a2)
db 0xCC, 0xCA ; file 003AF4
db 0xDA, 0xAA, 0xD9, 0xDD ; 003AF6: provisional 68k add.l -$2623(a2), d5
db 0xAA, 0xDE ; 003AFA: provisional 68k dc.w $aade
db 0x9E, 0xEE, 0xEE, 0xE9 ; 003AFC: provisional 68k suba.w -$1117(a6), a7
db 0x9E, 0xEE, 0xEE, 0xAA ; 003B00: provisional 68k suba.w -$1156(a6), a7
db 0x9E, 0x9D ; 003B04: provisional 68k sub.l (a5)+, d7
db 0x9E, 0xFF ; file 003B06
db 0xFF, 0x01 ; 003B08: provisional 68k dc.w $ff01
db 0x13, 0xFC, 0xFC, 0xAA, 0xAC, 0xA9, 0xDC, 0xFF ; 003B0A: provisional 68k move.b #$aa, $aca9dcff.l
db 0xDE, 0xE9, 0xEE, 0xEE ; 003B12: provisional 68k adda.w -$1112(a1), a7
db 0xEE, 0xEE ; file 003B16
db 0xEE, 0x9E ; 003B18: provisional 68k ror.l #$7, d6
db 0xAD, 0x9E ; 003B1A: provisional 68k dc.w $ad9e
db 0x9D, 0xE9, 0xA1, 0xFF ; 003B1C: provisional 68k suba.l -$5e01(a1), a6
db 0xFF, 0x00 ; 003B20: provisional 68k dc.w $ff00
db 0x14, 0x1F ; 003B22: provisional 68k move.b (a7)+, d2
db 0xCA, 0xCF ; file 003B24
db 0xCD, 0x9F ; 003B26: provisional 68k and.l d6, (a7)+
db 0xAA, 0xDE ; 003B28: provisional 68k dc.w $aade
db 0xEA, 0x9D ; 003B2A: provisional 68k ror.l #$5, d5
db 0xDD, 0xEE, 0xEE, 0xEE ; 003B2C: provisional 68k adda.l -$1112(a6), a6
db 0x9D, 0xDD ; 003B30: provisional 68k suba.l (a5)+, a6
db 0xAD, 0xDD ; 003B32: provisional 68k dc.w $addd
db 0x9E, 0x9D ; 003B34: provisional 68k sub.l (a5)+, d7
db 0xD9, 0xA1 ; 003B36: provisional 68k add.l d4, -(a1)
db 0xFF, 0xFF ; 003B38: provisional 68k dc.w $ffff
db 0x00, 0x14, 0x1C, 0xFC ; 003B3A: provisional 68k ori.b #$fc, (a4)
db 0xAC, 0xCD ; 003B3E: provisional 68k dc.w $accd
db 0xDC, 0xAA, 0xAD, 0x99 ; 003B40: provisional 68k add.l -$5267(a2), d6
db 0xAA, 0xAC ; 003B44: provisional 68k dc.w $aaac
db 0xAE, 0xEE ; 003B46: provisional 68k dc.w $aeee
db 0xEE, 0xEE ; file 003B48
db 0x99, 0xD9 ; 003B4A: provisional 68k suba.l (a1)+, a4
db 0xEE, 0xD9, 0xED, 0xDA, 0xD1, 0xFF ; file 003B4C
db 0xFF, 0x00 ; 003B52: provisional 68k dc.w $ff00
db 0x14, 0x8C ; file 003B54
db 0xFF, 0xCC ; 003B56: provisional 68k dc.w $ffcc
db 0xCA, 0xCC ; file 003B58
db 0xAA, 0xAC ; 003B5A: provisional 68k dc.w $aaac
db 0xCD, 0xDC ; 003B5C: provisional 68k muls.w (a4)+, d6
db 0xA9, 0xDA ; 003B5E: provisional 68k dc.w $a9da
db 0x9E, 0xEE, 0xE9, 0xDD ; 003B60: provisional 68k suba.w -$1623(a6), a7
db 0xDE, 0xEE, 0xDD, 0xDA ; 003B64: provisional 68k adda.w -$2226(a6), a7
db 0xEA, 0xD1 ; file 003B68
db 0xFF, 0xFF ; 003B6A: provisional 68k dc.w $ffff
db 0x00, 0x14, 0xFF, 0xCC ; 003B6C: provisional 68k ori.b #$cc, (a4)
db 0xFF, 0xAA ; 003B70: provisional 68k dc.w $ffaa
db 0xFC, 0xAA ; 003B72: provisional 68k dc.w $fcaa
db 0xAA, 0xCA ; 003B74: provisional 68k dc.w $aaca
db 0xAF, 0xDE ; 003B76: provisional 68k dc.w $afde
db 0xAC, 0xAD ; 003B78: provisional 68k dc.w $acad
db 0xAA, 0xA9 ; 003B7A: provisional 68k dc.w $aaa9
db 0xE9, 0xEE, 0xEE, 0xDA ; file 003B7C
db 0xDA, 0xED, 0xD1, 0xFF ; 003B80: provisional 68k adda.w -$2e01(a5), a5
db 0xFF, 0x00 ; 003B84: provisional 68k dc.w $ff00
db 0x14, 0xFF ; file 003B86
db 0xFC, 0xFF ; 003B88: provisional 68k dc.w $fcff
db 0xCC, 0xCC ; file 003B8A
db 0xCC, 0xAD, 0xAA, 0xAC ; 003B8C: provisional 68k and.l -$5554(a5), d6
db 0xA9, 0xAC ; 003B90: provisional 68k dc.w $a9ac
db 0xD9, 0xDC ; 003B92: provisional 68k adda.l (a4)+, a4
db 0xCE, 0xEE, 0xEE, 0xE9 ; 003B94: provisional 68k mulu.w -$1117(a6), d7
db 0xAD, 0x9A ; 003B98: provisional 68k dc.w $ad9a
db 0x9D, 0xDC ; 003B9A: provisional 68k suba.l (a4)+, a6
db 0xFF, 0xFF ; 003B9C: provisional 68k dc.w $ffff
db 0x00, 0x14, 0xFF, 0xFC ; 003B9E: provisional 68k ori.b #$fc, (a4)
db 0xCC, 0xC8, 0xCC, 0xCC ; file 003BA2
db 0xCA, 0xAD, 0xAA, 0xAA ; 003BA6: provisional 68k and.l -$5556(a5), d5
db 0xD9, 0x9D ; 003BAA: provisional 68k add.l d4, (a5)+
db 0xED, 0xA9 ; 003BAC: provisional 68k lsl.l d6, d1
db 0xEE, 0x9D ; 003BAE: provisional 68k ror.l #$7, d5
db 0xDD, 0xD9 ; 003BB0: provisional 68k adda.l (a1)+, a6
db 0xEA, 0xDA ; file 003BB2
db 0xAC, 0xFF ; 003BB4: provisional 68k dc.w $acff
db 0xFF, 0x00 ; 003BB6: provisional 68k dc.w $ff00
db 0x14, 0xFF ; file 003BB8
db 0xFC, 0xCC ; 003BBA: provisional 68k dc.w $fccc
db 0xCF, 0xCC ; file 003BBC
db 0xAA, 0xCF ; 003BBE: provisional 68k dc.w $aacf
db 0xCC, 0xFC, 0xAA, 0xAA ; 003BC0: provisional 68k mulu.w #$aaaa, d6
db 0xAA, 0xAD ; 003BC4: provisional 68k dc.w $aaad
db 0xE9, 0xDD, 0xED, 0xDE ; file 003BC6
db 0xDD, 0xED, 0xAA, 0xAC ; 003BCA: provisional 68k adda.l -$5554(a5), a6
db 0xFF, 0xFF ; 003BCE: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8F, 0xFF ; 003BD0: provisional 68k ori.b #$ff, (a5)
db 0xFF, 0xFC ; 003BD4: provisional 68k dc.w $fffc
db 0xCC, 0xCC ; file 003BD6
db 0xCF, 0xFC, 0xFC, 0xCA ; 003BD8: provisional 68k muls.w #$fcca, d7
db 0xAA, 0xAA ; 003BDC: provisional 68k dc.w $aaaa
db 0xDD, 0xDD ; 003BDE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 003BE0: provisional 68k adda.l (a5)+, a6
db 0xD9, 0xAD, 0xED, 0xAD ; 003BE2: provisional 68k add.l d4, -$1253(a5)
db 0xCF, 0xAA, 0xFF, 0xFF ; 003BE6: provisional 68k and.l d7, -$1(a2)
db 0x00, 0x15, 0x8F, 0xFF ; 003BEA: provisional 68k ori.b #$ff, (a5)
db 0xFF, 0xFC ; 003BEE: provisional 68k dc.w $fffc
db 0xCF, 0xFF ; file 003BF0
db 0xCA, 0xAA, 0xCF, 0xFC ; 003BF2: provisional 68k and.l -$3004(a2), d5
db 0xAA, 0xAD ; 003BF6: provisional 68k dc.w $aaad
db 0xDD, 0xDD ; 003BF8: provisional 68k adda.l (a5)+, a6
db 0xCF, 0xFA, 0xAA, 0xFA ; 003BFA: provisional 68k muls.w $ffffe6f6(pc), d7
db 0xE9, 0xD9 ; file 003BFE
db 0x9D, 0xDC ; 003C00: provisional 68k suba.l (a4)+, a6
db 0xFF, 0xFF ; 003C02: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8F, 0xFF ; 003C04: provisional 68k ori.b #$ff, (a5)
db 0xFC, 0xFF ; 003C08: provisional 68k dc.w $fcff
db 0xFF, 0xCF ; 003C0A: provisional 68k dc.w $ffcf
db 0xFC, 0xCC ; 003C0C: provisional 68k dc.w $fccc
db 0xCF, 0xFF ; file 003C0E
db 0xFF, 0xAA ; 003C10: provisional 68k dc.w $ffaa
db 0xAC, 0xAA ; 003C12: provisional 68k dc.w $acaa
db 0xCC, 0x9E ; 003C14: provisional 68k and.l (a6)+, d6
db 0xEE, 0x99 ; 003C16: provisional 68k ror.l #$7, d1
db 0xE9, 0x9D ; 003C18: provisional 68k rol.l #$4, d5
db 0xDA, 0xAF, 0xFF, 0xFF ; 003C1A: provisional 68k add.l -$1(a7), d5
db 0x00, 0x15, 0x1F, 0xCF ; 003C1E: provisional 68k ori.b #$cf, (a5)
db 0xCC, 0xFF ; file 003C22
db 0xFF, 0xFF ; 003C24: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C26: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C28: provisional 68k dc.w $ffff
db 0xFF, 0xCA ; 003C2A: provisional 68k dc.w $ffca
db 0xAD, 0xDD ; 003C2C: provisional 68k dc.w $addd
db 0x99, 0xEE, 0xEE, 0x99 ; 003C2E: provisional 68k suba.l -$1167(a6), a4
db 0x99, 0xDA ; 003C32: provisional 68k suba.l (a2)+, a4
db 0xAC, 0xCC ; 003C34: provisional 68k dc.w $accc
db 0xFF, 0xFF ; 003C36: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1F, 0xFF ; 003C38: provisional 68k ori.b #$ff, (a5)
db 0xFF, 0xFF ; 003C3C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C3E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C40: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C42: provisional 68k dc.w $ffff
db 0xFF, 0xAA ; 003C44: provisional 68k dc.w $ffaa
db 0xD9, 0x9E ; 003C46: provisional 68k add.l d4, (a6)+
db 0xEE, 0xE9 ; file 003C48
db 0x9D, 0xDA ; 003C4A: provisional 68k suba.l (a2)+, a6
db 0xAD, 0xDA ; 003C4C: provisional 68k dc.w $adda
db 0xCF, 0xFF ; file 003C4E
db 0xFF, 0xFF ; 003C50: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1C, 0xFF ; 003C52: provisional 68k ori.b #$ff, (a5)
db 0xFF, 0xFF ; 003C56: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C58: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C5A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C5C: provisional 68k dc.w $ffff
db 0xFF, 0xAD ; 003C5E: provisional 68k dc.w $ffad
db 0xDD, 0x99 ; 003C60: provisional 68k add.l d6, (a1)+
db 0xEE, 0x9D ; 003C62: provisional 68k ror.l #$7, d5
db 0xAA, 0xAC ; 003C64: provisional 68k dc.w $aaac
db 0xAD, 0xDC ; 003C66: provisional 68k dc.w $addc
db 0xFF, 0xCC ; 003C68: provisional 68k dc.w $ffcc
db 0xFF, 0xFF ; 003C6A: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1C, 0xCF ; 003C6C: provisional 68k ori.b #$cf, (a5)
db 0xFF, 0xFF ; 003C70: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C72: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C74: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C76: provisional 68k dc.w $ffff
db 0xFF, 0xFD ; 003C78: provisional 68k dc.w $fffd
db 0xAD, 0x99 ; 003C7A: provisional 68k dc.w $ad99
db 0x99, 0xDD ; 003C7C: provisional 68k suba.l (a5)+, a4
db 0xCC, 0xCA ; file 003C7E
db 0xAC, 0xCF ; 003C80: provisional 68k dc.w $accf
db 0xFC, 0xAC ; 003C82: provisional 68k dc.w $fcac
db 0xFF, 0xFF ; 003C84: provisional 68k dc.w $ffff
db 0x01, 0x15 ; 003C86: provisional 68k btst.l d0, (a5)
db 0xCC, 0xFF ; file 003C88
db 0xFF, 0xFF ; 003C8A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C8C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C8E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003C90: provisional 68k dc.w $ffff
db 0xFA, 0xAD ; 003C92: provisional 68k dc.w $faad
db 0x99, 0x9D ; 003C94: provisional 68k sub.l d4, (a5)+
db 0xDA, 0xFF ; file 003C96
db 0xFF, 0xCC ; 003C98: provisional 68k dc.w $ffcc
db 0xFF, 0xCB ; 003C9A: provisional 68k dc.w $ffcb
db 0xBB, 0xFF ; file 003C9C
db 0xFF, 0xFF ; 003C9E: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 003CA0: provisional 68k btst.l d0, (a4)
db 0xCC, 0xCF ; file 003CA2
db 0xFF, 0xFF ; 003CA4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003CA6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003CA8: provisional 68k dc.w $ffff
db 0xFF, 0xFC ; 003CAA: provisional 68k dc.w $fffc
db 0xAD, 0xDD ; 003CAC: provisional 68k dc.w $addd
db 0xDD, 0xEE, 0xBC, 0xFF ; 003CAE: provisional 68k adda.l -$4301(a6), a6
db 0xFF, 0xCC ; 003CB2: provisional 68k dc.w $ffcc
db 0xF8, 0xBB ; 003CB4: provisional 68k dc.w $f8bb
db 0xBB, 0xFF ; file 003CB6
db 0xFF, 0x01 ; 003CB8: provisional 68k dc.w $ff01
db 0x14, 0xCC, 0xCC, 0xFF ; file 003CBA
db 0xFF, 0xCF ; 003CBE: provisional 68k dc.w $ffcf
db 0xFF, 0xFF ; 003CC0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003CC2: provisional 68k dc.w $ffff
db 0xFC, 0xDD ; 003CC4: provisional 68k dc.w $fcdd
db 0xDA, 0xAE, 0xE9, 0xBB ; 003CC6: provisional 68k add.l -$1645(a6), d5
db 0xF8, 0xAD ; 003CCA: provisional 68k dc.w $f8ad
db 0xDA, 0xFC, 0xB8, 0x88 ; 003CCC: provisional 68k adda.w #$b888, a5
db 0xFF, 0xFF ; 003CD0: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 003CD2: provisional 68k btst.l d0, (a4)
db 0xFC, 0xCC ; 003CD4: provisional 68k dc.w $fccc
db 0xFF, 0xFC ; 003CD6: provisional 68k dc.w $fffc
db 0xCF, 0xFF ; file 003CD8
db 0xFF, 0xFF ; 003CDA: provisional 68k dc.w $ffff
db 0xFF, 0xCC ; 003CDC: provisional 68k dc.w $ffcc
db 0xAA, 0xAA ; 003CDE: provisional 68k dc.w $aaaa
db 0xEE, 0x9B ; 003CE0: provisional 68k ror.l #$7, d3
db 0x8B, 0x8C ; 003CE2: provisional 68k dc.w $8b8c
db 0x9E, 0x9D ; 003CE4: provisional 68k sub.l (a5)+, d7
db 0xCA, 0xB8, 0x88, 0xFF ; 003CE6: provisional 68k and.l $88ff.w, d5
db 0xFF, 0x01 ; 003CEA: provisional 68k dc.w $ff01
db 0x14, 0x1C ; 003CEC: provisional 68k move.b (a4)+, d2
db 0xCF, 0xFF ; file 003CEE
db 0xFC, 0xFF ; 003CF0: provisional 68k dc.w $fcff
db 0xFF, 0xFF ; 003CF2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003CF4: provisional 68k dc.w $ffff
db 0xCC, 0xAA, 0xCA, 0xEE ; 003CF6: provisional 68k and.l -$3512(a2), d6
db 0xBB, 0x88 ; 003CFA: provisional 68k cmpm.l (a0)+, (a5)+
db 0xCE, 0xE9, 0x99, 0xAA ; 003CFC: provisional 68k mulu.w -$6656(a1), d7
db 0xF8, 0xF1 ; 003D00: provisional 68k dc.w $f8f1
db 0xFF, 0xFF ; 003D02: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xCC, 0xCF ; 003D04: provisional 68k andi.b #$cf, (a3)
db 0xFF, 0xFA ; 003D08: provisional 68k dc.w $fffa
db 0xCF, 0xFF ; file 003D0A
db 0xFF, 0xFF ; 003D0C: provisional 68k dc.w $ffff
db 0xCC, 0xDD ; 003D0E: provisional 68k mulu.w (a5)+, d6
db 0xCB, 0xAA, 0xBB, 0x88 ; 003D10: provisional 68k and.l d5, -$4478(a2)
db 0xDE, 0xE9, 0x9D, 0xAC ; 003D14: provisional 68k adda.w -$6254(a1), a7
db 0xF8, 0xF1 ; 003D18: provisional 68k dc.w $f8f1
db 0xFF, 0xFF ; 003D1A: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xFC, 0xCF ; 003D1C: provisional 68k andi.b #$cf, (a3)
db 0xFF, 0xFA ; 003D20: provisional 68k dc.w $fffa
db 0xDC, 0xFF ; file 003D22
db 0xFC, 0xCF ; 003D24: provisional 68k dc.w $fccf
db 0xCA, 0x99 ; 003D26: provisional 68k and.l (a1)+, d5
db 0xAC, 0xFC ; 003D28: provisional 68k dc.w $acfc
db 0xCB, 0x88 ; 003D2A: provisional 68k exg.l d5, a0
db 0x9E, 0xE9, 0xAC, 0xCC ; 003D2C: provisional 68k suba.w -$5334(a1), a7
db 0xCF, 0xF1, 0xFF, 0xFF, 0x02, 0x13, 0xCC, 0xCF ; 003D30: provisional 68k muls.w ([$213cccf]), d7
db 0xCF, 0xCC, 0xEE, 0xFF, 0xCC, 0xCC ; file 003D38
db 0xC9, 0xEE, 0xDC, 0xCF ; 003D3E: provisional 68k muls.w -$2331(a6), d4
db 0xFF, 0xF8 ; 003D42: provisional 68k dc.w $fff8
db 0xEE, 0x9C ; 003D44: provisional 68k ror.l #$7, d4
db 0x8F, 0xFC, 0xCF, 0xF1 ; 003D46: provisional 68k divs.w #$cff1, d7
db 0xFF, 0xFF ; 003D4A: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 003D4C: provisional 68k btst.l d1, (a2)
db 0xCF, 0xCC ; file 003D4E
db 0xFC, 0xA9 ; 003D50: provisional 68k dc.w $fca9
db 0xAA, 0xAA ; 003D52: provisional 68k dc.w $aaaa
db 0xCA, 0xD9 ; 003D54: provisional 68k mulu.w (a1)+, d5
db 0x99, 0x9A ; 003D56: provisional 68k sub.l d4, (a2)+
db 0xF8, 0x88 ; 003D58: provisional 68k dc.w $f888
db 0x8F, 0xDA ; 003D5A: provisional 68k divs.w (a2)+, d7
db 0xFF, 0xFF ; 003D5C: provisional 68k dc.w $ffff
db 0xFC, 0xCF ; 003D5E: provisional 68k dc.w $fccf
db 0xF1, 0xFF ; 003D60: provisional 68k dc.w $f1ff
db 0xFF, 0x03 ; 003D62: provisional 68k dc.w $ff03
db 0x11, 0xAC, 0xFC, 0xFF, 0xFC, 0xCF ; 003D64: provisional 68k move.b -$301(a4), -$31(a0, a7.l)
db 0xCC, 0x99 ; 003D6A: provisional 68k and.l (a1)+, d6
db 0x99, 0xDD ; 003D6C: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x99 ; 003D6E: provisional 68k add.l d6, (a1)+
db 0xE9, 0xC9, 0xCF, 0xFF ; file 003D70
db 0xFF, 0xFF ; 003D74: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003D76: provisional 68k dc.w $ffff
db 0xFF, 0x03 ; 003D78: provisional 68k dc.w $ff03
db 0x11, 0x1A ; 003D7A: provisional 68k move.b (a2)+, -(a0)
db 0xCF, 0xCC ; file 003D7C
db 0xFC, 0xAC ; 003D7E: provisional 68k dc.w $fcac
db 0xCC, 0xAD, 0xDA, 0xAA ; 003D80: provisional 68k and.l -$2556(a5), d6
db 0xAA, 0x99 ; 003D84: provisional 68k dc.w $aa99
db 0xAC, 0xCD ; 003D86: provisional 68k dc.w $accd
db 0xAF, 0xFF ; 003D88: provisional 68k dc.w $afff
db 0xFF, 0xFF ; 003D8A: provisional 68k dc.w $ffff
db 0xF1, 0xFF ; 003D8C: provisional 68k dc.w $f1ff
db 0xFF, 0x04 ; 003D8E: provisional 68k dc.w $ff04
db 0x10, 0xCC ; file 003D90
db 0xCF, 0xFC, 0xDC, 0xCC ; 003D92: provisional 68k muls.w #$dccc, d7
db 0xCC, 0xCC, 0xCC, 0xCF ; file 003D96
db 0xCC, 0xF8, 0xFF, 0xAC ; 003D9A: provisional 68k mulu.w $ffac.w, d6
db 0xFF, 0xFF ; 003D9E: provisional 68k dc.w $ffff
db 0xFF, 0x88 ; 003DA0: provisional 68k dc.w $ff88
db 0xFF, 0xFF ; 003DA2: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 003DA4
db 0xCC, 0xC1 ; 003DA6: provisional 68k mulu.w d1, d6
db 0x1C, 0xAA, 0xAC, 0xCC ; 003DA8: provisional 68k move.b -$5334(a2), (a6)
db 0xCC, 0xCC ; file 003DAC
db 0xCF, 0xF8, 0xFC, 0xCC ; 003DAE: provisional 68k muls.w $fccc.w, d7
db 0xCF, 0xFF ; file 003DB2
db 0x8F, 0xAF, 0xFF, 0xFF ; 003DB4: provisional 68k or.l d7, -$1(a7)
db 0x06, 0x0D, 0x88, 0xCD ; file 003DB8
db 0x9C, 0xFC, 0xCC, 0xCC ; 003DBC: provisional 68k suba.w #$cccc, a6
db 0xCC, 0xFF ; file 003DC0
db 0xCA, 0xD9 ; 003DC2: provisional 68k mulu.w (a1)+, d5
db 0x9C, 0xFF ; file 003DC4
db 0xCA, 0x91 ; 003DC6: provisional 68k and.l (a1), d5
db 0xFF, 0xFF ; 003DC8: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x1F, 0xCF, 0xCF, 0xFF ; file 003DCA
db 0xF8, 0x8C ; 003DD0: provisional 68k dc.w $f88c
db 0xCC, 0xF8, 0xC9, 0x99 ; 003DD2: provisional 68k mulu.w $c999.w, d6
db 0xE9, 0xA9 ; 003DD6: provisional 68k lsl.l d4, d1
db 0xEE, 0xD1 ; file 003DD8
db 0xFF, 0xFF ; 003DDA: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x1F, 0xCF ; file 003DDC
db 0xFF, 0xFF ; 003DE0: provisional 68k dc.w $ffff
db 0xFF, 0x8C ; 003DE2: provisional 68k dc.w $ff8c
db 0xCC, 0xFF ; file 003DE4
db 0xC9, 0x99 ; 003DE6: provisional 68k and.l d4, (a1)+
db 0xEE, 0xEE, 0xED, 0xDC ; file 003DE8
db 0xFF, 0xFF ; 003DEC: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0xFF, 0xFF ; 003DEE: provisional 68k movep.w -$1(a4), d3
db 0xFF, 0xFF ; 003DF2: provisional 68k dc.w $ffff
db 0x8C, 0xCF ; file 003DF4
db 0xFC, 0x99 ; 003DF6: provisional 68k dc.w $fc99
db 0x9E, 0xEE, 0x99, 0xDD ; 003DF8: provisional 68k suba.w -$6623(a6), a7
db 0x9C, 0xFF ; file 003DFC
db 0xFF, 0x07 ; 003DFE: provisional 68k dc.w $ff07
db 0x0C, 0xFC ; file 003E00
db 0xFF, 0xFF ; 003E02: provisional 68k dc.w $ffff
db 0xFF, 0x8F ; 003E04: provisional 68k dc.w $ff8f
db 0xCC, 0xCA ; file 003E06
db 0x99, 0x99 ; 003E08: provisional 68k sub.l d4, (a1)+
db 0x9E, 0xE9, 0x99, 0x9C ; 003E0A: provisional 68k suba.w -$6664(a1), a7
db 0xFF, 0xFF ; 003E0E: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1C, 0xFF ; 003E10: provisional 68k movep.w $1cff(a4), d3
db 0xFF, 0xFF ; 003E14: provisional 68k dc.w $ffff
db 0xF8, 0xCC ; 003E16: provisional 68k dc.w $f8cc
db 0xCA, 0xAA, 0xA9, 0x99 ; 003E18: provisional 68k and.l -$5667(a2), d5
db 0xE9, 0x99 ; 003E1C: provisional 68k rol.l #$4, d1
db 0xAF, 0xFF ; 003E1E: provisional 68k dc.w $afff
db 0xFF, 0x07 ; 003E20: provisional 68k dc.w $ff07
db 0x0C, 0x1C, 0xCF, 0xFF ; 003E22: provisional 68k cmpi.b #$ff, (a4)+
db 0xCF, 0xF8, 0x8F, 0xFC ; 003E26: provisional 68k muls.w $8ffc.w, d7
db 0xAC, 0xCA ; 003E2A: provisional 68k dc.w $acca
db 0xD9, 0x9D ; 003E2C: provisional 68k add.l d4, (a5)+
db 0xAA, 0xC1 ; 003E2E: provisional 68k dc.w $aac1
db 0xFF, 0xFF ; 003E30: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1C, 0xCC ; 003E32: provisional 68k movep.w $1ccc(a4), d3
db 0xCA, 0xDD ; 003E36: provisional 68k mulu.w (a5)+, d5
db 0xCF, 0x88 ; 003E38: provisional 68k exg.l d7, a0
db 0x8F, 0xCC ; file 003E3A
db 0xCC, 0xAA, 0xAA, 0xCC ; 003E3C: provisional 68k and.l -$5534(a2), d6
db 0xF1, 0xFF ; 003E40: provisional 68k dc.w $f1ff
db 0xFF, 0x07 ; 003E42: provisional 68k dc.w $ff07
db 0x0B, 0x1C ; 003E44: provisional 68k btst.l d5, (a4)+
db 0xCF, 0xCA ; file 003E46
db 0x9E, 0xED, 0xC8, 0x88 ; 003E48: provisional 68k suba.w -$3778(a5), a7
db 0x88, 0xBC, 0xCC, 0xAC, 0xCC, 0xFF ; 003E4C: provisional 68k or.l #$ccacccff, d4
db 0xFF, 0x07 ; 003E52: provisional 68k dc.w $ff07
db 0x0C, 0x1C, 0xCF, 0xCC ; 003E54: provisional 68k cmpi.b #$cc, (a4)+
db 0xAE, 0xEE ; 003E58: provisional 68k dc.w $aeee
db 0xEC, 0x88 ; 003E5A: provisional 68k lsr.l #$6, d0
db 0x88, 0x88, 0x8F, 0xCF ; file 003E5C
db 0xFF, 0xC1 ; 003E60: provisional 68k dc.w $ffc1
db 0xFF, 0xFF ; 003E62: provisional 68k dc.w $ffff
db 0x08, 0x0B ; file 003E64
db 0xCC, 0xFC, 0xCD, 0xEE ; 003E66: provisional 68k mulu.w #$cdee, d6
db 0xEE, 0xEA ; file 003E6A
db 0xFF, 0xF8 ; 003E6C: provisional 68k dc.w $fff8
db 0x88, 0xFF ; file 003E6E
db 0xFF, 0xF1 ; 003E70: provisional 68k dc.w $fff1
db 0xFF, 0xFF ; 003E72: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0x1C, 0xCC ; file 003E74
db 0xCC, 0xA9, 0xEE, 0xE9 ; 003E78: provisional 68k and.l -$1117(a1), d6
db 0x9A, 0xCF ; 003E7C: provisional 68k suba.w a7, a5
db 0xF8, 0xFF ; 003E7E: provisional 68k dc.w $f8ff
db 0xFF, 0xF1 ; 003E80: provisional 68k dc.w $fff1
db 0xFF, 0xFF ; 003E82: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xCC, 0xCC ; 003E84: provisional 68k movep.w -$3334(a2), d4
db 0xCA, 0xAD, 0x99, 0x9D ; 003E88: provisional 68k and.l -$6663(a5), d5
db 0xCC, 0xCC ; file 003E8C
db 0xFC, 0xCF ; 003E8E: provisional 68k dc.w $fccf
db 0xF1, 0xFF ; 003E90: provisional 68k dc.w $f1ff
db 0xFF, 0x09 ; 003E92: provisional 68k dc.w $ff09
db 0x0A, 0x1F, 0xCC, 0xCC ; 003E94: provisional 68k eori.b #$cc, (a7)+
db 0xCC, 0xAA, 0xAA, 0xAA ; 003E98: provisional 68k and.l -$5556(a2), d6
db 0xAC, 0xCA ; 003E9C: provisional 68k dc.w $acca
db 0xCC, 0xF1, 0xFF, 0xFF, 0x0A, 0x08, 0xFC, 0xCC ; 003E9E: provisional 68k mulu.w ([$a08fccc]), d6
db 0xFF, 0xCC ; 003EA6: provisional 68k dc.w $ffcc
db 0xCA, 0xAA, 0xAA, 0xDD ; 003EA8: provisional 68k and.l -$5523(a2), d5
db 0xAA, 0xFF ; 003EAC: provisional 68k dc.w $aaff
db 0xFF, 0x0B ; 003EAE: provisional 68k dc.w $ff0b
db 0x07, 0xCC, 0xCC, 0xFF ; 003EB0: provisional 68k movep.l d3, -$3301(a4)
db 0xFC, 0xCA ; 003EB4: provisional 68k dc.w $fcca
db 0x99, 0x99 ; 003EB6: provisional 68k sub.l d4, (a1)+
db 0xDC, 0xFF ; file 003EB8
db 0xFF, 0x0C ; 003EBA: provisional 68k dc.w $ff0c
db 0x06, 0xCC ; 003EBC: provisional 68k dc.w $6cc
db 0xCC, 0xFF ; file 003EBE
db 0xFA, 0xAD ; 003EC0: provisional 68k dc.w $faad
db 0xDD, 0xA1 ; 003EC2: provisional 68k add.l d6, -(a1)
db 0xFF, 0xFF ; 003EC4: provisional 68k dc.w $ffff
db 0x0D, 0x04 ; 003EC6: provisional 68k btst.l d6, d4
db 0xCC, 0xCC ; file 003EC8
db 0xCF, 0xFC, 0xFF, 0xFF ; 003ECA: provisional 68k muls.w #$ffff, d7
db 0xFF, 0x0E ; 003ECE: provisional 68k dc.w $ff0e
db 0x03, 0xFC, 0xCC, 0xCC ; file 003ED0
db 0xF1, 0xFF ; 003ED4: provisional 68k dc.w $f1ff
db 0xFF, 0xFF ; 003ED6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003ED8: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 003EDA: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 003EDC: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 003EE0: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 003EE6
db 0x10, 0x10 ; 003EEA: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 003EEC: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 003EEE: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 003EF0: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 003EF2: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 003EF6: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003EFA: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003EFC: provisional 68k neg.w d4
db 0x24, 0x1C ; 003EFE: provisional 68k move.l (a4)+, d2
db 0x18, 0xC0 ; 003F00: provisional 68k move.b d0, (a4)+
db 0x88, 0x6C, 0x78, 0x60 ; 003F02: provisional 68k or.w $7860(a4), d4
db 0x4C, 0x00 ; file 003F06
db 0x34, 0x68, 0x4C, 0x3C ; 003F08: provisional 68k movea.w $4c3c(a0), a2
db 0x34, 0xA8, 0x84, 0x70 ; 003F0C: provisional 68k move.w -$7b90(a0), (a2)
db 0xDC, 0xAC, 0x8C, 0x88 ; 003F10: provisional 68k add.l -$7378(a4), d6
db 0x78, 0x6C ; 003F14: provisional 68k moveq #$6c, d4
db 0xFF, 0xFF ; 003F16: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003F18: provisional 68k dc.w $ffff
db 0x09, 0x05 ; 003F1A: provisional 68k btst.l d4, d5
db 0x1C, 0xAA, 0xAF, 0xFA ; 003F1C: provisional 68k move.b -$5006(a2), (a6)
db 0xAA, 0xC1 ; 003F20: provisional 68k dc.w $aac1
db 0xFF, 0xFF ; 003F22: provisional 68k dc.w $ffff
db 0x07, 0x09, 0xCA, 0xAA ; 003F24: provisional 68k movep.w -$3556(a1), d3
db 0xD9, 0x99 ; 003F28: provisional 68k add.l d4, (a1)+
db 0xD9, 0x9E ; 003F2A: provisional 68k add.l d4, (a6)+
db 0xE9, 0x9D ; 003F2C: provisional 68k rol.l #$4, d5
db 0xFA, 0xC1 ; 003F2E: provisional 68k dc.w $fac1
db 0xFF, 0xFF ; 003F30: provisional 68k dc.w $ffff
db 0x06, 0x0B ; file 003F32
db 0xAF, 0xDD ; 003F34: provisional 68k dc.w $afdd
db 0xD9, 0x99 ; 003F36: provisional 68k add.l d4, (a1)+
db 0xD9, 0xE9, 0xD9, 0xEE ; 003F38: provisional 68k adda.l -$2612(a1), a4
db 0x9D, 0xDD ; 003F3C: provisional 68k suba.l (a5)+, a6
db 0xDF, 0xC1 ; 003F3E: provisional 68k adda.l d1, a7
db 0xFF, 0xFF ; 003F40: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0xAD, 0xD9 ; 003F42: provisional 68k movep.w -$5227(a4), d2
db 0xE9, 0x9E ; 003F46: provisional 68k rol.l #$4, d6
db 0x99, 0x99 ; 003F48: provisional 68k sub.l d4, (a1)+
db 0x9E, 0x99 ; 003F4A: provisional 68k sub.l (a1)+, d7
db 0x99, 0xEE, 0x99, 0xE9 ; 003F4C: provisional 68k suba.l -$6617(a6), a4
db 0xDA, 0xFF ; file 003F50
db 0xFF, 0x04 ; 003F52: provisional 68k dc.w $ff04
db 0x0E, 0xCF ; file 003F54
db 0xD9, 0x99 ; 003F56: provisional 68k add.l d4, (a1)+
db 0x9E, 0xE9, 0xEE, 0xE9 ; 003F58: provisional 68k suba.w -$1117(a1), a7
db 0x99, 0xEE, 0x99, 0x9E ; 003F5C: provisional 68k suba.l -$6662(a6), a4
db 0xEE, 0x99 ; 003F60: provisional 68k ror.l #$7, d1
db 0x99, 0xF1, 0xFF, 0xFF, 0x03, 0x0F, 0x1A, 0xFF ; 003F62: provisional 68k suba.l ([$30f1aff]), a4
db 0x99, 0xDD ; 003F6A: provisional 68k suba.l (a5)+, a4
db 0xD9, 0xE9, 0xEE, 0x99 ; 003F6C: provisional 68k adda.l -$1167(a1), a4
db 0x99, 0x9E ; 003F70: provisional 68k sub.l d4, (a6)+
db 0xEE, 0x9D ; 003F72: provisional 68k ror.l #$7, d5
db 0xEE, 0x99 ; 003F74: provisional 68k ror.l #$7, d1
db 0x99, 0x9D ; 003F76: provisional 68k sub.l d4, (a5)+
db 0xFF, 0xFF ; 003F78: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 003F7A: provisional 68k btst.l d1, (a0)
db 0xAF, 0xAA ; 003F7C: provisional 68k dc.w $afaa
db 0xDD, 0xD9 ; 003F7E: provisional 68k adda.l (a1)+, a6
db 0xDF, 0xEE, 0x9E, 0x9D ; 003F80: provisional 68k adda.l -$6163(a6), a7
db 0x99, 0x9E ; 003F84: provisional 68k sub.l d4, (a6)+
db 0xEE, 0x99 ; 003F86: provisional 68k ror.l #$7, d1
db 0x9E, 0xE9, 0xE9, 0xD9 ; 003F88: provisional 68k suba.w -$1627(a1), a7
db 0xA1, 0xFF ; 003F8C: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 003F8E: provisional 68k dc.w $ff02
db 0x11, 0x1C ; 003F90: provisional 68k move.b (a4)+, -(a0)
db 0xAF, 0xFA ; 003F92: provisional 68k dc.w $affa
db 0xAD, 0x9D ; 003F94: provisional 68k dc.w $ad9d
db 0xD9, 0xEE, 0x99, 0x9E ; 003F96: provisional 68k adda.l -$6662(a6), a4
db 0xEE, 0xE9 ; file 003F9A
db 0x99, 0x9E ; 003F9C: provisional 68k sub.l d4, (a6)+
db 0x99, 0xD9 ; 003F9E: provisional 68k suba.l (a1)+, a4
db 0xEE, 0xD9 ; file 003FA0
db 0xA1, 0xFF ; 003FA2: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 003FA4: provisional 68k dc.w $ff02
db 0x11, 0xCC, 0xCF, 0xFF ; file 003FA6
db 0xAD, 0x9D ; 003FAA: provisional 68k dc.w $ad9d
db 0xAA, 0xAD ; 003FAC: provisional 68k dc.w $aaad
db 0x99, 0xEE, 0xEE, 0xEE ; 003FAE: provisional 68k suba.l -$1112(a6), a4
db 0xEE, 0xEE ; file 003FB2
db 0x9D, 0xAF, 0x9E, 0x9D ; 003FB4: provisional 68k sub.l d6, -$6163(a7)
db 0x9C, 0xFF ; file 003FB8
db 0xFF, 0x01 ; 003FBA: provisional 68k dc.w $ff01
db 0x12, 0x1C ; 003FBC: provisional 68k move.b (a4)+, d1
db 0xCC, 0x8C ; file 003FBE
db 0xAF, 0x8A ; 003FC0: provisional 68k dc.w $af8a
db 0xDD, 0x9D ; 003FC2: provisional 68k add.l d6, (a5)+
db 0xAD, 0xE9 ; 003FC4: provisional 68k dc.w $ade9
db 0x9E, 0xEE, 0xEE, 0x99 ; 003FC6: provisional 68k suba.w -$1167(a6), a7
db 0x9D, 0xDD ; 003FCA: provisional 68k suba.l (a5)+, a6
db 0xF9, 0xEE ; 003FCC: provisional 68k dc.w $f9ee
db 0xEE, 0x9A ; 003FCE: provisional 68k ror.l #$7, d2
db 0xFF, 0xFF ; 003FD0: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 003FD2: provisional 68k btst.l d0, (a2)
db 0x88, 0x8C ; file 003FD4
db 0xAC, 0xCF ; 003FD6: provisional 68k dc.w $accf
db 0x8C, 0xAF, 0xDD, 0xDA ; 003FD8: provisional 68k or.l -$2226(a7), d6
db 0xFA, 0xAE ; 003FDC: provisional 68k dc.w $faae
db 0xEE, 0xEE ; file 003FDE
db 0xEE, 0x99 ; 003FE0: provisional 68k ror.l #$7, d1
db 0xD9, 0x99 ; 003FE2: provisional 68k add.l d4, (a1)+
db 0x9E, 0x9D ; 003FE4: provisional 68k sub.l (a5)+, d7
db 0xFF, 0xFF ; 003FE6: provisional 68k dc.w $ffff
db 0xFF, 0x01 ; 003FE8: provisional 68k dc.w $ff01
db 0x12, 0x88 ; file 003FEA
db 0x8C, 0xAA, 0xCC, 0x8C ; 003FEC: provisional 68k or.l -$3374(a2), d6
db 0xAA, 0xAA ; 003FF0: provisional 68k dc.w $aaaa
db 0xDA, 0xAA, 0xF9, 0x9E ; 003FF2: provisional 68k add.l -$662(a2), d5
db 0xEE, 0xE9 ; file 003FF6
db 0xDD, 0xDE ; 003FF8: provisional 68k adda.l (a6)+, a6
db 0xE9, 0xD9 ; file 003FFA
db 0x99, 0xAF, 0xFF, 0xFF ; 003FFC: provisional 68k sub.l d4, -$1(a7)
db 0x01, 0x12 ; 004000: provisional 68k btst.l d0, (a2)
db 0x88, 0xCC, 0x8C, 0xCC ; file 004002
db 0xCA, 0xAA, 0xAA, 0xAA ; 004006: provisional 68k and.l -$5556(a2), d5
db 0xA9, 0x9A ; 00400A: provisional 68k dc.w $a99a
db 0xA9, 0xD9 ; 00400C: provisional 68k dc.w $a9d9
db 0x99, 0xE9, 0x9E, 0xED ; 00400E: provisional 68k suba.l -$6113(a1), a4
db 0xFF, 0xD9 ; 004012: provisional 68k dc.w $ffd9
db 0xAF, 0xFF ; 004014: provisional 68k dc.w $afff
db 0xFF, 0x01 ; 004016: provisional 68k dc.w $ff01
db 0x12, 0x88, 0x88, 0x88 ; file 004018
db 0xAA, 0xAA ; 00401C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00401E: provisional 68k dc.w $aaaa
db 0xAC, 0xAD ; 004020: provisional 68k dc.w $acad
db 0xDA, 0xA9, 0xDC, 0xCE ; 004022: provisional 68k add.l -$2332(a1), d5
db 0xEE, 0xEE, 0x9A, 0xFD ; file 004026
db 0xA9, 0xAA ; 00402A: provisional 68k dc.w $a9aa
db 0xFF, 0xFF ; 00402C: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 00402E: provisional 68k btst.l d0, (a3)
db 0x88, 0x88, 0xCC, 0xC8, 0xCC, 0xCC ; file 004030
db 0xAA, 0xAA ; 004036: provisional 68k dc.w $aaaa
db 0xAA, 0xD9 ; 004038: provisional 68k dc.w $aad9
db 0x99, 0xEA, 0xC9, 0xE9 ; 00403A: provisional 68k suba.l -$3617(a2), a4
db 0xDD, 0xDF ; 00403E: provisional 68k adda.l (a7)+, a6
db 0x9E, 0xDD ; 004040: provisional 68k suba.w (a5)+, a7
db 0xAA, 0x88 ; 004042: provisional 68k dc.w $aa88
db 0xFF, 0xFF ; 004044: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 004046: provisional 68k btst.l d0, (a4)
db 0x88, 0x88, 0xCC, 0xC8 ; file 004048
db 0x8C, 0xAC, 0x88, 0x8C ; 00404C: provisional 68k or.l -$7774(a4), d6
db 0xAA, 0xAA ; 004050: provisional 68k dc.w $aaaa
db 0xFA, 0xAD ; 004052: provisional 68k dc.w $faad
db 0xE9, 0xD9, 0xEE, 0xE9 ; file 004054
db 0xD9, 0xDA ; 004058: provisional 68k adda.l (a2)+, a4
db 0xAC, 0xCF ; 00405A: provisional 68k dc.w $accf
db 0xDC, 0xFF ; file 00405C
db 0xFF, 0x01 ; 00405E: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0xC8, 0xCC, 0xCC ; file 004060
db 0xCC, 0xAA, 0xA8, 0x8C ; 004066: provisional 68k and.l -$5774(a2), d6
db 0xAA, 0xAA ; 00406A: provisional 68k dc.w $aaaa
db 0xAD, 0x9D ; 00406C: provisional 68k dc.w $ad9d
db 0xAA, 0xA9 ; 00406E: provisional 68k dc.w $aaa9
db 0x9A, 0xA9, 0x9F, 0xDD ; 004070: provisional 68k sub.l -$6023(a1), d5
db 0xDD, 0xFC, 0xFF, 0xFF, 0x01, 0x14 ; 004074: provisional 68k adda.l #$ffff0114, a6
db 0x88, 0x88, 0x88, 0x8C, 0xCC, 0xC8 ; file 00407A
db 0xCA, 0xAC, 0x88, 0xAA ; 004080: provisional 68k and.l -$7756(a4), d5
db 0xAA, 0xFF ; 004084: provisional 68k dc.w $aaff
db 0xFF, 0xAC ; 004086: provisional 68k dc.w $ffac
db 0xFD, 0xD9 ; 004088: provisional 68k dc.w $fdd9
db 0xD9, 0xED, 0xDD, 0xDA ; 00408A: provisional 68k adda.l -$2226(a5), a4
db 0xA8, 0xFF ; 00408E: provisional 68k dc.w $a8ff
db 0xFF, 0x00 ; 004090: provisional 68k dc.w $ff00
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8C, 0x88, 0x88 ; file 004092
db 0xAA, 0xFD ; 00409E: provisional 68k dc.w $aafd
db 0xDD, 0xDD ; 0040A0: provisional 68k adda.l (a5)+, a6
db 0xED, 0xDE ; file 0040A2
db 0xDD, 0xDD ; 0040A4: provisional 68k adda.l (a5)+, a6
db 0xFA, 0xAC ; 0040A6: provisional 68k dc.w $faac
db 0xCC, 0xFF ; file 0040A8
db 0xFF, 0x00 ; 0040AA: provisional 68k dc.w $ff00
db 0x15, 0x8C, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0040AC
db 0xAA, 0xDD ; 0040B8: provisional 68k dc.w $aadd
db 0xDE, 0xEE, 0xED, 0xDD ; 0040BA: provisional 68k adda.w -$1223(a6), a7
db 0xDF, 0xFD ; file 0040BE
db 0xFA, 0xC8 ; 0040C0: provisional 68k dc.w $fac8
db 0x88, 0xFF ; file 0040C2
db 0xFF, 0x00 ; 0040C4: provisional 68k dc.w $ff00
db 0x15, 0x8C, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0040C6
db 0xAD, 0xDD ; 0040D2: provisional 68k dc.w $addd
db 0xDE, 0xEE, 0xDD, 0xAA ; 0040D4: provisional 68k adda.w -$2256(a6), a7
db 0xAC, 0xAF ; 0040D8: provisional 68k dc.w $acaf
db 0xFC, 0x88 ; 0040DA: provisional 68k dc.w $fc88
db 0xC8, 0xFF ; file 0040DC
db 0xFF, 0x00 ; 0040DE: provisional 68k dc.w $ff00
db 0x15, 0x1C ; 0040E0: provisional 68k move.b (a4)+, -(a2)
db 0xC8, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F, 0xFD ; file 0040E2
db 0x99, 0x99 ; 0040EE: provisional 68k sub.l d4, (a1)+
db 0xDF, 0xCC ; 0040F0: provisional 68k adda.l a4, a7
db 0xCC, 0xAA, 0xC8, 0x8C ; 0040F2: provisional 68k and.l -$3774(a2), d6
db 0xFA, 0xFF ; 0040F6: provisional 68k dc.w $faff
db 0xFF, 0x00 ; 0040F8: provisional 68k dc.w $ff00
db 0x15, 0x1C ; 0040FA: provisional 68k move.b (a4)+, -(a2)
db 0xCC, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8A, 0xFD ; file 0040FC
db 0x99, 0x9D ; 004108: provisional 68k sub.l d4, (a5)+
db 0xAA, 0x88 ; 00410A: provisional 68k dc.w $aa88
db 0x8C, 0xCC ; file 00410C
db 0x88, 0xBB, 0xBD, 0xFF, 0xFF, 0x01, 0x15, 0xCC ; 00410E: provisional 68k or.l ([$ff0156dc]), d4
db 0xCC, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004116
db 0x8C, 0xAF, 0xFF, 0xD9 ; 00411E: provisional 68k or.l -$27(a7), d6
db 0xDF, 0xFA, 0x88, 0x88 ; 004122: provisional 68k adda.l $ffffc9ac(pc), a7
db 0xCC, 0x88 ; file 004126
db 0xC8, 0xBB, 0xCC, 0xFF ; 004128: provisional 68k and.l $4129(pc, a4.l), d4
db 0xFF, 0x01 ; 00412C: provisional 68k dc.w $ff01
db 0x15, 0xCC, 0xCC, 0x88 ; file 00412E
db 0x88, 0xA8, 0x88, 0x88 ; 004132: provisional 68k or.l -$7778(a0), d4
db 0x88, 0x8C ; file 004136
db 0x8C, 0xAD, 0xDA, 0xAF ; 004138: provisional 68k or.l -$2551(a5), d6
db 0xFB, 0xBD ; 00413C: provisional 68k dc.w $fbbd
db 0xC8, 0xAD, 0xDA, 0x8B ; 00413E: provisional 68k and.l -$2575(a5), d4
db 0x88, 0xBB, 0x88, 0xFF ; 004142: provisional 68k or.l $4143(pc, a0.l), d4
db 0xFF, 0x01 ; 004146: provisional 68k dc.w $ff01
db 0x14, 0x1C ; 004148: provisional 68k move.b (a4)+, d2
db 0xCC, 0x88, 0x88, 0xC8, 0x88, 0x88, 0x88, 0x88 ; file 00414A
db 0xCC, 0xAA, 0xCA, 0x9B ; 004152: provisional 68k and.l -$3565(a2), d6
db 0xBB, 0xBB ; file 004156
db 0xCA, 0xDE ; 004158: provisional 68k mulu.w (a6)+, d5
db 0xE9, 0xCB, 0xBB, 0xBB ; file 00415A
db 0xFF, 0xFF ; 00415E: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 004160: provisional 68k btst.l d0, (a4)
db 0x1C, 0xC8, 0xC8, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8C, 0xCC ; file 004162
db 0xAA, 0x8F ; 00416C: provisional 68k dc.w $aa8f
db 0xDB, 0xB8, 0x8B, 0xA9 ; 00416E: provisional 68k add.l d5, $8ba9.w
db 0xE9, 0xE9 ; file 004172
db 0xAC, 0xBB ; 004174: provisional 68k dc.w $acbb
db 0xB8, 0xFF ; file 004176
db 0xFF, 0x02 ; 004178: provisional 68k dc.w $ff02
db 0x13, 0xCC, 0xC8, 0x88, 0x8C, 0x88, 0x88, 0x88, 0x88, 0xCC ; file 00417A
db 0xAD, 0xCC ; 004184: provisional 68k dc.w $adcc
db 0xFB, 0xBB ; 004186: provisional 68k dc.w $fbbb
db 0x88, 0xFE ; file 004188
db 0xE9, 0x9F ; 00418A: provisional 68k rol.l #$4, d7
db 0xAC, 0x88 ; 00418C: provisional 68k dc.w $ac88
db 0x88, 0xFF ; file 00418E
db 0xFF, 0x02 ; 004190: provisional 68k dc.w $ff02
db 0x13, 0x8C, 0xC8, 0x88 ; file 004192
db 0x8A, 0xFC, 0x88, 0x8C ; 004196: provisional 68k divu.w #$888c, d5
db 0xC8, 0xCA ; file 00419A
db 0xD9, 0xAC, 0xCC, 0xBB ; 00419C: provisional 68k add.l d4, -$3345(a4)
db 0x88, 0x9E ; 0041A0: provisional 68k or.l (a6)+, d4
db 0xED, 0xAC ; 0041A2: provisional 68k lsl.l d6, d4
db 0x8C, 0xC8, 0x88, 0xFF ; file 0041A4
db 0xFF, 0x02 ; 0041A8: provisional 68k dc.w $ff02
db 0x13, 0x1C ; 0041AA: provisional 68k move.b (a4)+, -(a1)
db 0xCC, 0xCC ; file 0041AC
db 0xCC, 0xEE, 0x88, 0xCC ; 0041AE: provisional 68k mulu.w -$7734(a6), d6
db 0xCC, 0xA9, 0xE9, 0xAC ; 0041B2: provisional 68k and.l -$1654(a1), d6
db 0xCC, 0x88 ; file 0041B6
db 0x88, 0xEE, 0x9C, 0x88 ; 0041B8: provisional 68k divu.w -$6378(a6), d4
db 0x8C, 0xC8, 0x88, 0xFF ; file 0041BC
db 0xFF, 0x02 ; 0041C0: provisional 68k dc.w $ff02
db 0x13, 0x88, 0xC8, 0xCC ; file 0041C2
db 0xC8, 0xAD, 0xFA, 0xAA ; 0041C6: provisional 68k and.l -$556(a5), d4
db 0xCA, 0xD9 ; 0041CA: provisional 68k mulu.w (a1)+, d5
db 0xEE, 0x9A ; 0041CC: provisional 68k ror.l #$7, d2
db 0x88, 0x88 ; file 0041CE
db 0x8C, 0x9F ; 0041D0: provisional 68k or.l (a7)+, d6
db 0x88, 0xC8, 0x8C, 0x88, 0x88, 0xFF ; file 0041D2
db 0xFF, 0x03 ; 0041D8: provisional 68k dc.w $ff03
db 0x12, 0xAC, 0xCC, 0x88 ; 0041DA: provisional 68k move.b -$3378(a4), (a1)
db 0x8C, 0xC8 ; file 0041DE
db 0xCA, 0x9E ; 0041E0: provisional 68k and.l (a6)+, d5
db 0x99, 0xDD ; 0041E2: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x99 ; 0041E4: provisional 68k add.l d6, (a1)+
db 0x9A, 0xA9, 0xC8, 0x88 ; 0041E6: provisional 68k sub.l -$3778(a1), d5
db 0x88, 0x88, 0x88, 0x88 ; file 0041EA
db 0xFF, 0xFF ; 0041EE: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 0041F0: provisional 68k btst.l d1, (a1)
db 0x1A, 0xC8, 0xCC, 0x8C ; file 0041F2
db 0xAC, 0xCC ; 0041F6: provisional 68k dc.w $accc
db 0xAF, 0xFA ; 0041F8: provisional 68k dc.w $affa
db 0xAA, 0xAA ; 0041FA: provisional 68k dc.w $aaaa
db 0x99, 0xAC, 0xCF, 0xA8 ; 0041FC: provisional 68k sub.l d4, -$3058(a4)
db 0x88, 0x88, 0x88, 0x88 ; file 004200
db 0xFF, 0xFF ; 004204: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 004206: provisional 68k btst.l d1, (a0)
db 0x1C, 0xCC, 0xC8, 0x8C ; file 004208
db 0xFC, 0xCC ; 00420C: provisional 68k dc.w $fccc
db 0xCC, 0xCC, 0xCC, 0xC8, 0xCC, 0x88 ; file 00420E
db 0x88, 0xA8, 0x88, 0x88 ; 004214: provisional 68k or.l -$7778(a0), d4
db 0x88, 0xFF ; file 004218
db 0xFF, 0x04 ; 00421A: provisional 68k dc.w $ff04
db 0x0F, 0xC8, 0xA1, 0x1C ; 00421C: provisional 68k movep.l d7, -$5ee4(a0)
db 0xAF, 0xAC ; 004220: provisional 68k dc.w $afac
db 0xCC, 0xCC, 0xCC, 0xC8, 0x88, 0x8C, 0xCC, 0xC8, 0x88, 0x88 ; file 004222
db 0xA8, 0xFF ; 00422C: provisional 68k dc.w $a8ff
db 0xFF, 0x06 ; 00422E: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xCD, 0xDC ; 004230: provisional 68k movep.w d6, -$3224(a0)
db 0xCC, 0xCC, 0xCC, 0xCC, 0x88, 0xCF ; file 004234
db 0xFD, 0xDC ; 00423A: provisional 68k dc.w $fddc
db 0x88, 0xCF, 0xD8, 0xFF ; file 00423C
db 0xFF, 0x06 ; 004240: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xC8, 0xC8 ; 004242: provisional 68k movep.w d6, -$3738(a0)
db 0x88, 0x88, 0x8C, 0xCC, 0x88, 0xCD ; file 004246
db 0xDD, 0xED, 0xFD, 0xEE ; 00424C: provisional 68k adda.l -$212(a5), a6
db 0xF1, 0xFF ; 004250: provisional 68k dc.w $f1ff
db 0xFF, 0x07 ; 004252: provisional 68k dc.w $ff07
db 0x0C, 0xC8, 0x88, 0x88, 0x88, 0x8C, 0xCC, 0x88 ; file 004254
db 0xCD, 0xDD ; 00425C: provisional 68k muls.w (a5)+, d6
db 0xEE, 0xEE, 0xED, 0xFC ; file 00425E
db 0xFF, 0xFF ; 004262: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x88, 0x88 ; 004264: provisional 68k movep.w -$7778(a4), d3
db 0x88, 0x88, 0x8C, 0xCC ; file 004268
db 0x8C, 0xDE ; 00426C: provisional 68k divu.w (a6)+, d6
db 0xDE, 0xEE, 0xED, 0xDD ; 00426E: provisional 68k adda.w -$1223(a6), a7
db 0xDC, 0xFF ; file 004272
db 0xFF, 0x07 ; 004274: provisional 68k dc.w $ff07
db 0x0C, 0x8C, 0x88, 0x88, 0x88, 0x88, 0xCC, 0xCF ; file 004276
db 0xDD, 0xDE ; 00427E: provisional 68k adda.l (a6)+, a6
db 0xDE, 0xED, 0xDE, 0x9C ; 004280: provisional 68k adda.w -$2164(a5), a7
db 0xFF, 0xFF ; 004284: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8C, 0x88 ; 004286: provisional 68k movep.w -$7378(a4), d3
db 0x88, 0x88, 0x88, 0xCC ; file 00428A
db 0xCA, 0xAA, 0xAD, 0xD9 ; 00428E: provisional 68k and.l -$5227(a2), d5
db 0xEE, 0xDD ; file 004292
db 0xF1, 0xFF ; 004294: provisional 68k dc.w $f1ff
db 0xFF, 0x07 ; 004296: provisional 68k dc.w $ff07
db 0x0C, 0x8C, 0xC8, 0x88, 0xCC, 0x88, 0x88, 0x8C ; file 004298
db 0xAC, 0xCF ; 0042A0: provisional 68k dc.w $accf
db 0xFF, 0xFF ; 0042A2: provisional 68k dc.w $ffff
db 0xFA, 0xC1 ; 0042A4: provisional 68k dc.w $fac1
db 0xFF, 0xFF ; 0042A6: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1C, 0xCC ; 0042A8: provisional 68k movep.w $1ccc(a4), d3
db 0xCA, 0xDF ; 0042AC: provisional 68k mulu.w (a7)+, d5
db 0xC8, 0x88, 0x88, 0xCC ; file 0042AE
db 0xCC, 0xAF, 0xFA, 0xCC ; 0042B2: provisional 68k and.l -$534(a7), d6
db 0x88, 0xFF ; file 0042B6
db 0xFF, 0x07 ; 0042B8: provisional 68k dc.w $ff07
db 0x0B, 0x1C ; 0042BA: provisional 68k btst.l d5, (a4)+
db 0xC8, 0xCA, 0xEE, 0xEF, 0xC8, 0x88 ; file 0042BC
db 0x88, 0xBC, 0xCC, 0xAC, 0xCC, 0xFF ; 0042C2: provisional 68k or.l #$ccacccff, d4
db 0xFF, 0x07 ; 0042C8: provisional 68k dc.w $ff07
db 0x0C, 0x1C, 0xC8, 0xCC ; 0042CA: provisional 68k cmpi.b #$cc, (a4)+
db 0xFE, 0xEE ; 0042CE: provisional 68k dc.w $feee
db 0xEC, 0x88 ; 0042D0: provisional 68k lsr.l #$6, d0
db 0x88, 0x88, 0x88, 0xC8 ; file 0042D2
db 0x88, 0xC1 ; 0042D6: provisional 68k divu.w d1, d4
db 0xFF, 0xFF ; 0042D8: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0xCC, 0xC8 ; file 0042DA
db 0xCD, 0xEE, 0xEE, 0xEF ; 0042DE: provisional 68k muls.w -$1111(a6), d6
db 0x88, 0x88, 0x88, 0x8C, 0x88, 0x88 ; file 0042E2
db 0xFF, 0xFF ; 0042E8: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0x1C, 0xCC ; file 0042EA
db 0xCC, 0xAD, 0xEE, 0xEE ; 0042EE: provisional 68k and.l -$1112(a5), d6
db 0xDF, 0xC8 ; 0042F2: provisional 68k adda.l a0, a7
db 0x88, 0x88, 0x88, 0x88 ; file 0042F4
db 0xFF, 0xFF ; 0042F8: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xCC, 0xCC ; 0042FA: provisional 68k movep.w -$3334(a2), d4
db 0xCA, 0xAF, 0xDD, 0xDF ; 0042FE: provisional 68k and.l -$2221(a7), d5
db 0xCC, 0xCC, 0x88, 0xC8, 0x88, 0xFF ; file 004302
db 0xFF, 0x09 ; 004308: provisional 68k dc.w $ff09
db 0x09, 0x88, 0xCC, 0xCC ; 00430A: provisional 68k movep.w d4, -$3334(a0)
db 0xCC, 0xFA, 0xAA, 0xAA ; 00430E: provisional 68k mulu.w $ffffedba(pc), d6
db 0xAC, 0xCA ; 004312: provisional 68k dc.w $acca
db 0xCC, 0xFF ; file 004314
db 0xFF, 0x0A ; 004316: provisional 68k dc.w $ff0a
db 0x08, 0x1C, 0xCC, 0x88, 0xCC, 0xCA ; file 004318
db 0xAA, 0xAA ; 00431E: provisional 68k dc.w $aaaa
db 0xFD, 0xFA ; 004320: provisional 68k dc.w $fdfa
db 0xFF, 0xFF ; 004322: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 004324: provisional 68k btst.l d5, d7
db 0xCC, 0xCC, 0x88, 0x8C ; file 004326
db 0xCA, 0xD9 ; 00432A: provisional 68k mulu.w (a1)+, d5
db 0xDD, 0xFC, 0xFF, 0xFF, 0x0C, 0x06 ; 00432C: provisional 68k adda.l #$ffff0c06, a6
db 0xCC, 0xCC, 0xC8, 0x8A ; file 004332
db 0xAF, 0xFF ; 004336: provisional 68k dc.w $afff
db 0xA1, 0xFF ; 004338: provisional 68k dc.w $a1ff
db 0xFF, 0x0D ; 00433A: provisional 68k dc.w $ff0d
db 0x04, 0xCA, 0xCC, 0xC8, 0x8C, 0x88 ; file 00433C
db 0xFF, 0xFF ; 004342: provisional 68k dc.w $ffff
db 0x0E, 0x03, 0x8C, 0xCC, 0xCC, 0x88 ; file 004344
db 0xFF, 0xFF ; 00434A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00434C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00434E: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 004350: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 004354: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 00435A
db 0x10, 0x10 ; 00435E: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 004360: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 004362: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 004364: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 004366: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00436A: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00436E: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 004370: provisional 68k neg.w d4
db 0x1C, 0x18 ; 004372: provisional 68k move.b (a0)+, d6
db 0x10, 0x84 ; 004374: provisional 68k move.b d4, (a0)
db 0x60, 0x54 ; 004376: provisional 68k bra.b $43cc
db 0x00, 0x38, 0x68, 0x48, 0x44, 0x40 ; 004378: provisional 68k ori.b #$48, $4440.w
db 0x40, 0x3C ; file 00437E
db 0x34, 0xC0 ; 004380: provisional 68k move.w d0, (a2)+
db 0x98, 0x78, 0x40, 0x44 ; 004382: provisional 68k sub.w $4044.w, d4
db 0x64, 0x34 ; 004386: provisional 68k bcc.b $43bc
db 0x2C, 0x28, 0xFF, 0xFF ; 004388: provisional 68k move.l -$1(a0), d6
db 0xFF, 0xFF ; 00438C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00438E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004390: provisional 68k dc.w $ffff
db 0x09, 0x05 ; 004392: provisional 68k btst.l d4, d5
db 0xEC, 0xB9 ; 004394: provisional 68k ror.l d6, d1
db 0x99, 0x99 ; 004396: provisional 68k sub.l d4, (a1)+
db 0x9B, 0xBC ; file 004398
db 0xFF, 0xFF ; 00439A: provisional 68k dc.w $ffff
db 0x07, 0x09, 0xCB, 0x99 ; 00439C: provisional 68k movep.w -$3467(a1), d3
db 0x99, 0x9D ; 0043A0: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 0043A2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 0043A4: provisional 68k add.l d6, (a1)+
db 0x9B, 0xB1, 0xFF, 0xFF, 0x05, 0x0C, 0x1F, 0xB9 ; 0043A6: provisional 68k sub.l d5, ([$50c1fb9])
db 0x9D, 0xDD ; 0043AE: provisional 68k suba.l (a5)+, a6
db 0xD9, 0xDD ; 0043B0: provisional 68k adda.l (a5)+, a4
db 0xD9, 0xDD ; 0043B2: provisional 68k adda.l (a5)+, a4
db 0xDD, 0xDD ; 0043B4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 0043B6: provisional 68k adda.l (a3)+, a6
db 0xF1, 0xFF ; 0043B8: provisional 68k dc.w $f1ff
db 0xFF, 0x05 ; 0043BA: provisional 68k dc.w $ff05
db 0x0C, 0xB9, 0x9D, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD ; 0043BC: provisional 68k cmpi.l #$9ddddddd, $dddddddd.l
db 0xDD, 0xDD ; 0043C6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x9B ; 0043C8: provisional 68k add.l d6, (a3)+
db 0xFF, 0xFF ; 0043CA: provisional 68k dc.w $ffff
db 0x04, 0x0E ; file 0043CC
db 0x1B, 0x9D, 0xD9, 0xDD ; 0043CE: provisional 68k move.b (a5)+, ([])
db 0xDD, 0xDD ; 0043D2: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9D ; 0043D4: provisional 68k add.l d4, (a5)+
db 0xDD, 0xDD ; 0043D6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0043D8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0043DA: provisional 68k adda.l (a5)+, a6
db 0x91, 0xFF ; file 0043DC
db 0xFF, 0x04 ; 0043DE: provisional 68k dc.w $ff04
db 0x0E, 0x99 ; file 0043E0
db 0x99, 0xD9 ; 0043E2: provisional 68k suba.l (a1)+, a4
db 0xDD, 0x9D ; 0043E4: provisional 68k add.l d6, (a5)+
db 0xDD, 0xDD ; 0043E6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0043E8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 0043EA: provisional 68k adda.l (a1)+, a6
db 0xDD, 0xDD ; 0043EC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 0043EE: provisional 68k adda.l (a3)+, a6
db 0xFF, 0xFF ; 0043F0: provisional 68k dc.w $ffff
db 0x03, 0x0F, 0x1B, 0x99 ; 0043F2: provisional 68k movep.w $1b99(a7), d1
db 0x99, 0x9D ; 0043F6: provisional 68k sub.l d4, (a5)+
db 0x99, 0x9D ; 0043F8: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 0043FA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0043FC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0043FE: provisional 68k adda.l (a5)+, a6
db 0x9D, 0x9D ; 004400: provisional 68k sub.l d6, (a5)+
db 0xDD, 0xD9 ; 004402: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 004404: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 004406: provisional 68k btst.l d1, (a0)
db 0xCB, 0x99 ; 004408: provisional 68k and.l d5, (a1)+
db 0x99, 0x9D ; 00440A: provisional 68k sub.l d4, (a5)+
db 0xD9, 0x99 ; 00440C: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 00440E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004410: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004412: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9D ; 004414: provisional 68k add.l d4, (a5)+
db 0xDD, 0xDD ; 004416: provisional 68k adda.l (a5)+, a6
db 0xF1, 0xFF ; 004418: provisional 68k dc.w $f1ff
db 0xFF, 0x02 ; 00441A: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 00441C
db 0xBB, 0xF9, 0x9F, 0xBD, 0xDD, 0x99 ; 00441E: provisional 68k cmpa.l $9fbddd99.l, a5
db 0xDD, 0xDD ; 004424: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004426: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004428: provisional 68k adda.l (a5)+, a6
db 0xD9, 0xDD ; 00442A: provisional 68k adda.l (a5)+, a4
db 0xDD, 0xDD ; 00442C: provisional 68k adda.l (a5)+, a6
db 0x91, 0xFF ; file 00442E
db 0xFF, 0x02 ; 004430: provisional 68k dc.w $ff02
db 0x11, 0x88, 0xC9, 0xBC ; file 004432
db 0x9F, 0xC9 ; 004436: provisional 68k suba.l a1, a7
db 0x99, 0xD9 ; 004438: provisional 68k suba.l (a1)+, a4
db 0x99, 0x9D ; 00443A: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 00443C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 00443E: provisional 68k adda.l (a1)+, a6
db 0xDD, 0xDD ; 004440: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 004442: provisional 68k add.l d6, (a1)+
db 0x91, 0xFF ; file 004444
db 0xFF, 0x02 ; 004446: provisional 68k dc.w $ff02
db 0x11, 0x1F ; 004448: provisional 68k move.b (a7)+, -(a0)
db 0xFB, 0x9C ; 00444A: provisional 68k dc.w $fb9c
db 0xBF, 0xC9 ; 00444C: provisional 68k cmpa.l a1, a7
db 0x99, 0x9D ; 00444E: provisional 68k sub.l d4, (a5)+
db 0xB9, 0x99 ; 004450: provisional 68k eor.l d4, (a1)+
db 0xDD, 0xDD ; 004452: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 004454: provisional 68k add.l d6, (a1)+
db 0xDD, 0xDD ; 004456: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 004458: provisional 68k add.l d6, (a1)+
db 0x91, 0xFF ; file 00445A
db 0xFF, 0x02 ; 00445C: provisional 68k dc.w $ff02
db 0x11, 0x1F ; 00445E: provisional 68k move.b (a7)+, -(a0)
db 0xCF, 0xFC, 0xBC, 0xB9 ; 004460: provisional 68k muls.w #$bcb9, d7
db 0x99, 0xBD ; file 004464
db 0xB9, 0xD9 ; 004466: provisional 68k cmpa.l (a1)+, a4
db 0xB9, 0x9D ; 004468: provisional 68k eor.l d4, (a5)+
db 0x9D, 0xDD ; 00446A: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 00446C: provisional 68k adda.l (a5)+, a6
db 0x99, 0xD9 ; 00446E: provisional 68k suba.l (a1)+, a4
db 0x98, 0xFF ; file 004470
db 0xFF, 0x02 ; 004472: provisional 68k dc.w $ff02
db 0x12, 0x1F ; 004474: provisional 68k move.b (a7)+, d1
db 0xCF, 0x8C ; 004476: provisional 68k exg.l d7, a4
db 0x99, 0x99 ; 004478: provisional 68k sub.l d4, (a1)+
db 0xB9, 0x99 ; 00447A: provisional 68k eor.l d4, (a1)+
db 0xCB, 0x99 ; 00447C: provisional 68k and.l d5, (a1)+
db 0xBD, 0xDB ; 00447E: provisional 68k cmpa.l (a3)+, a6
db 0x9D, 0xDD ; 004480: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 004482: provisional 68k adda.l (a5)+, a6
db 0x99, 0xD9 ; 004484: provisional 68k suba.l (a1)+, a4
db 0x9B, 0x88 ; 004486: provisional 68k subx.l -(a0), -(a5)
db 0xFF, 0xFF ; 004488: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1F, 0xFF ; 00448A: provisional 68k andi.b #$ff, (a3)
db 0xFB, 0x8F ; 00448E: provisional 68k dc.w $fb8f
db 0xCB, 0xBB ; file 004490
db 0x9B, 0x99 ; 004492: provisional 68k sub.l d5, (a1)+
db 0x99, 0xDD ; 004494: provisional 68k suba.l (a5)+, a4
db 0xD9, 0x99 ; 004496: provisional 68k add.l d4, (a1)+
db 0xD9, 0x99 ; 004498: provisional 68k add.l d4, (a1)+
db 0x99, 0xDD ; 00449A: provisional 68k suba.l (a5)+, a4
db 0x9B, 0xBB ; file 00449C
db 0x9D, 0xDB ; 00449E: provisional 68k suba.l (a3)+, a6
db 0xFF, 0xFF ; 0044A0: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1F, 0x88 ; 0044A2: provisional 68k andi.b #$88, (a3)
db 0xCB, 0xFC, 0xBB, 0xCF ; 0044A6: provisional 68k muls.w #$bbcf, d5
db 0xF8, 0xB9 ; 0044AA: provisional 68k dc.w $f8b9
db 0x99, 0x99 ; 0044AC: provisional 68k sub.l d4, (a1)+
db 0x99, 0xDD ; 0044AE: provisional 68k suba.l (a5)+, a4
db 0xD9, 0x9D ; 0044B0: provisional 68k add.l d4, (a5)+
db 0xD9, 0xDD ; 0044B2: provisional 68k adda.l (a5)+, a4
db 0x99, 0x99 ; 0044B4: provisional 68k sub.l d4, (a1)+
db 0xDD, 0x9C ; 0044B6: provisional 68k add.l d6, (a4)+
db 0xFF, 0xFF ; 0044B8: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x8F, 0xFF ; 0044BA: provisional 68k andi.b #$ff, (a3)
db 0x88, 0xCC, 0x88, 0x8B ; file 0044BE
db 0x99, 0x8F ; 0044C2: provisional 68k subx.l -(a7), -(a4)
db 0x99, 0x99 ; 0044C4: provisional 68k sub.l d4, (a1)+
db 0x99, 0xDD ; 0044C6: provisional 68k suba.l (a5)+, a4
db 0x99, 0xDD ; 0044C8: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 0044CA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0044CC: provisional 68k adda.l (a5)+, a6
db 0x9B, 0xBF ; file 0044CE
db 0xFF, 0xFF ; 0044D0: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1B, 0x88 ; 0044D2: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88 ; file 0044D6
db 0x88, 0xF8, 0x88, 0x8F ; 0044D8: provisional 68k divu.w $888f.w, d4
db 0xB9, 0x88 ; 0044DC: provisional 68k cmpm.l (a0)+, (a4)+
db 0x88, 0x99 ; 0044DE: provisional 68k or.l (a1)+, d4
db 0xDD, 0xDD ; 0044E0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0044E2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0044E4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 0044E6: provisional 68k add.l d6, (a1)+
db 0x9C, 0xCF ; 0044E8: provisional 68k suba.w a7, a6
db 0xFF, 0xFF ; 0044EA: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x89, 0xF8 ; 0044EC: provisional 68k ori.b #$f8, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0044F0
db 0x88, 0xB9, 0xDD, 0xDD, 0xDD, 0xDD ; 0044F8: provisional 68k or.l $dddddddd.l, d4
db 0xD9, 0x99 ; 0044FE: provisional 68k add.l d4, (a1)+
db 0x99, 0x9B ; 004500: provisional 68k sub.l d4, (a3)+
db 0xBF, 0xFF ; file 004502
db 0xFF, 0xFF ; 004504: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8C, 0xF8 ; 004506: provisional 68k ori.b #$f8, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00450A
db 0x88, 0xB9, 0x99, 0xDD, 0xDD, 0xD9 ; 004512: provisional 68k or.l $99ddddd9.l, d4
db 0x99, 0x9B ; 004518: provisional 68k sub.l d4, (a3)+
db 0xB9, 0x9B ; 00451A: provisional 68k eor.l d4, (a3)+
db 0xF8, 0xFF ; 00451C: provisional 68k dc.w $f8ff
db 0xFF, 0xFF ; 00451E: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1F, 0xCF ; 004520: provisional 68k ori.b #$cf, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x89 ; file 004524
db 0x99, 0xDD ; 00452E: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x99 ; 004530: provisional 68k add.l d6, (a1)+
db 0xBB, 0xCC ; 004532: provisional 68k cmpa.l a4, a5
db 0xBB, 0xB8, 0x8B, 0xDE ; 004534: provisional 68k eor.l d5, $8bde.w
db 0xFF, 0xFF ; 004538: provisional 68k dc.w $ffff
db 0x00, 0x16, 0x1F, 0xFC ; 00453A: provisional 68k ori.b #$fc, (a6)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00453E
db 0x88, 0xFB, 0x99, 0xDD ; 004546: provisional 68k divu.w ([$4548]), d4
db 0xD9, 0x9B ; 00454A: provisional 68k add.l d4, (a3)+
db 0xFF, 0xFF ; 00454C: provisional 68k dc.w $ffff
db 0xCC, 0x8A ; file 00454E
db 0x8E, 0xDD ; 004550: provisional 68k divu.w (a5)+, d7
db 0xEE, 0xFF ; file 004552
db 0xFF, 0x01 ; 004554: provisional 68k dc.w $ff01
db 0x15, 0xFC ; file 004556
db 0xFF, 0x88 ; 004558: provisional 68k dc.w $ff88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00455A
db 0xFC, 0x99 ; 004560: provisional 68k dc.w $fc99
db 0x99, 0xDD ; 004562: provisional 68k suba.l (a5)+, a4
db 0x9D, 0xDB ; 004564: provisional 68k suba.l (a3)+, a6
db 0xFF, 0xFF ; 004566: provisional 68k dc.w $ffff
db 0xCF, 0x88 ; 004568: provisional 68k exg.l d7, a0
db 0x8A, 0xED, 0xFF, 0xFF ; 00456A: provisional 68k divu.w -$1(a5), d5
db 0xFF, 0x01 ; 00456E: provisional 68k dc.w $ff01
db 0x14, 0xCC ; file 004570
db 0xFF, 0x88 ; 004572: provisional 68k dc.w $ff88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 004574
db 0xFC, 0x99 ; 00457A: provisional 68k dc.w $fc99
db 0x99, 0x8F ; 00457C: provisional 68k subx.l -(a7), -(a4)
db 0xEE, 0xED ; file 00457E
db 0xB8, 0xB9, 0x99, 0x88, 0x8A, 0xAE ; 004580: provisional 68k cmp.l $99888aae.l, d4
db 0xFF, 0xFF ; 004586: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 004588: provisional 68k btst.l d0, (a4)
db 0x1C, 0xCF, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00458A
db 0x8F, 0xFC, 0x99, 0xBE ; 004592: provisional 68k divs.w #$99be, d7
db 0x88, 0xAA, 0xAD, 0xBB ; 004596: provisional 68k or.l -$5245(a2), d4
db 0xDD, 0xD9 ; 00459A: provisional 68k adda.l (a1)+, a6
db 0xF8, 0x88 ; 00459C: provisional 68k dc.w $f888
db 0xFF, 0xFF ; 00459E: provisional 68k dc.w $ffff
db 0xFF, 0x01 ; 0045A0: provisional 68k dc.w $ff01
db 0x14, 0x1B ; 0045A2: provisional 68k move.b (a3)+, d2
db 0xBF, 0x88 ; 0045A4: provisional 68k cmpm.l (a0)+, (a7)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 0045A6
db 0xFB, 0x99 ; 0045AC: provisional 68k dc.w $fb99
db 0xFE, 0xA8 ; 0045AE: provisional 68k dc.w $fea8
db 0x88, 0xAE, 0x9D, 0xDD ; 0045B0: provisional 68k or.l -$6223(a6), d4
db 0xDD, 0x98 ; 0045B4: provisional 68k add.l d6, (a0)+
db 0x88, 0x88 ; file 0045B6
db 0xFF, 0xFF ; 0045B8: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xCF, 0xF8 ; 0045BA: provisional 68k andi.b #$f8, (a3)
db 0x88, 0x8C, 0x88, 0x88, 0x88, 0x8F ; file 0045BE
db 0xFB, 0x99 ; 0045C4: provisional 68k dc.w $fb99
db 0xBB, 0xAA, 0xAA, 0xAF ; 0045C6: provisional 68k eor.l d5, -$5551(a2)
db 0x9D, 0xDD ; 0045CA: provisional 68k suba.l (a5)+, a6
db 0xD9, 0x98 ; 0045CC: provisional 68k add.l d4, (a0)+
db 0x88, 0xF8, 0xFF, 0xFF ; 0045CE: provisional 68k divu.w $ffff.w, d4
db 0x02, 0x13, 0xFC, 0xF8 ; 0045D2: provisional 68k andi.b #$f8, (a3)
db 0x88, 0x89, 0x9B, 0xFF ; file 0045D6
db 0xFF, 0xFF ; 0045DA: provisional 68k dc.w $ffff
db 0xC9, 0xDD ; 0045DC: provisional 68k muls.w (a5)+, d4
db 0x9C, 0xEA, 0xAA, 0x88 ; 0045DE: provisional 68k suba.w -$5578(a2), a6
db 0xDD, 0xDD ; 0045E2: provisional 68k adda.l (a5)+, a6
db 0x9C, 0xFB, 0xF8, 0xF8 ; 0045E4: provisional 68k suba.w $45de(pc, a7.l), a6
db 0xFF, 0xFF ; 0045E8: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1B, 0xCF ; 0045EA: provisional 68k andi.b #$cf, (a3)
db 0xFF, 0xCC ; 0045EE: provisional 68k dc.w $ffcc
db 0xDD, 0xFF ; file 0045F0
db 0xFC, 0xCF ; 0045F2: provisional 68k dc.w $fccf
db 0xBD, 0xDD ; 0045F4: provisional 68k cmpa.l (a5)+, a6
db 0x9E, 0xEF, 0x88, 0x88 ; 0045F6: provisional 68k suba.w -$7778(a7), a7
db 0xDD, 0xDC ; 0045FA: provisional 68k adda.l (a4)+, a6
db 0x8F, 0x8B ; 0045FC: provisional 68k dc.w $8f8b
db 0xCF, 0xF8, 0xFF, 0xFF ; 0045FE: provisional 68k muls.w $ffff.w, d7
db 0x02, 0x13, 0x1F, 0xBF ; 004602: provisional 68k andi.b #$bf, (a3)
db 0xFF, 0xFF ; 004606: provisional 68k dc.w $ffff
db 0x9D, 0x9B ; 004608: provisional 68k sub.l d6, (a3)+
db 0x9B, 0xB9, 0x9D, 0xDD, 0xD9, 0x88 ; 00460A: provisional 68k sub.l d5, $9dddd988.l
db 0x88, 0x8D ; file 004610
db 0xD9, 0xF8, 0xF8, 0x8F ; 004612: provisional 68k adda.l $f88f.w, a4
db 0xF8, 0xF8 ; 004616: provisional 68k dc.w $f8f8
db 0xFF, 0xFF ; 004618: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 00461A: provisional 68k btst.l d1, (a2)
db 0xBC, 0xFF ; file 00461C
db 0xFF, 0xFC ; 00461E: provisional 68k dc.w $fffc
db 0xCF, 0xFB, 0xDD, 0xDD ; 004620: provisional 68k muls.w ([$4622]), d7
db 0x99, 0x99 ; 004624: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 004626: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xC8 ; 004628: provisional 68k suba.l a0, a6
db 0x88, 0x88 ; file 00462A
db 0x8F, 0x8F ; 00462C: provisional 68k dc.w $8f8f
db 0x88, 0xFF ; file 00462E
db 0xFF, 0x03 ; 004630: provisional 68k dc.w $ff03
db 0x12, 0xFB, 0xCF, 0xCB, 0x8F, 0x9C, 0xFC, 0xB9 ; 004632: provisional 68k move.b ([$4634], $8f9cfcb9), (a1)+
db 0x99, 0x99 ; 00463A: provisional 68k sub.l d4, (a1)+
db 0x99, 0xD9 ; 00463C: provisional 68k suba.l (a1)+, a4
db 0xBC, 0x99 ; 00463E: provisional 68k cmp.l (a1)+, d6
db 0xB8, 0x88 ; 004640: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x88 ; file 004642
db 0xFF, 0xFF ; 004646: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 004648: provisional 68k btst.l d1, (a1)
db 0x1F, 0xBB, 0xBF, 0x8B, 0x9B, 0xFC, 0xFC, 0xCC, 0xCC, 0xCF ; 00464A: provisional 68k move.b ([$464c, a3.l * 8], $9bfcfccc), -$31(a7, a4.l)
db 0xCB, 0x88 ; 004654: provisional 68k exg.l d5, a0
db 0xFF, 0xBF ; 004656: provisional 68k dc.w $ffbf
db 0x88, 0x88 ; file 004658
db 0x8F, 0x88 ; 00465A: provisional 68k dc.w $8f88
db 0xFF, 0xFF ; 00465C: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 00465E
db 0xFF, 0xB8 ; 004660: provisional 68k dc.w $ffb8
db 0x1F, 0xB9, 0x9C, 0xBC, 0xFC, 0xFF, 0xF8, 0x88 ; 004662: provisional 68k move.b $9cbcfcff.l, -$78(a7, a7.l)
db 0x8F, 0xCC ; file 00466A
db 0xBF, 0x88 ; 00466C: provisional 68k cmpm.l (a0)+, (a7)+
db 0x8F, 0xB8, 0xFF, 0xFF ; 00466E: provisional 68k or.l d7, $ffff.w
db 0x05, 0x0E, 0xC1, 0x88 ; 004672: provisional 68k movep.w -$3e78(a6), d2
db 0xC9, 0x9F ; 004676: provisional 68k and.l d4, (a7)+
db 0xFC, 0xCF ; 004678: provisional 68k dc.w $fccf
db 0xCB, 0xBC ; file 00467A
db 0xF8, 0xF9 ; 00467C: provisional 68k dc.w $f8f9
db 0x9D, 0xDB ; 00467E: provisional 68k suba.l (a3)+, a6
db 0x88, 0xC9, 0xD1, 0xFF ; file 004680
db 0xFF, 0x06 ; 004684: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xCF, 0xC8 ; 004686: provisional 68k movep.w d6, -$3038(a0)
db 0x88, 0x88, 0x8B, 0xBC, 0x88, 0xCD ; file 00468A
db 0xDD, 0xDD ; 004690: provisional 68k adda.l (a5)+, a6
db 0x9D, 0xDD ; 004692: provisional 68k suba.l (a5)+, a6
db 0x91, 0xFF ; file 004694
db 0xFF, 0x07 ; 004696: provisional 68k dc.w $ff07
db 0x0C, 0xC8, 0x88, 0x88 ; file 004698
db 0xF8, 0x8B ; 00469C: provisional 68k dc.w $f88b
db 0xFF, 0x88 ; 00469E: provisional 68k dc.w $ff88
db 0xBD, 0xDD ; 0046A0: provisional 68k cmpa.l (a5)+, a6
db 0xDD, 0xDD ; 0046A2: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9B ; 0046A4: provisional 68k add.l d4, (a3)+
db 0xFF, 0xFF ; 0046A6: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x88, 0x88 ; 0046A8: provisional 68k movep.w -$7778(a4), d3
db 0x88, 0xF8, 0x8B, 0xBF ; 0046AC: provisional 68k divu.w $8bbf.w, d4
db 0xFB, 0xDD ; 0046B0: provisional 68k dc.w $fbdd
db 0xDD, 0xDD ; 0046B2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 0046B4: provisional 68k add.l d6, (a1)+
db 0xDC, 0xFF ; file 0046B6
db 0xFF, 0x07 ; 0046B8: provisional 68k dc.w $ff07
db 0x0C, 0x8F, 0x88, 0x88 ; file 0046BA
db 0xF8, 0x88 ; 0046BE: provisional 68k dc.w $f888
db 0xBC, 0xB9, 0xDD, 0xDD, 0xDD, 0xDD ; 0046C0: provisional 68k cmp.l $dddddddd.l, d6
db 0xDD, 0xDB ; 0046C6: provisional 68k adda.l (a3)+, a6
db 0xFF, 0xFF ; 0046C8: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0xF8 ; 0046CA: provisional 68k movep.w -$7408(a4), d3
db 0x88, 0x88 ; file 0046CE
db 0x88, 0xEB, 0xB9, 0x99 ; 0046D0: provisional 68k divu.w -$4667(a3), d4
db 0x9D, 0xDD ; 0046D4: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 0046D6: provisional 68k adda.l (a5)+, a6
db 0x9F, 0xFF ; file 0046D8
db 0xFF, 0x07 ; 0046DA: provisional 68k dc.w $ff07
db 0x0C, 0x8B ; file 0046DC
db 0xFF, 0x8F ; 0046DE: provisional 68k dc.w $ff8f
db 0xCF, 0x88 ; 0046E0: provisional 68k exg.l d7, a0
db 0x8F, 0x8C ; 0046E2: provisional 68k dc.w $8f8c
db 0xBB, 0xC9 ; 0046E4: provisional 68k cmpa.l a1, a5
db 0x99, 0x99 ; 0046E6: provisional 68k sub.l d4, (a1)+
db 0x99, 0xC1 ; 0046E8: provisional 68k suba.l d1, a4
db 0xFF, 0xFF ; 0046EA: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0xFF ; 0046EC: provisional 68k movep.w -$7401(a4), d3
db 0xFB, 0x99 ; 0046F0: provisional 68k dc.w $fb99
db 0xF8, 0x88 ; 0046F2: provisional 68k dc.w $f888
db 0x88, 0xFF ; file 0046F4
db 0xBB, 0xEE, 0xEE, 0xBB ; 0046F6: provisional 68k cmpa.l -$1145(a6), a5
db 0x88, 0xFF ; file 0046FA
db 0xFF, 0x07 ; 0046FC: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 0046FE: provisional 68k btst.l d5, (a3)+
db 0xBF, 0xB9, 0xDD, 0xD9, 0xB8, 0x88 ; 004700: provisional 68k eor.l d7, $ddd9b888.l
db 0x88, 0xAC, 0xFB, 0x9B ; 004706: provisional 68k or.l -$465(a4), d4
db 0xCC, 0xFF ; file 00470A
db 0xFF, 0x07 ; 00470C: provisional 68k dc.w $ff07
db 0x0C, 0x1B, 0xBF, 0xFC ; 00470E: provisional 68k cmpi.b #$fc, (a3)+
db 0x9D, 0xDD ; 004712: provisional 68k suba.l (a5)+, a6
db 0xDC, 0x88 ; 004714: provisional 68k add.l a0, d6
db 0x88, 0x88, 0x8F, 0xCF ; file 004716
db 0x8F, 0xC1 ; 00471A: provisional 68k divs.w d1, d7
db 0xFF, 0xFF ; 00471C: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0xBB, 0xFF ; file 00471E
db 0xB9, 0xDD ; 004722: provisional 68k cmpa.l (a5)+, a4
db 0xDD, 0xD9 ; 004724: provisional 68k adda.l (a1)+, a6
db 0xF8, 0xF8 ; 004726: provisional 68k dc.w $f8f8
db 0x88, 0xFF ; file 004728
db 0x88, 0xF1, 0xFF, 0xFF, 0x08, 0x0B, 0x1B, 0xBF ; 00472A: provisional 68k divu.w ([$80b1bbf]), d4
db 0xFB, 0x9D ; 004732: provisional 68k dc.w $fb9d
db 0xDD, 0xDD ; 004734: provisional 68k adda.l (a5)+, a6
db 0xD9, 0xC8 ; 004736: provisional 68k adda.l a0, a4
db 0x88, 0x8F ; file 004738
db 0xF8, 0x88 ; 00473A: provisional 68k dc.w $f888
db 0xFF, 0xFF ; 00473C: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xBB, 0xCF ; 00473E: provisional 68k movep.w -$4431(a2), d4
db 0xF9, 0x99 ; 004742: provisional 68k dc.w $f999
db 0xDD, 0xD9 ; 004744: provisional 68k adda.l (a1)+, a6
db 0xBB, 0xBC ; file 004746
db 0xFF, 0xCF ; 004748: provisional 68k dc.w $ffcf
db 0x88, 0xFF ; file 00474A
db 0xFF, 0x09 ; 00474C: provisional 68k dc.w $ff09
db 0x0A, 0x1F, 0xCB, 0xFC ; 00474E: provisional 68k eori.b #$fc, (a7)+
db 0xFB, 0x99 ; 004752: provisional 68k dc.w $fb99
db 0xB9, 0xB9, 0xBB, 0xB9, 0xBB, 0x88 ; 004754: provisional 68k eor.l d4, $bbb9bb88.l
db 0xFF, 0xFF ; 00475A: provisional 68k dc.w $ffff
db 0x0A, 0x08, 0x8B, 0xBF ; file 00475C
db 0xFF, 0xCC ; 004760: provisional 68k dc.w $ffcc
db 0xCB, 0xBB ; file 004762
db 0x99, 0x99 ; 004764: provisional 68k sub.l d4, (a1)+
db 0x9B, 0xFF ; file 004766
db 0xFF, 0x0B ; 004768: provisional 68k dc.w $ff0b
db 0x07, 0xBC, 0xBC, 0xFF ; file 00476A
db 0xFC, 0xBB ; 00476E: provisional 68k dc.w $fcbb
db 0xDD, 0xDD ; 004770: provisional 68k adda.l (a5)+, a6
db 0x9B, 0xFF ; file 004772
db 0xFF, 0x0C ; 004774: provisional 68k dc.w $ff0c
db 0x06, 0xBB, 0xBC, 0xFF ; file 004776
db 0xFB, 0x99 ; 00477A: provisional 68k dc.w $fb99
db 0x99, 0x91 ; 00477C: provisional 68k sub.l d4, (a1)
db 0xFF, 0xFF ; 00477E: provisional 68k dc.w $ffff
db 0x0D, 0x04 ; 004780: provisional 68k btst.l d6, d4
db 0xCB, 0xBB, 0xC8, 0xFF ; file 004782
db 0xF8, 0xFF ; 004786: provisional 68k dc.w $f8ff
db 0xFF, 0x0D ; 004788: provisional 68k dc.w $ff0d
db 0x04, 0x88 ; file 00478A
db 0xFE, 0xBF ; 00478C: provisional 68k dc.w $febf
db 0xFC, 0xF1 ; 00478E: provisional 68k dc.w $fcf1
db 0xFF, 0xFF ; 004790: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004792: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004794: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 004796: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 00479A: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0047A0
db 0x10, 0x10 ; 0047A4: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0047A6: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0047A8: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0047AA: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0047AC: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0047B0: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0047B4: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0047B6: provisional 68k neg.w d4
db 0x20, 0x18 ; 0047B8: provisional 68k move.l (a0)+, d0
db 0x14, 0x80 ; 0047BA: provisional 68k move.b d0, (a2)
db 0x64, 0x50 ; 0047BC: provisional 68k bcc.b $480e
db 0x00, 0x34, 0x68, 0x48, 0x44, 0x44 ; 0047BE: provisional 68k ori.b #$48, $44(a4, d4.w)
db 0x44, 0x40 ; 0047C4: provisional 68k neg.w d0
db 0x38, 0xC0 ; 0047C6: provisional 68k move.w d0, (a4)+
db 0x98, 0x7C, 0x3C, 0x48 ; 0047C8: provisional 68k sub.w #$3c48, d4
db 0x6C, 0x38 ; 0047CC: provisional 68k bge.b $4806
db 0x30, 0x28, 0xFF, 0xFF ; 0047CE: provisional 68k move.w -$1(a0), d0
db 0xFF, 0xFF ; 0047D2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0047D4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0047D6: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 0047D8: provisional 68k btst.l d5, d1
db 0xFB, 0xCF ; 0047DA: provisional 68k dc.w $fbcf
db 0xFF, 0xFF ; 0047DC: provisional 68k dc.w $ffff
db 0x07, 0x08, 0x1F, 0xFF ; 0047DE: provisional 68k movep.w $1fff(a0), d3
db 0xFB, 0x99 ; 0047E2: provisional 68k dc.w $fb99
db 0x99, 0x99 ; 0047E4: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9B ; 0047E6: provisional 68k sub.l d4, (a3)+
db 0xC8, 0xFF ; file 0047E8
db 0xFF, 0x06 ; 0047EA: provisional 68k dc.w $ff06
db 0x0A, 0x88 ; file 0047EC
db 0xC9, 0x99 ; 0047EE: provisional 68k and.l d4, (a1)+
db 0xDD, 0xDD ; 0047F0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0047F2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 0047F4: provisional 68k adda.l (a1)+, a6
db 0x99, 0xBF ; file 0047F6
db 0xFF, 0xFF ; 0047F8: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0x88, 0xC9 ; 0047FA: provisional 68k movep.w -$7737(a4), d2
db 0xDD, 0xDD ; 0047FE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004800: provisional 68k adda.l (a5)+, a6
db 0x9D, 0xDD ; 004802: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 004804: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004806: provisional 68k adda.l (a5)+, a6
db 0xC1, 0xFF ; file 004808
db 0xFF, 0x05 ; 00480A: provisional 68k dc.w $ff05
db 0x0C, 0xC9 ; file 00480C
db 0xDD, 0xDD ; 00480E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004810: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004812: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004814: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004816: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 004818: provisional 68k adda.l (a3)+, a6
db 0xFF, 0xFF ; 00481A: provisional 68k dc.w $ffff
db 0x04, 0x0E ; file 00481C
db 0x19, 0x9D, 0xDD, 0x99 ; 00481E: provisional 68k move.b (a5)+, ([, a5.l * 4])
db 0xDD, 0xDD ; 004822: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004824: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004826: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004828: provisional 68k adda.l (a5)+, a6
db 0x9D, 0xDD ; 00482A: provisional 68k suba.l (a5)+, a6
db 0x91, 0xFF ; file 00482C
db 0xFF, 0x04 ; 00482E: provisional 68k dc.w $ff04
db 0x0E, 0xB9 ; file 004830
db 0x9D, 0xDD ; 004832: provisional 68k suba.l (a5)+, a6
db 0xD9, 0x9D ; 004834: provisional 68k add.l d4, (a5)+
db 0xDD, 0xDD ; 004836: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004838: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00483A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00483C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x9C ; 00483E: provisional 68k add.l d6, (a4)+
db 0xFF, 0xFF ; 004840: provisional 68k dc.w $ffff
db 0x03, 0x0F, 0x1B, 0x99 ; 004842: provisional 68k movep.w $1b99(a7), d1
db 0x99, 0xDD ; 004846: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x9D ; 004848: provisional 68k add.l d6, (a5)+
db 0xDD, 0xDD ; 00484A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00484C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00484E: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9D ; 004850: provisional 68k add.l d4, (a5)+
db 0xD9, 0xD9 ; 004852: provisional 68k adda.l (a1)+, a4
db 0xFF, 0xFF ; 004854: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 004856: provisional 68k btst.l d1, (a0)
db 0xFB, 0x8C ; 004858: provisional 68k dc.w $fb8c
db 0x99, 0x99 ; 00485A: provisional 68k sub.l d4, (a1)+
db 0xD9, 0x99 ; 00485C: provisional 68k add.l d4, (a1)+
db 0x9D, 0xDD ; 00485E: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 004860: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004862: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9D ; 004864: provisional 68k add.l d4, (a5)+
db 0xDD, 0xD9 ; 004866: provisional 68k adda.l (a1)+, a6
db 0xF1, 0xFF ; 004868: provisional 68k dc.w $f1ff
db 0xFF, 0x02 ; 00486A: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 00486C
db 0xFC, 0xCF ; 00486E: provisional 68k dc.w $fccf
db 0x99, 0xB9, 0x99, 0x99, 0x99, 0x9D ; 004870: provisional 68k sub.l d4, $9999999d.l
db 0xDD, 0xDD ; 004876: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004878: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00487A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 00487C: provisional 68k adda.l (a1)+, a6
db 0xC1, 0xFF ; file 00487E
db 0xFF, 0x02 ; 004880: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 004882
db 0xFC, 0x9B ; 004884: provisional 68k dc.w $fc9b
db 0x99, 0xB9, 0x99, 0x9D, 0x9B, 0xB9 ; 004886: provisional 68k sub.l d4, $999d9bb9.l
db 0xDD, 0xDD ; 00488C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 00488E: provisional 68k adda.l (a1)+, a6
db 0xDD, 0xDD ; 004890: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 004892: provisional 68k adda.l (a1)+, a6
db 0xC1, 0xFF ; file 004894
db 0xFF, 0x02 ; 004896: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 004898
db 0xCF, 0xFC, 0x9B, 0xC9 ; 00489A: provisional 68k muls.w #$9bc9, d7
db 0x99, 0x99 ; 00489E: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0048A0: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xDD ; 0048A2: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 0048A4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 0048A6: provisional 68k adda.l (a1)+, a6
db 0x9D, 0xD9 ; 0048A8: provisional 68k suba.l (a1)+, a6
db 0xB1, 0xFF ; file 0048AA
db 0xFF, 0x02 ; 0048AC: provisional 68k dc.w $ff02
db 0x13, 0x88 ; file 0048AE
db 0xCF, 0x88 ; 0048B0: provisional 68k exg.l d7, a0
db 0x9B, 0xC9 ; 0048B2: provisional 68k suba.l a1, a5
db 0x99, 0xBB ; file 0048B4
db 0xFB, 0x99 ; 0048B6: provisional 68k dc.w $fb99
db 0x99, 0x9C ; 0048B8: provisional 68k sub.l d4, (a4)+
db 0x9D, 0xDD ; 0048BA: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD9 ; 0048BC: provisional 68k adda.l (a1)+, a6
db 0x99, 0x9B ; 0048BE: provisional 68k sub.l d4, (a3)+
db 0xBB, 0x88 ; 0048C0: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0xFF ; file 0048C2
db 0xFF, 0x02 ; 0048C4: provisional 68k dc.w $ff02
db 0x13, 0x88 ; file 0048C6
db 0xFF, 0x8B ; 0048C8: provisional 68k dc.w $ff8b
db 0x8F, 0xBB ; file 0048CA
db 0xCB, 0xB9, 0xB9, 0x99, 0xDD, 0xD9 ; 0048CC: provisional 68k and.l d5, $b999ddd9.l
db 0xBD, 0xDD ; 0048D2: provisional 68k cmpa.l (a5)+, a6
db 0x99, 0x9D ; 0048D4: provisional 68k sub.l d4, (a5)+
db 0xDD, 0x9B ; 0048D6: provisional 68k add.l d6, (a3)+
db 0xB9, 0x99 ; 0048D8: provisional 68k eor.l d4, (a1)+
db 0xDB, 0xFF ; file 0048DA
db 0xFF, 0x02 ; 0048DC: provisional 68k dc.w $ff02
db 0x13, 0x88 ; file 0048DE
db 0x88, 0xFB, 0xFF, 0xCB, 0xFF, 0xCF, 0xB9, 0x99 ; 0048E0: provisional 68k divu.w ([$48e2], $ffcfb999), d4
db 0x99, 0x99 ; 0048E8: provisional 68k sub.l d4, (a1)+
db 0xDD, 0x9D ; 0048EA: provisional 68k add.l d6, (a5)+
db 0xDD, 0x99 ; 0048EC: provisional 68k add.l d6, (a1)+
db 0x9D, 0xD9 ; 0048EE: provisional 68k suba.l (a1)+, a6
db 0x9D, 0xDD ; 0048F0: provisional 68k suba.l (a5)+, a6
db 0x9C, 0xFF ; file 0048F2
db 0xFF, 0x01 ; 0048F4: provisional 68k dc.w $ff01
db 0x14, 0x8E, 0xC8, 0x88 ; file 0048F6
db 0xFF, 0xFC ; 0048FA: provisional 68k dc.w $fffc
db 0xCF, 0xFB, 0x99, 0x88 ; 0048FC: provisional 68k muls.w (a1.l), d7
db 0xB9, 0x99 ; 004900: provisional 68k eor.l d4, (a1)+
db 0x9D, 0xD9 ; 004902: provisional 68k suba.l (a1)+, a6
db 0x99, 0xDD ; 004904: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 004906: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 004908: provisional 68k adda.l (a1)+, a6
db 0x9B, 0xBF ; file 00490A
db 0xFF, 0xFF ; 00490C: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0x8B ; 00490E: provisional 68k ori.b #$8b, (a5)
db 0xF8, 0x88 ; 004912: provisional 68k dc.w $f888
db 0x88, 0xFC, 0xFF, 0x8C ; 004914: provisional 68k divu.w #$ff8c, d4
db 0xBB, 0x88 ; 004918: provisional 68k cmpm.l (a0)+, (a5)+
db 0x8F, 0x99 ; 00491A: provisional 68k or.l d7, (a1)+
db 0xDD, 0xDD ; 00491C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00491E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004920: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 004922: provisional 68k add.l d6, (a1)+
db 0x9F, 0xCF ; 004924: provisional 68k suba.l a7, a7
db 0xFF, 0xFF ; 004926: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0x88 ; 004928: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00492C
db 0x88, 0x99 ; 004934: provisional 68k or.l (a1)+, d4
db 0xDD, 0xDD ; 004936: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004938: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x99 ; 00493A: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 00493C: provisional 68k sub.l d4, (a1)+
db 0xC8, 0x8F ; file 00493E
db 0xFF, 0xFF ; 004940: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8F, 0x88 ; 004942: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004946
db 0x88, 0xB9, 0x99, 0xDD, 0xDD, 0xD9 ; 00494E: provisional 68k or.l $99ddddd9.l, d4
db 0x99, 0x9C ; 004954: provisional 68k sub.l d4, (a4)+
db 0xB9, 0x9C ; 004956: provisional 68k eor.l d4, (a4)+
db 0xF8, 0xCF ; 004958: provisional 68k dc.w $f8cf
db 0xFF, 0xFF ; 00495A: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1F, 0xC8 ; 00495C: provisional 68k ori.b #$c8, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x89 ; file 004960
db 0x99, 0xDD ; 00496A: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x99 ; 00496C: provisional 68k add.l d6, (a1)+
db 0xCC, 0xCC ; file 00496E
db 0x9B, 0xC8 ; 004970: provisional 68k suba.l a0, a5
db 0x8E, 0xDE ; 004972: provisional 68k divu.w (a6)+, d7
db 0xFF, 0xFF ; 004974: provisional 68k dc.w $ffff
db 0x00, 0x16, 0x88, 0x8C ; 004976: provisional 68k ori.b #$8c, (a6)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00497A
db 0x88, 0xFB, 0x99, 0xDD ; 004982: provisional 68k divu.w ([$4984]), d4
db 0xD9, 0x9C ; 004986: provisional 68k add.l d4, (a4)+
db 0xFF, 0xFF ; 004988: provisional 68k dc.w $ffff
db 0xCC, 0x8A ; file 00498A
db 0x8E, 0xDD ; 00498C: provisional 68k divu.w (a5)+, d7
db 0xEE, 0xFF ; file 00498E
db 0xFF, 0x01 ; 004990: provisional 68k dc.w $ff01
db 0x15, 0xFF ; file 004992
db 0xFF, 0x88 ; 004994: provisional 68k dc.w $ff88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004996
db 0xFF, 0x99 ; 00499C: provisional 68k dc.w $ff99
db 0x99, 0xD9 ; 00499E: provisional 68k suba.l (a1)+, a4
db 0xDD, 0xEE, 0xFF, 0x8F ; 0049A0: provisional 68k adda.l -$71(a6), a6
db 0xCF, 0x88 ; 0049A4: provisional 68k exg.l d7, a0
db 0x8A, 0xDD ; 0049A6: provisional 68k divu.w (a5)+, d5
db 0xFF, 0xFF ; 0049A8: provisional 68k dc.w $ffff
db 0xFF, 0x01 ; 0049AA: provisional 68k dc.w $ff01
db 0x14, 0xFF ; file 0049AC
db 0xFF, 0x88 ; 0049AE: provisional 68k dc.w $ff88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 0049B0
db 0xFF, 0x99 ; 0049B6: provisional 68k dc.w $ff99
db 0x99, 0xFE, 0xEE, 0xDD, 0xC8, 0xC9 ; file 0049B8
db 0x99, 0x88 ; 0049BE: provisional 68k subx.l -(a0), -(a4)
db 0x8A, 0xEE, 0xFF, 0xFF ; 0049C0: provisional 68k divu.w -$1(a6), d5
db 0x01, 0x14 ; 0049C4: provisional 68k btst.l d0, (a4)
db 0x8C, 0xCF, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0049C6
db 0x8F, 0xFC, 0x99, 0x98 ; 0049CE: provisional 68k divs.w #$9998, d7
db 0x88, 0xCA ; file 0049D2
db 0xED, 0xBC ; 0049D4: provisional 68k rol.l d6, d4
db 0xDD, 0xD9 ; 0049D6: provisional 68k adda.l (a1)+, a6
db 0x88, 0xAA, 0xEF, 0xFF ; 0049D8: provisional 68k or.l -$1001(a2), d4
db 0xFF, 0x01 ; 0049DC: provisional 68k dc.w $ff01
db 0x14, 0x1B ; 0049DE: provisional 68k move.b (a3)+, d2
db 0xCF, 0x88 ; 0049E0: provisional 68k exg.l d7, a0
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 0049E2
db 0xFB, 0x99 ; 0049E8: provisional 68k dc.w $fb99
db 0xC8, 0x88 ; file 0049EA
db 0x8A, 0xA9, 0x9D, 0xDD ; 0049EC: provisional 68k or.l -$6223(a1), d5
db 0xDD, 0x98 ; 0049F0: provisional 68k add.l d6, (a0)+
db 0xAA, 0xF1 ; 0049F2: provisional 68k dc.w $aaf1
db 0xFF, 0xFF ; 0049F4: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xFF, 0xF8 ; 0049F6: provisional 68k andi.b #$f8, (a3)
db 0x88, 0x8B ; file 0049FA
db 0x88, 0xF8, 0xF8, 0x8F ; 0049FC: provisional 68k divu.w $f88f.w, d4
db 0xFB, 0x99 ; 004A00: provisional 68k dc.w $fb99
db 0xB8, 0x8A ; 004A02: provisional 68k cmp.l a2, d4
db 0xAA, 0xAF ; 004A04: provisional 68k dc.w $aaaf
db 0x9D, 0xDD ; 004A06: provisional 68k suba.l (a5)+, a6
db 0xD9, 0x98 ; 004A08: provisional 68k add.l d4, (a0)+
db 0x88, 0x88 ; file 004A0A
db 0xFF, 0xFF ; 004A0C: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xFC, 0xF8 ; 004A0E: provisional 68k andi.b #$f8, (a3)
db 0x88, 0x89 ; file 004A12
db 0x9B, 0x8F ; 004A14: provisional 68k subx.l -(a7), -(a5)
db 0xFF, 0xFF ; 004A16: provisional 68k dc.w $ffff
db 0xC9, 0xDD ; 004A18: provisional 68k muls.w (a5)+, d4
db 0x9C, 0xEA, 0xAA, 0x88 ; 004A1A: provisional 68k suba.w -$5578(a2), a6
db 0x9D, 0xDD ; 004A1E: provisional 68k suba.l (a5)+, a6
db 0x9C, 0xFB, 0xCF, 0x88 ; 004A20: provisional 68k suba.w (a4.l * 8), a6
db 0xFF, 0xFF ; 004A24: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1B, 0xCF ; 004A26: provisional 68k andi.b #$cf, (a3)
db 0xFF, 0xCC ; 004A2A: provisional 68k dc.w $ffcc
db 0xDD, 0x8F ; 004A2C: provisional 68k addx.l -(a7), -(a6)
db 0xFC, 0xCF ; 004A2E: provisional 68k dc.w $fccf
db 0xBD, 0xDD ; 004A30: provisional 68k cmpa.l (a5)+, a6
db 0x9F, 0xE8, 0x8F, 0xF8 ; 004A32: provisional 68k suba.l -$7008(a0), a7
db 0xDD, 0xDC ; 004A36: provisional 68k adda.l (a4)+, a6
db 0x8F, 0x8B ; 004A38: provisional 68k dc.w $8f8b
db 0xC8, 0x88 ; file 004A3A
db 0xFF, 0xFF ; 004A3C: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 004A3E: provisional 68k btst.l d1, (a2)
db 0xBF, 0xFF ; file 004A40
db 0xFF, 0x9D ; 004A42: provisional 68k dc.w $ff9d
db 0x9B, 0x9B ; 004A44: provisional 68k sub.l d5, (a3)+
db 0xB9, 0x9D ; 004A46: provisional 68k eor.l d4, (a5)+
db 0xDD, 0xD9 ; 004A48: provisional 68k adda.l (a1)+, a6
db 0x88, 0x88 ; file 004A4A
db 0x8D, 0xD9 ; 004A4C: provisional 68k divs.w (a1)+, d6
db 0xF8, 0xF8 ; 004A4E: provisional 68k dc.w $f8f8
db 0x8F, 0xF8, 0xF1, 0xFF ; 004A50: provisional 68k divs.w $f1ff.w, d7
db 0xFF, 0x03 ; 004A54: provisional 68k dc.w $ff03
db 0x12, 0xBC, 0xFF, 0xFF ; 004A56: provisional 68k move.b #$ff, (a1)
db 0xFC, 0xCF ; 004A5A: provisional 68k dc.w $fccf
db 0xFB, 0xDD ; 004A5C: provisional 68k dc.w $fbdd
db 0xDD, 0x99 ; 004A5E: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 004A60: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 004A62: provisional 68k sub.l d4, (a5)+
db 0xC8, 0x88, 0x88, 0x88 ; file 004A64
db 0x8F, 0x88 ; 004A68: provisional 68k dc.w $8f88
db 0xFF, 0xFF ; 004A6A: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 004A6C: provisional 68k btst.l d1, (a1)
db 0x1B, 0xCF ; file 004A6E
db 0xCB, 0x8F ; 004A70: provisional 68k exg.l d5, a7
db 0x9C, 0xFC, 0xB9, 0x99 ; 004A72: provisional 68k suba.w #$b999, a6
db 0x99, 0x99 ; 004A76: provisional 68k sub.l d4, (a1)+
db 0xD9, 0xBC ; file 004A78
db 0x99, 0xB8, 0x88, 0x88 ; 004A7A: provisional 68k sub.l d4, $8888.w
db 0x88, 0x88 ; file 004A7E
db 0xFF, 0xFF ; 004A80: provisional 68k dc.w $ffff
db 0x04, 0x0F, 0xBB, 0xBF ; file 004A82
db 0x8B, 0x9B ; 004A86: provisional 68k or.l d5, (a3)+
db 0xFC, 0xFF ; 004A88: provisional 68k dc.w $fcff
db 0xCF, 0xFF ; file 004A8A
db 0xFF, 0xCC ; 004A8C: provisional 68k dc.w $ffcc
db 0x88, 0xFF, 0xC8, 0x88, 0x88, 0x8F ; file 004A8E
db 0xFF, 0xFF ; 004A94: provisional 68k dc.w $ffff
db 0x05, 0x0E, 0xC1, 0x1F ; 004A96: provisional 68k movep.w -$3ee1(a6), d2
db 0xB9, 0x9C ; 004A9A: provisional 68k eor.l d4, (a4)+
db 0xCC, 0xFF ; file 004A9C
db 0xFF, 0xF8 ; 004A9E: provisional 68k dc.w $fff8
db 0x88, 0x8F ; file 004AA0
db 0xFC, 0xC8 ; 004AA2: provisional 68k dc.w $fcc8
db 0x88, 0x88, 0xB8, 0xFF ; file 004AA4
db 0xFF, 0x06 ; 004AA8: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xC9, 0x9F ; 004AAA: provisional 68k movep.w d6, -$3661(a0)
db 0xFC, 0xCF ; 004AAE: provisional 68k dc.w $fccf
db 0xCB, 0xBC ; file 004AB0
db 0x88, 0xF9, 0x9D, 0xDB, 0x88, 0xF9 ; 004AB2: provisional 68k divu.w $9ddb88f9.l, d4
db 0xD8, 0xFF ; file 004AB8
db 0xFF, 0x07 ; 004ABA: provisional 68k dc.w $ff07
db 0x0C, 0xFF, 0xC8, 0x88, 0x88, 0x8B ; file 004ABC
db 0xBF, 0x88 ; 004AC2: provisional 68k cmpm.l (a0)+, (a7)+
db 0xFD, 0xDD ; 004AC4: provisional 68k dc.w $fddd
db 0xDD, 0x9D ; 004AC6: provisional 68k add.l d6, (a5)+
db 0xDD, 0x9B ; 004AC8: provisional 68k add.l d6, (a3)+
db 0xFF, 0xFF ; 004ACA: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0xC8, 0x88 ; 004ACC: provisional 68k movep.w -$3778(a4), d3
db 0x88, 0x88, 0x8B, 0xFF, 0x88, 0xBD ; file 004AD0
db 0xDD, 0xDD ; 004AD6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 004AD8: provisional 68k adda.l (a1)+, a6
db 0x9B, 0xFF ; file 004ADA
db 0xFF, 0x07 ; 004ADC: provisional 68k dc.w $ff07
db 0x0C, 0x88, 0x88, 0x88 ; file 004ADE
db 0xF8, 0x8B ; 004AE2: provisional 68k dc.w $f88b
db 0xCF, 0xFB, 0xDD, 0xDD ; 004AE4: provisional 68k muls.w ([$4ae6]), d7
db 0xDD, 0xDD ; 004AE8: provisional 68k adda.l (a5)+, a6
db 0x99, 0xDC ; 004AEA: provisional 68k suba.l (a4)+, a4
db 0xFF, 0xFF ; 004AEC: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8F, 0x88 ; 004AEE: provisional 68k movep.w -$7078(a4), d3
db 0x88, 0x88 ; file 004AF2
db 0x88, 0xBC, 0xC9, 0xDD, 0xDD, 0xDD ; 004AF4: provisional 68k or.l #$c9dddddd, d4
db 0xDD, 0xDD ; 004AFA: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xFF ; file 004AFC
db 0xFF, 0x07 ; 004AFE: provisional 68k dc.w $ff07
db 0x0C, 0x8B ; file 004B00
db 0xF8, 0x88 ; 004B02: provisional 68k dc.w $f888
db 0x88, 0x88 ; file 004B04
db 0xBB, 0xB9, 0x99, 0x9D, 0xDD, 0xDD ; 004B06: provisional 68k eor.l d5, $999ddddd.l
db 0xDD, 0x9F ; 004B0C: provisional 68k add.l d6, (a7)+
db 0xFF, 0xFF ; 004B0E: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0xFF ; 004B10: provisional 68k movep.w -$7401(a4), d3
db 0x8F, 0xFF, 0x88, 0x8F ; file 004B14
db 0x8C, 0xBC, 0xC9, 0x99, 0x99, 0x99 ; 004B18: provisional 68k or.l #$c9999999, d6
db 0xC1, 0xFF ; file 004B1E
db 0xFF, 0x07 ; 004B20: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 004B22: provisional 68k btst.l d5, (a3)+
db 0xFF, 0xFB ; 004B24: provisional 68k dc.w $fffb
db 0x99, 0xF8, 0x88, 0x88 ; 004B26: provisional 68k suba.l $8888.w, a4
db 0xFF, 0xBB ; 004B2A: provisional 68k dc.w $ffbb
db 0xEE, 0xEB, 0xBB, 0xFF ; file 004B2C
db 0xFF, 0x07 ; 004B30: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 004B32: provisional 68k btst.l d5, (a3)+
db 0xBF, 0xC9 ; 004B34: provisional 68k cmpa.l a1, a7
db 0xDD, 0xD9 ; 004B36: provisional 68k adda.l (a1)+, a6
db 0xC8, 0x88 ; file 004B38
db 0x88, 0xAC, 0xFC, 0x9C ; 004B3A: provisional 68k or.l -$364(a4), d4
db 0xCF, 0xFF ; file 004B3E
db 0xFF, 0x07 ; 004B40: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 004B42: provisional 68k btst.l d5, (a3)+
db 0xBF, 0xFC, 0x9D, 0xDD, 0xDC, 0x88 ; 004B44: provisional 68k cmpa.l #$9ddddc88, a7
db 0x88, 0x88, 0x88, 0xCF, 0x8F, 0xFF ; file 004B4A
db 0xFF, 0x08 ; 004B50: provisional 68k dc.w $ff08
db 0x0B, 0xBB ; file 004B52
db 0xFF, 0xB9 ; 004B54: provisional 68k dc.w $ffb9
db 0xDD, 0xDD ; 004B56: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x88 ; 004B58: provisional 68k addx.l -(a0), -(a4)
db 0xF8, 0x88 ; 004B5A: provisional 68k dc.w $f888
db 0x8F, 0x88 ; 004B5C: provisional 68k dc.w $8f88
db 0xF1, 0xFF ; 004B5E: provisional 68k dc.w $f1ff
db 0xFF, 0x08 ; 004B60: provisional 68k dc.w $ff08
db 0x0B, 0x1B ; 004B62: provisional 68k btst.l d5, (a3)+
db 0xBF, 0xFB, 0x9D, 0xDD ; 004B64: provisional 68k cmpa.l ([$4b66]), a7
db 0xDD, 0xD9 ; 004B68: provisional 68k adda.l (a1)+, a6
db 0xF8, 0x88 ; 004B6A: provisional 68k dc.w $f888
db 0x8F, 0xF8, 0x88, 0xFF ; 004B6C: provisional 68k divs.w $88ff.w, d7
db 0xFF, 0x09 ; 004B70: provisional 68k dc.w $ff09
db 0x0A, 0xBB ; file 004B72
db 0xCF, 0xF9, 0x99, 0xDD, 0xD9, 0xBB ; 004B74: provisional 68k muls.w $99ddd9bb.l, d7
db 0xCF, 0xFF ; file 004B7A
db 0xF8, 0x88 ; 004B7C: provisional 68k dc.w $f888
db 0xFF, 0xFF ; 004B7E: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0x1F, 0xCB ; 004B80: provisional 68k movep.w $1fcb(a2), d4
db 0xFC, 0xFB ; 004B84: provisional 68k dc.w $fcfb
db 0x99, 0xB9, 0xB9, 0xBB, 0xB9, 0xBC ; 004B86: provisional 68k sub.l d4, $b9bbb9bc.l
db 0x88, 0xFF ; file 004B8C
db 0xFF, 0x0A ; 004B8E: provisional 68k dc.w $ff0a
db 0x08, 0x1C, 0xBF, 0xFF ; file 004B90
db 0xCF, 0xFB, 0xBB, 0x99 ; 004B94: provisional 68k muls.w ([$4b96, a3.l * 2]), d7
db 0x99, 0x99 ; 004B98: provisional 68k sub.l d4, (a1)+
db 0xFF, 0xFF ; 004B9A: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 004B9C: provisional 68k btst.l d5, d7
db 0xCC, 0xBC, 0xFF, 0xFC, 0xBB, 0xDD ; 004B9E: provisional 68k and.l #$fffcbbdd, d6
db 0xDD, 0x9B ; 004BA4: provisional 68k add.l d6, (a3)+
db 0xFF, 0xFF ; 004BA6: provisional 68k dc.w $ffff
db 0x0C, 0x06, 0xCB, 0xBC ; 004BA8: provisional 68k cmpi.b #$bc, d6
db 0xFF, 0xFB ; 004BAC: provisional 68k dc.w $fffb
db 0x99, 0x99 ; 004BAE: provisional 68k sub.l d4, (a1)+
db 0x91, 0xFF ; file 004BB0
db 0xFF, 0x0D ; 004BB2: provisional 68k dc.w $ff0d
db 0x04, 0xCB ; file 004BB4
db 0xBC, 0xC8 ; 004BB6: provisional 68k cmpa.w a0, a6
db 0xFF, 0x88 ; 004BB8: provisional 68k dc.w $ff88
db 0xFF, 0xFF ; 004BBA: provisional 68k dc.w $ffff
db 0x0E, 0x03, 0x8E, 0xBF ; file 004BBC
db 0xFC, 0xF1 ; 004BC0: provisional 68k dc.w $fcf1
db 0xFF, 0xFF ; 004BC2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004BC4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004BC6: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 004BC8: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 004BCC: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 004BD2
db 0x10, 0x10 ; 004BD6: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 004BD8: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 004BDA: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 004BDC: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 004BDE: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 004BE2: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 004BE6: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 004BE8: provisional 68k neg.w d4
db 0x24, 0x1C ; 004BEA: provisional 68k move.l (a4)+, d2
db 0x14, 0xD0 ; 004BEC: provisional 68k move.b (a0), (a2)+
db 0xA8, 0x88 ; 004BEE: provisional 68k dc.w $a888
db 0x74, 0x5C ; 004BF0: provisional 68k moveq #$5c, d2
db 0x4C, 0x44 ; file 004BF2
db 0x38, 0x38, 0x00, 0x24 ; 004BF4: provisional 68k move.w $24.w, d4
db 0x40, 0x00 ; 004BF8: provisional 68k negx.b d0
db 0x48, 0x84 ; 004BFA: provisional 68k ext.w d4
db 0xB8, 0x80 ; 004BFC: provisional 68k cmp.l d0, d4
db 0x6C, 0x90 ; 004BFE: provisional 68k bge.b $4b90
db 0x7C, 0x6C ; 004C00: provisional 68k moveq #$6c, d6
db 0xFF, 0xFF ; 004C02: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004C04: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004C06: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0xBB, 0xAB ; 004C08: provisional 68k eori.b #$ab, d4
db 0xBA, 0xBB, 0xB1, 0xFF, 0xFF, 0x07, 0x08, 0x1A ; 004C0C: provisional 68k cmp.l ([$ff075428]), d5
db 0xAA, 0xAA ; 004C14: provisional 68k dc.w $aaaa
db 0xFE, 0xFF ; 004C16: provisional 68k dc.w $feff
db 0xEF, 0xFF ; file 004C18
db 0xFF, 0xAB ; 004C1A: provisional 68k dc.w $ffab
db 0xFF, 0xFF ; 004C1C: provisional 68k dc.w $ffff
db 0x06, 0x0A ; file 004C1E
db 0x1A, 0xAF, 0xFE, 0xEE ; 004C20: provisional 68k move.b -$112(a7), (a5)
db 0xEE, 0x9E ; 004C24: provisional 68k ror.l #$7, d6
db 0xEE, 0xEE, 0xEE, 0xEF ; file 004C26
db 0xAB, 0xFF ; 004C2A: provisional 68k dc.w $abff
db 0xFF, 0x05 ; 004C2C: provisional 68k dc.w $ff05
db 0x0C, 0x1A, 0xFE, 0xEE ; 004C2E: provisional 68k cmpi.b #$ee, (a2)+
db 0xE9, 0xEE, 0xEE, 0xE9 ; file 004C32
db 0xEE, 0x99 ; 004C36: provisional 68k ror.l #$7, d1
db 0x9E, 0xEE, 0x9E, 0xA8 ; 004C38: provisional 68k suba.w -$6158(a6), a7
db 0xFF, 0xFF ; 004C3C: provisional 68k dc.w $ffff
db 0x04, 0x0E, 0x1B, 0xFF, 0xEE, 0xE9 ; file 004C3E
db 0x9E, 0xE9, 0x9E, 0xEE ; 004C44: provisional 68k suba.w -$6112(a1), a7
db 0xE9, 0xEE ; file 004C48
db 0xE9, 0x9E ; 004C4A: provisional 68k rol.l #$4, d6
db 0xEE, 0xEF, 0xB1, 0xFF ; file 004C4C
db 0xFF, 0x04 ; 004C50: provisional 68k dc.w $ff04
db 0x0E, 0xAA ; file 004C52
db 0xFE, 0xEE ; 004C54: provisional 68k dc.w $feee
db 0xEE, 0xEE, 0xEE, 0xE9, 0xEF, 0xE9 ; file 004C56
db 0x9E, 0xEE, 0x99, 0xEE ; 004C5C: provisional 68k suba.w -$6612(a6), a7
db 0xEE, 0xEB ; file 004C60
db 0xFF, 0xFF ; 004C62: provisional 68k dc.w $ffff
db 0x03, 0x0F, 0x1A, 0xAA ; 004C64: provisional 68k movep.w $1aaa(a7), d1
db 0xAF, 0xEE ; 004C68: provisional 68k dc.w $afee
db 0xFA, 0xEE ; 004C6A: provisional 68k dc.w $faee
db 0xEE, 0xEE ; file 004C6C
db 0xEE, 0x99 ; 004C6E: provisional 68k ror.l #$7, d1
db 0x99, 0xEE, 0xE9, 0x9E ; 004C70: provisional 68k suba.l -$1662(a6), a4
db 0x9E, 0xEF, 0xFF, 0xFF ; 004C74: provisional 68k suba.w -$1(a7), a7
db 0x03, 0x10 ; 004C78: provisional 68k btst.l d1, (a0)
db 0xAA, 0xAF ; 004C7A: provisional 68k dc.w $aaaf
db 0xAF, 0xEE ; 004C7C: provisional 68k dc.w $afee
db 0xEE, 0xEE, 0xE9, 0xEE ; file 004C7E
db 0x99, 0x9E ; 004C82: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xEE, 0xEF, 0xFE ; file 004C84
db 0x9E, 0xEE, 0xB1, 0xFF ; 004C88: provisional 68k suba.w -$4e01(a6), a7
db 0xFF, 0x03 ; 004C8C: provisional 68k dc.w $ff03
db 0x10, 0xB8, 0xAA, 0xFA ; 004C8E: provisional 68k move.b $aafa.w, (a0)
db 0xAF, 0xEA ; 004C92: provisional 68k dc.w $afea
db 0x8F, 0x99 ; 004C94: provisional 68k or.l d7, (a1)+
db 0xE9, 0x99 ; 004C96: provisional 68k rol.l #$4, d1
db 0x99, 0x99 ; 004C98: provisional 68k sub.l d4, (a1)+
db 0x99, 0xEF, 0xFE, 0x9E ; 004C9A: provisional 68k suba.l -$162(a7), a4
db 0xEE, 0xA1 ; 004C9E: provisional 68k asr.l d7, d1
db 0xFF, 0xFF ; 004CA0: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x1B, 0xAB ; 004CA2: provisional 68k andi.b #$ab, (a1)
db 0x8B, 0xFB, 0xBF, 0xEF, 0xAA, 0xEF ; 004CA6: provisional 68k divs.w ([$f797]), d5
db 0xF9, 0x99 ; 004CAC: provisional 68k dc.w $f999
db 0x99, 0xEE, 0xEE, 0xEE ; 004CAE: provisional 68k suba.l -$1112(a6), a4
db 0xEE, 0x9E ; 004CB2: provisional 68k ror.l #$7, d6
db 0xEE, 0xA1 ; 004CB4: provisional 68k asr.l d7, d1
db 0xFF, 0xFF ; 004CB6: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x88, 0xBA ; 004CB8: provisional 68k andi.b #$ba, (a1)
db 0xBA, 0xFB, 0xAF, 0xFE, 0xEE, 0xAA, 0xAF, 0x99 ; 004CBC: provisional 68k cmpa.w ([$eeaafc57]), a5
db 0x99, 0x99 ; 004CC4: provisional 68k sub.l d4, (a1)+
db 0xEA, 0xFE ; file 004CC6
db 0x99, 0x9E ; 004CC8: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xA8 ; 004CCA: provisional 68k lsr.l d7, d0
db 0xFF, 0xFF ; 004CCC: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x88, 0x8B ; 004CCE: provisional 68k andi.b #$8b, (a1)
db 0xAA, 0xBB ; 004CD2: provisional 68k dc.w $aabb
db 0xAA, 0xAB ; 004CD4: provisional 68k dc.w $aaab
db 0xAE, 0xAA ; 004CD6: provisional 68k dc.w $aeaa
db 0xFA, 0xA9 ; 004CD8: provisional 68k dc.w $faa9
db 0x99, 0x9E ; 004CDA: provisional 68k sub.l d4, (a6)+
db 0xE9, 0xE9 ; file 004CDC
db 0x9E, 0xEE, 0xEE, 0xAB ; 004CDE: provisional 68k suba.w -$1155(a6), a7
db 0xFF, 0xFF ; 004CE2: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x1B, 0xB8 ; 004CE4: provisional 68k andi.b #$b8, (a1)
db 0x8A, 0x88 ; file 004CE8
db 0xBA, 0xAB, 0xBA, 0xAF ; 004CEA: provisional 68k cmp.l -$4551(a3), d5
db 0xEF, 0xAE ; 004CEE: provisional 68k lsl.l d7, d6
db 0xAA, 0xAE ; 004CF0: provisional 68k dc.w $aaae
db 0x99, 0x99 ; 004CF2: provisional 68k sub.l d4, (a1)+
db 0xEF, 0xFF ; file 004CF4
db 0xEE, 0xAB ; 004CF6: provisional 68k lsr.l d7, d3
db 0xFF, 0xFF ; 004CF8: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x88, 0x88 ; 004CFA: provisional 68k andi.b #$88, (a1)
db 0xBA, 0xAA, 0xAA, 0xAA ; 004CFE: provisional 68k cmp.l -$5556(a2), d5
db 0xFA, 0xBA ; 004D02: provisional 68k dc.w $faba
db 0xFF, 0xA9 ; 004D04: provisional 68k dc.w $ffa9
db 0xEA, 0xA9 ; 004D06: provisional 68k lsr.l d5, d1
db 0x9E, 0xEE, 0xEA, 0xAE ; 004D08: provisional 68k suba.w -$1552(a6), a7
db 0xEE, 0xAB ; 004D0C: provisional 68k lsr.l d7, d3
db 0xFF, 0xFF ; 004D0E: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x8B ; 004D10: provisional 68k andi.b #$8b, (a3)
db 0xB8, 0xBB, 0xBA, 0xAA ; 004D14: provisional 68k cmp.l $4cc0(pc, a3.l), d4
db 0xAB, 0xAA ; 004D18: provisional 68k dc.w $abaa
db 0xAA, 0xFE ; 004D1A: provisional 68k dc.w $aafe
db 0xEA, 0xFE ; file 004D1C
db 0xFF, 0xFF ; 004D1E: provisional 68k dc.w $ffff
db 0xEE, 0xEE ; file 004D20
db 0xFA, 0xAB ; 004D22: provisional 68k dc.w $faab
db 0xAF, 0xFA ; 004D24: provisional 68k dc.w $affa
db 0xFF, 0xFF ; 004D26: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x8B ; 004D28: provisional 68k andi.b #$8b, (a3)
db 0xBB, 0xBB ; file 004D2C
db 0xBB, 0xB8, 0x88, 0xBA ; 004D2E: provisional 68k eor.l d5, $88ba.w
db 0xAA, 0xAA ; 004D32: provisional 68k dc.w $aaaa
db 0xFA, 0xE9 ; 004D34: provisional 68k dc.w $fae9
db 0xEE, 0xEF, 0xEA, 0xEE ; file 004D36
db 0xFF, 0xFA ; 004D3A: provisional 68k dc.w $fffa
db 0xFE, 0xFB ; 004D3C: provisional 68k dc.w $fefb
db 0xFF, 0xFF ; 004D3E: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x88 ; 004D40: provisional 68k andi.b #$88, (a3)
db 0x8B, 0xBB ; file 004D44
db 0xB8, 0x8B ; 004D46: provisional 68k cmp.l a3, d4
db 0xAB, 0x88 ; 004D48: provisional 68k dc.w $ab88
db 0xBA, 0xAA, 0xAA, 0xAE ; 004D4A: provisional 68k cmp.l -$5552(a2), d5
db 0xAA, 0xEE ; 004D4E: provisional 68k dc.w $aaee
db 0x99, 0xEE, 0xEF, 0xFE ; 004D50: provisional 68k suba.l -$1002(a6), a4
db 0xFA, 0xBB ; 004D54: provisional 68k dc.w $fabb
db 0xFF, 0xFF ; 004D56: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x88 ; 004D58: provisional 68k andi.b #$88, (a3)
db 0x88, 0x88, 0x88, 0x8B ; file 004D5C
db 0xAB, 0x88 ; 004D60: provisional 68k dc.w $ab88
db 0x88, 0xAF, 0xFF, 0xFF ; 004D62: provisional 68k or.l -$1(a7), d4
db 0xEF, 0x9E ; 004D66: provisional 68k rol.l #$7, d6
db 0x99, 0xFF, 0xEF, 0xFA ; file 004D68
db 0xAB, 0xBB ; 004D6C: provisional 68k dc.w $abbb
db 0xFF, 0xFF ; 004D6E: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1B, 0x88 ; 004D70: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004D74
db 0x88, 0xAF, 0xFF, 0xF9 ; 004D7C: provisional 68k or.l -$7(a7), d4
db 0x99, 0x9F ; 004D80: provisional 68k sub.l d4, (a7)+
db 0xFF, 0xFA ; 004D82: provisional 68k dc.w $fffa
db 0xAF, 0xFA ; 004D84: provisional 68k dc.w $affa
db 0xB8, 0x88 ; 004D86: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 004D88: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1B, 0x88 ; 004D8A: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xBF ; file 004D8E
db 0xFF, 0xF9 ; 004D98: provisional 68k dc.w $fff9
db 0x99, 0xFF ; file 004D9A
db 0xAA, 0xAB ; 004D9C: provisional 68k dc.w $aaab
db 0xAF, 0xFA ; 004D9E: provisional 68k dc.w $affa
db 0x88, 0xBB, 0xFF, 0xFF, 0x00, 0x15, 0x1B, 0xB8 ; 004DA0: provisional 68k or.l ([$15695a]), d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 004DA8
db 0xAF, 0xEE ; 004DB2: provisional 68k dc.w $afee
db 0xEF, 0xFA, 0xBB, 0xBB ; file 004DB4
db 0xAA, 0xB8 ; 004DB8: provisional 68k dc.w $aab8
db 0x8B, 0xFA, 0xFF, 0xFF ; 004DBA: provisional 68k divs.w $4dbb(pc), d5
db 0x01, 0x15 ; 004DBE: provisional 68k btst.l d0, (a5)
db 0xBB, 0x88 ; 004DC0: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004DC2
db 0x8B, 0xAF, 0xE9, 0xEF ; 004DCA: provisional 68k or.l d5, -$1611(a7)
db 0xAB, 0x88 ; 004DCE: provisional 68k dc.w $ab88
db 0x8B, 0xBB, 0x8C, 0x8A, 0x99, 0xBB ; file 004DD0
db 0xFF, 0xFF ; 004DD6: provisional 68k dc.w $ffff
db 0x01, 0x15 ; 004DD8: provisional 68k btst.l d0, (a5)
db 0xBB, 0xBB, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 004DDA
db 0xAF, 0xFF ; 004DE4: provisional 68k dc.w $afff
db 0xEE, 0xFF ; file 004DE6
db 0xEB, 0x88 ; 004DE8: provisional 68k lsl.l #$5, d0
db 0x88, 0xBB, 0x88, 0xCD ; 004DEA: provisional 68k or.l $4db9(pc, a0.l), d4
db 0xDE, 0xBB, 0xFF, 0xFF, 0x01, 0x14, 0xBB, 0xBB ; 004DEE: provisional 68k add.l ([$11509ab]), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004DF6
db 0x8B, 0x8B ; 004DFC: provisional 68k dc.w $8b8b
db 0xAF, 0xFA ; 004DFE: provisional 68k dc.w $affa
db 0x8B, 0xDD ; 004E00: provisional 68k divs.w (a5)+, d5
db 0xF9, 0xB8 ; 004E02: provisional 68k dc.w $f9b8
db 0xAE, 0xFA ; 004E04: provisional 68k dc.w $aefa
db 0xC8, 0x8C, 0xDB, 0xFF ; file 004E06
db 0xFF, 0x01 ; 004E0A: provisional 68k dc.w $ff01
db 0x14, 0x8B ; file 004E0C
db 0xBB, 0x88 ; 004E0E: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004E10
db 0xBB, 0xAA, 0xAA, 0x8C ; 004E16: provisional 68k eor.l d5, -$5574(a2)
db 0xDD, 0xD9 ; 004E1A: provisional 68k adda.l (a1)+, a6
db 0xAB, 0xE9 ; 004E1C: provisional 68k dc.w $abe9
db 0x9F, 0xCC ; 004E1E: provisional 68k suba.l a4, a7
db 0xCC, 0xC8 ; file 004E20
db 0xFF, 0xFF ; 004E22: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 004E24: provisional 68k btst.l d0, (a4)
db 0x1B, 0xBB, 0x88, 0x88, 0x88, 0x88 ; 004E26: provisional 68k move.b $4db0(pc, a0.l), -$78(a5, a0.l)
db 0x88, 0x88, 0x8B, 0xBB ; file 004E2C
db 0xAA, 0xBD ; 004E30: provisional 68k dc.w $aabd
db 0xCC, 0x8C ; file 004E32
db 0xDD, 0xAE, 0x9E, 0x9E ; 004E34: provisional 68k add.l d6, -$6162(a6)
db 0xA8, 0xC8 ; 004E38: provisional 68k dc.w $a8c8
db 0x88, 0xFF ; file 004E3A
db 0xFF, 0x01 ; 004E3C: provisional 68k dc.w $ff01
db 0x14, 0x88 ; file 004E3E
db 0xBB, 0xB8, 0x88, 0x8B ; 004E40: provisional 68k eor.l d5, $888b.w
db 0x88, 0x88, 0x88, 0x88 ; file 004E44
db 0xBB, 0xAF, 0xBB, 0xCC ; 004E48: provisional 68k eor.l d5, -$4434(a7)
db 0xCC, 0xDB ; 004E4C: provisional 68k mulu.w (a3)+, d6
db 0xA9, 0x9E ; 004E4E: provisional 68k dc.w $a99e
db 0xEF, 0xA8 ; 004E50: provisional 68k lsl.l d7, d0
db 0x88, 0x88 ; file 004E52
db 0xFF, 0xFF ; 004E54: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x8B, 0xB8 ; 004E56: provisional 68k andi.b #$b8, (a3)
db 0x88, 0x8A ; file 004E5A
db 0xFB, 0x88 ; 004E5C: provisional 68k dc.w $fb88
db 0x8B, 0xB8, 0xBA, 0xEE ; 004E5E: provisional 68k or.l d5, $baee.w
db 0xAB, 0xCD ; 004E62: provisional 68k dc.w $abcd
db 0xDC, 0x88 ; 004E64: provisional 68k add.l a0, d6
db 0xE9, 0x9E ; 004E66: provisional 68k rol.l #$4, d6
db 0xAB, 0xBB ; 004E68: provisional 68k dc.w $abbb
db 0xB8, 0x88 ; 004E6A: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 004E6C: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xBB, 0xBB ; 004E6E: provisional 68k andi.b #$bb, (a3)
db 0xBB, 0xBB ; file 004E72
db 0x99, 0x88 ; 004E74: provisional 68k subx.l -(a0), -(a4)
db 0xBB, 0xBB ; file 004E76
db 0xAF, 0x9E ; 004E78: provisional 68k dc.w $af9e
db 0xAB, 0xD8 ; 004E7A: provisional 68k dc.w $abd8
db 0x88, 0x88 ; file 004E7C
db 0x99, 0xEB, 0x88, 0x8B ; 004E7E: provisional 68k suba.l -$7775(a3), a4
db 0xB8, 0x88 ; 004E82: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 004E84: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0xB8 ; 004E86: provisional 68k andi.b #$b8, (a3)
db 0xBB, 0xBB ; file 004E8A
db 0xAE, 0xFA ; 004E8C: provisional 68k dc.w $aefa
db 0xAA, 0xBA ; 004E8E: provisional 68k dc.w $aaba
db 0xFE, 0x99 ; 004E90: provisional 68k dc.w $fe99
db 0xEA, 0x88 ; 004E92: provisional 68k lsr.l #$5, d0
db 0x88, 0x89 ; file 004E94
db 0xEA, 0x88 ; 004E96: provisional 68k lsr.l #$5, d0
db 0x88, 0x8B, 0x88, 0x88 ; file 004E98
db 0xFF, 0xFF ; 004E9C: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0xAB ; 004E9E: provisional 68k andi.b #$ab, (a3)
db 0xBB, 0xB8, 0x8B, 0xB8 ; 004EA2: provisional 68k eor.l d5, $8bb8.w
db 0xBB, 0xE9, 0xFF, 0xFF ; 004EA6: provisional 68k cmpa.l -$1(a1), a5
db 0xFF, 0xAA ; 004EAA: provisional 68k dc.w $ffaa
db 0xAF, 0xF9 ; 004EAC: provisional 68k dc.w $aff9
db 0xB8, 0x88 ; 004EAE: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x88 ; file 004EB0
db 0xFF, 0xFF ; 004EB4: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 004EB6: provisional 68k btst.l d1, (a1)
db 0xBA, 0xB8, 0xBB, 0x8B ; 004EB8: provisional 68k cmp.l $bb8b.w, d5
db 0xAB, 0xBB ; 004EBC: provisional 68k dc.w $abbb
db 0xAF, 0xFA ; 004EBE: provisional 68k dc.w $affa
db 0xAA, 0xAA ; 004EC0: provisional 68k dc.w $aaaa
db 0xFF, 0xBB ; 004EC2: provisional 68k dc.w $ffbb
db 0xAA, 0xB8 ; 004EC4: provisional 68k dc.w $aab8
db 0x88, 0x88, 0x88, 0x88 ; file 004EC6
db 0xFF, 0xFF ; 004ECA: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 004ECC
db 0xAB, 0xB8 ; 004ECE: provisional 68k dc.w $abb8
db 0x8B, 0xFB, 0xBB, 0xBB, 0xBB, 0xBB, 0xB8, 0xBB, 0x88, 0x8B, 0xB8, 0x88 ; 004ED0: provisional 68k divs.w ([$bbbc078d, a3.l * 2], $888bb888), d5
db 0x88, 0x88 ; file 004EDC
db 0xFF, 0xFF ; 004EDE: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 004EE0
db 0x1B, 0xA8, 0x1B, 0xAA, 0xAB, 0xBB, 0xBB, 0xBB, 0xB8, 0x88, 0x8B, 0xBB, 0xB8, 0x88 ; 004EE2: provisional 68k move.b $1baa(a0), ([$bbbbb888, a2.l * 2], $8bbbb888)
db 0x88, 0xA8, 0xFF, 0xFF ; 004EF0: provisional 68k or.l -$1(a0), d4
db 0x06, 0x0D, 0x88, 0xBF ; file 004EF4
db 0xFB, 0xBB ; 004EF8: provisional 68k dc.w $fbbb
db 0xBB, 0xBB ; file 004EFA
db 0xBB, 0x88 ; 004EFC: provisional 68k cmpm.l (a0)+, (a5)+
db 0xBA, 0xFF ; file 004EFE
db 0xEA, 0x88 ; 004F00: provisional 68k lsr.l #$5, d0
db 0xBA, 0xF1, 0xFF, 0xFF, 0x06, 0x0D, 0x88, 0xB8 ; 004F02: provisional 68k cmpa.w ([$60d88b8]), a5
db 0xB8, 0x88 ; 004F0A: provisional 68k cmp.l a0, d4
db 0x88, 0x8B ; file 004F0C
db 0xBB, 0x88 ; 004F0E: provisional 68k cmpm.l (a0)+, (a5)+
db 0xBF, 0xFE, 0x9F, 0xFE ; file 004F10
db 0x99, 0xF1, 0xFF, 0xFF, 0x06, 0x0D, 0x88, 0xB8 ; 004F14: provisional 68k suba.l ([$60d88b8]), a4
db 0x88, 0x88, 0x88, 0x8B ; file 004F1C
db 0xBB, 0x88 ; 004F20: provisional 68k cmpm.l (a0)+, (a5)+
db 0xBE, 0xEF, 0x99, 0x99 ; 004F22: provisional 68k cmpa.w -$6667(a7), a7
db 0x9F, 0xFB, 0xFF, 0xFF, 0x07, 0x0C, 0x88, 0x88 ; 004F26: provisional 68k suba.l ([$70cd7b0]), a7
db 0x88, 0x88, 0x8B, 0xBB ; file 004F2E
db 0x8B, 0xF9, 0xE9, 0x99, 0x9F, 0xFF ; 004F32: provisional 68k divs.w $e9999fff.l, d5
db 0xFB, 0xFF ; 004F38: provisional 68k dc.w $fbff
db 0xFF, 0x07 ; 004F3A: provisional 68k dc.w $ff07
db 0x0C, 0x8B, 0x88, 0x88, 0x88, 0x88, 0xBB, 0xBA, 0xEE, 0xF9 ; file 004F3C
db 0xE9, 0x9E ; 004F46: provisional 68k rol.l #$4, d6
db 0xFE, 0xEB ; 004F48: provisional 68k dc.w $feeb
db 0xFF, 0xFF ; 004F4A: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0x88 ; 004F4C: provisional 68k movep.w -$7478(a4), d3
db 0x88, 0x88 ; file 004F50
db 0x88, 0xBB, 0xBA, 0xAA ; 004F52: provisional 68k or.l $4efe(pc, a3.l), d4
db 0xAF, 0xFE ; 004F56: provisional 68k dc.w $affe
db 0x99, 0xFF ; file 004F58
db 0xF1, 0xFF ; 004F5A: provisional 68k dc.w $f1ff
db 0xFF, 0x07 ; 004F5C: provisional 68k dc.w $ff07
db 0x0C, 0x1B, 0xB8, 0x88 ; 004F5E: provisional 68k cmpi.b #$88, (a3)+
db 0xBB, 0x88 ; 004F62: provisional 68k cmpm.l (a0)+, (a5)+
db 0xC8, 0x8B ; file 004F64
db 0xAB, 0xBF ; 004F66: provisional 68k dc.w $abbf
db 0xFF, 0xFF ; 004F68: provisional 68k dc.w $ffff
db 0xAA, 0xB1 ; 004F6A: provisional 68k dc.w $aab1
db 0xFF, 0xFF ; 004F6C: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0x1B, 0xBB ; 004F6E: provisional 68k movep.w $1bbb(a3), d3
db 0xBA, 0xFF ; file 004F72
db 0xB8, 0x88 ; 004F74: provisional 68k cmp.l a0, d4
db 0x88, 0xBB, 0xBB, 0xAA, 0xAA, 0xBB, 0xFF, 0xFF ; 004F76: provisional 68k or.l ([$fa33, a3.l * 2], $ffff), d4
db 0x07, 0x0B, 0x1B, 0xB8 ; 004F7E: provisional 68k movep.w $1bb8(a3), d3
db 0xBA, 0xE9, 0x9A, 0xB8 ; 004F82: provisional 68k cmpa.w -$6548(a1), a5
db 0x88, 0x88, 0xCB, 0xBB ; file 004F86
db 0xAB, 0xBB ; 004F8A: provisional 68k dc.w $abbb
db 0xFF, 0xFF ; 004F8C: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0x1B, 0xBB ; 004F8E: provisional 68k movep.w $1bbb(a3), d3
db 0xBB, 0xF9, 0x99, 0x9B, 0x88, 0x88 ; 004F92: provisional 68k cmpa.l $999b8888.l, a5
db 0x88, 0x88 ; file 004F98
db 0xB8, 0x88 ; 004F9A: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 004F9C: provisional 68k dc.w $ffff
db 0x08, 0x0B ; file 004F9E
db 0xBB, 0x8B ; 004FA0: provisional 68k cmpm.l (a3)+, (a5)+
db 0xBF, 0x99 ; 004FA2: provisional 68k eor.l d7, (a1)+
db 0x99, 0x9A ; 004FA4: provisional 68k sub.l d4, (a2)+
db 0x88, 0x88, 0x88, 0x8B, 0x88, 0x88 ; file 004FA6
db 0xFF, 0xFF ; 004FAC: provisional 68k dc.w $ffff
db 0x08, 0x0B ; file 004FAE
db 0x1B, 0xBB, 0xBB, 0xAE, 0x99, 0x99, 0xFA, 0xB8, 0x88, 0x88 ; 004FB0: provisional 68k move.b ([$e94b], a3.l * 2, $fab8), -$78(a5, a0.l)
db 0x88, 0x88 ; file 004FBA
db 0xFF, 0xFF ; 004FBC: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xBB, 0xBB ; 004FBE: provisional 68k movep.w -$4445(a2), d4
db 0xBA, 0xAF, 0xEE, 0xEF ; 004FC2: provisional 68k cmp.l -$1111(a7), d5
db 0xBB, 0xBB ; file 004FC6
db 0x8B, 0xB8, 0x88, 0xFF ; 004FC8: provisional 68k or.l d5, $88ff.w
db 0xFF, 0x09 ; 004FCC: provisional 68k dc.w $ff09
db 0x0A, 0x88, 0xBB, 0xBB ; file 004FCE
db 0xBB, 0xFA, 0xAA, 0xAA ; 004FD2: provisional 68k cmpa.l $fffffa7e(pc), a5
db 0xAB, 0xBA ; 004FD6: provisional 68k dc.w $abba
db 0xAB, 0x88 ; 004FD8: provisional 68k dc.w $ab88
db 0xFF, 0xFF ; 004FDA: provisional 68k dc.w $ffff
db 0x0A, 0x08, 0x8B, 0xBB ; file 004FDC
db 0x88, 0xBB, 0xBA, 0xAA ; 004FE0: provisional 68k or.l $4f8c(pc, a3.l), d4
db 0xAA, 0xFF ; 004FE4: provisional 68k dc.w $aaff
db 0xAA, 0xFF ; 004FE6: provisional 68k dc.w $aaff
db 0xFF, 0x0B ; 004FE8: provisional 68k dc.w $ff0b
db 0x07, 0xBB ; file 004FEA
db 0xBB, 0xB8, 0x8B, 0xBA ; 004FEC: provisional 68k eor.l d5, $8bba.w
db 0xFE, 0xEF ; 004FF0: provisional 68k dc.w $feef
db 0xFB, 0xFF ; 004FF2: provisional 68k dc.w $fbff
db 0xFF, 0x0C ; 004FF4: provisional 68k dc.w $ff0c
db 0x06, 0xBB ; file 004FF6
db 0xBB, 0xB8, 0x8A, 0xAF ; 004FF8: provisional 68k eor.l d5, $8aaf.w
db 0xFF, 0xA8 ; 004FFC: provisional 68k dc.w $ffa8
db 0xFF, 0xFF ; 004FFE: provisional 68k dc.w $ffff
db 0x0D, 0x05 ; 005000: provisional 68k btst.l d6, d5
db 0xBA, 0xBB, 0xB8, 0x8B ; 005002: provisional 68k cmp.l $4f8f(pc, a3.l), d5
db 0x88, 0x88 ; file 005006
db 0xFF, 0xFF ; 005008: provisional 68k dc.w $ffff
db 0x0E, 0x03, 0x8B, 0xBB ; file 00500A
db 0xBB, 0x88 ; 00500E: provisional 68k cmpm.l (a0)+, (a5)+
db 0xFF, 0xFF ; 005010: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005012: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005014: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 005016: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 00501A: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 005020
db 0x10, 0x10 ; 005024: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 005026: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 005028: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00502A: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00502C: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 005030: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 005034: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 005036: provisional 68k neg.w d4
db 0x2C, 0x24 ; 005038: provisional 68k move.l -(a4), d6
db 0x20, 0xCC ; 00503A: provisional 68k move.l a4, (a0)+
db 0xA0, 0x84 ; 00503C: provisional 68k dc.w $a084
db 0x7C, 0x6C ; 00503E: provisional 68k moveq #$6c, d6
db 0x64, 0x6C ; 005040: provisional 68k bcc.b $50ae
db 0x58, 0x48 ; 005042: provisional 68k addq.w #$4, a0
db 0x00, 0x20, 0x40, 0x00 ; 005044: provisional 68k ori.b #$0, -(a0)
db 0x40, 0x7C ; file 005048
db 0xB0, 0x78, 0x64, 0x98 ; 00504A: provisional 68k cmp.w $6498.w, d0
db 0x78, 0x64 ; 00504E: provisional 68k moveq #$64, d4
db 0xFF, 0xFF ; 005050: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0xBB, 0xBF ; 005052: provisional 68k eori.b #$bf, d4
db 0xBB, 0xBB, 0x88, 0xFF ; file 005056
db 0xFF, 0x06 ; 00505A: provisional 68k dc.w $ff06
db 0x0A, 0x88, 0xBB, 0xBF ; file 00505C
db 0xFE, 0xFA ; 005060: provisional 68k dc.w $fefa
db 0xEE, 0xE9, 0xEE, 0xEE ; file 005062
db 0xFA, 0xB1 ; 005066: provisional 68k dc.w $fab1
db 0xFF, 0xFF ; 005068: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0x1B, 0xAF ; 00506A: provisional 68k movep.w $1baf(a4), d2
db 0xEE, 0xE9 ; file 00506E
db 0xEA, 0xAE ; 005070: provisional 68k lsr.l d5, d6
db 0x9F, 0xFF, 0xE9, 0xEF, 0xEE, 0xEF, 0xB1, 0xFF ; file 005072
db 0xFF, 0x05 ; 00507A: provisional 68k dc.w $ff05
db 0x0C, 0xAF, 0xEE, 0x9E, 0xEE, 0xE9, 0x9E, 0xFF ; 00507C: provisional 68k cmpi.l #$ee9eeee9, -$6101(a7)
db 0xEE, 0xEE ; file 005084
db 0x99, 0xEE, 0x9E, 0xAB ; 005086: provisional 68k suba.l -$6155(a6), a4
db 0xFF, 0xFF ; 00508A: provisional 68k dc.w $ffff
db 0x04, 0x0E, 0xBA, 0xFE ; file 00508C
db 0xEE, 0x99 ; 005090: provisional 68k ror.l #$7, d1
db 0xE9, 0x9E ; 005092: provisional 68k rol.l #$4, d6
db 0xEE, 0xEE ; file 005094
db 0x99, 0xEE, 0xEE, 0x99 ; 005096: provisional 68k suba.l -$1167(a6), a4
db 0xEE, 0xEE, 0xE1, 0xFF ; file 00509A
db 0xFF, 0x03 ; 00509E: provisional 68k dc.w $ff03
db 0x0F, 0x1B ; 0050A0: provisional 68k btst.l d7, (a3)+
db 0xBF, 0xEE, 0xFE, 0xEE ; 0050A2: provisional 68k cmpa.l -$112(a6), a7
db 0xE9, 0x99 ; 0050A6: provisional 68k rol.l #$4, d1
db 0x9E, 0xEE, 0x99, 0x99 ; 0050A8: provisional 68k suba.w -$6667(a6), a7
db 0xEE, 0x99 ; 0050AC: provisional 68k ror.l #$7, d1
db 0xEE, 0xEE, 0xEE, 0xFF ; file 0050AE
db 0xFF, 0x02 ; 0050B2: provisional 68k dc.w $ff02
db 0x11, 0x1B ; 0050B4: provisional 68k move.b (a3)+, -(a0)
db 0xAB, 0xBF ; 0050B6: provisional 68k dc.w $abbf
db 0xEE, 0xEF ; file 0050B8
db 0xFF, 0x9E ; 0050BA: provisional 68k dc.w $ff9e
db 0x99, 0x9E ; 0050BC: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xE9 ; file 0050BE
db 0x99, 0xEE, 0xE9, 0x9E ; 0050C0: provisional 68k suba.l -$1662(a6), a4
db 0xEE, 0xEE, 0xE1, 0xFF ; file 0050C4
db 0xFF, 0x02 ; 0050C8: provisional 68k dc.w $ff02
db 0x11, 0x8B ; file 0050CA
db 0xAB, 0xBB ; 0050CC: provisional 68k dc.w $abbb
db 0xFE, 0xEE ; 0050CE: provisional 68k dc.w $feee
db 0xEE, 0xEE ; file 0050D0
db 0x9E, 0xF9, 0x99, 0x99, 0xEE, 0x9E ; 0050D2: provisional 68k suba.w $9999ee9e.l, a7
db 0xEE, 0xEF, 0xE9, 0xEE, 0xEB, 0xFF ; file 0050D8
db 0xFF, 0x02 ; 0050DE: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 0050E0
db 0xBA, 0xBA, 0xAF, 0xEE ; 0050E2: provisional 68k cmp.l $d2(pc), d5
db 0xEF, 0xBE ; 0050E6: provisional 68k rol.l d7, d6
db 0xE9, 0x99 ; 0050E8: provisional 68k rol.l #$4, d1
db 0x99, 0x99 ; 0050EA: provisional 68k sub.l d4, (a1)+
db 0xE9, 0x99 ; 0050EC: provisional 68k rol.l #$4, d1
db 0xE9, 0xBB ; 0050EE: provisional 68k rol.l d4, d3
db 0xE9, 0xEE, 0xEB, 0xFF ; file 0050F0
db 0xFF, 0x02 ; 0050F4: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 0050F6
db 0x8A, 0xBB, 0xBB, 0xFE, 0xB8, 0xAE, 0xEE, 0x99 ; 0050F8: provisional 68k or.l ([$b8af3f93]), d5
db 0x99, 0x99 ; 005100: provisional 68k sub.l d4, (a1)+
db 0x9E, 0x99 ; 005102: provisional 68k sub.l (a1)+, d7
db 0xFF, 0xFF ; 005104: provisional 68k dc.w $ffff
db 0xEE, 0xEE, 0xEA, 0xFF ; file 005106
db 0xFF, 0x01 ; 00510A: provisional 68k dc.w $ff01
db 0x13, 0x88 ; file 00510C
db 0xBB, 0x8B ; 00510E: provisional 68k cmpm.l (a3)+, (a5)+
db 0xBB, 0x8B ; 005110: provisional 68k cmpm.l (a3)+, (a5)+
db 0xFA, 0xAF ; 005112: provisional 68k dc.w $faaf
db 0xAA, 0xAB ; 005114: provisional 68k dc.w $aaab
db 0xA9, 0x99 ; 005116: provisional 68k dc.w $a999
db 0x99, 0x9E ; 005118: provisional 68k sub.l d4, (a6)+
db 0xEF, 0xBA ; 00511A: provisional 68k rol.l d7, d2
db 0xEE, 0xE9, 0xEE, 0xEB, 0x88, 0xFF ; file 00511C
db 0xFF, 0x01 ; 005122: provisional 68k dc.w $ff01
db 0x13, 0x88 ; file 005124
db 0x8B, 0xB8, 0xB8, 0xBB ; 005126: provisional 68k or.l d5, $b8bb.w
db 0xBB, 0xBE ; file 00512A
db 0xEB, 0xBB ; 00512C: provisional 68k rol.l d5, d3
db 0xFE, 0x99 ; 00512E: provisional 68k dc.w $fe99
db 0x99, 0x99 ; 005130: provisional 68k sub.l d4, (a1)+
db 0xEA, 0xE9, 0x9E, 0xFE ; file 005132
db 0x9F, 0xEB, 0xB1, 0xFF ; 005136: provisional 68k suba.l -$4e01(a3), a7
db 0xFF, 0x01 ; 00513A: provisional 68k dc.w $ff01
db 0x13, 0x88, 0x88, 0x8B ; file 00513C
db 0xB8, 0x8B ; 005140: provisional 68k cmp.l a3, d4
db 0xBB, 0x88 ; 005142: provisional 68k cmpm.l (a0)+, (a5)+
db 0xFB, 0xBE ; 005144: provisional 68k dc.w $fbbe
db 0xEB, 0xF9 ; file 005146
db 0x99, 0x9E ; 005148: provisional 68k sub.l d4, (a6)+
db 0xFE, 0x99 ; 00514A: provisional 68k dc.w $fe99
db 0x9E, 0xAA, 0xFE, 0xEB ; 00514C: provisional 68k sub.l -$115(a2), d7
db 0xB1, 0xFF ; file 005150
db 0xFF, 0x01 ; 005152: provisional 68k dc.w $ff01
db 0x13, 0x88, 0x88, 0x8B ; file 005154
db 0xA8, 0x8B ; 005158: provisional 68k dc.w $a88b
db 0xBB, 0x88 ; 00515A: provisional 68k cmpm.l (a0)+, (a5)+
db 0xB8, 0xB9, 0xEB, 0xBE, 0xBB, 0xBE ; 00515C: provisional 68k cmp.l $ebbebbbe.l, d4
db 0x99, 0x99 ; 005162: provisional 68k sub.l d4, (a1)+
db 0x9E, 0xAB, 0xBE, 0xFB ; 005164: provisional 68k sub.l -$4105(a3), d7
db 0xB1, 0xFF ; file 005168
db 0xFF, 0x01 ; 00516A: provisional 68k dc.w $ff01
db 0x13, 0x88, 0x88, 0x8B, 0xBB, 0xBB ; file 00516C
db 0xBB, 0xAF, 0xB8, 0xBF ; 005172: provisional 68k eor.l d5, -$4741(a7)
db 0xFB, 0xF9 ; 005176: provisional 68k dc.w $fbf9
db 0xFA, 0xB9 ; 005178: provisional 68k dc.w $fab9
db 0x99, 0x9E ; 00517A: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xFB ; file 00517C
db 0xBE, 0xBB, 0xB1, 0xFF, 0xFF, 0x01, 0x13, 0x88 ; 00517E: provisional 68k cmp.l ([$ff016508]), d7
db 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB, 0xBB, 0xBB ; file 005186
db 0xBA, 0xEF, 0xEE, 0xAB ; 00518E: provisional 68k cmpa.w -$1155(a7), a5
db 0xFF, 0xFF ; 005192: provisional 68k dc.w $ffff
db 0xEE, 0xEE ; file 005194
db 0xEF, 0xBB ; 005196: provisional 68k rol.l d7, d3
db 0xB1, 0xFF ; file 005198
db 0xFF, 0x01 ; 00519A: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB, 0xBB ; file 00519C
db 0xBF, 0xE9, 0xEE, 0x99 ; 0051A8: provisional 68k cmpa.l -$1167(a1), a7
db 0x9E, 0xAF, 0xEB, 0xBB ; 0051AC: provisional 68k sub.l -$1445(a7), d7
db 0x8B, 0xEB, 0xFF, 0xFF ; 0051B0: provisional 68k divs.w -$1(a3), d5
db 0x01, 0x14 ; 0051B4: provisional 68k btst.l d0, (a4)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0051B6
db 0xBB, 0xB8, 0x88, 0xBB ; 0051BC: provisional 68k eor.l d5, $88bb.w
db 0xBE, 0xEE, 0xEE, 0xA8 ; 0051C0: provisional 68k cmpa.w -$1158(a6), a7
db 0xBE, 0xAB, 0x8E, 0x9F ; 0051C4: provisional 68k cmp.l -$7161(a3), d7
db 0xFF, 0xFF ; 0051C8: provisional 68k dc.w $ffff
db 0xA8, 0xFF ; 0051CA: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 0051CC: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 0051CE
db 0xB8, 0x88 ; 0051D6: provisional 68k cmp.l a0, d4
db 0x88, 0xBA, 0xBB, 0xBA ; 0051D8: provisional 68k or.l $d94(pc), d4
db 0xB8, 0xBE, 0x99, 0xFF, 0x9F, 0xFF ; file 0051DC
db 0xAB, 0xB8 ; 0051E2: provisional 68k dc.w $abb8
db 0xFF, 0xFF ; 0051E4: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 0051E6: provisional 68k btst.l d0, (a4)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xBB, 0xBA ; file 0051E8
db 0xFF, 0xFE ; 0051F4: provisional 68k dc.w $fffe
db 0x99, 0x99 ; 0051F6: provisional 68k sub.l d4, (a1)+
db 0xFF, 0xFF ; 0051F8: provisional 68k dc.w $ffff
db 0xAB, 0xB8 ; 0051FA: provisional 68k dc.w $abb8
db 0x88, 0xFF ; file 0051FC
db 0xFF, 0x00 ; 0051FE: provisional 68k dc.w $ff00
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005200
db 0x8B, 0xAF, 0xF9, 0x99 ; 00520C: provisional 68k or.l d5, -$667(a7)
db 0x9F, 0xFF ; file 005210
db 0xAB, 0xAF ; 005212: provisional 68k dc.w $abaf
db 0xAB, 0xB8 ; 005214: provisional 68k dc.w $abb8
db 0x88, 0xFF ; file 005216
db 0xFF, 0x00 ; 005218: provisional 68k dc.w $ff00
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F, 0xFF ; file 00521A
db 0xF9, 0x99 ; 005228: provisional 68k dc.w $f999
db 0xFF, 0xBB ; 00522A: provisional 68k dc.w $ffbb
db 0xBB, 0xBA ; file 00522C
db 0xAB, 0x88 ; 00522E: provisional 68k dc.w $ab88
db 0x88, 0xFF ; file 005230
db 0xFF, 0x00 ; 005232: provisional 68k dc.w $ff00
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005234
db 0x8A, 0xAF, 0xFF, 0xFF ; 005240: provisional 68k or.l -$1(a7), d5
db 0xFB, 0xBB ; 005244: provisional 68k dc.w $fbbb
db 0xBB, 0xBB ; file 005246
db 0xB8, 0x8B ; 005248: provisional 68k cmp.l a3, d4
db 0xAB, 0xFF ; 00524A: provisional 68k dc.w $abff
db 0xFF, 0x01 ; 00524C: provisional 68k dc.w $ff01
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00524E
db 0xAF, 0xFE ; 00525A: provisional 68k dc.w $affe
db 0xEE, 0xBB ; 00525C: provisional 68k ror.l d7, d3
db 0x88, 0x88, 0x88, 0x88 ; file 00525E
db 0xCD, 0xDF ; 005262: provisional 68k muls.w (a7)+, d6
db 0x88, 0xFF ; file 005264
db 0xFF, 0x01 ; 005266: provisional 68k dc.w $ff01
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005268
db 0x88, 0xBA, 0xAA, 0xFE ; 005272: provisional 68k or.l $fffffd72(pc), d4
db 0xFD, 0xAB ; 005276: provisional 68k dc.w $fdab
db 0x88, 0x88, 0x88, 0x8C ; file 005278
db 0x88, 0xDD ; 00527C: provisional 68k divu.w (a5)+, d4
db 0x88, 0xFF ; file 00527E
db 0xFF, 0x01 ; 005280: provisional 68k dc.w $ff01
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xBF ; file 005282
db 0xFB, 0xBE ; 00528E: provisional 68k dc.w $fbbe
db 0xAD, 0xDF ; 005290: provisional 68k dc.w $addf
db 0x88, 0xBF ; file 005292
db 0xFB, 0x8C ; 005294: provisional 68k dc.w $fb8c
db 0x88, 0xDD ; 005296: provisional 68k divu.w (a5)+, d4
db 0x88, 0xFF ; file 005298
db 0xFF, 0x01 ; 00529A: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00529C
db 0x88, 0xBB, 0xBB, 0xED, 0xDC, 0xCD ; 0052A6: provisional 68k or.l ([$12f75]), d4
db 0x8B, 0xF9, 0xEF, 0x8C, 0xCD, 0xDC ; 0052AC: provisional 68k divs.w $ef8ccddc.l, d5
db 0xFF, 0xFF ; 0052B2: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 0052B4: provisional 68k btst.l d0, (a4)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0052B6
db 0xBB, 0x8A ; 0052C0: provisional 68k cmpm.l (a2)+, (a5)+
db 0xFD, 0xC8 ; 0052C2: provisional 68k dc.w $fdc8
db 0xCD, 0xBE ; file 0052C4
db 0x9E, 0xEE, 0xB8, 0xCC ; 0052C6: provisional 68k suba.w -$4734(a6), a7
db 0xC1, 0xFF ; file 0052CA
db 0xFF, 0x01 ; 0052CC: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xBF ; file 0052CE
db 0x8B, 0xAD, 0xDC, 0xCC ; 0052DA: provisional 68k or.l d5, -$2334(a5)
db 0xF9, 0x9E ; 0052DE: provisional 68k dc.w $f99e
db 0xEA, 0xBB ; 0052E0: provisional 68k ror.l d5, d3
db 0x88, 0x88 ; file 0052E2
db 0xFF, 0xFF ; 0052E4: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x88 ; 0052E6: provisional 68k andi.b #$88, (a3)
db 0x88, 0x8B ; file 0052EA
db 0xA8, 0x88 ; 0052EC: provisional 68k dc.w $a888
db 0x88, 0x88, 0x8B, 0xFE ; file 0052EE
db 0xB8, 0x88 ; 0052F2: provisional 68k cmp.l a0, d4
db 0xDC, 0x88 ; 0052F4: provisional 68k add.l a0, d6
db 0xE9, 0x9F ; 0052F6: provisional 68k rol.l #$4, d7
db 0xB8, 0x88 ; 0052F8: provisional 68k cmp.l a0, d4
db 0x88, 0x88 ; file 0052FA
db 0xFF, 0xFF ; 0052FC: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1B, 0x88 ; 0052FE: provisional 68k andi.b #$88, (a3)
db 0x88, 0x88 ; file 005302
db 0x99, 0x88 ; 005304: provisional 68k subx.l -(a0), -(a4)
db 0x88, 0x88 ; file 005306
db 0xBF, 0x9E ; 005308: provisional 68k eor.l d7, (a6)+
db 0xBB, 0x88 ; 00530A: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88 ; file 00530C
db 0x99, 0xF8, 0x88, 0x88 ; 00530E: provisional 68k suba.l $8888.w, a4
db 0xB8, 0x88 ; 005312: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 005314: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 005316: provisional 68k btst.l d1, (a2)
db 0xB8, 0x88 ; 005318: provisional 68k cmp.l a0, d4
db 0x88, 0xBF ; file 00531A
db 0xAB, 0xBB ; 00531C: provisional 68k dc.w $abbb
db 0xBB, 0xFF ; file 00531E
db 0x99, 0xFB, 0x88, 0x88 ; 005320: provisional 68k suba.l $52aa(pc, a0.l), a4
db 0x8B, 0xFA, 0x88, 0x88 ; 005324: provisional 68k divs.w $ffffdbae(pc), d5
db 0x88, 0x88, 0x88, 0xFF ; file 005328
db 0xFF, 0x03 ; 00532C: provisional 68k dc.w $ff03
db 0x11, 0xB8, 0x88, 0x88, 0x88, 0x88 ; 00532E: provisional 68k move.b $8888.w, -$78(a0, a0.l)
db 0x8B, 0xF9, 0xFF, 0xAA, 0xFA, 0xFF ; 005334: provisional 68k divs.w $ffaafaff.l, d5
db 0xFA, 0xBE ; 00533A: provisional 68k dc.w $fabe
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 00533C
db 0xFF, 0x03 ; 005342: provisional 68k dc.w $ff03
db 0x10, 0x1B ; 005344: provisional 68k move.b (a3)+, d0
db 0x88, 0x8B ; file 005346
db 0x88, 0xB8, 0x88, 0xBA ; 005348: provisional 68k or.l $88ba.w, d4
db 0xAB, 0xBB ; 00534C: provisional 68k dc.w $abbb
db 0xBB, 0xFE ; file 00534E
db 0xB8, 0xBA, 0xA8, 0x88 ; 005350: provisional 68k cmp.l $fffffbda(pc), d4
db 0x88, 0x88 ; file 005354
db 0xFF, 0xFF ; 005356: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 005358
db 0xB8, 0xB8, 0x8B, 0xAB ; 00535A: provisional 68k cmp.l $8bab.w, d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00535E
db 0xB8, 0x88 ; 005366: provisional 68k cmp.l a0, d4
db 0x88, 0x88 ; file 005368
db 0xFF, 0xFF ; 00536A: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 00536C
db 0x88, 0xB8, 0x88, 0xBA ; 00536E: provisional 68k or.l $88ba.w, d4
db 0xB8, 0x88 ; 005372: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005374
db 0xB8, 0x88 ; 00537A: provisional 68k cmp.l a0, d4
db 0x88, 0xB1, 0xFF, 0xFF, 0x06, 0x0D, 0x88, 0x8F ; 00537C: provisional 68k or.l ([$60d888f]), d4
db 0xF8, 0x88 ; 005384: provisional 68k dc.w $f888
db 0x88, 0x88, 0x88, 0x88 ; file 005386
db 0x8A, 0xAF, 0xFB, 0x88 ; 00538A: provisional 68k or.l -$478(a7), d5
db 0x8A, 0xF1, 0xFF, 0xFF, 0x06, 0x0D, 0x88, 0x88 ; 00538E: provisional 68k divu.w ([$60d8888]), d5
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F, 0xFF ; file 005396
db 0x9F, 0xAF, 0x99, 0xA1 ; 00539E: provisional 68k sub.l d7, -$665f(a7)
db 0xFF, 0xFF ; 0053A2: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0x88, 0x88, 0xBE, 0xFF ; file 0053A4
db 0x99, 0x99 ; 0053B0: provisional 68k sub.l d4, (a1)+
db 0x9F, 0xAB, 0xFF, 0xFF ; 0053B2: provisional 68k sub.l d7, -$1(a3)
db 0x07, 0x0C, 0x88, 0x88 ; 0053B6: provisional 68k movep.w -$7778(a4), d3
db 0x88, 0x88 ; file 0053BA
db 0x8B, 0x88 ; 0053BC: provisional 68k dc.w $8b88
db 0x8B, 0xF9, 0xF9, 0x99, 0x9F, 0xFF ; 0053BE: provisional 68k divs.w $f9999fff.l, d5
db 0xF8, 0xFF ; 0053C4: provisional 68k dc.w $f8ff
db 0xFF, 0x07 ; 0053C6: provisional 68k dc.w $ff07
db 0x0C, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8A ; file 0053C8
db 0xFF, 0xF9 ; 0053D0: provisional 68k dc.w $fff9
db 0xF9, 0x9E ; 0053D2: provisional 68k dc.w $f99e
db 0xFE, 0xEB ; 0053D4: provisional 68k dc.w $feeb
db 0xFF, 0xFF ; 0053D6: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0x88 ; 0053D8: provisional 68k movep.w -$7478(a4), d3
db 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB, 0xBF, 0xFE, 0x99, 0xFF ; file 0053DC
db 0xA8, 0xFF ; 0053E6: provisional 68k dc.w $a8ff
db 0xFF, 0x07 ; 0053E8: provisional 68k dc.w $ff07
db 0x0C, 0x8B, 0x88, 0x88, 0x88, 0x88, 0xC8, 0x88 ; file 0053EA
db 0xB8, 0x8A ; 0053F2: provisional 68k cmp.l a2, d4
db 0xAA, 0xAA ; 0053F4: provisional 68k dc.w $aaaa
db 0xAB, 0x88 ; 0053F6: provisional 68k dc.w $ab88
db 0xFF, 0xFF ; 0053F8: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1B, 0x88 ; 0053FA: provisional 68k movep.w $1b88(a4), d3
db 0x8B, 0xFA, 0x88, 0x88 ; 0053FE: provisional 68k divs.w $ffffdc88(pc), d5
db 0x88, 0x88, 0x8B, 0xBA ; file 005402
db 0xAB, 0xBB ; 005406: provisional 68k dc.w $abbb
db 0x88, 0xFF ; file 005408
db 0xFF, 0x07 ; 00540A: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 00540C: provisional 68k btst.l d5, (a3)+
db 0x88, 0xBB, 0x99, 0x9A, 0xB8, 0x88 ; 00540E: provisional 68k or.l ([$5410, a1.l], $b888), d4
db 0x88, 0xC8 ; file 005414
db 0x8B, 0xB8, 0x88, 0xFF ; 005416: provisional 68k or.l d5, $88ff.w
db 0xFF, 0x07 ; 00541A: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 00541C: provisional 68k btst.l d5, (a3)+
db 0x88, 0x88 ; file 00541E
db 0xA9, 0x99 ; 005420: provisional 68k dc.w $a999
db 0x98, 0x88 ; 005422: provisional 68k sub.l a0, d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 005424
db 0xFF, 0x08 ; 00542A: provisional 68k dc.w $ff08
db 0x0B, 0xB8, 0x88, 0xBF ; 00542C: provisional 68k bclr.b d5, $88bf.w
db 0x99, 0x99 ; 005430: provisional 68k sub.l d4, (a1)+
db 0x9A, 0x88 ; 005432: provisional 68k sub.l a0, d5
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 005434
db 0xFF, 0x08 ; 00543A: provisional 68k dc.w $ff08
db 0x0B, 0x8B, 0xB8, 0x88 ; 00543C: provisional 68k movep.w d5, -$4778(a3)
db 0xBE, 0x99 ; 005440: provisional 68k cmp.l (a1)+, d7
db 0x99, 0xFA, 0x88, 0x88 ; 005442: provisional 68k suba.l $ffffdccc(pc), a4
db 0x88, 0x88, 0x88, 0xFF ; file 005446
db 0xFF, 0x08 ; 00544A: provisional 68k dc.w $ff08
db 0x0B, 0x88, 0x8B, 0x88 ; 00544C: provisional 68k movep.w d5, -$7478(a0)
db 0x8B, 0xBA ; file 005450
db 0xFF, 0xEA ; 005452: provisional 68k dc.w $ffea
db 0xBB, 0xB8, 0x88, 0x88 ; 005454: provisional 68k eor.l d5, $8888.w
db 0x88, 0xFF ; file 005458
db 0xFF, 0x09 ; 00545A: provisional 68k dc.w $ff09
db 0x0A, 0x88, 0x88, 0x88 ; file 00545C
db 0x8B, 0xAB, 0xBB, 0xBB ; 005460: provisional 68k or.l d5, -$4445(a3)
db 0xB8, 0xBB, 0xB8, 0x88 ; 005464: provisional 68k cmp.l $53ee(pc, a3.l), d4
db 0xFF, 0xFF ; 005468: provisional 68k dc.w $ffff
db 0x0A, 0x08 ; file 00546A
db 0x88, 0xB8, 0x88, 0x88 ; 00546C: provisional 68k or.l $8888.w, d4
db 0x8B, 0xBB ; file 005470
db 0xBB, 0xAF, 0xAB, 0xFF ; 005472: provisional 68k eor.l d5, -$5401(a7)
db 0xFF, 0x0B ; 005476: provisional 68k dc.w $ff0b
db 0x07, 0x88, 0xB8, 0x88 ; 005478: provisional 68k movep.w d3, -$4778(a0)
db 0x88, 0xBB, 0xFE, 0xFF ; 00547C: provisional 68k or.l $547d(pc, a7.l), d4
db 0xAB, 0xFF ; 005480: provisional 68k dc.w $abff
db 0xFF, 0x0C ; 005482: provisional 68k dc.w $ff0c
db 0x06, 0x8B ; file 005484
db 0xB8, 0x88 ; 005486: provisional 68k cmp.l a0, d4
db 0x8B, 0xBA ; file 005488
db 0xAA, 0xB1 ; 00548A: provisional 68k dc.w $aab1
db 0xFF, 0xFF ; 00548C: provisional 68k dc.w $ffff
db 0x0D, 0x04 ; 00548E: provisional 68k btst.l d6, d4
db 0x88, 0xB8, 0x88, 0x88 ; 005490: provisional 68k or.l $8888.w, d4
db 0x88, 0xFF ; file 005494
db 0xFF, 0x0E ; 005496: provisional 68k dc.w $ff0e
db 0x03, 0x1D ; 005498: provisional 68k btst.l d1, (a5)+
db 0xB8, 0x88 ; 00549A: provisional 68k cmp.l a0, d4
db 0x88, 0xFF ; file 00549C
db 0xFF, 0xFF ; 00549E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0054A0: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0054A2: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 0054A4: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 0054A8: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0054AE
db 0x10, 0x10 ; 0054B2: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0054B4: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0054B6: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0054B8: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0054BA: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0054BE: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0054C2: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0054C4: provisional 68k neg.w d4
db 0x1C, 0x14 ; 0054C6: provisional 68k move.b (a4), d6
db 0x10, 0xB4, 0x7C, 0x64 ; 0054C8: provisional 68k move.b $64(a4, d7.l), (a0)
db 0x6C, 0x58 ; 0054CC: provisional 68k bge.b $5526
db 0x48, 0x44 ; 0054CE: provisional 68k swap d4
db 0x34, 0x34, 0x00, 0x24 ; 0054D0: provisional 68k move.w $24(a4, d0.w), d2
db 0x4C, 0x98, 0x78, 0x64 ; 0054D4: provisional 68k movem.w (a0)+, d2/d5-d6/a3-a6
db 0xCC, 0xA0 ; 0054D8: provisional 68k and.l -(a0), d6
db 0x84, 0x80 ; 0054DA: provisional 68k or.l d0, d2
db 0x6C, 0x60 ; 0054DC: provisional 68k bge.b $553e
db 0x09, 0x05 ; 0054DE: provisional 68k btst.l d4, d5
db 0xAA, 0xAF ; 0054E0: provisional 68k dc.w $aaaf
db 0xDD, 0xD9 ; 0054E2: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFA ; 0054E4: provisional 68k dc.w $fffa
db 0xFF, 0xFF ; 0054E6: provisional 68k dc.w $ffff
db 0x06, 0x0A ; file 0054E8
db 0x1A, 0xAF, 0xDD, 0x99 ; 0054EA: provisional 68k move.b -$2267(a7), (a5)
db 0xDF, 0x99 ; 0054EE: provisional 68k add.l d7, (a1)+
db 0x9E, 0x99 ; 0054F0: provisional 68k sub.l (a1)+, d7
db 0x99, 0x9F ; 0054F2: provisional 68k sub.l d4, (a7)+
db 0xF1, 0xFF ; 0054F4: provisional 68k dc.w $f1ff
db 0xFF, 0x04 ; 0054F6: provisional 68k dc.w $ff04
db 0x0D, 0x1B ; 0054F8: provisional 68k btst.l d6, (a3)+
db 0xAA, 0xD9 ; 0054FA: provisional 68k dc.w $aad9
db 0x99, 0x99 ; 0054FC: provisional 68k sub.l d4, (a1)+
db 0x9F, 0xF9, 0x9D, 0xDD, 0x9E, 0x9D ; 0054FE: provisional 68k suba.l $9ddd9e9d.l, a7
db 0xD9, 0x99 ; 005504: provisional 68k add.l d4, (a1)+
db 0xD1, 0xFF ; file 005506
db 0xFF, 0x04 ; 005508: provisional 68k dc.w $ff04
db 0x0E, 0xAA ; file 00550A
db 0xFD, 0x99 ; 00550C: provisional 68k dc.w $fd99
db 0xE9, 0xD9 ; file 00550E
db 0x99, 0xE9, 0xDD, 0x99 ; 005510: provisional 68k suba.l -$2267(a1), a4
db 0x99, 0xEE, 0xE9, 0x9E ; 005514: provisional 68k suba.l -$1662(a6), a4
db 0x9D, 0xA1 ; 005518: provisional 68k sub.l d6, -(a1)
db 0xFF, 0xFF ; 00551A: provisional 68k dc.w $ffff
db 0x03, 0x0F, 0x1A, 0xF9 ; 00551C: provisional 68k movep.w $1af9(a7), d1
db 0xDD, 0xD9 ; 005520: provisional 68k adda.l (a1)+, a6
db 0xE9, 0x99 ; 005522: provisional 68k rol.l #$4, d1
db 0x99, 0xDD ; 005524: provisional 68k suba.l (a5)+, a4
db 0xD9, 0x99 ; 005526: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 005528: provisional 68k sub.l d4, (a1)+
db 0xEE, 0xD9 ; file 00552A
db 0xE9, 0x9D ; 00552C: provisional 68k rol.l #$4, d5
db 0xFF, 0xFF ; 00552E: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 005530: provisional 68k btst.l d1, (a0)
db 0xFF, 0xF9 ; 005532: provisional 68k dc.w $fff9
db 0x9D, 0x99 ; 005534: provisional 68k sub.l d6, (a1)+
db 0x99, 0x99 ; 005536: provisional 68k sub.l d4, (a1)+
db 0xEE, 0x99 ; 005538: provisional 68k ror.l #$7, d1
db 0x99, 0x9E ; 00553A: provisional 68k sub.l d4, (a6)+
db 0xEE, 0x9F ; 00553C: provisional 68k ror.l #$7, d7
db 0x9E, 0x9D ; 00553E: provisional 68k sub.l (a5)+, d7
db 0x99, 0xD9 ; 005540: provisional 68k suba.l (a1)+, a4
db 0xD1, 0xFF ; file 005542
db 0xFF, 0x02 ; 005544: provisional 68k dc.w $ff02
db 0x11, 0x1F ; 005546: provisional 68k move.b (a7)+, -(a0)
db 0xAA, 0xAF ; 005548: provisional 68k dc.w $aaaf
db 0xDD, 0x99 ; 00554A: provisional 68k add.l d6, (a1)+
db 0xDE, 0x99 ; 00554C: provisional 68k add.l (a1)+, d7
db 0xEE, 0x99 ; 00554E: provisional 68k ror.l #$7, d1
db 0xE9, 0x9E ; 005550: provisional 68k rol.l #$4, d6
db 0xEE, 0x99 ; 005552: provisional 68k ror.l #$7, d1
db 0x9E, 0xE9, 0x99, 0x99 ; 005554: provisional 68k suba.w -$6667(a1), a7
db 0x9A, 0xFF ; file 005558
db 0xFF, 0x02 ; 00555A: provisional 68k dc.w $ff02
db 0x11, 0xAF, 0xAA, 0xAF, 0xD9, 0xD9 ; 00555C: provisional 68k move.b -$5551(a7), ([])
db 0x99, 0x99 ; 005562: provisional 68k sub.l d4, (a1)+
db 0xE9, 0x9E ; 005564: provisional 68k rol.l #$4, d6
db 0xEE, 0xEE ; file 005566
db 0xE9, 0x99 ; 005568: provisional 68k rol.l #$4, d1
db 0x99, 0xE9, 0x9E, 0x9D ; 00556A: provisional 68k suba.l -$6163(a1), a4
db 0x99, 0xFF ; file 00556E
db 0xFF, 0x01 ; 005570: provisional 68k dc.w $ff01
db 0x12, 0x1B ; 005572: provisional 68k move.b (a3)+, d1
db 0xBA, 0xFA, 0xAA, 0xD9 ; 005574: provisional 68k cmpa.w $4f(pc), a5
db 0xDF, 0xAA, 0xD9, 0x9E ; 005578: provisional 68k add.l d7, -$2662(a2)
db 0xEE, 0xEE ; file 00557C
db 0xE9, 0x99 ; 00557E: provisional 68k rol.l #$4, d1
db 0xEE, 0x9E ; 005580: provisional 68k ror.l #$7, d6
db 0xAA, 0xDE ; 005582: provisional 68k dc.w $aade
db 0x9D, 0x99 ; 005584: provisional 68k sub.l d6, (a1)+
db 0xFF, 0xFF ; 005586: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 005588: provisional 68k btst.l d0, (a3)
db 0x8B, 0x8B ; 00558A: provisional 68k dc.w $8b8b
db 0xAA, 0xAB ; 00558C: provisional 68k dc.w $aaab
db 0xAD, 0xFB ; 00558E: provisional 68k dc.w $adfb
db 0x88, 0x9E ; 005590: provisional 68k or.l (a6)+, d4
db 0x99, 0xEE, 0xEE, 0xEE ; 005592: provisional 68k suba.l -$1112(a6), a4
db 0xEE, 0xEE ; file 005596
db 0x9E, 0xAA, 0x9E, 0x9D ; 005598: provisional 68k sub.l -$6163(a2), d7
db 0xE9, 0xA1 ; 00559C: provisional 68k asl.l d4, d1
db 0xFF, 0xFF ; 00559E: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 0055A0: provisional 68k btst.l d0, (a3)
db 0xBA, 0xB8, 0xBF, 0x98 ; 0055A2: provisional 68k cmp.l $bf98.w, d5
db 0xBF, 0xD9 ; 0055A6: provisional 68k cmpa.l (a1)+, a7
db 0x9A, 0x99 ; 0055A8: provisional 68k sub.l (a1)+, d5
db 0x9F, 0xEE, 0x9E, 0xEE ; 0055AA: provisional 68k suba.l -$6112(a6), a7
db 0x9D, 0xDF ; 0055AE: provisional 68k suba.l (a7)+, a6
db 0xAD, 0xDD ; 0055B0: provisional 68k dc.w $addd
db 0x9E, 0x9D ; 0055B2: provisional 68k sub.l (a5)+, d7
db 0xD9, 0xF1, 0xFF, 0xFF, 0x00, 0x14, 0x1B, 0x8B ; 0055B4: provisional 68k adda.l ([$141b8b]), a4
db 0xAB, 0xBF ; 0055BC: provisional 68k dc.w $abbf
db 0xFB, 0xAA ; 0055BE: provisional 68k dc.w $fbaa
db 0xAF, 0x99 ; 0055C0: provisional 68k dc.w $af99
db 0xAA, 0xAA ; 0055C2: provisional 68k dc.w $aaaa
db 0xA9, 0xEE ; 0055C4: provisional 68k dc.w $a9ee
db 0xEE, 0xEE ; file 0055C6
db 0x99, 0xF9, 0xEE, 0x99, 0x9D, 0xDA ; 0055C8: provisional 68k suba.l $ee999dda.l, a4
db 0xF1, 0xFF ; 0055CE: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 0055D0: provisional 68k dc.w $ff00
db 0x14, 0x8B ; file 0055D2
db 0x88, 0xBB, 0xBA, 0xBB ; 0055D4: provisional 68k or.l $5591(pc, a3.l), d4
db 0xAA, 0xAB ; 0055D8: provisional 68k dc.w $aaab
db 0xBD, 0x9B ; 0055DA: provisional 68k eor.l d6, (a3)+
db 0xA9, 0xDA ; 0055DC: provisional 68k dc.w $a9da
db 0x9E, 0xEE, 0xE9, 0xFD ; 0055DE: provisional 68k suba.w -$1603(a6), a7
db 0xDE, 0xEE, 0xDF, 0xDA ; 0055E2: provisional 68k adda.w -$2026(a6), a7
db 0xEA, 0xF1 ; file 0055E6
db 0xFF, 0xFF ; 0055E8: provisional 68k dc.w $ffff
db 0x00, 0x14, 0x88, 0xBB ; 0055EA: provisional 68k ori.b #$bb, (a4)
db 0x88, 0xAA, 0x8B, 0xAA ; 0055EE: provisional 68k or.l -$7456(a2), d4
db 0xAA, 0xBA ; 0055F2: provisional 68k dc.w $aaba
db 0xF8, 0xFE ; 0055F4: provisional 68k dc.w $f8fe
db 0xAB, 0xAF ; 0055F6: provisional 68k dc.w $abaf
db 0xAA, 0xA9 ; 0055F8: provisional 68k dc.w $aaa9
db 0xE9, 0x9E ; 0055FA: provisional 68k rol.l #$4, d6
db 0xEE, 0xFA ; file 0055FC
db 0xFA, 0x9F ; 0055FE: provisional 68k dc.w $fa9f
db 0xF1, 0xFF ; 005600: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 005602: provisional 68k dc.w $ff00
db 0x14, 0x88 ; file 005604
db 0x8B, 0x88 ; 005606: provisional 68k dc.w $8b88
db 0xBB, 0xBB ; file 005608
db 0xBB, 0xAF, 0xAA, 0xAB ; 00560A: provisional 68k eor.l d5, -$5555(a7)
db 0xAD, 0xAB ; 00560E: provisional 68k dc.w $adab
db 0xF9, 0xFB ; 005610: provisional 68k dc.w $f9fb
db 0xBE, 0xEE, 0xE9, 0x99 ; 005612: provisional 68k cmpa.w -$1667(a6), a7
db 0xAF, 0x9A ; 005616: provisional 68k dc.w $af9a
db 0x9F, 0xFA, 0xFF, 0xFF ; 005618: provisional 68k suba.l $5619(pc), a7
db 0x00, 0x14, 0x88, 0x8B ; 00561C: provisional 68k ori.b #$8b, (a4)
db 0xBB, 0xB8, 0xBB, 0xBB ; 005620: provisional 68k eor.l d5, $bbbb.w
db 0xBA, 0xAF, 0xAA, 0xAA ; 005624: provisional 68k cmp.l -$5556(a7), d5
db 0xD9, 0xDD ; 005628: provisional 68k adda.l (a5)+, a4
db 0xED, 0xA9 ; 00562A: provisional 68k lsl.l d6, d1
db 0xEE, 0x9F ; 00562C: provisional 68k ror.l #$7, d7
db 0xF9, 0xFD ; 00562E: provisional 68k dc.w $f9fd
db 0x9F, 0xDA ; 005630: provisional 68k suba.l (a2)+, a7
db 0xAB, 0xFF ; 005632: provisional 68k dc.w $abff
db 0xFF, 0x00 ; 005634: provisional 68k dc.w $ff00
db 0x14, 0x88, 0x8B, 0xBB ; file 005636
db 0xB8, 0xBB, 0xAA, 0xB8 ; 00563A: provisional 68k cmp.l $55f4(pc, a2.l), d4
db 0xBB, 0x8B ; 00563E: provisional 68k cmpm.l (a3)+, (a5)+
db 0xAA, 0xAF ; 005640: provisional 68k dc.w $aaaf
db 0xFA, 0xAD ; 005642: provisional 68k dc.w $faad
db 0xE9, 0xF9, 0xED, 0xDE ; file 005644
db 0xDD, 0xED, 0xAA, 0xAB ; 005648: provisional 68k adda.l -$5555(a5), a6
db 0xFF, 0xFF ; 00564C: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0x88 ; 00564E: provisional 68k ori.b #$88, (a5)
db 0x88, 0x8B, 0xBB, 0xBB ; file 005652
db 0xB8, 0x8B ; 005656: provisional 68k cmp.l a3, d4
db 0x8B, 0xBA ; file 005658
db 0xAA, 0xAA ; 00565A: provisional 68k dc.w $aaaa
db 0x99, 0x99 ; 00565C: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00565E: provisional 68k sub.l d4, (a1)+
db 0x99, 0xAF, 0xED, 0xAF ; 005660: provisional 68k sub.l d4, -$1251(a7)
db 0xB8, 0xAA, 0xFF, 0xFF ; 005664: provisional 68k cmp.l -$1(a2), d4
db 0x00, 0x15, 0x88, 0x88 ; 005668: provisional 68k ori.b #$88, (a5)
db 0x88, 0x8B ; file 00566C
db 0xB8, 0x88 ; 00566E: provisional 68k cmp.l a0, d4
db 0xBA, 0xAA, 0xB8, 0x8B ; 005670: provisional 68k cmp.l -$4775(a2), d5
db 0xAA, 0xAF ; 005674: provisional 68k dc.w $aaaf
db 0xFF, 0xFF ; 005676: provisional 68k dc.w $ffff
db 0xB8, 0x8A ; 005678: provisional 68k cmp.l a2, d4
db 0xAA, 0x8A ; 00567A: provisional 68k dc.w $aa8a
db 0xED, 0xFD ; file 00567C
db 0xDD, 0xFB, 0xFF, 0xFF, 0x00, 0x15, 0x88, 0x88 ; 00567E: provisional 68k adda.l ([$15df08]), a6
db 0x8B, 0x88 ; 005686: provisional 68k dc.w $8b88
db 0x88, 0xB8, 0x8B, 0xBB ; 005688: provisional 68k or.l $8bbb.w, d4
db 0x88, 0x88 ; file 00568C
db 0x88, 0xAA, 0xBB, 0xAA ; 00568E: provisional 68k or.l -$4456(a2), d4
db 0xBB, 0xDE ; 005692: provisional 68k cmpa.l (a6)+, a5
db 0xEE, 0xDD, 0xED, 0xDF ; file 005694
db 0xFA, 0xA8 ; 005698: provisional 68k dc.w $faa8
db 0xFF, 0xFF ; 00569A: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0xB8 ; 00569C: provisional 68k ori.b #$b8, (a5)
db 0xBB, 0x88 ; 0056A0: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0056A2
db 0x88, 0xBA, 0xAF, 0xFD ; 0056A8: provisional 68k or.l $6a7(pc), d4
db 0xD9, 0xEE, 0xEE, 0xED ; 0056AC: provisional 68k adda.l -$1113(a6), a4
db 0xDD, 0xFA, 0xAB, 0xBB ; 0056B0: provisional 68k adda.l $26d(pc), a6
db 0xFF, 0xFF ; 0056B4: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0xB8 ; 0056B6: provisional 68k ori.b #$b8, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0056BA
db 0x88, 0xAA, 0xDD, 0xDE ; 0056C2: provisional 68k or.l -$2222(a2), d4
db 0xEE, 0xED ; file 0056C6
db 0xDF, 0xFA, 0xFD, 0xFA ; 0056C8: provisional 68k adda.l $54c4(pc), a7
db 0xB8, 0x88 ; 0056CC: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 0056CE: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8B, 0x88 ; 0056D0: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xBD ; file 0056D4
db 0xDF, 0xDE ; 0056DE: provisional 68k adda.l (a6)+, a7
db 0xEE, 0xDD ; file 0056E0
db 0xAA, 0xAB ; 0056E2: provisional 68k dc.w $aaab
db 0xAF, 0xFB ; 0056E4: provisional 68k dc.w $affb
db 0x88, 0xBB, 0xFF, 0xFF, 0x00, 0x15, 0x1B, 0xB8 ; 0056E6: provisional 68k or.l ([$1572a0]), d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 0056EE
db 0xFD, 0xDD ; 0056F8: provisional 68k dc.w $fddd
db 0xDD, 0xDF ; 0056FA: provisional 68k adda.l (a7)+, a6
db 0xBB, 0xBA ; file 0056FC
db 0xAA, 0xB8 ; 0056FE: provisional 68k dc.w $aab8
db 0x8C, 0xAB, 0xFF, 0xFF ; 005700: provisional 68k or.l -$1(a3), d6
db 0x01, 0x15 ; 005704: provisional 68k btst.l d0, (a5)
db 0xBB, 0x88 ; 005706: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xFD ; file 005708
db 0xD9, 0xDD ; 005712: provisional 68k adda.l (a5)+, a4
db 0xFA, 0x88 ; 005714: provisional 68k dc.w $fa88
db 0x8B, 0xBB ; file 005716
db 0x88, 0xBC, 0xCC, 0xCC, 0xFF, 0xFF ; 005718: provisional 68k or.l #$ccccffff, d4
db 0x01, 0x14 ; 00571E: provisional 68k btst.l d0, (a4)
db 0xBB, 0xB8, 0x88, 0x88 ; 005720: provisional 68k eor.l d5, $8888.w
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 005724
db 0xAF, 0xFF ; 00572A: provisional 68k dc.w $afff
db 0xDD, 0xEE, 0xBB, 0xBB ; 00572C: provisional 68k adda.l -$4445(a6), a6
db 0x88, 0xBB, 0x88, 0xCC ; 005730: provisional 68k or.l $56fe(pc, a0.l), d4
db 0xCC, 0xFF ; file 005734
db 0xFF, 0x01 ; 005736: provisional 68k dc.w $ff01
db 0x14, 0xBB, 0xB8, 0x88 ; 005738: provisional 68k move.b $56c2(pc, a3.l), (a2)
db 0x88, 0xB8, 0x88, 0x88 ; 00573C: provisional 68k or.l $8888.w, d4
db 0x88, 0x8B, 0x8B, 0xFD ; file 005740
db 0xDB, 0xAE, 0xEF, 0xCC ; 005744: provisional 68k add.l d5, -$1034(a6)
db 0x88, 0xAD, 0xFA, 0x8C ; 005748: provisional 68k or.l -$574(a5), d4
db 0xCC, 0xCC ; file 00574C
db 0xFF, 0xFF ; 00574E: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 005750: provisional 68k btst.l d0, (a4)
db 0x8B, 0xB8, 0x88, 0x8B ; 005752: provisional 68k or.l d5, $888b.w
db 0xB8, 0x88 ; 005756: provisional 68k cmp.l a0, d4
db 0x88, 0x88 ; file 005758
db 0x88, 0xBB, 0xAA, 0xAA ; 00575A: provisional 68k or.l $5706(pc, a2.l), d4
db 0x9E, 0xEC, 0x8C, 0x8B ; 00575E: provisional 68k suba.w -$7375(a4), a7
db 0xDE, 0x9D ; 005762: provisional 68k add.l (a5)+, d7
db 0xBA, 0xC8 ; 005764: provisional 68k cmpa.w a0, a5
db 0x88, 0xFF ; file 005766
db 0xFF, 0x01 ; 005768: provisional 68k dc.w $ff01
db 0x14, 0x1B ; 00576A: provisional 68k move.b (a3)+, d2
db 0xBB, 0x88 ; 00576C: provisional 68k cmpm.l (a0)+, (a5)+
db 0x8B, 0x88 ; 00576E: provisional 68k dc.w $8b88
db 0x88, 0x88, 0x88, 0x88 ; file 005770
db 0xBB, 0xAA, 0xBF, 0x99 ; 005774: provisional 68k eor.l d5, -$4067(a2)
db 0xCC, 0x8C ; file 005778
db 0xB9, 0xE9, 0x9D, 0xAA ; 00577A: provisional 68k cmpa.l -$6256(a1), a4
db 0x88, 0x88 ; file 00577E
db 0xFF, 0xFF ; 005780: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xBB, 0xB8 ; 005782: provisional 68k andi.b #$b8, (a3)
db 0x88, 0x8B, 0x88, 0x88, 0x88, 0x88, 0xBB, 0xFF ; file 005786
db 0xBB, 0xAA, 0xCC, 0xC8 ; 00578E: provisional 68k eor.l d5, -$3338(a2)
db 0xAE, 0xE9 ; 005792: provisional 68k dc.w $aee9
db 0x9F, 0xAB, 0x88, 0x88 ; 005794: provisional 68k sub.l d7, -$7778(a3)
db 0xFF, 0xFF ; 005798: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1B, 0xB8 ; 00579A: provisional 68k andi.b #$b8, (a3)
db 0x88, 0x8A ; file 00579E
db 0xF8, 0x88 ; 0057A0: provisional 68k dc.w $f888
db 0x8B, 0xB8, 0xBA, 0x99 ; 0057A2: provisional 68k or.l d5, $ba99.w
db 0xAB, 0xBB ; 0057A6: provisional 68k dc.w $abbb
db 0xBC, 0x88 ; 0057A8: provisional 68k cmp.l a0, d6
db 0xDE, 0xED, 0xAB, 0xBB ; 0057AA: provisional 68k adda.w -$5445(a5), a7
db 0xB8, 0x88 ; 0057AE: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 0057B0: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1A, 0xBB ; 0057B2: provisional 68k andi.b #$bb, (a3)
db 0xBB, 0xBB ; file 0057B6
db 0xEE, 0x88 ; 0057B8: provisional 68k lsr.l #$7, d0
db 0xBB, 0xBB ; file 0057BA
db 0xBD, 0xEE, 0xDB, 0xBB ; 0057BC: provisional 68k cmpa.l -$2445(a6), a6
db 0x88, 0x88 ; file 0057C0
db 0x9E, 0xDB ; 0057C2: provisional 68k suba.w (a3)+, a7
db 0x88, 0x8B ; file 0057C4
db 0xB8, 0x88 ; 0057C6: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 0057C8: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 0057CA: provisional 68k btst.l d1, (a2)
db 0xB8, 0xBB, 0xBB, 0xAD, 0xFA, 0xAA ; 0057CC: provisional 68k cmp.l ([$15278], a3.l * 2), d4
db 0xBA, 0xFD ; file 0057D2
db 0x99, 0xDA ; 0057D4: provisional 68k suba.l (a2)+, a4
db 0x88, 0x88 ; file 0057D6
db 0x8B, 0xDF ; 0057D8: provisional 68k divs.w (a7)+, d5
db 0x88, 0x88 ; file 0057DA
db 0x8B, 0xB8, 0x88, 0xFF ; 0057DC: provisional 68k or.l d5, $88ff.w
db 0xFF, 0x03 ; 0057E0: provisional 68k dc.w $ff03
db 0x12, 0xAB, 0x8B, 0x88 ; 0057E2: provisional 68k move.b -$7478(a3), (a1)
db 0xBB, 0xB8, 0xBB, 0xDE ; 0057E6: provisional 68k eor.l d5, $bbde.w
db 0xDD, 0xFF ; file 0057EA
db 0xFF, 0xDD ; 0057EC: provisional 68k dc.w $ffdd
db 0xED, 0xAD ; 0057EE: provisional 68k lsl.l d6, d5
db 0xB8, 0x88 ; 0057F0: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x88 ; file 0057F2
db 0xFF, 0xFF ; 0057F6: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 0057F8: provisional 68k btst.l d1, (a2)
db 0x1A, 0xB8, 0xBB, 0x8B ; 0057FA: provisional 68k move.b $bb8b.w, (a5)
db 0xAB, 0xBB ; 0057FE: provisional 68k dc.w $abbb
db 0xAF, 0xFA ; 005800: provisional 68k dc.w $affa
db 0xAA, 0xAA ; 005802: provisional 68k dc.w $aaaa
db 0xD9, 0xAB, 0xBF, 0xF8 ; 005804: provisional 68k add.l d4, -$4008(a3)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 005808
db 0xFF, 0x04 ; 00580E: provisional 68k dc.w $ff04
db 0x10, 0xAB, 0xB8, 0x8B ; 005810: provisional 68k move.b -$4775(a3), (a0)
db 0xFB, 0xBB ; 005814: provisional 68k dc.w $fbbb
db 0xBB, 0xBB ; file 005816
db 0xBB, 0xB8, 0xBB, 0x88 ; 005818: provisional 68k eor.l d5, $bb88.w
db 0x88, 0xAB, 0x88, 0x88 ; 00581C: provisional 68k or.l -$7778(a3), d4
db 0x88, 0x88 ; file 005820
db 0xFF, 0xFF ; 005822: provisional 68k dc.w $ffff
db 0x05, 0x0E, 0xA8, 0x1B ; 005824: provisional 68k movep.w -$57e5(a6), d2
db 0xAF, 0xAB ; 005828: provisional 68k dc.w $afab
db 0xBB, 0xBB ; file 00582A
db 0xBB, 0xB8, 0x88, 0x8B ; 00582C: provisional 68k eor.l d5, $888b.w
db 0xBB, 0xB8, 0x88, 0x88 ; 005830: provisional 68k eor.l d5, $8888.w
db 0xA1, 0xFF ; 005834: provisional 68k dc.w $a1ff
db 0xFF, 0x06 ; 005836: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xBD, 0xDB ; 005838: provisional 68k movep.w d6, -$4225(a0)
db 0xBB, 0xBB, 0xBB, 0xBB, 0x88, 0xBF ; file 00583C
db 0xFD, 0xDB ; 005842: provisional 68k dc.w $fddb
db 0x88, 0xBF, 0xD1, 0xFF ; file 005844
db 0xFF, 0x06 ; 005848: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xB8, 0xB8 ; 00584A: provisional 68k movep.w d6, -$4748(a0)
db 0x88, 0x88, 0x8B, 0xBB, 0x88, 0xBD ; file 00584E
db 0xDD, 0xED, 0xFD, 0xEE ; 005854: provisional 68k adda.l -$212(a5), a6
db 0xF1, 0xFF ; 005858: provisional 68k dc.w $f1ff
db 0xFF, 0x06 ; 00585A: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xB8, 0x88 ; 00585C: provisional 68k movep.w d6, -$4778(a0)
db 0x88, 0x88, 0x8B, 0xBB ; file 005860
db 0x88, 0xB9, 0xDD, 0xEE, 0xEE, 0xED ; 005864: provisional 68k or.l $ddeeeeed.l, d4
db 0xFB, 0xFF ; 00586A: provisional 68k dc.w $fbff
db 0xFF, 0x07 ; 00586C: provisional 68k dc.w $ff07
db 0x0C, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 00586E
db 0xBB, 0x8B ; 005874: provisional 68k cmpm.l (a3)+, (a5)+
db 0xD9, 0xDE ; 005876: provisional 68k adda.l (a6)+, a4
db 0xEE, 0xED ; file 005878
db 0xFD, 0xDB ; 00587A: provisional 68k dc.w $fddb
db 0xFF, 0xFF ; 00587C: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0x88 ; 00587E: provisional 68k movep.w -$7478(a4), d3
db 0x88, 0x88 ; file 005882
db 0x88, 0xBB, 0xBA, 0xDD ; 005884: provisional 68k or.l $5863(pc, a3.l), d4
db 0xDE, 0xDE ; 005888: provisional 68k adda.w (a6)+, a7
db 0xE9, 0xD9, 0x9B, 0xFF ; file 00588A
db 0xFF, 0x07 ; 00588E: provisional 68k dc.w $ff07
db 0x0C, 0x8B, 0x88, 0x88, 0x88, 0x88, 0xBB, 0xBA ; file 005890
db 0xAA, 0xAD ; 005898: provisional 68k dc.w $aaad
db 0xD9, 0xEE, 0xDD, 0xF1 ; 00589A: provisional 68k adda.l -$220f(a6), a4
db 0xFF, 0xFF ; 00589E: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1B, 0xB8 ; 0058A0: provisional 68k movep.w $1bb8(a4), d3
db 0x88, 0xB8, 0x88, 0x88 ; 0058A4: provisional 68k or.l $8888.w, d4
db 0x8B, 0xAB, 0xBF, 0xFF ; 0058A8: provisional 68k or.l d5, -$4001(a3)
db 0xFF, 0xFA ; 0058AC: provisional 68k dc.w $fffa
db 0xB1, 0xFF ; file 0058AE
db 0xFF, 0x07 ; 0058B0: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 0058B2: provisional 68k btst.l d5, (a3)+
db 0xBB, 0xBA ; file 0058B4
db 0xDF, 0xB8, 0x88, 0x88 ; 0058B6: provisional 68k add.l d7, $8888.w
db 0xBB, 0xBB ; file 0058BA
db 0xAA, 0xAA ; 0058BC: provisional 68k dc.w $aaaa
db 0xBB, 0xFF ; file 0058BE
db 0xFF, 0x07 ; 0058C0: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 0058C2: provisional 68k btst.l d5, (a3)+
db 0xB8, 0xBA, 0xEE, 0xEF ; 0058C4: provisional 68k cmp.l $47b5(pc), d4
db 0xB8, 0x88 ; 0058C8: provisional 68k cmp.l a0, d4
db 0x88, 0xCB ; file 0058CA
db 0xBB, 0xAB, 0xBB, 0xFF ; 0058CC: provisional 68k eor.l d5, -$4401(a3)
db 0xFF, 0x07 ; 0058D0: provisional 68k dc.w $ff07
db 0x0C, 0x1B, 0xBB, 0xBB ; 0058D2: provisional 68k cmpi.b #$bb, (a3)+
db 0xFE, 0xEE ; 0058D6: provisional 68k dc.w $feee
db 0xEB, 0x88 ; 0058D8: provisional 68k lsl.l #$5, d0
db 0x88, 0x88 ; file 0058DA
db 0x88, 0xB8, 0x88, 0xB1 ; 0058DC: provisional 68k or.l $88b1.w, d4
db 0xFF, 0xFF ; 0058E0: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0xBB, 0xBB ; file 0058E2
db 0xBF, 0xEE, 0xEE, 0xEF ; 0058E6: provisional 68k cmpa.l -$1111(a6), a7
db 0x88, 0x88, 0x88, 0x8B, 0x88, 0x88 ; file 0058EA
db 0xFF, 0xFF ; 0058F0: provisional 68k dc.w $ffff
db 0x08, 0x0B ; file 0058F2
db 0x1B, 0xBB, 0xBB, 0xA9, 0xEE, 0xEE, 0xDF, 0xB8, 0x88, 0x88, 0x88, 0x88 ; 0058F4: provisional 68k move.b ([$147e4, a3.l * 2]), $88888888(a5.l * 8)
db 0xFF, 0xFF ; 005900: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xBB, 0xBB ; 005902: provisional 68k movep.w -$4445(a2), d4
db 0xBA, 0xAF, 0xDD, 0xDF ; 005906: provisional 68k cmp.l -$2221(a7), d5
db 0xBB, 0xBB ; file 00590A
db 0x8B, 0xB8, 0x88, 0xFF ; 00590C: provisional 68k or.l d5, $88ff.w
db 0xFF, 0x0A ; 005910: provisional 68k dc.w $ff0a
db 0x09, 0xBB, 0xBB, 0xBB ; file 005912
db 0xFA, 0xAA ; 005916: provisional 68k dc.w $faaa
db 0xAA, 0xAB ; 005918: provisional 68k dc.w $aaab
db 0xBA, 0xBB, 0x88, 0xFF ; 00591A: provisional 68k cmp.l $591b(pc, a0.l), d5
db 0xFF, 0x0A ; 00591E: provisional 68k dc.w $ff0a
db 0x09, 0x1B ; 005920: provisional 68k btst.l d4, (a3)+
db 0xBB, 0x88 ; 005922: provisional 68k cmpm.l (a0)+, (a5)+
db 0xBB, 0xBA ; file 005924
db 0xAA, 0xAA ; 005926: provisional 68k dc.w $aaaa
db 0xFD, 0xFA ; 005928: provisional 68k dc.w $fdfa
db 0x88, 0xFF ; file 00592A
db 0xFF, 0x0B ; 00592C: provisional 68k dc.w $ff0b
db 0x07, 0xBB ; file 00592E
db 0xBB, 0x88 ; 005930: provisional 68k cmpm.l (a0)+, (a5)+
db 0x8B, 0xBA ; file 005932
db 0xD9, 0xDD ; 005934: provisional 68k adda.l (a5)+, a4
db 0xFB, 0xFF ; 005936: provisional 68k dc.w $fbff
db 0xFF, 0x0C ; 005938: provisional 68k dc.w $ff0c
db 0x06, 0xBB ; file 00593A
db 0xBB, 0xB8, 0x8A, 0xAF ; 00593C: provisional 68k eor.l d5, $8aaf.w
db 0xFF, 0xA8 ; 005940: provisional 68k dc.w $ffa8
db 0xFF, 0xFF ; 005942: provisional 68k dc.w $ffff
db 0x0D, 0x05 ; 005944: provisional 68k btst.l d6, d5
db 0x1A, 0xBB, 0xB8, 0x8B ; 005946: provisional 68k move.b $58d3(pc, a3.l), (a5)
db 0x88, 0x88 ; file 00594A
db 0xFF, 0xFF ; 00594C: provisional 68k dc.w $ffff
db 0x0E, 0x03 ; file 00594E
db 0x1B, 0xBB, 0xBB, 0x88, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF ; 005950: provisional 68k move.b (a3.l * 2), ([$ffffffff])
db 0x00, 0x07, 0x00, 0x00 ; 00595A: provisional 68k ori.b #$0, d7
db 0x00, 0x2A, 0x00, 0x34, 0x00, 0x00 ; 00595E: provisional 68k ori.b #$34, $0(a2)
db 0x00, 0x58, 0x00, 0x00 ; 005964: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x14 ; 005968: provisional 68k ori.b #$14, d0
db 0x00, 0x1A, 0x00, 0x00 ; 00596C: provisional 68k ori.b #$0, (a2)+
db 0x00, 0x03, 0x00, 0x03 ; 005970: provisional 68k ori.b #$3, d3
db 0x00, 0x0A ; file 005974
db 0x00, 0x00, 0x00, 0x00 ; 005976: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 00597A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 00597E: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x06 ; 005982: provisional 68k ori.b #$6, d2
db 0x03, 0xA6 ; 005986: provisional 68k bclr.b d1, -(a6)
db 0x07, 0x58 ; 005988: provisional 68k bchg.b d3, (a0)+
db 0x00, 0x00, 0x00, 0x00 ; 00598A: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x34, 0x00, 0x10 ; 00598E: provisional 68k ori.b #$34, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 005994
db 0x10, 0x10 ; 005998: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00599A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00599C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00599E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0059A0: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0059A4: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0059A8: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0059AA: provisional 68k neg.w d4
db 0x18, 0x20 ; 0059AC: provisional 68k move.b -(a0), d4
db 0x4C, 0x70 ; file 0059AE
db 0x74, 0x8C ; 0059B0: provisional 68k moveq #$8c, d2
db 0x20, 0x34, 0x98, 0x9C ; 0059B2: provisional 68k move.l -$64(a4, a1.l), d0
db 0x9C, 0xA8, 0x38, 0x58 ; 0059B6: provisional 68k sub.l $3858(a0), d6
db 0xDC, 0x54 ; 0059BA: provisional 68k add.w (a4), d6
db 0x58, 0x6C, 0xD0, 0xD0 ; 0059BC: provisional 68k addq.w #$4, -$2f30(a4)
db 0xD0, 0x7C, 0x80, 0xA4 ; 0059C0: provisional 68k add.w #$80a4, d0
db 0xFF, 0xFF ; 0059C4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0059C6: provisional 68k dc.w $ffff
db 0x0C, 0x03, 0x8C, 0xCC ; 0059C8: provisional 68k cmpi.b #$cc, d3
db 0xCC, 0xA8, 0xFF, 0xFF ; 0059CC: provisional 68k and.l -$1(a0), d6
db 0x0B, 0x02 ; 0059D0: provisional 68k btst.l d5, d2
db 0x88, 0xAA, 0xA8, 0xFF ; 0059D2: provisional 68k or.l -$5701(a2), d4
db 0xFF, 0x02 ; 0059D6: provisional 68k dc.w $ff02
db 0x00, 0x88, 0x08, 0x02, 0x88, 0x88 ; file 0059D8
db 0x88, 0x04 ; 0059DE: provisional 68k or.b d4, d4
db 0x00, 0x8A ; file 0059E0
db 0xFF, 0xFF ; 0059E2: provisional 68k dc.w $ffff
db 0x02, 0x00, 0xDB, 0x04 ; 0059E4: provisional 68k andi.b #$4, d0
db 0x08, 0x8A, 0xCC, 0xCC, 0xCC, 0xCA ; file 0059E8
db 0xAC, 0xCC ; 0059EE: provisional 68k dc.w $accc
db 0xCA, 0x88 ; file 0059F0
db 0x02, 0x02, 0x1B, 0xBC ; 0059F2: provisional 68k andi.b #$bc, d2
db 0xD8, 0xFF ; file 0059F6
db 0xFF, 0x01 ; 0059F8: provisional 68k dc.w $ff01
db 0x01, 0x1D ; 0059FA: provisional 68k btst.l d0, (a5)+
db 0xBD, 0x04 ; 0059FC: provisional 68k eor.b d6, d4
db 0x04, 0xAA, 0xCC, 0xCC, 0xCC, 0xCA, 0x06, 0x02 ; 0059FE: provisional 68k subi.l #$ccccccca, $602(a2)
db 0x88, 0xCB, 0xC8, 0xFF ; file 005A06
db 0xFF, 0x01 ; 005A0A: provisional 68k dc.w $ff01
db 0x01, 0x1E ; 005A0C: provisional 68k btst.l d0, (a6)+
db 0xDD, 0x04 ; 005A0E: provisional 68k addx.b d4, d6
db 0x04, 0xAA, 0xCC, 0xCC, 0xCC, 0xCA, 0x06, 0x02 ; 005A10: provisional 68k subi.l #$ccccccca, $602(a2)
db 0x8C, 0xCA ; file 005A18
db 0xA8, 0xFF ; 005A1A: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 005A1C: provisional 68k dc.w $ff01
db 0x01, 0x1E ; 005A1E: provisional 68k btst.l d0, (a6)+
db 0xDD, 0x04 ; 005A20: provisional 68k addx.b d4, d6
db 0x04, 0xAA, 0xCC, 0xCC, 0xCC, 0xCA, 0x06, 0x02 ; 005A22: provisional 68k subi.l #$ccccccca, $602(a2)
db 0x8C, 0xCA ; file 005A2A
db 0xA1, 0xFF ; 005A2C: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 005A2E: provisional 68k dc.w $ff01
db 0x0A, 0xDF ; file 005A30
db 0xDD, 0x88 ; 005A32: provisional 68k addx.l -(a0), -(a6)
db 0x8A, 0xAA, 0xAA, 0xAA ; 005A34: provisional 68k or.l -$5556(a2), d5
db 0xCA, 0xAC, 0xCC, 0xC8 ; 005A38: provisional 68k and.l -$3338(a4), d5
db 0x06, 0x02, 0xAA, 0xAA ; 005A3C: provisional 68k addi.b #$aa, d2
db 0xA1, 0xFF ; 005A40: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 005A42: provisional 68k dc.w $ff01
db 0x06, 0x99, 0xD9, 0x8A, 0xAC, 0xCC ; 005A44: provisional 68k addi.l #$d98aaccc, (a1)+
db 0xCC, 0xA8, 0x07, 0x05 ; 005A4A: provisional 68k and.l $705(a0), d6
db 0x88, 0x99 ; 005A4E: provisional 68k or.l (a1)+, d4
db 0x91, 0xCC ; 005A50: provisional 68k suba.l a4, a0
db 0xCA, 0xA1 ; 005A52: provisional 68k and.l -(a1), d5
db 0xFF, 0xFF ; 005A54: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 005A56: provisional 68k btst.l d0, d6
db 0xEB, 0xD9 ; file 005A58
db 0xAA, 0xAC ; 005A5A: provisional 68k dc.w $aaac
db 0xCC, 0xCC ; file 005A5C
db 0xA8, 0x07 ; 005A5E: provisional 68k dc.w $a807
db 0x05, 0xD9 ; 005A60: provisional 68k bset.b d2, (a1)+
db 0xDD, 0xD1 ; 005A62: provisional 68k adda.l (a1), a6
db 0xCB, 0xBC, 0x88, 0xFF ; file 005A64
db 0xFF, 0x01 ; 005A68: provisional 68k dc.w $ff01
db 0x06, 0xEE ; file 005A6A
db 0xF9, 0xAA ; 005A6C: provisional 68k dc.w $f9aa
db 0xAC, 0xCC ; 005A6E: provisional 68k dc.w $accc
db 0xCC, 0xA8, 0x05, 0x06 ; 005A70: provisional 68k and.l $506(a0), d6
db 0x88, 0xDF ; 005A74: provisional 68k divu.w (a7)+, d4
db 0xDD, 0xDD ; 005A76: provisional 68k adda.l (a5)+, a6
db 0xD8, 0xAA, 0xA8, 0xFF ; 005A78: provisional 68k add.l -$5701(a2), d4
db 0xFF, 0x01 ; 005A7C: provisional 68k dc.w $ff01
db 0x05, 0xEE, 0xEB, 0xAA ; 005A7E: provisional 68k bset.b d2, -$1456(a6)
db 0x88, 0x88 ; file 005A82
db 0x88, 0x04 ; 005A84: provisional 68k or.b d4, d4
db 0x08, 0x88 ; file 005A86
db 0xD9, 0x9F ; 005A88: provisional 68k add.l d4, (a7)+
db 0xDD, 0xDD ; 005A8A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 005A8C: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xA8 ; 005A8E: provisional 68k dc.w $aaa8
db 0xFF, 0xFF ; 005A90: provisional 68k dc.w $ffff
db 0x01, 0x05 ; 005A92: provisional 68k btst.l d0, d5
db 0xEE, 0xEE, 0xEB, 0xF9 ; file 005A94
db 0x9D, 0x88 ; 005A98: provisional 68k subx.l -(a0), -(a6)
db 0x01, 0x0B, 0x8D, 0xDD ; 005A9A: provisional 68k movep.w -$7223(a3), d0
db 0xD9, 0x99 ; 005A9E: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 005AA0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AA2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 005AA4: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xA8 ; 005AA6: provisional 68k dc.w $aaa8
db 0xFF, 0xFF ; 005AA8: provisional 68k dc.w $ffff
db 0x01, 0x05 ; 005AAA: provisional 68k btst.l d0, d5
db 0xEE, 0xEE, 0xEB, 0xF9 ; file 005AAC
db 0x9D, 0x88 ; 005AB0: provisional 68k subx.l -(a0), -(a6)
db 0x01, 0x0B, 0x8D, 0xDD ; 005AB2: provisional 68k movep.w -$7223(a3), d0
db 0xD9, 0x99 ; 005AB6: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 005AB8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005ABA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 005ABC: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xA8 ; 005ABE: provisional 68k dc.w $aaa8
db 0xFF, 0xFF ; 005AC0: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 005AC2: provisional 68k btst.l d0, (a2)
db 0xEE, 0xEE ; file 005AC4
db 0xEB, 0xBB ; 005AC6: provisional 68k rol.l d5, d3
db 0xBB, 0xFF ; file 005AC8
db 0x99, 0x9D ; 005ACA: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 005ACC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005ACE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AD0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AD2: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xAA, 0xA8, 0xFF ; 005AD4: provisional 68k add.l -$5701(a2), d5
db 0xFF, 0x01 ; 005AD8: provisional 68k dc.w $ff01
db 0x10, 0x9E ; 005ADA: provisional 68k move.b (a6)+, (a0)
db 0xEE, 0xEB, 0xBB, 0xBF ; file 005ADC
db 0x99, 0xDD ; 005AE0: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005AE2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AE4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AE6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AE8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD8 ; 005AEA: provisional 68k adda.l (a0)+, a6
db 0xFF, 0xFF ; 005AEC: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005AEE: provisional 68k btst.l d0, (a0)
db 0x9E, 0xEE, 0xEB, 0xBB ; 005AF0: provisional 68k suba.w -$1445(a6), a7
db 0xBF, 0x99 ; 005AF4: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 005AF6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AF8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AFA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AFC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005AFE: provisional 68k adda.l (a5)+, a6
db 0xD8, 0xFF ; file 005B00
db 0xFF, 0x01 ; 005B02: provisional 68k dc.w $ff01
db 0x10, 0xDE ; 005B04: provisional 68k move.b (a6)+, (a0)+
db 0xEE, 0xBB ; 005B06: provisional 68k ror.l d7, d3
db 0xBB, 0xBF ; file 005B08
db 0x99, 0xDD ; 005B0A: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005B0C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B0E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B10: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B12: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD8 ; 005B14: provisional 68k adda.l (a0)+, a6
db 0xFF, 0xFF ; 005B16: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005B18: provisional 68k btst.l d0, (a0)
db 0xDD, 0xBE, 0xBB, 0xBB ; file 005B1A
db 0xBF, 0x99 ; 005B1E: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 005B20: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B22: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B24: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B26: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B28: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005B2A
db 0xFF, 0x01 ; 005B2C: provisional 68k dc.w $ff01
db 0x10, 0x8D, 0x9B, 0xBB, 0xBB, 0xBF ; file 005B2E
db 0x99, 0xDD ; 005B34: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005B36: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B38: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B3A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B3C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 005B3E: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005B40: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005B42: provisional 68k btst.l d0, (a0)
db 0x8D, 0x99 ; 005B44: provisional 68k or.l d6, (a1)+
db 0xFB, 0xBF ; 005B46: provisional 68k dc.w $fbbf
db 0xFF, 0x99 ; 005B48: provisional 68k dc.w $ff99
db 0xDD, 0xDD ; 005B4A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005B4C: provisional 68k adda.l (a5)+, a6
db 0x99, 0x99 ; 005B4E: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 005B50: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 005B52: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005B54
db 0xFF, 0x01 ; 005B56: provisional 68k dc.w $ff01
db 0x10, 0x8D ; file 005B58
db 0x99, 0xFB, 0xBF, 0xFF, 0x99, 0xDD, 0xDD, 0xDD ; 005B5A: provisional 68k suba.l ([$99de3939]), a4
db 0xDD, 0x99 ; 005B62: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 005B64: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xDD ; 005B66: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD1 ; 005B68: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005B6A: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 005B6C: provisional 68k btst.l d0, d6
db 0x9B, 0x99 ; 005B6E: provisional 68k sub.l d5, (a1)+
db 0xD9, 0x99 ; 005B70: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 005B72: provisional 68k sub.l d4, (a1)+
db 0xD8, 0x02 ; 005B74: provisional 68k add.b d2, d4
db 0x07, 0x88, 0xDD, 0xD9 ; 005B76: provisional 68k movep.w d3, -$2227(a0)
db 0x99, 0x9D ; 005B7A: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 005B7C: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005B7E
db 0xFF, 0x01 ; 005B80: provisional 68k dc.w $ff01
db 0x06, 0x9E, 0xB9, 0x8D, 0x99, 0x99 ; 005B82: provisional 68k addi.l #$b98d9999, (a6)+
db 0x9D, 0x88 ; 005B88: provisional 68k subx.l -(a0), -(a6)
db 0x04, 0x05, 0xDD, 0xD9 ; 005B8A: provisional 68k subi.b #$d9, d5
db 0x9D, 0xDD ; 005B8E: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD1 ; 005B90: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005B92: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005B94: provisional 68k btst.l d0, (a0)
db 0xEE, 0xEE ; file 005B96
db 0xFD, 0xD9 ; 005B98: provisional 68k dc.w $fdd9
db 0x99, 0x9D ; 005B9A: provisional 68k sub.l d4, (a5)+
db 0x88, 0x88, 0x88, 0x88 ; file 005B9C
db 0xD8, 0x8D ; 005BA0: provisional 68k add.l a5, d4
db 0xDD, 0xDD ; 005BA2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BA4: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005BA6
db 0xFF, 0x01 ; 005BA8: provisional 68k dc.w $ff01
db 0x10, 0xEE, 0xEE, 0xEE ; 005BAA: provisional 68k move.b -$1112(a6), (a0)+
db 0xB9, 0x99 ; 005BAE: provisional 68k eor.l d4, (a1)+
db 0xDD, 0xDD ; 005BB0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BB2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BB4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BB6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BB8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 005BBA: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005BBC: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005BBE: provisional 68k btst.l d0, (a0)
db 0xEE, 0xEE, 0xEE, 0xEB ; file 005BC0
db 0xBB, 0xF9, 0xDD, 0xDD, 0xDD, 0xDD ; 005BC4: provisional 68k cmpa.l $dddddddd.l, a5
db 0xDD, 0xDD ; 005BCA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BCC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BCE: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005BD0
db 0xFF, 0x01 ; 005BD2: provisional 68k dc.w $ff01
db 0x10, 0xEE, 0xEE, 0xEE ; 005BD4: provisional 68k move.b -$1112(a6), (a0)+
db 0xEE, 0xEB ; file 005BD8
db 0xBF, 0x99 ; 005BDA: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 005BDC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BDE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BE0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BE2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 005BE4: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005BE6: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005BE8: provisional 68k btst.l d0, (a0)
db 0x9E, 0xEE, 0xEE, 0xEE ; 005BEA: provisional 68k suba.w -$1112(a6), a7
db 0xEB, 0xBF ; 005BEE: provisional 68k rol.l d5, d7
db 0x99, 0xDD ; 005BF0: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005BF2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BF4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BF6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005BF8: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005BFA
db 0xFF, 0x01 ; 005BFC: provisional 68k dc.w $ff01
db 0x10, 0xDE ; 005BFE: provisional 68k move.b (a6)+, (a0)+
db 0xEE, 0xEE, 0xEE, 0xEB ; file 005C00
db 0xBB, 0xF9, 0xDD, 0xDD, 0xDD, 0xDD ; 005C04: provisional 68k cmpa.l $dddddddd.l, a5
db 0xDD, 0xDD ; 005C0A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 005C0C: provisional 68k add.l d6, (a1)+
db 0x9D, 0xD1 ; 005C0E: provisional 68k suba.l (a1), a6
db 0xFF, 0xFF ; 005C10: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005C12: provisional 68k btst.l d0, (a0)
db 0x8D, 0xEE, 0xEE, 0xEB ; 005C14: provisional 68k divs.w -$1115(a6), d6
db 0xBB, 0xBB ; file 005C18
db 0xF9, 0xDD ; 005C1A: provisional 68k dc.w $f9dd
db 0xDD, 0xDD ; 005C1C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 005C1E: provisional 68k adda.l (a1)+, a6
db 0x99, 0x99 ; 005C20: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 005C22: provisional 68k sub.l d4, (a5)+
db 0xD1, 0xFF ; file 005C24
db 0xFF, 0x01 ; 005C26: provisional 68k dc.w $ff01
db 0x0F, 0x88, 0x9E, 0xEB ; 005C28: provisional 68k movep.w d7, -$6115(a0)
db 0xBB, 0xBB ; file 005C2C
db 0xFF, 0x99 ; 005C2E: provisional 68k dc.w $ff99
db 0xDD, 0xDD ; 005C30: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 005C32: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 005C34: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 005C36: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xFF ; file 005C38
db 0xFF, 0x02 ; 005C3A: provisional 68k dc.w $ff02
db 0x0E, 0xDB, 0xBB, 0xBB ; file 005C3C
db 0xBF, 0xF9, 0x9D, 0xDD, 0xDD, 0xDD ; 005C40: provisional 68k cmpa.l $9ddddddd.l, a7
db 0xDD, 0x99 ; 005C46: provisional 68k add.l d6, (a1)+
db 0x9F, 0xFF ; file 005C48
db 0x99, 0xD1 ; 005C4A: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 005C4C: provisional 68k dc.w $ffff
db 0x02, 0x0E ; file 005C4E
db 0x8D, 0xFB, 0xFF, 0xFF, 0x99, 0x9D, 0xD8, 0x88 ; 005C50: provisional 68k divs.w ([$999e34da]), d6
db 0x88, 0x8D ; file 005C58
db 0xD9, 0x9F ; 005C5A: provisional 68k add.l d4, (a7)+
db 0xFF, 0xF9 ; 005C5C: provisional 68k dc.w $fff9
db 0xD1, 0xFF ; file 005C5E
db 0xFF, 0x02 ; 005C60: provisional 68k dc.w $ff02
db 0x06, 0x8D ; file 005C62
db 0xD9, 0x99 ; 005C64: provisional 68k add.l d4, (a1)+
db 0x99, 0xDD ; 005C66: provisional 68k suba.l (a5)+, a4
db 0xD8, 0x88 ; 005C68: provisional 68k add.l a0, d4
db 0x02, 0x04, 0x1D, 0xD9 ; 005C6A: provisional 68k andi.b #$d9, d4
db 0x9F, 0xFF ; file 005C6E
db 0xFD, 0xFF ; 005C70: provisional 68k dc.w $fdff
db 0xFF, 0x02 ; 005C72: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 005C74
db 0xDD, 0x88 ; 005C76: provisional 68k addx.l -(a0), -(a6)
db 0x06, 0x04, 0x1D, 0x9F ; 005C78: provisional 68k addi.b #$9f, d4
db 0xFF, 0xFF ; 005C7C: provisional 68k dc.w $ffff
db 0x9D, 0xFF ; file 005C7E
db 0xFF, 0x02 ; 005C80: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 005C82
db 0xDD, 0x88 ; 005C84: provisional 68k addx.l -(a0), -(a6)
db 0x06, 0x04, 0x1D, 0x9F ; 005C86: provisional 68k addi.b #$9f, d4
db 0xFF, 0xFF ; 005C8A: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 005C8C
db 0xFF, 0x02 ; 005C8E: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 005C90
db 0xDD, 0x88 ; 005C92: provisional 68k addx.l -(a0), -(a6)
db 0x06, 0x04, 0x8D, 0x9F ; 005C94: provisional 68k addi.b #$9f, d4
db 0xFF, 0xF9 ; 005C98: provisional 68k dc.w $fff9
db 0xD1, 0xFF ; file 005C9A
db 0xFF, 0x02 ; 005C9C: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 005C9E
db 0xDD, 0x88 ; 005CA0: provisional 68k addx.l -(a0), -(a6)
db 0x06, 0x03, 0x89, 0xFF ; 005CA2: provisional 68k addi.b #$ff, d3
db 0xFF, 0xFD ; 005CA6: provisional 68k dc.w $fffd
db 0xFF, 0xFF ; 005CA8: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 005CAA: provisional 68k andi.b #$dd, d2
db 0x88, 0x05 ; 005CAE: provisional 68k or.b d5, d4
db 0x04, 0x88, 0xD9, 0xFF ; file 005CB0
db 0xFF, 0xD1 ; 005CB4: provisional 68k dc.w $ffd1
db 0xFF, 0xFF ; 005CB6: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 005CB8: provisional 68k andi.b #$dd, d2
db 0xDD, 0x05 ; 005CBC: provisional 68k addx.b d5, d6
db 0x03, 0x8D, 0x9F, 0xFF ; 005CBE: provisional 68k movep.w d1, -$6001(a5)
db 0xFD, 0xFF ; 005CC2: provisional 68k dc.w $fdff
db 0xFF, 0x03 ; 005CC4: provisional 68k dc.w $ff03
db 0x02, 0xDD ; file 005CC6
db 0xDD, 0xD1 ; 005CC8: provisional 68k adda.l (a1), a6
db 0x03, 0x04 ; 005CCA: provisional 68k btst.l d1, d4
db 0x88, 0xD9 ; 005CCC: provisional 68k divu.w (a1)+, d4
db 0xFF, 0xFF ; 005CCE: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 005CD0
db 0xFF, 0x03 ; 005CD2: provisional 68k dc.w $ff03
db 0x02, 0x8D ; file 005CD4
db 0xDD, 0xDD ; 005CD6: provisional 68k adda.l (a5)+, a6
db 0x02, 0x04, 0xDD, 0xD9 ; 005CD8: provisional 68k andi.b #$d9, d4
db 0xFF, 0xFF ; 005CDC: provisional 68k dc.w $ffff
db 0xFD, 0xFF ; 005CDE: provisional 68k dc.w $fdff
db 0xFF, 0x03 ; 005CE0: provisional 68k dc.w $ff03
db 0x09, 0x8D, 0xDD, 0xDD ; 005CE2: provisional 68k movep.w d4, -$2223(a5)
db 0xDD, 0xDD ; 005CE6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 005CE8: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 005CEA: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 005CEC
db 0xFF, 0x03 ; 005CEE: provisional 68k dc.w $ff03
db 0x08, 0x1D ; file 005CF0
db 0x99, 0x9D ; 005CF2: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xD9 ; 005CF4: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 005CF6: provisional 68k dc.w $ffff
db 0xBB, 0xFD ; file 005CF8
db 0xFF, 0xFF ; 005CFA: provisional 68k dc.w $ffff
db 0x03, 0x08, 0x1D, 0x99 ; 005CFC: provisional 68k movep.w $1d99(a0), d1
db 0x99, 0x99 ; 005D00: provisional 68k sub.l d4, (a1)+
db 0xFF, 0xFB ; 005D02: provisional 68k dc.w $fffb
db 0xBB, 0xB9, 0xD1, 0xFF, 0xFF, 0x04 ; 005D04: provisional 68k eor.l d5, $d1ffff04.l
db 0x06, 0xD9 ; file 005D0A
db 0x99, 0x9F ; 005D0C: provisional 68k sub.l d4, (a7)+
db 0xFF, 0xBB ; 005D0E: provisional 68k dc.w $ffbb
db 0xBF, 0xD1 ; 005D10: provisional 68k cmpa.l (a1), a7
db 0xFF, 0xFF ; 005D12: provisional 68k dc.w $ffff
db 0x04, 0x05, 0x1D, 0xD9 ; 005D14: provisional 68k subi.b #$d9, d5
db 0x9F, 0xFB, 0xFF, 0xD1 ; 005D18: provisional 68k suba.l ([$5d1a]), a7
db 0xFF, 0xFF ; 005D1C: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 005D1E: provisional 68k btst.l d2, d3
db 0x1D, 0xFF ; file 005D20
db 0xFD, 0xD1 ; 005D22: provisional 68k dc.w $fdd1
db 0xFF, 0xFF ; 005D24: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005D26: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005D28: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 005D2A: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x34, 0x00, 0x10 ; 005D2E: provisional 68k ori.b #$34, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 005D34
db 0x10, 0x10 ; 005D38: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 005D3A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 005D3C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 005D3E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 005D40: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 005D44: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 005D48: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 005D4A: provisional 68k neg.w d4
db 0x18, 0x1C ; 005D4C: provisional 68k move.b (a4)+, d4
db 0x50, 0x70, 0x74, 0x8C ; 005D4E: provisional 68k addq.w #$8, -$74(a0, d7.w)
db 0x24, 0x38, 0xA0, 0x9C ; 005D52: provisional 68k move.l $a09c.w, d2
db 0x9C, 0xA8, 0x3C, 0x58 ; 005D56: provisional 68k sub.l $3c58(a0), d6
db 0xE0, 0x54 ; 005D5A: provisional 68k roxr.w #$8, d4
db 0x58, 0x6C, 0xD0, 0xD0 ; 005D5C: provisional 68k addq.w #$4, -$2f30(a4)
db 0xD0, 0x7C, 0x80, 0xA4 ; 005D60: provisional 68k add.w #$80a4, d0
db 0x0E, 0x00, 0x88, 0xFF ; file 005D64
db 0xFF, 0x0E ; 005D68: provisional 68k dc.w $ff0e
db 0x00, 0x88 ; file 005D6A
db 0xFF, 0xFF ; 005D6C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005D6E: provisional 68k dc.w $ffff
db 0x12, 0x01 ; 005D70: provisional 68k move.b d1, d1
db 0x88, 0xA8, 0xFF, 0xFF ; 005D72: provisional 68k or.l -$1(a0), d4
db 0x02, 0x00, 0x88, 0x05 ; 005D76: provisional 68k andi.b #$5, d0
db 0x06, 0x1A, 0xAC, 0xCC ; 005D7A: provisional 68k addi.b #$cc, (a2)+
db 0xCC, 0xCA ; file 005D7E
db 0xA8, 0x88 ; 005D80: provisional 68k dc.w $a888
db 0x04, 0x01, 0x8C, 0xC8 ; 005D82: provisional 68k subi.b #$c8, d1
db 0xFF, 0xFF ; 005D86: provisional 68k dc.w $ffff
db 0x02, 0x00, 0xDB, 0x05 ; 005D88: provisional 68k andi.b #$5, d0
db 0x06, 0x1A, 0xAC, 0xCC ; 005D8C: provisional 68k addi.b #$cc, (a2)+
db 0xCC, 0xCC, 0xC8, 0x88 ; file 005D90
db 0x04, 0x01, 0x88, 0xA8 ; 005D94: provisional 68k subi.b #$a8, d1
db 0xFF, 0xFF ; 005D98: provisional 68k dc.w $ffff
db 0x01, 0x01 ; 005D9A: provisional 68k btst.l d0, d1
db 0x1D, 0xBD ; file 005D9C
db 0x05, 0x05 ; 005D9E: provisional 68k btst.l d2, d5
db 0x1C, 0xCA, 0xCC, 0xCC, 0xCC, 0xC8 ; file 005DA0
db 0x04, 0x02, 0x88, 0xAA ; 005DA6: provisional 68k subi.b #$aa, d2
db 0xA8, 0xFF ; 005DAA: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 005DAC: provisional 68k dc.w $ff01
db 0x01, 0x1E ; 005DAE: provisional 68k btst.l d0, (a6)+
db 0xDD, 0x01 ; 005DB0: provisional 68k addx.b d1, d6
db 0x09, 0x88, 0x8A, 0xAA ; 005DB2: provisional 68k movep.w d4, -$7556(a0)
db 0xAA, 0xAA ; 005DB6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 005DB8: provisional 68k dc.w $aaaa
db 0xCC, 0xCC ; file 005DBA
db 0xC8, 0x04 ; 005DBC: provisional 68k and.b d4, d4
db 0x02, 0xAC, 0xAA, 0xA8, 0xFF, 0xFF, 0x01, 0x01 ; 005DBE: provisional 68k andi.l #$aaa8ffff, $101(a4)
db 0x1E, 0xDD ; 005DC6: provisional 68k move.b (a5)+, (a7)+
db 0x01, 0x09, 0x88, 0x8A ; 005DC8: provisional 68k movep.w -$7776(a1), d0
db 0xAA, 0xAA ; 005DCC: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 005DCE: provisional 68k dc.w $aaaa
db 0xAA, 0xCC ; 005DD0: provisional 68k dc.w $aacc
db 0xCC, 0xC8 ; file 005DD2
db 0x04, 0x02, 0xAC, 0xAA ; 005DD4: provisional 68k subi.b #$aa, d2
db 0xA8, 0xFF ; 005DD8: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 005DDA: provisional 68k dc.w $ff01
db 0x01, 0xDF ; 005DDC: provisional 68k bset.b d0, (a7)+
db 0xDD, 0x01 ; 005DDE: provisional 68k addx.b d1, d6
db 0x05, 0x8A, 0xAA, 0xCC ; 005DE0: provisional 68k movep.w d2, -$5534(a2)
db 0xCC, 0xA8, 0x88, 0x08 ; 005DE4: provisional 68k and.l -$77f8(a0), d6
db 0x02, 0xAB, 0xBC, 0xA8, 0xFF, 0xFF, 0x01, 0x01 ; 005DE8: provisional 68k andi.l #$bca8ffff, $101(a3)
db 0x99, 0xD9 ; 005DF0: provisional 68k suba.l (a1)+, a4
db 0x01, 0x05 ; 005DF2: provisional 68k btst.l d0, d5
db 0x8C, 0xCA, 0xCC, 0xCC ; file 005DF4
db 0xA8, 0x88 ; 005DF8: provisional 68k dc.w $a888
db 0x05, 0x05 ; 005DFA: provisional 68k btst.l d2, d5
db 0x88, 0x99 ; 005DFC: provisional 68k or.l (a1)+, d4
db 0x98, 0xAB, 0xCC, 0x88 ; 005DFE: provisional 68k sub.l -$3378(a3), d4
db 0xFF, 0xFF ; 005E02: provisional 68k dc.w $ffff
db 0x01, 0x08, 0xEB, 0xD9 ; 005E04: provisional 68k movep.w -$1427(a0), d0
db 0x88, 0x8C, 0xCA, 0xCC ; file 005E08
db 0xCC, 0xA8, 0x88, 0x05 ; 005E0C: provisional 68k and.l -$77fb(a0), d6
db 0x05, 0xD9 ; 005E10: provisional 68k bset.b d2, (a1)+
db 0xDD, 0xD8 ; 005E12: provisional 68k adda.l (a0)+, a6
db 0xAA, 0xAA ; 005E14: provisional 68k dc.w $aaaa
db 0x88, 0xFF ; file 005E16
db 0xFF, 0x01 ; 005E18: provisional 68k dc.w $ff01
db 0x04, 0xEE ; file 005E1A
db 0xF9, 0xAA ; 005E1C: provisional 68k dc.w $f9aa
db 0xAA, 0xA8 ; 005E1E: provisional 68k dc.w $aaa8
db 0x07, 0x07 ; 005E20: provisional 68k btst.l d3, d7
db 0x88, 0xDF ; 005E22: provisional 68k divu.w (a7)+, d4
db 0xDD, 0xDD ; 005E24: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xAA, 0xAA, 0x88 ; 005E26: provisional 68k add.l -$5578(a2), d5
db 0xFF, 0xFF ; 005E2A: provisional 68k dc.w $ffff
db 0x01, 0x04 ; 005E2C: provisional 68k btst.l d0, d4
db 0xEE, 0xEB ; file 005E2E
db 0xAA, 0xAA ; 005E30: provisional 68k dc.w $aaaa
db 0xA8, 0x05 ; 005E32: provisional 68k dc.w $a805
db 0x09, 0x88, 0xD9, 0x9F ; 005E34: provisional 68k movep.w d4, -$2661(a0)
db 0xDD, 0xDD ; 005E38: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 005E3A: provisional 68k adda.l (a3)+, a6
db 0xCA, 0xAA, 0x88, 0xFF ; 005E3C: provisional 68k and.l -$7701(a2), d5
db 0xFF, 0x01 ; 005E40: provisional 68k dc.w $ff01
db 0x05, 0xEE, 0xEE, 0xEB ; 005E42: provisional 68k bset.b d2, -$1115(a6)
db 0xF9, 0x9D ; 005E46: provisional 68k dc.w $f99d
db 0x88, 0x01 ; 005E48: provisional 68k or.b d1, d4
db 0x0B, 0x8D, 0xDD, 0xD9 ; 005E4A: provisional 68k movep.w d5, -$2227(a5)
db 0x99, 0xDD ; 005E4E: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005E50: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005E52: provisional 68k adda.l (a5)+, a6
db 0xDC, 0xCA ; 005E54: provisional 68k adda.w a2, a6
db 0x88, 0xFF ; file 005E56
db 0xFF, 0x01 ; 005E58: provisional 68k dc.w $ff01
db 0x05, 0xEE, 0xEE, 0xEB ; 005E5A: provisional 68k bset.b d2, -$1115(a6)
db 0xF9, 0x9D ; 005E5E: provisional 68k dc.w $f99d
db 0x88, 0x01 ; 005E60: provisional 68k or.b d1, d4
db 0x0B, 0x8D, 0xDD, 0xD9 ; 005E62: provisional 68k movep.w d5, -$2227(a5)
db 0x99, 0xDD ; 005E66: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005E68: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005E6A: provisional 68k adda.l (a5)+, a6
db 0xDC, 0xCA ; 005E6C: provisional 68k adda.w a2, a6
db 0x88, 0xFF ; file 005E6E
db 0xFF, 0x01 ; 005E70: provisional 68k dc.w $ff01
db 0x11, 0xEE, 0xEE, 0xEB, 0xBB, 0xBB ; 005E72: provisional 68k move.b -$1115(a6), $bbbb.w
db 0xFF, 0x99 ; 005E78: provisional 68k dc.w $ff99
db 0x9D, 0xDD ; 005E7A: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 005E7C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005E7E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005E80: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 005E82: provisional 68k adda.l (a2)+, a6
db 0xA8, 0xFF ; 005E84: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 005E86: provisional 68k dc.w $ff01
db 0x11, 0x9E, 0xEE, 0xEB ; 005E88: provisional 68k move.b (a6)+, -$15(a0, a6.l)
db 0xBB, 0xBF ; file 005E8C
db 0x99, 0xDD ; 005E8E: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005E90: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005E92: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005E94: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005E96: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 005E98: provisional 68k adda.l (a2)+, a6
db 0xA8, 0xFF ; 005E9A: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 005E9C: provisional 68k dc.w $ff01
db 0x11, 0x9E, 0xEE, 0xEB ; 005E9E: provisional 68k move.b (a6)+, -$15(a0, a6.l)
db 0xBB, 0xBF ; file 005EA2
db 0x99, 0xDD ; 005EA4: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005EA6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EA8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EAA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EAC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 005EAE: provisional 68k adda.l (a2)+, a6
db 0xA8, 0xFF ; 005EB0: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 005EB2: provisional 68k dc.w $ff01
db 0x11, 0xDE, 0xEE, 0xBB ; 005EB4: provisional 68k move.b (a6)+, $eebb.w
db 0xBB, 0xBF ; file 005EB8
db 0x99, 0xDD ; 005EBA: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005EBC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EBE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EC0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EC2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 005EC4: provisional 68k adda.l (a2)+, a6
db 0x88, 0xFF ; file 005EC6
db 0xFF, 0x01 ; 005EC8: provisional 68k dc.w $ff01
db 0x10, 0xDD ; 005ECA: provisional 68k move.b (a5)+, (a0)+
db 0xBE, 0xBB, 0xBB, 0xBF, 0x99, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD ; 005ECC: provisional 68k cmp.l ([$99de3cab], a3.l * 2, $dddddddd), d7
db 0xDD, 0xDD ; 005ED8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 005EDA: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005EDC: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005EDE: provisional 68k btst.l d0, (a0)
db 0x8D, 0x9B ; 005EE0: provisional 68k or.l d6, (a3)+
db 0xBB, 0xBB ; file 005EE2
db 0xBF, 0x99 ; 005EE4: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 005EE6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EE8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EEA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EEC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005EEE: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005EF0
db 0xFF, 0x01 ; 005EF2: provisional 68k dc.w $ff01
db 0x10, 0x8D ; file 005EF4
db 0x99, 0xFB, 0xBF, 0xFF, 0x99, 0xDD, 0xDD, 0xDD ; 005EF6: provisional 68k suba.l ([$99de3cd5]), a4
db 0xDD, 0x99 ; 005EFE: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 005F00: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xDD ; 005F02: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD1 ; 005F04: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005F06: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005F08: provisional 68k btst.l d0, (a0)
db 0x8D, 0x99 ; 005F0A: provisional 68k or.l d6, (a1)+
db 0xFB, 0xBF ; 005F0C: provisional 68k dc.w $fbbf
db 0xFF, 0x99 ; 005F0E: provisional 68k dc.w $ff99
db 0xDD, 0xDD ; 005F10: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F12: provisional 68k adda.l (a5)+, a6
db 0x99, 0x99 ; 005F14: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 005F16: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 005F18: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005F1A
db 0xFF, 0x01 ; 005F1C: provisional 68k dc.w $ff01
db 0x06, 0x9B, 0x99, 0xD9, 0x99, 0x99 ; 005F1E: provisional 68k addi.l #$99d99999, (a3)+
db 0x99, 0xD8 ; 005F24: provisional 68k suba.l (a0)+, a4
db 0x02, 0x07, 0x88, 0xDD ; 005F26: provisional 68k andi.b #$dd, d7
db 0xD9, 0x99 ; 005F2A: provisional 68k add.l d4, (a1)+
db 0x9D, 0xDD ; 005F2C: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD1 ; 005F2E: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005F30: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 005F32: provisional 68k btst.l d0, d6
db 0x9E, 0xB9, 0x8D, 0x99, 0x99, 0x9D ; 005F34: provisional 68k sub.l $8d99999d.l, d7
db 0x88, 0x04 ; 005F3A: provisional 68k or.b d4, d4
db 0x05, 0xDD ; 005F3C: provisional 68k bset.b d2, (a5)+
db 0xD9, 0x9D ; 005F3E: provisional 68k add.l d4, (a5)+
db 0xDD, 0xDD ; 005F40: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005F42
db 0xFF, 0x01 ; 005F44: provisional 68k dc.w $ff01
db 0x10, 0xEE, 0xEE, 0xFD ; 005F46: provisional 68k move.b -$1103(a6), (a0)+
db 0xD9, 0x99 ; 005F4A: provisional 68k add.l d4, (a1)+
db 0x9D, 0x88 ; 005F4C: provisional 68k subx.l -(a0), -(a6)
db 0x88, 0x88 ; file 005F4E
db 0x88, 0xD8 ; 005F50: provisional 68k divu.w (a0)+, d4
db 0x8D, 0xDD ; 005F52: provisional 68k divs.w (a5)+, d6
db 0xDD, 0xDD ; 005F54: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 005F56: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005F58: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005F5A: provisional 68k btst.l d0, (a0)
db 0xEE, 0xEE ; file 005F5C
db 0xEE, 0xB9 ; 005F5E: provisional 68k ror.l d7, d1
db 0x99, 0xDD ; 005F60: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005F62: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F64: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F66: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F68: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F6A: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005F6C
db 0xFF, 0x01 ; 005F6E: provisional 68k dc.w $ff01
db 0x10, 0xEE, 0xEE, 0xEE ; 005F70: provisional 68k move.b -$1112(a6), (a0)+
db 0xEB, 0xBB ; 005F74: provisional 68k rol.l d5, d3
db 0xF9, 0xDD ; 005F76: provisional 68k dc.w $f9dd
db 0xDD, 0xDD ; 005F78: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F7A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F7C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F7E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 005F80: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005F82: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005F84: provisional 68k btst.l d0, (a0)
db 0xEE, 0xEE, 0xEE, 0xEE ; file 005F86
db 0xEB, 0xBF ; 005F8A: provisional 68k rol.l d5, d7
db 0x99, 0xDD ; 005F8C: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005F8E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F90: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F92: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005F94: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 005F96
db 0xFF, 0x01 ; 005F98: provisional 68k dc.w $ff01
db 0x10, 0x9E ; 005F9A: provisional 68k move.b (a6)+, (a0)
db 0xEE, 0xEE, 0xEE, 0xEB ; file 005F9C
db 0xBF, 0x99 ; 005FA0: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 005FA2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005FA4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005FA6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005FA8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 005FAA: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 005FAC: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 005FAE: provisional 68k btst.l d0, (a0)
db 0xDE, 0xEE, 0xEE, 0xEE ; 005FB0: provisional 68k adda.w -$1112(a6), a7
db 0xEB, 0xBB ; 005FB4: provisional 68k rol.l d5, d3
db 0xF9, 0xDD ; 005FB6: provisional 68k dc.w $f9dd
db 0xDD, 0xDD ; 005FB8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005FBA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005FBC: provisional 68k adda.l (a5)+, a6
db 0x99, 0x9D ; 005FBE: provisional 68k sub.l d4, (a5)+
db 0xD1, 0xFF ; file 005FC0
db 0xFF, 0x01 ; 005FC2: provisional 68k dc.w $ff01
db 0x10, 0x8D, 0xEE, 0xEE ; file 005FC4
db 0xEB, 0xBB ; 005FC8: provisional 68k rol.l d5, d3
db 0xBB, 0xF9, 0xDD, 0xDD, 0xDD, 0xDD ; 005FCA: provisional 68k cmpa.l $dddddddd.l, a5
db 0xD9, 0x99 ; 005FD0: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 005FD2: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xD1 ; 005FD4: provisional 68k suba.l (a1), a6
db 0xFF, 0xFF ; 005FD6: provisional 68k dc.w $ffff
db 0x01, 0x0F, 0x88, 0x9E ; 005FD8: provisional 68k movep.w -$7762(a7), d0
db 0xEB, 0xBB ; 005FDC: provisional 68k rol.l d5, d3
db 0xBB, 0xFF ; file 005FDE
db 0x99, 0xDD ; 005FE0: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005FE2: provisional 68k adda.l (a5)+, a6
db 0x99, 0x99 ; 005FE4: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 005FE6: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 005FE8: provisional 68k sub.l d4, (a5)+
db 0xFF, 0xFF ; 005FEA: provisional 68k dc.w $ffff
db 0x02, 0x0E, 0xDB, 0xBB, 0xBB, 0xBF ; file 005FEC
db 0xF9, 0x9D ; 005FF2: provisional 68k dc.w $f99d
db 0xDD, 0xDD ; 005FF4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005FF6: provisional 68k adda.l (a5)+, a6
db 0x99, 0x9F ; 005FF8: provisional 68k sub.l d4, (a7)+
db 0xFF, 0x99 ; 005FFA: provisional 68k dc.w $ff99
db 0xD1, 0xFF ; file 005FFC
db 0xFF, 0x02 ; 005FFE: provisional 68k dc.w $ff02
db 0x0E, 0x8D ; file 006000
db 0xFB, 0xFF ; 006002: provisional 68k dc.w $fbff
db 0xFF, 0x99 ; 006004: provisional 68k dc.w $ff99
db 0x9D, 0xD8 ; 006006: provisional 68k suba.l (a0)+, a6
db 0x88, 0x88 ; file 006008
db 0x8D, 0xD9 ; 00600A: provisional 68k divs.w (a1)+, d6
db 0x9F, 0xFF ; file 00600C
db 0xF9, 0xD1 ; 00600E: provisional 68k dc.w $f9d1
db 0xFF, 0xFF ; 006010: provisional 68k dc.w $ffff
db 0x02, 0x06, 0x8D, 0xD9 ; 006012: provisional 68k andi.b #$d9, d6
db 0x99, 0x99 ; 006016: provisional 68k sub.l d4, (a1)+
db 0xDD, 0xD8 ; 006018: provisional 68k adda.l (a0)+, a6
db 0x88, 0x02 ; 00601A: provisional 68k or.b d2, d4
db 0x04, 0x1D, 0xD9, 0x9F ; 00601C: provisional 68k subi.b #$9f, (a5)+
db 0xFF, 0xFD ; 006020: provisional 68k dc.w $fffd
db 0xFF, 0xFF ; 006022: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006024: provisional 68k andi.b #$dd, d2
db 0x88, 0x06 ; 006028: provisional 68k or.b d6, d4
db 0x04, 0x1D, 0x9F, 0xFF ; 00602A: provisional 68k subi.b #$ff, (a5)+
db 0xFF, 0x9D ; 00602E: provisional 68k dc.w $ff9d
db 0xFF, 0xFF ; 006030: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006032: provisional 68k andi.b #$dd, d2
db 0x88, 0x06 ; 006036: provisional 68k or.b d6, d4
db 0x04, 0x1D, 0x9F, 0xFF ; 006038: provisional 68k subi.b #$ff, (a5)+
db 0xFF, 0xD1 ; 00603C: provisional 68k dc.w $ffd1
db 0xFF, 0xFF ; 00603E: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006040: provisional 68k andi.b #$dd, d2
db 0x88, 0x06 ; 006044: provisional 68k or.b d6, d4
db 0x04, 0x8D, 0x9F, 0xFF ; file 006046
db 0xF9, 0xD1 ; 00604A: provisional 68k dc.w $f9d1
db 0xFF, 0xFF ; 00604C: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 00604E: provisional 68k andi.b #$dd, d2
db 0x88, 0x06 ; 006052: provisional 68k or.b d6, d4
db 0x03, 0x89, 0xFF, 0xFF ; 006054: provisional 68k movep.w d1, -$1(a1)
db 0xFD, 0xFF ; 006058: provisional 68k dc.w $fdff
db 0xFF, 0x02 ; 00605A: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 00605C
db 0xDD, 0xD1 ; 00605E: provisional 68k adda.l (a1), a6
db 0x05, 0x04 ; 006060: provisional 68k btst.l d2, d4
db 0x88, 0xD9 ; 006062: provisional 68k divu.w (a1)+, d4
db 0xFF, 0xFF ; 006064: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 006066
db 0xFF, 0x02 ; 006068: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 00606A
db 0xDD, 0xDD ; 00606C: provisional 68k adda.l (a5)+, a6
db 0x05, 0x03 ; 00606E: provisional 68k btst.l d2, d3
db 0x8D, 0x9F ; 006070: provisional 68k or.l d6, (a7)+
db 0xFF, 0xFD ; 006072: provisional 68k dc.w $fffd
db 0xFF, 0xFF ; 006074: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 006076: provisional 68k btst.l d1, d2
db 0xDD, 0xDD ; 006078: provisional 68k adda.l (a5)+, a6
db 0xD1, 0x03 ; 00607A: provisional 68k addx.b d3, d0
db 0x04, 0x88, 0xD9, 0xFF ; file 00607C
db 0xFF, 0xD1 ; 006080: provisional 68k dc.w $ffd1
db 0xFF, 0xFF ; 006082: provisional 68k dc.w $ffff
db 0x03, 0x03 ; 006084: provisional 68k btst.l d1, d3
db 0x8D, 0xDD ; 006086: provisional 68k divs.w (a5)+, d6
db 0xDD, 0xD1 ; 006088: provisional 68k adda.l (a1), a6
db 0x01, 0x04 ; 00608A: provisional 68k btst.l d0, d4
db 0xDD, 0xD9 ; 00608C: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 00608E: provisional 68k dc.w $ffff
db 0xFD, 0xFF ; 006090: provisional 68k dc.w $fdff
db 0xFF, 0x03 ; 006092: provisional 68k dc.w $ff03
db 0x09, 0x8D, 0xDD, 0xDD ; 006094: provisional 68k movep.w d4, -$2223(a5)
db 0xDD, 0xDD ; 006098: provisional 68k adda.l (a5)+, a6
db 0x8D, 0xD9 ; 00609A: provisional 68k divs.w (a1)+, d6
db 0xFF, 0xFF ; 00609C: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 00609E
db 0xFF, 0x03 ; 0060A0: provisional 68k dc.w $ff03
db 0x08, 0x1D ; file 0060A2
db 0x99, 0x9D ; 0060A4: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xD9 ; 0060A6: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 0060A8: provisional 68k dc.w $ffff
db 0xBB, 0xFD ; file 0060AA
db 0xFF, 0xFF ; 0060AC: provisional 68k dc.w $ffff
db 0x03, 0x08, 0x1D, 0x99 ; 0060AE: provisional 68k movep.w $1d99(a0), d1
db 0x99, 0x99 ; 0060B2: provisional 68k sub.l d4, (a1)+
db 0xFF, 0xFB ; 0060B4: provisional 68k dc.w $fffb
db 0xBB, 0xB9, 0xD1, 0xFF, 0xFF, 0x04 ; 0060B6: provisional 68k eor.l d5, $d1ffff04.l
db 0x06, 0xD9 ; file 0060BC
db 0x99, 0x9F ; 0060BE: provisional 68k sub.l d4, (a7)+
db 0xFF, 0xBB ; 0060C0: provisional 68k dc.w $ffbb
db 0xBF, 0xD1 ; 0060C2: provisional 68k cmpa.l (a1), a7
db 0xFF, 0xFF ; 0060C4: provisional 68k dc.w $ffff
db 0x04, 0x05, 0x1D, 0xD9 ; 0060C6: provisional 68k subi.b #$d9, d5
db 0x9F, 0xFB, 0xFF, 0xD1 ; 0060CA: provisional 68k suba.l ([$60cc]), a7
db 0xFF, 0xFF ; 0060CE: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 0060D0: provisional 68k btst.l d2, d3
db 0x1D, 0xFF ; file 0060D2
db 0xFD, 0xD1 ; 0060D4: provisional 68k dc.w $fdd1
db 0xFF, 0xFF ; 0060D6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0060D8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0060DA: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0060DC: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x34, 0x00, 0x10 ; 0060E0: provisional 68k ori.b #$34, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 0060E6
db 0x10, 0x10 ; 0060EA: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0060EC: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0060EE: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0060F0: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0060F2: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0060F6: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0060FA: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0060FC: provisional 68k neg.w d4
db 0x54, 0x58 ; 0060FE: provisional 68k addq.w #$2, (a0)+
db 0x6C, 0x18 ; 006100: provisional 68k bge.b $611a
db 0x20, 0x50 ; 006102: provisional 68k movea.l (a0), a0
db 0x70, 0x74 ; 006104: provisional 68k moveq #$74, d0
db 0x8C, 0x24 ; 006106: provisional 68k or.b -(a4), d6
db 0x38, 0x9C ; 006108: provisional 68k move.w (a4)+, (a4)
db 0xD0, 0xD0 ; 00610A: provisional 68k adda.w (a0), a0
db 0xD0, 0x3C, 0x58, 0xE0 ; 00610C: provisional 68k add.b #$e0, d0
db 0x98, 0x98 ; 006110: provisional 68k sub.l (a0)+, d4
db 0xAC, 0x78 ; 006112: provisional 68k dc.w $ac78
db 0x7C, 0xA8 ; 006114: provisional 68k moveq #$a8, d6
db 0xFF, 0xFF ; 006116: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006118: provisional 68k dc.w $ffff
db 0x0F, 0x00 ; 00611A: provisional 68k btst.l d7, d0
db 0x99, 0xFF ; file 00611C
db 0xFF, 0x0A ; 00611E: provisional 68k dc.w $ff0a
db 0x05, 0x1B ; 006120: provisional 68k btst.l d2, (a3)+
db 0xDD, 0xDD ; 006122: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 006124: provisional 68k adda.l (a3)+, a6
db 0x99, 0x04 ; 006126: provisional 68k subx.b d4, d4
db 0x00, 0x99, 0xFF, 0xFF, 0x02, 0x00 ; 006128: provisional 68k ori.l #$ffff0200, (a1)+
db 0x99, 0x07 ; 00612E: provisional 68k subx.b d7, d4
db 0x04, 0x9B, 0xDD, 0xDD, 0xDD, 0xDB ; 006130: provisional 68k subi.l #$dddddddb, (a3)+
db 0x04, 0x01, 0x99, 0xB1 ; 006136: provisional 68k subi.b #$b1, d1
db 0xFF, 0xFF ; 00613A: provisional 68k dc.w $ffff
db 0x02, 0x00, 0x8E, 0x07 ; 00613C: provisional 68k andi.b #$7, d0
db 0x04, 0x9B, 0xDD, 0xDD, 0xDD, 0xB9 ; 006140: provisional 68k subi.l #$ddddddb9, (a3)+
db 0x03, 0x01 ; 006146: provisional 68k btst.l d1, d1
db 0x9B, 0xB9, 0xFF, 0xFF, 0x01, 0x01 ; 006148: provisional 68k sub.l d5, $ffff0101.l
db 0x18, 0xE8, 0x03, 0x09 ; 00614E: provisional 68k move.b $309(a0), (a4)+
db 0xBB, 0xBB, 0xBB, 0xBD, 0xBB, 0xBB ; file 006152
db 0xDD, 0xDD ; 006158: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 00615A: provisional 68k add.l d6, (a1)+
db 0x02, 0x02, 0x9E, 0xDB ; 00615C: provisional 68k andi.b #$db, d2
db 0x99, 0xFF ; file 006160
db 0xFF, 0x01 ; 006162: provisional 68k dc.w $ff01
db 0x01, 0x1C ; 006164: provisional 68k btst.l d0, (a4)+
db 0x88, 0x03 ; 006166: provisional 68k or.b d3, d4
db 0x04, 0xBB ; file 006168
db 0xDD, 0xDD ; 00616A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xB9, 0x07, 0x02, 0x9E, 0xEE ; 00616C: provisional 68k add.l d6, $7029eee.l
db 0xE9, 0xFF ; file 006172
db 0xFF, 0x01 ; 006174: provisional 68k dc.w $ff01
db 0x01, 0x1C ; 006176: provisional 68k btst.l d0, (a4)+
db 0x88, 0x03 ; 006178: provisional 68k or.b d3, d4
db 0x04, 0xBB ; file 00617A
db 0xDD, 0xDD ; 00617C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xB9, 0x07, 0x02, 0x9E, 0xEE ; 00617E: provisional 68k add.l d6, $7029eee.l
db 0xE9, 0xFF ; file 006184
db 0xFF, 0x01 ; 006186: provisional 68k dc.w $ff01
db 0x01, 0x8E, 0x88, 0x03 ; 006188: provisional 68k movep.w d0, -$77fd(a6)
db 0x04, 0xDB ; file 00618C
db 0xDD, 0xDD ; 00618E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xB9, 0x07, 0x02, 0x9D, 0xDD ; 006190: provisional 68k add.l d6, $7029ddd.l
db 0xB1, 0xFF ; file 006196
db 0xFF, 0x01 ; 006198: provisional 68k dc.w $ff01
db 0x09, 0xAA, 0x8A, 0x99 ; 00619A: provisional 68k bclr.b d4, -$7567(a2)
db 0x99, 0x99 ; 00619E: provisional 68k sub.l d4, (a1)+
db 0xBB, 0xDD ; 0061A0: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 0061A2: provisional 68k adda.l (a5)+, a6
db 0xB1, 0x04 ; 0061A4: provisional 68k eor.b d0, d4
db 0x05, 0x99 ; 0061A6: provisional 68k bclr.b d2, (a1)+
db 0xAA, 0xA9 ; 0061A8: provisional 68k dc.w $aaa9
db 0xBB, 0xBB, 0xB1, 0xFF ; file 0061AA
db 0xFF, 0x01 ; 0061AE: provisional 68k dc.w $ff01
db 0x05, 0xCE, 0x8A, 0xBB ; 0061B0: provisional 68k movep.l d2, -$7545(a6)
db 0xBB, 0xBB ; file 0061B4
db 0xB1, 0x08 ; 0061B6: provisional 68k cmpm.b (a0)+, (a0)+
db 0x05, 0x8A, 0x88, 0x8B ; 0061B8: provisional 68k movep.w d2, -$7775(a2)
db 0xDB, 0xBB, 0xB1, 0xFF ; file 0061BC
db 0xFF, 0x01 ; 0061C0: provisional 68k dc.w $ff01
db 0x05, 0xCC, 0xEA, 0xBB ; 0061C2: provisional 68k movep.l d2, -$1545(a4)
db 0xBB, 0xBB ; file 0061C6
db 0xB1, 0x06 ; 0061C8: provisional 68k eor.b d0, d6
db 0x07, 0x99 ; 0061CA: provisional 68k bclr.b d3, (a1)+
db 0x8E, 0x88, 0x88, 0x8B, 0xEE, 0xDB, 0x99, 0xFF ; file 0061CC
db 0xFF, 0x01 ; 0061D4: provisional 68k dc.w $ff01
db 0x05, 0xCC, 0xCE, 0xBB ; 0061D6: provisional 68k movep.l d2, -$3145(a4)
db 0xBB, 0xBB ; file 0061DA
db 0xB1, 0x04 ; 0061DC: provisional 68k eor.b d0, d4
db 0x08, 0x99 ; file 0061DE
db 0x8A, 0xAE, 0x88, 0x88 ; 0061E0: provisional 68k or.l -$7778(a6), d5
db 0x88, 0x8B ; file 0061E4
db 0xDD, 0xB1, 0xFF, 0xFF, 0x01, 0x05, 0xCC, 0xCC ; 0061E6: provisional 68k add.l d6, ([$105cccc])
db 0xCE, 0xEA, 0xA8, 0x99 ; 0061EE: provisional 68k mulu.w -$5767(a2), d7
db 0x01, 0x0B, 0x98, 0x88 ; 0061F2: provisional 68k movep.w -$6778(a3), d0
db 0x8A, 0xAA, 0x88, 0x88 ; 0061F6: provisional 68k or.l -$7778(a2), d5
db 0x88, 0x88, 0x88, 0x8B ; file 0061FA
db 0xBB, 0x99 ; 0061FE: provisional 68k eor.l d5, (a1)+
db 0xFF, 0xFF ; 006200: provisional 68k dc.w $ffff
db 0x01, 0x05 ; 006202: provisional 68k btst.l d0, d5
db 0xCC, 0xCC ; file 006204
db 0xCE, 0xEA, 0xA8, 0x99 ; 006206: provisional 68k mulu.w -$5767(a2), d7
db 0x01, 0x0B, 0x98, 0x88 ; 00620A: provisional 68k movep.w -$6778(a3), d0
db 0x8A, 0xAA, 0x88, 0x88 ; 00620E: provisional 68k or.l -$7778(a2), d5
db 0x88, 0x88, 0x88, 0x8B ; file 006212
db 0xBB, 0x99 ; 006216: provisional 68k eor.l d5, (a1)+
db 0xFF, 0xFF ; 006218: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 00621A: provisional 68k btst.l d0, (a2)
db 0xCC, 0xCC ; file 00621C
db 0xCE, 0xEE, 0xEE, 0xEE ; 00621E: provisional 68k mulu.w -$1112(a6), d7
db 0xAA, 0xA8 ; 006222: provisional 68k dc.w $aaa8
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xBB, 0x99, 0xFF ; file 006224
db 0xFF, 0x01 ; 006230: provisional 68k dc.w $ff01
db 0x12, 0xAC, 0xCC, 0xCE ; 006232: provisional 68k move.b -$3332(a4), (a1)
db 0xEE, 0xEE ; file 006236
db 0xAA, 0x88 ; 006238: provisional 68k dc.w $aa88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 00623A
db 0xBB, 0x99 ; 006244: provisional 68k eor.l d5, (a1)+
db 0xFF, 0xFF ; 006246: provisional 68k dc.w $ffff
db 0x01, 0x11 ; 006248: provisional 68k btst.l d0, (a1)
db 0xAC, 0xCC ; 00624A: provisional 68k dc.w $accc
db 0xCE, 0xEE, 0xEE, 0xAA ; 00624C: provisional 68k mulu.w -$1156(a6), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 006250
db 0x89, 0x99 ; 00625A: provisional 68k or.l d4, (a1)+
db 0xFF, 0xFF ; 00625C: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 00625E: provisional 68k btst.l d0, (a0)
db 0x8C, 0xCC, 0xEE, 0xEE ; file 006260
db 0xEE, 0xAA ; 006264: provisional 68k lsr.l d7, d2
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 006266
db 0xFF, 0x01 ; 006272: provisional 68k dc.w $ff01
db 0x10, 0x88, 0xEC, 0xEE, 0xEE, 0xEE ; file 006274
db 0xAA, 0x88 ; 00627A: provisional 68k dc.w $aa88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00627C
db 0x88, 0x81 ; 006284: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 006286: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006288: provisional 68k btst.l d0, (a0)
db 0x98, 0xAE, 0xEE, 0xEE ; 00628A: provisional 68k sub.l -$1112(a6), d4
db 0xEE, 0xAA ; 00628E: provisional 68k lsr.l d7, d2
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 006290
db 0xFF, 0x01 ; 00629C: provisional 68k dc.w $ff01
db 0x10, 0x98 ; 00629E: provisional 68k move.b (a0)+, (a0)
db 0xAA, 0xEE ; 0062A0: provisional 68k dc.w $aaee
db 0xEE, 0xEE ; file 0062A2
db 0xAA, 0x88 ; 0062A4: provisional 68k dc.w $aa88
db 0x88, 0x88 ; file 0062A6
db 0x88, 0xAA, 0xAA, 0xAA ; 0062A8: provisional 68k or.l -$5556(a2), d4
db 0xA8, 0x88 ; 0062AC: provisional 68k dc.w $a888
db 0x88, 0x81 ; 0062AE: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0062B0: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 0062B2: provisional 68k btst.l d0, (a0)
db 0x98, 0xAA, 0xEE, 0xEE ; 0062B4: provisional 68k sub.l -$1112(a2), d4
db 0xEE, 0xAA ; 0062B8: provisional 68k lsr.l d7, d2
db 0x88, 0x88, 0x88, 0x88 ; file 0062BA
db 0xAA, 0xAA ; 0062BE: provisional 68k dc.w $aaaa
db 0xAA, 0xA8 ; 0062C0: provisional 68k dc.w $aaa8
db 0x88, 0x88, 0x81, 0xFF ; file 0062C2
db 0xFF, 0x01 ; 0062C6: provisional 68k dc.w $ff01
db 0x06, 0xAE, 0xAA, 0x8A, 0xAA, 0xAA, 0xAA, 0x89 ; 0062C8: provisional 68k addi.l #$aa8aaaaa, -$5577(a6)
db 0x02, 0x07, 0x99, 0x88 ; 0062D0: provisional 68k andi.b #$88, d7
db 0x8A, 0xAA, 0xA8, 0x88 ; 0062D4: provisional 68k or.l -$5778(a2), d5
db 0x88, 0x81 ; 0062D8: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0062DA: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 0062DC: provisional 68k btst.l d0, d6
db 0xAC, 0xEA ; 0062DE: provisional 68k dc.w $acea
db 0x98, 0xAA, 0xAA, 0xA8 ; 0062E0: provisional 68k sub.l -$5558(a2), d4
db 0x99, 0x04 ; 0062E4: provisional 68k subx.b d4, d4
db 0x05, 0x88, 0x8A, 0xA8 ; 0062E6: provisional 68k movep.w d2, -$7558(a0)
db 0x88, 0x88, 0x81, 0xFF ; file 0062EA
db 0xFF, 0x01 ; 0062EE: provisional 68k dc.w $ff01
db 0x10, 0xCC ; file 0062F0
db 0xCC, 0xE8, 0x8A, 0xAA ; 0062F2: provisional 68k mulu.w -$7556(a0), d6
db 0xA8, 0x99 ; 0062F6: provisional 68k dc.w $a899
db 0x99, 0x99 ; 0062F8: provisional 68k sub.l d4, (a1)+
db 0x99, 0x89 ; 0062FA: provisional 68k subx.l -(a1), -(a4)
db 0x98, 0x88 ; 0062FC: provisional 68k sub.l a0, d4
db 0x88, 0x88 ; file 0062FE
db 0x88, 0x81 ; 006300: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 006302: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006304: provisional 68k btst.l d0, (a0)
db 0xCC, 0xCC ; file 006306
db 0xCC, 0xEA, 0xAA, 0x88 ; 006308: provisional 68k mulu.w -$5578(a2), d6
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 00630C
db 0xFF, 0x01 ; 006318: provisional 68k dc.w $ff01
db 0x10, 0xCC, 0xCC, 0xCC ; file 00631A
db 0xCE, 0xEE, 0xEA, 0x88 ; 00631E: provisional 68k mulu.w -$1578(a6), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 006322
db 0x88, 0x81 ; 00632A: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 00632C: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 00632E: provisional 68k btst.l d0, (a0)
db 0xCC, 0xCC, 0xCC, 0xCC ; file 006330
db 0xCE, 0xEE, 0xAA, 0x88 ; 006334: provisional 68k mulu.w -$5578(a6), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 006338
db 0xFF, 0x01 ; 006342: provisional 68k dc.w $ff01
db 0x10, 0xAC, 0xCC, 0xCC ; 006344: provisional 68k move.b -$3334(a4), (a0)
db 0xCC, 0xCE ; file 006348
db 0xEE, 0xAA ; 00634A: provisional 68k lsr.l d7, d2
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00634C
db 0x88, 0x81 ; 006354: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 006356: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006358: provisional 68k btst.l d0, (a0)
db 0x8C, 0xCC, 0xCC, 0xCC ; file 00635A
db 0xCE, 0xEE, 0xEA, 0x88 ; 00635E: provisional 68k mulu.w -$1578(a6), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 006362
db 0xAA, 0xA8 ; 006368: provisional 68k dc.w $aaa8
db 0x81, 0xFF ; file 00636A
db 0xFF, 0x01 ; 00636C: provisional 68k dc.w $ff01
db 0x10, 0x98 ; 00636E: provisional 68k move.b (a0)+, (a0)
db 0xCC, 0xCC ; file 006370
db 0xCE, 0xEE, 0xEE, 0xEA ; 006372: provisional 68k mulu.w -$1116(a6), d7
db 0x88, 0x88, 0x88, 0x88 ; file 006376
db 0x8A, 0xAA, 0xAA, 0xAA ; 00637A: provisional 68k or.l -$5556(a2), d5
db 0xA8, 0x81 ; 00637E: provisional 68k dc.w $a881
db 0xFF, 0xFF ; 006380: provisional 68k dc.w $ffff
db 0x01, 0x0F, 0x99, 0xAC ; 006382: provisional 68k movep.w -$6654(a7), d0
db 0xCE, 0xEE, 0xEE, 0xEE ; 006386: provisional 68k mulu.w -$1112(a6), d7
db 0xAA, 0x88 ; 00638A: provisional 68k dc.w $aa88
db 0x88, 0x88 ; file 00638C
db 0xAA, 0xAA ; 00638E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 006390: provisional 68k dc.w $aaaa
db 0xAA, 0xA8 ; 006392: provisional 68k dc.w $aaa8
db 0xFF, 0xFF ; 006394: provisional 68k dc.w $ffff
db 0x02, 0x0E ; file 006396
db 0x8E, 0xEE, 0xEE, 0xEE ; 006398: provisional 68k divu.w -$1112(a6), d7
db 0xEA, 0xA8 ; 00639C: provisional 68k lsr.l d5, d0
db 0x88, 0x88, 0x88, 0x88 ; file 00639E
db 0xAA, 0xAF ; 0063A2: provisional 68k dc.w $aaaf
db 0xFF, 0xAA ; 0063A4: provisional 68k dc.w $ffaa
db 0x81, 0xFF ; file 0063A6
db 0xFF, 0x02 ; 0063A8: provisional 68k dc.w $ff02
db 0x0E, 0x98, 0xEE, 0xEE ; file 0063AA
db 0xEE, 0xAA ; 0063AE: provisional 68k lsr.l d7, d2
db 0xA8, 0x89 ; 0063B0: provisional 68k dc.w $a889
db 0x99, 0x99 ; 0063B2: provisional 68k sub.l d4, (a1)+
db 0x98, 0x8A ; 0063B4: provisional 68k sub.l a2, d4
db 0xAF, 0xFF ; 0063B6: provisional 68k dc.w $afff
db 0xFA, 0x81 ; 0063B8: provisional 68k dc.w $fa81
db 0xFF, 0xFF ; 0063BA: provisional 68k dc.w $ffff
db 0x02, 0x06, 0x98, 0x8A ; 0063BC: provisional 68k andi.b #$8a, d6
db 0xAA, 0xAA ; 0063C0: provisional 68k dc.w $aaaa
db 0x88, 0x89 ; file 0063C2
db 0x99, 0x02 ; 0063C4: provisional 68k subx.b d2, d4
db 0x04, 0x18, 0x8A, 0xAF ; 0063C6: provisional 68k subi.b #$af, (a0)+
db 0xFF, 0xF8 ; 0063CA: provisional 68k dc.w $fff8
db 0xFF, 0xFF ; 0063CC: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x99, 0x88 ; 0063CE: provisional 68k andi.b #$88, d2
db 0x99, 0x06 ; 0063D2: provisional 68k subx.b d6, d4
db 0x04, 0x18, 0xAF, 0xFF ; 0063D4: provisional 68k subi.b #$ff, (a0)+
db 0xFF, 0xA8 ; 0063D8: provisional 68k dc.w $ffa8
db 0xFF, 0xFF ; 0063DA: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x99, 0x88 ; 0063DC: provisional 68k andi.b #$88, d2
db 0x99, 0x06 ; 0063E0: provisional 68k subx.b d6, d4
db 0x04, 0x18, 0xAF, 0xFF ; 0063E2: provisional 68k subi.b #$ff, (a0)+
db 0xFF, 0x81 ; 0063E6: provisional 68k dc.w $ff81
db 0xFF, 0xFF ; 0063E8: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x99, 0x88 ; 0063EA: provisional 68k andi.b #$88, d2
db 0x99, 0x06 ; 0063EE: provisional 68k subx.b d6, d4
db 0x04, 0x98, 0xAF, 0xFF, 0xFA, 0x81 ; 0063F0: provisional 68k subi.l #$affffa81, (a0)+
db 0xFF, 0xFF ; 0063F6: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x99, 0x88 ; 0063F8: provisional 68k andi.b #$88, d2
db 0x81, 0x06 ; 0063FC: provisional 68k sbcd.b d6, d0
db 0x03, 0x9A ; 0063FE: provisional 68k bclr.b d1, (a2)+
db 0xFF, 0xFF ; 006400: provisional 68k dc.w $ffff
db 0xF8, 0xFF ; 006402: provisional 68k dc.w $f8ff
db 0xFF, 0x02 ; 006404: provisional 68k dc.w $ff02
db 0x02, 0x99, 0x88, 0x81, 0x05, 0x04 ; 006406: provisional 68k andi.l #$88810504, (a1)+
db 0x99, 0x8A ; 00640C: provisional 68k subx.l -(a2), -(a4)
db 0xFF, 0xFF ; 00640E: provisional 68k dc.w $ffff
db 0x81, 0xFF ; file 006410
db 0xFF, 0x02 ; 006412: provisional 68k dc.w $ff02
db 0x02, 0x99, 0x88, 0x88, 0x05, 0x03 ; 006414: provisional 68k andi.l #$88880503, (a1)+
db 0x98, 0xAF, 0xFE, 0xE8 ; 00641A: provisional 68k sub.l -$118(a7), d4
db 0xFF, 0xFF ; 00641E: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 006420: provisional 68k btst.l d1, d2
db 0x88, 0x88 ; file 006422
db 0x81, 0x03 ; 006424: provisional 68k sbcd.b d3, d0
db 0x04, 0x99, 0x8A, 0xFE, 0xEF, 0x81 ; 006426: provisional 68k subi.l #$8afeef81, (a1)+
db 0xFF, 0xFF ; 00642C: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 00642E: provisional 68k btst.l d1, d2
db 0x98, 0x88 ; 006430: provisional 68k sub.l a0, d4
db 0x88, 0x02 ; 006432: provisional 68k or.b d2, d4
db 0x04, 0x88, 0x8A, 0xFE, 0xEE, 0xF8 ; file 006434
db 0xFF, 0xFF ; 00643A: provisional 68k dc.w $ffff
db 0x03, 0x09, 0x98, 0x88 ; 00643C: provisional 68k movep.w -$6778(a1), d1
db 0x88, 0x88 ; file 006440
db 0x88, 0x98 ; 006442: provisional 68k or.l (a0)+, d4
db 0x8A, 0xFE ; file 006444
db 0xEE, 0x81 ; 006446: provisional 68k asr.l #$7, d1
db 0xFF, 0xFF ; 006448: provisional 68k dc.w $ffff
db 0x03, 0x08, 0x18, 0xAA ; 00644A: provisional 68k movep.w $18aa(a0), d1
db 0xA8, 0x88 ; 00644E: provisional 68k dc.w $a888
db 0x8A, 0xEE, 0xEE, 0xEE ; 006450: provisional 68k divu.w -$1112(a6), d5
db 0xE8, 0xFF ; file 006454
db 0xFF, 0x03 ; 006456: provisional 68k dc.w $ff03
db 0x08, 0x18 ; file 006458
db 0xAA, 0xAA ; 00645A: provisional 68k dc.w $aaaa
db 0xAA, 0xFE ; 00645C: provisional 68k dc.w $aafe
db 0xEE, 0xEE ; file 00645E
db 0xEA, 0x81 ; 006460: provisional 68k asr.l #$5, d1
db 0xFF, 0xFF ; 006462: provisional 68k dc.w $ffff
db 0x04, 0x06, 0x8A, 0xAA ; 006464: provisional 68k subi.b #$aa, d6
db 0xAF, 0xEE ; 006468: provisional 68k dc.w $afee
db 0xEE, 0xEF, 0x81, 0xFF ; file 00646A
db 0xFF, 0x04 ; 00646E: provisional 68k dc.w $ff04
db 0x05, 0x18 ; 006470: provisional 68k btst.l d2, (a0)+
db 0x8A, 0xAF, 0xEE, 0xEF ; 006472: provisional 68k or.l -$1111(a7), d5
db 0x81, 0xFF ; file 006476
db 0xFF, 0x05 ; 006478: provisional 68k dc.w $ff05
db 0x03, 0x18 ; 00647A: provisional 68k btst.l d1, (a0)+
db 0xFE, 0xE8 ; 00647C: provisional 68k dc.w $fee8
db 0x81, 0xFF ; file 00647E
db 0xFF, 0xFF ; 006480: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006482: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 006484: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 006486: provisional 68k ori.b #$0, d7
db 0x00, 0x1C, 0x00, 0x1C ; 00648A: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x00, 0x00, 0x58 ; 00648E: provisional 68k ori.b #$58, d0
db 0x00, 0x00, 0x00, 0x00 ; 006492: provisional 68k ori.b #$0, d0
db 0x00, 0x0E, 0x00, 0x0E ; file 006496
db 0x00, 0x00, 0x00, 0x06 ; 00649A: provisional 68k ori.b #$6, d0
db 0x00, 0x06, 0x00, 0x0A ; 00649E: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 0064A2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0064A6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 0064AA: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 0064AE: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 0064B2: provisional 68k ori.b #$5, d4
db 0x00, 0x0C ; file 0064B6
db 0x01, 0xD8 ; 0064B8: provisional 68k bset.b d0, (a0)+
db 0x03, 0xA4 ; 0064BA: provisional 68k bclr.b d1, -(a4)
db 0x05, 0x6A, 0x07, 0x32 ; 0064BC: provisional 68k bchg.b d2, $732(a2)
db 0x08, 0xF4, 0x00, 0x00, 0x00, 0x00 ; 0064C0: provisional 68k bset.b #$0, (a4, d0.w)
db 0x00, 0x1C, 0x00, 0x1C ; 0064C6: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 0064CA: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 0064CE
db 0x10, 0x10 ; 0064D0: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0064D2: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0064D4: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0064D6: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0064D8: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0064DC: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0064E0: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0064E2: provisional 68k neg.w d4
db 0x00, 0x00, 0x00, 0xDC ; 0064E4: provisional 68k ori.b #$dc, d0
db 0xDC, 0xD4 ; 0064E8: provisional 68k adda.w (a4), a6
db 0x64, 0x68 ; 0064EA: provisional 68k bcc.b $6554
db 0x68, 0x08 ; 0064EC: provisional 68k bvc.b $64f6
db 0x20, 0x4C ; 0064EE: provisional 68k movea.l a4, a0
db 0xAC, 0xAC ; 0064F0: provisional 68k dc.w $acac
db 0xA4, 0x34 ; 0064F2: provisional 68k dc.w $a434
db 0x38, 0x40 ; 0064F4: provisional 68k movea.w d0, a4
db 0x00, 0x18, 0x34, 0x10 ; 0064F6: provisional 68k ori.b #$10, (a0)+
db 0x34, 0x58 ; 0064FA: provisional 68k movea.w (a0)+, a2
db 0x05, 0x03 ; 0064FC: provisional 68k btst.l d2, d3
db 0x1D, 0xAA, 0xDA, 0xF1, 0xFF, 0xFF, 0x04, 0x05, 0xDA, 0x99 ; 0064FE: provisional 68k move.b -$250f(a2), ([$405da99])
db 0x99, 0x99 ; 006508: provisional 68k sub.l d4, (a1)+
db 0x9C, 0xAD, 0xFF, 0xFF ; 00650A: provisional 68k sub.l -$1(a5), d6
db 0x03, 0x07 ; 00650E: provisional 68k btst.l d1, d7
db 0xDA, 0x99 ; 006510: provisional 68k add.l (a1)+, d5
db 0x99, 0x99 ; 006512: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 006514: provisional 68k sub.l d4, (a1)+
db 0xCC, 0xA1 ; 006516: provisional 68k and.l -(a1), d6
db 0xFF, 0xFF ; 006518: provisional 68k dc.w $ffff
db 0x02, 0x09, 0x1D, 0xC9 ; file 00651A
db 0x99, 0x99 ; 00651E: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 006520: provisional 68k sub.l d4, (a1)+
db 0x9C, 0xCC ; 006522: provisional 68k suba.w a4, a6
db 0xCA, 0xD1 ; 006524: provisional 68k mulu.w (a1), d5
db 0xFF, 0xFF ; 006526: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 006528
db 0xD9, 0x99 ; 00652A: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 00652C: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00652E: provisional 68k sub.l d4, (a1)+
db 0x99, 0xCC ; 006530: provisional 68k suba.l a4, a4
db 0xCC, 0xAD, 0xFF, 0xFF ; 006532: provisional 68k and.l -$1(a5), d6
db 0x01, 0x0A, 0x1D, 0x99 ; 006536: provisional 68k movep.w $1d99(a2), d0
db 0x99, 0x99 ; 00653A: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00653C: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9C ; 00653E: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC ; file 006540
db 0xAA, 0xFF ; 006542: provisional 68k dc.w $aaff
db 0xFF, 0x01 ; 006544: provisional 68k dc.w $ff01
db 0x0B, 0x1C ; 006546: provisional 68k btst.l d5, (a4)+
db 0x99, 0x99 ; 006548: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00654A: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00654C: provisional 68k sub.l d4, (a1)+
db 0x9C, 0xCC ; 00654E: provisional 68k suba.w a4, a6
db 0xCA, 0xAA, 0xD1, 0xFF ; 006550: provisional 68k and.l -$2e01(a2), d5
db 0xFF, 0x01 ; 006554: provisional 68k dc.w $ff01
db 0x0B, 0xAC, 0x99, 0x99 ; 006556: provisional 68k bclr.b d5, -$6667(a4)
db 0x99, 0x99 ; 00655A: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9C ; 00655C: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC ; file 00655E
db 0xCA, 0xAA, 0xAD, 0xFF ; 006560: provisional 68k and.l -$5201(a2), d5
db 0xFF, 0x01 ; 006564: provisional 68k dc.w $ff01
db 0x0B, 0xCC, 0x99, 0x99 ; 006566: provisional 68k movep.l d5, -$6667(a4)
db 0x99, 0x99 ; 00656A: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9C ; 00656C: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC ; file 00656E
db 0xAA, 0xAA ; 006570: provisional 68k dc.w $aaaa
db 0xAD, 0xFF ; 006572: provisional 68k dc.w $adff
db 0xFF, 0x00 ; 006574: provisional 68k dc.w $ff00
db 0x0C, 0x1D, 0xCC, 0xCC ; 006576: provisional 68k cmpi.b #$cc, (a5)+
db 0x99, 0x99 ; 00657A: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00657C: provisional 68k sub.l d4, (a1)+
db 0xCC, 0xCC ; file 00657E
db 0xCC, 0xAA, 0xAA, 0xDD ; 006580: provisional 68k and.l -$5523(a2), d6
db 0xFF, 0xFF ; 006584: provisional 68k dc.w $ffff
db 0x00, 0x0D, 0x1A, 0xCC, 0xCC, 0xCC, 0xCC, 0xC9, 0xCC, 0xCC ; file 006586
db 0xCC, 0xAA, 0xAA, 0xAA ; 006590: provisional 68k and.l -$5556(a2), d6
db 0xAD, 0xD1 ; 006594: provisional 68k dc.w $add1
db 0xFF, 0xFF ; 006596: provisional 68k dc.w $ffff
db 0x00, 0x0D, 0x1A, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 006598
db 0xAC, 0xAA ; 0065A2: provisional 68k dc.w $acaa
db 0xAA, 0xAA ; 0065A4: provisional 68k dc.w $aaaa
db 0xDD, 0xD1 ; 0065A6: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0065A8: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 0065AA
db 0x1A, 0xAC, 0xCC, 0xCC ; 0065AC: provisional 68k move.b -$3334(a4), (a5)
db 0xCC, 0xCC, 0xCA, 0xFD ; file 0065B0
db 0xDA, 0xAA, 0xAA, 0xAD ; 0065B4: provisional 68k add.l -$5553(a2), d5
db 0xDD, 0xD1 ; 0065B8: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0065BA: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 0065BC
db 0x1A, 0xAC, 0xCC, 0xCC ; 0065BE: provisional 68k move.b -$3334(a4), (a5)
db 0xAD, 0xFA ; 0065C2: provisional 68k dc.w $adfa
db 0xAF, 0xFB ; 0065C4: provisional 68k dc.w $affb
db 0xBB, 0xFA, 0xAA, 0xAD ; 0065C6: provisional 68k cmpa.l $1075(pc), a5
db 0xDD, 0xD1 ; 0065CA: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0065CC: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 0065CE
db 0x1A, 0xAA, 0xAA, 0xAA ; 0065D0: provisional 68k move.b -$5556(a2), (a5)
db 0xFB, 0xBF ; 0065D4: provisional 68k dc.w $fbbf
db 0xFF, 0xBF ; 0065D6: provisional 68k dc.w $ffbf
db 0xFB, 0xBF ; 0065D8: provisional 68k dc.w $fbbf
db 0xAA, 0xDD ; 0065DA: provisional 68k dc.w $aadd
db 0xDD, 0xD1 ; 0065DC: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0065DE: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 0065E0
db 0x1D, 0xAA, 0xAA, 0xAD, 0xBB, 0xFF, 0xBE, 0xEE, 0xFF, 0xBB ; 0065E2: provisional 68k move.b -$5553(a2), ([$beeeffbb])
db 0xFD, 0xDD ; 0065EC: provisional 68k dc.w $fddd
db 0xDD, 0xD1 ; 0065EE: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0065F0: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 0065F2
db 0x1D, 0xAA, 0xAA, 0xAB, 0xBF, 0xFE, 0x88, 0x88, 0xEF, 0xFB ; 0065F4: provisional 68k move.b -$5555(a2), ([$8888effb])
db 0xBD, 0xDD ; 0065FE: provisional 68k cmpa.l (a5)+, a6
db 0xDD, 0xD1 ; 006600: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006602: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0xDA, 0xAA ; 006604: provisional 68k movep.w -$2556(a4), d0
db 0xDB, 0xBB ; file 006608
db 0xE8, 0x88 ; 00660A: provisional 68k lsr.l #$4, d0
db 0x88, 0x8F ; file 00660C
db 0xFF, 0xBF ; 00660E: provisional 68k dc.w $ffbf
db 0xDD, 0xDD ; 006610: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006612
db 0xFF, 0x01 ; 006614: provisional 68k dc.w $ff01
db 0x0B, 0xDD ; 006616: provisional 68k bset.b d5, (a5)+
db 0xDA, 0xFB, 0xBF, 0xE8, 0x88, 0x88 ; 006618: provisional 68k adda.w $8888(invalid.w), a5
db 0x8E, 0xFF ; file 00661E
db 0xBF, 0xDD ; 006620: provisional 68k cmpa.l (a5)+, a7
db 0xDD, 0xFF ; file 006622
db 0xFF, 0x01 ; 006624: provisional 68k dc.w $ff01
db 0x0B, 0x1D ; 006626: provisional 68k btst.l d5, (a5)+
db 0xDD, 0xFB, 0xBF, 0xF8, 0x88, 0x88, 0x8E, 0xFB ; 006628: provisional 68k adda.l $88888efb(invalid.w), a6
db 0xBF, 0xDD ; 006630: provisional 68k cmpa.l (a5)+, a7
db 0xDD, 0xFF ; file 006632
db 0xFF, 0x01 ; 006634: provisional 68k dc.w $ff01
db 0x0B, 0x1D ; 006636: provisional 68k btst.l d5, (a5)+
db 0xDD, 0xDE ; 006638: provisional 68k adda.l (a6)+, a6
db 0xBB, 0xFE, 0x88, 0x88, 0xEF, 0xFB ; file 00663A
db 0xBF, 0xDD ; 006640: provisional 68k cmpa.l (a5)+, a7
db 0xD1, 0xFF ; file 006642
db 0xFF, 0x02 ; 006644: provisional 68k dc.w $ff02
db 0x09, 0xDD ; 006646: provisional 68k bset.b d4, (a5)+
db 0xDE, 0xBB, 0xFF, 0xFE, 0xEF, 0xFF, 0xBB, 0xED ; 006648: provisional 68k add.l ([$f0002237]), d7
db 0xDD, 0xFF ; file 006650
db 0xFF, 0x02 ; 006652: provisional 68k dc.w $ff02
db 0x09, 0x1D ; 006654: provisional 68k btst.l d4, (a5)+
db 0xDD, 0xEB, 0xBB, 0xFF ; 006656: provisional 68k adda.l -$4401(a3), a6
db 0xFF, 0xFF ; 00665A: provisional 68k dc.w $ffff
db 0xBE, 0xDD ; 00665C: provisional 68k cmpa.w (a5)+, a7
db 0xD1, 0xFF ; file 00665E
db 0xFF, 0x03 ; 006660: provisional 68k dc.w $ff03
db 0x07, 0xDD ; 006662: provisional 68k bset.b d3, (a5)+
db 0xDE, 0xEB, 0xBB, 0xBB ; 006664: provisional 68k adda.w -$4445(a3), a7
db 0xBB, 0xED, 0xDD, 0xFF ; 006668: provisional 68k cmpa.l -$2201(a5), a5
db 0xFF, 0x03 ; 00666C: provisional 68k dc.w $ff03
db 0x07, 0x1D ; 00666E: provisional 68k btst.l d3, (a5)+
db 0xDD, 0xFE, 0xEE, 0xEE, 0xEF, 0xDA, 0xD1, 0xFF ; file 006670
db 0xFF, 0x04 ; 006678: provisional 68k dc.w $ff04
db 0x05, 0x1D ; 00667A: provisional 68k btst.l d2, (a5)+
db 0xDD, 0xDF ; 00667C: provisional 68k adda.l (a7)+, a6
db 0xFD, 0xDD ; 00667E: provisional 68k dc.w $fddd
db 0xD1, 0xFF ; file 006680
db 0xFF, 0x06 ; 006682: provisional 68k dc.w $ff06
db 0x01, 0xDD ; 006684: provisional 68k bset.b d0, (a5)+
db 0xDD, 0xFF ; file 006686
db 0xFF, 0xFF ; 006688: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00668A: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 00668C: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 00668E: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 006692: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 006696: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 00669A
db 0x10, 0x10 ; 00669C: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00669E: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0066A0: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0066A2: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0066A4: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0066A8: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0066AC: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0066AE: provisional 68k neg.w d4
db 0x0C, 0x10, 0x18, 0xE0 ; 0066B0: provisional 68k cmpi.b #$e0, (a0)
db 0xE0, 0xD8 ; 0066B4: provisional 68k asr.w (a0)+
db 0x5C, 0x60 ; 0066B6: provisional 68k addq.w #$6, -(a0)
db 0x64, 0xA8 ; 0066B8: provisional 68k bcc.b $6662
db 0xA8, 0xA4 ; 0066BA: provisional 68k dc.w $a8a4
db 0x08, 0x30, 0x5C, 0x3C, 0x40, 0x48 ; file 0066BC
db 0x04, 0x1C, 0x44, 0x7C ; 0066C2: provisional 68k subi.b #$7c, (a4)+
db 0x80, 0x7C, 0x06, 0x01 ; 0066C6: provisional 68k or.w #$601, d0
db 0xDA, 0xDD ; 0066CA: provisional 68k adda.w (a5)+, a5
db 0xFF, 0xFF ; 0066CC: provisional 68k dc.w $ffff
db 0x04, 0x05, 0xDA, 0xB9 ; 0066CE: provisional 68k subi.b #$b9, d5
db 0x99, 0x99 ; 0066D2: provisional 68k sub.l d4, (a1)+
db 0xFA, 0xD1 ; 0066D4: provisional 68k dc.w $fad1
db 0xFF, 0xFF ; 0066D6: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 0066D8: provisional 68k btst.l d1, d7
db 0xDD, 0x99 ; 0066DA: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 0066DC: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9B ; 0066DE: provisional 68k sub.l d4, (a3)+
db 0xBA, 0xD1 ; 0066E0: provisional 68k cmpa.w (a1), a5
db 0xFF, 0xFF ; 0066E2: provisional 68k dc.w $ffff
db 0x02, 0x08 ; file 0066E4
db 0x1D, 0xB9, 0x99, 0x99, 0x99, 0x99, 0x9B, 0xBB, 0xFD, 0xFF, 0xFF, 0x02, 0x09, 0xD9, 0x99, 0x99 ; 0066E6: provisional 68k move.b $99999999.l, ([$fdffff02, a1.l * 2], $9d99999)
db 0x99, 0x99 ; 0066F6: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0066F8: provisional 68k sub.l d4, (a1)+
db 0xBB, 0xBF, 0xD1, 0xFF ; file 0066FA
db 0xFF, 0x01 ; 0066FE: provisional 68k dc.w $ff01
db 0x0A, 0x1D, 0x99, 0x99 ; 006700: provisional 68k eori.b #$99, (a5)+
db 0x99, 0x99 ; 006704: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 006706: provisional 68k sub.l d4, (a1)+
db 0x9B, 0xBB ; file 006708
db 0xBF, 0xAD, 0xFF, 0xFF ; 00670A: provisional 68k eor.l d7, -$1(a5)
db 0x01, 0x0B, 0xDB, 0x99 ; 00670E: provisional 68k movep.w -$2467(a3), d0
db 0x99, 0x99 ; 006712: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 006714: provisional 68k sub.l d4, (a1)+
db 0x99, 0xBB, 0xBB, 0xFF ; file 006716
db 0xFA, 0xD1 ; 00671A: provisional 68k dc.w $fad1
db 0xFF, 0xFF ; 00671C: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xAB, 0x99 ; 00671E: provisional 68k movep.w -$5467(a3), d0
db 0x99, 0x99 ; 006722: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 006724: provisional 68k sub.l d4, (a1)+
db 0x99, 0xBB, 0xBF, 0xFF ; file 006726
db 0xAA, 0xD1 ; 00672A: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 00672C: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 00672E
db 0x1D, 0xB9, 0x99, 0x99, 0x99, 0x99, 0x99, 0x9B, 0xAD, 0xED, 0xDA, 0xAA ; 006730: provisional 68k move.b $99999999.l, ([, a1.l], $adeddaaa)
db 0xDD, 0xFF ; file 00673C
db 0xFF, 0x00 ; 00673E: provisional 68k dc.w $ff00
db 0x0C, 0x1A, 0xBB, 0xB9 ; 006740: provisional 68k cmpi.b #$b9, (a2)+
db 0x99, 0x99 ; 006744: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 006746: provisional 68k sub.l d4, (a1)+
db 0xFA, 0xCC ; 006748: provisional 68k dc.w $facc
db 0xCE, 0xEE, 0xDA, 0xDD ; 00674A: provisional 68k mulu.w -$2523(a6), d7
db 0xFF, 0xFF ; 00674E: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 006750
db 0x1F, 0xBB, 0xBB, 0xBB, 0x9B, 0x99, 0x9F, 0xFF, 0xAC, 0xCC, 0xCC, 0xED, 0xDD, 0xFF, 0xFF, 0x00, 0x0D, 0x1F ; 006752: provisional 68k move.b ([$9b9a0753, a3.l * 2], $accccced), ([$ff000d1f])
db 0xBB, 0xBB, 0xBB, 0xBB ; file 006764
db 0xBB, 0xAA, 0xFF, 0xCC ; 006768: provisional 68k eor.l d5, -$34(a2)
db 0xCC, 0xCC, 0xEE, 0xDD, 0xD1, 0xFF ; file 00676C
db 0xFF, 0x00 ; 006772: provisional 68k dc.w $ff00
db 0x0D, 0x1F ; 006774: provisional 68k btst.l d6, (a7)+
db 0xBB, 0xBB, 0xBB, 0xBB ; file 006776
db 0xBB, 0xCA ; 00677A: provisional 68k cmpa.l a2, a5
db 0xAC, 0x88 ; 00677C: provisional 68k dc.w $ac88
db 0x88, 0xCC ; file 00677E
db 0xCC, 0xDD ; 006780: provisional 68k mulu.w (a5)+, d6
db 0xD1, 0xFF ; file 006782
db 0xFF, 0x00 ; 006784: provisional 68k dc.w $ff00
db 0x0D, 0x1A ; 006786: provisional 68k btst.l d6, (a2)+
db 0xFF, 0xFB ; 006788: provisional 68k dc.w $fffb
db 0xBB, 0xBB ; file 00678A
db 0xBA, 0xEC, 0xC8, 0x88 ; 00678C: provisional 68k cmpa.w -$3778(a4), a5
db 0x88, 0x8C ; file 006790
db 0xCE, 0xED, 0xD1, 0xFF ; 006792: provisional 68k mulu.w -$2e01(a5), d7
db 0xFF, 0x00 ; 006796: provisional 68k dc.w $ff00
db 0x0D, 0x1A ; 006798: provisional 68k btst.l d6, (a2)+
db 0xFF, 0xFF ; 00679A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00679C: provisional 68k dc.w $ffff
db 0xFD, 0xCC ; 00679E: provisional 68k dc.w $fdcc
db 0xC8, 0x88, 0x88, 0x8C ; file 0067A0
db 0xCC, 0xED, 0xD1, 0xFF ; 0067A4: provisional 68k mulu.w -$2e01(a5), d6
db 0xFF, 0x00 ; 0067A8: provisional 68k dc.w $ff00
db 0x0D, 0x1A ; 0067AA: provisional 68k btst.l d6, (a2)+
db 0xAA, 0xFF ; 0067AC: provisional 68k dc.w $aaff
db 0xFF, 0xFF ; 0067AE: provisional 68k dc.w $ffff
db 0xFE, 0xCC ; 0067B0: provisional 68k dc.w $fecc
db 0xE8, 0x88 ; 0067B2: provisional 68k lsr.l #$4, d0
db 0x88, 0x8C ; file 0067B4
db 0xCC, 0xED, 0xD1, 0xFF ; 0067B6: provisional 68k mulu.w -$2e01(a5), d6
db 0xFF, 0x00 ; 0067BA: provisional 68k dc.w $ff00
db 0x0D, 0x1D ; 0067BC: provisional 68k btst.l d6, (a5)+
db 0xAA, 0xAA ; 0067BE: provisional 68k dc.w $aaaa
db 0xFA, 0xFA ; 0067C0: provisional 68k dc.w $fafa
db 0xAE, 0xCC ; 0067C2: provisional 68k dc.w $aecc
db 0xC8, 0x88, 0x88, 0x8C, 0xCE, 0x8D, 0xD1, 0xFF ; file 0067C4
db 0xFF, 0x00 ; 0067CC: provisional 68k dc.w $ff00
db 0x0C, 0x1D, 0xDA, 0xAA ; 0067CE: provisional 68k cmpi.b #$aa, (a5)+
db 0xAA, 0xAA ; 0067D2: provisional 68k dc.w $aaaa
db 0xAC, 0xCC ; 0067D4: provisional 68k dc.w $accc
db 0xC8, 0x88 ; file 0067D6
db 0x88, 0xEC, 0xE8, 0xED ; 0067D8: provisional 68k divu.w -$1713(a4), d4
db 0xFF, 0xFF ; 0067DC: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xDD, 0xAD ; 0067DE: provisional 68k movep.w -$2253(a3), d0
db 0xAA, 0xAA ; 0067E2: provisional 68k dc.w $aaaa
db 0xAD, 0xEC ; 0067E4: provisional 68k dc.w $adec
db 0xCC, 0x88, 0x8E, 0xCC ; file 0067E6
db 0x8E, 0xDD ; 0067EA: provisional 68k divu.w (a5)+, d7
db 0xFF, 0xFF ; 0067EC: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xDD, 0xDD ; 0067EE: provisional 68k movep.w -$2223(a3), d0
db 0xDD, 0xDD ; 0067F2: provisional 68k adda.l (a5)+, a6
db 0xAD, 0xEC ; 0067F4: provisional 68k dc.w $adec
db 0xCC, 0xCC, 0xCC, 0xCE ; file 0067F6
db 0x8D, 0xD1 ; 0067FA: provisional 68k divs.w (a1), d6
db 0xFF, 0xFF ; 0067FC: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1D, 0xDD ; 0067FE: provisional 68k movep.w $1ddd(a3), d0
db 0xDD, 0xDD ; 006802: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xEE, 0xCC, 0xCC ; 006804: provisional 68k adda.l -$3334(a6), a6
db 0xCC, 0xE8, 0xED, 0xD1 ; 006808: provisional 68k mulu.w -$122f(a0), d6
db 0xFF, 0xFF ; 00680C: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x1D, 0xDD ; 00680E: provisional 68k movep.w $1ddd(a2), d0
db 0xDD, 0xDD ; 006812: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDE ; 006814: provisional 68k adda.l (a6)+, a6
db 0xEE, 0xCE, 0xCE, 0x8E, 0xDD, 0xFF ; file 006816
db 0xFF, 0x02 ; 00681C: provisional 68k dc.w $ff02
db 0x09, 0xDD ; 00681E: provisional 68k bset.b d4, (a5)+
db 0xDD, 0xDD ; 006820: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006822: provisional 68k adda.l (a5)+, a6
db 0xDE, 0xEE, 0x8E, 0xDD ; 006824: provisional 68k adda.w -$7123(a6), a7
db 0xD1, 0xFF ; file 006828
db 0xFF, 0x02 ; 00682A: provisional 68k dc.w $ff02
db 0x08, 0x1D ; file 00682C
db 0xDD, 0xDD ; 00682E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006830: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006832: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xAD, 0xFF, 0xFF ; 006834: provisional 68k add.l d6, -$1(a5)
db 0x03, 0x07 ; 006838: provisional 68k btst.l d1, d7
db 0xDD, 0xDD ; 00683A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00683C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 00683E: provisional 68k adda.l (a2)+, a6
db 0xDD, 0xD1 ; 006840: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006842: provisional 68k dc.w $ffff
db 0x04, 0x05, 0xDD, 0xDD ; 006844: provisional 68k subi.b #$dd, d5
db 0xDD, 0xDD ; 006848: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00684A: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 00684C: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 00684E: provisional 68k btst.l d2, d3
db 0xDD, 0xDD ; 006850: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xE1 ; 006852: provisional 68k adda.l -(a1), a6
db 0xFF, 0xFF ; 006854: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006856: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006858: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 00685A: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 00685E: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 006862: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 006866
db 0x10, 0x10 ; 006868: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00686A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00686C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00686E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 006870: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 006874: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006878: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00687A: provisional 68k neg.w d4
db 0x0C, 0x10, 0x1C, 0xAC ; 00687C: provisional 68k cmpi.b #$ac, (a0)
db 0xAC, 0xA4 ; 006880: provisional 68k dc.w $aca4
db 0x50, 0x58 ; 006882: provisional 68k addq.w #$8, (a0)+
db 0x60, 0x00, 0x2C, 0x4C ; 006884: provisional 68k bra.w $94d2
db 0x80, 0x80 ; 006888: provisional 68k or.l d0, d0
db 0x80, 0x3C, 0x40, 0x48 ; 00688A: provisional 68k or.b #$48, d0
db 0xD4, 0xD8 ; 00688E: provisional 68k adda.w (a0)+, a2
db 0xCC, 0x08 ; file 006890
db 0x30, 0x5C ; 006892: provisional 68k movea.w (a4)+, a0
db 0xFF, 0xFF ; 006894: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x1D, 0xA9 ; 006896: provisional 68k subi.b #$a9, d4
db 0x99, 0x9C ; 00689A: provisional 68k sub.l d4, (a4)+
db 0xAD, 0xFF ; 00689C: provisional 68k dc.w $adff
db 0xFF, 0x03 ; 00689E: provisional 68k dc.w $ff03
db 0x06, 0x1D, 0x9E, 0xEE ; 0068A0: provisional 68k addi.b #$ee, (a5)+
db 0xEE, 0xEE, 0xE9, 0xCD ; file 0068A4
db 0xFF, 0xFF ; 0068A8: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 0068AA: provisional 68k btst.l d1, d7
db 0xDE, 0xEE, 0xEE, 0xEE ; 0068AC: provisional 68k adda.w -$1112(a6), a7
db 0xEE, 0xE9 ; file 0068B0
db 0x99, 0xCD ; 0068B2: provisional 68k suba.l a5, a4
db 0xFF, 0xFF ; 0068B4: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 0068B6
db 0xD9, 0xEE, 0xEE, 0xEE ; 0068B8: provisional 68k adda.l -$1112(a6), a4
db 0xEE, 0xE9, 0xCC, 0xC9 ; file 0068BC
db 0x9C, 0xD1 ; 0068C0: provisional 68k suba.w (a1), a6
db 0xFF, 0xFF ; 0068C2: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x1D, 0x9E ; 0068C4: provisional 68k movep.w $1d9e(a2), d0
db 0xEE, 0xEE, 0xEE, 0xE9 ; file 0068C8
db 0xFF, 0xFF ; 0068CC: provisional 68k dc.w $ffff
db 0xFF, 0xFC ; 0068CE: provisional 68k dc.w $fffc
db 0xCD, 0xFF ; file 0068D0
db 0xFF, 0x01 ; 0068D2: provisional 68k dc.w $ff01
db 0x0A, 0x1C, 0xEE, 0xEE ; 0068D4: provisional 68k eori.b #$ee, (a4)+
db 0xEE, 0xEE, 0x9F, 0xFF ; file 0068D8
db 0xFF, 0xFF ; 0068DC: provisional 68k dc.w $ffff
db 0xFF, 0xAA ; 0068DE: provisional 68k dc.w $ffaa
db 0xFF, 0xFF ; 0068E0: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xAE, 0xEE ; 0068E2: provisional 68k movep.w -$5112(a3), d0
db 0xEE, 0xEE, 0xEE, 0xFF ; file 0068E6
db 0xAA, 0xAF ; 0068EA: provisional 68k dc.w $aaaf
db 0xFF, 0xFF ; 0068EC: provisional 68k dc.w $ffff
db 0xFA, 0xD1 ; 0068EE: provisional 68k dc.w $fad1
db 0xFF, 0xFF ; 0068F0: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x99, 0xEE ; 0068F2: provisional 68k movep.w -$6612(a3), d0
db 0xEE, 0xEE, 0xEC, 0xFA ; file 0068F6
db 0xCC, 0xA8, 0xBF, 0xFF ; 0068FA: provisional 68k and.l -$4001(a0), d6
db 0xFB, 0xD1 ; 0068FE: provisional 68k dc.w $fbd1
db 0xFF, 0xFF ; 006900: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 006902
db 0x1D, 0x99, 0xEE, 0xEE ; 006904: provisional 68k move.b (a1)+, -$12(a6, a6.l)
db 0xEE, 0xEA ; file 006908
db 0xFA, 0xCA ; 00690A: provisional 68k dc.w $faca
db 0xD8, 0x88 ; 00690C: provisional 68k add.l a0, d4
db 0xFF, 0xFF ; 00690E: provisional 68k dc.w $ffff
db 0xDD, 0xFF ; file 006910
db 0xFF, 0x00 ; 006912: provisional 68k dc.w $ff00
db 0x0C, 0x1C, 0x99, 0x99 ; 006914: provisional 68k cmpi.b #$99, (a4)+
db 0xE9, 0xEE, 0xEF, 0xFA ; file 006918
db 0xAD, 0x88 ; 00691C: provisional 68k dc.w $ad88
db 0x88, 0x8F ; file 00691E
db 0xFF, 0xBD ; 006920: provisional 68k dc.w $ffbd
db 0xFF, 0xFF ; 006922: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 006924
db 0x19, 0x99, 0x99, 0x99 ; 006926: provisional 68k move.b (a1)+, ([, a1.l])
db 0x99, 0x9F ; 00692A: provisional 68k sub.l d4, (a7)+
db 0xFF, 0xB8 ; 00692C: provisional 68k dc.w $ffb8
db 0x88, 0x88, 0x8F, 0xFF, 0xBD, 0xFF ; file 00692E
db 0xFF, 0x00 ; 006934: provisional 68k dc.w $ff00
db 0x0D, 0x19 ; 006936: provisional 68k btst.l d6, (a1)+
db 0x99, 0x99 ; 006938: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00693A: provisional 68k sub.l d4, (a1)+
db 0x9F, 0xFF ; file 00693C
db 0xF8, 0x88 ; 00693E: provisional 68k dc.w $f888
db 0x88, 0x8F ; file 006940
db 0xFB, 0xBD ; 006942: provisional 68k dc.w $fbbd
db 0xD1, 0xFF ; file 006944
db 0xFF, 0x00 ; 006946: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 006948: provisional 68k btst.l d6, (a4)+
db 0x99, 0x99 ; 00694A: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00694C: provisional 68k sub.l d4, (a1)+
db 0x9A, 0xFF ; file 00694E
db 0xF8, 0x88 ; 006950: provisional 68k dc.w $f888
db 0x88, 0x8B ; file 006952
db 0xBB, 0x8D ; 006954: provisional 68k cmpm.l (a5)+, (a5)+
db 0xD1, 0xFF ; file 006956
db 0xFF, 0x00 ; 006958: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 00695A: provisional 68k btst.l d6, (a4)+
db 0xC9, 0x99 ; 00695C: provisional 68k and.l d4, (a1)+
db 0x99, 0x99 ; 00695E: provisional 68k sub.l d4, (a1)+
db 0x9A, 0xFF ; file 006960
db 0xFF, 0x88 ; 006962: provisional 68k dc.w $ff88
db 0x88, 0xBB, 0xBB, 0x8D ; 006964: provisional 68k or.l ([$6966], a3.l * 2), d4
db 0xD1, 0xFF ; file 006968
db 0xFF, 0x00 ; 00696A: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 00696C: provisional 68k btst.l d6, (a4)+
db 0xCC, 0xCC ; file 00696E
db 0x99, 0xC9 ; 006970: provisional 68k suba.l a1, a4
db 0xCC, 0xFF ; file 006972
db 0xFF, 0xFB ; 006974: provisional 68k dc.w $fffb
db 0xBB, 0xBB ; file 006976
db 0x88, 0xDD ; 006978: provisional 68k divu.w (a5)+, d4
db 0xD1, 0xFF ; file 00697A
db 0xFF, 0x00 ; 00697C: provisional 68k dc.w $ff00
db 0x0D, 0x1A ; 00697E: provisional 68k btst.l d6, (a2)+
db 0xAC, 0xCC ; 006980: provisional 68k dc.w $accc
db 0xCC, 0xCC ; file 006982
db 0xCC, 0xAF, 0xFF, 0xFB ; 006984: provisional 68k and.l -$5(a7), d6
db 0xBB, 0xB8, 0x88, 0xDD ; 006988: provisional 68k eor.l d5, $88dd.w
db 0xD1, 0xFF ; file 00698C
db 0xFF, 0x00 ; 00698E: provisional 68k dc.w $ff00
db 0x0C, 0x1D, 0xAA, 0xAC ; 006990: provisional 68k cmpi.b #$ac, (a5)+
db 0xAC, 0xCC ; 006994: provisional 68k dc.w $accc
db 0xCC, 0xCA ; file 006996
db 0xFB, 0xBB ; 006998: provisional 68k dc.w $fbbb
db 0xFF, 0xB8 ; 00699A: provisional 68k dc.w $ffb8
db 0x8D, 0xDD ; 00699C: provisional 68k divs.w (a5)+, d6
db 0xFF, 0xFF ; 00699E: provisional 68k dc.w $ffff
db 0x00, 0x0C, 0x1D, 0xDD ; file 0069A0
db 0xAA, 0xAA ; 0069A4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0069A6: provisional 68k dc.w $aaaa
db 0xAA, 0xDF ; 0069A8: provisional 68k dc.w $aadf
db 0xBF, 0xFB, 0x88, 0xDD ; 0069AA: provisional 68k cmpa.l $6989(pc, a0.l), a7
db 0xDD, 0xFF ; file 0069AE
db 0xFF, 0x01 ; 0069B0: provisional 68k dc.w $ff01
db 0x0B, 0xDD ; 0069B2: provisional 68k bset.b d5, (a5)+
db 0xDD, 0xAA, 0xAA, 0xAA ; 0069B4: provisional 68k add.l d6, -$5556(a2)
db 0xAA, 0xDD ; 0069B8: provisional 68k dc.w $aadd
db 0xDD, 0xDD ; 0069BA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069BC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFF ; file 0069BE
db 0xFF, 0x01 ; 0069C0: provisional 68k dc.w $ff01
db 0x0B, 0x1D ; 0069C2: provisional 68k btst.l d5, (a5)+
db 0xDD, 0xDD ; 0069C4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069C6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069C8: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xAA, 0xDD, 0xDD ; 0069CA: provisional 68k add.l -$2223(a2), d5
db 0xD1, 0xFF ; file 0069CE
db 0xFF, 0x01 ; 0069D0: provisional 68k dc.w $ff01
db 0x0A, 0x1D, 0xDD, 0xDD ; 0069D2: provisional 68k eori.b #$dd, (a5)+
db 0xDD, 0xDD ; 0069D6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069D8: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xAA ; 0069DA: provisional 68k dc.w $aaaa
db 0xAD, 0xDD ; 0069DC: provisional 68k dc.w $addd
db 0xFF, 0xFF ; 0069DE: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 0069E0
db 0xDD, 0xDD ; 0069E2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069E4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 0069E6: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xAA ; 0069E8: provisional 68k dc.w $aaaa
db 0xDA, 0xAD, 0xFF, 0xFF ; 0069EA: provisional 68k add.l -$1(a5), d5
db 0x02, 0x09, 0x1D, 0xDD ; file 0069EE
db 0xDD, 0xDD ; 0069F2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069F4: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xAA ; 0069F6: provisional 68k dc.w $aaaa
db 0xAA, 0xD1 ; 0069F8: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 0069FA: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 0069FC: provisional 68k btst.l d1, d7
db 0xDD, 0xDD ; 0069FE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A00: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 006A02: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xDD ; 006A04: provisional 68k dc.w $aadd
db 0xFF, 0xFF ; 006A06: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 006A08: provisional 68k btst.l d1, d6
db 0x1D, 0xDD ; file 006A0A
db 0xDD, 0xDD ; 006A0C: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xAA, 0xAD, 0xFF ; 006A0E: provisional 68k add.l -$5201(a2), d5
db 0xFF, 0x04 ; 006A12: provisional 68k dc.w $ff04
db 0x04, 0x1D, 0xDD, 0xDD ; 006A14: provisional 68k subi.b #$dd, (a5)+
db 0xAD, 0xDD ; 006A18: provisional 68k dc.w $addd
db 0xFF, 0xFF ; 006A1A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006A1C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006A1E: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 006A20: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 006A24: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 006A28: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 006A2C
db 0x10, 0x10 ; 006A2E: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 006A30: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 006A32: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 006A34: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 006A36: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 006A3A: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006A3E: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 006A40: provisional 68k neg.w d4
db 0x10, 0x14 ; 006A42: provisional 68k move.b (a4), d0
db 0x1C, 0x68 ; file 006A44
db 0x74, 0x7C ; 006A46: provisional 68k moveq #$7c, d2
db 0x1C, 0x38, 0x64, 0xAC ; 006A48: provisional 68k move.b $64ac.w, d6
db 0xAC, 0xA8 ; 006A4C: provisional 68k dc.w $aca8
db 0x50, 0x54 ; 006A4E: provisional 68k addq.w #$8, (a4)
db 0x5C, 0x40 ; 006A50: provisional 68k addq.w #$6, d0
db 0x44, 0x48 ; file 006A52
db 0x34, 0x60 ; 006A54: provisional 68k movea.w -(a0), a2
db 0x78, 0x38 ; 006A56: provisional 68k moveq #$38, d4
db 0x3C, 0x44 ; 006A58: provisional 68k movea.w d4, a6
db 0xFF, 0xFF ; 006A5A: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 006A5C: provisional 68k btst.l d2, d3
db 0x1C, 0xC9 ; file 006A5E
db 0x99, 0xD1 ; 006A60: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 006A62: provisional 68k dc.w $ffff
db 0x04, 0x05, 0xCB, 0xBB ; 006A64: provisional 68k subi.b #$bb, d5
db 0xBB, 0xBB ; file 006A68
db 0xBB, 0x9C ; 006A6A: provisional 68k eor.l d5, (a4)+
db 0xFF, 0xFF ; 006A6C: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 006A6E: provisional 68k btst.l d1, d7
db 0xCB, 0xBB ; file 006A70
db 0x9A, 0xAA, 0xAA, 0xA9 ; 006A72: provisional 68k sub.l -$5557(a2), d5
db 0xBB, 0x9C ; 006A76: provisional 68k eor.l d5, (a4)+
db 0xFF, 0xFF ; 006A78: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 006A7A
db 0x1C, 0xBB, 0xBA, 0xAA ; 006A7C: provisional 68k move.b $6a28(pc, a3.l), (a6)
db 0xEE, 0xEE ; file 006A80
db 0xAA, 0xA9 ; 006A82: provisional 68k dc.w $aaa9
db 0xBB, 0xC1 ; 006A84: provisional 68k cmpa.l d1, a5
db 0xFF, 0xFF ; 006A86: provisional 68k dc.w $ffff
db 0x02, 0x09, 0xDB, 0xBB ; file 006A88
db 0xAA, 0xEE ; 006A8C: provisional 68k dc.w $aaee
db 0xEE, 0xEE ; file 006A8E
db 0xEE, 0xAA ; 006A90: provisional 68k lsr.l d7, d2
db 0x99, 0x9D ; 006A92: provisional 68k sub.l d4, (a5)+
db 0xFF, 0xFF ; 006A94: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1D, 0xBB ; 006A96: provisional 68k movep.w $1dbb(a3), d0
db 0xBA, 0xAE, 0xEE, 0x99 ; 006A9A: provisional 68k cmp.l -$1167(a6), d5
db 0x8A, 0xEE, 0xEA, 0xA9 ; 006A9E: provisional 68k divu.w -$1557(a6), d5
db 0x99, 0xD1 ; 006AA2: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 006AA4: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1B, 0xBB ; 006AA6: provisional 68k movep.w $1bbb(a3), d0
db 0xBA, 0xEE, 0xE9, 0xBC ; 006AAA: provisional 68k cmpa.w -$1644(a6), a5
db 0x88, 0x8E ; file 006AAE
db 0xEE, 0xAD ; 006AB0: provisional 68k lsr.l d7, d5
db 0x99, 0xD1 ; 006AB2: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 006AB4: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xCB, 0xBB ; 006AB6: provisional 68k movep.w -$3445(a3), d0
db 0x9A, 0xEE, 0xED, 0xDF ; 006ABA: provisional 68k suba.w -$1221(a6), a5
db 0x88, 0x8A ; file 006ABE
db 0xEE, 0xAA ; 006AC0: provisional 68k lsr.l d7, d2
db 0xCC, 0xCD ; file 006AC2
db 0xFF, 0xFF ; 006AC4: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xBB, 0xBB ; 006AC6: provisional 68k movep.w -$4445(a3), d0
db 0x9A, 0xEE, 0xA8, 0x88 ; 006ACA: provisional 68k suba.w -$5778(a6), a5
db 0x88, 0x8A ; file 006ACE
db 0xEE, 0xAA ; 006AD0: provisional 68k lsr.l d7, d2
db 0xCC, 0xCF ; file 006AD2
db 0xFF, 0xFF ; 006AD4: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 006AD6
db 0x1D, 0xBB, 0xBB, 0xBA, 0xEE, 0xE8, 0x88, 0x88, 0x8A, 0xEE, 0xAA, 0xCC ; 006AD8: provisional 68k move.b ([$eee8f362, a3.l * 2], $8aee), -$34(a6, a2.l)
db 0xDF, 0xFF ; file 006AE4
db 0xFF, 0x00 ; 006AE6: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 006AE8: provisional 68k btst.l d6, (a4)+
db 0xBB, 0xBB ; file 006AEA
db 0xBA, 0xAE, 0xEA, 0x88 ; 006AEC: provisional 68k cmp.l -$1578(a6), d5
db 0x88, 0xAE, 0xEA, 0xAD ; 006AF0: provisional 68k or.l -$1553(a6), d4
db 0xCC, 0xDF ; 006AF4: provisional 68k mulu.w (a7)+, d6
db 0xF1, 0xFF ; 006AF6: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 006AF8: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 006AFA: provisional 68k btst.l d6, (a4)+
db 0xBB, 0xBB ; file 006AFC
db 0xB9, 0xAA, 0xEE, 0xEA ; 006AFE: provisional 68k eor.l d4, -$1116(a2)
db 0xAA, 0xEA ; 006B02: provisional 68k dc.w $aaea
db 0xAA, 0xAC ; 006B04: provisional 68k dc.w $aaac
db 0xCC, 0xDF ; 006B06: provisional 68k mulu.w (a7)+, d6
db 0xF1, 0xFF ; 006B08: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 006B0A: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 006B0C: provisional 68k btst.l d6, (a4)+
db 0xBB, 0xBB ; file 006B0E
db 0xBB, 0xAA, 0xAE, 0xEE ; 006B10: provisional 68k eor.l d5, -$5112(a2)
db 0xEE, 0xAA ; 006B14: provisional 68k lsr.l d7, d2
db 0xAA, 0xDC ; 006B16: provisional 68k dc.w $aadc
db 0xCC, 0xFF ; file 006B18
db 0xF1, 0xFF ; 006B1A: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 006B1C: provisional 68k dc.w $ff00
db 0x0D, 0x19 ; 006B1E: provisional 68k btst.l d6, (a1)+
db 0x9B, 0xBB ; file 006B20
db 0xBB, 0xB9, 0xAA, 0xAA, 0xAA, 0xAA ; 006B22: provisional 68k eor.l d5, $aaaaaaaa.l
db 0xDD, 0xCC ; 006B28: provisional 68k adda.l a4, a6
db 0xCD, 0xFF ; file 006B2A
db 0xF1, 0xFF ; 006B2C: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 006B2E: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 006B30: provisional 68k btst.l d6, (a4)+
db 0x99, 0x9B ; 006B32: provisional 68k sub.l d4, (a3)+
db 0x9B, 0x99 ; 006B34: provisional 68k sub.l d5, (a1)+
db 0x99, 0xAA, 0xAA, 0xDC ; 006B36: provisional 68k sub.l d4, -$5524(a2)
db 0xCC, 0xCC, 0xDF, 0xFF ; file 006B3A
db 0xF1, 0xFF ; 006B3E: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 006B40: provisional 68k dc.w $ff00
db 0x0D, 0x1D ; 006B42: provisional 68k btst.l d6, (a5)+
db 0xC9, 0x99 ; 006B44: provisional 68k and.l d4, (a1)+
db 0x99, 0x99 ; 006B46: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9C ; 006B48: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC, 0xCC, 0xCD ; file 006B4A
db 0xFF, 0xFF ; 006B4E: provisional 68k dc.w $ffff
db 0xF1, 0xFF ; 006B50: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 006B52: provisional 68k dc.w $ff00
db 0x0D, 0x1D ; 006B54: provisional 68k btst.l d6, (a5)+
db 0xCC, 0xCC ; file 006B56
db 0xC9, 0x99 ; 006B58: provisional 68k and.l d4, (a1)+
db 0x99, 0x9C ; 006B5A: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC ; file 006B5C
db 0xCC, 0xDF ; 006B5E: provisional 68k mulu.w (a7)+, d6
db 0xFF, 0xFD ; 006B60: provisional 68k dc.w $fffd
db 0xF1, 0xFF ; 006B62: provisional 68k dc.w $f1ff
db 0xFF, 0x01 ; 006B64: provisional 68k dc.w $ff01
db 0x0B, 0xCC, 0xCC, 0xCC ; 006B66: provisional 68k movep.l d5, -$3334(a4)
db 0xCC, 0xCC, 0xCC, 0xCC ; file 006B6A
db 0xCC, 0xDD ; 006B6E: provisional 68k mulu.w (a5)+, d6
db 0xFF, 0xDD ; 006B70: provisional 68k dc.w $ffdd
db 0xDD, 0xFF ; file 006B72
db 0xFF, 0x01 ; 006B74: provisional 68k dc.w $ff01
db 0x0B, 0xDD ; 006B76: provisional 68k bset.b d5, (a5)+
db 0xDC, 0xCC ; 006B78: provisional 68k adda.w a4, a6
db 0xCC, 0xCC, 0xCC, 0xCC, 0xDD, 0xFD ; file 006B7A
db 0xDD, 0xDD ; 006B80: provisional 68k adda.l (a5)+, a6
db 0xDF, 0xFF ; file 006B82
db 0xFF, 0x01 ; 006B84: provisional 68k dc.w $ff01
db 0x0B, 0x1F ; 006B86: provisional 68k btst.l d5, (a7)+
db 0xFF, 0xDD ; 006B88: provisional 68k dc.w $ffdd
db 0xCD, 0xCD ; file 006B8A
db 0xDD, 0xDD ; 006B8C: provisional 68k adda.l (a5)+, a6
db 0xFD, 0xDD ; 006B8E: provisional 68k dc.w $fddd
db 0xDD, 0xDD ; 006B90: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFF ; file 006B92
db 0xFF, 0x01 ; 006B94: provisional 68k dc.w $ff01
db 0x0B, 0x1D ; 006B96: provisional 68k btst.l d5, (a5)+
db 0xFF, 0xFF ; 006B98: provisional 68k dc.w $ffff
db 0xFF, 0xFD ; 006B9A: provisional 68k dc.w $fffd
db 0xFF, 0xFD ; 006B9C: provisional 68k dc.w $fffd
db 0xD9, 0x9C ; 006B9E: provisional 68k add.l d4, (a4)+
db 0xCD, 0xDD ; 006BA0: provisional 68k muls.w (a5)+, d6
db 0xD1, 0xFF ; file 006BA2
db 0xFF, 0x02 ; 006BA4: provisional 68k dc.w $ff02
db 0x09, 0xFF ; file 006BA6
db 0xFF, 0xFF ; 006BA8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006BAA: provisional 68k dc.w $ffff
db 0xDD, 0xC9 ; 006BAC: provisional 68k adda.l a1, a6
db 0x9C, 0xDD ; 006BAE: provisional 68k suba.w (a5)+, a6
db 0xDD, 0xFF ; file 006BB0
db 0xFF, 0x02 ; 006BB2: provisional 68k dc.w $ff02
db 0x09, 0x1F ; 006BB4: provisional 68k btst.l d4, (a7)+
db 0xFF, 0xFF ; 006BB6: provisional 68k dc.w $ffff
db 0xFF, 0xDD ; 006BB8: provisional 68k dc.w $ffdd
db 0xDD, 0xC9 ; 006BBA: provisional 68k adda.l a1, a6
db 0xCD, 0xCC, 0xD1, 0xFF ; file 006BBC
db 0xFF, 0x03 ; 006BC0: provisional 68k dc.w $ff03
db 0x07, 0xFF ; file 006BC2
db 0xFF, 0xFD ; 006BC4: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 006BC6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xCC ; 006BC8: provisional 68k adda.l a4, a6
db 0xCD, 0xFF ; file 006BCA
db 0xFF, 0x03 ; 006BCC: provisional 68k dc.w $ff03
db 0x07, 0x1D ; 006BCE: provisional 68k btst.l d3, (a5)+
db 0xFD, 0xDD ; 006BD0: provisional 68k dc.w $fddd
db 0xDD, 0xDD ; 006BD2: provisional 68k adda.l (a5)+, a6
db 0xCC, 0xCD, 0xD1, 0xFF ; file 006BD4
db 0xFF, 0x04 ; 006BD8: provisional 68k dc.w $ff04
db 0x05, 0x1F ; 006BDA: provisional 68k btst.l d2, (a7)+
db 0xFD, 0xDD ; 006BDC: provisional 68k dc.w $fddd
db 0xDC, 0xCF ; 006BDE: provisional 68k adda.w a7, a6
db 0xF1, 0xFF ; 006BE0: provisional 68k dc.w $f1ff
db 0xFF, 0xFF ; 006BE2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006BE4: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 006BE6: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 006BE8: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 006BEC: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 006BF0: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 006BF4
db 0x10, 0x10 ; 006BF6: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 006BF8: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 006BFA: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 006BFC: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 006BFE: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 006C02: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006C06: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 006C08: provisional 68k neg.w d4
db 0x4C, 0x50 ; file 006C0A
db 0x54, 0x18 ; 006C0C: provisional 68k addq.b #$2, (a0)+
db 0x1C, 0x20 ; 006C0E: provisional 68k move.b -(a0), d6
db 0x8C, 0x90 ; 006C10: provisional 68k or.l (a0), d6
db 0x90, 0xD8 ; 006C12: provisional 68k suba.w (a0)+, a0
db 0xDC, 0xD0 ; 006C14: provisional 68k adda.w (a0), a6
db 0x14, 0x34, 0x60, 0x38 ; 006C16: provisional 68k move.b $38(a4, d6.w), d2
db 0x60, 0x78 ; 006C1A: provisional 68k bra.b $6c94
db 0x34, 0x38, 0x44, 0xA8 ; 006C1C: provisional 68k move.w $44a8.w, d2
db 0xA8, 0xA4 ; 006C20: provisional 68k dc.w $a8a4
db 0xFF, 0xFF ; 006C22: provisional 68k dc.w $ffff
db 0x05, 0x04 ; 006C24: provisional 68k btst.l d2, d4
db 0xE8, 0xAA ; 006C26: provisional 68k lsr.l d4, d2
db 0xAA, 0xA8 ; 006C28: provisional 68k dc.w $aaa8
db 0xE1, 0xFF ; file 006C2A
db 0xFF, 0x04 ; 006C2C: provisional 68k dc.w $ff04
db 0x06, 0x8F, 0xBB, 0xBB, 0xBB, 0xFF ; file 006C2E
db 0xF8, 0x81 ; 006C34: provisional 68k dc.w $f881
db 0xFF, 0xFF ; 006C36: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 006C38: provisional 68k btst.l d1, d7
db 0x8F, 0xBB, 0xBB, 0xBB, 0xBB, 0xBF ; file 006C3A
db 0xFF, 0xA8 ; 006C40: provisional 68k dc.w $ffa8
db 0xFF, 0xFF ; 006C42: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 006C44
db 0x18, 0xBB, 0xBA, 0xAA ; 006C46: provisional 68k move.b $6bf2(pc, a3.l), (a4)
db 0xAB, 0xBB ; 006C4A: provisional 68k dc.w $abbb
db 0xBF, 0xFF ; file 006C4C
db 0xFA, 0x81 ; 006C4E: provisional 68k dc.w $fa81
db 0xFF, 0xFF ; 006C50: provisional 68k dc.w $ffff
db 0x02, 0x09, 0x8B, 0xBD, 0xCC, 0xCC ; file 006C52
db 0xCC, 0xDF ; 006C58: provisional 68k mulu.w (a7)+, d6
db 0xBF, 0xFF ; file 006C5A
db 0xFA, 0xA8 ; 006C5C: provisional 68k dc.w $faa8
db 0xFF, 0xFF ; 006C5E: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x18, 0xFF ; 006C60: provisional 68k movep.w $18ff(a3), d0
db 0xCC, 0xCC ; file 006C64
db 0xDC, 0xCC ; 006C66: provisional 68k adda.w a4, a6
db 0xCC, 0xFF ; file 006C68
db 0xFF, 0xAA ; 006C6A: provisional 68k dc.w $ffaa
db 0xA8, 0x81 ; 006C6C: provisional 68k dc.w $a881
db 0xFF, 0xFF ; 006C6E: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1A, 0xFC ; 006C70: provisional 68k movep.w $1afc(a3), d0
db 0xCC, 0xDD ; 006C74: provisional 68k mulu.w (a5)+, d6
db 0xDD, 0xDD ; 006C76: provisional 68k adda.l (a5)+, a6
db 0xCC, 0xDF ; 006C78: provisional 68k mulu.w (a7)+, d6
db 0xFF, 0xAA ; 006C7A: provisional 68k dc.w $ffaa
db 0xA8, 0x81 ; 006C7C: provisional 68k dc.w $a881
db 0xFF, 0xFF ; 006C7E: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x8F, 0xDC ; 006C80: provisional 68k movep.w -$7024(a3), d0
db 0xCD, 0xDD ; 006C84: provisional 68k muls.w (a5)+, d6
db 0xAD, 0xDD ; 006C86: provisional 68k dc.w $addd
db 0xDC, 0xCA ; 006C88: provisional 68k adda.w a2, a6
db 0xFA, 0xAA ; 006C8A: provisional 68k dc.w $faaa
db 0x88, 0x88 ; file 006C8C
db 0xFF, 0xFF ; 006C8E: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xAF, 0xCC ; 006C90: provisional 68k movep.w -$5034(a3), d0
db 0xCD, 0xC8 ; file 006C94
db 0x88, 0x9D ; 006C96: provisional 68k or.l (a5)+, d4
db 0xDD, 0xCD ; 006C98: provisional 68k adda.l a5, a6
db 0xAA, 0xAA ; 006C9A: provisional 68k dc.w $aaaa
db 0x88, 0x8E ; file 006C9C
db 0xFF, 0xFF ; 006C9E: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0xAD, 0xCC ; 006CA0: provisional 68k movep.w -$5234(a4), d0
db 0xDC, 0x9E ; 006CA4: provisional 68k add.l (a6)+, d6
db 0xE9, 0x99 ; 006CA6: provisional 68k rol.l #$4, d1
db 0xDD, 0xCC ; 006CA8: provisional 68k adda.l a4, a6
db 0xAA, 0xA8 ; 006CAA: provisional 68k dc.w $aaa8
db 0x88, 0x8E, 0xE1, 0xFF ; file 006CAC
db 0xFF, 0x00 ; 006CB0: provisional 68k dc.w $ff00
db 0x0D, 0x1E ; 006CB2: provisional 68k btst.l d6, (a6)+
db 0xAD, 0xCC ; 006CB4: provisional 68k dc.w $adcc
db 0xDC, 0x99 ; 006CB6: provisional 68k add.l (a1)+, d6
db 0x99, 0x99 ; 006CB8: provisional 68k sub.l d4, (a1)+
db 0xDD, 0xCC ; 006CBA: provisional 68k adda.l a4, a6
db 0xA8, 0x88 ; 006CBC: provisional 68k dc.w $a888
db 0x88, 0x8E, 0xE1, 0xFF ; file 006CBE
db 0xFF, 0x00 ; 006CC2: provisional 68k dc.w $ff00
db 0x0D, 0x1E ; 006CC4: provisional 68k btst.l d6, (a6)+
db 0xAC, 0xCC ; 006CC6: provisional 68k dc.w $accc
db 0xDC, 0x99 ; 006CC8: provisional 68k add.l (a1)+, d6
db 0x99, 0x99 ; 006CCA: provisional 68k sub.l d4, (a1)+
db 0xDC, 0xCC ; 006CCC: provisional 68k adda.w a4, a6
db 0x8A, 0x88 ; file 006CCE
db 0x88, 0xEE, 0xE1, 0xFF ; 006CD0: provisional 68k divu.w -$1e01(a6), d4
db 0xFF, 0x00 ; 006CD4: provisional 68k dc.w $ff00
db 0x0D, 0x18 ; 006CD6: provisional 68k btst.l d6, (a0)+
db 0xAC, 0xCC ; 006CD8: provisional 68k dc.w $accc
db 0xDC, 0x99 ; 006CDA: provisional 68k add.l (a1)+, d6
db 0x99, 0x9C ; 006CDC: provisional 68k sub.l d4, (a4)+
db 0xDC, 0xC8 ; 006CDE: provisional 68k adda.w a0, a6
db 0x88, 0x88 ; file 006CE0
db 0x88, 0xEE, 0xE1, 0xFF ; 006CE2: provisional 68k divu.w -$1e01(a6), d4
db 0xFF, 0x00 ; 006CE6: provisional 68k dc.w $ff00
db 0x0D, 0x18 ; 006CE8: provisional 68k btst.l d6, (a0)+
db 0x88, 0xCC ; file 006CEA
db 0xDC, 0xC9 ; 006CEC: provisional 68k adda.w a1, a6
db 0x99, 0xCC ; 006CEE: provisional 68k suba.l a4, a4
db 0xCC, 0xC8, 0x88, 0x88 ; file 006CF0
db 0x8E, 0xEE, 0xE1, 0xFF ; 006CF4: provisional 68k divu.w -$1e01(a6), d7
db 0xFF, 0x00 ; 006CF8: provisional 68k dc.w $ff00
db 0x0D, 0x1E ; 006CFA: provisional 68k btst.l d6, (a6)+
db 0x88, 0xCC ; file 006CFC
db 0xCD, 0xDC ; 006CFE: provisional 68k muls.w (a4)+, d6
db 0xCC, 0xCC, 0xCC, 0xC8, 0x88, 0x88 ; file 006D00
db 0x8E, 0xEE, 0xE1, 0xFF ; 006D06: provisional 68k divu.w -$1e01(a6), d7
db 0xFF, 0x00 ; 006D0A: provisional 68k dc.w $ff00
db 0x0D, 0x1E ; 006D0C: provisional 68k btst.l d6, (a6)+
db 0x88, 0xCC, 0xCC, 0xCC ; file 006D0E
db 0xDC, 0xDC ; 006D12: provisional 68k adda.w (a4)+, a6
db 0xCC, 0x88, 0x88, 0x88, 0xEE, 0xEE, 0xE1, 0xFF ; file 006D14
db 0xFF, 0x01 ; 006D1C: provisional 68k dc.w $ff01
db 0x0C, 0x88, 0x8C, 0xCC, 0xCC, 0xCC, 0xCC, 0xC8, 0x88, 0x88 ; file 006D1E
db 0x8E, 0xEE, 0xEE, 0xE1 ; 006D28: provisional 68k divu.w -$111f(a6), d7
db 0xFF, 0xFF ; 006D2C: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0x8E, 0xEE ; 006D2E: provisional 68k movep.w -$7112(a4), d0
db 0xCC, 0xCC, 0xCC, 0xCE, 0x88, 0x88 ; file 006D32
db 0x8E, 0xEE, 0xEE, 0xEE ; 006D38: provisional 68k divu.w -$1112(a6), d7
db 0xE1, 0xFF ; file 006D3C
db 0xFF, 0x01 ; 006D3E: provisional 68k dc.w $ff01
db 0x0B, 0x1E ; 006D40: provisional 68k btst.l d5, (a6)+
db 0xEE, 0xEE, 0xEC, 0xCE ; file 006D42
db 0xE8, 0x88 ; 006D46: provisional 68k lsr.l #$4, d0
db 0x8E, 0xEE, 0xEE, 0xEE ; 006D48: provisional 68k divu.w -$1112(a6), d7
db 0x8E, 0xFF ; file 006D4C
db 0xFF, 0x02 ; 006D4E: provisional 68k dc.w $ff02
db 0x0A, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0x88, 0x88 ; file 006D50
db 0xE8, 0x88 ; 006D5A: provisional 68k lsr.l #$4, d0
db 0xFF, 0xFF ; 006D5C: provisional 68k dc.w $ffff
db 0x02, 0x0A, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xE8, 0xD8, 0x88, 0x88, 0x81, 0xFF ; file 006D5E
db 0xFF, 0x02 ; 006D6C: provisional 68k dc.w $ff02
db 0x09, 0x1E ; 006D6E: provisional 68k btst.l d4, (a6)+
db 0xEE, 0xEE, 0xEE, 0xEE ; file 006D70
db 0xE8, 0x8D ; 006D74: provisional 68k lsr.l #$4, d5
db 0x88, 0x88, 0x88, 0xFF ; file 006D76
db 0xFF, 0x03 ; 006D7A: provisional 68k dc.w $ff03
db 0x08, 0xEE, 0xEE, 0xEE, 0xEE, 0xE8, 0x88, 0x88 ; file 006D7C
db 0x88, 0x81 ; 006D84: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 006D86: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 006D88: provisional 68k btst.l d1, d7
db 0x1E, 0xEE, 0xEE, 0xEE ; 006D8A: provisional 68k move.b -$1112(a6), (a7)+
db 0x88, 0x88, 0x88, 0x88 ; file 006D8E
db 0xFF, 0xFF ; 006D92: provisional 68k dc.w $ffff
db 0x04, 0x05, 0xEE, 0xEE ; 006D94: provisional 68k subi.b #$ee, d5
db 0x88, 0x88, 0x88, 0x88 ; file 006D98
db 0xFF, 0xFF ; 006D9C: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 006D9E: provisional 68k btst.l d2, d3
db 0xEE, 0xE8 ; file 006DA0
db 0x88, 0xEC, 0xFF, 0xFF ; 006DA2: provisional 68k divu.w -$1(a4), d4
db 0xFF, 0xFF ; 006DA6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006DA8: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 006DAA: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 006DAE: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 006DB2: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 006DB6
db 0x10, 0x10 ; 006DB8: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 006DBA: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 006DBC: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 006DBE: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 006DC0: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 006DC4: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006DC8: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 006DCA: provisional 68k neg.w d4
db 0x0C, 0x10, 0x18, 0xA4 ; 006DCC: provisional 68k cmpi.b #$a4, (a0)
db 0xA4, 0xA0 ; 006DD0: provisional 68k dc.w $a4a0
db 0x4C, 0x50 ; 006DD2: provisional 68k dc.w $4c50
db 0x60, 0x00, 0x28, 0x48 ; 006DD4: provisional 68k bra.w $961e
db 0xD8, 0xD8 ; 006DD8: provisional 68k adda.w (a0)+, a4
db 0xD0, 0x78, 0x78, 0x78 ; 006DDA: provisional 68k add.w $7878.w, d0
db 0x38, 0x3C, 0x44, 0x08 ; 006DDE: provisional 68k move.w #$4408, d4
db 0x2C, 0x5C ; 006DE2: provisional 68k movea.l (a4)+, a6
db 0xFF, 0xFF ; 006DE4: provisional 68k dc.w $ffff
db 0x04, 0x05, 0x1E, 0xD9 ; 006DE6: provisional 68k subi.b #$d9, d5
db 0xCC, 0xCC ; file 006DEA
db 0x9D, 0xAE, 0xFF, 0xFF ; 006DEC: provisional 68k sub.l d6, -$1(a6)
db 0x03, 0x07 ; 006DF0: provisional 68k btst.l d1, d7
db 0x1E, 0xDC ; 006DF2: provisional 68k move.b (a4)+, (a7)+
db 0xCC, 0xCC, 0xCC, 0xCC ; file 006DF4
db 0x99, 0xA1 ; 006DF8: provisional 68k sub.l d4, -(a1)
db 0xFF, 0xFF ; 006DFA: provisional 68k dc.w $ffff
db 0x03, 0x08, 0xAC, 0xCC ; 006DFC: provisional 68k movep.w -$5334(a0), d1
db 0xCC, 0xCC, 0xCC, 0xCC ; file 006E00
db 0x99, 0x9D ; 006E04: provisional 68k sub.l d4, (a5)+
db 0xA1, 0xFF ; 006E06: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 006E08: provisional 68k dc.w $ff02
db 0x09, 0x1D ; 006E0A: provisional 68k btst.l d4, (a5)+
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 006E0C
db 0x99, 0x99 ; 006E12: provisional 68k sub.l d4, (a1)+
db 0xDE, 0xFF ; file 006E14
db 0xFF, 0x02 ; 006E16: provisional 68k dc.w $ff02
db 0x0A, 0xAC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; 006E18: provisional 68k eori.l #$cccccccc, -$3334(a4)
db 0x99, 0x99 ; 006E20: provisional 68k sub.l d4, (a1)+
db 0xDD, 0xA1 ; 006E22: provisional 68k add.l d6, -(a1)
db 0xFF, 0xFF ; 006E24: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1A, 0xCC ; 006E26: provisional 68k movep.w $1acc(a3), d0
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xC9 ; file 006E2A
db 0x99, 0x99 ; 006E30: provisional 68k sub.l d4, (a1)+
db 0xDD, 0xA1 ; 006E32: provisional 68k add.l d6, -(a1)
db 0xFF, 0xFF ; 006E34: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x19, 0xCC ; 006E36: provisional 68k movep.w $19cc(a3), d0
db 0xCC, 0xCC, 0xCC, 0xCC ; file 006E3A
db 0xCC, 0x99 ; 006E3E: provisional 68k and.l (a1)+, d6
db 0x99, 0x9D ; 006E40: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xAE, 0xFF, 0xFF ; 006E42: provisional 68k add.l d6, -$1(a6)
db 0x01, 0x0B, 0xA9, 0x9C ; 006E46: provisional 68k movep.w -$5664(a3), d0
db 0x9E, 0xFF, 0xED, 0xCC ; file 006E4A
db 0xC9, 0x99 ; 006E4E: provisional 68k and.l d4, (a1)+
db 0x99, 0x9D ; 006E50: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xAE, 0xFF, 0xFF ; 006E52: provisional 68k add.l d6, -$1(a6)
db 0x01, 0x0C, 0xD9, 0x9E ; 006E56: provisional 68k movep.w -$2662(a4), d0
db 0xFF, 0xFA ; 006E5A: provisional 68k dc.w $fffa
db 0xAF, 0xFA ; 006E5C: provisional 68k dc.w $affa
db 0x99, 0x99 ; 006E5E: provisional 68k sub.l d4, (a1)+
db 0x99, 0xDD ; 006E60: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xAE, 0xE1, 0xFF ; 006E62: provisional 68k add.l d6, -$1e01(a6)
db 0xFF, 0x01 ; 006E66: provisional 68k dc.w $ff01
db 0x0C, 0x99, 0xAF, 0xFF, 0xA9, 0x9A ; 006E68: provisional 68k cmpi.l #$afffa99a, (a1)+
db 0xFF, 0xE9 ; 006E6E: provisional 68k dc.w $ffe9
db 0x99, 0x9D ; 006E70: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDA ; 006E72: provisional 68k adda.l (a2)+, a6
db 0xAE, 0xE1 ; 006E74: provisional 68k dc.w $aee1
db 0xFF, 0xFF ; 006E76: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 006E78
db 0x1E, 0x9D ; 006E7A: provisional 68k move.b (a5)+, (a7)
db 0xFF, 0xFF ; 006E7C: provisional 68k dc.w $ffff
db 0xAD, 0x9A ; 006E7E: provisional 68k dc.w $ad9a
db 0xFF, 0xFA ; 006E80: provisional 68k dc.w $fffa
db 0x9D, 0xDD ; 006E82: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDA ; 006E84: provisional 68k adda.l (a2)+, a6
db 0xEE, 0xE1 ; file 006E86
db 0xFF, 0xFF ; 006E88: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 006E8A
db 0x1E, 0xDE ; 006E8C: provisional 68k move.b (a6)+, (a7)+
db 0xFF, 0xFB ; 006E8E: provisional 68k dc.w $fffb
db 0x8E, 0x8B ; file 006E90
db 0xFF, 0xFF ; 006E92: provisional 68k dc.w $ffff
db 0xDD, 0xDD ; 006E94: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xAA, 0xEE, 0xE1 ; 006E96: provisional 68k add.l d6, -$111f(a2)
db 0xFF, 0xFF ; 006E9A: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 006E9C
db 0x1A, 0xDF ; 006E9E: provisional 68k move.b (a7)+, (a5)+
db 0xFF, 0xB8 ; 006EA0: provisional 68k dc.w $ffb8
db 0x88, 0x88, 0xBF, 0xFF ; file 006EA2
db 0xAD, 0xDD ; 006EA6: provisional 68k dc.w $addd
db 0xDA, 0xAE, 0xEE, 0xE1 ; 006EA8: provisional 68k add.l -$111f(a6), d5
db 0xFF, 0xFF ; 006EAC: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 006EAE
db 0x1E, 0xDF ; 006EB0: provisional 68k move.b (a7)+, (a7)+
db 0xFF, 0xB8 ; 006EB2: provisional 68k dc.w $ffb8
db 0x88, 0x88, 0x8F, 0xFF, 0xED, 0xDD ; file 006EB4
db 0xAA, 0xAE ; 006EBA: provisional 68k dc.w $aaae
db 0xEE, 0xE1 ; file 006EBC
db 0xFF, 0xFF ; 006EBE: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 006EC0
db 0x1E, 0xDB ; 006EC2: provisional 68k move.b (a3)+, (a7)+
db 0xFB, 0xB8 ; 006EC4: provisional 68k dc.w $fbb8
db 0x88, 0x88, 0x8F, 0xFF ; file 006EC6
db 0xFA, 0xDA ; 006ECA: provisional 68k dc.w $fada
db 0xAA, 0xEE ; 006ECC: provisional 68k dc.w $aaee
db 0xEE, 0xE1 ; file 006ECE
db 0xFF, 0xFF ; 006ED0: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 006ED2
db 0x1E, 0xAF, 0xBB, 0xB8 ; 006ED4: provisional 68k move.b -$4448(a7), (a7)
db 0x88, 0x88, 0x8F, 0xFF ; file 006ED8
db 0xFA, 0xAA ; 006EDC: provisional 68k dc.w $faaa
db 0xAA, 0xEE ; 006EDE: provisional 68k dc.w $aaee
db 0xEE, 0xE1 ; file 006EE0
db 0xFF, 0xFF ; 006EE2: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0xEE, 0xFB ; 006EE4: provisional 68k movep.w -$1105(a4), d0
db 0xBB, 0x88 ; 006EE8: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x8F ; file 006EEA
db 0xFF, 0xFA ; 006EEC: provisional 68k dc.w $fffa
db 0xAA, 0xEE ; 006EEE: provisional 68k dc.w $aaee
db 0xEE, 0xEE, 0xE1, 0xFF ; file 006EF0
db 0xFF, 0x01 ; 006EF4: provisional 68k dc.w $ff01
db 0x0C, 0xEE, 0xBB, 0xBB ; file 006EF6
db 0xB8, 0x8B ; 006EFA: provisional 68k cmp.l a3, d4
db 0xBF, 0xFF, 0xEA, 0xEE, 0xEE, 0xEE, 0xEE, 0xE1 ; file 006EFC
db 0xFF, 0xFF ; 006F04: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1E, 0x8B ; 006F06: provisional 68k movep.w $1e8b(a3), d0
db 0xBB, 0xBB, 0xBB, 0xBF, 0xEF, 0xEE, 0xEE, 0xEE ; file 006F0A
db 0xEE, 0xAE ; 006F12: provisional 68k lsr.l d7, d6
db 0xFF, 0xFF ; 006F14: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 006F16
db 0xE8, 0xBB ; 006F18: provisional 68k ror.l d4, d3
db 0xBB, 0xBB, 0xBF, 0xFE ; file 006F1A
db 0xAA, 0xAA ; 006F1E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 006F20: provisional 68k dc.w $aaaa
db 0xAE, 0xFF ; 006F22: provisional 68k dc.w $aeff
db 0xFF, 0x02 ; 006F24: provisional 68k dc.w $ff02
db 0x0A, 0xEE, 0x8B, 0xBB ; file 006F26
db 0xBB, 0xB8, 0xEE, 0xAA ; 006F2A: provisional 68k eor.l d5, $eeaa.w
db 0xAD, 0xAA ; 006F2E: provisional 68k dc.w $adaa
db 0xAA, 0xE1 ; 006F30: provisional 68k dc.w $aae1
db 0xFF, 0xFF ; 006F32: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 006F34
db 0x1E, 0xEE, 0x88, 0x88 ; 006F36: provisional 68k move.b -$7778(a6), (a7)+
db 0x8E, 0xAA, 0xAA, 0xAA ; 006F3A: provisional 68k or.l -$5556(a2), d7
db 0xAA, 0xAE ; 006F3E: provisional 68k dc.w $aaae
db 0xFF, 0xFF ; 006F40: provisional 68k dc.w $ffff
db 0x03, 0x08, 0xEE, 0xEE ; 006F42: provisional 68k movep.w -$1112(a0), d1
db 0xEE, 0xEE ; file 006F46
db 0xEA, 0xAA ; 006F48: provisional 68k lsr.l d5, d2
db 0xAA, 0xAA ; 006F4A: provisional 68k dc.w $aaaa
db 0xE1, 0xFF ; file 006F4C
db 0xFF, 0x03 ; 006F4E: provisional 68k dc.w $ff03
db 0x07, 0x1E ; 006F50: provisional 68k btst.l d3, (a6)+
db 0xEE, 0xEE ; file 006F52
db 0xEA, 0xAA ; 006F54: provisional 68k lsr.l d5, d2
db 0xAA, 0xAA ; 006F56: provisional 68k dc.w $aaaa
db 0xAE, 0xFF ; 006F58: provisional 68k dc.w $aeff
db 0xFF, 0x04 ; 006F5A: provisional 68k dc.w $ff04
db 0x05, 0xEE, 0xEA, 0xEA ; 006F5C: provisional 68k bset.b d2, -$1516(a6)
db 0xAA, 0xAA ; 006F60: provisional 68k dc.w $aaaa
db 0xAE, 0xFF ; 006F62: provisional 68k dc.w $aeff
db 0xFF, 0x05 ; 006F64: provisional 68k dc.w $ff05
db 0x03, 0x1E ; 006F66: provisional 68k btst.l d1, (a6)+
db 0xEE, 0xEE, 0xEE, 0xFF ; file 006F68
db 0xFF, 0xFF ; 006F6C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006F6E: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 006F70: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 006F72: provisional 68k ori.b #$0, d7
db 0x00, 0x34, 0x00, 0x30, 0x00, 0x00 ; 006F76: provisional 68k ori.b #$30, (a4, d0.w)
db 0x00, 0x58, 0x00, 0x00 ; 006F7C: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x1A ; 006F80: provisional 68k ori.b #$1a, d0
db 0x00, 0x0E ; file 006F84
db 0x00, 0x00, 0x00, 0x01 ; 006F86: provisional 68k ori.b #$1, d0
db 0x00, 0x01, 0x00, 0x0A ; 006F8A: provisional 68k ori.b #$a, d1
db 0x00, 0x00, 0x00, 0x00 ; 006F8E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 006F92: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x02 ; 006F96: provisional 68k ori.b #$2, d0
db 0x00, 0x00, 0x00, 0x00 ; 006F9A: provisional 68k ori.b #$0, d0
db 0x00, 0x34, 0x00, 0x30, 0x00, 0x10 ; 006F9E: provisional 68k ori.b #$30, $10(a4, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 006FA4
db 0x10, 0x10 ; 006FA8: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 006FAA: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 006FAC: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 006FAE: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 006FB0: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 006FB4: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006FB8: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 006FBA: provisional 68k neg.w d4
db 0x28, 0x18 ; 006FBC: provisional 68k move.l (a0)+, d4
db 0x0C, 0x70, 0x70, 0x70, 0x7C, 0x4C ; 006FBE: provisional 68k cmpi.w #$7070, $4c(a0, d7.l)
db 0x34, 0xC8 ; 006FC4: provisional 68k move.w a0, (a2)+
db 0xB0, 0x98 ; 006FC6: provisional 68k cmp.l (a0)+, d0
db 0x64, 0x3C ; 006FC8: provisional 68k bcc.b $7006
db 0x2C, 0x5C ; 006FCA: provisional 68k movea.l (a4)+, a6
db 0x4C, 0x48 ; file 006FCC
db 0x94, 0x7C, 0x68, 0x64 ; 006FCE: provisional 68k sub.w #$6864, d2
db 0x44, 0x34, 0x0C, 0x01 ; 006FD2: provisional 68k neg.b $1(a4, d0.l)
db 0x1C, 0xC1 ; 006FD6: provisional 68k move.b d1, (a6)+
db 0xFF, 0xFF ; 006FD8: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xCC, 0xCC ; 006FDA: provisional 68k cmpi.b #$cc, d1
db 0xFF, 0xFF ; 006FDE: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xCC, 0xCC ; 006FE0: provisional 68k cmpi.b #$cc, d1
db 0xFF, 0xFF ; 006FE4: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 006FE6: provisional 68k btst.l d5, d3
db 0x1C, 0xCA ; file 006FE8
db 0xCC, 0xC1 ; 006FEA: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 006FEC: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 006FEE: provisional 68k btst.l d5, d3
db 0x1C, 0xCA ; file 006FF0
db 0xCC, 0xC1 ; 006FF2: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 006FF4: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 006FF6: provisional 68k btst.l d5, d3
db 0xCC, 0xAA, 0xCA, 0xCC ; 006FF8: provisional 68k and.l -$3534(a2), d6
db 0xFF, 0xFF ; 006FFC: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 006FFE: provisional 68k btst.l d5, d3
db 0xCC, 0xAA, 0xAA, 0xCC ; 007000: provisional 68k and.l -$5534(a2), d6
db 0xFF, 0xFF ; 007004: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0x1C, 0xCF ; 007006: provisional 68k eori.b #$cf, d5
db 0xFA, 0xAA ; 00700A: provisional 68k dc.w $faaa
db 0xAC, 0xC1 ; 00700C: provisional 68k dc.w $acc1
db 0xFF, 0xFF ; 00700E: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0x1C, 0xFF ; 007010: provisional 68k eori.b #$ff, d5
db 0xCA, 0xAA, 0xAC, 0xC1 ; 007014: provisional 68k and.l -$533f(a2), d5
db 0xFF, 0xFF ; 007018: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0xCC, 0xFF ; 00701A: provisional 68k eori.b #$ff, d5
db 0xCA, 0xAA, 0xAC, 0xCC ; 00701E: provisional 68k and.l -$5334(a2), d5
db 0xFF, 0xFF ; 007022: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0xCA, 0xAC ; 007024: provisional 68k eori.b #$ac, d5
db 0xAE, 0xEA ; 007028: provisional 68k dc.w $aeea
db 0xFA, 0xAC ; 00702A: provisional 68k dc.w $faac
db 0xFF, 0xFF ; 00702C: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 00702E: provisional 68k btst.l d4, d7
db 0x1C, 0xCA ; file 007030
db 0xAE, 0xBB ; 007032: provisional 68k dc.w $aebb
db 0xBB, 0xEA, 0xAC, 0xC1 ; 007034: provisional 68k cmpa.l -$533f(a2), a5
db 0xFF, 0xFF ; 007038: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 00703A: provisional 68k btst.l d4, d7
db 0xCC, 0xAE, 0xEB, 0xBE ; 00703C: provisional 68k and.l -$1442(a6), d6
db 0xEB, 0xBE ; 007040: provisional 68k rol.l d5, d6
db 0xEA, 0xC1 ; file 007042
db 0xFF, 0xFF ; 007044: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 007046: provisional 68k btst.l d4, d7
db 0xCC, 0xAB, 0xBE, 0x8A ; 007048: provisional 68k and.l -$4176(a3), d6
db 0xC8, 0xEE, 0xEC, 0xCC ; 00704C: provisional 68k mulu.w -$1334(a6), d4
db 0xFF, 0xFF ; 007050: provisional 68k dc.w $ffff
db 0x08, 0x08, 0x1C, 0xCA ; file 007052
db 0xAE, 0xEC ; 007056: provisional 68k dc.w $aeec
db 0x88, 0x88 ; file 007058
db 0xCE, 0xED, 0xAC, 0xFF ; 00705A: provisional 68k mulu.w -$5301(a5), d7
db 0xFF, 0x08 ; 00705E: provisional 68k dc.w $ff08
db 0x09, 0x1C ; 007060: provisional 68k btst.l d4, (a4)+
db 0xCA, 0xD9 ; 007062: provisional 68k mulu.w (a1)+, d5
db 0x9C, 0x88 ; 007064: provisional 68k sub.l a0, d6
db 0x88, 0xC9 ; file 007066
db 0x9D, 0xCC ; 007068: provisional 68k suba.l a4, a6
db 0xC1, 0xFF ; file 00706A
db 0xFF, 0x08 ; 00706C: provisional 68k dc.w $ff08
db 0x09, 0xCC, 0xCC, 0xC9 ; 00706E: provisional 68k movep.l d4, -$3337(a4)
db 0x9C, 0x88 ; 007072: provisional 68k sub.l a0, d6
db 0x88, 0xC9 ; file 007074
db 0x9D, 0xCC ; 007076: provisional 68k suba.l a4, a6
db 0xC1, 0xFF ; file 007078
db 0xFF, 0x08 ; 00707A: provisional 68k dc.w $ff08
db 0x09, 0xCF, 0xCC, 0xC9 ; 00707C: provisional 68k movep.l d4, -$3337(a7)
db 0x9C, 0x88 ; 007080: provisional 68k sub.l a0, d6
db 0x88, 0xC9 ; file 007082
db 0x9D, 0xCC ; 007084: provisional 68k suba.l a4, a6
db 0xCC, 0xFF ; file 007086
db 0xFF, 0x07 ; 007088: provisional 68k dc.w $ff07
db 0x0A, 0x1C, 0xCF, 0xAA ; 00708A: provisional 68k eori.b #$aa, (a4)+
db 0xCD, 0xDD ; 00708E: provisional 68k muls.w (a5)+, d6
db 0x88, 0x88 ; file 007090
db 0x99, 0x98 ; 007092: provisional 68k sub.l d4, (a0)+
db 0x8A, 0xAC, 0xFF, 0xFF ; 007094: provisional 68k or.l -$1(a4), d5
db 0x07, 0x0B, 0x1C, 0xFA ; 007098: provisional 68k movep.w $1cfa(a3), d3
db 0xAA, 0xAD ; 00709C: provisional 68k dc.w $aaad
db 0xD9, 0x99 ; 00709E: provisional 68k add.l d4, (a1)+
db 0x99, 0x9D ; 0070A0: provisional 68k sub.l d4, (a5)+
db 0xD8, 0x8F ; 0070A2: provisional 68k add.l a7, d4
db 0xAC, 0xC1 ; 0070A4: provisional 68k dc.w $acc1
db 0xFF, 0xFF ; 0070A6: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0xCC, 0xCC ; 0070A8: provisional 68k movep.w -$3334(a3), d3
db 0xCC, 0xAC, 0xCD, 0x99 ; 0070AC: provisional 68k and.l -$3267(a4), d6
db 0x99, 0xD8 ; 0070B0: provisional 68k suba.l (a0)+, a4
db 0x88, 0x8C, 0xCD, 0xCC ; file 0070B2
db 0xFF, 0xFF ; 0070B6: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0xCF, 0xAF ; 0070B8: provisional 68k movep.w -$3051(a3), d3
db 0xAA, 0xAF ; 0070BC: provisional 68k dc.w $aaaf
db 0xF8, 0x88 ; 0070BE: provisional 68k dc.w $f888
db 0x88, 0x88, 0x88, 0xCA ; file 0070C0
db 0xAA, 0xCC ; 0070C4: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 0070C6: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x1C, 0xCA ; file 0070C8
db 0xAC, 0xFA ; 0070CC: provisional 68k dc.w $acfa
db 0xAA, 0xAC ; 0070CE: provisional 68k dc.w $aaac
db 0x88, 0x88, 0x88, 0x8C ; file 0070D0
db 0xAF, 0xAA ; 0070D4: provisional 68k dc.w $afaa
db 0xAC, 0xC1 ; 0070D6: provisional 68k dc.w $acc1
db 0xFF, 0xFF ; 0070D8: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x1C, 0xCC, 0xCC, 0xCC ; file 0070DA
db 0xFC, 0xCC ; 0070E0: provisional 68k dc.w $fccc
db 0xCC, 0x88, 0x8C, 0xCC, 0xCC, 0xCA ; file 0070E2
db 0xCC, 0xC1 ; 0070E8: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 0070EA: provisional 68k dc.w $ffff
db 0x06, 0x0D ; file 0070EC
db 0xCC, 0xAA, 0xAA, 0xAA ; 0070EE: provisional 68k and.l -$5556(a2), d6
db 0xAA, 0xAA ; 0070F2: provisional 68k dc.w $aaaa
db 0xAA, 0xCA ; 0070F4: provisional 68k dc.w $aaca
db 0xAA, 0xAA ; 0070F6: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xCC ; 0070F8: provisional 68k and.l -$5534(a2), d5
db 0xFF, 0xFF ; 0070FC: provisional 68k dc.w $ffff
db 0x06, 0x0D ; file 0070FE
db 0xCA, 0xAA, 0xAA, 0xAA ; 007100: provisional 68k and.l -$5556(a2), d5
db 0xAA, 0xAA ; 007104: provisional 68k dc.w $aaaa
db 0xAA, 0xCA ; 007106: provisional 68k dc.w $aaca
db 0xAA, 0xAA ; 007108: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xAC ; 00710A: provisional 68k and.l -$5554(a2), d5
db 0xFF, 0xFF ; 00710E: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0x1C, 0xCA ; 007110: provisional 68k movep.w $1cca(a7), d2
db 0xCC, 0xAF, 0xAA, 0xFA ; 007114: provisional 68k and.l -$5506(a7), d6
db 0xAA, 0xAF ; 007118: provisional 68k dc.w $aaaf
db 0xCA, 0xFF ; file 00711A
db 0xFF, 0xCF ; 00711C: provisional 68k dc.w $ffcf
db 0xFF, 0xFF ; 00711E: provisional 68k dc.w $ffff
db 0xFC, 0xC1 ; 007120: provisional 68k dc.w $fcc1
db 0xFF, 0xFF ; 007122: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0x1C, 0xFC ; 007124: provisional 68k movep.w $1cfc(a7), d2
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 007128
db 0xCC, 0xC1 ; 007134: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 007136: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0xCC, 0xAA ; 007138: provisional 68k movep.w -$3356(a7), d2
db 0xAA, 0xAF ; 00713C: provisional 68k dc.w $aaaf
db 0xAA, 0xAA ; 00713E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007140: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007142: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007144: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007146: provisional 68k dc.w $aaaa
db 0xAA, 0xCC ; 007148: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 00714A: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0xCA, 0xFA ; 00714C: provisional 68k movep.w -$3506(a7), d2
db 0xAA, 0xAC ; 007150: provisional 68k dc.w $aaac
db 0xFA, 0xFA ; 007152: provisional 68k dc.w $fafa
db 0xAC, 0xCF ; 007154: provisional 68k dc.w $accf
db 0xAA, 0xAC ; 007156: provisional 68k dc.w $aaac
db 0xCF, 0xAA, 0xFF, 0xFF ; 007158: provisional 68k and.l d7, -$1(a2)
db 0xFF, 0xFC ; 00715C: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 00715E: provisional 68k dc.w $ffff
db 0x04, 0x11, 0x1C, 0xCF ; 007160: provisional 68k subi.b #$cf, (a1)
db 0xFF, 0xFF ; 007164: provisional 68k dc.w $ffff
db 0xFC, 0xFF ; 007166: provisional 68k dc.w $fcff
db 0xAF, 0xFC ; 007168: provisional 68k dc.w $affc
db 0xCF, 0xAF, 0xFC, 0xCF ; 00716A: provisional 68k and.l d7, -$331(a7)
db 0xAF, 0xFF ; 00716E: provisional 68k dc.w $afff
db 0xFF, 0xFF ; 007170: provisional 68k dc.w $ffff
db 0xFC, 0xC1 ; 007172: provisional 68k dc.w $fcc1
db 0xFF, 0xFF ; 007174: provisional 68k dc.w $ffff
db 0x04, 0x11, 0x1C, 0xCA ; 007176: provisional 68k subi.b #$ca, (a1)
db 0xCC, 0xCC, 0xCA, 0xCF ; file 00717A
db 0xCA, 0xAF, 0xFC, 0xCC ; 00717E: provisional 68k and.l -$334(a7), d5
db 0xCA, 0xAC, 0xCC, 0xCA ; 007182: provisional 68k and.l -$3336(a4), d5
db 0xCC, 0xCC ; file 007186
db 0xCC, 0xC1 ; 007188: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 00718A: provisional 68k dc.w $ffff
db 0x04, 0x11, 0xCC, 0xAA ; 00718C: provisional 68k subi.b #$aa, (a1)
db 0xAF, 0xFF ; 007190: provisional 68k dc.w $afff
db 0xAA, 0xAA ; 007192: provisional 68k dc.w $aaaa
db 0xFA, 0xAA ; 007194: provisional 68k dc.w $faaa
db 0xAA, 0xFA ; 007196: provisional 68k dc.w $aafa
db 0xAA, 0xAA ; 007198: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xAF ; 00719A: provisional 68k and.l -$5551(a2), d5
db 0xAA, 0xCC ; 00719E: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 0071A0: provisional 68k dc.w $ffff
db 0x04, 0x11, 0xCC, 0xAA ; 0071A2: provisional 68k subi.b #$aa, (a1)
db 0xAF, 0xFF ; 0071A6: provisional 68k dc.w $afff
db 0xAA, 0xAA ; 0071A8: provisional 68k dc.w $aaaa
db 0xFA, 0xAA ; 0071AA: provisional 68k dc.w $faaa
db 0xAA, 0xFA ; 0071AC: provisional 68k dc.w $aafa
db 0xAA, 0xAA ; 0071AE: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xAF ; 0071B0: provisional 68k and.l -$5551(a2), d5
db 0xAA, 0xCC ; 0071B4: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 0071B6: provisional 68k dc.w $ffff
db 0x03, 0x13 ; 0071B8: provisional 68k btst.l d1, (a3)
db 0x1C, 0xCC ; file 0071BA
db 0xFF, 0xAF ; 0071BC: provisional 68k dc.w $ffaf
db 0xCC, 0xFF ; file 0071BE
db 0xAF, 0xCF ; 0071C0: provisional 68k dc.w $afcf
db 0xFA, 0xFA ; 0071C2: provisional 68k dc.w $fafa
db 0xCF, 0xFF ; file 0071C4
db 0xFF, 0xCC ; 0071C6: provisional 68k dc.w $ffcc
db 0xFF, 0xFF ; 0071C8: provisional 68k dc.w $ffff
db 0xFC, 0xCF ; 0071CA: provisional 68k dc.w $fccf
db 0xFC, 0xC1 ; 0071CC: provisional 68k dc.w $fcc1
db 0xFF, 0xFF ; 0071CE: provisional 68k dc.w $ffff
db 0x03, 0x13 ; 0071D0: provisional 68k btst.l d1, (a3)
db 0xCC, 0xAC, 0xCC, 0xCC ; 0071D2: provisional 68k and.l -$3334(a4), d6
db 0xCC, 0xCC ; file 0071D6
db 0xCC, 0xFC, 0xCC, 0xCC ; 0071D8: provisional 68k mulu.w #$cccc, d6
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 0071DC
db 0xCD, 0xC1 ; 0071E4: provisional 68k muls.w d1, d6
db 0xFF, 0xFF ; 0071E6: provisional 68k dc.w $ffff
db 0x03, 0x13 ; 0071E8: provisional 68k btst.l d1, (a3)
db 0xCA, 0xAA, 0xAF, 0xAA ; 0071EA: provisional 68k and.l -$5056(a2), d5
db 0xAA, 0xAA ; 0071EE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0071F0: provisional 68k dc.w $aaaa
db 0xAF, 0xAA ; 0071F2: provisional 68k dc.w $afaa
db 0xAA, 0xAF ; 0071F4: provisional 68k dc.w $aaaf
db 0xFA, 0xAA ; 0071F6: provisional 68k dc.w $faaa
db 0xAC, 0xAA ; 0071F8: provisional 68k dc.w $acaa
db 0xAA, 0xAF ; 0071FA: provisional 68k dc.w $aaaf
db 0xAA, 0xCC ; 0071FC: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 0071FE: provisional 68k dc.w $ffff
db 0x02, 0x14, 0x1C, 0xCF ; 007200: provisional 68k andi.b #$cf, (a4)
db 0xFA, 0xFC ; 007204: provisional 68k dc.w $fafc
db 0xFF, 0xFF ; 007206: provisional 68k dc.w $ffff
db 0xFC, 0xFF ; 007208: provisional 68k dc.w $fcff
db 0xFF, 0xFC ; 00720A: provisional 68k dc.w $fffc
db 0xCF, 0xFF ; file 00720C
db 0xFC, 0xCF ; 00720E: provisional 68k dc.w $fccf
db 0xFF, 0xFC ; 007210: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 007212: provisional 68k dc.w $ffff
db 0xFC, 0xCF ; 007214: provisional 68k dc.w $fccf
db 0xFC, 0xFF ; 007216: provisional 68k dc.w $fcff
db 0xFF, 0x02 ; 007218: provisional 68k dc.w $ff02
db 0x15, 0x1C ; 00721A: provisional 68k move.b (a4)+, -(a2)
db 0xAC, 0xCC ; 00721C: provisional 68k dc.w $accc
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 00721E
db 0xCA, 0xAC, 0xC1, 0xFF ; 00722E: provisional 68k and.l -$3e01(a4), d5
db 0xFF, 0x02 ; 007232: provisional 68k dc.w $ff02
db 0x15, 0xCC ; file 007234
db 0xAA, 0xAA ; 007236: provisional 68k dc.w $aaaa
db 0xAA, 0xAC ; 007238: provisional 68k dc.w $aaac
db 0xAA, 0xAA ; 00723A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00723C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00723E: provisional 68k dc.w $aaaa
db 0xFA, 0xAA ; 007240: provisional 68k dc.w $faaa
db 0xAA, 0xCA ; 007242: provisional 68k dc.w $aaca
db 0xAA, 0xAA ; 007244: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007246: provisional 68k dc.w $aaaa
db 0xAA, 0xAC ; 007248: provisional 68k dc.w $aaac
db 0xC1, 0xFF ; file 00724A
db 0xFF, 0x02 ; 00724C: provisional 68k dc.w $ff02
db 0x15, 0xCF ; file 00724E
db 0xFC, 0xCF ; 007250: provisional 68k dc.w $fccf
db 0xFF, 0xFC ; 007252: provisional 68k dc.w $fffc
db 0xCC, 0xFF ; file 007254
db 0xFF, 0xCF ; 007256: provisional 68k dc.w $ffcf
db 0xFF, 0xFF ; 007258: provisional 68k dc.w $ffff
db 0xCF, 0xFF ; file 00725A
db 0xFF, 0xCC ; 00725C: provisional 68k dc.w $ffcc
db 0xFF, 0xFF ; 00725E: provisional 68k dc.w $ffff
db 0xFC, 0xFF ; 007260: provisional 68k dc.w $fcff
db 0xFF, 0xFD ; 007262: provisional 68k dc.w $fffd
db 0xCC, 0xFF ; file 007264
db 0xFF, 0x01 ; 007266: provisional 68k dc.w $ff01
db 0x16, 0x1C ; 007268: provisional 68k move.b (a4)+, d3
db 0x8F, 0xFC, 0xCF, 0xFF ; 00726A: provisional 68k divs.w #$cfff, d7
db 0xFC, 0xCC ; 00726E: provisional 68k dc.w $fccc
db 0xFF, 0xFF ; 007270: provisional 68k dc.w $ffff
db 0xCF, 0xFF ; file 007272
db 0xFF, 0xCF ; 007274: provisional 68k dc.w $ffcf
db 0xFF, 0xFF ; 007276: provisional 68k dc.w $ffff
db 0xCC, 0xFF ; file 007278
db 0xFF, 0xFC ; 00727A: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 00727C: provisional 68k dc.w $ffff
db 0xFD, 0xFC ; 00727E: provisional 68k dc.w $fdfc
db 0xFF, 0xFF ; 007280: provisional 68k dc.w $ffff
db 0x01, 0x17 ; 007282: provisional 68k btst.l d0, (a7)
db 0x1C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 007284
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 007294
db 0xCC, 0xC1 ; 00729A: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 00729C: provisional 68k dc.w $ffff
db 0x01, 0x17 ; 00729E: provisional 68k btst.l d0, (a7)
db 0xCC, 0xAA, 0xAA, 0xAA ; 0072A0: provisional 68k and.l -$5556(a2), d6
db 0xAF, 0xAA ; 0072A4: provisional 68k dc.w $afaa
db 0xAA, 0xAA ; 0072A6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0072A8: provisional 68k dc.w $aaaa
db 0xAF, 0xAA ; 0072AA: provisional 68k dc.w $afaa
db 0xAA, 0xAA ; 0072AC: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0072AE: provisional 68k dc.w $aaaa
db 0xAC, 0xAA ; 0072B0: provisional 68k dc.w $acaa
db 0xAA, 0xAA ; 0072B2: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0072B4: provisional 68k dc.w $aaaa
db 0xAA, 0xC1 ; 0072B6: provisional 68k dc.w $aac1
db 0xFF, 0xFF ; 0072B8: provisional 68k dc.w $ffff
db 0x01, 0x17 ; 0072BA: provisional 68k btst.l d0, (a7)
db 0xCC, 0xCC ; file 0072BC
db 0xFF, 0xFF ; 0072BE: provisional 68k dc.w $ffff
db 0xFC, 0xFF ; 0072C0: provisional 68k dc.w $fcff
db 0xFF, 0xFC ; 0072C2: provisional 68k dc.w $fffc
db 0xFF, 0xAA ; 0072C4: provisional 68k dc.w $ffaa
db 0xAC, 0xCF ; 0072C6: provisional 68k dc.w $accf
db 0xFF, 0xFC ; 0072C8: provisional 68k dc.w $fffc
db 0xCF, 0xFF ; file 0072CA
db 0xFC, 0xFF ; 0072CC: provisional 68k dc.w $fcff
db 0xFF, 0xFC ; 0072CE: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 0072D0: provisional 68k dc.w $ffff
db 0xFF, 0xCC ; 0072D2: provisional 68k dc.w $ffcc
db 0xFF, 0xFF ; 0072D4: provisional 68k dc.w $ffff
db 0x00, 0x18, 0x1C, 0xCC ; 0072D6: provisional 68k ori.b #$cc, (a0)+
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xC8 ; file 0072DA
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xFF ; file 0072EA
db 0xFF, 0x00 ; 0072F2: provisional 68k dc.w $ff00
db 0x19, 0xCC ; file 0072F4
db 0xCA, 0xAA, 0xAC, 0xCA ; 0072F6: provisional 68k and.l -$5336(a2), d5
db 0xAA, 0xAF ; 0072FA: provisional 68k dc.w $aaaf
db 0xAA, 0xAA ; 0072FC: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0072FE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007300: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xCF ; 007302: provisional 68k and.l -$5531(a2), d5
db 0xAA, 0xAA ; 007306: provisional 68k dc.w $aaaa
db 0xAF, 0xAF ; 007308: provisional 68k dc.w $afaf
db 0xAA, 0xAC ; 00730A: provisional 68k dc.w $aaac
db 0xAA, 0xAF ; 00730C: provisional 68k dc.w $aaaf
db 0xC1, 0xFF ; file 00730E
db 0xFF, 0x00 ; 007310: provisional 68k dc.w $ff00
db 0x19, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xC8, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0x8C, 0xCC ; file 007312
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xC8, 0xCC, 0xCC, 0xCC, 0xFF ; file 007322
db 0xFF, 0xFF ; 00732E: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 007330: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 007332: provisional 68k ori.b #$0, d7
db 0x00, 0x2B, 0x00, 0x23, 0x00, 0x00 ; 007336: provisional 68k ori.b #$23, $0(a3)
db 0x00, 0x58, 0x00, 0x00 ; 00733C: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x14 ; 007340: provisional 68k ori.b #$14, d0
db 0x00, 0x0E ; file 007344
db 0x00, 0x00, 0x00, 0x08 ; 007346: provisional 68k ori.b #$8, d0
db 0x00, 0x05, 0x00, 0x0A ; 00734A: provisional 68k ori.b #$a, d5
db 0x00, 0x00, 0x00, 0x00 ; 00734E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 007352: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 007356: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 00735A: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x03 ; 00735E: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 007362: provisional 68k ori.b #$1, d2
db 0x00, 0x0A ; file 007366
db 0x02, 0x94, 0x05, 0x3E, 0x07, 0xF6 ; 007368: provisional 68k andi.l #$53e07f6, (a4)
db 0x0A, 0xB6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C ; 00736E: provisional 68k eori.l #$0, $2c(a6, d0.w)
db 0x00, 0x23, 0x00, 0x10 ; 007376: provisional 68k ori.b #$10, -(a3)
db 0x08, 0x08, 0x08, 0x10 ; file 00737A
db 0x10, 0x10 ; 00737E: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 007380: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 007382: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 007384: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007386: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00738A: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00738E: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 007390: provisional 68k neg.w d4
db 0x44, 0x3C ; file 007392
db 0x34, 0xCC ; 007394: provisional 68k move.w a4, (a2)+
db 0xB8, 0x94 ; 007396: provisional 68k cmp.l (a4), d4
db 0x50, 0x00 ; 007398: provisional 68k addq.b #$8, d0
db 0x00, 0xF4, 0xEC, 0xD0 ; file 00739A
db 0x84, 0x74, 0x60, 0x8C ; 00739E: provisional 68k or.w -$74(a4, d6.w), d2
db 0x00, 0x00, 0xFC, 0xFC ; 0073A2: provisional 68k ori.b #$fc, d0
db 0xFC, 0x70 ; 0073A6: provisional 68k dc.w $fc70
db 0x00, 0x00, 0xFF, 0xFF ; 0073A8: provisional 68k ori.b #$ff, d0
db 0xFF, 0xFF ; 0073AC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0073AE: provisional 68k dc.w $ffff
db 0x0C, 0x04, 0x1A, 0xFD ; 0073B0: provisional 68k cmpi.b #$fd, d4
db 0xDD, 0xDD ; 0073B4: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xFF ; file 0073B6
db 0xFF, 0x0C ; 0073B8: provisional 68k dc.w $ff0c
db 0x07, 0x1A ; 0073BA: provisional 68k btst.l d3, (a2)+
db 0xFA, 0xFF ; 0073BC: provisional 68k dc.w $faff
db 0xDD, 0xDD ; 0073BE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDF ; 0073C0: provisional 68k adda.l (a7)+, a6
db 0xA1, 0xFF ; 0073C2: provisional 68k dc.w $a1ff
db 0xFF, 0x0C ; 0073C4: provisional 68k dc.w $ff0c
db 0x08, 0x1A ; file 0073C6
db 0xFA, 0xAA ; 0073C8: provisional 68k dc.w $faaa
db 0xAA, 0xAF ; 0073CA: provisional 68k dc.w $aaaf
db 0xDD, 0xDD ; 0073CC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xA1 ; 0073CE: provisional 68k add.l d6, -(a1)
db 0xFF, 0xFF ; 0073D0: provisional 68k dc.w $ffff
db 0x01, 0x04 ; 0073D2: provisional 68k btst.l d0, d4
db 0x1A, 0xAD, 0xDD, 0xDA ; 0073D4: provisional 68k move.b -$2226(a5), (a5)
db 0xAA, 0x06 ; 0073D8: provisional 68k dc.w $aa06
db 0x08, 0x1A ; file 0073DA
db 0xFA, 0xAA ; 0073DC: provisional 68k dc.w $faaa
db 0xAA, 0xAA ; 0073DE: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 0073E0: provisional 68k dc.w $aaad
db 0xDD, 0xDD ; 0073E2: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 0073E4: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 0073E6: provisional 68k btst.l d0, d6
db 0x1A, 0xAA, 0xDD, 0xDD ; 0073E8: provisional 68k move.b -$2223(a2), (a5)
db 0xDD, 0xDF ; 0073EC: provisional 68k adda.l (a7)+, a6
db 0xF1, 0x04 ; 0073EE: provisional 68k dc.w $f104
db 0x08, 0x18 ; file 0073F0
db 0xAA, 0xAA ; 0073F2: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0073F4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0073F6: provisional 68k dc.w $aaaa
db 0xDD, 0xDD ; 0073F8: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 0073FA: provisional 68k dc.w $ffff
db 0x01, 0x07 ; 0073FC: provisional 68k btst.l d0, d7
db 0x1A, 0xAA, 0xDD, 0xDD ; 0073FE: provisional 68k move.b -$2223(a2), (a5)
db 0xDD, 0xDF ; 007402: provisional 68k adda.l (a7)+, a6
db 0xFF, 0xA1 ; 007404: provisional 68k dc.w $ffa1
db 0x03, 0x08, 0x18, 0xAA ; 007406: provisional 68k movep.w $18aa(a0), d1
db 0xAA, 0xAA ; 00740A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00740C: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 00740E: provisional 68k dc.w $aadd
db 0xDD, 0xFF ; file 007410
db 0xFF, 0x01 ; 007412: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 007414: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 007416: provisional 68k dc.w $aaaa
db 0xAA, 0xFD ; 007418: provisional 68k dc.w $aafd
db 0xDD, 0xDD ; 00741A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00741C: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xA8 ; 00741E: provisional 68k dc.w $aaa8
db 0x88, 0x8A ; file 007420
db 0xAA, 0xAA ; 007422: provisional 68k dc.w $aaaa
db 0xAF, 0xFD ; 007424: provisional 68k dc.w $affd
db 0xDD, 0xDD ; 007426: provisional 68k adda.l (a5)+, a6
db 0xFA, 0xFF ; 007428: provisional 68k dc.w $faff
db 0xFF, 0x01 ; 00742A: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 00742C: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 00742E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007430: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007432: provisional 68k dc.w $aaaa
db 0xAD, 0xDD ; 007434: provisional 68k dc.w $addd
db 0xDD, 0xDD ; 007436: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007438: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00743A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00743C: provisional 68k adda.l (a5)+, a6
db 0xDF, 0xFA, 0xAA, 0xFF ; 00743E: provisional 68k adda.l $1f3f(pc), a7
db 0xFF, 0x01 ; 007442: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 007444: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 007446: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007448: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00744A: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 00744C: provisional 68k dc.w $aaff
db 0xFF, 0xFD ; 00744E: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 007450: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007452: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007454: provisional 68k adda.l (a5)+, a6
db 0xDF, 0xFA, 0xAA, 0xFF ; 007456: provisional 68k adda.l $1f57(pc), a7
db 0xFF, 0x02 ; 00745A: provisional 68k dc.w $ff02
db 0x12, 0xAA, 0xAA, 0xAA ; 00745C: provisional 68k move.b -$5556(a2), (a1)
db 0xAA, 0xAA ; 007460: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007462: provisional 68k dc.w $aaaa
db 0xFF, 0xFF ; 007464: provisional 68k dc.w $ffff
db 0xFD, 0xDD ; 007466: provisional 68k dc.w $fddd
db 0xDD, 0xDD ; 007468: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00746A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDF ; 00746C: provisional 68k adda.l (a7)+, a6
db 0xFA, 0xAA ; 00746E: provisional 68k dc.w $faaa
db 0xFF, 0xFF ; 007470: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x18, 0x88 ; 007472: provisional 68k andi.b #$88, (a2)
db 0x8A, 0xAA, 0xAA, 0xAA ; 007476: provisional 68k or.l -$5556(a2), d5
db 0xAF, 0xFF ; 00747A: provisional 68k dc.w $afff
db 0xFF, 0xFD ; 00747C: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 00747E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007480: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007482: provisional 68k adda.l (a5)+, a6
db 0xDF, 0xFA, 0xA1, 0xFF ; 007484: provisional 68k adda.l $1685(pc), a7
db 0xFF, 0x03 ; 007488: provisional 68k dc.w $ff03
db 0x11, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00748A
db 0x8A, 0xAF, 0xFF, 0xFD ; 007490: provisional 68k or.l -$3(a7), d5
db 0xDD, 0xDD ; 007494: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007496: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFA, 0xAA, 0x88 ; 007498: provisional 68k adda.l $1f22(pc), a6
db 0x81, 0xFF ; file 00749C
db 0xFF, 0x03 ; 00749E: provisional 68k dc.w $ff03
db 0x11, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0074A0
db 0x8A, 0xAF, 0xFF, 0xFD ; 0074A6: provisional 68k or.l -$3(a7), d5
db 0xDD, 0xDD ; 0074AA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0074AC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFA, 0xAA, 0x88 ; 0074AE: provisional 68k adda.l $1f38(pc), a6
db 0x81, 0xFF ; file 0074B2
db 0xFF, 0x03 ; 0074B4: provisional 68k dc.w $ff03
db 0x11, 0x18 ; 0074B6: provisional 68k move.b (a0)+, -(a0)
db 0x88, 0x88, 0x88, 0x88, 0xC8, 0x8C, 0x88, 0x88, 0xC8, 0x88, 0xCC, 0x88, 0x88, 0x88, 0x88, 0xC8 ; file 0074B8
db 0x81, 0xFF ; file 0074C8
db 0xFF, 0x04 ; 0074CA: provisional 68k dc.w $ff04
db 0x10, 0x18 ; 0074CC: provisional 68k move.b (a0)+, d0
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xC8, 0x88, 0xCC, 0x88, 0xCC, 0xCC, 0x8C, 0xCC, 0x8C ; file 0074CE
db 0xC8, 0x81 ; 0074DC: provisional 68k and.l d1, d4
db 0xFF, 0xFF ; 0074DE: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x18, 0xC9 ; 0074E0: provisional 68k andi.b #$c9, (a1)
db 0xC8, 0x88, 0x88, 0x88, 0x88, 0x88, 0xC8, 0x88, 0x8C, 0x88, 0xCC, 0xC8, 0x8C, 0x88 ; file 0074E4
db 0x88, 0x81 ; 0074F2: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0074F4: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x89, 0xBE ; 0074F6: provisional 68k andi.b #$be, (a2)
db 0xE9, 0x99 ; 0074FA: provisional 68k rol.l #$4, d1
db 0xC8, 0xCC, 0x88, 0x88, 0x88, 0x88 ; file 0074FC
db 0x88, 0xA8, 0x88, 0x88 ; 007502: provisional 68k or.l -$7778(a0), d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 007506
db 0xFF, 0x01 ; 00750C: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 00750E: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xCB ; 007510: provisional 68k dc.w $aacb
db 0xB9, 0x9B ; 007512: provisional 68k eor.l d4, (a3)+
db 0x99, 0x99 ; 007514: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 007516: provisional 68k sub.l d4, (a1)+
db 0xB9, 0x99 ; 007518: provisional 68k eor.l d4, (a1)+
db 0xCC, 0xC8, 0xCC, 0x88, 0xC8, 0xCC, 0xC8, 0xCC, 0xCC, 0xFF ; file 00751A
db 0xFF, 0x01 ; 007524: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xFC, 0xC9, 0x99 ; 007526: provisional 68k move.b -$5504(a2), ([, a4.l])
db 0x99, 0x99 ; 00752C: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 00752E: provisional 68k sub.l d4, (a1)+
db 0xE9, 0x9E ; 007530: provisional 68k rol.l #$4, d6
db 0xEE, 0xE9 ; file 007532
db 0xEE, 0x98 ; 007534: provisional 68k ror.l #$7, d0
db 0x9C, 0xCC ; 007536: provisional 68k suba.w a4, a6
db 0xC8, 0xCC, 0xCF, 0xFF ; file 007538
db 0xFF, 0x01 ; 00753C: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xFA, 0xCC, 0x99 ; 00753E: provisional 68k move.b -$5506(a2), -$67(a1, a4.l)
db 0x9C, 0x99 ; 007544: provisional 68k sub.l (a1)+, d6
db 0x99, 0x99 ; 007546: provisional 68k sub.l d4, (a1)+
db 0xE9, 0x9E ; 007548: provisional 68k rol.l #$4, d6
db 0xEE, 0xE9 ; file 00754A
db 0xEE, 0x99 ; 00754C: provisional 68k ror.l #$7, d1
db 0x9C, 0x8C ; 00754E: provisional 68k sub.l a4, d6
db 0xCC, 0xCC ; file 007550
db 0xAF, 0xFF ; 007552: provisional 68k dc.w $afff
db 0xFF, 0x01 ; 007554: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xAA, 0xAA, 0x8C ; 007556: provisional 68k move.b -$5556(a2), -$74(a1, a2.l)
db 0xCC, 0x99 ; 00755C: provisional 68k and.l (a1)+, d6
db 0x99, 0xC9 ; 00755E: provisional 68k suba.l a1, a4
db 0xB9, 0x8B ; 007560: provisional 68k cmpm.l (a3)+, (a4)+
db 0xEE, 0xE9 ; file 007562
db 0xEE, 0x99 ; 007564: provisional 68k ror.l #$7, d1
db 0x9C, 0x88 ; 007566: provisional 68k sub.l a0, d6
db 0x8D, 0xDF ; 007568: provisional 68k divs.w (a7)+, d6
db 0xAA, 0xFF ; 00756A: provisional 68k dc.w $aaff
db 0xFF, 0x01 ; 00756C: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 00756E: provisional 68k move.b -$5556(a2), -$56(a1, a2.l)
db 0xAA, 0xAA ; 007574: provisional 68k dc.w $aaaa
db 0xDD, 0xDD ; 007576: provisional 68k adda.l (a5)+, a6
db 0xD8, 0x8C ; 007578: provisional 68k add.l a4, d4
db 0x99, 0x98 ; 00757A: provisional 68k sub.l d4, (a0)+
db 0xCC, 0xDD ; 00757C: provisional 68k mulu.w (a5)+, d6
db 0xDD, 0xDF ; 00757E: provisional 68k adda.l (a7)+, a6
db 0xFF, 0xAA ; 007580: provisional 68k dc.w $ffaa
db 0xAA, 0xFF ; 007582: provisional 68k dc.w $aaff
db 0xFF, 0x01 ; 007584: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 007586: provisional 68k move.b -$5556(a2), -$56(a1, a2.l)
db 0xAA, 0xAA ; 00758C: provisional 68k dc.w $aaaa
db 0xAF, 0xFF ; 00758E: provisional 68k dc.w $afff
db 0xFF, 0xFD ; 007590: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 007592: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007594: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDF ; 007596: provisional 68k adda.l (a7)+, a6
db 0xFF, 0xAA ; 007598: provisional 68k dc.w $ffaa
db 0xAA, 0xFF ; 00759A: provisional 68k dc.w $aaff
db 0xFF, 0x01 ; 00759C: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 00759E: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 0075A0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0075A2: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0075A4: provisional 68k dc.w $aaaa
db 0xAF, 0xFF ; 0075A6: provisional 68k dc.w $afff
db 0xFF, 0xFD ; 0075A8: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 0075AA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0075AC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFF ; file 0075AE
db 0xFF, 0xAA ; 0075B0: provisional 68k dc.w $ffaa
db 0xAA, 0xFF ; 0075B2: provisional 68k dc.w $aaff
db 0xFF, 0x03 ; 0075B4: provisional 68k dc.w $ff03
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 0075B6: provisional 68k move.b -$5556(a2), -$56(a0, a2.l)
db 0xAF, 0xFF ; 0075BC: provisional 68k dc.w $afff
db 0xFF, 0xFD ; 0075BE: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 0075C0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0075C2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFF ; file 0075C4
db 0xFF, 0xAA ; 0075C6: provisional 68k dc.w $ffaa
db 0xA1, 0xFF ; 0075C8: provisional 68k dc.w $a1ff
db 0xFF, 0x05 ; 0075CA: provisional 68k dc.w $ff05
db 0x0E, 0xAA ; file 0075CC
db 0xAA, 0xAA ; 0075CE: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 0075D0: provisional 68k dc.w $aaff
db 0xFF, 0xFD ; 0075D2: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 0075D4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0075D6: provisional 68k adda.l (a5)+, a6
db 0xFA, 0xAA ; 0075D8: provisional 68k dc.w $faaa
db 0xAA, 0xA1 ; 0075DA: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 0075DC: provisional 68k dc.w $ffff
db 0x07, 0x0A, 0xAA, 0xAF ; 0075DE: provisional 68k movep.w -$5551(a2), d3
db 0xFF, 0xFF ; 0075E2: provisional 68k dc.w $ffff
db 0xFD, 0xDD ; 0075E4: provisional 68k dc.w $fddd
db 0xDD, 0xDD ; 0075E6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFA, 0xAA, 0xFF ; 0075E8: provisional 68k adda.l $20e9(pc), a6
db 0xFF, 0xFF ; 0075EC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0075EE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0075F0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0075F2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0075F4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0075F6: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0075F8: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 0075FA: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x23, 0x00, 0x10 ; 0075FE: provisional 68k ori.b #$23, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 007604
db 0x10, 0x10 ; 007608: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00760A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00760C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00760E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007610: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 007614: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 007618: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00761A: provisional 68k neg.w d4
db 0x3C, 0x34, 0x30, 0x9C ; 00761C: provisional 68k move.w -$64(a4, d3.w), d6
db 0x8C, 0x70, 0xF8, 0xEC ; 007620: provisional 68k or.w -$14(a0, a7.l), d6
db 0xCC, 0x54 ; 007624: provisional 68k and.w (a4), d6
db 0x00, 0x00, 0xD4, 0xC0 ; 007626: provisional 68k ori.b #$c0, d0
db 0xA0, 0xFC ; 00762A: provisional 68k dc.w $a0fc
db 0xFC, 0xFC ; 00762C: provisional 68k dc.w $fcfc
db 0x68, 0x60 ; 00762E: provisional 68k bvc.b $7690
db 0x50, 0x7C ; file 007630
db 0x00, 0x00, 0xFF, 0xFF ; 007632: provisional 68k ori.b #$ff, d0
db 0xFF, 0xFF ; 007636: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007638: provisional 68k dc.w $ffff
db 0x0D, 0x04 ; 00763A: provisional 68k btst.l d6, d4
db 0xBB, 0xFF ; file 00763C
db 0xFB, 0xBB ; 00763E: provisional 68k dc.w $fbbb
db 0xB1, 0xFF ; file 007640
db 0xFF, 0x0C ; 007642: provisional 68k dc.w $ff0c
db 0x08, 0x1F, 0xBF, 0xFF ; file 007644
db 0xFB, 0xFF ; 007648: provisional 68k dc.w $fbff
db 0xFF, 0xFF ; 00764A: provisional 68k dc.w $ffff
db 0xFF, 0xB1 ; 00764C: provisional 68k dc.w $ffb1
db 0xFF, 0xFF ; 00764E: provisional 68k dc.w $ffff
db 0x0C, 0x08, 0x1F, 0xFB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBF, 0xFF ; file 007650
db 0xFB, 0xFF ; 00765A: provisional 68k dc.w $fbff
db 0xFF, 0x02 ; 00765C: provisional 68k dc.w $ff02
db 0x02, 0x18, 0x88, 0x81 ; 00765E: provisional 68k andi.b #$81, (a0)+
db 0x07, 0x08, 0x1F, 0xBB ; 007662: provisional 68k movep.w $1fbb(a0), d3
db 0xBB, 0xBB, 0xBF, 0xFF ; file 007666
db 0xFF, 0xFF ; 00766A: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 00766C
db 0xFF, 0x01 ; 00766E: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 007670: provisional 68k move.b (a3)+, -(a1)
db 0xFF, 0xFF ; 007672: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007674: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007676: provisional 68k dc.w $ffff
db 0xFF, 0xFB ; 007678: provisional 68k dc.w $fffb
db 0xBB, 0xBB, 0xBF, 0xFF ; file 00767A
db 0xFF, 0xFF ; 00767E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007680: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007682: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 007684
db 0xFF, 0x01 ; 007686: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 007688: provisional 68k move.b (a3)+, -(a1)
db 0xFF, 0xFF ; 00768A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00768C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00768E: provisional 68k dc.w $ffff
db 0xFF, 0xFB ; 007690: provisional 68k dc.w $fffb
db 0xBB, 0xBB, 0xBF, 0xFF ; file 007692
db 0xFF, 0xFF ; 007696: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007698: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00769A: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 00769C
db 0xFF, 0x01 ; 00769E: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 0076A0: provisional 68k move.b (a3)+, -(a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 0076A2
db 0xFF, 0xFF ; 0076A8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076AA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076AC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076AE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076B0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076B2: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 0076B4
db 0xFF, 0x01 ; 0076B6: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 0076B8: provisional 68k move.b (a3)+, -(a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 0076BA
db 0xFF, 0xFF ; 0076C0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076C2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076C4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076C6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076C8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076CA: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 0076CC
db 0xFF, 0x01 ; 0076CE: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 0076D0: provisional 68k move.b (a3)+, -(a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 0076D2
db 0xFF, 0xFF ; 0076D8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076DA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076DC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076DE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076E0: provisional 68k dc.w $ffff
db 0xFF, 0xFB ; 0076E2: provisional 68k dc.w $fffb
db 0xB1, 0xFF ; file 0076E4
db 0xFF, 0x01 ; 0076E6: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 0076E8: provisional 68k move.b (a3)+, -(a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 0076EA
db 0xFF, 0xFF ; 0076F0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076F2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076F4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076F6: provisional 68k dc.w $ffff
db 0xFF, 0xFB ; 0076F8: provisional 68k dc.w $fffb
db 0xB8, 0x88 ; 0076FA: provisional 68k cmp.l a0, d4
db 0x81, 0xFF ; file 0076FC
db 0xFF, 0x02 ; 0076FE: provisional 68k dc.w $ff02
db 0x12, 0x18 ; 007700: provisional 68k move.b (a0)+, d1
db 0xB8, 0x88 ; 007702: provisional 68k cmp.l a0, d4
db 0xB8, 0xEB, 0x88, 0x8B ; 007704: provisional 68k cmpa.w -$7775(a3), a4
db 0x8E, 0xFF ; file 007708
db 0xFE, 0xEB ; 00770A: provisional 68k dc.w $feeb
db 0xFE, 0xEE ; 00770C: provisional 68k dc.w $feee
db 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xE1 ; file 00770E
db 0xFF, 0xFF ; 007714: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x18, 0x88 ; 007716: provisional 68k andi.b #$88, (a2)
db 0x88, 0x88 ; file 00771A
db 0xE8, 0x88 ; 00771C: provisional 68k lsr.l #$4, d0
db 0xE8, 0xEE ; file 00771E
db 0xE8, 0x8E ; 007720: provisional 68k lsr.l #$4, d6
db 0x9E, 0xEE, 0x99, 0x99 ; 007722: provisional 68k suba.w -$6667(a6), a7
db 0xE9, 0x99 ; 007726: provisional 68k rol.l #$4, d1
db 0xE9, 0x9E ; 007728: provisional 68k rol.l #$4, d6
db 0x81, 0xFF ; file 00772A
db 0xFF, 0x02 ; 00772C: provisional 68k dc.w $ff02
db 0x12, 0x18 ; 00772E: provisional 68k move.b (a0)+, d1
db 0x88, 0x88 ; file 007730
db 0x88, 0xE8, 0x88, 0xE8 ; 007732: provisional 68k divu.w -$7718(a0), d4
db 0xEE, 0xE8 ; file 007736
db 0x8E, 0x9E ; 007738: provisional 68k or.l (a6)+, d7
db 0xEE, 0x99 ; 00773A: provisional 68k ror.l #$7, d1
db 0x9E, 0xE9, 0x99, 0xE9 ; 00773C: provisional 68k suba.w -$6617(a1), a7
db 0x9E, 0x81 ; 007740: provisional 68k sub.l d1, d7
db 0xFF, 0xFF ; 007742: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 007744: provisional 68k btst.l d1, (a0)
db 0x88, 0x88, 0x88, 0x8E ; file 007746
db 0x88, 0xEE, 0x8E, 0xEE ; 00774A: provisional 68k divu.w -$7112(a6), d4
db 0xE8, 0xE9 ; file 00774E
db 0xEE, 0x99 ; 007750: provisional 68k ror.l #$7, d1
db 0x9E, 0xE9, 0x99, 0x89 ; 007752: provisional 68k suba.w -$6677(a1), a7
db 0x88, 0xFF ; file 007756
db 0xFF, 0x04 ; 007758: provisional 68k dc.w $ff04
db 0x0E, 0x18, 0x88, 0x88, 0x88, 0x8E ; file 00775A
db 0x88, 0xE8, 0x88, 0x99 ; 007760: provisional 68k divu.w -$7767(a0), d4
db 0x98, 0x9E ; 007764: provisional 68k sub.l (a6)+, d4
db 0xB8, 0x88 ; 007766: provisional 68k cmp.l a0, d4
db 0x88, 0x88 ; file 007768
db 0xFF, 0xFF ; 00776A: provisional 68k dc.w $ffff
db 0x02, 0x08 ; file 00776C
db 0x89, 0x9E ; 00776E: provisional 68k or.l d4, (a6)+
db 0xE9, 0x88 ; 007770: provisional 68k lsl.l #$4, d0
db 0x88, 0x88, 0x88, 0x88 ; file 007772
db 0x81, 0x01 ; 007776: provisional 68k sbcd.b d1, d0
db 0x08, 0x1B, 0xBB, 0xBB ; file 007778
db 0xB8, 0x88 ; 00777C: provisional 68k cmp.l a0, d4
db 0x88, 0x8E, 0xEE, 0xE1 ; file 00777E
db 0xFF, 0xFF ; 007782: provisional 68k dc.w $ffff
db 0x01, 0x05 ; 007784: provisional 68k btst.l d0, d5
db 0x18, 0xBC, 0xDD, 0xDC ; 007786: provisional 68k move.b #$dc, (a4)
db 0xC9, 0xE8, 0x05, 0x08 ; 00778A: provisional 68k muls.w $508(a0), d4
db 0x1B, 0xBB, 0xBB, 0xBB, 0x88, 0xE8, 0x88, 0xE9, 0x8E, 0xFF, 0xFF, 0x01, 0x13, 0xBF, 0xFB, 0x9A, 0xA9, 0xCA, 0xCE, 0xEC, 0x9C, 0xCE ; 00778E: provisional 68k move.b ([$88e90079, a3.l * 2], $8effff01), ([$fb9aa9ca], d1.w * 2, $ceec9cce)
db 0xE9, 0xC9, 0x9B, 0xBF ; file 0077A4
db 0xFF, 0xE9 ; 0077A8: provisional 68k dc.w $ffe9
db 0x99, 0xCC ; 0077AA: provisional 68k suba.l a4, a4
db 0xCE, 0xE9, 0x98, 0xFF ; 0077AC: provisional 68k mulu.w -$6701(a1), d7
db 0xFF, 0x01 ; 0077B0: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBF, 0xF9, 0x99, 0xCC, 0xCC, 0xCC, 0xAC, 0xEA ; 0077B2: provisional 68k move.b ([$99cd4480]), -$16(a1, a2.l)
db 0xDD, 0x9C ; 0077BC: provisional 68k add.l d6, (a4)+
db 0xC9, 0xCE ; file 0077BE
db 0xCD, 0xAC, 0xC9, 0x99 ; 0077C0: provisional 68k and.l d6, -$3667(a4)
db 0x9E, 0x99 ; 0077C4: provisional 68k sub.l (a1)+, d7
db 0x9F, 0xFF ; file 0077C6
db 0xFF, 0x01 ; 0077C8: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBB, 0xFF, 0x99, 0xCC, 0xC9, 0xCC, 0xAC, 0xCA ; 0077CA: provisional 68k move.b ([$99cd4198]), -$36(a1, a2.l)
db 0xDD, 0xCD ; 0077D4: provisional 68k adda.l a5, a6
db 0xAC, 0xAC ; 0077D6: provisional 68k dc.w $acac
db 0xDD, 0xAC, 0xC9, 0x99 ; 0077D8: provisional 68k add.l d6, -$3667(a4)
db 0x9E, 0x99 ; 0077DC: provisional 68k sub.l (a1)+, d7
db 0xEE, 0xFF ; file 0077DE
db 0xFF, 0x01 ; 0077E0: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBB, 0xBB, 0xBF, 0x9C, 0xC9, 0xCC, 0xCC, 0x9C, 0xDA, 0x9D, 0xDD, 0xDC ; 0077E2: provisional 68k move.b ([$bf9d41b0, a3.l * 2], $cc9cda9d), (invalid.w)
db 0xAA, 0xCC ; 0077F0: provisional 68k dc.w $aacc
db 0x99, 0x99 ; 0077F2: provisional 68k sub.l d4, (a1)+
db 0x9E, 0x9E ; 0077F4: provisional 68k sub.l (a6)+, d7
db 0xBF, 0xFF ; file 0077F6
db 0xFF, 0x01 ; 0077F8: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xF9, 0x99, 0x99, 0x9C, 0xCC, 0x9D, 0xDD, 0xDC ; 0077FA: provisional 68k move.b ([$bbbc7195, a3.l * 2], $999ccc9d), (invalid.w)
db 0xCC, 0xC9 ; file 007808
db 0x99, 0xEE, 0xEE, 0xBB ; 00780A: provisional 68k suba.l -$1145(a6), a4
db 0xFB, 0xFF ; 00780E: provisional 68k dc.w $fbff
db 0xFF, 0x01 ; 007810: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xFF, 0xFE, 0xE9, 0x9A, 0xDD, 0xD9 ; 007812: provisional 68k move.b ([$bbbc33cf, a3.l * 2], $fffee99a), ([])
db 0xCC, 0xC9, 0xEE, 0xFF ; file 007820
db 0xFF, 0xFB ; 007824: provisional 68k dc.w $fffb
db 0xBB, 0xFF ; file 007826
db 0xFF, 0x02 ; 007828: provisional 68k dc.w $ff02
db 0x12, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBF, 0xFF, 0xFF, 0xFF ; 00782A: provisional 68k move.b ([$bbbc33e7, a3.l * 2], $bfffffff), (a1)
db 0xFF, 0xFF ; 007836: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007838: provisional 68k dc.w $ffff
db 0xBB, 0xBB, 0xBB, 0xBB ; file 00783A
db 0xFF, 0xFF ; 00783E: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 007840: provisional 68k btst.l d1, (a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBF, 0xFF ; file 007842
db 0xFF, 0xFF ; 00784A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00784C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00784E: provisional 68k dc.w $ffff
db 0xBB, 0xBB, 0xBB, 0xBB ; file 007850
db 0xFF, 0xFF ; 007854: provisional 68k dc.w $ffff
db 0x04, 0x10, 0x1B, 0xBB ; 007856: provisional 68k subi.b #$bb, (a0)
db 0xBB, 0xBB, 0xBB, 0xBF ; file 00785A
db 0xFF, 0xFF ; 00785E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007860: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007862: provisional 68k dc.w $ffff
db 0xFB, 0xBB ; 007864: provisional 68k dc.w $fbbb
db 0xBB, 0xBB, 0xB1, 0xFF ; file 007866
db 0xFF, 0x05 ; 00786A: provisional 68k dc.w $ff05
db 0x0F, 0x1B ; 00786C: provisional 68k btst.l d7, (a3)+
db 0xBB, 0xBB, 0xBB, 0xBF ; file 00786E
db 0xFF, 0xFF ; 007872: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007874: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007876: provisional 68k dc.w $ffff
db 0xFB, 0xBB ; 007878: provisional 68k dc.w $fbbb
db 0xBB, 0xBB, 0xB1, 0xFF ; file 00787A
db 0xFF, 0x07 ; 00787E: provisional 68k dc.w $ff07
db 0x0C, 0xBB ; 007880: provisional 68k dc.w $cbb
db 0xBB, 0xBF ; file 007882
db 0xFF, 0xFF ; 007884: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007886: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007888: provisional 68k dc.w $ffff
db 0xFB, 0xBB ; 00788A: provisional 68k dc.w $fbbb
db 0xBB, 0xB1, 0xFF, 0xFF, 0x0A, 0x07, 0xBB, 0xBB ; 00788C: provisional 68k eor.l d5, ([$a07bbbb])
db 0xBB, 0xBB, 0xBB, 0xBB ; file 007894
db 0xBB, 0xB1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF ; 007898: provisional 68k eor.l d5, ([$ffffffff])
db 0xFF, 0xFF ; 0078A0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0078A2: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0078A4: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x23, 0x00, 0x10 ; 0078A8: provisional 68k ori.b #$23, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 0078AE
db 0x10, 0x10 ; 0078B2: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0078B4: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0078B6: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0078B8: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0078BA: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0078BE: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0078C2: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0078C4: provisional 68k neg.w d4
db 0x40, 0x3C ; file 0078C6
db 0x34, 0xA4 ; 0078C8: provisional 68k move.w -(a4), (a2)
db 0x94, 0x78, 0x50, 0x00 ; 0078CA: provisional 68k sub.w $5000.w, d2
db 0x00, 0x78, 0x00, 0x00, 0xD0, 0xBC ; 0078CE: provisional 68k ori.w #$0, $d0bc.w
db 0x9C, 0xAC, 0x00, 0x00 ; 0078D4: provisional 68k sub.l $0(a4), d6
db 0x74, 0x68 ; 0078D8: provisional 68k moveq #$68, d2
db 0x58, 0xF8, 0xE8, 0xC8 ; 0078DA: provisional 68k svc.b $e8c8.w
db 0xFF, 0xFF ; 0078DE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0078E0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0078E2: provisional 68k dc.w $ffff
db 0x10, 0x04 ; 0078E4: provisional 68k move.b d4, d0
db 0xBB, 0xBB ; file 0078E6
db 0xBA, 0xBB, 0xA1, 0xFF, 0xFF, 0x0C, 0x08, 0x1B ; 0078E8: provisional 68k cmp.l ([$ff0c8105]), d5
db 0xAB, 0xBB ; 0078F0: provisional 68k dc.w $abbb
db 0xBB, 0xAB, 0xBB, 0xBB ; 0078F2: provisional 68k eor.l d5, -$4445(a3)
db 0xBB, 0xA1 ; 0078F6: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 0078F8: provisional 68k dc.w $ffff
db 0x0A, 0x0A ; file 0078FA
db 0x1B, 0xBB, 0xBB, 0xBB, 0xBB, 0xDD, 0xDD, 0xDB, 0xBB, 0xBB, 0xA1, 0xFF, 0xFF, 0x06, 0x0E, 0x18 ; 0078FC: provisional 68k move.b ([$bbde56d9, a3.l * 2], $bbbba1ff), ([a5], a7.l * 8, $e18)
db 0x88, 0xAA, 0xAB, 0xBB ; 00790C: provisional 68k or.l -$5445(a2), d4
db 0xBB, 0xDD ; 007910: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 007912: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007914: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB ; file 007916
db 0xBB, 0xA1 ; 007918: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 00791A: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 00791C: provisional 68k btst.l d0, (a3)
db 0x18, 0xAA, 0xAA, 0xAA ; 00791E: provisional 68k move.b -$5556(a2), (a4)
db 0xBB, 0xBA, 0xBB, 0xBB, 0xBB, 0xBB ; file 007922
db 0xBB, 0xDD ; 007928: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 00792A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00792C: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB ; file 00792E
db 0xBB, 0xA1 ; 007930: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 007932: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 007934: provisional 68k btst.l d0, (a3)
db 0x18, 0xAA, 0xAA, 0xAA ; 007936: provisional 68k move.b -$5556(a2), (a4)
db 0xBB, 0xBA, 0xBB, 0xBB, 0xBB, 0xBB ; file 00793A
db 0xBB, 0xDD ; 007940: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 007942: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007944: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB ; file 007946
db 0xBB, 0xA1 ; 007948: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 00794A: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 00794C: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 00794E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007950: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007952: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB ; file 007954
db 0xBB, 0xDD ; 007958: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 00795A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00795C: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB ; file 00795E
db 0xBA, 0x81 ; 007960: provisional 68k cmp.l d1, d5
db 0xFF, 0xFF ; 007962: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 007964: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 007966: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007968: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00796A: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB ; file 00796C
db 0xBB, 0xDD ; 007970: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 007972: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB, 0x88, 0x8E ; file 007974
db 0xEE, 0x81 ; 007978: provisional 68k asr.l #$7, d1
db 0xFF, 0xFF ; 00797A: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 00797C: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 00797E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007980: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007982: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 007984
db 0xEE, 0x99 ; 00798A: provisional 68k ror.l #$7, d1
db 0xE9, 0x99 ; 00798C: provisional 68k rol.l #$4, d1
db 0x99, 0x99 ; 00798E: provisional 68k sub.l d4, (a1)+
db 0x99, 0x81 ; 007990: provisional 68k subx.l d1, d4
db 0xFF, 0xFF ; 007992: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 007994: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 007996: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007998: provisional 68k dc.w $aaaa
db 0xA8, 0xAA ; 00799A: provisional 68k dc.w $a8aa
db 0xEE, 0x88 ; 00799C: provisional 68k lsr.l #$7, d0
db 0xEE, 0x8E ; 00799E: provisional 68k lsr.l #$7, d6
db 0xE9, 0x9E ; 0079A0: provisional 68k rol.l #$4, d6
db 0x9E, 0x99 ; 0079A2: provisional 68k sub.l (a1)+, d7
db 0xCE, 0x99 ; 0079A4: provisional 68k and.l (a1)+, d7
db 0x9E, 0xC9 ; 0079A6: provisional 68k suba.w a1, a7
db 0x99, 0x81 ; 0079A8: provisional 68k subx.l d1, d4
db 0xFF, 0xFF ; 0079AA: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 0079AC: provisional 68k btst.l d0, (a2)
db 0x1A, 0xAA, 0xA8, 0x88 ; 0079AE: provisional 68k move.b -$5778(a2), (a5)
db 0x88, 0xE8, 0x88, 0xE8 ; 0079B2: provisional 68k divu.w -$7718(a0), d4
db 0xE9, 0xEE ; file 0079B6
db 0xEE, 0x99 ; 0079B8: provisional 68k ror.l #$7, d1
db 0x9E, 0x99 ; 0079BA: provisional 68k sub.l (a1)+, d7
db 0x98, 0x99 ; 0079BC: provisional 68k sub.l (a1)+, d4
db 0x98, 0x9E ; 0079BE: provisional 68k sub.l (a6)+, d4
db 0xEE, 0xFF ; file 0079C0
db 0xFF, 0x02 ; 0079C2: provisional 68k dc.w $ff02
db 0x10, 0x18 ; 0079C4: provisional 68k move.b (a0)+, d0
db 0x88, 0x88 ; file 0079C6
db 0x88, 0xE8, 0x88, 0xE8 ; 0079C8: provisional 68k divu.w -$7718(a0), d4
db 0x8E, 0x98 ; 0079CC: provisional 68k or.l (a0)+, d7
db 0x88, 0x99 ; 0079CE: provisional 68k or.l (a1)+, d4
db 0x98, 0x99 ; 0079D0: provisional 68k sub.l (a1)+, d4
db 0x98, 0x9E ; 0079D2: provisional 68k sub.l (a6)+, d4
db 0xEE, 0xE1 ; file 0079D4
db 0xFF, 0xFF ; 0079D6: provisional 68k dc.w $ffff
db 0x02, 0x0E, 0x18, 0x88, 0x88, 0x88 ; file 0079D8
db 0xE8, 0x88 ; 0079DE: provisional 68k lsr.l #$4, d0
db 0xE8, 0x8E ; 0079E0: provisional 68k lsr.l #$4, d6
db 0x98, 0x88 ; 0079E2: provisional 68k sub.l a0, d4
db 0x99, 0x88 ; 0079E4: provisional 68k subx.l -(a0), -(a4)
db 0x88, 0xA8, 0x81, 0xFF ; 0079E6: provisional 68k or.l -$7e01(a0), d4
db 0xFF, 0x03 ; 0079EA: provisional 68k dc.w $ff03
db 0x0D, 0x88, 0x88, 0x88 ; 0079EC: provisional 68k movep.w d6, -$7778(a0)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8E ; file 0079F0
db 0xEA, 0xAA ; 0079F6: provisional 68k lsr.l d5, d2
db 0xAA, 0xA8 ; 0079F8: provisional 68k dc.w $aaa8
db 0x88, 0xFF ; file 0079FA
db 0xFF, 0x03 ; 0079FC: provisional 68k dc.w $ff03
db 0x06, 0x18, 0x88, 0x88 ; 0079FE: provisional 68k addi.b #$88, (a0)+
db 0x88, 0x88 ; file 007A02
db 0x88, 0xE1 ; 007A04: provisional 68k divu.w -(a1), d4
db 0x02, 0x05, 0x1A, 0xAA ; 007A06: provisional 68k andi.b #$aa, d5
db 0xAA, 0xA8 ; 007A0A: provisional 68k dc.w $aaa8
db 0x99, 0x81 ; 007A0C: provisional 68k subx.l d1, d4
db 0xFF, 0xFF ; 007A0E: provisional 68k dc.w $ffff
db 0x02, 0x02, 0xEC, 0xC9 ; 007A10: provisional 68k andi.b #$c9, d2
db 0x98, 0x07 ; 007A14: provisional 68k sub.b d7, d4
db 0x05, 0x1A ; 007A16: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 007A18: provisional 68k dc.w $aaaa
db 0xA8, 0xEE ; 007A1A: provisional 68k dc.w $a8ee
db 0x88, 0xFF ; file 007A1C
db 0xFF, 0x01 ; 007A1E: provisional 68k dc.w $ff01
db 0x05, 0xBD, 0xD9, 0xFF ; file 007A20
db 0xFE, 0xE9 ; 007A24: provisional 68k dc.w $fee9
db 0xE1, 0x05 ; 007A26: provisional 68k asl.b #$8, d5
db 0x06, 0x1A, 0xAA, 0xAA ; 007A28: provisional 68k addi.b #$aa, (a2)+
db 0xAA, 0x88 ; 007A2C: provisional 68k dc.w $aa88
db 0x88, 0x81 ; 007A2E: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 007A30: provisional 68k dc.w $ffff
db 0x00, 0x08 ; file 007A32
db 0x1A, 0xAA, 0xBB, 0x9F ; 007A34: provisional 68k move.b -$4461(a2), (a5)
db 0xF9, 0xCF ; 007A38: provisional 68k dc.w $f9cf
db 0xF9, 0xEE ; 007A3A: provisional 68k dc.w $f9ee
db 0xE1, 0x04 ; 007A3C: provisional 68k asl.b #$8, d4
db 0x06, 0xAA, 0xAA, 0xAA, 0xAA, 0x88, 0x88, 0x88 ; 007A3E: provisional 68k addi.l #$aaaaaa88, -$7778(a2)
db 0xFF, 0xFF ; 007A46: provisional 68k dc.w $ffff
db 0x00, 0x09 ; file 007A48
db 0x1A, 0xAA, 0xAA, 0xB9 ; 007A4A: provisional 68k move.b -$5547(a2), (a5)
db 0xF9, 0xCF ; 007A4E: provisional 68k dc.w $f9cf
db 0xCE, 0xFF ; file 007A50
db 0x99, 0xE9, 0x03, 0x07 ; 007A52: provisional 68k suba.l $307(a1), a4
db 0x1B, 0xAA, 0xAA, 0xAA, 0xA8, 0x88 ; 007A56: provisional 68k move.b -$5556(a2), -$78(a5, a2.l)
db 0x99, 0xE1 ; 007A5C: provisional 68k suba.l -(a1), a4
db 0xFF, 0xFF ; 007A5E: provisional 68k dc.w $ffff
db 0x00, 0x0B ; file 007A60
db 0x1A, 0xAA, 0xAA, 0xBA ; 007A62: provisional 68k move.b -$5546(a2), (a5)
db 0x99, 0xCF ; 007A66: provisional 68k suba.l a7, a4
db 0xC9, 0xFF ; file 007A68
db 0xFF, 0x99 ; 007A6A: provisional 68k dc.w $ff99
db 0x99, 0x99 ; 007A6C: provisional 68k sub.l d4, (a1)+
db 0x02, 0x06, 0xAA, 0xAA ; 007A6E: provisional 68k andi.b #$aa, d6
db 0xAA, 0xAE ; 007A72: provisional 68k dc.w $aaae
db 0x98, 0x99 ; 007A74: provisional 68k sub.l (a1)+, d4
db 0xE1, 0xFF ; file 007A76
db 0xFF, 0x00 ; 007A78: provisional 68k dc.w $ff00
db 0x14, 0x1A ; 007A7A: provisional 68k move.b (a2)+, d2
db 0xAA, 0xAA ; 007A7C: provisional 68k dc.w $aaaa
db 0xAB, 0xB9 ; 007A7E: provisional 68k dc.w $abb9
db 0xCC, 0xC9 ; file 007A80
db 0xCC, 0xFC, 0x9F, 0xFC ; 007A82: provisional 68k mulu.w #$9ffc, d6
db 0xEC, 0xEE, 0xE9, 0xEE ; file 007A86
db 0xE9, 0x99 ; 007A8A: provisional 68k rol.l #$4, d1
db 0x99, 0x9E ; 007A8C: provisional 68k sub.l d4, (a6)+
db 0xE9, 0xE1 ; file 007A8E
db 0xFF, 0xFF ; 007A90: provisional 68k dc.w $ffff
db 0x00, 0x14, 0x1A, 0xAA ; 007A92: provisional 68k ori.b #$aa, (a4)
db 0xAA, 0xAA ; 007A96: provisional 68k dc.w $aaaa
db 0xAA, 0xBD ; 007A98: provisional 68k dc.w $aabd
db 0x99, 0xCC ; 007A9A: provisional 68k suba.l a4, a4
db 0xCC, 0x9F ; 007A9C: provisional 68k and.l (a7)+, d6
db 0xFF, 0xFF ; 007A9E: provisional 68k dc.w $ffff
db 0xFC, 0xFC ; 007AA0: provisional 68k dc.w $fcfc
db 0xFF, 0xE9 ; 007AA2: provisional 68k dc.w $ffe9
db 0x9E, 0x99 ; 007AA4: provisional 68k sub.l (a1)+, d7
db 0x9E, 0xE9, 0xA1, 0xFF ; 007AA6: provisional 68k suba.w -$5e01(a1), a7
db 0xFF, 0x01 ; 007AAA: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 007AAC: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 007AAE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007AB0: provisional 68k dc.w $aaaa
db 0xBB, 0x99 ; 007AB2: provisional 68k eor.l d5, (a1)+
db 0x99, 0x9C ; 007AB4: provisional 68k sub.l d4, (a4)+
db 0xCC, 0x9F ; 007AB6: provisional 68k and.l (a7)+, d6
db 0xFF, 0x9C ; 007AB8: provisional 68k dc.w $ff9c
db 0xCC, 0xE9, 0x9E, 0xE9 ; 007ABA: provisional 68k mulu.w -$6117(a1), d6
db 0x8E, 0xEB, 0xA1, 0xFF ; 007ABE: provisional 68k divu.w -$5e01(a3), d7
db 0xFF, 0x02 ; 007AC2: provisional 68k dc.w $ff02
db 0x12, 0x1A ; 007AC4: provisional 68k move.b (a2)+, d1
db 0xAA, 0xAA ; 007AC6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007AC8: provisional 68k dc.w $aaaa
db 0xAA, 0xBD ; 007ACA: provisional 68k dc.w $aabd
db 0xE9, 0x9C ; 007ACC: provisional 68k rol.l #$4, d4
db 0xEF, 0xFF ; file 007ACE
db 0x9C, 0xCC ; 007AD0: provisional 68k suba.w a4, a6
db 0xEC, 0xEE, 0x88, 0x88 ; file 007AD2
db 0xBB, 0xA1 ; 007AD6: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 007AD8: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 007ADA: provisional 68k btst.l d1, (a1)
db 0xAA, 0xAA ; 007ADC: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007ADE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007AE0: provisional 68k dc.w $aaaa
db 0xAB, 0xBE ; 007AE2: provisional 68k dc.w $abbe
db 0xE9, 0xCC ; file 007AE4
db 0x99, 0x99 ; 007AE6: provisional 68k sub.l d4, (a1)+
db 0xEE, 0x8B ; 007AE8: provisional 68k lsr.l #$7, d3
db 0xBB, 0xBB ; file 007AEA
db 0xAA, 0xA1 ; 007AEC: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 007AEE: provisional 68k dc.w $ffff
db 0x04, 0x10, 0xAA, 0xAA ; 007AF0: provisional 68k subi.b #$aa, (a0)
db 0xAA, 0xAA ; 007AF4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007AF6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007AF8: provisional 68k dc.w $aaaa
db 0xAA, 0xBB ; 007AFA: provisional 68k dc.w $aabb
db 0xBB, 0xBB ; file 007AFC
db 0xBA, 0xAA, 0xAA, 0xAA ; 007AFE: provisional 68k cmp.l -$5556(a2), d5
db 0xA1, 0xFF ; 007B02: provisional 68k dc.w $a1ff
db 0xFF, 0x04 ; 007B04: provisional 68k dc.w $ff04
db 0x10, 0x1A ; 007B06: provisional 68k move.b (a2)+, d0
db 0xAA, 0xAA ; 007B08: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B0A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B0C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B0E: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBA ; file 007B10
db 0xAA, 0xAA ; 007B14: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 007B16: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 007B18: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0x1A, 0xAA ; 007B1A: provisional 68k movep.w $1aaa(a7), d2
db 0xAA, 0xAA ; 007B1E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B20: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B22: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B24: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B26: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B28: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 007B2A: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 007B2C: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0xAA, 0xAA ; 007B2E: provisional 68k movep.w -$5556(a4), d3
db 0xAA, 0xAA ; 007B32: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B34: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B36: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B38: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B3A: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 007B3C: provisional 68k dc.w $aaff
db 0xFF, 0x09 ; 007B3E: provisional 68k dc.w $ff09
db 0x09, 0xAA, 0xAA, 0xAA ; 007B40: provisional 68k bclr.b d4, -$5556(a2)
db 0xAA, 0xAA ; 007B44: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B46: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007B48: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 007B4A: provisional 68k dc.w $aaff
db 0xFF, 0x0B ; 007B4C: provisional 68k dc.w $ff0b
db 0x06, 0x1A, 0xAA, 0xAA ; 007B4E: provisional 68k addi.b #$aa, (a2)+
db 0xAA, 0xAA ; 007B52: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 007B54: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 007B56: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007B58: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007B5A: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 007B5C: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x23, 0x00, 0x10 ; 007B60: provisional 68k ori.b #$23, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 007B66
db 0x10, 0x10 ; 007B6A: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 007B6C: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 007B6E: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 007B70: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007B72: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 007B76: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 007B7A: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 007B7C: provisional 68k neg.w d4
db 0x40, 0x3C ; file 007B7E
db 0x34, 0xAC, 0x9C, 0x7C ; 007B80: provisional 68k move.w -$6384(a4), (a2)
db 0x5C, 0x00 ; 007B84: provisional 68k addq.b #$6, d0
db 0x00, 0xD0 ; file 007B86
db 0xBC, 0x98 ; 007B88: provisional 68k cmp.l (a0)+, d6
db 0xE8, 0xD4 ; file 007B8A
db 0xB0, 0x98 ; 007B8C: provisional 68k cmp.l (a0)+, d0
db 0x00, 0x00, 0x70, 0x68 ; 007B8E: provisional 68k ori.b #$68, d0
db 0x54, 0xFC ; 007B92: provisional 68k dc.w $54fc
db 0xF4, 0xD4 ; 007B94: provisional 68k dc.w $f4d4
db 0xFF, 0xFF ; 007B96: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007B98: provisional 68k dc.w $ffff
db 0x10, 0x03 ; 007B9A: provisional 68k move.b d3, d0
db 0x1A, 0xAA, 0xAA, 0xAA ; 007B9C: provisional 68k move.b -$5556(a2), (a5)
db 0xFF, 0xFF ; 007BA0: provisional 68k dc.w $ffff
db 0x0D, 0x06 ; 007BA2: provisional 68k btst.l d6, d6
db 0x1A, 0xAA, 0xDD, 0xDD ; 007BA4: provisional 68k move.b -$2223(a2), (a5)
db 0xDD, 0xDD ; 007BA8: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xFF ; file 007BAA
db 0xFF, 0x0A ; 007BAC: provisional 68k dc.w $ff0a
db 0x0A, 0x1A, 0xAA, 0xDD ; 007BAE: provisional 68k eori.b #$dd, (a2)+
db 0xDD, 0xDD ; 007BB2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BB4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BB6: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xE1 ; 007BB8: provisional 68k adda.w -(a1), a5
db 0xFF, 0xFF ; 007BBA: provisional 68k dc.w $ffff
db 0x08, 0x0C ; file 007BBC
db 0x1A, 0xAD, 0xDD, 0xDD ; 007BBE: provisional 68k move.b -$2223(a5), (a5)
db 0xDD, 0xDD ; 007BC2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BC4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BC6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 007BC8: provisional 68k adda.l (a2)+, a6
db 0xA1, 0xFF ; 007BCA: provisional 68k dc.w $a1ff
db 0xFF, 0x05 ; 007BCC: provisional 68k dc.w $ff05
db 0x0F, 0x1A ; 007BCE: provisional 68k btst.l d7, (a2)+
db 0xAA, 0xAA ; 007BD0: provisional 68k dc.w $aaaa
db 0xDD, 0xDD ; 007BD2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BD4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BD6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BD8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BDA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xAA, 0xA1, 0xFF ; 007BDC: provisional 68k add.l d6, -$5e01(a2)
db 0xFF, 0x03 ; 007BE0: provisional 68k dc.w $ff03
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 007BE2: provisional 68k move.b -$5556(a2), -$56(a0, a2.l)
db 0xDD, 0xDD ; 007BE8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BEA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BEC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007BEE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x8E ; 007BF0: provisional 68k addx.l -(a6), -(a6)
db 0xEE, 0xEE, 0x81, 0xFF ; file 007BF2
db 0xFF, 0x02 ; 007BF6: provisional 68k dc.w $ff02
db 0x12, 0xAA, 0x8A, 0xAA ; 007BF8: provisional 68k move.b -$7556(a2), (a1)
db 0xAA, 0xAA ; 007BFC: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 007BFE: provisional 68k dc.w $aadd
db 0xDD, 0xDD ; 007C00: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007C02: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007C04: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007C06: provisional 68k adda.l (a5)+, a6
db 0x8E, 0xEE, 0xEE, 0x81 ; 007C08: provisional 68k divu.w -$117f(a6), d7
db 0xFF, 0xFF ; 007C0C: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 007C0E: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 007C10: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007C12: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007C14: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 007C16: provisional 68k dc.w $aadd
db 0xDD, 0xDD ; 007C18: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007C1A: provisional 68k adda.l (a5)+, a6
db 0xD9, 0xEE, 0xE9, 0x99 ; 007C1C: provisional 68k adda.l -$1667(a6), a4
db 0x9E, 0x99 ; 007C20: provisional 68k sub.l (a1)+, d7
db 0x99, 0x81 ; 007C22: provisional 68k subx.l d1, d4
db 0xFF, 0xFF ; 007C24: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 007C26: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 007C28: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007C2A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007C2C: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 007C2E: provisional 68k dc.w $aadd
db 0xDD, 0xDE ; 007C30: provisional 68k adda.l (a6)+, a6
db 0xE9, 0xEE ; file 007C32
db 0x9E, 0xBB, 0xBE, 0xBB ; 007C34: provisional 68k sub.l $7bf1(pc, a3.l), d7
db 0xBE, 0xB9, 0x9E, 0x81, 0xFF, 0xFF ; 007C38: provisional 68k cmp.l $9e81ffff.l, d7
db 0x01, 0x12 ; 007C3E: provisional 68k btst.l d0, (a2)
db 0xAA, 0xAA ; 007C40: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007C42: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007C44: provisional 68k dc.w $aaaa
db 0xEE, 0xAE ; 007C46: provisional 68k lsr.l d7, d6
db 0x9E, 0xEE, 0xEE, 0x99 ; 007C48: provisional 68k suba.w -$1167(a6), a7
db 0x9E, 0xBB, 0x9E, 0x99 ; 007C4C: provisional 68k sub.l $7be7(pc, a1.l), d7
db 0xEE, 0x99 ; 007C50: provisional 68k ror.l #$7, d1
db 0x8E, 0xFF ; file 007C52
db 0xFF, 0x01 ; 007C54: provisional 68k dc.w $ff01
db 0x12, 0x8A ; file 007C56
db 0xAA, 0xAA ; 007C58: provisional 68k dc.w $aaaa
db 0xAA, 0x8E ; 007C5A: provisional 68k dc.w $aa8e
db 0xE8, 0xEE, 0xEE, 0xE9, 0xEE, 0xEE ; file 007C5C
db 0x99, 0xEE, 0x99, 0x98 ; 007C62: provisional 68k suba.l -$6668(a6), a4
db 0x99, 0xEE, 0xE8, 0xE1 ; 007C66: provisional 68k suba.l -$171f(a6), a4
db 0xFF, 0xFF ; 007C6A: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 007C6C: provisional 68k btst.l d0, (a0)
db 0x8A, 0xA8, 0x88, 0x88 ; 007C6E: provisional 68k or.l -$7778(a0), d5
db 0x8E, 0xE8, 0xEE, 0xE8 ; 007C72: provisional 68k divu.w -$1118(a0), d7
db 0xE9, 0xEE ; file 007C76
db 0xE8, 0x9E ; 007C78: provisional 68k ror.l #$4, d6
db 0xE8, 0xEE, 0x88, 0x88, 0x88, 0xFF ; file 007C7A
db 0xFF, 0x02 ; 007C80: provisional 68k dc.w $ff02
db 0x0E, 0x88, 0x88, 0x88 ; file 007C82
db 0x88, 0xE8, 0x88, 0xEE ; 007C86: provisional 68k divu.w -$7712(a0), d4
db 0xEE, 0xEE, 0xEE, 0xE8, 0x88, 0x88 ; file 007C8A
db 0x88, 0x81 ; 007C90: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 007C92: provisional 68k dc.w $ffff
db 0x02, 0x0E, 0x88, 0x88, 0x88, 0x88 ; file 007C94
db 0xE8, 0x88 ; 007C9A: provisional 68k lsr.l #$4, d0
db 0xEE, 0xEE, 0xEE, 0xE1, 0x18, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 007C9C
db 0xFF, 0x02 ; 007CA6: provisional 68k dc.w $ff02
db 0x07, 0x18 ; 007CA8: provisional 68k btst.l d3, (a0)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 007CAA
db 0xE1, 0x02 ; 007CB0: provisional 68k asl.b #$8, d2
db 0x04, 0x1A, 0xAA, 0xAA ; 007CB2: provisional 68k subi.b #$aa, (a2)+
db 0xAE, 0xE8 ; 007CB6: provisional 68k dc.w $aee8
db 0xFF, 0xFF ; 007CB8: provisional 68k dc.w $ffff
db 0x03, 0x04 ; 007CBA: provisional 68k btst.l d1, d4
db 0x88, 0x88 ; file 007CBC
db 0xE8, 0x88 ; 007CBE: provisional 68k lsr.l #$4, d0
db 0x88, 0x04 ; 007CC0: provisional 68k or.b d4, d4
db 0x05, 0x1A ; 007CC2: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 007CC4: provisional 68k dc.w $aaaa
db 0xAE, 0x9E ; 007CC6: provisional 68k dc.w $ae9e
db 0xE1, 0xFF ; file 007CC8
db 0xFF, 0x01 ; 007CCA: provisional 68k dc.w $ff01
db 0x03, 0xDD ; 007CCC: provisional 68k bset.b d1, (a5)+
db 0x99, 0xC9 ; 007CCE: provisional 68k suba.l a1, a4
db 0x9E, 0x07 ; 007CD0: provisional 68k sub.b d7, d7
db 0x05, 0x1A ; 007CD2: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 007CD4: provisional 68k dc.w $aaaa
db 0xA8, 0xEE ; 007CD6: provisional 68k dc.w $a8ee
db 0xEE, 0xFF ; file 007CD8
db 0xFF, 0x00 ; 007CDA: provisional 68k dc.w $ff00
db 0x06, 0x88 ; file 007CDC
db 0xAD, 0xDE ; 007CDE: provisional 68k dc.w $adde
db 0xFF, 0xF9 ; 007CE0: provisional 68k dc.w $fff9
db 0xB9, 0x91 ; 007CE2: provisional 68k eor.l d4, (a1)
db 0x05, 0x06 ; 007CE4: provisional 68k btst.l d2, d6
db 0x1A, 0xAA, 0xAA, 0xAA ; 007CE6: provisional 68k move.b -$5556(a2), (a5)
db 0xE8, 0xE8, 0xE1, 0xFF ; file 007CEA
db 0xFF, 0x00 ; 007CEE: provisional 68k dc.w $ff00
db 0x06, 0x88 ; file 007CF0
db 0xAA, 0xDD ; 007CF2: provisional 68k dc.w $aadd
db 0xBC, 0xC9 ; 007CF4: provisional 68k cmpa.w a1, a6
db 0xCF, 0x9E ; 007CF6: provisional 68k and.l d7, (a6)+
db 0x06, 0x06, 0x1A, 0xAA ; 007CF8: provisional 68k addi.b #$aa, d6
db 0xAA, 0x88 ; 007CFC: provisional 68k dc.w $aa88
db 0xEE, 0x8E ; 007CFE: provisional 68k lsr.l #$7, d6
db 0xE1, 0xFF ; file 007D00
db 0xFF, 0x00 ; 007D02: provisional 68k dc.w $ff00
db 0x08, 0xAA ; file 007D04
db 0xAA, 0xAA ; 007D06: provisional 68k dc.w $aaaa
db 0xDB, 0xB9, 0xCF, 0xC9, 0x99, 0x99 ; 007D08: provisional 68k add.l d5, $cfc99999.l
db 0x05, 0x05 ; 007D0E: provisional 68k btst.l d2, d5
db 0xAA, 0xAA ; 007D10: provisional 68k dc.w $aaaa
db 0x88, 0xEE, 0xE8, 0xBE ; 007D12: provisional 68k divu.w -$1742(a6), d4
db 0xFF, 0xFF ; 007D16: provisional 68k dc.w $ffff
db 0x00, 0x09 ; file 007D18
db 0xAA, 0xAA ; 007D1A: provisional 68k dc.w $aaaa
db 0xAA, 0xDB ; 007D1C: provisional 68k dc.w $aadb
db 0xB9, 0xCF ; 007D1E: provisional 68k cmpa.l a7, a4
db 0xC9, 0xCC ; file 007D20
db 0xBE, 0xB1, 0x04, 0x05 ; 007D22: provisional 68k cmp.l $5(a1, d0.w), d7
db 0x1A, 0xAA, 0x88, 0xEE ; 007D26: provisional 68k move.b -$7712(a2), (a5)
db 0xE8, 0xB9 ; 007D2A: provisional 68k ror.l d4, d1
db 0xFF, 0xFF ; 007D2C: provisional 68k dc.w $ffff
db 0x00, 0x0A ; file 007D2E
db 0x1A, 0xAA, 0xAA, 0xAD ; 007D30: provisional 68k move.b -$5553(a2), (a5)
db 0xD9, 0xBB ; file 007D34
db 0xB9, 0xCC ; 007D36: provisional 68k cmpa.l a4, a4
db 0xF9, 0xB9 ; 007D38: provisional 68k dc.w $f9b9
db 0x91, 0x04 ; 007D3A: provisional 68k subx.b d4, d0
db 0x05, 0xAA, 0x88, 0x8E ; 007D3C: provisional 68k bclr.b d2, -$7772(a2)
db 0xE9, 0xB9 ; 007D40: provisional 68k rol.l d4, d1
db 0xE1, 0xFF ; file 007D42
db 0xFF, 0x01 ; 007D44: provisional 68k dc.w $ff01
db 0x0B, 0xAA, 0xAA, 0xAA ; 007D46: provisional 68k bclr.b d5, -$5556(a2)
db 0xAA, 0x99 ; 007D4A: provisional 68k dc.w $aa99
db 0x99, 0xBB ; file 007D4C
db 0xF9, 0xFF ; 007D4E: provisional 68k dc.w $f9ff
db 0x99, 0xE9, 0x99, 0x02 ; 007D50: provisional 68k suba.l -$66fe(a1), a4
db 0x05, 0x1A ; 007D54: provisional 68k btst.l d2, (a2)+
db 0x88, 0x8E ; file 007D56
db 0x9E, 0x9E ; 007D58: provisional 68k sub.l (a6)+, d7
db 0xD1, 0xFF ; file 007D5A
db 0xFF, 0x01 ; 007D5C: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 007D5E: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 007D60: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 007D62: provisional 68k dc.w $aaad
db 0xE9, 0x99 ; 007D64: provisional 68k rol.l #$4, d1
db 0xBE, 0xBF ; file 007D66
db 0xCB, 0xEF, 0x99, 0x99 ; 007D68: provisional 68k muls.w -$6667(a7), d5
db 0x99, 0xB9, 0x9E, 0x9E, 0xEE, 0xEE ; 007D6C: provisional 68k sub.l d4, $9e9eeeee.l
db 0xE1, 0xFF ; file 007D72
db 0xFF, 0x02 ; 007D74: provisional 68k dc.w $ff02
db 0x12, 0xAA, 0xAA, 0xAA ; 007D76: provisional 68k move.b -$5556(a2), (a1)
db 0xAA, 0xAD ; 007D7A: provisional 68k dc.w $aaad
db 0xDD, 0x9E ; 007D7C: provisional 68k add.l d6, (a6)+
db 0x9B, 0xBB ; file 007D7E
db 0xBF, 0xCC ; 007D80: provisional 68k cmpa.l a4, a7
db 0xEB, 0x99 ; 007D82: provisional 68k rol.l #$5, d1
db 0xE9, 0xEE ; file 007D84
db 0x98, 0x8E ; 007D86: provisional 68k sub.l a6, d4
db 0xEE, 0xD1 ; file 007D88
db 0xFF, 0xFF ; 007D8A: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 007D8C: provisional 68k btst.l d1, (a1)
db 0xAA, 0xAA ; 007D8E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007D90: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 007D92: provisional 68k dc.w $aaad
db 0x99, 0x9B ; 007D94: provisional 68k sub.l d4, (a3)+
db 0xEC, 0xCC ; file 007D96
db 0x9B, 0x99 ; 007D98: provisional 68k sub.l d5, (a1)+
db 0xEE, 0xEE, 0x88, 0x8E ; file 007D9A
db 0xEE, 0x81 ; 007D9E: provisional 68k asr.l #$7, d1
db 0xFF, 0xFF ; 007DA0: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 007DA2: provisional 68k btst.l d1, (a0)
db 0x1A, 0xAA, 0xAA, 0xAA ; 007DA4: provisional 68k move.b -$5556(a2), (a5)
db 0xAA, 0xAA ; 007DA8: provisional 68k dc.w $aaaa
db 0xAD, 0xEE ; 007DAA: provisional 68k dc.w $adee
db 0xE9, 0xCB ; file 007DAC
db 0xE9, 0x99 ; 007DAE: provisional 68k rol.l #$4, d1
db 0xEE, 0xE8 ; file 007DB0
db 0x8A, 0xAD, 0xDA, 0xFF ; 007DB2: provisional 68k or.l -$2501(a5), d5
db 0xFF, 0x04 ; 007DB6: provisional 68k dc.w $ff04
db 0x0F, 0x1A ; 007DB8: provisional 68k btst.l d7, (a2)+
db 0xAA, 0xAA ; 007DBA: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DBC: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 007DBE: provisional 68k dc.w $aadd
db 0xE9, 0xCB ; file 007DC0
db 0xE9, 0x99 ; 007DC2: provisional 68k rol.l #$4, d1
db 0xEE, 0xE8 ; file 007DC4
db 0x8A, 0xAD, 0xAA, 0xFF ; 007DC6: provisional 68k or.l -$5501(a5), d5
db 0xFF, 0x05 ; 007DCA: provisional 68k dc.w $ff05
db 0x0E, 0xAA ; file 007DCC
db 0xAA, 0xAA ; 007DCE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DD0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DD2: provisional 68k dc.w $aaaa
db 0xAD, 0xDD ; 007DD4: provisional 68k dc.w $addd
db 0xDD, 0xDD ; 007DD6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 007DD8: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xAA ; 007DDA: provisional 68k dc.w $aaaa
db 0xFF, 0xFF ; 007DDC: provisional 68k dc.w $ffff
db 0x06, 0x0D ; file 007DDE
db 0xAA, 0xAA ; 007DE0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DE2: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DE4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DE6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DE8: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DEA: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 007DEC: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 007DEE: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1A, 0xAA ; 007DF0: provisional 68k movep.w $1aaa(a4), d3
db 0xAA, 0xAA ; 007DF4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DF6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DF8: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DFA: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DFC: provisional 68k dc.w $aaaa
db 0xA1, 0xFF ; 007DFE: provisional 68k dc.w $a1ff
db 0xFF, 0x09 ; 007E00: provisional 68k dc.w $ff09
db 0x09, 0xAA, 0xAA, 0xAA ; 007E02: provisional 68k bclr.b d4, -$5556(a2)
db 0xAA, 0xAA ; 007E06: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007E08: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007E0A: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 007E0C: provisional 68k dc.w $aaff
db 0xFF, 0x0B ; 007E0E: provisional 68k dc.w $ff0b
db 0x06, 0x1A, 0xAA, 0xAA ; 007E10: provisional 68k addi.b #$aa, (a2)+
db 0xAA, 0xAA ; 007E14: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 007E16: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 007E18: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007E1A: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 007E1C: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x23, 0x00, 0x10 ; 007E20: provisional 68k ori.b #$23, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 007E26
db 0x10, 0x10 ; 007E2A: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 007E2C: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 007E2E: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 007E30: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007E32: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 007E36: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 007E3A: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 007E3C: provisional 68k neg.w d4
db 0x5C, 0x54 ; 007E3E: provisional 68k addq.w #$6, (a4)
db 0x48, 0xB4, 0xA4, 0x84, 0x50, 0x00 ; 007E40: provisional 68k movem.w d2/d7/a2/a5/a7, (a4, d5.w)
db 0x00, 0x7C, 0x00, 0x00 ; 007E46: provisional 68k ori.w #$0, sr
db 0xF8, 0xE8 ; 007E4A: provisional 68k dc.w $f8e8
db 0xC4, 0xB0, 0x00, 0x00 ; 007E4C: provisional 68k and.l (a0, d0.w), d2
db 0x8C, 0x7C, 0x68, 0xD8 ; 007E50: provisional 68k or.w #$68d8, d6
db 0xC4, 0xA0 ; 007E54: provisional 68k and.l -(a0), d2
db 0xFF, 0xFF ; 007E56: provisional 68k dc.w $ffff
db 0x11, 0x02 ; 007E58: provisional 68k move.b d2, -(a0)
db 0xBB, 0xBA ; file 007E5A
db 0xA1, 0xFF ; 007E5C: provisional 68k dc.w $a1ff
db 0xFF, 0x0E ; 007E5E: provisional 68k dc.w $ff0e
db 0x05, 0xBB, 0xBB, 0xBD ; file 007E60
db 0xDD, 0xDB ; 007E64: provisional 68k adda.l (a3)+, a6
db 0xBA, 0xFF ; file 007E66
db 0xFF, 0x0C ; 007E68: provisional 68k dc.w $ff0c
db 0x08, 0xBB ; file 007E6A
db 0xDD, 0xDD ; 007E6C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007E6E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 007E70: provisional 68k adda.l (a3)+, a6
db 0xBA, 0xB1, 0xFF, 0xFF, 0x09, 0x0B, 0x1B, 0xBB ; 007E72: provisional 68k cmp.l ([$90b1bbb]), d5
db 0xBD, 0xDD ; 007E7A: provisional 68k cmpa.l (a5)+, a6
db 0xDD, 0xDD ; 007E7C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007E7E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 007E80: provisional 68k adda.l (a3)+, a6
db 0xBB, 0xB1, 0xFF, 0xFF, 0x07, 0x0D, 0xAA, 0xAB ; 007E82: provisional 68k eor.l d5, ([$70daaab])
db 0xBB, 0xDD ; 007E8A: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 007E8C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007E8E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007E90: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 007E92: provisional 68k adda.l (a3)+, a6
db 0xBB, 0xA1 ; 007E94: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 007E96: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0xAA, 0xAB ; 007E98: provisional 68k movep.w -$5555(a7), d2
db 0xBB, 0xBB, 0xBB, 0xBD ; file 007E9C
db 0xDD, 0xDD ; 007EA0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007EA2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 007EA4: provisional 68k adda.l (a3)+, a6
db 0xB8, 0x88 ; 007EA6: provisional 68k cmp.l a0, d4
db 0x88, 0x81 ; 007EA8: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 007EAA: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 007EAC: provisional 68k btst.l d1, (a1)
db 0x1A, 0xAA, 0xAA, 0xBB ; 007EAE: provisional 68k move.b -$5545(a2), (a5)
db 0xBB, 0xBB, 0xBB, 0xBD ; file 007EB2
db 0xDD, 0xDD ; 007EB6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xBB ; file 007EB8
db 0xB9, 0xEE, 0xE9, 0x99 ; 007EBA: provisional 68k cmpa.l -$1667(a6), a4
db 0x9E, 0x81 ; 007EBE: provisional 68k sub.l d1, d7
db 0xFF, 0xFF ; 007EC0: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x1A, 0xAA ; 007EC2: provisional 68k andi.b #$aa, (a2)
db 0xAA, 0xAA ; 007EC6: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB ; file 007EC8
db 0xBD, 0xDD ; 007ECC: provisional 68k cmpa.l (a5)+, a6
db 0xDD, 0xDB ; 007ECE: provisional 68k adda.l (a3)+, a6
db 0xEE, 0xE9, 0xEE, 0xE9 ; file 007ED0
db 0x99, 0x9E ; 007ED4: provisional 68k sub.l d4, (a6)+
db 0x81, 0xFF ; file 007ED6
db 0xFF, 0x01 ; 007ED8: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 007EDA: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 007EDC: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007EDE: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB ; file 007EE0
db 0xBB, 0xDD ; 007EE4: provisional 68k cmpa.l (a5)+, a5
db 0xEE, 0x9F ; 007EE6: provisional 68k ror.l #$7, d7
db 0xFF, 0x9F ; 007EE8: provisional 68k dc.w $ff9f
db 0xFF, 0x9F ; 007EEA: provisional 68k dc.w $ff9f
db 0xFF, 0x9E ; 007EEC: provisional 68k dc.w $ff9e
db 0x81, 0xFF ; file 007EEE
db 0xFF, 0x01 ; 007EF0: provisional 68k dc.w $ff01
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 007EF2: provisional 68k move.b -$5556(a2), -$56(a0, a2.l)
db 0xAB, 0xBB ; 007EF8: provisional 68k dc.w $abbb
db 0xB8, 0xE8, 0x8E, 0xE9 ; 007EFA: provisional 68k cmpa.w -$7117(a0), a4
db 0x99, 0xEF, 0xFF, 0x9F ; 007EFE: provisional 68k suba.l -$61(a7), a4
db 0xF9, 0x9E ; 007F02: provisional 68k dc.w $f99e
db 0xE1, 0xFF ; file 007F04
db 0xFF, 0x01 ; 007F06: provisional 68k dc.w $ff01
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAB ; 007F08: provisional 68k move.b -$5556(a2), -$55(a0, a2.l)
db 0xA8, 0xEE ; 007F0E: provisional 68k dc.w $a8ee
db 0x88, 0xE9, 0xE8, 0x89 ; 007F10: provisional 68k divu.w -$1777(a1), d4
db 0x99, 0xE9, 0xEE, 0xEE ; 007F14: provisional 68k suba.l -$1112(a1), a4
db 0xE8, 0x88 ; 007F18: provisional 68k lsr.l #$4, d0
db 0x81, 0xFF ; file 007F1A
db 0xFF, 0x01 ; 007F1C: provisional 68k dc.w $ff01
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0x88 ; 007F1E: provisional 68k move.b -$5556(a2), -$78(a0, a2.l)
db 0x88, 0xEE, 0xE8, 0xE9 ; 007F24: provisional 68k divu.w -$1717(a6), d4
db 0xE8, 0x89 ; 007F28: provisional 68k lsr.l #$4, d1
db 0xEE, 0x8E ; 007F2A: provisional 68k lsr.l #$7, d6
db 0xEE, 0x88 ; 007F2C: provisional 68k lsr.l #$7, d0
db 0x88, 0x88, 0x88, 0xFF ; file 007F2E
db 0xFF, 0x01 ; 007F32: provisional 68k dc.w $ff01
db 0x0F, 0xAA, 0xAA, 0xA8 ; 007F34: provisional 68k bclr.b d7, -$5558(a2)
db 0x88, 0x88, 0x88, 0x88 ; file 007F38
db 0xE8, 0x8E ; 007F3C: provisional 68k lsr.l #$4, d6
db 0x88, 0x88 ; file 007F3E
db 0xE8, 0x88 ; 007F40: provisional 68k lsr.l #$4, d0
db 0x88, 0x88, 0x88, 0xFF ; file 007F42
db 0xFF, 0x01 ; 007F46: provisional 68k dc.w $ff01
db 0x0E, 0xAA ; file 007F48
db 0xA8, 0x88 ; 007F4A: provisional 68k dc.w $a888
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 007F4C
db 0x88, 0xEE, 0x1A, 0xAA ; 007F52: provisional 68k divu.w $1aaa(a6), d4
db 0xA8, 0x81 ; 007F56: provisional 68k dc.w $a881
db 0xFF, 0xFF ; 007F58: provisional 68k dc.w $ffff
db 0x02, 0x08, 0x18, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 007F5A
db 0x81, 0x01 ; 007F64: provisional 68k sbcd.b d1, d0
db 0x03, 0x1A ; 007F66: provisional 68k btst.l d1, (a2)+
db 0xAA, 0xAA ; 007F68: provisional 68k dc.w $aaaa
db 0x88, 0xFF ; file 007F6A
db 0xFF, 0x02 ; 007F6C: provisional 68k dc.w $ff02
db 0x06, 0x18, 0x88, 0x88 ; 007F6E: provisional 68k addi.b #$88, (a0)+
db 0x88, 0x88 ; file 007F72
db 0x88, 0x81 ; 007F74: provisional 68k or.l d1, d4
db 0x03, 0x04 ; 007F76: provisional 68k btst.l d1, d4
db 0x1A, 0xAA, 0xAA, 0x88 ; 007F78: provisional 68k move.b -$5578(a2), (a5)
db 0x81, 0xFF ; file 007F7C
db 0xFF, 0x02 ; 007F7E: provisional 68k dc.w $ff02
db 0x04, 0x18, 0x88, 0x88 ; 007F80: provisional 68k subi.b #$88, (a0)+
db 0x88, 0x88 ; file 007F84
db 0x05, 0x05 ; 007F86: provisional 68k btst.l d2, d5
db 0x1A, 0xAA, 0xAA, 0xA8 ; 007F88: provisional 68k move.b -$5558(a2), (a5)
db 0x88, 0x81 ; 007F8C: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 007F8E: provisional 68k dc.w $ffff
db 0x00, 0x04, 0xAA, 0xDD ; 007F90: provisional 68k ori.b #$dd, d4
db 0xDC, 0xC9 ; 007F94: provisional 68k adda.w a1, a6
db 0x98, 0x07 ; 007F96: provisional 68k sub.b d7, d4
db 0x05, 0x1A ; 007F98: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 007F9A: provisional 68k dc.w $aaaa
db 0xA8, 0x88 ; 007F9C: provisional 68k dc.w $a888
db 0x88, 0xFF ; file 007F9E
db 0xFF, 0x00 ; 007FA0: provisional 68k dc.w $ff00
db 0x06, 0xAA, 0xAB, 0xB8, 0xCC, 0xCC, 0xF9, 0xE1 ; 007FA2: provisional 68k addi.l #$abb8cccc, -$61f(a2)
db 0x05, 0x06 ; 007FAA: provisional 68k btst.l d2, d6
db 0x1A, 0xAA, 0xAA, 0xAA ; 007FAC: provisional 68k move.b -$5556(a2), (a5)
db 0x88, 0x88, 0x81, 0xFF ; file 007FB0
db 0xFF, 0x00 ; 007FB4: provisional 68k dc.w $ff00
db 0x07, 0xAA, 0xAA, 0xBD ; 007FB6: provisional 68k bclr.b d3, -$5543(a2)
db 0xFF, 0xF9 ; 007FBA: provisional 68k dc.w $fff9
db 0xCC, 0xF8, 0xF1, 0x05 ; 007FBC: provisional 68k mulu.w $f105.w, d6
db 0x06, 0x1A, 0xAA, 0xAA ; 007FC0: provisional 68k addi.b #$aa, (a2)+
db 0xAA, 0x88 ; 007FC4: provisional 68k dc.w $aa88
db 0x88, 0xE1 ; 007FC6: provisional 68k divu.w -(a1), d4
db 0xFF, 0xFF ; 007FC8: provisional 68k dc.w $ffff
db 0x00, 0x08 ; file 007FCA
db 0xAA, 0xAA ; 007FCC: provisional 68k dc.w $aaaa
db 0xAA, 0xDF ; 007FCE: provisional 68k dc.w $aadf
db 0xF9, 0xCC ; 007FD0: provisional 68k dc.w $f9cc
db 0xCE, 0xEF, 0xE1, 0x05 ; 007FD2: provisional 68k mulu.w -$1efb(a7), d7
db 0x05, 0xAA, 0xAA, 0xAA ; 007FD6: provisional 68k bclr.b d2, -$5556(a2)
db 0xA8, 0x88 ; 007FDA: provisional 68k dc.w $a888
db 0xEE, 0xFF ; file 007FDC
db 0xFF, 0x00 ; 007FDE: provisional 68k dc.w $ff00
db 0x09, 0xAA, 0xAA, 0xAA ; 007FE0: provisional 68k bclr.b d4, -$5556(a2)
db 0xDF, 0xF9, 0xCC, 0xCF, 0xCC, 0xE8 ; 007FE4: provisional 68k adda.l $cccfcce8.l, a7
db 0xE1, 0x04 ; 007FEA: provisional 68k asl.b #$8, d4
db 0x05, 0x1A ; 007FEC: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 007FEE: provisional 68k dc.w $aaaa
db 0xA8, 0x88 ; 007FF0: provisional 68k dc.w $a888
db 0xCE, 0xFF ; file 007FF2
db 0xFF, 0x00 ; 007FF4: provisional 68k dc.w $ff00
db 0x0A, 0x1A, 0xAA, 0xAA ; 007FF6: provisional 68k eori.b #$aa, (a2)+
db 0xAD, 0xD9 ; 007FFA: provisional 68k dc.w $add9
db 0xFF, 0xFE ; 007FFC: provisional 68k dc.w $fffe
db 0xCC, 0xCF ; file 007FFE
db 0xE8, 0xF1, 0x04, 0x05, 0xAA, 0xAA ; 008000: provisional 68k bftst -$56(a1, a2.l){16:5}
db 0xA8, 0x89 ; 008006: provisional 68k dc.w $a889
db 0xFE, 0xA1 ; 008008: provisional 68k dc.w $fea1
db 0xFF, 0xFF ; 00800A: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xAA, 0xAA ; 00800C: provisional 68k movep.w -$5556(a3), d0
db 0xAA, 0xAB ; 008010: provisional 68k dc.w $aaab
db 0xE9, 0xFE ; file 008012
db 0xFF, 0xCF ; 008014: provisional 68k dc.w $ffcf
db 0xCF, 0x9E ; 008016: provisional 68k and.l d7, (a6)+
db 0xEE, 0xF1 ; 008018: provisional 68k dc.w $eef1
db 0x02, 0x05, 0x1A, 0xAA ; 00801A: provisional 68k andi.b #$aa, d5
db 0xA8, 0xFE ; 00801E: provisional 68k dc.w $a8fe
db 0xEE, 0xB1 ; 008020: provisional 68k roxr.l d7, d1
db 0xFF, 0xFF ; 008022: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 008024: provisional 68k btst.l d0, (a3)
db 0x1A, 0xAA, 0xAA, 0xAA ; 008026: provisional 68k move.b -$5556(a2), (a5)
db 0xAD, 0xE9 ; 00802A: provisional 68k dc.w $ade9
db 0xFF, 0xF9 ; 00802C: provisional 68k dc.w $fff9
db 0xFC, 0xCC ; 00802E: provisional 68k dc.w $fccc
db 0x9F, 0xE8, 0xEE, 0xEE ; 008030: provisional 68k suba.l -$1112(a0), a7
db 0xEE, 0x88 ; 008034: provisional 68k lsr.l #$7, d0
db 0x88, 0x88 ; file 008036
db 0xEE, 0xB1 ; 008038: provisional 68k roxr.l d7, d1
db 0xFF, 0xFF ; 00803A: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x1A, 0xAA ; 00803C: provisional 68k andi.b #$aa, (a2)
db 0xAA, 0xAA ; 008040: provisional 68k dc.w $aaaa
db 0xAD, 0xEE ; 008042: provisional 68k dc.w $adee
db 0xEE, 0x9F ; 008044: provisional 68k ror.l #$7, d7
db 0xCC, 0x9C ; 008046: provisional 68k and.l (a4)+, d6
db 0xCF, 0xEF, 0xFF, 0xEE ; 008048: provisional 68k muls.w -$12(a7), d7
db 0xE8, 0x88 ; 00804C: provisional 68k lsr.l #$4, d0
db 0x88, 0x8E, 0xD1, 0xFF ; file 00804E
db 0xFF, 0x03 ; 008052: provisional 68k dc.w $ff03
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 008054: provisional 68k move.b -$5556(a2), -$56(a0, a2.l)
db 0xDD, 0x99 ; 00805A: provisional 68k add.l d6, (a1)+
db 0x9F, 0x9C ; 00805C: provisional 68k sub.l d7, (a4)+
db 0xFF, 0x9F ; 00805E: provisional 68k dc.w $ff9f
db 0x99, 0x8E ; 008060: provisional 68k subx.l -(a6), -(a4)
db 0xE8, 0x88 ; 008062: provisional 68k lsr.l #$4, d0
db 0x88, 0x88, 0xB1, 0xFF ; file 008064
db 0xFF, 0x03 ; 008068: provisional 68k dc.w $ff03
db 0x10, 0x1A ; 00806A: provisional 68k move.b (a2)+, d0
db 0xAA, 0xAA ; 00806C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00806E: provisional 68k dc.w $aaaa
db 0xAA, 0xB9 ; 008070: provisional 68k dc.w $aab9
db 0xEF, 0x9F ; 008072: provisional 68k rol.l #$7, d7
db 0xFF, 0x99 ; 008074: provisional 68k dc.w $ff99
db 0x99, 0x8E ; 008076: provisional 68k subx.l -(a6), -(a4)
db 0xE8, 0x88 ; 008078: provisional 68k lsr.l #$4, d0
db 0x88, 0xBA, 0xFF, 0xFF ; 00807A: provisional 68k or.l $807b(pc), d4
db 0x04, 0x0F ; file 00807E
db 0xAA, 0xAA ; 008080: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008082: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 008084: provisional 68k dc.w $aaad
db 0xEF, 0x9F ; 008086: provisional 68k rol.l #$7, d7
db 0xFF, 0x89 ; 008088: provisional 68k dc.w $ff89
db 0x99, 0x88 ; 00808A: provisional 68k subx.l -(a0), -(a4)
db 0x88, 0x88 ; file 00808C
db 0x88, 0xBA, 0xFF, 0xFF ; 00808E: provisional 68k or.l $808f(pc), d4
db 0x05, 0x0E, 0xAA, 0xAA ; 008092: provisional 68k movep.w -$5556(a6), d2
db 0xAA, 0xAA ; 008096: provisional 68k dc.w $aaaa
db 0xAA, 0xAB ; 008098: provisional 68k dc.w $aaab
db 0xBD, 0xE9, 0x8E, 0x88 ; 00809A: provisional 68k cmpa.l -$7178(a1), a6
db 0x88, 0x8B ; file 00809E
db 0xDD, 0xDB ; 0080A0: provisional 68k adda.l (a3)+, a6
db 0xA1, 0xFF ; 0080A2: provisional 68k dc.w $a1ff
db 0xFF, 0x06 ; 0080A4: provisional 68k dc.w $ff06
db 0x0D, 0xAA, 0xAA, 0xAA ; 0080A6: provisional 68k bclr.b d6, -$5556(a2)
db 0xAA, 0xAA ; 0080AA: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080AC: provisional 68k dc.w $aaaa
db 0xAB, 0xAA ; 0080AE: provisional 68k dc.w $abaa
db 0xAA, 0xAA ; 0080B0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080B2: provisional 68k dc.w $aaaa
db 0xA1, 0xFF ; 0080B4: provisional 68k dc.w $a1ff
db 0xFF, 0x07 ; 0080B6: provisional 68k dc.w $ff07
db 0x0C, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 0080B8: provisional 68k cmpi.l #$aaaaaaaa, -$5556(a2)
db 0xAA, 0xAA ; 0080C0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080C2: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 0080C4: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 0080C6: provisional 68k dc.w $ffff
db 0x08, 0x0A ; file 0080C8
db 0x1A, 0xAA, 0xAA, 0xAA ; 0080CA: provisional 68k move.b -$5556(a2), (a5)
db 0xAA, 0xAA ; 0080CE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080D0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080D2: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 0080D4: provisional 68k dc.w $aaff
db 0xFF, 0x0A ; 0080D6: provisional 68k dc.w $ff0a
db 0x08, 0xAA ; file 0080D8
db 0xAA, 0xAA ; 0080DA: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080DC: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080DE: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 0080E0: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 0080E2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0080E4: provisional 68k dc.w $ffff
db 0x01, 0x00 ; 0080E6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0080E8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0xA6 ; 0080EC: provisional 68k ori.b #$a6, d0
db 0x1E, 0xF0, 0x00, 0x00 ; 0080F0: provisional 68k move.b (a0, d0.w), (a7)+
db 0x00, 0x00, 0x00, 0x00 ; 0080F4: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0080F8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0080FC: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008100: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008104: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008108: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 00810C: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008110: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008114: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008118: provisional 68k ori.b #$0, d0
db 0x67, 0x75 ; 00811C: provisional 68k beq.b $8193
db 0x30, 0x30, 0x00, 0x00 ; 00811E: provisional 68k move.w (a0, d0.w), d0
db 0x00, 0x00, 0x00, 0x00 ; 008122: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008126: provisional 68k ori.b #$0, d0
db 0x00, 0x01, 0x00, 0x07 ; 00812A: provisional 68k ori.b #$7, d1
db 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0A ; file 00812E
db 0x00, 0x04, 0x00, 0x04 ; 008136: provisional 68k ori.b #$4, d4
db 0x00, 0x00, 0x00, 0x00 ; 00813A: provisional 68k ori.b #$0, d0
db 0x00, 0x09, 0x00, 0x09 ; file 00813E
db 0x00, 0x13, 0x00, 0x13 ; 008142: provisional 68k ori.b #$13, (a3)
db 0x00, 0x01, 0x00, 0x01 ; 008146: provisional 68k ori.b #$1, d1
db 0x00, 0x0B, 0x00, 0x0B ; file 00814A
db 0x00, 0x00, 0x00, 0x00 ; 00814E: provisional 68k ori.b #$0, d0
db 0x00, 0x0A, 0x00, 0x0A ; file 008152
db 0x00, 0x11, 0x00, 0x12 ; 008156: provisional 68k ori.b #$12, (a1)
db 0x00, 0x0D, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0E ; file 00815A
db 0x00, 0x05, 0x00, 0x13 ; 008162: provisional 68k ori.b #$13, d5
db 0x00, 0x10, 0x00, 0x10 ; 008166: provisional 68k ori.b #$10, (a0)
db 0x00, 0x14, 0x00, 0x0F ; 00816A: provisional 68k ori.b #$f, (a4)
db 0x00, 0x0C, 0x00, 0x0C, 0x00, 0x08, 0x00, 0x08 ; file 00816E
db 0x00, 0x00, 0x00, 0x00 ; 008176: provisional 68k ori.b #$0, d0
db 0x00, 0x15, 0x00, 0x15 ; 00817A: provisional 68k ori.b #$15, (a5)
db 0x00, 0x05, 0x00, 0x06 ; 00817E: provisional 68k ori.b #$6, d5
db 0x00, 0x07, 0x00, 0x0F ; 008182: provisional 68k ori.b #$f, d7
db 0x00, 0x11, 0x00, 0x12 ; 008186: provisional 68k ori.b #$12, (a1)
db 0x00, 0x14, 0x00, 0x07 ; 00818A: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 00818E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008190: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 008194: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008196: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x10 ; 00819A: provisional 68k ori.b #$10, d0
db 0x01, 0x18 ; 00819E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x18 ; 0081A0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0081A2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0081A4: provisional 68k ori.b #$0, d2
db 0x01, 0x07 ; 0081A8: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 0081AA: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 0081AC: provisional 68k ori.b #$0, (a7)
db 0x00, 0x08 ; file 0081B0
db 0x01, 0x14 ; 0081B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0081B4
db 0x01, 0x0D, 0x01, 0x18 ; 0081B6: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 0081BA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0081BC: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0081C0: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0081C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0081C4: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 0081C8
db 0x01, 0x14 ; 0081CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x24, 0x01, 0x0D ; 0081CC: provisional 68k ori.b #$d, -(a4)
db 0x01, 0x18 ; 0081D0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0081D2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0081D4: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0081D8: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0081DA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0081DC: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 0081E0: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 0081E4: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 0081E8: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0081EA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0081EC: provisional 68k ori.b #$0, d2
db 0x01, 0x0D, 0x01, 0x14 ; 0081F0: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 0081F4: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x04 ; 0081F8: provisional 68k ori.b #$4, d0
db 0x00, 0xB6, 0x00, 0x08, 0x01, 0x14, 0x00, 0x0D ; 0081FC: provisional 68k ori.l #$80114, $d(a6, d0.w)
db 0x01, 0x0D, 0x01, 0x14 ; 008204: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 008208: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 00820C: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00820E: provisional 68k ori.b #$0, d6
db 0x00, 0x00, 0x00, 0x10 ; 008212: provisional 68k ori.b #$10, d0
db 0x01, 0x78, 0x01, 0x18 ; 008216: provisional 68k bchg.b d0, $118.w
db 0x01, 0x14 ; 00821A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00821C: provisional 68k ori.b #$0, d2
db 0x01, 0x07 ; 008220: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 008222: provisional 68k btst.l d0, (a4)
db 0x00, 0x3A ; file 008224
db 0x01, 0x00 ; 008226: provisional 68k btst.l d0, d0
db 0x00, 0x08 ; file 008228
db 0x01, 0x14 ; 00822A: provisional 68k btst.l d0, (a4)
db 0x00, 0x24, 0x01, 0x0D ; 00822C: provisional 68k ori.b #$d, -(a4)
db 0x01, 0x18 ; 008230: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008232: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008234: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 008238: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00823A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00823C: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 008240: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 008244: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 008248: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00824A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00824C: provisional 68k ori.b #$0, d2
db 0x01, 0x0D, 0x01, 0x14 ; 008250: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 008254: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x04 ; 008258: provisional 68k ori.b #$4, d0
db 0x01, 0x2E, 0x00, 0x08 ; 00825C: provisional 68k btst.l d0, $8(a6)
db 0x01, 0x14 ; 008260: provisional 68k btst.l d0, (a4)
db 0x00, 0x5E, 0x01, 0x00 ; 008262: provisional 68k ori.w #$100, (a6)+
db 0x01, 0x14 ; 008266: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008268: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00826C: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 008270: provisional 68k btst.l d0, (a4)
db 0x00, 0x60, 0x01, 0x00 ; 008272: provisional 68k ori.w #$100, -(a0)
db 0x01, 0x14 ; 008276: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008278: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00827C: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 008280: provisional 68k btst.l d0, (a4)
db 0x00, 0x61, 0x01, 0x00 ; 008282: provisional 68k ori.w #$100, -(a1)
db 0x01, 0x13 ; 008286: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008288: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00828A: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00828E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 008290: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 008294: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 008296: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 00829A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 00829C
db 0x01, 0x00 ; 00829E: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 0082A0: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0082A2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0082A4: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0082A8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 0082AA: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 0082AE: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x1D ; 0082B0: provisional 68k ori.b #$1d, d0
db 0x00, 0x00, 0x00, 0x08 ; 0082B4: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 0082B8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0082BA: provisional 68k ori.b #$0, d0
db 0x01, 0x1D ; 0082BE: provisional 68k btst.l d0, (a5)+
db 0x02, 0xC8 ; file 0082C0
db 0x00, 0x00, 0x01, 0x00 ; 0082C2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 0082C6: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 0082CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0082CC: provisional 68k ori.b #$0, d1
db 0x01, 0x1D ; 0082D0: provisional 68k btst.l d0, (a5)+
db 0x0E, 0x44 ; file 0082D2
db 0x00, 0x00, 0x01, 0x00 ; 0082D4: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 0082D8: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 0082DC: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 0082DE: provisional 68k ori.b #$0, d5
db 0x01, 0x1D ; 0082E2: provisional 68k btst.l d0, (a5)+
db 0x0F, 0xE6 ; 0082E4: provisional 68k bset.b d7, -(a6)
db 0x00, 0x00, 0x01, 0x00 ; 0082E6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 0082EA: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 0082EE: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0082F0: provisional 68k ori.b #$0, d2
db 0x01, 0x1D ; 0082F4: provisional 68k btst.l d0, (a5)+
db 0x1C, 0xD8 ; 0082F6: provisional 68k move.b (a0)+, (a6)+
db 0x00, 0x00, 0x01, 0x00 ; 0082F8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 0082FC: provisional 68k ori.b #$f, d0
db 0x02, 0x54, 0x01, 0x1A ; 008300: provisional 68k andi.w #$11a, (a4)
db 0x01, 0x14 ; 008304: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008306: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00830A: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00830C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00830E: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x01, 0x29, 0x01, 0x27 ; 008312: provisional 68k ori.b #$29, $127(a4)
db 0x01, 0x14 ; 008318: provisional 68k btst.l d0, (a4)
db 0x02, 0xC0 ; file 00831A
db 0x01, 0x00 ; 00831C: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00831E: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008320: provisional 68k btst.l d0, (a4)
db 0x02, 0xBA ; file 008322
db 0x01, 0x00 ; 008324: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008326: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008328: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 00832C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00832E: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 008332: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 008334: provisional 68k ori.b #$4, d0
db 0x02, 0x78, 0x00, 0x2C, 0x01, 0x29 ; 008338: provisional 68k andi.w #$2c, $129.w
db 0x01, 0x27 ; 00833E: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 008340: provisional 68k btst.l d0, (a4)
db 0x02, 0xB2, 0x01, 0x00, 0x01, 0x00, 0x01, 0x14 ; 008342: provisional 68k andi.l #$1000100, (a2, d0.w)
db 0x02, 0xAC, 0x01, 0x00, 0x01, 0x14, 0x00, 0x00 ; 00834A: provisional 68k andi.l #$1000114, $0(a4)
db 0x01, 0x00 ; 008352: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008354: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008356: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00835A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x10 ; 00835C: provisional 68k ori.b #$10, d0
db 0x02, 0xAC, 0x01, 0x13, 0x01, 0x14, 0x00, 0x01 ; 008360: provisional 68k andi.l #$1130114, $1(a4)
db 0x01, 0x05 ; 008368: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00836A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00836C: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 008370: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 008372: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 008376: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008378: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 00837C: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 00837E: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 008380: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 008384: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 008388: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 00838A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00838C: provisional 68k ori.b #$4, d0
db 0x02, 0x78, 0x6E, 0x6F, 0x64, 0x76 ; 008390: provisional 68k andi.w #$6e6f, $6476.w
db 0x00, 0x00, 0x72, 0x74 ; 008396: provisional 68k ori.b #$74, d0
db 0x67, 0x72 ; 00839A: provisional 68k beq.b $840e
db 0x65, 0x65 ; 00839C: provisional 68k bcs.b $8403
db 0x6E, 0x00, 0x62, 0x72 ; 00839E: provisional 68k bgt.w $e612
db 0x69, 0x61 ; 0083A2: provisional 68k bvs.b $8405
db 0x6E, 0x00, 0x72, 0x74 ; 0083A4: provisional 68k bgt.w $f61a
db 0x67, 0x72 ; 0083A8: provisional 68k beq.b $841c
db 0x65, 0x65 ; 0083AA: provisional 68k bcs.b $8411
db 0x6E, 0x00, 0x00, 0x11 ; 0083AC: provisional 68k bgt.w $83bf
db 0x01, 0x14 ; 0083B0: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0083B2
db 0x01, 0x0D, 0x01, 0x14 ; 0083B4: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 0083B8: provisional 68k ori.b #$0, d0
db 0x01, 0x27 ; 0083BC: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0083BE: provisional 68k btst.l d0, (a4)
db 0x06, 0x30, 0x01, 0x00, 0x01, 0x00 ; 0083C0: provisional 68k addi.b #$0, (a0, d0.w)
db 0x00, 0x00, 0x00, 0x11 ; 0083C6: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0083CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0083CC
db 0x01, 0x0D, 0x01, 0x14 ; 0083CE: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 0083D2: provisional 68k ori.b #$0, d1
db 0x01, 0x27 ; 0083D6: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0083D8: provisional 68k btst.l d0, (a4)
db 0x06, 0x2C, 0x01, 0x00, 0x01, 0x00 ; 0083DA: provisional 68k addi.b #$0, $100(a4)
db 0x00, 0x00, 0x00, 0x11 ; 0083E0: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0083E4: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0083E6
db 0x01, 0x0D, 0x01, 0x14 ; 0083E8: provisional 68k movep.w $114(a5), d0
db 0x00, 0x02, 0x01, 0x00 ; 0083EC: provisional 68k ori.b #$0, d2
db 0x01, 0x27 ; 0083F0: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0083F2: provisional 68k btst.l d0, (a4)
db 0x06, 0x28, 0x01, 0x00, 0x01, 0x00 ; 0083F4: provisional 68k addi.b #$0, $100(a0)
db 0x00, 0x00, 0x00, 0x11 ; 0083FA: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0083FE: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 008400
db 0x01, 0x0D, 0x01, 0x14 ; 008402: provisional 68k movep.w $114(a5), d0
db 0x00, 0x03, 0x01, 0x00 ; 008406: provisional 68k ori.b #$0, d3
db 0x01, 0x27 ; 00840A: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00840C: provisional 68k btst.l d0, (a4)
db 0x06, 0x24, 0x01, 0x00 ; 00840E: provisional 68k addi.b #$0, -(a4)
db 0x01, 0x00 ; 008412: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 008414: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 008418: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00841A
db 0x01, 0x0D, 0x01, 0x14 ; 00841C: provisional 68k movep.w $114(a5), d0
db 0x00, 0x04, 0x01, 0x00 ; 008420: provisional 68k ori.b #$0, d4
db 0x01, 0x27 ; 008424: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 008426: provisional 68k btst.l d0, (a4)
db 0x06, 0x20, 0x01, 0x00 ; 008428: provisional 68k addi.b #$0, -(a0)
db 0x01, 0x00 ; 00842C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 00842E: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 008432: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 008434
db 0x01, 0x0D, 0x01, 0x14 ; 008436: provisional 68k movep.w $114(a5), d0
db 0x00, 0x05, 0x01, 0x00 ; 00843A: provisional 68k ori.b #$0, d5
db 0x01, 0x27 ; 00843E: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 008440: provisional 68k btst.l d0, (a4)
db 0x06, 0x1C, 0x01, 0x00 ; 008442: provisional 68k addi.b #$0, (a4)+
db 0x01, 0x00 ; 008446: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 008448: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 00844C: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00844E
db 0x01, 0x0D, 0x01, 0x14 ; 008450: provisional 68k movep.w $114(a5), d0
db 0x00, 0x06, 0x01, 0x00 ; 008454: provisional 68k ori.b #$0, d6
db 0x01, 0x27 ; 008458: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00845A: provisional 68k btst.l d0, (a4)
db 0x06, 0x18, 0x01, 0x00 ; 00845C: provisional 68k addi.b #$0, (a0)+
db 0x01, 0x00 ; 008460: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 008462: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 008466: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 008468
db 0x01, 0x0D, 0x01, 0x14 ; 00846A: provisional 68k movep.w $114(a5), d0
db 0x00, 0x07, 0x01, 0x00 ; 00846E: provisional 68k ori.b #$0, d7
db 0x01, 0x27 ; 008472: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 008474: provisional 68k btst.l d0, (a4)
db 0x06, 0x14, 0x01, 0x00 ; 008476: provisional 68k addi.b #$0, (a4)
db 0x01, 0x00 ; 00847A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 00847C: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 008480: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 008482
db 0x01, 0x0D, 0x01, 0x14 ; 008484: provisional 68k movep.w $114(a5), d0
db 0x00, 0x08 ; file 008488
db 0x01, 0x00 ; 00848A: provisional 68k btst.l d0, d0
db 0x01, 0x27 ; 00848C: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00848E: provisional 68k btst.l d0, (a4)
db 0x06, 0x10, 0x01, 0x00 ; 008490: provisional 68k addi.b #$0, (a0)
db 0x01, 0x00 ; 008494: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 008496: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 00849A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00849C
db 0x01, 0x0D, 0x01, 0x14 ; 00849E: provisional 68k movep.w $114(a5), d0
db 0x00, 0x09 ; file 0084A2
db 0x01, 0x00 ; 0084A4: provisional 68k btst.l d0, d0
db 0x01, 0x27 ; 0084A6: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0084A8: provisional 68k btst.l d0, (a4)
db 0x06, 0x0C ; file 0084AA
db 0x01, 0x00 ; 0084AC: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0084AE: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 0084B0: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0084B4: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 0084B6
db 0x01, 0x00 ; 0084B8: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0084BA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0084BC: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x11 ; 0084C0: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0084C4: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 0084C6
db 0x01, 0x00 ; 0084C8: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 0084CA: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0084CC: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0084CE
db 0x01, 0x0D, 0x01, 0x14 ; 0084D0: provisional 68k movep.w $114(a5), d0
db 0x00, 0x03, 0x01, 0x00 ; 0084D4: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 0084D8: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 0084DA: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0084DE: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 0084E0: provisional 68k ori.b #$0, (a7)
db 0x01, 0x14 ; 0084E4: provisional 68k btst.l d0, (a4)
db 0x01, 0x80 ; 0084E6: provisional 68k bclr.b d0, d0
db 0x01, 0x00 ; 0084E8: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0084EA: provisional 68k ori.b #$14, (a1)
db 0x00, 0x18, 0x01, 0x00 ; 0084EE: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x14 ; 0084F2: provisional 68k btst.l d0, (a4)
db 0x01, 0x18 ; 0084F4: provisional 68k btst.l d0, (a0)+
db 0x01, 0x00 ; 0084F6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x49 ; 0084F8: provisional 68k ori.b #$49, d0
db 0x01, 0x1E ; 0084FC: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0084FE: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 008500: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 008504: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 008506: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008508: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 00850A: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 00850E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x10 ; 008510: provisional 68k ori.b #$10, d0
db 0x06, 0x0C ; file 008514
db 0x01, 0x13 ; 008516: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008518: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00851A: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00851E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 008520: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 008524: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 008526: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 00852A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00852C: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 008530: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 008532: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 008534: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 008538: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 00853C: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 00853E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 008540: provisional 68k ori.b #$f, d0
db 0x04, 0xBE ; file 008544
db 0x01, 0x18 ; 008546: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008548: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00854A: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00854E: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008550: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 008552: provisional 68k ori.w #$100, (a2)+
db 0x00, 0x0F ; file 008556
db 0x04, 0xAA, 0x01, 0x1E, 0x01, 0x14, 0x00, 0x0A ; 008558: provisional 68k subi.l #$11e0114, $a(a2)
db 0x01, 0x00 ; 008560: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 008562: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 008564: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008566: provisional 68k ori.b #$0, d0
db 0x00, 0x18, 0x01, 0x14 ; 00856A: provisional 68k ori.b #$14, (a0)+
db 0x00, 0x00, 0x01, 0x00 ; 00856E: provisional 68k ori.b #$0, d0
db 0x00, 0x15, 0x01, 0x1E ; 008572: provisional 68k ori.b #$1e, (a5)
db 0x01, 0x14 ; 008576: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 008578
db 0x01, 0x00 ; 00857A: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00857C: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00857E: provisional 68k btst.l d0, (a4)
db 0x00, 0x64, 0x01, 0x00 ; 008580: provisional 68k ori.w #$100, -(a4)
db 0x01, 0x14 ; 008584: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008586: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00858A: provisional 68k ori.b #$4, d0
db 0x04, 0xBA, 0x00, 0x08 ; file 00858E
db 0x01, 0x14 ; 008592: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 008594: provisional 68k ori.b #$0, d4
db 0x01, 0x14 ; 008598: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00859A: provisional 68k ori.b #$0, d2
db 0x00, 0x00, 0x00, 0x04 ; 00859E: provisional 68k ori.b #$4, d0
db 0x06, 0x08, 0x00, 0x0F ; file 0085A2
db 0x05, 0x14 ; 0085A6: provisional 68k btst.l d2, (a4)
db 0x01, 0x18 ; 0085A8: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0085AA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0085AC: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 0085B0: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0085B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x5B, 0x01, 0x00 ; 0085B4: provisional 68k ori.w #$100, (a3)+
db 0x00, 0x11, 0x01, 0x14 ; 0085B8: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0C ; file 0085BC
db 0x01, 0x00 ; 0085BE: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 0085C0: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0085C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0085C4: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0085C8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 0085CA: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 0085CE: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0085D0: provisional 68k ori.b #$14, (a1)
db 0x00, 0x19, 0x01, 0x00 ; 0085D4: provisional 68k ori.b #$0, (a1)+
db 0x01, 0x18 ; 0085D8: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0085DA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0085DC: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 0085E0: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0085E2: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1A, 0x01, 0x00 ; 0085E6: provisional 68k ori.b #$0, (a2)+
db 0x01, 0x19 ; 0085EA: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 0085EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x63, 0x01, 0x00 ; 0085EE: provisional 68k ori.w #$100, -(a3)
db 0x01, 0x00 ; 0085F2: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0085F4: provisional 68k ori.b #$4, d0
db 0x06, 0x08, 0x00, 0x0F ; file 0085F8
db 0x05, 0x96 ; 0085FC: provisional 68k bclr.b d2, (a6)
db 0x01, 0x18 ; 0085FE: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008600: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008602: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 008606: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008608: provisional 68k btst.l d0, (a4)
db 0x00, 0x5C, 0x01, 0x00 ; 00860A: provisional 68k ori.w #$100, (a4)+
db 0x00, 0x0F ; file 00860E
db 0x05, 0x78, 0x01, 0x18 ; 008610: provisional 68k bchg.b d2, $118.w
db 0x01, 0x14 ; 008614: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008616: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 00861A: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00861C: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0B ; file 008620
db 0x01, 0x00 ; 008622: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 008624: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008626: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 008628: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00862C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00862E: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 008632: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008634: provisional 68k ori.b #$14, (a1)
db 0x00, 0x19, 0x01, 0x00 ; 008638: provisional 68k ori.b #$0, (a1)+
db 0x01, 0x18 ; 00863C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00863E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008640: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 008644: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008646: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1A, 0x01, 0x00 ; 00864A: provisional 68k ori.b #$0, (a2)+
db 0x01, 0x19 ; 00864E: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 008650: provisional 68k btst.l d0, (a4)
db 0x00, 0x63, 0x01, 0x00 ; 008652: provisional 68k ori.w #$100, -(a3)
db 0x01, 0x00 ; 008656: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 008658: provisional 68k ori.b #$4, d0
db 0x05, 0x92 ; 00865C: provisional 68k bclr.b d2, (a2)
db 0x00, 0x11, 0x01, 0x14 ; 00865E: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0B ; file 008662
db 0x01, 0x00 ; 008664: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 008666: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008668: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00866A: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00866E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 008670: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 008674: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 008676: provisional 68k ori.b #$4, d0
db 0x06, 0x08, 0x00, 0x0F, 0x06, 0x08 ; file 00867A
db 0x01, 0x18 ; 008680: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008682: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008684: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 008688: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00868A: provisional 68k btst.l d0, (a4)
db 0x00, 0x5D, 0x01, 0x00 ; 00868C: provisional 68k ori.w #$100, (a5)+
db 0x00, 0x0F ; file 008690
db 0x05, 0xE2 ; 008692: provisional 68k bset.b d2, -(a2)
db 0x01, 0x18 ; 008694: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008696: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008698: provisional 68k ori.b #$0, d1
db 0x01, 0x06 ; 00869C: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 00869E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0086A0: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0086A4: provisional 68k ori.b #$14, (a1)
db 0x00, 0x08 ; file 0086A8
db 0x01, 0x00 ; 0086AA: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 0086AC: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0086AE: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0086B0
db 0x01, 0x0D, 0x01, 0x18 ; 0086B2: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 0086B6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0086B8: provisional 68k ori.b #$0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 0086BC: provisional 68k movep.w $114(a6), d0
db 0x00, 0x01, 0x01, 0x00 ; 0086C0: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 0086C4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 0086C6: provisional 68k ori.b #$f, d0
db 0x06, 0x08 ; file 0086CA
db 0x01, 0x1E ; 0086CC: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0086CE: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 0086D0
db 0x01, 0x00 ; 0086D2: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 0086D4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0086D6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0086D8: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0086DC: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0A ; file 0086E0
db 0x01, 0x00 ; 0086E2: provisional 68k btst.l d0, d0
db 0x01, 0x1D ; 0086E4: provisional 68k btst.l d0, (a5)+
db 0x06, 0x34, 0x00, 0x00, 0x01, 0x00 ; 0086E6: provisional 68k addi.b #$0, (a4, d0.w)
db 0x00, 0x00, 0x00, 0x04 ; 0086EC: provisional 68k ori.b #$4, d0
db 0x04, 0x2C, 0x63, 0x31, 0x30, 0x00 ; 0086F0: provisional 68k subi.b #$31, $3000(a4)
db 0x63, 0x30 ; 0086F6: provisional 68k bls.b $8728
db 0x39, 0x00 ; 0086F8: provisional 68k move.w d0, -(a4)
db 0x63, 0x30 ; 0086FA: provisional 68k bls.b $872c
db 0x38, 0x00 ; 0086FC: provisional 68k move.w d0, d4
db 0x63, 0x30 ; 0086FE: provisional 68k bls.b $8730
db 0x37, 0x00 ; 008700: provisional 68k move.w d0, -(a3)
db 0x63, 0x30 ; 008702: provisional 68k bls.b $8734
db 0x36, 0x00 ; 008704: provisional 68k move.w d0, d3
db 0x63, 0x30 ; 008706: provisional 68k bls.b $8738
db 0x35, 0x00 ; 008708: provisional 68k move.w d0, -(a2)
db 0x63, 0x30 ; 00870A: provisional 68k bls.b $873c
db 0x34, 0x00 ; 00870C: provisional 68k move.w d0, d2
db 0x63, 0x30 ; 00870E: provisional 68k bls.b $8740
db 0x33, 0x00 ; 008710: provisional 68k move.w d0, -(a1)
db 0x63, 0x30 ; 008712: provisional 68k bls.b $8744
db 0x32, 0x00 ; 008714: provisional 68k move.w d0, d1
db 0x63, 0x30 ; 008716: provisional 68k bls.b $8748
db 0x31, 0x00 ; 008718: provisional 68k move.w d0, -(a0)
db 0x00, 0x0F ; file 00871A
db 0x06, 0x60, 0x01, 0x27 ; 00871C: provisional 68k addi.w #$127, -(a0)
db 0x01, 0x14 ; 008720: provisional 68k btst.l d0, (a4)
db 0x0C, 0x4A ; file 008722
db 0x01, 0x00 ; 008724: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 008726: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 008728: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00872A: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00872E: provisional 68k ori.b #$14, d7
db 0x00, 0x04, 0x01, 0x00 ; 008732: provisional 68k ori.b #$0, d4
db 0x01, 0x36, 0x01, 0x27, 0x01, 0x14, 0x0C, 0x42, 0x01, 0x00 ; 008736: provisional 68k btst.l d0, ([$114, a6], d0.w, $c420100)
db 0x01, 0x00 ; 008740: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008742: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 008744: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 008748: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00874A: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00874E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008750: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 008754: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 008758: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00875C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00875E: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008762: provisional 68k ori.b #$14, (a1)
db 0x00, 0x06, 0x01, 0x00 ; 008766: provisional 68k ori.b #$0, d6
db 0x01, 0x14 ; 00876A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00876C: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 008770: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 008774: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008776
db 0x01, 0x00 ; 008778: provisional 68k btst.l d0, d0
db 0x01, 0x1D ; 00877A: provisional 68k btst.l d0, (a5)+
db 0x0D, 0x90 ; 00877C: provisional 68k bclr.b d6, (a0)
db 0x00, 0x01, 0x01, 0x14 ; 00877E: provisional 68k ori.b #$14, d1
db 0x00, 0x05, 0x01, 0x00 ; 008782: provisional 68k ori.b #$0, d5
db 0x01, 0x00 ; 008786: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0B ; 008788: provisional 68k ori.b #$b, d0
db 0x0E, 0x1C ; file 00878C
db 0x00, 0x01, 0x01, 0x14 ; 00878E: provisional 68k ori.b #$14, d1
db 0x00, 0x01, 0x01, 0x00 ; 008792: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x49 ; 008796: provisional 68k ori.b #$49, d0
db 0x01, 0x1E ; 00879A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00879C: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 00879E: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 0087A2: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 0087A4: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0087A6: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 0087A8: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 0087AC: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 0087AE: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0087B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 0087B4: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 0087B8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0087BA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 0087BE: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 0087C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 0087C4
db 0x01, 0x00 ; 0087C6: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0087C8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0087CA: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x11 ; 0087CE: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0087D2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0087D4
db 0x01, 0x00 ; 0087D6: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0087D8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0087DA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x10 ; 0087DE: provisional 68k ori.b #$10, d0
db 0x0C, 0x3A ; 0087E2: provisional 68k dc.w $c3a
db 0x01, 0x13 ; 0087E4: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0087E6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0087E8: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0087EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 0087EE: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 0087F2: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 0087F4: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 0087F8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0087FA: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 0087FE: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 008800: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 008802: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 008806: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 00880A: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 00880C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00880E: provisional 68k ori.b #$f, d0
db 0x07, 0x4C, 0x01, 0x18 ; 008812: provisional 68k movep.l $118(a4), d3
db 0x01, 0x14 ; 008816: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008818: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00881C: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00881E: provisional 68k btst.l d0, (a4)
db 0x00, 0x66, 0x01, 0x00 ; 008820: provisional 68k ori.w #$100, -(a6)
db 0x00, 0x0B, 0x0E, 0x1C ; file 008824
db 0x00, 0x01, 0x01, 0x14 ; 008828: provisional 68k ori.b #$14, d1
db 0x00, 0x04, 0x01, 0x00 ; 00882C: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x0F ; 008830: provisional 68k ori.b #$f, d0
db 0x08, 0x84 ; file 008834
db 0x01, 0x1E ; 008836: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008838: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 00883A
db 0x01, 0x00 ; 00883C: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 00883E: provisional 68k btst.l d0, d6
db 0x01, 0x1E ; 008840: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008842: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008844
db 0x01, 0x00 ; 008846: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008848: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00884A: provisional 68k ori.b #$14, d7
db 0x00, 0x0B ; file 00884E
db 0x01, 0x00 ; 008850: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 008852: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008854: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 008856
db 0x01, 0x00 ; 008858: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00885A: provisional 68k movep.w $114(a6), d0
db 0x00, 0x01, 0x01, 0x00 ; 00885E: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x0F ; 008862: provisional 68k ori.b #$f, d0
db 0x08, 0x80 ; file 008866
db 0x01, 0x18 ; 008868: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00886A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 00886C
db 0x01, 0x00 ; 00886E: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 008870: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008872: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008874: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008878: provisional 68k ori.b #$14, (a1)
db 0x00, 0x09 ; file 00887C
db 0x01, 0x00 ; 00887E: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 008880: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008882: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 008884
db 0x01, 0x00 ; 008886: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008888: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x45 ; 00888A: provisional 68k ori.b #$45, d0
db 0x01, 0x1E ; 00888E: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008890: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008892
db 0x01, 0x00 ; 008894: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008896: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 008898: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00889A: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00889C: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 0088A0: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x4B ; 0088A2: provisional 68k ori.b #$4b, d0
db 0x01, 0x14 ; 0088A6: provisional 68k btst.l d0, (a4)
db 0x00, 0x44, 0x01, 0x00 ; 0088A8: provisional 68k ori.w #$100, d4
db 0x01, 0x14 ; 0088AC: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x0D ; 0088AE: provisional 68k ori.w #$10d, (a2)+
db 0x01, 0x40 ; 0088B2: provisional 68k bchg.b d0, d0
db 0x01, 0x1E ; 0088B4: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0088B6: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0088B8
db 0x01, 0x00 ; 0088BA: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0088BC: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0088BE: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0088C0: provisional 68k btst.l d0, (a4)
db 0x02, 0x8C ; file 0088C2
db 0x01, 0x0E, 0x01, 0x3D ; 0088C4: provisional 68k movep.w $13d(a6), d0
db 0x01, 0x1E ; 0088C8: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0088CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0088CC
db 0x01, 0x00 ; 0088CE: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0088D0: provisional 68k btst.l d0, d0
db 0x01, 0x0D, 0x01, 0x3F ; 0088D2: provisional 68k movep.w $13f(a5), d0
db 0x01, 0x1E ; 0088D6: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0088D8: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0088DA
db 0x01, 0x00 ; 0088DC: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0088DE: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0088E0: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0088E2: provisional 68k btst.l d0, (a4)
db 0x01, 0x7E ; file 0088E4
db 0x01, 0x0E, 0x01, 0x3E ; 0088E6: provisional 68k movep.w $13e(a6), d0
db 0x01, 0x1E ; 0088EA: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0088EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0088EE
db 0x01, 0x00 ; 0088F0: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0088F2: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 0088F4: provisional 68k movep.w $114(a6), d0
db 0x00, 0x02, 0x01, 0x00 ; 0088F8: provisional 68k ori.b #$0, d2
db 0x00, 0x00, 0x00, 0x4C ; 0088FC: provisional 68k ori.b #$4c, d0
db 0x01, 0x1E ; 008900: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008902: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008904
db 0x01, 0x00 ; 008906: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008908: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 00890A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00890C: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 00890E: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 008912: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 008914: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008916: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 008918: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 00891C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00891E: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 008922: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 008924: provisional 68k ori.b #$0, d5
db 0x01, 0x14 ; 008928: provisional 68k btst.l d0, (a4)
db 0x00, 0x58, 0x01, 0x0E ; 00892A: provisional 68k ori.w #$10e, (a0)+
db 0x01, 0x40 ; 00892E: provisional 68k bchg.b d0, d0
db 0x01, 0x1E ; 008930: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008932: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008934
db 0x01, 0x00 ; 008936: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008938: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00893A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00893C: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 008940: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 008942: provisional 68k ori.b #$0, d6
db 0x01, 0x3E ; file 008946
db 0x01, 0x1E ; 008948: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00894A: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00894C
db 0x01, 0x00 ; 00894E: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008950: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008952: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 008954: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 008958: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 00895A
db 0x01, 0x00 ; 00895C: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00895E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008960: provisional 68k ori.b #$0, d2
db 0x00, 0x00, 0x00, 0x04 ; 008964: provisional 68k ori.b #$4, d0
db 0x08, 0x94, 0x00, 0x07 ; 008968: provisional 68k bclr.b #$7, (a4)
db 0x01, 0x14 ; 00896C: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 00896E
db 0x01, 0x00 ; 008970: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008972: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008974: provisional 68k ori.b #$0, d2
db 0x00, 0x00, 0x00, 0x0F ; 008978: provisional 68k ori.b #$f, d0
db 0x0B, 0x84 ; 00897C: provisional 68k bclr.b d5, d4
db 0x01, 0x18 ; 00897E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008980: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008982: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 008986: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008988: provisional 68k btst.l d0, (a4)
db 0x00, 0x66, 0x01, 0x00 ; 00898A: provisional 68k ori.w #$100, -(a6)
db 0x00, 0x07, 0x01, 0x14 ; 00898E: provisional 68k ori.b #$14, d7
db 0x00, 0x0A ; file 008992
db 0x01, 0x00 ; 008994: provisional 68k btst.l d0, d0
db 0x01, 0x47 ; 008996: provisional 68k bchg.b d0, d7
db 0x01, 0x00 ; 008998: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00899A: provisional 68k ori.b #$f, d0
db 0x09, 0x1C ; 00899E: provisional 68k btst.l d4, (a4)+
db 0x01, 0x1E ; 0089A0: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0089A2: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 0089A4
db 0x01, 0x00 ; 0089A6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0089A8: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0089AA: provisional 68k ori.b #$14, (a1)
db 0x00, 0x17, 0x01, 0x00 ; 0089AE: provisional 68k ori.b #$0, (a7)
db 0x01, 0x1E ; 0089B2: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0089B4: provisional 68k btst.l d0, (a4)
db 0x00, 0x19, 0x01, 0x00 ; 0089B6: provisional 68k ori.b #$0, (a1)+
db 0x01, 0x00 ; 0089BA: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0089BC: provisional 68k ori.b #$14, (a1)
db 0x00, 0x18, 0x01, 0x00 ; 0089C0: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x1E ; 0089C4: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0089C6: provisional 68k btst.l d0, (a4)
db 0x00, 0x1A, 0x01, 0x00 ; 0089C8: provisional 68k ori.b #$0, (a2)+
db 0x01, 0x00 ; 0089CC: provisional 68k btst.l d0, d0
db 0x00, 0x49 ; file 0089CE
db 0x01, 0x1E ; 0089D0: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0089D2: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 0089D4: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 0089D8: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 0089DA: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0089DC: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 0089DE: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 0089E2: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0089E4: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0C ; file 0089E8
db 0x01, 0x00 ; 0089EA: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 0089EC: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0089EE: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0089F0: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0089F4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 0089F6: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 0089FA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0089FC: provisional 68k ori.b #$4, d0
db 0x09, 0xD8 ; 008A00: provisional 68k bset.b d4, (a0)+
db 0x00, 0x0F ; file 008A02
db 0x09, 0x4E, 0x01, 0x18 ; 008A04: provisional 68k movep.l $118(a6), d4
db 0x01, 0x14 ; 008A08: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 008A0A
db 0x01, 0x00 ; 008A0C: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 008A0E: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008A10: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008A12: provisional 68k ori.b #$0, d1
db 0x00, 0x11, 0x01, 0x14 ; 008A16: provisional 68k ori.b #$14, (a1)
db 0x00, 0x17, 0x01, 0x00 ; 008A1A: provisional 68k ori.b #$0, (a7)
db 0x01, 0x44 ; 008A1E: provisional 68k bchg.b d0, d4
db 0x01, 0x00 ; 008A20: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008A22: provisional 68k ori.b #$14, (a1)
db 0x00, 0x18, 0x01, 0x00 ; 008A26: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x45 ; 008A2A: provisional 68k bchg.b d0, d5
db 0x01, 0x00 ; 008A2C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 008A2E: provisional 68k ori.b #$4, d0
db 0x09, 0xD8 ; 008A32: provisional 68k bset.b d4, (a0)+
db 0x00, 0x0F ; file 008A34
db 0x09, 0x8E, 0x01, 0x18 ; 008A36: provisional 68k movep.w d4, $118(a6)
db 0x01, 0x14 ; 008A3A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 008A3C
db 0x01, 0x00 ; 008A3E: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 008A40: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008A42: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008A44: provisional 68k ori.b #$0, d2
db 0x00, 0x15, 0x01, 0x19 ; 008A48: provisional 68k ori.b #$19, (a5)
db 0x01, 0x14 ; 008A4C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008A4E: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 008A52: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008A54: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 008A56: provisional 68k ori.w #$100, (a2)+
db 0x01, 0x14 ; 008A5A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008A5C: provisional 68k ori.b #$0, d0
db 0x00, 0x18, 0x01, 0x14 ; 008A60: provisional 68k ori.b #$14, (a0)+
db 0x00, 0x00, 0x01, 0x00 ; 008A64: provisional 68k ori.b #$0, d0
db 0x00, 0x19, 0x0C, 0x52 ; 008A68: provisional 68k ori.b #$52, (a1)+
db 0x00, 0x00, 0x00, 0x00 ; 008A6C: provisional 68k ori.b #$0, d0
db 0x00, 0x04, 0x09, 0xD8 ; 008A70: provisional 68k ori.b #$d8, d4
db 0x00, 0x0F ; file 008A74
db 0x09, 0xD8 ; 008A76: provisional 68k bset.b d4, (a0)+
db 0x01, 0x1E ; 008A78: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008A7A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 008A7C
db 0x01, 0x00 ; 008A7E: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008A80: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008A82: provisional 68k ori.b #$14, (a1)
db 0x00, 0x17, 0x01, 0x00 ; 008A86: provisional 68k ori.b #$0, (a7)
db 0x01, 0x1E ; 008A8A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008A8C: provisional 68k btst.l d0, (a4)
db 0x00, 0x19, 0x01, 0x00 ; 008A8E: provisional 68k ori.b #$0, (a1)+
db 0x01, 0x00 ; 008A92: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008A94: provisional 68k ori.b #$14, (a1)
db 0x00, 0x18, 0x01, 0x00 ; 008A98: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x1E ; 008A9C: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008A9E: provisional 68k btst.l d0, (a4)
db 0x00, 0x1A, 0x01, 0x00 ; 008AA0: provisional 68k ori.b #$0, (a2)+
db 0x01, 0x00 ; 008AA4: provisional 68k btst.l d0, d0
db 0x00, 0x49 ; file 008AA6
db 0x01, 0x1E ; 008AA8: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008AAA: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 008AAC: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 008AB0: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 008AB2: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008AB4: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 008AB6: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 008ABA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x4C ; 008ABC: provisional 68k ori.b #$4c, d0
db 0x01, 0x1E ; 008AC0: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008AC2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008AC4
db 0x01, 0x00 ; 008AC6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008AC8: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 008ACA: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008ACC: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 008ACE: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 008AD2: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 008AD4: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008AD6: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 008AD8: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 008ADC: provisional 68k btst.l d0, d0
db 0x00, 0x2C, 0x01, 0x43, 0x01, 0x00 ; 008ADE: provisional 68k ori.b #$43, $100(a4)
db 0x00, 0x00, 0x00, 0x11 ; 008AE4: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 008AE8: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 008AEA: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 008AEE: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008AF0: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 008AF4: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 008AF8: provisional 68k ori.b #$0, d3
db 0x01, 0x33, 0x01, 0x14 ; 008AFC: provisional 68k btst.l d0, (a3, d0.w)
db 0x00, 0x03, 0x01, 0x00 ; 008B00: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 008B04: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008B06: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 008B0A: provisional 68k btst.l d0, (a4)
db 0x03, 0x00 ; 008B0C: provisional 68k btst.l d1, d0
db 0x01, 0x00 ; 008B0E: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 008B10: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008B12: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 008B14: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 008B18: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008B1A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008B1C: provisional 68k ori.b #$0, d0
db 0x01, 0x18 ; 008B20: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008B22: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 008B24: provisional 68k ori.b #$0, d5
db 0x01, 0x0D, 0x01, 0x1E ; 008B28: provisional 68k movep.w $11e(a5), d0
db 0x01, 0x14 ; 008B2C: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 008B2E: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 008B32: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008B34: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x00 ; 008B36: provisional 68k ori.l #$1000100, d0
db 0x00, 0x3C ; file 008B3C
db 0x01, 0x18 ; 008B3E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008B40: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008B42: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 008B46: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008B48: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008B4A: provisional 68k ori.b #$0, d1
db 0x00, 0x0F ; file 008B4E
db 0x0A, 0x98, 0x01, 0x27, 0x01, 0x14 ; 008B50: provisional 68k eori.l #$1270114, (a0)+
db 0x0C, 0x3A ; 008B56: provisional 68k dc.w $c3a
db 0x01, 0x00 ; 008B58: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 008B5A: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 008B5C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008B5E: provisional 68k ori.b #$0, d0
db 0x00, 0x32, 0x01, 0x18, 0x01, 0x14 ; 008B62: provisional 68k ori.b #$18, (a2, d0.w)
db 0x00, 0x04, 0x01, 0x00 ; 008B68: provisional 68k ori.b #$0, d4
db 0x01, 0x00 ; 008B6C: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 008B6E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008B70: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008B72: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 008B76: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 008B78: provisional 68k ori.b #$4, d0
db 0x0A, 0xAC, 0x00, 0x4F, 0x01, 0x18, 0x01, 0x14 ; 008B7C: provisional 68k eori.l #$4f0118, $114(a4)
db 0x00, 0x03, 0x01, 0x00 ; 008B84: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 008B88: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008B8A: provisional 68k btst.l d0, (a4)
db 0x11, 0x11 ; 008B8C: provisional 68k move.b (a1), -(a0)
db 0x01, 0x00 ; 008B8E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 008B90: provisional 68k ori.b #$f, d0
db 0x0B, 0x1E ; 008B94: provisional 68k btst.l d5, (a6)+
db 0x01, 0x18 ; 008B96: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008B98: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008B9A: provisional 68k ori.b #$0, d2
db 0x01, 0x06 ; 008B9E: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 008BA0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008BA2: provisional 68k ori.b #$0, d0
db 0x00, 0x26, 0x01, 0x14 ; 008BA6: provisional 68k ori.b #$14, -(a6)
db 0x00, 0x00, 0x01, 0x00 ; 008BAA: provisional 68k ori.b #$0, d0
db 0x01, 0x18 ; 008BAE: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008BB0: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008BB2: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 008BB6: provisional 68k btst.l d0, d0
db 0x00, 0x39, 0x01, 0x18, 0x01, 0x14, 0x00, 0x02 ; 008BB8: provisional 68k ori.b #$18, $1140002.l
db 0x01, 0x00 ; 008BC0: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008BC2: provisional 68k btst.l d0, d0
db 0x00, 0x22, 0x01, 0x14 ; 008BC4: provisional 68k ori.b #$14, -(a2)
db 0x00, 0x01, 0x01, 0x00 ; 008BC8: provisional 68k ori.b #$0, d1
db 0x01, 0x18 ; 008BCC: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008BCE: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008BD0: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 008BD4: provisional 68k btst.l d0, d0
db 0x00, 0x25, 0x01, 0x14 ; 008BD6: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 008BDA: provisional 68k ori.b #$0, d1
db 0x00, 0x46, 0x01, 0x1E ; 008BDE: provisional 68k ori.w #$11e, d6
db 0x01, 0x14 ; 008BE2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008BE4
db 0x01, 0x00 ; 008BE6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008BE8: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 008BEA: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008BEC: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008BEE: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 008BF2: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 008BF4: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008BF8: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 008BFC: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x04, 0x0B, 0x62 ; 008C00: provisional 68k ori.b #$62, d4
db 0x00, 0x22, 0x01, 0x14 ; 008C04: provisional 68k ori.b #$14, -(a2)
db 0x00, 0x01, 0x01, 0x00 ; 008C08: provisional 68k ori.b #$0, d1
db 0x01, 0x18 ; 008C0C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008C0E: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008C10: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 008C14: provisional 68k btst.l d0, d0
db 0x00, 0x25, 0x01, 0x14 ; 008C16: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 008C1A: provisional 68k ori.b #$0, d1
db 0x00, 0x46, 0x01, 0x1E ; 008C1E: provisional 68k ori.w #$11e, d6
db 0x01, 0x14 ; 008C22: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008C24
db 0x01, 0x00 ; 008C26: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008C28: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 008C2A: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008C2C: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008C2E: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 008C32: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 008C34: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008C38: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x17 ; 008C3C: provisional 68k ori.b #$17, -(a7)
db 0x01, 0x14 ; 008C40: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008C42: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 008C46: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 008C4A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008C4C: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 008C50: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008C52: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008C54: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 008C58: provisional 68k btst.l d0, d0
db 0x00, 0x08 ; file 008C5A
db 0x01, 0x14 ; 008C5C: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 008C5E: provisional 68k ori.b #$0, d4
db 0x01, 0x14 ; 008C62: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008C64: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 008C68: provisional 68k ori.b #$f, d0
db 0x0C, 0x36, 0x01, 0x18, 0x01, 0x14 ; 008C6C: provisional 68k cmpi.b #$18, (a6, d0.w)
db 0x00, 0x00, 0x01, 0x00 ; 008C72: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 008C76: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008C78: provisional 68k btst.l d0, (a4)
db 0x00, 0x64, 0x01, 0x00 ; 008C7A: provisional 68k ori.w #$100, -(a4)
db 0x00, 0x2D, 0x01, 0x18, 0x01, 0x14 ; 008C7E: provisional 68k ori.b #$18, $114(a5)
db 0x00, 0x09 ; file 008C84
db 0x01, 0x00 ; 008C86: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008C88: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 008C8A
db 0x0B, 0xD0 ; 008C8C: provisional 68k bset.b d5, (a0)
db 0x01, 0x18 ; 008C8E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008C90: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008C92: provisional 68k ori.b #$0, d2
db 0x01, 0x05 ; 008C96: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008C98: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008C9A: provisional 68k ori.b #$0, d0
db 0x00, 0x25, 0x01, 0x14 ; 008C9E: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 008CA2: provisional 68k ori.b #$0, d1
db 0x00, 0x24, 0x01, 0x14 ; 008CA6: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008CAA: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 008CAE: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x04, 0x0C, 0x16 ; 008CB2: provisional 68k ori.b #$16, d4
db 0x00, 0x25, 0x01, 0x14 ; 008CB6: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 008CBA: provisional 68k ori.b #$0, d1
db 0x00, 0x24, 0x01, 0x14 ; 008CBE: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008CC2: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 008CC6: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x26, 0x01, 0x14 ; 008CCA: provisional 68k ori.b #$14, -(a6)
db 0x00, 0x01, 0x01, 0x00 ; 008CCE: provisional 68k ori.b #$0, d1
db 0x01, 0x18 ; 008CD2: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008CD4: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008CD6: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 008CDA: provisional 68k btst.l d0, d0
db 0x00, 0x39, 0x01, 0x18, 0x01, 0x14, 0x00, 0x02 ; 008CDC: provisional 68k ori.b #$18, $1140002.l
db 0x01, 0x00 ; 008CE4: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008CE6: provisional 68k btst.l d0, d0
db 0x00, 0x25, 0x01, 0x14 ; 008CE8: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 008CEC: provisional 68k ori.b #$0, d1
db 0x00, 0x24, 0x01, 0x14 ; 008CF0: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008CF4: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 008CF8: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x11, 0x01, 0x14 ; 008CFC: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0A ; file 008D00
db 0x01, 0x00 ; 008D02: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008D04: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008D06: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 008D0A
db 0x01, 0x14 ; 008D0C: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 008D0E: provisional 68k ori.b #$0, d4
db 0x01, 0x14 ; 008D12: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 008D14: provisional 68k ori.b #$0, d2
db 0x00, 0x03, 0x00, 0x00 ; 008D18: provisional 68k ori.b #$0, d3
db 0x00, 0x04, 0x06, 0xFA ; 008D1C: provisional 68k ori.b #$fa, d4
db 0x71, 0x68, 0x79, 0x5F ; file 008D20
db 0x70, 0x69 ; 008D24: provisional 68k moveq #$69, d0
db 0x63, 0x00, 0x71, 0x68 ; 008D26: provisional 68k bls.w $fe90
db 0x79, 0x5F ; file 008D2A
db 0x70, 0x69 ; 008D2C: provisional 68k moveq #$69, d0
db 0x63, 0x00, 0x71, 0x68 ; 008D2E: provisional 68k bls.w $fe98
db 0x79, 0x5F ; file 008D32
db 0x70, 0x69 ; 008D34: provisional 68k moveq #$69, d0
db 0x63, 0x00, 0x00, 0x12 ; 008D36: provisional 68k bls.w $8d4a
db 0x01, 0x14 ; 008D3A: provisional 68k btst.l d0, (a4)
db 0x00, 0x19, 0x01, 0x00 ; 008D3C: provisional 68k ori.b #$0, (a1)+
db 0x00, 0x00, 0x00, 0x3E ; 008D40: provisional 68k ori.b #$3e, d0
db 0x01, 0x14 ; 008D44: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008D46: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 008D4A: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x14 ; 008D4C: provisional 68k ori.l #$1000114, d0
db 0x00, 0x0A ; file 008D52
db 0x01, 0x00 ; 008D54: provisional 68k btst.l d0, d0
db 0x00, 0x3E ; file 008D56
db 0x01, 0x14 ; 008D58: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008D5A: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 008D5E: provisional 68k btst.l d0, (a4)
db 0x00, 0x81, 0x01, 0x00, 0x01, 0x14 ; 008D60: provisional 68k ori.l #$1000114, d1
db 0x00, 0x0A ; file 008D66
db 0x01, 0x00 ; 008D68: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 008D6A: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008D6E: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 008D72: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x12, 0x01, 0x14 ; 008D76: provisional 68k ori.b #$14, (a2)
db 0x00, 0x04, 0x01, 0x00 ; 008D7A: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x3E ; 008D7E: provisional 68k ori.b #$3e, d0
db 0x01, 0x14 ; 008D82: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008D84: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 008D88: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x14 ; 008D8A: provisional 68k ori.l #$1000114, d0
db 0x00, 0x0A ; file 008D90
db 0x01, 0x00 ; 008D92: provisional 68k btst.l d0, d0
db 0x00, 0x3E ; file 008D94
db 0x01, 0x14 ; 008D96: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008D98: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 008D9C: provisional 68k btst.l d0, (a4)
db 0x00, 0x81, 0x01, 0x00, 0x01, 0x14 ; 008D9E: provisional 68k ori.l #$1000114, d1
db 0x00, 0x0A ; file 008DA4
db 0x01, 0x00 ; 008DA6: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 008DA8: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008DAC: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 008DB0: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x12, 0x01, 0x14 ; 008DB4: provisional 68k ori.b #$14, (a2)
db 0x00, 0x04, 0x01, 0x00 ; 008DB8: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x10 ; 008DBC: provisional 68k ori.b #$10, d0
db 0x0D, 0x90 ; 008DC0: provisional 68k bclr.b d6, (a0)
db 0x01, 0x0E, 0x01, 0x14 ; 008DC2: provisional 68k movep.w $114(a6), d0
db 0x00, 0x01, 0x01, 0x00 ; 008DC6: provisional 68k ori.b #$0, d1
db 0x00, 0x0F ; file 008DCA
db 0x0D, 0x8C, 0x01, 0x47 ; 008DCC: provisional 68k movep.w d6, $147(a4)
db 0x01, 0x05 ; 008DD0: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008DD2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008DD4: provisional 68k ori.b #$0, d1
db 0x00, 0x3E ; file 008DD8
db 0x01, 0x14 ; 008DDA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008DDC: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 008DE0: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x14 ; 008DE2: provisional 68k ori.l #$1000114, d0
db 0x00, 0x3F ; file 008DE8
db 0x01, 0x00 ; 008DEA: provisional 68k btst.l d0, d0
db 0x00, 0x3E ; file 008DEC
db 0x01, 0x14 ; 008DEE: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008DF0: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 008DF4: provisional 68k btst.l d0, (a4)
db 0x00, 0x81, 0x01, 0x00, 0x01, 0x14 ; 008DF6: provisional 68k ori.l #$1000114, d1
db 0x00, 0x3F ; file 008DFC
db 0x01, 0x00 ; 008DFE: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 008E00: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008E04: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 008E08: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x12, 0x01, 0x14 ; 008E0C: provisional 68k ori.b #$14, (a2)
db 0x00, 0x04, 0x01, 0x00 ; 008E10: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x3E ; 008E14: provisional 68k ori.b #$3e, d0
db 0x01, 0x14 ; 008E18: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008E1A: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 008E1E: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x14 ; 008E20: provisional 68k ori.l #$1000114, d0
db 0x00, 0x3F ; file 008E26
db 0x01, 0x00 ; 008E28: provisional 68k btst.l d0, d0
db 0x00, 0x3E ; file 008E2A
db 0x01, 0x14 ; 008E2C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008E2E: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 008E32: provisional 68k btst.l d0, (a4)
db 0x00, 0x81, 0x01, 0x00, 0x01, 0x14 ; 008E34: provisional 68k ori.l #$1000114, d1
db 0x00, 0x3F ; file 008E3A
db 0x01, 0x00 ; 008E3C: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 008E3E: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 008E42: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 008E46: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x12, 0x01, 0x14 ; 008E4A: provisional 68k ori.b #$14, (a2)
db 0x00, 0x04, 0x01, 0x00 ; 008E4E: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x15 ; 008E52: provisional 68k ori.b #$15, d0
db 0x01, 0x19 ; 008E56: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 008E58: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008E5A: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 008E5E: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008E60: provisional 68k btst.l d0, (a4)
db 0x00, 0x5D, 0x01, 0x00 ; 008E62: provisional 68k ori.w #$100, (a5)+
db 0x01, 0x14 ; 008E66: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008E68: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x03 ; 008E6C: provisional 68k ori.b #$3, d0
db 0x00, 0x00, 0x00, 0x04 ; 008E70: provisional 68k ori.b #$4, d0
db 0x0C, 0xD8 ; file 008E74
db 0x00, 0x10, 0x0E, 0x1C ; 008E76: provisional 68k ori.b #$1c, (a0)
db 0x01, 0x13 ; 008E7A: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008E7C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 008E7E: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 008E82: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 008E84: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 008E88: provisional 68k btst.l d0, d0
db 0x00, 0x12, 0x01, 0x1A ; 008E8A: provisional 68k ori.b #$1a, (a2)
db 0x01, 0x14 ; 008E8E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008E90: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 008E94: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 008E96: provisional 68k ori.b #$f, d0
db 0x0E, 0x18 ; file 008E9A
db 0x01, 0x1E ; 008E9C: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008E9E: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 008EA0: provisional 68k ori.b #$0, d7
db 0x01, 0x05 ; 008EA4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008EA6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008EA8: provisional 68k ori.b #$0, d0
db 0x00, 0x0F, 0x0E, 0x18 ; file 008EAC
db 0x01, 0x1E ; 008EB0: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008EB2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008EB4
db 0x01, 0x00 ; 008EB6: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 008EB8: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 008EBA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008EBC: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008EC0: provisional 68k ori.b #$14, (a1)
db 0x00, 0x06, 0x01, 0x00 ; 008EC4: provisional 68k ori.b #$0, d6
db 0x01, 0x1E ; 008EC8: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008ECA: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 008ECC: provisional 68k ori.b #$0, d6
db 0x01, 0x0D, 0x01, 0x14 ; 008ED0: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 008ED4: provisional 68k ori.b #$0, d1
db 0x00, 0x45, 0x01, 0x1E ; 008ED8: provisional 68k ori.w #$11e, d5
db 0x01, 0x14 ; 008EDC: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 008EDE
db 0x01, 0x00 ; 008EE0: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008EE2: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 008EE4: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 008EE6: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 008EE8: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 008EEC: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 008EEE: provisional 68k ori.b #$14, (a1)
db 0x00, 0x07, 0x01, 0x00 ; 008EF2: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 008EF6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008EF8: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x04 ; 008EFC: provisional 68k ori.b #$4, d0
db 0x0D, 0x90 ; 008F00: provisional 68k bclr.b d6, (a0)
db 0x00, 0x12, 0x01, 0x1A ; 008F02: provisional 68k ori.b #$1a, (a2)
db 0x01, 0x14 ; 008F06: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008F08: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 008F0C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x15 ; 008F0E: provisional 68k ori.b #$15, d0
db 0x01, 0x25 ; 008F12: provisional 68k btst.l d0, -(a5)
db 0x01, 0x24 ; 008F14: provisional 68k btst.l d0, -(a4)
db 0x01, 0x00 ; 008F16: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 008F18: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008F1A: provisional 68k btst.l d0, (a4)
db 0x00, 0x66, 0x01, 0x00 ; 008F1C: provisional 68k ori.w #$100, -(a6)
db 0x01, 0x14 ; 008F20: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008F22: provisional 68k ori.b #$0, d0
db 0x00, 0x03, 0x00, 0x00 ; 008F26: provisional 68k ori.b #$0, d3
db 0x00, 0x08 ; file 008F2A
db 0x01, 0x14 ; 008F2C: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008F2E: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 008F32: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008F34: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 008F36: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 008F3A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 008F3C: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 008F40: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 008F42: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 008F46: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008F48: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 008F4C: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008F4E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 008F50: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 008F54: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 008F56: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 008F5A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x10 ; 008F5C: provisional 68k ori.b #$10, d0
db 0x0F, 0xE6 ; 008F60: provisional 68k bset.b d7, -(a6)
db 0x01, 0x13 ; 008F62: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008F64: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 008F66: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 008F6A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 008F6C: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 008F70: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 008F72: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 008F76: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008F78: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 008F7C: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 008F7E: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 008F80: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 008F84: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 008F88: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 008F8A: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 008F8C
db 0x0F, 0x42 ; 008F8E: provisional 68k bchg.b d7, d2
db 0x01, 0x18 ; 008F90: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 008F92: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 008F94: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 008F98: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 008F9A: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 008F9C: provisional 68k ori.w #$100, (a2)+
db 0x00, 0x0F ; file 008FA0
db 0x0F, 0x2E, 0x01, 0x18 ; 008FA2: provisional 68k btst.l d7, $118(a6)
db 0x01, 0x14 ; 008FA6: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008FA8: provisional 68k ori.b #$0, d3
db 0x01, 0x05 ; 008FAC: provisional 68k btst.l d0, d5
db 0x01, 0x13 ; 008FAE: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008FB0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 008FB2: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 008FB6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 008FB8: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 008FBC: provisional 68k btst.l d0, d0
db 0x00, 0x20, 0x01, 0x18 ; 008FBE: provisional 68k ori.b #$18, -(a0)
db 0x01, 0x14 ; 008FC2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008FC4: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 008FC8: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 008FCA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 008FCC: provisional 68k ori.b #$0, d1
db 0x00, 0x08 ; file 008FD0
db 0x01, 0x14 ; 008FD2: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 008FD4: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 008FD8: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008FDA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 008FDC: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 008FE0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 008FE2: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 008FE6: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 008FE8: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 008FEC: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 008FF0: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 008FF2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 008FF4: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 008FF8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 008FFA: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 008FFE: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009000: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009004: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009008: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00900A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00900E: provisional 68k ori.b #$4, d0
db 0x0F, 0x42 ; 009012: provisional 68k bchg.b d7, d2
db 0x00, 0x07, 0x01, 0x14 ; 009014: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009018: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 00901C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00901E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009020: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009024: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009026: provisional 68k ori.b #$f, d0
db 0x0F, 0x66 ; 00902A: provisional 68k bchg.b d7, -(a6)
db 0x01, 0x18 ; 00902C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00902E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009030: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009034: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009036: provisional 68k btst.l d0, (a4)
db 0x00, 0x5B, 0x01, 0x00 ; 009038: provisional 68k ori.w #$100, (a3)+
db 0x00, 0x07, 0x01, 0x14 ; 00903C: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009040: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009044: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009046: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00904A: provisional 68k ori.b #$f, d0
db 0x0F, 0xE2 ; 00904E: provisional 68k bset.b d7, -(a2)
db 0x01, 0x18 ; 009050: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009052: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009054: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009058: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00905A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00905C
db 0x01, 0x00 ; 00905E: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009060: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 009064: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 009068: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00906A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00906C: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009070: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009072: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009076: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 009078
db 0x0F, 0xC8, 0x01, 0x18 ; 00907A: provisional 68k movep.l d7, $118(a0)
db 0x01, 0x14 ; 00907E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009080: provisional 68k ori.b #$0, d2
db 0x01, 0x06 ; 009084: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 009086: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009088: provisional 68k ori.b #$0, d0
db 0x00, 0x15, 0x01, 0x19 ; 00908C: provisional 68k ori.b #$19, (a5)
db 0x01, 0x14 ; 009090: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009092: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009096: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009098: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 00909A: provisional 68k ori.w #$100, (a2)+
db 0x01, 0x18 ; 00909E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0090A0: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0090A2: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0090A6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0090A8: provisional 68k ori.b #$4, d0
db 0x0F, 0xE2 ; 0090AC: provisional 68k bset.b d7, -(a2)
db 0x00, 0x08 ; file 0090AE
db 0x01, 0x14 ; 0090B0: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 0090B2: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 0090B6: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0090B8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0090BA: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0090BE: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 0090C0: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 0090C4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0090C6: provisional 68k ori.b #$4, d0
db 0x0E, 0x78 ; file 0090CA
db 0x00, 0x07, 0x01, 0x14 ; 0090CC: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 0090D0: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 0090D4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0090D6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 0090DA: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 0090DE: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 0090E0: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 0090E4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0090E6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 0090EA: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 0090EE: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 0090F0: provisional 68k ori.b #$0, d5
db 0x01, 0x14 ; 0090F4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0090F6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 0090FA: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 0090FE: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 009100
db 0x01, 0x00 ; 009102: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 009104: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009106: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009108: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00910C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 00910E: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009112: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009114: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009118: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00911A: provisional 68k ori.b #$0, d6
db 0x01, 0x13 ; 00911E: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009120: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009122: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009126: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009128: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00912C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x10 ; 00912E: provisional 68k ori.b #$10, d0
db 0x1C, 0xB0, 0x01, 0x13, 0x01, 0x14, 0x00, 0x01 ; 009132: provisional 68k move.b ([a0, d0.w], $1140001), (a6)
db 0x01, 0x05 ; 00913A: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00913C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00913E: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009142: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 009144: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 009148: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00914A: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 00914E: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 009150: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009152: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 009156: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 00915A: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 00915C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00915E: provisional 68k ori.b #$f, d0
db 0x10, 0xBC, 0x01, 0x18 ; 009162: provisional 68k move.b #$18, (a0)
db 0x01, 0x14 ; 009166: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009168: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00916C: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00916E: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 009170: provisional 68k ori.w #$100, (a2)+
db 0x00, 0x07, 0x01, 0x14 ; 009174: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 009178: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00917C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00917E: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x08 ; 009182: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 009186: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 009188
db 0x01, 0x00 ; 00918A: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00918C: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00918E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009190: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009194: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009196: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00919A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00919C: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 0091A0: provisional 68k move.b $f(a4), (a6)
db 0x13, 0xA0, 0x01, 0x18 ; 0091A4: provisional 68k move.b -(a0), (a1, d0.w)
db 0x01, 0x14 ; 0091A8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0091AA: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 0091AE: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0091B0: provisional 68k btst.l d0, (a4)
db 0x00, 0x5B, 0x01, 0x00 ; 0091B2: provisional 68k ori.w #$100, (a3)+
db 0x00, 0x0F ; file 0091B6
db 0x13, 0x9C, 0x01, 0x18 ; 0091B8: provisional 68k move.b (a4)+, (a1, d0.w)
db 0x01, 0x14 ; 0091BC: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 0091BE: provisional 68k ori.b #$0, d6
db 0x01, 0x05 ; 0091C2: provisional 68k btst.l d0, d5
db 0x01, 0x13 ; 0091C4: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0091C6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0091C8: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0091CC: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 0091CE: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 0091D2: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 0091D4
db 0x11, 0x1A ; 0091D6: provisional 68k move.b (a2)+, -(a0)
db 0x01, 0x18 ; 0091D8: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0091DA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0091DC: provisional 68k ori.b #$0, d2
db 0x01, 0x05 ; 0091E0: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0091E2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0091E4: provisional 68k ori.b #$0, d2
db 0x00, 0x07, 0x01, 0x14 ; 0091E8: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 0091EC: provisional 68k ori.b #$0, d2
db 0x01, 0x19 ; 0091F0: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 0091F2: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 0091F4
db 0x01, 0x00 ; 0091F6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0091F8: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0091FA: provisional 68k ori.b #$4, d0
db 0x11, 0x66, 0x00, 0x07 ; 0091FE: provisional 68k move.b -(a6), $7(a0)
db 0x01, 0x14 ; 009202: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009204: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 009208: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00920A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00920C: provisional 68k ori.b #$0, d2
db 0x01, 0x0D, 0x01, 0x14 ; 009210: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 009214: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x0F ; 009218: provisional 68k ori.b #$f, d0
db 0x11, 0x66, 0x01, 0x19 ; 00921C: provisional 68k move.b -(a6), $119(a0)
db 0x01, 0x14 ; 009220: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009222
db 0x01, 0x0D, 0x01, 0x18 ; 009224: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009228: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00922A: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00922E: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 009230: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009232: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009234: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009238: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00923C: provisional 68k ori.b #$0, d2
db 0x01, 0x19 ; 009240: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009242: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 009244
db 0x01, 0x00 ; 009246: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009248: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00924A: provisional 68k ori.b #$f, d0
db 0x11, 0xA8, 0x01, 0x19, 0x01, 0x14 ; 00924E: provisional 68k move.b $119(a0), (a0, d0.w)
db 0x00, 0x09 ; file 009254
db 0x01, 0x0D, 0x01, 0x18 ; 009256: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00925A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00925C: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009260: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 009262: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009264: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009266: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00926A
db 0x01, 0x14 ; 00926C: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00926E
db 0x01, 0x0D, 0x01, 0x18 ; 009270: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009274: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009276: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00927A: provisional 68k btst.l d0, d0
db 0x01, 0x19 ; 00927C: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00927E: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009280
db 0x01, 0x0D, 0x01, 0x14 ; 009282: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009286: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00928A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00928C: provisional 68k ori.b #$f, d0
db 0x11, 0xE0, 0x01, 0x19 ; 009290: provisional 68k move.b -(a0), $119.w
db 0x01, 0x14 ; 009294: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009296
db 0x01, 0x0D, 0x01, 0x18 ; 009298: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00929C: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00929E: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0092A2: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 0092A4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0092A6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0092A8: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 0092AC
db 0x01, 0x14 ; 0092AE: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0092B0
db 0x01, 0x0D, 0x01, 0x18 ; 0092B2: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 0092B6: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0092B8: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0092BC: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0092BE: provisional 68k btst.l d0, (a4)
db 0x00, 0x38, 0x01, 0x00, 0x00, 0x00 ; 0092C0: provisional 68k ori.b #$0, $0.w
db 0x00, 0x0F, 0x12, 0x40 ; file 0092C6
db 0x01, 0x19 ; 0092CA: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 0092CC: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0092CE
db 0x01, 0x0D, 0x01, 0x18 ; 0092D0: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 0092D4: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0092D6: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0092DA: provisional 68k btst.l d0, d0
db 0x01, 0x08, 0x01, 0x14 ; 0092DC: provisional 68k movep.w $114(a0), d0
db 0x01, 0xFF ; file 0092E0
db 0x01, 0x00 ; 0092E2: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0092E4: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 0092E8: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 0092EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0092EE: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 0092F2: provisional 68k btst.l d0, (a4)
db 0x61, 0x30 ; 0092F4: provisional 68k bsr.b $9326
db 0x01, 0x0E, 0x01, 0x14 ; 0092F6: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 0092FA: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 009300: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009302: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 009306: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009308: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00930A
db 0x01, 0x0D, 0x01, 0x18 ; 00930C: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009310: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009312: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009316: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 009318: provisional 68k movep.w $114(a6), d0
db 0x02, 0x00, 0x01, 0x00 ; 00931C: provisional 68k andi.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009320: provisional 68k ori.b #$4, d0
db 0x12, 0xD2 ; 009324: provisional 68k move.b (a2), (a1)+
