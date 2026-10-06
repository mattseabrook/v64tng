; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 000346–00A1A5, inclusive.
cdi_nodv_entry_000346:
db 0x4E, 0xAE, 0xD1, 0x16 ; 000346: provisional 68k jsr -$2eea(a6)
db 0x4E, 0x75 ; 00034A: provisional 68k rts 
db 0x02, 0x58, 0x00, 0x77 ; 00034C: provisional 68k andi.w #$77, (a0)+
db 0x85, 0x00 ; 000350: provisional 68k sbcd.b d0, d2
db 0x06, 0x03, 0xFF, 0xFF ; 000352: provisional 68k addi.b #$ff, d3
db 0xFC, 0x00 ; 000356: provisional 68k dc.w $fc00
db 0x3F, 0xC6 ; file 000358
db 0x00, 0x06, 0xF0, 0x03 ; 00035A: provisional 68k ori.b #$3, d6
db 0xF0, 0x3F ; 00035E: provisional 68k dc.w $f03f
db 0xFF, 0xC0 ; 000360: provisional 68k dc.w $ffc0
db 0xC5, 0x00 ; 000362: provisional 68k abcd.b d0, d2
db 0x05, 0x0C, 0xFF, 0x3F ; 000364: provisional 68k movep.w -$c1(a4), d2
db 0xFF, 0xFF ; 000368: provisional 68k dc.w $ffff
db 0xC6, 0x00 ; 00036A: provisional 68k and.b d0, d3
db 0x05, 0x0F, 0xFC, 0xFC ; 00036C: provisional 68k movep.w -$304(a7), d2
db 0x00, 0x3F ; file 000370
db 0xC6, 0x00 ; 000372: provisional 68k and.b d0, d3
db 0x05, 0x03 ; 000374: provisional 68k btst.l d2, d3
db 0xFF, 0x00 ; 000376: provisional 68k dc.w $ff00
db 0x00, 0x3C ; file 000378
db 0xC7, 0x00 ; 00037A: provisional 68k abcd.b d0, d3
db 0x04, 0xFF ; file 00037C
db 0x00, 0x00, 0x3C, 0xC7 ; 00037E: provisional 68k ori.b #$c7, d0
db 0x00, 0x04, 0xFF, 0xC0 ; 000382: provisional 68k ori.b #$c0, d4
db 0x00, 0xF0 ; file 000386
db 0xC7, 0x00 ; 000388: provisional 68k abcd.b d0, d3
db 0x04, 0x3F ; file 00038A
db 0xF0, 0x00 ; 00038C: provisional 68k dc.w $f000
db 0xC0, 0x8B ; file 00038E
db 0x00, 0x02, 0xFF, 0xC0 ; 000390: provisional 68k ori.b #$c0, d2
db 0x95, 0x00 ; 000394: provisional 68k subx.b d0, d2
db 0x02, 0x03, 0xFC, 0x88 ; 000396: provisional 68k andi.b #$88, d3
db 0x00, 0x02, 0x0F, 0xFC ; 00039A: provisional 68k ori.b #$fc, d2
db 0x99, 0x00 ; 00039E: provisional 68k subx.b d0, d4
db 0x03, 0x0F, 0xF0, 0x03 ; 0003A0: provisional 68k movep.w -$ffd(a7), d1
db 0x8C, 0x00 ; 0003A4: provisional 68k or.b d0, d6
db 0x03, 0x3F ; file 0003A6
db 0xC0, 0xFC, 0x94, 0x00 ; 0003A8: provisional 68k mulu.w #$9400, d0
db 0x02, 0x03, 0xFC, 0x88 ; 0003AC: provisional 68k andi.b #$88, d3
db 0x00, 0x07, 0x03, 0xFC ; 0003B0: provisional 68k ori.b #$fc, d7
db 0x0F, 0xC0 ; 0003B4: provisional 68k bset.b d7, d0
db 0x00, 0x00, 0x03, 0x94 ; 0003B6: provisional 68k ori.b #$94, d0
db 0x00, 0x03, 0x03, 0xFC ; 0003BA: provisional 68k ori.b #$fc, d3
db 0x0C, 0x8C ; file 0003BE
db 0x00, 0x03, 0x0F, 0xC0 ; 0003C0: provisional 68k ori.b #$c0, d3
db 0xFC, 0x95 ; 0003C4: provisional 68k dc.w $fc95
db 0x00, 0x01, 0xFC, 0x89 ; 0003C6: provisional 68k ori.b #$89, d1
db 0x00, 0x06, 0xFC, 0x0F ; 0003CA: provisional 68k ori.b #$f, d6
db 0xC0, 0x00 ; 0003CE: provisional 68k and.b d0, d0
db 0x00, 0x3F ; file 0003D0
db 0x94, 0x00 ; 0003D2: provisional 68k sub.b d0, d2
db 0x03, 0x03 ; 0003D4: provisional 68k btst.l d1, d3
db 0xFF, 0x30 ; 0003D6: provisional 68k dc.w $ff30
db 0x8C, 0x00 ; 0003D8: provisional 68k or.b d0, d6
db 0x02, 0x0F ; file 0003DA
db 0xC0, 0x96 ; 0003DC: provisional 68k and.l (a6), d0
db 0x00, 0x01, 0xFC, 0x89 ; 0003DE: provisional 68k ori.b #$89, d1
db 0x00, 0x01, 0xFC, 0x84 ; 0003E2: provisional 68k ori.b #$84, d1
db 0x00, 0x01, 0xFF, 0x95 ; 0003E6: provisional 68k ori.b #$95, d1
db 0x00, 0x3A ; file 0003EA
db 0xFF, 0xC0 ; 0003EC: provisional 68k dc.w $ffc0
db 0x03, 0xFF, 0xC0, 0xFF, 0x03, 0xFF, 0x3F, 0xF3 ; file 0003EE
db 0xF0, 0x00 ; 0003F6: provisional 68k dc.w $f000
db 0x00, 0xFF ; file 0003F8
db 0xCF, 0xC3 ; 0003FA: provisional 68k muls.w d3, d7
db 0xFF, 0x03 ; 0003FC: provisional 68k dc.w $ff03
db 0xFF, 0xFF ; 0003FE: provisional 68k dc.w $ffff
db 0x00, 0x0F ; file 000400
db 0xF0, 0x00 ; 000402: provisional 68k dc.w $f000
db 0x03, 0xFF ; file 000404
db 0x0F, 0xC0 ; 000406: provisional 68k bset.b d7, d0
db 0x3F, 0x00 ; 000408: provisional 68k move.w d0, -(a7)
db 0xFF, 0xFF ; 00040A: provisional 68k dc.w $ffff
db 0xC3, 0xFF ; file 00040C
db 0xF3, 0xFC ; 00040E: provisional 68k dc.w $f3fc
db 0x00, 0x00, 0xFF, 0xFF ; 000410: provisional 68k ori.b #$ff, d0
db 0xC0, 0x00 ; 000414: provisional 68k and.b d0, d0
db 0xFF, 0xF0 ; 000416: provisional 68k dc.w $fff0
db 0x00, 0x00, 0x0F, 0xFC ; 000418: provisional 68k ori.b #$fc, d0
db 0xFC, 0x3F ; 00041C: provisional 68k dc.w $fc3f
db 0xF3, 0xFF ; 00041E: provisional 68k dc.w $f3ff
db 0x3F, 0x3F, 0x03, 0xFF ; file 000420
db 0xF3, 0xFC ; 000424: provisional 68k dc.w $f3fc
db 0x91, 0x00 ; 000426: provisional 68k subx.b d0, d0
db 0x21, 0x3F, 0xC0, 0x0F, 0x00, 0xF0 ; file 000428
db 0x3F, 0x03 ; 00042E: provisional 68k move.w d3, -(a7)
db 0xFF, 0x0F ; 000430: provisional 68k dc.w $ff0f
db 0xCF, 0xFC, 0x00, 0x03 ; 000432: provisional 68k muls.w #$3, d7
db 0xC0, 0x3F ; file 000436
db 0xC0, 0xFC, 0x0F, 0xC0 ; 000438: provisional 68k mulu.w #$fc0, d0
db 0x0F, 0x00 ; 00043C: provisional 68k btst.l d7, d0
db 0xF0, 0x3C ; 00043E: provisional 68k dc.w $f03c
db 0x00, 0x00, 0xFC, 0xFF ; 000440: provisional 68k ori.b #$ff, d0
db 0xF3, 0xFF ; 000444: provisional 68k dc.w $f3ff
db 0xC3, 0xF0, 0x0F, 0xC0 ; 000446: provisional 68k muls.w (invalid.w), d1
db 0x83, 0xFC, 0x82, 0x00 ; 00044A: provisional 68k divs.w #$8200, d1
db 0x10, 0xFF ; file 00044E
db 0xC3, 0xF0, 0x03, 0x00 ; 000450: provisional 68k muls.w (a0, d0.w * 2), d1
db 0xFC, 0x00 ; 000454: provisional 68k dc.w $fc00
db 0x00, 0x3C, 0x03, 0xFC ; file 000456
db 0x0F, 0xC0 ; 00045A: provisional 68k bset.b d7, d0
db 0xFC, 0xFF ; 00045C: provisional 68k dc.w $fcff
db 0xFF, 0x84 ; 00045E: provisional 68k dc.w $ff84
db 0xFC, 0x91 ; 000460: provisional 68k dc.w $fc91
db 0x00, 0x33, 0x3F, 0xC0, 0x3C, 0x00 ; 000462: provisional 68k ori.b #$c0, (a3, d3.l * 4)
db 0x3C, 0x3F, 0x00, 0xFC, 0x0F, 0xFF ; file 000468
db 0xFC, 0x00 ; 00046E: provisional 68k dc.w $fc00
db 0x0F, 0xC0 ; 000470: provisional 68k bset.b d7, d0
db 0x0F, 0xC0 ; 000472: provisional 68k bset.b d7, d0
db 0xFC, 0x0F ; 000474: provisional 68k dc.w $fc0f
db 0xF0, 0x00 ; 000476: provisional 68k dc.w $f000
db 0x03, 0xC0 ; 000478: provisional 68k bset.b d1, d0
db 0x3C, 0x00 ; 00047A: provisional 68k move.w d0, d6
db 0x00, 0xFF, 0x03, 0xFC ; file 00047C
db 0x0F, 0xC3 ; 000480: provisional 68k bset.b d7, d3
db 0xF0, 0x03 ; 000482: provisional 68k dc.w $f003
db 0xF0, 0xFF ; 000484: provisional 68k dc.w $f0ff
db 0xF0, 0xF0 ; 000486: provisional 68k dc.w $f0f0
db 0x00, 0x00, 0xFC, 0x00 ; 000488: provisional 68k ori.b #$0, d0
db 0xFC, 0x0C ; 00048C: provisional 68k dc.w $fc0c
db 0x00, 0xFC ; file 00048E
db 0x00, 0x00, 0xFC, 0x00 ; 000490: provisional 68k ori.b #$0, d0
db 0xFC, 0x0F ; 000494: provisional 68k dc.w $fc0f
db 0xC0, 0x83 ; 000496: provisional 68k and.l d3, d0
db 0xFF, 0x04 ; 000498: provisional 68k dc.w $ff04
db 0x3C, 0xFF ; file 00049A
db 0xF0, 0xF0 ; 00049C: provisional 68k dc.w $f0f0
db 0x91, 0x00 ; 00049E: provisional 68k subx.b d0, d0
db 0x3A, 0x3F ; file 0004A0
db 0xC0, 0xFC, 0x00, 0x3C ; 0004A2: provisional 68k mulu.w #$3c, d0
db 0x3F, 0x00 ; 0004A6: provisional 68k move.w d0, -(a7)
db 0xFC, 0x0F ; 0004A8: provisional 68k dc.w $fc0f
db 0xC0, 0xFC, 0x00, 0x0F ; 0004AA: provisional 68k mulu.w #$f, d0
db 0x00, 0x0F ; file 0004AE
db 0xC0, 0xFC, 0x00, 0xFF ; 0004B0: provisional 68k mulu.w #$ff, d0
db 0x00, 0x03, 0x03, 0xFC ; 0004B4: provisional 68k ori.b #$fc, d3
db 0x00, 0x00, 0xFC, 0x03 ; 0004B8: provisional 68k ori.b #$3, d0
db 0xF0, 0x0F ; 0004BC: provisional 68k dc.w $f00f
db 0xC0, 0xFF ; file 0004BE
db 0xF3, 0xF0 ; 0004C0: provisional 68k dc.w $f3f0
db 0x3F, 0x00 ; 0004C2: provisional 68k move.w d0, -(a7)
db 0xF0, 0x00 ; 0004C4: provisional 68k dc.w $f000
db 0x00, 0xFC, 0x00, 0x3C ; file 0004C6
db 0x0C, 0x03, 0xF0, 0x00 ; 0004CA: provisional 68k cmpi.b #$0, d3
db 0x00, 0xF0, 0x00, 0xFC ; file 0004CE
db 0x0F, 0xC0 ; 0004D2: provisional 68k bset.b d7, d0
db 0xFC, 0x0F ; 0004D4: provisional 68k dc.w $fc0f
db 0xFF, 0x3C ; 0004D6: provisional 68k dc.w $ff3c
db 0x3F, 0x00 ; 0004D8: provisional 68k move.w d0, -(a7)
db 0xF0, 0x91 ; 0004DA: provisional 68k dc.w $f091
db 0x00, 0x3A, 0x3F, 0xC0 ; file 0004DC
db 0xFC, 0x00 ; 0004E0: provisional 68k dc.w $fc00
db 0x3F, 0x3F, 0x00, 0xFC ; file 0004E2
db 0x0F, 0xC3 ; 0004E6: provisional 68k bset.b d7, d3
db 0xF0, 0x00 ; 0004E8: provisional 68k dc.w $f000
db 0x3F, 0x00 ; 0004EA: provisional 68k move.w d0, -(a7)
db 0x0F, 0xC0 ; 0004EC: provisional 68k bset.b d7, d0
db 0xFC, 0x00 ; 0004EE: provisional 68k dc.w $fc00
db 0x3F, 0xF0 ; file 0004F0
db 0x0F, 0x00 ; 0004F2: provisional 68k btst.l d7, d0
db 0xF0, 0x00 ; 0004F4: provisional 68k dc.w $f000
db 0x00, 0xFC ; file 0004F6
db 0x03, 0xF0, 0x0F, 0xC0 ; 0004F8: provisional 68k bset.b d1, (invalid.w)
db 0x03, 0xC3 ; 0004FC: provisional 68k bset.b d1, d3
db 0xF0, 0x3F ; 0004FE: provisional 68k dc.w $f03f
db 0x00, 0xC0 ; file 000500
db 0x00, 0x00, 0xFC, 0x00 ; 000502: provisional 68k ori.b #$0, d0
db 0x3F, 0x3C, 0x0F, 0x00 ; 000506: provisional 68k move.w #$f00, -(a7)
db 0x00, 0x03, 0xF0, 0x00 ; 00050A: provisional 68k ori.b #$0, d3
db 0xFC, 0x0F ; 00050E: provisional 68k dc.w $fc0f
db 0xC0, 0xFC, 0x3F, 0x3F ; 000510: provisional 68k mulu.w #$3f3f, d0
db 0x0C, 0x3F, 0x00, 0xC0 ; file 000514
db 0x91, 0x00 ; 000518: provisional 68k subx.b d0, d0
db 0x15, 0x3F ; file 00051A
db 0xC0, 0xFC, 0x00, 0x3F ; 00051C: provisional 68k mulu.w #$3f, d0
db 0x3F, 0x00 ; 000520: provisional 68k move.w d0, -(a7)
db 0xFC, 0x0F ; 000522: provisional 68k dc.w $fc0f
db 0xC3, 0xC0 ; 000524: provisional 68k muls.w d0, d1
db 0x00, 0x3F, 0x00, 0x0F ; file 000526
db 0xC0, 0xFC, 0x00, 0x03 ; 00052A: provisional 68k mulu.w #$3, d0
db 0xFC, 0x0F ; 00052E: provisional 68k dc.w $fc0f
db 0x84, 0x00 ; 000530: provisional 68k or.b d0, d2
db 0x21, 0xFC, 0x03, 0xF0, 0x0F, 0xC0, 0x0F, 0x03 ; 000532: provisional 68k move.l #$3f00fc0, $f03.w
db 0xF0, 0x0F ; 00053A: provisional 68k dc.w $f00f
db 0xC3, 0xC0 ; 00053C: provisional 68k muls.w d0, d1
db 0x00, 0x00, 0xFC, 0x00 ; 00053E: provisional 68k ori.b #$0, d0
db 0x3F, 0x3C, 0x3C, 0x00 ; 000542: provisional 68k move.w #$3c00, -(a7)
db 0x00, 0x03, 0xF0, 0x00 ; 000546: provisional 68k ori.b #$0, d3
db 0xFC, 0x0F ; 00054A: provisional 68k dc.w $fc0f
db 0xC0, 0xFC, 0x3C, 0x3F ; 00054C: provisional 68k mulu.w #$3c3f, d0
db 0x00, 0x0F ; file 000550
db 0xC3, 0xC0 ; 000552: provisional 68k muls.w d0, d1
db 0x91, 0x00 ; 000554: provisional 68k subx.b d0, d0
db 0x15, 0x3F ; file 000556
db 0xC0, 0xFC, 0x00, 0x3F ; 000558: provisional 68k mulu.w #$3f, d0
db 0x3F, 0x00 ; 00055C: provisional 68k move.w d0, -(a7)
db 0xFC, 0x0F ; 00055E: provisional 68k dc.w $fc0f
db 0xC0, 0x00 ; 000560: provisional 68k and.b d0, d0
db 0x00, 0x3F, 0x00, 0x0F ; file 000562
db 0xC0, 0xFC, 0x03, 0x00 ; 000566: provisional 68k mulu.w #$300, d0
db 0x3F, 0x0F ; 00056A: provisional 68k move.w a7, -(a7)
db 0x84, 0x00 ; 00056C: provisional 68k or.b d0, d2
db 0x0A, 0xFC ; file 00056E
db 0x03, 0xF0, 0x0F, 0xC0 ; 000570: provisional 68k bset.b d1, (invalid.w)
db 0xF0, 0x03 ; 000574: provisional 68k dc.w $f003
db 0xF0, 0x0F ; 000576: provisional 68k dc.w $f00f
db 0xC3, 0x83 ; file 000578
db 0x00, 0x13, 0xFC, 0x00 ; 00057A: provisional 68k ori.b #$0, (a3)
db 0x3F, 0x3C, 0xC0, 0x00 ; 00057E: provisional 68k move.w #$c000, -(a7)
db 0x00, 0x03, 0xF0, 0x00 ; 000582: provisional 68k ori.b #$0, d3
db 0xFC, 0x0F ; 000586: provisional 68k dc.w $fc0f
db 0xC0, 0xFC, 0x00, 0x3F ; 000588: provisional 68k mulu.w #$3f, d0
db 0x00, 0x0F ; file 00058C
db 0xC3, 0x92 ; 00058E: provisional 68k and.l d1, (a2)
db 0x00, 0x23, 0x3F, 0xC0 ; 000590: provisional 68k ori.b #$c0, -(a3)
db 0xFF, 0x00 ; 000594: provisional 68k dc.w $ff00
db 0xFF, 0x3F ; 000596: provisional 68k dc.w $ff3f
db 0x00, 0xFC ; file 000598
db 0x0F, 0xC0 ; 00059A: provisional 68k bset.b d7, d0
db 0x00, 0x00, 0x3F, 0x00 ; 00059C: provisional 68k ori.b #$0, d0
db 0x0F, 0xC0 ; 0005A0: provisional 68k bset.b d7, d0
db 0xFC, 0x03 ; 0005A2: provisional 68k dc.w $fc03
db 0xC0, 0x3F ; file 0005A4
db 0x0F, 0x00 ; 0005A6: provisional 68k btst.l d7, d0
db 0x0C, 0x00, 0x00, 0xFC ; 0005A8: provisional 68k cmpi.b #$fc, d0
db 0x03, 0xF0, 0x0F, 0xC3, 0xF0, 0x03, 0xF0, 0x03 ; 0005AC: provisional 68k bset.b d1, ([], $f003f003)
db 0xFF, 0x83 ; 0005B4: provisional 68k dc.w $ff83
db 0x00, 0x13, 0xFC, 0x00 ; 0005B6: provisional 68k ori.b #$0, (a3)
db 0x3F, 0x3F ; file 0005BA
db 0xC0, 0x30, 0x00, 0x03 ; 0005BC: provisional 68k and.b $3(a0, d0.w), d0
db 0xF0, 0x00 ; 0005C0: provisional 68k dc.w $f000
db 0xFC, 0x0F ; 0005C2: provisional 68k dc.w $fc0f
db 0xC0, 0xFC, 0x00, 0x3F ; 0005C4: provisional 68k mulu.w #$3f, d0
db 0x00, 0x03, 0xFF, 0x92 ; 0005C8: provisional 68k ori.b #$92, d3
db 0x00, 0x23, 0xFF, 0xF0 ; 0005CC: provisional 68k ori.b #$f0, -(a3)
db 0x3F, 0xFF ; file 0005D0
db 0xFC, 0x3F ; 0005D2: provisional 68k dc.w $fc3f
db 0x00, 0xFC ; file 0005D4
db 0x0F, 0xC0 ; 0005D6: provisional 68k bset.b d7, d0
db 0x00, 0x00, 0x3F, 0xC0 ; 0005D8: provisional 68k ori.b #$c0, d0
db 0x0F, 0xC0 ; 0005DC: provisional 68k bset.b d7, d0
db 0xFC, 0x0F ; 0005DE: provisional 68k dc.w $fc0f
db 0xC0, 0x3F ; file 0005E0
db 0x0F, 0xF0, 0x0F, 0x00 ; 0005E2: provisional 68k bset.b d7, (a0, d0.l * 8)
db 0x00, 0xFC ; file 0005E6
db 0x03, 0xF0, 0x0F, 0xC3, 0xF0, 0x03, 0xF0, 0x03 ; 0005E8: provisional 68k bset.b d1, ([], $f003f003)
db 0xFF, 0x83 ; 0005F0: provisional 68k dc.w $ff83
db 0x00, 0x13, 0xFC, 0x00 ; 0005F2: provisional 68k ori.b #$0, (a3)
db 0xFF, 0x3F ; 0005F6: provisional 68k dc.w $ff3f
db 0xC0, 0x3C, 0x00, 0x03 ; 0005F8: provisional 68k and.b #$3, d0
db 0xFC, 0x00 ; 0005FC: provisional 68k dc.w $fc00
db 0xFC, 0x0F ; 0005FE: provisional 68k dc.w $fc0f
db 0xC0, 0xFC, 0x00, 0x3F ; 000600: provisional 68k mulu.w #$3f, d0
db 0x00, 0x03, 0xFF, 0x91 ; 000604: provisional 68k ori.b #$91, d3
db 0x00, 0x24, 0x03, 0xFF ; 000608: provisional 68k ori.b #$ff, -(a4)
db 0xFC, 0x3F ; 00060C: provisional 68k dc.w $fc3f
db 0xFF, 0xFC ; 00060E: provisional 68k dc.w $fffc
db 0x3F, 0xFF ; file 000610
db 0xFC, 0x0F ; 000612: provisional 68k dc.w $fc0f
db 0xC0, 0x00 ; 000614: provisional 68k and.b d0, d0
db 0x00, 0x0F ; file 000616
db 0xFF, 0xFF ; 000618: provisional 68k dc.w $ffff
db 0xC0, 0xFC, 0x0F, 0xFF ; 00061A: provisional 68k mulu.w #$fff, d0
db 0xFF, 0x03 ; 00061E: provisional 68k dc.w $ff03
db 0xFF, 0xFF ; 000620: provisional 68k dc.w $ffff
db 0x00, 0x00, 0xFC, 0x03 ; 000622: provisional 68k ori.b #$3, d0
db 0xF0, 0x0F ; 000626: provisional 68k dc.w $f00f
db 0xC3, 0xFF ; file 000628
db 0xFF, 0xF0 ; 00062A: provisional 68k dc.w $fff0
db 0x00, 0xFC ; file 00062C
db 0x83, 0x00 ; 00062E: provisional 68k sbcd.b d0, d1
db 0x82, 0xFF ; file 000630
db 0x13, 0xFC, 0x0F, 0xFF, 0xFC, 0x00, 0x00, 0xFF ; 000632: provisional 68k move.b #$ff, $fc0000ff.l
db 0xFF, 0xFC ; 00063A: provisional 68k dc.w $fffc
db 0x0F, 0xC0 ; 00063C: provisional 68k bset.b d7, d0
db 0xFC, 0x00 ; 00063E: provisional 68k dc.w $fc00
db 0x3F, 0x00 ; 000640: provisional 68k move.w d0, -(a7)
db 0x00, 0xFC ; file 000642
db 0x00, 0x30, 0x8F, 0x00, 0x24, 0x0F ; 000644: provisional 68k ori.b #$0, $f(a0, d2.w)
db 0xFF, 0xFF ; 00064A: provisional 68k dc.w $ffff
db 0x0F, 0xFF ; file 00064C
db 0xF0, 0x0F ; 00064E: provisional 68k dc.w $f00f
db 0xFC, 0xFC ; 000650: provisional 68k dc.w $fcfc
db 0x3F, 0xFC ; file 000652
db 0x00, 0x00, 0x03, 0xFF ; 000654: provisional 68k ori.b #$ff, d0
db 0xFF, 0xC3 ; 000658: provisional 68k dc.w $ffc3
db 0xFF, 0x0F ; 00065A: provisional 68k dc.w $ff0f
db 0xFF, 0xFC ; 00065C: provisional 68k dc.w $fffc
db 0x03, 0xFF ; file 00065E
db 0xFF, 0x00 ; 000660: provisional 68k dc.w $ff00
db 0x03, 0xFF, 0x0F, 0xFC, 0x3F, 0xF0 ; file 000662
db 0xFF, 0xFF ; 000668: provisional 68k dc.w $ffff
db 0xF0, 0x00 ; 00066A: provisional 68k dc.w $f000
db 0xFC, 0x83 ; 00066C: provisional 68k dc.w $fc83
db 0x00, 0x82, 0xFF, 0x13, 0xF0, 0x0F ; 00066E: provisional 68k ori.l #$ff13f00f, d2
db 0xFF, 0xFC ; 000674: provisional 68k dc.w $fffc
db 0x00, 0x00, 0x3F, 0xFF ; 000676: provisional 68k ori.b #$ff, d0
db 0xFC, 0x3F ; 00067A: provisional 68k dc.w $fc3f
db 0xF3, 0xFF ; 00067C: provisional 68k dc.w $f3ff
db 0xC0, 0xFF ; file 00067E
db 0xC0, 0x00 ; 000680: provisional 68k and.b d0, d0
db 0xFC, 0x00 ; 000682: provisional 68k dc.w $fc00
db 0xFC, 0x8F ; 000684: provisional 68k dc.w $fc8f
db 0x00, 0x0B, 0x03, 0xFF ; file 000686
db 0xFC, 0x03 ; 00068A: provisional 68k dc.w $fc03
db 0xFF, 0xC0 ; 00068C: provisional 68k dc.w $ffc0
db 0x03, 0xC3 ; 00068E: provisional 68k bset.b d1, d3
db 0xFF, 0x3F ; 000690: provisional 68k dc.w $ff3f
db 0xF0, 0x83 ; 000692: provisional 68k dc.w $f083
db 0x00, 0x82, 0xFF, 0x14, 0xF3, 0xFF ; 000694: provisional 68k ori.l #$ff14f3ff, d2
db 0x03, 0xFF ; file 00069A
db 0xFC, 0x00 ; 00069C: provisional 68k dc.w $fc00
db 0xFF, 0xFC ; 00069E: provisional 68k dc.w $fffc
db 0x00, 0x03, 0xFF, 0x0F ; 0006A0: provisional 68k ori.b #$f, d3
db 0xFC, 0x3F ; 0006A4: provisional 68k dc.w $fc3f
db 0xF0, 0x3F ; 0006A6: provisional 68k dc.w $f03f
db 0xFF, 0xFC ; 0006A8: provisional 68k dc.w $fffc
db 0x00, 0xFC ; file 0006AA
db 0x83, 0x00 ; 0006AC: provisional 68k sbcd.b d0, d1
db 0x15, 0x3F ; file 0006AE
db 0xFF, 0xC0 ; 0006B0: provisional 68k dc.w $ffc0
db 0x03, 0xFF ; file 0006B2
db 0xC0, 0x00 ; 0006B4: provisional 68k and.b d0, d0
db 0x00, 0x0F ; file 0006B6
db 0xFF, 0xFF ; 0006B8: provisional 68k dc.w $ffff
db 0x3F, 0xF3 ; file 0006BA
db 0xFF, 0x00 ; 0006BC: provisional 68k dc.w $ff00
db 0xFF, 0xC0 ; 0006BE: provisional 68k dc.w $ffc0
db 0x00, 0xFC ; file 0006C0
db 0x00, 0x30, 0xB2, 0x00, 0x01, 0xFC, 0x95, 0x00, 0x01, 0xFC ; 0006C2: provisional 68k ori.b #$0, $950001fc(invalid.w)
db 0xB3, 0x00 ; 0006CC: provisional 68k eor.b d1, d0
db 0x02, 0x0F ; file 0006CE
db 0xFC, 0x94 ; 0006D0: provisional 68k dc.w $fc94
db 0x00, 0x02, 0x0F, 0xFC ; 0006D2: provisional 68k ori.b #$fc, d2
db 0xB3, 0x00 ; 0006D6: provisional 68k eor.b d1, d0
db 0x02, 0x03, 0xFC, 0x94 ; 0006D8: provisional 68k andi.b #$94, d3
db 0x00, 0x02, 0x03, 0xFC ; 0006DC: provisional 68k ori.b #$fc, d2
db 0xB4, 0x00 ; 0006E0: provisional 68k cmp.b d0, d2
db 0x01, 0xF0, 0x95, 0x00 ; 0006E2: provisional 68k bset.b d0, (a0, a1.w * 4)
db 0x01, 0xF0, 0xFF, 0x00 ; 0006E6: provisional 68k bset.b d0, (a0, a7.l * 8)
db 0xFF, 0x00 ; 0006EA: provisional 68k dc.w $ff00
db 0xBE, 0x00 ; 0006EC: provisional 68k cmp.b d0, d7
db 0x06, 0x0F ; file 0006EE
db 0xFF, 0xF0 ; 0006F0: provisional 68k dc.w $fff0
db 0x0F, 0xFF ; file 0006F2
db 0xF0, 0xA0 ; 0006F4: provisional 68k dc.w $f0a0
db 0x00, 0x02, 0x3F, 0xF0 ; 0006F6: provisional 68k ori.b #$f0, d2
db 0x83, 0x00 ; 0006FA: provisional 68k sbcd.b d0, d1
db 0x02, 0x3F ; file 0006FC
db 0xF0, 0x9E ; 0006FE: provisional 68k dc.w $f09e
db 0x00, 0x06, 0x0F, 0xFC ; 000700: provisional 68k ori.b #$fc, d6
db 0x30, 0x03 ; 000704: provisional 68k move.w d3, d0
db 0x0F, 0x30, 0xA0, 0x00 ; 000706: provisional 68k btst.l d7, (a0, a2.w)
db 0x07, 0x0F, 0xF0, 0x00 ; 00070A: provisional 68k movep.w -$1000(a7), d3
db 0x00, 0x30, 0x0F, 0xC0, 0x85, 0x00 ; 00070E: provisional 68k ori.b #$c0, (a0, a0.w * 4)
db 0x01, 0x0C, 0x98, 0x00 ; 000714: provisional 68k movep.w -$6800(a4), d0
db 0x06, 0x03, 0xFC, 0x00 ; 000718: provisional 68k addi.b #$0, d3
db 0x00, 0x0F ; file 00071C
db 0xC0, 0xA0 ; 00071E: provisional 68k and.l -(a0), d0
db 0x00, 0x07, 0x03, 0xF0 ; 000720: provisional 68k ori.b #$f0, d7
db 0x00, 0x03, 0xF0, 0x0F ; 000724: provisional 68k ori.b #$f, d3
db 0xC0, 0x85 ; 000728: provisional 68k and.l d5, d0
db 0x00, 0x01, 0xFC, 0x99 ; 00072A: provisional 68k ori.b #$99, d1
db 0x00, 0x04, 0x3F, 0xC0 ; 00072E: provisional 68k ori.b #$c0, d4
db 0x00, 0xFF ; file 000732
db 0xA1, 0x00 ; 000734: provisional 68k dc.w $a100
db 0x07, 0x03 ; 000736: provisional 68k btst.l d3, d3
db 0xF0, 0x00 ; 000738: provisional 68k dc.w $f000
db 0x0F, 0xF0, 0x0F, 0xC0 ; 00073A: provisional 68k bset.b d7, (invalid.w)
db 0x84, 0x00 ; 00073E: provisional 68k or.b d0, d2
db 0x02, 0x03, 0xFC, 0x99 ; 000740: provisional 68k andi.b #$99, d3
db 0x00, 0x3E, 0x3F, 0xFF ; file 000744
db 0xFF, 0xCC ; 000748: provisional 68k dc.w $ffcc
db 0x00, 0xFF ; file 00074A
db 0xF0, 0x00 ; 00074C: provisional 68k dc.w $f000
db 0x03, 0xFF ; file 00074E
db 0x3F, 0x00 ; 000750: provisional 68k move.w d0, -(a7)
db 0xFF, 0xF0 ; 000752: provisional 68k dc.w $fff0
db 0x00, 0x3F, 0xC0, 0x0F ; file 000754
db 0xFF, 0x03 ; 000758: provisional 68k dc.w $ff03
db 0xFF, 0x0F ; 00075A: provisional 68k dc.w $ff0f
db 0xC0, 0x3F, 0x0F, 0xFC ; file 00075C
db 0x3F, 0x00 ; 000760: provisional 68k move.w d0, -(a7)
db 0xFC, 0x00 ; 000762: provisional 68k dc.w $fc00
db 0x3F, 0xFC, 0x3F, 0xF3 ; file 000764
db 0xFC, 0x00 ; 000768: provisional 68k dc.w $fc00
db 0x3F, 0xF3 ; file 00076A
db 0xF0, 0x00 ; 00076C: provisional 68k dc.w $f000
db 0x03, 0xF0, 0x0F, 0xC0 ; 00076E: provisional 68k bset.b d1, (invalid.w)
db 0xFC, 0x00 ; 000772: provisional 68k dc.w $fc00
db 0xFF, 0xFF ; 000774: provisional 68k dc.w $ffff
db 0xC0, 0xFC, 0x00, 0x00 ; 000776: provisional 68k mulu.w #$0, d0
db 0x3F, 0xFF, 0x3F, 0xC0, 0x3F, 0xFC ; file 00077A
db 0x0F, 0xF0, 0x3F, 0xF0, 0x8D, 0x00, 0x3E, 0x3F ; 000780: provisional 68k bset.b d7, $8d003e3f(invalid.w)
db 0x03, 0xF0, 0x0C, 0x03 ; 000788: provisional 68k bset.b d1, $3(a0, d0.l)
db 0x00, 0xFC ; file 00078C
db 0x00, 0x00, 0xFC, 0xFF ; 00078E: provisional 68k ori.b #$ff, d0
db 0xC3, 0x00 ; 000792: provisional 68k abcd.b d0, d1
db 0xFC, 0x03 ; 000794: provisional 68k dc.w $fc03
db 0xC0, 0xF0, 0x3C, 0x03 ; 000796: provisional 68k mulu.w $3(a0, d3.l), d0
db 0xC0, 0xFC, 0xFF, 0xF3 ; 00079A: provisional 68k mulu.w #$fff3, d0
db 0xFF, 0xC3 ; 00079E: provisional 68k dc.w $ffc3
db 0xF3, 0xFF ; 0007A0: provisional 68k dc.w $f3ff
db 0xCF, 0xFF, 0x00, 0xC0 ; file 0007A2
db 0x3F, 0x0F ; 0007A6: provisional 68k move.w a7, -(a7)
db 0xFF, 0xFF ; 0007A8: provisional 68k dc.w $ffff
db 0x00, 0xF0 ; file 0007AA
db 0x0F, 0xF0, 0x00, 0x0F ; 0007AC: provisional 68k bset.b d7, $f(a0, d0.w)
db 0xFF, 0xCF ; 0007B0: provisional 68k dc.w $ffcf
db 0xCF, 0xFC, 0x03, 0xF0 ; 0007B2: provisional 68k muls.w #$3f0, d7
db 0x0F, 0xC3 ; 0007B6: provisional 68k bset.b d7, d3
db 0xFF, 0xF0 ; 0007B8: provisional 68k dc.w $fff0
db 0x00, 0x0F, 0xCF, 0xCF ; file 0007BA
db 0xC0, 0xF0, 0x0F, 0x03, 0xF0, 0x3F, 0xF0, 0x8D ; 0007BE: provisional 68k mulu.w ([a0, d0.l * 8], $f03ff08d), d0
db 0x00, 0x3E ; file 0007C6
db 0x3F, 0x03 ; 0007C8: provisional 68k move.w d3, -(a7)
db 0xF0, 0x0C ; 0007CA: provisional 68k dc.w $f00c
db 0x0C, 0x00, 0xFC, 0x00 ; 0007CC: provisional 68k cmpi.b #$0, d0
db 0x00, 0xFF ; file 0007D0
db 0xFF, 0xCC ; 0007D2: provisional 68k dc.w $ffcc
db 0x00, 0xFC ; file 0007D4
db 0x0F, 0x00 ; 0007D6: provisional 68k btst.l d7, d0
db 0xF0, 0xF0 ; 0007D8: provisional 68k dc.w $f0f0
db 0x00, 0xF0 ; file 0007DA
db 0xFF, 0x03 ; 0007DC: provisional 68k dc.w $ff03
db 0xFC, 0x0F ; 0007DE: provisional 68k dc.w $fc0f
db 0xC3, 0xFC, 0x0F, 0xF0 ; 0007E0: provisional 68k muls.w #$ff0, d1
db 0x3F, 0x03 ; 0007E4: provisional 68k move.w d3, -(a7)
db 0x00, 0x3F ; file 0007E6
db 0x0F, 0xF0, 0x3F, 0x03, 0xF0, 0x03, 0xF0, 0x00 ; 0007E8: provisional 68k bset.b d7, ([a0, d3.l * 8], $f003f000)
db 0x03, 0xF3, 0xCF, 0xF0, 0x3F, 0x03, 0xF0, 0x03 ; 0007F0: provisional 68k bset.b d1, $3f03f003(invalid.w)
db 0xF0, 0xFC ; 0007F8: provisional 68k dc.w $f0fc
db 0xF0, 0x00 ; 0007FA: provisional 68k dc.w $f000
db 0x0F, 0xFF ; file 0007FC
db 0x0F, 0x03 ; 0007FE: provisional 68k btst.l d7, d3
db 0xC0, 0x03 ; 000800: provisional 68k and.b d3, d0
db 0xC3, 0xF0, 0x0F, 0xC0 ; 000802: provisional 68k muls.w (invalid.w), d1
db 0x8D, 0x00 ; 000806: provisional 68k sbcd.b d0, d6
db 0x3E, 0x3F ; file 000808
db 0x03, 0xF0, 0x3C, 0x0C ; 00080A: provisional 68k bset.b d1, $c(a0, d3.l)
db 0x03, 0xF0, 0x00, 0x00 ; 00080E: provisional 68k bset.b d1, (a0, d0.w)
db 0xFC, 0x0F ; 000812: provisional 68k dc.w $fc0f
db 0xCC, 0x03 ; 000814: provisional 68k and.b d3, d6
db 0xF0, 0x0C ; 000816: provisional 68k dc.w $f00c
db 0x0F, 0xF3, 0xF0, 0x00 ; 000818: provisional 68k bset.b d7, (a3, a7.w)
db 0xF0, 0xFC ; 00081C: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0x0F, 0xC3, 0xF0, 0x0F, 0xC0, 0x3F ; 00081E: provisional 68k bset.b d1, ([], $f00fc03f)
db 0x03, 0x00 ; 000826: provisional 68k btst.l d1, d0
db 0xFC, 0x0F ; 000828: provisional 68k dc.w $fc0f
db 0xC0, 0x3F ; file 00082A
db 0x03, 0xC0 ; 00082C: provisional 68k bset.b d1, d0
db 0x03, 0xF0, 0x00, 0x03 ; 00082E: provisional 68k bset.b d1, $3(a0, d0.w)
db 0xF3, 0xCF ; 000832: provisional 68k dc.w $f3cf
db 0xC0, 0x3F, 0x00, 0xFF ; file 000834
db 0xF3, 0xF0 ; 000838: provisional 68k dc.w $f3f0
db 0xFC, 0xF0 ; 00083A: provisional 68k dc.w $fcf0
db 0x00, 0x03, 0xF0, 0x0F ; 00083C: provisional 68k ori.b #$f, d3
db 0x0F, 0xC0 ; 000840: provisional 68k bset.b d7, d0
db 0x03, 0xC3 ; 000842: provisional 68k bset.b d1, d3
db 0xF0, 0x0F ; 000844: provisional 68k dc.w $f00f
db 0xC0, 0x8D ; file 000846
db 0x00, 0x06, 0x3F, 0x0F ; 000848: provisional 68k ori.b #$f, d6
db 0xFC, 0x3C ; 00084C: provisional 68k dc.w $fc3c
db 0x3C, 0x0F ; 00084E: provisional 68k move.w a7, d6
db 0x83, 0x00 ; 000850: provisional 68k sbcd.b d0, d1
db 0x35, 0xFC ; file 000852
db 0x3F, 0x3C, 0x0F, 0x00 ; 000854: provisional 68k move.w #$f00, -(a7)
db 0x3C, 0x03 ; 000858: provisional 68k move.w d3, d6
db 0xC3, 0xF0, 0x00, 0xFC ; 00085A: provisional 68k muls.w -$4(a0, d0.w), d1
db 0xFC, 0x03 ; 00085E: provisional 68k dc.w $fc03
db 0xF0, 0x0F ; 000860: provisional 68k dc.w $f00f
db 0xC3, 0xF0, 0x0F, 0xC0 ; 000862: provisional 68k muls.w (invalid.w), d1
db 0x3F, 0x0F ; 000866: provisional 68k move.w a7, -(a7)
db 0x03, 0xC0 ; 000868: provisional 68k bset.b d1, d0
db 0x0F, 0xC0 ; 00086A: provisional 68k bset.b d7, d0
db 0x3F, 0x0F ; 00086C: provisional 68k move.w a7, -(a7)
db 0xC0, 0x03 ; 00086E: provisional 68k and.b d3, d0
db 0xF0, 0x00 ; 000870: provisional 68k dc.w $f000
db 0x03, 0xF0, 0xCF, 0xC0 ; 000872: provisional 68k bset.b d1, (invalid.w)
db 0x3F, 0x00 ; 000876: provisional 68k move.w d0, -(a7)
db 0x03, 0xC3 ; 000878: provisional 68k bset.b d1, d3
db 0xF0, 0xFC ; 00087A: provisional 68k dc.w $f0fc
db 0x30, 0x00 ; 00087C: provisional 68k move.w d0, d0
db 0x03, 0xF0, 0x0C, 0x0F ; 00087E: provisional 68k bset.b d1, $f(a0, d0.l)
db 0xC0, 0x03 ; 000882: provisional 68k and.b d3, d0
db 0xF3, 0xF0 ; 000884: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 000886: provisional 68k bset.b d7, d0
db 0x8D, 0x00 ; 000888: provisional 68k sbcd.b d0, d6
db 0x06, 0x0F ; file 00088A
db 0xCC, 0xFC, 0x30, 0x3C ; 00088C: provisional 68k mulu.w #$303c, d6
db 0x3C, 0x83 ; 000890: provisional 68k move.w d3, (a6)
db 0x00, 0x01, 0xFC, 0x83 ; 000892: provisional 68k ori.b #$83, d1
db 0x3C, 0x25 ; 000896: provisional 68k move.w -(a5), d6
db 0x00, 0x3C, 0x00, 0x03 ; 000898: provisional 68k ori.b #$3, ccr
db 0xF0, 0x00 ; 00089C: provisional 68k dc.w $f000
db 0xFC, 0xFC ; 00089E: provisional 68k dc.w $fcfc
db 0x03, 0xF0, 0x0F, 0xC3, 0xF0, 0x0F, 0xC0, 0x3F ; 0008A0: provisional 68k bset.b d1, ([], $f00fc03f)
db 0x0F, 0x0F, 0x00, 0x0F ; 0008A8: provisional 68k movep.w $f(a7), d7
db 0xC0, 0x3F ; file 0008AC
db 0x0F, 0xC0 ; 0008AE: provisional 68k bset.b d7, d0
db 0x03, 0xF0, 0x00, 0x03 ; 0008B0: provisional 68k bset.b d1, $3(a0, d0.w)
db 0xF0, 0x0F ; 0008B4: provisional 68k dc.w $f00f
db 0xC0, 0x3F, 0x00, 0x0F ; file 0008B6
db 0x03, 0xF0, 0xFC, 0x83 ; 0008BA: provisional 68k bset.b d1, -$7d(a0, a7.l)
db 0x00, 0x09 ; file 0008BE
db 0xFC, 0x3C ; 0008C0: provisional 68k dc.w $fc3c
db 0x0F, 0xC0 ; 0008C2: provisional 68k bset.b d7, d0
db 0x03, 0xF3, 0xF0, 0x0F ; 0008C4: provisional 68k bset.b d1, $f(a3, a7.w)
db 0xC0, 0x8D ; file 0008C8
db 0x00, 0x06, 0x0F, 0xCC ; 0008CA: provisional 68k ori.b #$cc, d6
db 0xFC, 0xF0 ; 0008CE: provisional 68k dc.w $fcf0
db 0x3C, 0xC0 ; 0008D0: provisional 68k move.w d0, (a6)+
db 0x83, 0x00 ; 0008D2: provisional 68k sbcd.b d0, d1
db 0x29, 0xFC, 0x00, 0x3C ; file 0008D4
db 0xC0, 0x00 ; 0008D8: provisional 68k and.b d0, d0
db 0x3C, 0x00 ; 0008DA: provisional 68k move.w d0, d6
db 0x03, 0xF0, 0x00, 0xFC ; 0008DC: provisional 68k bset.b d1, -$4(a0, d0.w)
db 0xFC, 0x03 ; 0008E0: provisional 68k dc.w $fc03
db 0xF0, 0x0F ; 0008E2: provisional 68k dc.w $f00f
db 0xC3, 0xF0, 0x0F, 0xC0 ; 0008E4: provisional 68k muls.w (invalid.w), d1
db 0x3F, 0x0F ; 0008E8: provisional 68k move.w a7, -(a7)
db 0x30, 0x00 ; 0008EA: provisional 68k move.w d0, d0
db 0x0F, 0xC0 ; 0008EC: provisional 68k bset.b d7, d0
db 0x3F, 0x0F ; 0008EE: provisional 68k move.w a7, -(a7)
db 0xC0, 0x03 ; 0008F0: provisional 68k and.b d3, d0
db 0xF0, 0x00 ; 0008F2: provisional 68k dc.w $f000
db 0x03, 0xF0, 0x0F, 0xC0 ; 0008F4: provisional 68k bset.b d1, (invalid.w)
db 0x3F, 0x00 ; 0008F8: provisional 68k move.w d0, -(a7)
db 0xF0, 0x03 ; 0008FA: provisional 68k dc.w $f003
db 0xF0, 0xFC ; 0008FC: provisional 68k dc.w $f0fc
db 0x83, 0x00 ; 0008FE: provisional 68k sbcd.b d0, d1
db 0x09, 0xFC ; file 000900
db 0x30, 0x0F ; 000902: provisional 68k move.w a7, d0
db 0xC0, 0x03 ; 000904: provisional 68k and.b d3, d0
db 0xF3, 0xF0 ; 000906: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 000908: provisional 68k bset.b d7, d0
db 0x8D, 0x00 ; 00090A: provisional 68k sbcd.b d0, d6
db 0x32, 0x0F ; 00090C: provisional 68k move.w a7, d1
db 0xFC, 0x3F ; 00090E: provisional 68k dc.w $fc3f
db 0xF0, 0x3F ; 000910: provisional 68k dc.w $f03f
db 0xC0, 0x30, 0x00, 0x00 ; 000912: provisional 68k and.b (a0, d0.w), d0
db 0xFC, 0x00 ; 000916: provisional 68k dc.w $fc00
db 0x3F, 0xC0 ; file 000918
db 0x30, 0x3C, 0x00, 0x33 ; 00091A: provisional 68k move.w #$33, d0
db 0xFC, 0x03 ; 00091E: provisional 68k dc.w $fc03
db 0xFC, 0xFC ; 000920: provisional 68k dc.w $fcfc
db 0x03, 0xF0, 0x0F, 0xC3, 0xF0, 0x0F, 0xC0, 0x3F ; 000922: provisional 68k bset.b d1, ([], $f00fc03f)
db 0x0F, 0xF0, 0x0C, 0x0F ; 00092A: provisional 68k bset.b d7, $f(a0, d0.l)
db 0xC0, 0x3F ; file 00092E
db 0x0F, 0xC0 ; 000930: provisional 68k bset.b d7, d0
db 0x03, 0xF0, 0x00, 0x03 ; 000932: provisional 68k bset.b d1, $3(a0, d0.w)
db 0xF0, 0x0F ; 000936: provisional 68k dc.w $f00f
db 0xC0, 0x3F ; file 000938
db 0x03, 0xF0, 0x03, 0xF0, 0xFC, 0x83, 0x00, 0x09 ; 00093A: provisional 68k bset.b d1, $fc830009(invalid.w)
db 0x3F, 0xF0 ; file 000942
db 0x0F, 0xF0, 0x0F, 0xF3, 0xF0, 0x0F, 0xC0, 0x8D, 0x00, 0x32, 0x0F, 0xF0 ; 000944: provisional 68k bset.b d7, ([$f00fc08d], $320ff0)
db 0x3F, 0xC0, 0x3F, 0xC0 ; file 000950
db 0x3C, 0x00 ; 000954: provisional 68k move.w d0, d6
db 0x00, 0xFC, 0x00, 0x3F ; file 000956
db 0xC0, 0x3C, 0x3F, 0xC0 ; 00095A: provisional 68k and.b #$c0, d0
db 0x3C, 0xFF ; file 00095E
db 0xFF, 0xF0 ; 000960: provisional 68k dc.w $fff0
db 0xFC, 0x03 ; 000962: provisional 68k dc.w $fc03
db 0xF0, 0x0F ; 000964: provisional 68k dc.w $f00f
db 0xC3, 0xF0, 0x0F, 0xC0 ; 000966: provisional 68k muls.w (invalid.w), d1
db 0x3F, 0x0F ; 00096A: provisional 68k move.w a7, -(a7)
db 0xF0, 0x0F ; 00096C: provisional 68k dc.w $f00f
db 0x0F, 0xC0 ; 00096E: provisional 68k bset.b d7, d0
db 0x3F, 0x0F ; 000970: provisional 68k move.w a7, -(a7)
db 0xF0, 0x03 ; 000972: provisional 68k dc.w $f003
db 0xF0, 0x00 ; 000974: provisional 68k dc.w $f000
db 0x03, 0xF0, 0x0F, 0xC0 ; 000976: provisional 68k bset.b d1, (invalid.w)
db 0x3F, 0x03 ; 00097A: provisional 68k move.w d3, -(a7)
db 0xF0, 0x03 ; 00097C: provisional 68k dc.w $f003
db 0xF0, 0xFC ; 00097E: provisional 68k dc.w $f0fc
db 0x83, 0x00 ; 000980: provisional 68k sbcd.b d0, d1
db 0x09, 0x3F ; file 000982
db 0xF0, 0x03 ; 000984: provisional 68k dc.w $f003
db 0xFF, 0xFF ; 000986: provisional 68k dc.w $ffff
db 0xC3, 0xF0, 0x0F, 0xC0 ; 000988: provisional 68k muls.w (invalid.w), d1
db 0x8D, 0x00 ; 00098C: provisional 68k sbcd.b d0, d6
db 0x32, 0x03 ; 00098E: provisional 68k move.w d3, d1
db 0xF0, 0x3F ; 000990: provisional 68k dc.w $f03f
db 0xC0, 0x0F ; file 000992
db 0xFF, 0xFC ; 000994: provisional 68k dc.w $fffc
db 0x00, 0x00, 0xFC, 0x00 ; 000996: provisional 68k ori.b #$0, d0
db 0x0F, 0xFF ; file 00099A
db 0xFC, 0x0F ; 00099C: provisional 68k dc.w $fc0f
db 0xFF, 0xFC ; 00099E: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 0009A0: provisional 68k dc.w $ffff
db 0xF0, 0xFC ; 0009A2: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0x0F, 0xC3, 0xF0, 0x0F, 0xC0, 0x3F ; 0009A4: provisional 68k bset.b d1, ([], $f00fc03f)
db 0x03, 0xFF ; file 0009AC
db 0xFF, 0x0F ; 0009AE: provisional 68k dc.w $ff0f
db 0xC0, 0x3F, 0x03, 0xFF ; file 0009B0
db 0xFF, 0xF0 ; 0009B4: provisional 68k dc.w $fff0
db 0x00, 0x03, 0xF0, 0x0F ; 0009B6: provisional 68k ori.b #$f, d3
db 0xC0, 0x3F, 0x03, 0xFF ; file 0009BA
db 0xFF, 0xF0 ; 0009BE: provisional 68k dc.w $fff0
db 0xFC, 0x83 ; 0009C0: provisional 68k dc.w $fc83
db 0x00, 0x09 ; file 0009C2
db 0x0F, 0xC0 ; 0009C4: provisional 68k bset.b d7, d0
db 0x03, 0xFF ; file 0009C6
db 0xFF, 0xC3 ; 0009C8: provisional 68k dc.w $ffc3
db 0xFF, 0xFF ; 0009CA: provisional 68k dc.w $ffff
db 0xC0, 0x8D ; file 0009CC
db 0x00, 0x32, 0x03, 0xC0, 0x0F, 0xC0 ; 0009CE: provisional 68k ori.b #$c0, (invalid.w)
db 0x0F, 0xFF ; file 0009D4
db 0xFC, 0x00 ; 0009D6: provisional 68k dc.w $fc00
db 0x03, 0xFF, 0xC0, 0x0F ; file 0009D8
db 0xFF, 0xFC ; 0009DC: provisional 68k dc.w $fffc
db 0x0F, 0xFF ; file 0009DE
db 0xFC, 0x3F ; 0009E0: provisional 68k dc.w $fc3f
db 0xFF, 0xC3 ; 0009E2: provisional 68k dc.w $ffc3
db 0xFF, 0x0F ; 0009E4: provisional 68k dc.w $ff0f
db 0xFC, 0x3F ; 0009E6: provisional 68k dc.w $fc3f
db 0xFF, 0xFC ; 0009E8: provisional 68k dc.w $fffc
db 0x3F, 0xF0 ; file 0009EA
db 0xFF, 0xC3 ; 0009EC: provisional 68k dc.w $ffc3
db 0xFF, 0xFF ; 0009EE: provisional 68k dc.w $ffff
db 0x3F, 0xF0 ; file 0009F0
db 0xFF, 0xC0 ; 0009F2: provisional 68k dc.w $ffc0
db 0xFF, 0xFF ; 0009F4: provisional 68k dc.w $ffff
db 0xF0, 0x00 ; 0009F6: provisional 68k dc.w $f000
db 0x0F, 0xFC, 0x3F, 0xF0 ; file 0009F8
db 0xFF, 0xC0 ; 0009FC: provisional 68k dc.w $ffc0
db 0xFF, 0xFF ; 0009FE: provisional 68k dc.w $ffff
db 0xF3, 0xFF ; 000A00: provisional 68k dc.w $f3ff
db 0x83, 0x00 ; 000A02: provisional 68k sbcd.b d0, d1
db 0x09, 0x0F, 0xC0, 0x00 ; 000A04: provisional 68k movep.w -$4000(a7), d4
db 0xFF, 0xFF ; 000A08: provisional 68k dc.w $ffff
db 0x00, 0xFF ; file 000A0A
db 0xCF, 0xC0 ; 000A0C: provisional 68k muls.w d0, d7
db 0x8E, 0x00 ; 000A0E: provisional 68k or.b d0, d7
db 0x2E, 0xC0 ; 000A10: provisional 68k move.l d0, (a7)+
db 0x0F, 0x00 ; 000A12: provisional 68k btst.l d7, d0
db 0x03, 0xFF ; file 000A14
db 0xC0, 0x00 ; 000A16: provisional 68k and.b d0, d0
db 0x03, 0xFF ; file 000A18
db 0x00, 0x03, 0xFF, 0xC0 ; 000A1A: provisional 68k ori.b #$c0, d3
db 0x03, 0xFF ; file 000A1E
db 0xF0, 0x0F ; 000A20: provisional 68k dc.w $f00f
db 0xFF, 0x03 ; 000A22: provisional 68k dc.w $ff03
db 0xFF, 0x0F ; 000A24: provisional 68k dc.w $ff0f
db 0xFC, 0x3F ; 000A26: provisional 68k dc.w $fc3f
db 0xFF, 0xFC ; 000A28: provisional 68k dc.w $fffc
db 0x3F, 0xF0 ; file 000A2A
db 0xFF, 0xC0 ; 000A2C: provisional 68k dc.w $ffc0
db 0xFF, 0xF0 ; 000A2E: provisional 68k dc.w $fff0
db 0x3F, 0xF0 ; file 000A30
db 0xFF, 0xC0 ; 000A32: provisional 68k dc.w $ffc0
db 0x3F, 0xFF ; file 000A34
db 0xFC, 0x00 ; 000A36: provisional 68k dc.w $fc00
db 0x0F, 0xFC, 0x3F, 0xF0 ; file 000A38
db 0xFF, 0xC0 ; 000A3C: provisional 68k dc.w $ffc0
db 0x3F, 0x83, 0xFF, 0x83, 0x00, 0x09, 0x0F, 0xC0 ; 000A3E: provisional 68k move.w d3, ([, a7.l * 8], $90fc0)
db 0x00, 0x3F ; file 000A46
db 0xFC, 0x00 ; 000A48: provisional 68k dc.w $fc00
db 0x3C, 0x3F ; file 000A4A
db 0xF0, 0xC2 ; 000A4C: provisional 68k dc.w $f0c2
db 0x00, 0x02, 0x0F, 0xC0 ; 000A4E: provisional 68k ori.b #$c0, d2
db 0xC9, 0x00 ; 000A52: provisional 68k abcd.b d0, d4
db 0x02, 0xFF, 0xC0, 0xC9 ; file 000A54
db 0x00, 0x02, 0x3F, 0xC0 ; 000A58: provisional 68k ori.b #$c0, d2
db 0xC9, 0x00 ; 000A5C: provisional 68k abcd.b d0, d4
db 0x01, 0x0F, 0xFF, 0x00 ; 000A5E: provisional 68k movep.w -$100(a7), d0
db 0xFF, 0x00 ; 000A62: provisional 68k dc.w $ff00
db 0xD2, 0x00 ; 000A64: provisional 68k add.b d0, d1
db 0x02, 0x0F ; file 000A66
db 0xFC, 0x88 ; 000A68: provisional 68k dc.w $fc88
db 0x00, 0x02, 0x3F, 0xF0 ; 000A6A: provisional 68k ori.b #$f0, d2
db 0x91, 0x00 ; 000A6E: provisional 68k subx.b d0, d0
db 0x02, 0x3F ; file 000A70
db 0xF0, 0x84 ; 000A72: provisional 68k dc.w $f084
db 0x00, 0x02, 0x0F, 0xF0 ; 000A74: provisional 68k ori.b #$f0, d2
db 0xA5, 0x00 ; 000A78: provisional 68k dc.w $a500
db 0x03, 0x0C, 0x03, 0xF0 ; 000A7A: provisional 68k movep.w $3f0(a4), d1
db 0x88, 0x00 ; 000A7E: provisional 68k or.b d0, d4
db 0x03, 0x0F, 0xF0, 0x3F ; 000A80: provisional 68k movep.w -$fc1(a7), d1
db 0x90, 0x00 ; 000A84: provisional 68k sub.b d0, d0
db 0x02, 0x0F ; file 000A86
db 0xF0, 0x84 ; 000A88: provisional 68k dc.w $f084
db 0x00, 0x02, 0x03, 0xF0 ; 000A8A: provisional 68k ori.b #$f0, d2
db 0x8B, 0x00 ; 000A8E: provisional 68k sbcd.b d0, d5
db 0x03, 0x03 ; 000A90: provisional 68k btst.l d1, d3
db 0xF0, 0x03 ; 000A92: provisional 68k dc.w $f003
db 0x97, 0x00 ; 000A94: provisional 68k subx.b d0, d3
db 0x03, 0xFC ; file 000A96
db 0x03, 0xF0, 0x88, 0x00 ; 000A98: provisional 68k bset.b d1, (a0, a0.l)
db 0x03, 0x03 ; 000A9C: provisional 68k btst.l d1, d3
db 0xF0, 0x3F ; 000A9E: provisional 68k dc.w $f03f
db 0x90, 0x00 ; 000AA0: provisional 68k sub.b d0, d0
db 0x02, 0x03, 0xF0, 0x84 ; 000AA2: provisional 68k andi.b #$84, d3
db 0x00, 0x02, 0x03, 0xF0 ; 000AA6: provisional 68k ori.b #$f0, d2
db 0x8B, 0x00 ; 000AAA: provisional 68k sbcd.b d0, d5
db 0x03, 0x03 ; 000AAC: provisional 68k btst.l d1, d3
db 0xF0, 0x3F ; 000AAE: provisional 68k dc.w $f03f
db 0x96, 0x00 ; 000AB0: provisional 68k sub.b d0, d3
db 0x04, 0x03, 0xFC, 0x03 ; 000AB2: provisional 68k subi.b #$3, d3
db 0xF0, 0x88 ; 000AB6: provisional 68k dc.w $f088
db 0x00, 0x02, 0x03, 0xF0 ; 000AB8: provisional 68k ori.b #$f0, d2
db 0x91, 0x00 ; 000ABC: provisional 68k subx.b d0, d0
db 0x02, 0x03, 0xF0, 0x84 ; 000ABE: provisional 68k andi.b #$84, d3
db 0x00, 0x02, 0x03, 0xF0 ; 000AC2: provisional 68k ori.b #$f0, d2
db 0x8D, 0x00 ; 000AC6: provisional 68k sbcd.b d0, d6
db 0x10, 0xFF ; file 000AC8
db 0x00, 0x00, 0xFF, 0xCF ; 000ACA: provisional 68k ori.b #$cf, d0
db 0xC0, 0x3F ; file 000ACE
db 0xFC, 0x3F ; 000AD0: provisional 68k dc.w $fc3f
db 0xF0, 0xFC ; 000AD2: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0x03, 0xFF, 0xC3, 0x83, 0xFF, 0x7F ; 000AD4: provisional 68k bset.b d1, ([$c383ff7f])
db 0x00, 0xFF ; file 000ADC
db 0xF0, 0x00 ; 000ADE: provisional 68k dc.w $f000
db 0x00, 0xFC ; file 000AE0
db 0x03, 0xF0, 0x3F, 0x00 ; 000AE2: provisional 68k bset.b d1, (a0, d3.l * 8)
db 0x03, 0xFF ; file 000AE6
db 0xC0, 0x00 ; 000AE8: provisional 68k and.b d0, d0
db 0x00, 0x3F ; file 000AEA
db 0xF3, 0xF0 ; 000AEC: provisional 68k dc.w $f3f0
db 0xFF, 0xC0 ; 000AEE: provisional 68k dc.w $ffc0
db 0xFF, 0xFF ; 000AF0: provisional 68k dc.w $ffff
db 0xC0, 0x03 ; 000AF2: provisional 68k and.b d3, d0
db 0xFC, 0x00 ; 000AF4: provisional 68k dc.w $fc00
db 0x00, 0x0F ; file 000AF6
db 0xFF, 0xFC ; 000AF8: provisional 68k dc.w $fffc
db 0x3F, 0xF3 ; file 000AFA
db 0xFC, 0x00 ; 000AFC: provisional 68k dc.w $fc00
db 0x3F, 0xF3 ; file 000AFE
db 0xF0, 0x00 ; 000B00: provisional 68k dc.w $f000
db 0x00, 0x03, 0xFC, 0x03 ; 000B02: provisional 68k ori.b #$3, d3
db 0xF0, 0x00 ; 000B06: provisional 68k dc.w $f000
db 0xFF, 0xF0 ; 000B08: provisional 68k dc.w $fff0
db 0x0F, 0xFF ; file 000B0A
db 0xFC, 0x3F ; 000B0C: provisional 68k dc.w $fc3f
db 0xF3, 0xFC ; 000B0E: provisional 68k dc.w $f3fc
db 0x00, 0x00, 0x0F, 0xFC ; 000B10: provisional 68k ori.b #$fc, d0
db 0x3F, 0x00 ; 000B14: provisional 68k move.w d0, -(a7)
db 0x00, 0x3F, 0x3F, 0xF0, 0xC0, 0x3F ; file 000B16
db 0x0F, 0xCF, 0xFF, 0x3F ; 000B1C: provisional 68k movep.l d7, -$c1(a7)
db 0xFC, 0x0F ; 000B20: provisional 68k dc.w $fc0f
db 0x00, 0xF0 ; file 000B22
db 0xFF, 0x3C ; 000B24: provisional 68k dc.w $ff3c
db 0x0F, 0x03 ; 000B26: provisional 68k btst.l d7, d3
db 0x00, 0xFC ; file 000B28
db 0x00, 0x03, 0xFF, 0xF3 ; 000B2A: provisional 68k ori.b #$f3, d3
db 0xF3, 0xFF ; 000B2E: provisional 68k dc.w $f3ff
db 0x00, 0x0C ; file 000B30
db 0x03, 0xF0, 0x00, 0x00 ; 000B32: provisional 68k bset.b d1, (a0, d0.w)
db 0xF0, 0x0F ; 000B36: provisional 68k dc.w $f00f
db 0xF0, 0x3F ; 000B38: provisional 68k dc.w $f03f
db 0x03, 0xF0, 0x03, 0xC0 ; 000B3A: provisional 68k bset.b d1, (invalid.w)
db 0x3C, 0x0F ; 000B3E: provisional 68k move.w a7, d6
db 0x00, 0x00, 0x3F, 0x00 ; 000B40: provisional 68k ori.b #$0, d0
db 0xFC, 0x0F ; 000B44: provisional 68k dc.w $fc0f
db 0xFF, 0xFF ; 000B46: provisional 68k dc.w $ffff
db 0x00, 0xF0 ; file 000B48
db 0x0F, 0xF0, 0x00, 0x00 ; 000B4A: provisional 68k bset.b d7, (a0, d0.w)
db 0x3C, 0x0F ; 000B4E: provisional 68k move.w a7, d6
db 0x03, 0xF0, 0x03, 0x00 ; 000B50: provisional 68k bset.b d1, (a0, d0.w * 2)
db 0xFC, 0x3F ; 000B54: provisional 68k dc.w $fc3f
db 0x00, 0xFC, 0x0F, 0xFF ; file 000B56
db 0xFF, 0x82 ; 000B5A: provisional 68k dc.w $ff82
db 0x00, 0x5E, 0x03, 0xF0 ; 000B5C: provisional 68k ori.w #$3f0, (a6)+
db 0xFF, 0xFC ; 000B60: provisional 68k dc.w $fffc
db 0x00, 0x3F ; file 000B62
db 0xFF, 0xF3 ; 000B64: provisional 68k dc.w $fff3
db 0x00, 0x3F ; file 000B66
db 0x0F, 0xF0, 0x3F, 0xC0 ; 000B68: provisional 68k bset.b d7, (invalid.w)
db 0xFC, 0x3C ; 000B6C: provisional 68k dc.w $fc3c
db 0x00, 0x3C ; file 000B6E
db 0x3F, 0x0C ; 000B70: provisional 68k move.w a4, -(a7)
db 0x0F, 0x0C, 0x00, 0xFC ; 000B72: provisional 68k movep.w $fc(a4), d7
db 0x00, 0x00, 0xFC, 0xF3 ; 000B76: provisional 68k ori.b #$f3, d0
db 0xFC, 0x0F ; 000B7A: provisional 68k dc.w $fc0f
db 0xC0, 0x30, 0x03, 0xF0, 0x00, 0x03, 0xF0, 0x03 ; 000B7C: provisional 68k and.b $3f003(invalid.w), d0
db 0xF0, 0x3F ; 000B84: provisional 68k dc.w $f03f
db 0x03, 0xFC ; file 000B86
db 0x00, 0x00, 0xF0, 0x0F ; 000B88: provisional 68k ori.b #$f, d0
db 0x00, 0x00, 0x3F, 0x00 ; 000B8C: provisional 68k ori.b #$0, d0
db 0x3F, 0x0F ; 000B90: provisional 68k move.w a7, -(a7)
db 0xF0, 0x3F ; 000B92: provisional 68k dc.w $f03f
db 0x03, 0xF0, 0x03, 0xF0, 0x00, 0x00, 0xF0, 0x0F ; 000B94: provisional 68k bset.b d1, $f00f(invalid.w)
db 0x03, 0xF0, 0x0C, 0x00 ; 000B9C: provisional 68k bset.b d1, (a0, d0.l * 4)
db 0xFC, 0x3F ; 000BA0: provisional 68k dc.w $fc3f
db 0x00, 0x3F ; file 000BA2
db 0x0F, 0xF0, 0x3F, 0x00 ; 000BA4: provisional 68k bset.b d7, (a0, d3.l * 8)
db 0x00, 0x03, 0xF0, 0x3F ; 000BA8: provisional 68k ori.b #$3f, d3
db 0x3C, 0x00 ; 000BAC: provisional 68k move.w d0, d6
db 0x3F, 0x03 ; 000BAE: provisional 68k move.w d3, -(a7)
db 0xF3, 0x00 ; 000BB0: provisional 68k dc.w $f300
db 0xFC, 0x0F ; 000BB2: provisional 68k dc.w $fc0f
db 0xC0, 0x3F, 0x00, 0xFC ; file 000BB4
db 0xFC, 0x00 ; 000BB8: provisional 68k dc.w $fc00
db 0x3C, 0x3F ; file 000BBA
db 0x83, 0x0C, 0x4C, 0x03 ; 000BBC: provisional 68k sbcd -(a4), -(a1), #$4c03
db 0xF0, 0x00 ; 000BC0: provisional 68k dc.w $f000
db 0x00, 0xFC ; file 000BC2
db 0xF3, 0xF0 ; 000BC4: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 000BC6: provisional 68k bset.b d7, d0
db 0x30, 0x0F ; 000BC8: provisional 68k move.w a7, d0
db 0xC0, 0x00 ; 000BCA: provisional 68k and.b d0, d0
db 0x03, 0xC0 ; 000BCC: provisional 68k bset.b d1, d0
db 0x03, 0xF0, 0x3F, 0x00 ; 000BCE: provisional 68k bset.b d1, (a0, d3.l * 8)
db 0x3F, 0xC0, 0x00, 0xC0 ; file 000BD2
db 0xFF, 0x00 ; 000BD6: provisional 68k dc.w $ff00
db 0x00, 0x0F ; file 000BD8
db 0xFF, 0x3F ; 000BDA: provisional 68k dc.w $ff3f
db 0x0F, 0xC0 ; 000BDC: provisional 68k bset.b d7, d0
db 0x3F, 0x03 ; 000BDE: provisional 68k move.w d3, -(a7)
db 0xC0, 0x03 ; 000BE0: provisional 68k and.b d3, d0
db 0xF0, 0x00 ; 000BE2: provisional 68k dc.w $f000
db 0x00, 0xC0 ; file 000BE4
db 0xFF, 0x03 ; 000BE6: provisional 68k dc.w $ff03
db 0xF0, 0x0C ; 000BE8: provisional 68k dc.w $f00c
db 0x03, 0xF0, 0x0F, 0xFF, 0x3F, 0x0F, 0xC0, 0x3F ; 000BEA: provisional 68k bset.b d1, ([$3f0fc03f])
db 0x00, 0x00, 0x03, 0xF0 ; 000BF2: provisional 68k ori.b #$f0, d0
db 0x3F, 0x3C, 0x00, 0x3F ; 000BF6: provisional 68k move.w #$3f, -(a7)
db 0x0F, 0xCF, 0x03, 0xC0 ; 000BFA: provisional 68k movep.l d7, $3c0(a7)
db 0x0F, 0xC0 ; 000BFE: provisional 68k bset.b d7, d0
db 0x3F, 0x00 ; 000C00: provisional 68k move.w d0, -(a7)
db 0xFC, 0xFC ; 000C02: provisional 68k dc.w $fcfc
db 0x00, 0x3F ; file 000C04
db 0x0F, 0xC0 ; 000C06: provisional 68k bset.b d7, d0
db 0x0C, 0x3C ; file 000C08
db 0x0F, 0x83 ; 000C0A: provisional 68k bclr.b d7, d3
db 0x00, 0x14, 0xFC, 0x33 ; 000C0C: provisional 68k ori.b #$33, (a4)
db 0xF0, 0x0F ; 000C10: provisional 68k dc.w $f00f
db 0xC0, 0xF0, 0x3C, 0x00 ; 000C12: provisional 68k mulu.w (a0, d3.l * 4), d0
db 0x00, 0x0F ; file 000C16
db 0xC0, 0x03 ; 000C18: provisional 68k and.b d3, d0
db 0xF0, 0x3F ; 000C1A: provisional 68k dc.w $f03f
db 0x00, 0x0F ; file 000C1C
db 0xFC, 0x03 ; 000C1E: provisional 68k dc.w $fc03
db 0xC0, 0x3C, 0x83, 0x00 ; 000C20: provisional 68k and.b #$0, d0
db 0x20, 0x3C, 0x3F, 0x0F, 0xC0, 0x3F ; 000C24: provisional 68k move.l #$3f0fc03f, d0
db 0x0F, 0xC0 ; 000C2A: provisional 68k bset.b d7, d0
db 0x03, 0xF0, 0x00, 0x03 ; 000C2C: provisional 68k bset.b d1, $3(a0, d0.w)
db 0xC0, 0x3C, 0x03, 0xF0 ; 000C30: provisional 68k and.b #$f0, d0
db 0x3C, 0x0F ; 000C34: provisional 68k move.w a7, d6
db 0x00, 0x00, 0x3C, 0x3F ; 000C36: provisional 68k ori.b #$3f, d0
db 0x0F, 0xC0 ; 000C3A: provisional 68k bset.b d7, d0
db 0x3F, 0x00 ; 000C3C: provisional 68k move.w d0, -(a7)
db 0x00, 0x03, 0xF0, 0x3F ; 000C3E: provisional 68k ori.b #$3f, d3
db 0x0C, 0x00, 0x3F, 0x83 ; 000C42: provisional 68k cmpi.b #$83, d0
db 0x0F, 0x0B, 0x00, 0x0F ; 000C46: provisional 68k movep.w $f(a3), d7
db 0xC0, 0x3F, 0x00, 0xFC ; file 000C4A
db 0xFC, 0x00 ; 000C4E: provisional 68k dc.w $fc00
db 0x3F, 0x0F ; 000C50: provisional 68k move.w a7, -(a7)
db 0xC0, 0x83 ; 000C52: provisional 68k and.l d3, d0
db 0x3C, 0x83 ; 000C54: provisional 68k move.w d3, (a6)
db 0x00, 0x13, 0xFC, 0x03 ; 000C56: provisional 68k ori.b #$3, (a3)
db 0xF0, 0x0F ; 000C5A: provisional 68k dc.w $f00f
db 0xC0, 0xF0, 0xF0, 0x00 ; 000C5C: provisional 68k mulu.w (a0, a7.w), d0
db 0x00, 0x0F ; file 000C60
db 0xC0, 0x03 ; 000C62: provisional 68k and.b d3, d0
db 0xF0, 0x3F ; 000C64: provisional 68k dc.w $f03f
db 0x00, 0x00, 0xFF, 0x03 ; 000C66: provisional 68k ori.b #$3, d0
db 0xC0, 0x84 ; 000C6A: provisional 68k and.l d4, d0
db 0x00, 0x31, 0xF0, 0x3F, 0x0F, 0xC0 ; 000C6C: provisional 68k ori.b #$3f, (invalid.w)
db 0x3F, 0x0F ; 000C72: provisional 68k move.w a7, -(a7)
db 0xC0, 0x03 ; 000C74: provisional 68k and.b d3, d0
db 0xF0, 0x00 ; 000C76: provisional 68k dc.w $f000
db 0x03, 0xC0 ; 000C78: provisional 68k bset.b d1, d0
db 0x00, 0x03, 0xF0, 0x3C ; 000C7A: provisional 68k ori.b #$3c, d3
db 0x3C, 0x00 ; 000C7E: provisional 68k move.w d0, d6
db 0x00, 0xF0 ; file 000C80
db 0x3F, 0x0F ; 000C82: provisional 68k move.w a7, -(a7)
db 0xC0, 0x3F ; file 000C84
db 0x00, 0x00, 0x03, 0xF0 ; 000C86: provisional 68k ori.b #$f0, d0
db 0x3F, 0x00 ; 000C8A: provisional 68k move.w d0, -(a7)
db 0x00, 0x3F, 0x00, 0x0F ; file 000C8C
db 0x30, 0x00 ; 000C90: provisional 68k move.w d0, d0
db 0x0F, 0xC0 ; 000C92: provisional 68k bset.b d7, d0
db 0x3F, 0x00 ; 000C94: provisional 68k move.w d0, -(a7)
db 0xFC, 0xFC ; 000C96: provisional 68k dc.w $fcfc
db 0x00, 0x3F ; file 000C98
db 0x0F, 0xC0 ; 000C9A: provisional 68k bset.b d7, d0
db 0x30, 0x3C, 0xC0, 0x83 ; 000C9C: provisional 68k move.w #$c083, d0
db 0x00, 0x06, 0xFC, 0x03 ; 000CA0: provisional 68k ori.b #$3, d6
db 0xF0, 0x0F ; 000CA4: provisional 68k dc.w $f00f
db 0xC0, 0xF3, 0x83, 0x00 ; 000CA6: provisional 68k mulu.w (a3, a0.w * 2), d0
db 0x0A, 0x0F ; file 000CAA
db 0xC0, 0x03 ; 000CAC: provisional 68k and.b d3, d0
db 0xF0, 0x3F ; 000CAE: provisional 68k dc.w $f03f
db 0x00, 0xC0 ; file 000CB0
db 0x0F, 0xC3 ; 000CB2: provisional 68k bset.b d7, d3
db 0xC0, 0x83 ; 000CB4: provisional 68k and.l d3, d0
db 0x00, 0x7F ; file 000CB6
db 0x0F, 0x00 ; 000CB8: provisional 68k btst.l d7, d0
db 0x3F, 0x0F ; 000CBA: provisional 68k move.w a7, -(a7)
db 0xC0, 0x3F ; file 000CBC
db 0x0F, 0xC0 ; 000CBE: provisional 68k bset.b d7, d0
db 0x03, 0xF0, 0x00, 0x03 ; 000CC0: provisional 68k bset.b d1, $3(a0, d0.w)
db 0xC0, 0x00 ; 000CC4: provisional 68k and.b d0, d0
db 0x03, 0xF0, 0x3C, 0xC0 ; 000CC6: provisional 68k bset.b d1, -$40(a0, d3.l)
db 0x00, 0x0F, 0x00, 0x3F ; file 000CCA
db 0x0F, 0xC0 ; 000CCE: provisional 68k bset.b d7, d0
db 0x3F, 0x00 ; 000CD0: provisional 68k move.w d0, -(a7)
db 0x00, 0x03, 0xF0, 0x3F ; 000CD2: provisional 68k ori.b #$3f, d3
db 0x00, 0x00, 0x3F, 0x00 ; 000CD6: provisional 68k ori.b #$0, d0
db 0x0F, 0xF0, 0x0C, 0x0F ; 000CDA: provisional 68k bset.b d7, $f(a0, d0.l)
db 0xC0, 0x3F, 0x00, 0xFC ; file 000CDE
db 0xFF, 0x00 ; 000CE2: provisional 68k dc.w $ff00
db 0xFF, 0x03 ; 000CE4: provisional 68k dc.w $ff03
db 0xF0, 0x30 ; 000CE6: provisional 68k dc.w $f030
db 0x3F, 0xC0 ; file 000CE8
db 0x30, 0x00 ; 000CEA: provisional 68k move.w d0, d0
db 0x00, 0xFC ; file 000CEC
db 0x03, 0xF0, 0x0F, 0xC0 ; 000CEE: provisional 68k bset.b d1, (invalid.w)
db 0xFF, 0x00 ; 000CF2: provisional 68k dc.w $ff00
db 0xC0, 0x00 ; 000CF4: provisional 68k and.b d0, d0
db 0x0F, 0xC0 ; 000CF6: provisional 68k bset.b d7, d0
db 0x03, 0xF0, 0x3F, 0x00 ; 000CF8: provisional 68k bset.b d1, (a0, d3.l * 8)
db 0xF0, 0x0F ; 000CFC: provisional 68k dc.w $f00f
db 0xC3, 0xC0 ; 000CFE: provisional 68k muls.w d0, d1
db 0x03, 0x00 ; 000D00: provisional 68k btst.l d1, d0
db 0x00, 0x3F, 0x00, 0x3F ; file 000D02
db 0x0F, 0xC0 ; 000D06: provisional 68k bset.b d7, d0
db 0x3F, 0x0F ; 000D08: provisional 68k move.w a7, -(a7)
db 0xC0, 0x03 ; 000D0A: provisional 68k and.b d3, d0
db 0xF0, 0x00 ; 000D0C: provisional 68k dc.w $f000
db 0x03, 0xC0 ; 000D0E: provisional 68k bset.b d1, d0
db 0x03, 0x03 ; 000D10: provisional 68k btst.l d1, d3
db 0xF0, 0x3F ; 000D12: provisional 68k dc.w $f03f
db 0xC0, 0x30, 0x3F, 0x00 ; 000D14: provisional 68k and.b (a0, d3.l * 8), d0
db 0x3F, 0x0F ; 000D18: provisional 68k move.w a7, -(a7)
db 0xC0, 0x3F ; file 000D1A
db 0x00, 0x00, 0x03, 0xF0 ; 000D1C: provisional 68k ori.b #$f0, d0
db 0x3F, 0x00 ; 000D20: provisional 68k move.w d0, -(a7)
db 0x00, 0x3F, 0x00, 0x0F ; file 000D22
db 0xF0, 0x0F ; 000D26: provisional 68k dc.w $f00f
db 0x0F, 0xC0 ; 000D28: provisional 68k bset.b d7, d0
db 0x3F, 0x00 ; 000D2A: provisional 68k move.w d0, -(a7)
db 0xFC, 0x3F ; 000D2C: provisional 68k dc.w $fc3f
db 0xFF, 0xFC ; 000D2E: provisional 68k dc.w $fffc
db 0x03, 0xFC, 0xC0, 0x3F ; file 000D30
db 0xC0, 0x3C, 0x00, 0x7F ; 000D34: provisional 68k and.b #$7f, d0
db 0x00, 0xFC ; file 000D38
db 0x03, 0xF0, 0x0F, 0xC0 ; 000D3A: provisional 68k bset.b d1, (invalid.w)
db 0xFF, 0x00 ; 000D3E: provisional 68k dc.w $ff00
db 0xF0, 0x00 ; 000D40: provisional 68k dc.w $f000
db 0x0F, 0xF0, 0x03, 0xF0, 0x3F, 0x03, 0xF0, 0x0F ; 000D42: provisional 68k bset.b d7, $3f03f00f(invalid.w)
db 0xC3, 0xFC, 0x03, 0xC0 ; 000D4A: provisional 68k muls.w #$3c0, d1
db 0x00, 0x3F, 0x00, 0x3F ; file 000D4E
db 0x0F, 0xC0 ; 000D52: provisional 68k bset.b d7, d0
db 0x3F, 0x0F ; 000D54: provisional 68k move.w a7, -(a7)
db 0xF0, 0x03 ; 000D56: provisional 68k dc.w $f003
db 0xF0, 0x00 ; 000D58: provisional 68k dc.w $f000
db 0x03, 0xFC ; file 000D5A
db 0x03, 0xC3 ; 000D5C: provisional 68k bset.b d1, d3
db 0xF0, 0x3F ; 000D5E: provisional 68k dc.w $f03f
db 0xC0, 0x3C, 0x3F, 0x00 ; 000D60: provisional 68k and.b #$0, d0
db 0x3F, 0x0F ; 000D64: provisional 68k move.w a7, -(a7)
db 0xC0, 0x3F ; file 000D66
db 0x00, 0x00, 0x03, 0xF0 ; 000D68: provisional 68k ori.b #$f0, d0
db 0x3F, 0x00 ; 000D6C: provisional 68k move.w d0, -(a7)
db 0x00, 0x3F ; file 000D6E
db 0x00, 0x03, 0xFF, 0xFF ; 000D70: provisional 68k ori.b #$ff, d3
db 0x0F, 0xC0 ; 000D74: provisional 68k bset.b d7, d0
db 0x3F, 0x00 ; 000D76: provisional 68k move.w d0, -(a7)
db 0xFC, 0x3F ; 000D78: provisional 68k dc.w $fc3f
db 0xFF, 0xFC ; 000D7A: provisional 68k dc.w $fffc
db 0x00, 0xFF, 0x00, 0x0F ; file 000D7C
db 0xFF, 0xFC ; 000D80: provisional 68k dc.w $fffc
db 0x00, 0x00, 0xFC, 0x03 ; 000D82: provisional 68k ori.b #$3, d0
db 0xF0, 0x0F ; 000D86: provisional 68k dc.w $f00f
db 0xC0, 0x3F ; file 000D88
db 0xFF, 0xF0 ; 000D8A: provisional 68k dc.w $fff0
db 0x00, 0x03, 0xFF, 0xFF ; 000D8C: provisional 68k ori.b #$ff, d3
db 0xF0, 0x3F ; 000D90: provisional 68k dc.w $f03f
db 0x03, 0xFF ; file 000D92
db 0xFF, 0xC0 ; 000D94: provisional 68k dc.w $ffc0
db 0xFF, 0xFF ; 000D96: provisional 68k dc.w $ffff
db 0xC0, 0x00 ; 000D98: provisional 68k and.b d0, d0
db 0x3F, 0xFF ; file 000D9A
db 0xFF, 0x0F ; 000D9C: provisional 68k dc.w $ff0f
db 0xC0, 0x3F, 0x03, 0xFF ; file 000D9E
db 0xFF, 0xF0 ; 000DA2: provisional 68k dc.w $fff0
db 0x00, 0x00, 0xFF, 0xFF ; 000DA4: provisional 68k ori.b #$ff, d0
db 0xC3, 0xF0, 0x0F, 0xFF, 0xFC, 0x3F, 0xFF, 0xFF ; 000DA8: provisional 68k muls.w ([$fc3fffff]), d1
db 0x0F, 0xC0 ; 000DB0: provisional 68k bset.b d7, d0
db 0x3F, 0x00 ; 000DB2: provisional 68k move.w d0, -(a7)
db 0x00, 0x03, 0xF0, 0x6A ; 000DB4: provisional 68k ori.b #$6a, d3
db 0x3F, 0x00 ; 000DB8: provisional 68k move.w d0, -(a7)
db 0x0C, 0xFF ; file 000DBA
db 0xF0, 0x03 ; 000DBC: provisional 68k dc.w $f003
db 0xFF, 0xFF ; 000DBE: provisional 68k dc.w $ffff
db 0x3F, 0xF0 ; file 000DC0
db 0xFF, 0xC3 ; 000DC2: provisional 68k dc.w $ffc3
db 0xFF, 0x0F ; 000DC4: provisional 68k dc.w $ff0f
db 0xFF, 0xF0 ; 000DC6: provisional 68k dc.w $fff0
db 0x00, 0xFF, 0x00, 0x0F ; file 000DC8
db 0xFF, 0xFC ; 000DCC: provisional 68k dc.w $fffc
db 0x00, 0x03, 0xFF, 0x0F ; 000DCE: provisional 68k ori.b #$f, d3
db 0xFC, 0x3F ; 000DD2: provisional 68k dc.w $fc3f
db 0xF0, 0x3F ; 000DD4: provisional 68k dc.w $f03f
db 0xFF, 0xF0 ; 000DD6: provisional 68k dc.w $fff0
db 0x00, 0x00, 0xFF, 0xFF ; 000DD8: provisional 68k ori.b #$ff, d0
db 0xF0, 0xFF ; 000DDC: provisional 68k dc.w $f0ff
db 0xC3, 0xFF ; file 000DDE
db 0xFF, 0x00 ; 000DE0: provisional 68k dc.w $ff00
db 0xFF, 0xFF ; 000DE2: provisional 68k dc.w $ffff
db 0xC0, 0x00 ; 000DE4: provisional 68k and.b d0, d0
db 0x0F, 0xFF ; file 000DE6
db 0xFF, 0x3F ; 000DE8: provisional 68k dc.w $ff3f
db 0xF0, 0xFF ; 000DEA: provisional 68k dc.w $f0ff
db 0xC0, 0xFF ; file 000DEC
db 0xFF, 0xF0 ; 000DEE: provisional 68k dc.w $fff0
db 0x00, 0x00, 0xFF, 0xFF ; 000DF0: provisional 68k ori.b #$ff, d0
db 0xCF, 0xFC, 0x0F, 0xFF ; 000DF4: provisional 68k muls.w #$fff, d7
db 0xFC, 0x0F ; 000DF8: provisional 68k dc.w $fc0f
db 0xFF, 0xFF ; 000DFA: provisional 68k dc.w $ffff
db 0x3F, 0xF0 ; file 000DFC
db 0xFF, 0xC0 ; 000DFE: provisional 68k dc.w $ffc0
db 0x00, 0x0F ; file 000E00
db 0xFC, 0xFF ; 000E02: provisional 68k dc.w $fcff
db 0xC0, 0x3F ; file 000E04
db 0xFF, 0xC0 ; 000E06: provisional 68k dc.w $ffc0
db 0x00, 0xFF ; file 000E08
db 0xF0, 0x3F ; 000E0A: provisional 68k dc.w $f03f
db 0xF0, 0xFF ; 000E0C: provisional 68k dc.w $f0ff
db 0xC3, 0xFF, 0x03, 0xFF ; file 000E0E
db 0xC0, 0x00 ; 000E12: provisional 68k and.b d0, d0
db 0x3C, 0x00 ; 000E14: provisional 68k move.w d0, d6
db 0x03, 0xFF ; file 000E16
db 0xC0, 0x00 ; 000E18: provisional 68k and.b d0, d0
db 0x03, 0xFF, 0x0F, 0xFC, 0x3F, 0xF0, 0x0F, 0xFF ; file 000E1A
db 0x83, 0x00 ; 000E22: provisional 68k sbcd.b d0, d1
db 0x0D, 0x3F ; file 000E24
db 0xFF, 0xFC ; 000E26: provisional 68k dc.w $fffc
db 0xFF, 0xC0 ; 000E28: provisional 68k dc.w $ffc0
db 0xFF, 0xFF ; 000E2A: provisional 68k dc.w $ffff
db 0x00, 0x3F ; file 000E2C
db 0xFF, 0x00 ; 000E2E: provisional 68k dc.w $ff00
db 0x00, 0x03, 0x83, 0xFF ; 000E30: provisional 68k ori.b #$ff, d3
db 0x10, 0xF0, 0xFF, 0xC0 ; 000E34: provisional 68k move.b (invalid.w), (a0)+
db 0x3F, 0xFF ; file 000E38
db 0xFC, 0x00 ; 000E3A: provisional 68k dc.w $fc00
db 0x00, 0x3F ; file 000E3C
db 0xFF, 0x0F ; 000E3E: provisional 68k dc.w $ff0f
db 0xFC, 0x03 ; 000E40: provisional 68k dc.w $fc03
db 0xFF, 0xC0 ; 000E42: provisional 68k dc.w $ffc0
db 0x03, 0x83 ; 000E44: provisional 68k bclr.b d1, d3
db 0xFF, 0x09 ; 000E46: provisional 68k dc.w $ff09
db 0xF0, 0xFF ; 000E48: provisional 68k dc.w $f0ff
db 0xC0, 0x00 ; 000E4A: provisional 68k and.b d0, d0
db 0x0F, 0xFC ; file 000E4C
db 0xFF, 0xC0 ; 000E4E: provisional 68k dc.w $ffc0
db 0x0C, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xE4 ; file 000E50
db 0x00, 0x82, 0xFF, 0x01, 0xF0, 0x92 ; 000E5A: provisional 68k ori.l #$ff01f092, d2
db 0x00, 0x02, 0x0F, 0xF0 ; 000E60: provisional 68k ori.b #$f0, d2
db 0xB4, 0x00 ; 000E64: provisional 68k cmp.b d0, d2
db 0x03, 0x3F, 0xC0, 0x3F ; file 000E66
db 0x92, 0x00 ; 000E6A: provisional 68k sub.b d0, d1
db 0x02, 0x0F ; file 000E6C
db 0xF0, 0x85 ; 000E6E: provisional 68k dc.w $f085
db 0x00, 0x03, 0x03, 0x00 ; 000E70: provisional 68k ori.b #$0, d3
db 0x0C, 0xAC, 0x00, 0x04, 0x0F, 0xC0, 0x0F, 0xC0 ; 000E74: provisional 68k cmpi.l #$40fc0, $fc0(a4)
db 0x91, 0x00 ; 000E7C: provisional 68k subx.b d0, d0
db 0x02, 0x03, 0xF0, 0x85 ; 000E7E: provisional 68k andi.b #$85, d3
db 0x00, 0x03, 0x3F, 0x00 ; 000E82: provisional 68k ori.b #$0, d3
db 0xFC, 0xAC ; 000E86: provisional 68k dc.w $fcac
db 0x00, 0x04, 0x0F, 0xC0 ; 000E88: provisional 68k ori.b #$c0, d4
db 0x03, 0xC0 ; 000E8C: provisional 68k bset.b d1, d0
db 0x91, 0x00 ; 000E8E: provisional 68k subx.b d0, d0
db 0x02, 0x03, 0xF0, 0x85 ; 000E90: provisional 68k andi.b #$85, d3
db 0x00, 0x03, 0xFF, 0x03 ; 000E94: provisional 68k ori.b #$3, d3
db 0xFC, 0xAC ; 000E98: provisional 68k dc.w $fcac
db 0x00, 0x25, 0x0F, 0xC0 ; 000E9A: provisional 68k ori.b #$c0, -(a5)
db 0x03, 0xFF ; file 000E9E
db 0xFC, 0xFC ; 000EA0: provisional 68k dc.w $fcfc
db 0x03, 0xFF, 0xC0, 0x3F ; file 000EA2
db 0xFF, 0xF0 ; 000EA6: provisional 68k dc.w $fff0
db 0x3F, 0xFF ; file 000EA8
db 0xF0, 0x00 ; 000EAA: provisional 68k dc.w $f000
db 0x00, 0xFF ; file 000EAC
db 0xFF, 0xC0 ; 000EAE: provisional 68k dc.w $ffc0
db 0x00, 0x03, 0xFF, 0xFF ; 000EB0: provisional 68k ori.b #$ff, d3
db 0x03, 0xFC, 0x0F, 0xFC ; file 000EB4
db 0x3F, 0x00 ; 000EB8: provisional 68k move.w d0, -(a7)
db 0xFC, 0x00 ; 000EBA: provisional 68k dc.w $fc00
db 0x3F, 0xFC, 0x0F, 0xFC ; file 000EBC
db 0xFF, 0x83 ; 000EC0: provisional 68k dc.w $ff83
db 0x00, 0x14, 0x3F, 0xFC ; 000EC2: provisional 68k ori.b #$fc, (a4)
db 0x0F, 0xFC ; file 000EC6
db 0xFF, 0x00 ; 000EC8: provisional 68k dc.w $ff00
db 0x00, 0x0F ; file 000ECA
db 0xFF, 0xCF ; 000ECC: provisional 68k dc.w $ffcf
db 0xF0, 0x0F ; 000ECE: provisional 68k dc.w $f00f
db 0xFF, 0x03 ; 000ED0: provisional 68k dc.w $ff03
db 0xFC, 0x0F ; 000ED2: provisional 68k dc.w $fc0f
db 0xFC, 0xFF ; 000ED4: provisional 68k dc.w $fcff
db 0xCF, 0xC0 ; 000ED6: provisional 68k muls.w d0, d7
db 0x8F, 0x00 ; 000ED8: provisional 68k sbcd.b d0, d7
db 0x1C, 0x0F ; file 000EDA
db 0xCC, 0x03 ; 000EDC: provisional 68k and.b d3, d6
db 0xF3, 0xF3 ; 000EDE: provisional 68k dc.w $f3f3
db 0xFF, 0x0C ; 000EE0: provisional 68k dc.w $ff0c
db 0x03, 0xF0, 0xFC, 0x00 ; 000EE2: provisional 68k bset.b d1, (a0, a7.l * 4)
db 0xF0, 0xFC ; 000EE6: provisional 68k dc.w $f0fc
db 0x00, 0xF0 ; file 000EE8
db 0x00, 0x03, 0xF0, 0x0F ; 000EEA: provisional 68k ori.b #$f, d3
db 0xC0, 0x00 ; 000EEE: provisional 68k and.b d0, d0
db 0x03, 0xFF ; file 000EF0
db 0x0F, 0xC0 ; 000EF2: provisional 68k bset.b d7, d0
db 0xFC, 0x0F ; 000EF4: provisional 68k dc.w $fc0f
db 0xFC, 0x83 ; 000EF6: provisional 68k dc.w $fc83
db 0xFF, 0x82 ; 000EF8: provisional 68k dc.w $ff82
db 0xF0, 0x1B ; 000EFA: provisional 68k dc.w $f01b
db 0x0F, 0x03 ; 000EFC: provisional 68k btst.l d7, d3
db 0xFF, 0xFF ; 000EFE: provisional 68k dc.w $ffff
db 0xC0, 0x00 ; 000F00: provisional 68k and.b d0, d0
db 0x00, 0xF0 ; file 000F02
db 0x0F, 0x03 ; 000F04: provisional 68k btst.l d7, d3
db 0xFF, 0xFF ; 000F06: provisional 68k dc.w $ffff
db 0xC0, 0x00 ; 000F08: provisional 68k and.b d0, d0
db 0x03, 0xF3, 0xF3, 0xF0, 0x3C, 0x03, 0xC0, 0xFC ; 000F0A: provisional 68k bset.b d1, $3c03c0fc(invalid.w)
db 0x0F, 0xFC, 0x3F, 0x3F ; file 000F12
db 0xF0, 0x8F ; 000F16: provisional 68k dc.w $f08f
db 0x00, 0x0D, 0x0F, 0xFF ; file 000F18
db 0x03, 0xF3, 0xFF, 0xFF, 0x30, 0x03, 0xF0, 0xFF ; 000F1C: provisional 68k bset.b d1, ([$3003f0ff])
db 0x00, 0x00, 0xFF, 0x83 ; 000F24: provisional 68k ori.b #$83, d0
db 0x00, 0x2C, 0x03, 0xF0, 0x03, 0xF0 ; 000F28: provisional 68k ori.b #$f0, $3f0(a4)
db 0x00, 0x03, 0xF0, 0x03 ; 000F2E: provisional 68k ori.b #$3, d3
db 0xF0, 0xFC ; 000F32: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0x3F, 0x3C, 0xFC, 0xF3, 0xC0, 0x03 ; 000F34: provisional 68k bset.b d1, $fcf3c003(a0, d3.l * 8)
db 0xC3, 0xFC, 0x0F, 0xC0 ; 000F3C: provisional 68k muls.w #$fc0, d1
db 0x00, 0x03, 0xC0, 0x03 ; 000F40: provisional 68k ori.b #$3, d3
db 0xC3, 0xFC, 0x0F, 0xC0 ; 000F44: provisional 68k muls.w #$fc0, d1
db 0x00, 0x03, 0xFF, 0xC3 ; 000F48: provisional 68k ori.b #$c3, d3
db 0xC0, 0xF0, 0x00, 0xF0 ; 000F4C: provisional 68k mulu.w -$10(a0, d0.w), d0
db 0xFC, 0x03 ; 000F50: provisional 68k dc.w $fc03
db 0xF0, 0x3F ; 000F52: provisional 68k dc.w $f03f
db 0xFF, 0xF0 ; 000F54: provisional 68k dc.w $fff0
db 0x8F, 0x00 ; 000F56: provisional 68k sbcd.b d0, d7
db 0x0E, 0x0F ; file 000F58
db 0x3F, 0x0F ; 000F5A: provisional 68k move.w a7, -(a7)
db 0xF3, 0xF0 ; 000F5C: provisional 68k dc.w $f3f0
db 0x3F, 0x30, 0x0F, 0xC0 ; 000F5E: provisional 68k move.w (invalid.w), -(a7)
db 0x0F, 0xF0, 0x00, 0x0F ; 000F62: provisional 68k bset.b d7, $f(a0, d0.w)
db 0xF0, 0x83 ; 000F66: provisional 68k dc.w $f083
db 0x00, 0x2B, 0xFF, 0xF3, 0xF0, 0x00 ; 000F68: provisional 68k ori.b #$f3, -$1000(a3)
db 0x03, 0xF0, 0x00, 0xF0 ; 000F6E: provisional 68k bset.b d1, -$10(a0, d0.w)
db 0xFC, 0x03 ; 000F72: provisional 68k dc.w $fc03
db 0xF0, 0x3F ; 000F74: provisional 68k dc.w $f03f
db 0x3C, 0xFC, 0xFF, 0xC0 ; 000F76: provisional 68k move.w #$ffc0, (a6)+
db 0x03, 0xC3 ; 000F7A: provisional 68k bset.b d1, d3
db 0xF0, 0x0F ; 000F7C: provisional 68k dc.w $f00f
db 0xC0, 0x00 ; 000F7E: provisional 68k and.b d0, d0
db 0x0F, 0xC0 ; 000F80: provisional 68k bset.b d7, d0
db 0x03, 0xC3 ; 000F82: provisional 68k bset.b d1, d3
db 0xF0, 0x0F ; 000F84: provisional 68k dc.w $f00f
db 0xC0, 0x00 ; 000F86: provisional 68k and.b d0, d0
db 0x00, 0xFC ; file 000F88
db 0x03, 0xC3 ; 000F8A: provisional 68k bset.b d1, d3
db 0xF0, 0x00 ; 000F8C: provisional 68k dc.w $f000
db 0xF0, 0xFC ; 000F8E: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0x3F, 0x03, 0xF0, 0x8F, 0x00, 0x0E ; 000F90: provisional 68k bset.b d1, ([a0, d3.l * 8], $f08f000e)
db 0x0F, 0x3F ; file 000F98
db 0xFF, 0xC3 ; 000F9A: provisional 68k dc.w $ffc3
db 0xF0, 0xFC ; 000F9C: provisional 68k dc.w $f0fc
db 0xF0, 0x3C ; 000F9E: provisional 68k dc.w $f03c
db 0x00, 0x03, 0xFF, 0x00 ; 000FA0: provisional 68k ori.b #$0, d3
db 0x03, 0xFF ; file 000FA4
db 0x83, 0x00 ; 000FA6: provisional 68k sbcd.b d0, d1
db 0x2B, 0x03 ; 000FA8: provisional 68k move.l d3, -(a5)
db 0xC3, 0xF0, 0x00, 0x03 ; 000FAA: provisional 68k muls.w $3(a0, d0.w), d1
db 0xF0, 0x00 ; 000FAE: provisional 68k dc.w $f000
db 0xFC, 0xFC ; 000FB0: provisional 68k dc.w $fcfc
db 0x03, 0xF0, 0x3F, 0x0C ; 000FB2: provisional 68k bset.b d1, (a0, d3.l * 8)
db 0xFC, 0x3F ; 000FB6: provisional 68k dc.w $fc3f
db 0xC0, 0x03 ; 000FB8: provisional 68k and.b d3, d0
db 0xF3, 0xF0 ; 000FBA: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 000FBC: provisional 68k bset.b d7, d0
db 0x00, 0x0F ; file 000FBE
db 0xC0, 0x03 ; 000FC0: provisional 68k and.b d3, d0
db 0xF3, 0xF0 ; 000FC2: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 000FC4: provisional 68k bset.b d7, d0
db 0x00, 0x00, 0xFC, 0x03 ; 000FC6: provisional 68k ori.b #$3, d0
db 0x03, 0xF0, 0x00, 0xFC ; 000FCA: provisional 68k bset.b d1, -$4(a0, d0.w)
db 0xFC, 0x03 ; 000FCE: provisional 68k dc.w $fc03
db 0xF0, 0x3F ; 000FD0: provisional 68k dc.w $f03f
db 0x0F, 0xC0 ; 000FD2: provisional 68k bset.b d7, d0
db 0x8F, 0x00 ; 000FD4: provisional 68k sbcd.b d0, d7
db 0x04, 0x0F ; file 000FD6
db 0xFF, 0xFF ; 000FD8: provisional 68k dc.w $ffff
db 0xC3, 0x84 ; file 000FDA
db 0xF0, 0x82 ; 000FDC: provisional 68k dc.w $f082
db 0x00, 0x31, 0x3F, 0xC0, 0x00, 0x3F ; 000FDE: provisional 68k ori.b #$c0, $3f(a1, d0.w)
db 0xC0, 0x00 ; 000FE4: provisional 68k and.b d0, d0
db 0x00, 0x0F ; file 000FE6
db 0x03, 0xF0, 0x00, 0x03 ; 000FE8: provisional 68k bset.b d1, $3(a0, d0.w)
db 0xF0, 0x00 ; 000FEC: provisional 68k dc.w $f000
db 0xFC, 0xFC ; 000FEE: provisional 68k dc.w $fcfc
db 0x03, 0xF0, 0x3F, 0x00 ; 000FF0: provisional 68k bset.b d1, (a0, d3.l * 8)
db 0xFC, 0x0F ; 000FF4: provisional 68k dc.w $fc0f
db 0xC0, 0x03 ; 000FF6: provisional 68k and.b d3, d0
db 0xF3, 0xF0 ; 000FF8: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 000FFA: provisional 68k bset.b d7, d0
db 0x00, 0x0F ; file 000FFC
db 0xC0, 0x03 ; 000FFE: provisional 68k and.b d3, d0
db 0xF3, 0xF0 ; 001000: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 001002: provisional 68k bset.b d7, d0
db 0x00, 0x00, 0x3F, 0x0F ; 001004: provisional 68k ori.b #$f, d0
db 0x03, 0xF0, 0x00, 0xFC ; 001008: provisional 68k bset.b d1, -$4(a0, d0.w)
db 0xFC, 0x03 ; 00100C: provisional 68k dc.w $fc03
db 0xF0, 0x3F ; 00100E: provisional 68k dc.w $f03f
db 0x0F, 0x90 ; 001010: provisional 68k bclr.b d7, (a0)
db 0x00, 0x3A ; file 001012
db 0x0F, 0xC3 ; 001014: provisional 68k bset.b d7, d3
db 0xFC, 0x03 ; 001016: provisional 68k dc.w $fc03
db 0xF0, 0x00 ; 001018: provisional 68k dc.w $f000
db 0xF3, 0x00 ; 00101A: provisional 68k dc.w $f300
db 0x00, 0x30, 0x03, 0xF0, 0x30, 0x03 ; 00101C: provisional 68k ori.b #$f0, $3(a0, d3.w)
db 0xF0, 0x00 ; 001022: provisional 68k dc.w $f000
db 0x00, 0xF0 ; file 001024
db 0x03, 0xF0, 0x00, 0x03 ; 001026: provisional 68k bset.b d1, $3(a0, d0.w)
db 0xF0, 0x00 ; 00102A: provisional 68k dc.w $f000
db 0xFC, 0xFC ; 00102C: provisional 68k dc.w $fcfc
db 0x03, 0xF0, 0x3F, 0x00 ; 00102E: provisional 68k bset.b d1, (a0, d3.l * 8)
db 0xFC, 0x0F ; 001032: provisional 68k dc.w $fc0f
db 0xC0, 0x03 ; 001034: provisional 68k and.b d3, d0
db 0xF3, 0xF0 ; 001036: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 001038: provisional 68k bset.b d7, d0
db 0x00, 0x0F ; file 00103A
db 0xC0, 0x03 ; 00103C: provisional 68k and.b d3, d0
db 0xF3, 0xF0 ; 00103E: provisional 68k dc.w $f3f0
db 0x0F, 0xC0 ; 001040: provisional 68k bset.b d7, d0
db 0x00, 0x00, 0x3F, 0x0C ; 001042: provisional 68k ori.b #$c, d0
db 0x03, 0xF0, 0x00, 0xFC ; 001046: provisional 68k bset.b d1, -$4(a0, d0.w)
db 0xFC, 0x03 ; 00104A: provisional 68k dc.w $fc03
db 0xF0, 0x3F ; 00104C: provisional 68k dc.w $f03f
db 0x91, 0x00 ; 00104E: provisional 68k subx.b d0, d0
db 0x3A, 0x0F ; 001050: provisional 68k move.w a7, d5
db 0xC0, 0x00 ; 001052: provisional 68k and.b d0, d0
db 0x03, 0xF0, 0x00, 0xFF ; 001054: provisional 68k bset.b d1, -$1(a0, d0.w)
db 0x00, 0xC0 ; file 001058
db 0x3C, 0x03 ; 00105A: provisional 68k move.w d3, d6
db 0xF0, 0x3C ; 00105C: provisional 68k dc.w $f03c
db 0x03, 0xF0, 0x00, 0x03 ; 00105E: provisional 68k bset.b d1, $3(a0, d0.w)
db 0xF0, 0x03 ; 001062: provisional 68k dc.w $f003
db 0xF0, 0x00 ; 001064: provisional 68k dc.w $f000
db 0x03, 0xF0, 0x00, 0xFC ; 001066: provisional 68k bset.b d1, -$4(a0, d0.w)
db 0xFC, 0x03 ; 00106A: provisional 68k dc.w $fc03
db 0xF0, 0x3F ; 00106C: provisional 68k dc.w $f03f
db 0x00, 0xFC ; file 00106E
db 0x0F, 0xF0, 0x0F, 0xF3, 0xF0, 0x0F, 0xC0, 0x00, 0x0F, 0xF0, 0x0F, 0xF3 ; 001070: provisional 68k bset.b d7, ([$f00fc000], $ff00ff3)
db 0xF0, 0x0F ; 00107C: provisional 68k dc.w $f00f
db 0xC0, 0x00 ; 00107E: provisional 68k and.b d0, d0
db 0x00, 0x0F ; file 001080
db 0xFC, 0x03 ; 001082: provisional 68k dc.w $fc03
db 0xFC, 0x03 ; 001084: provisional 68k dc.w $fc03
db 0xFC, 0xFC ; 001086: provisional 68k dc.w $fcfc
db 0x03, 0xF0, 0x3F, 0x91 ; 001088: provisional 68k bset.b d1, ([, d3.l * 8])
db 0x00, 0x3A ; file 00108C
db 0x0F, 0xC0 ; 00108E: provisional 68k bset.b d7, d0
db 0x00, 0x03, 0xF0, 0x00 ; 001090: provisional 68k ori.b #$0, d3
db 0xFF, 0x00 ; 001094: provisional 68k dc.w $ff00
db 0xF0, 0xFC ; 001096: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0xFC, 0x03 ; 001098: provisional 68k bset.b d1, $3(a0, a7.l)
db 0xF0, 0x00 ; 00109C: provisional 68k dc.w $f000
db 0x03, 0xF0, 0x03, 0xF0, 0x00, 0x03, 0xF0, 0x03 ; 00109E: provisional 68k bset.b d1, $3f003(invalid.w)
db 0xFC, 0xFC ; 0010A6: provisional 68k dc.w $fcfc
db 0x03, 0xF0, 0x3F, 0x00 ; 0010A8: provisional 68k bset.b d1, (a0, d3.l * 8)
db 0xFC, 0x03 ; 0010AC: provisional 68k dc.w $fc03
db 0xFF, 0xFF ; 0010AE: provisional 68k dc.w $ffff
db 0xC3, 0xF0, 0x0F, 0xC0 ; 0010B0: provisional 68k muls.w (invalid.w), d1
db 0x00, 0x03, 0xFF, 0xFF ; 0010B4: provisional 68k ori.b #$ff, d3
db 0xC3, 0xF0, 0x0F, 0xC0 ; 0010B8: provisional 68k muls.w (invalid.w), d1
db 0x00, 0x00, 0x0F, 0xFC ; 0010BC: provisional 68k ori.b #$fc, d0
db 0x00, 0xFF ; file 0010C0
db 0xFF, 0xF0 ; 0010C2: provisional 68k dc.w $fff0
db 0xFC, 0x03 ; 0010C4: provisional 68k dc.w $fc03
db 0xF0, 0x3F ; 0010C6: provisional 68k dc.w $f03f
db 0x91, 0x00 ; 0010C8: provisional 68k subx.b d0, d0
db 0x3A, 0x0F ; 0010CA: provisional 68k move.w a7, d5
db 0xC0, 0x00 ; 0010CC: provisional 68k and.b d0, d0
db 0x03, 0xF0, 0x00, 0x3F ; 0010CE: provisional 68k bset.b d1, $3f(a0, d0.w)
db 0xFF, 0xF0 ; 0010D2: provisional 68k dc.w $fff0
db 0xFF, 0xFF ; 0010D4: provisional 68k dc.w $ffff
db 0xF0, 0xFF ; 0010D6: provisional 68k dc.w $f0ff
db 0xFF, 0xF0 ; 0010D8: provisional 68k dc.w $fff0
db 0x00, 0x03, 0xFF, 0xFF ; 0010DA: provisional 68k ori.b #$ff, d3
db 0xF0, 0x00 ; 0010DE: provisional 68k dc.w $f000
db 0x03, 0xFF ; file 0010E0
db 0xFF, 0xF0 ; 0010E2: provisional 68k dc.w $fff0
db 0xFF, 0xFF ; 0010E4: provisional 68k dc.w $ffff
db 0xF0, 0x3F ; 0010E6: provisional 68k dc.w $f03f
db 0x00, 0xFC, 0x03, 0xFF ; file 0010E8
db 0xFF, 0xC3 ; 0010EC: provisional 68k dc.w $ffc3
db 0xF0, 0x0F ; 0010EE: provisional 68k dc.w $f00f
db 0xC0, 0x00 ; 0010F0: provisional 68k and.b d0, d0
db 0x03, 0xFF ; file 0010F2
db 0xFF, 0xC3 ; 0010F4: provisional 68k dc.w $ffc3
db 0xF0, 0x0F ; 0010F6: provisional 68k dc.w $f00f
db 0xC0, 0x00 ; 0010F8: provisional 68k and.b d0, d0
db 0x00, 0x03, 0xF0, 0x00 ; 0010FA: provisional 68k ori.b #$0, d3
db 0xFF, 0xFF ; 0010FE: provisional 68k dc.w $ffff
db 0xF0, 0xFF ; 001100: provisional 68k dc.w $f0ff
db 0xFF, 0xF0 ; 001102: provisional 68k dc.w $fff0
db 0x3F, 0x91, 0x00, 0x3B ; 001104: provisional 68k move.w (a1), $3b(a7, d0.w)
db 0xFF, 0xFC ; 001108: provisional 68k dc.w $fffc
db 0x00, 0x0F ; file 00110A
db 0xFF, 0x00 ; 00110C: provisional 68k dc.w $ff00
db 0x3F, 0xFF ; file 00110E
db 0xF0, 0xFF ; 001110: provisional 68k dc.w $f0ff
db 0xFF, 0xC0 ; 001112: provisional 68k dc.w $ffc0
db 0xFF, 0xFF ; 001114: provisional 68k dc.w $ffff
db 0xC0, 0x00 ; 001116: provisional 68k and.b d0, d0
db 0x00, 0xFF ; file 001118
db 0xFF, 0xF0 ; 00111A: provisional 68k dc.w $fff0
db 0x00, 0x03, 0xFF, 0xFF ; 00111C: provisional 68k ori.b #$ff, d3
db 0xC0, 0x3F ; file 001120
db 0xF3, 0xF0 ; 001122: provisional 68k dc.w $f3f0
db 0xFF, 0xC3 ; 001124: provisional 68k dc.w $ffc3
db 0xFF, 0x00 ; 001126: provisional 68k dc.w $ff00
db 0xFF, 0xFF ; 001128: provisional 68k dc.w $ffff
db 0x0F, 0xFC, 0x3F, 0xF0 ; file 00112A
db 0x00, 0x00, 0xFF, 0xFF ; 00112E: provisional 68k ori.b #$ff, d0
db 0x0F, 0xFC, 0x3F, 0xF0 ; file 001132
db 0x00, 0x00, 0x03, 0xF0 ; 001136: provisional 68k ori.b #$f0, d0
db 0x00, 0x3F ; file 00113A
db 0xFF, 0xC0 ; 00113C: provisional 68k dc.w $ffc0
db 0x3F, 0xF3 ; file 00113E
db 0xF0, 0xFF ; 001140: provisional 68k dc.w $f0ff
db 0xF0, 0x90 ; 001142: provisional 68k dc.w $f090
db 0x00, 0x3B, 0x3F, 0xFC, 0x00, 0x0F ; file 001144
db 0xFC, 0x00 ; 00114A: provisional 68k dc.w $fc00
db 0x0F, 0xFF, 0x00, 0x3F ; file 00114C
db 0xFF, 0xC0 ; 001150: provisional 68k dc.w $ffc0
db 0x3F, 0xFF ; file 001152
db 0xC0, 0x00 ; 001154: provisional 68k and.b d0, d0
db 0x00, 0x3F ; file 001156
db 0xFF, 0xFC ; 001158: provisional 68k dc.w $fffc
db 0x00, 0x00, 0xFF, 0xFF ; 00115A: provisional 68k ori.b #$ff, d0
db 0x00, 0x0F, 0x0F, 0xFC ; file 00115E
db 0xFF, 0xC3 ; 001162: provisional 68k dc.w $ffc3
db 0xFF, 0x00 ; 001164: provisional 68k dc.w $ff00
db 0x3F, 0xFC, 0x0F, 0xFC, 0x3F, 0xF0 ; file 001166
db 0x00, 0x00, 0x3F, 0xFC ; 00116C: provisional 68k ori.b #$fc, d0
db 0x0F, 0xFC, 0x3F, 0xF0 ; file 001170
db 0x00, 0x00, 0x03, 0xF0 ; 001174: provisional 68k ori.b #$f0, d0
db 0x00, 0x0F ; file 001178
db 0xFF, 0x00 ; 00117A: provisional 68k dc.w $ff00
db 0x0F, 0x0F, 0xFC, 0xFF ; 00117C: provisional 68k movep.w -$301(a7), d7
db 0xC0, 0xC0 ; 001180: provisional 68k mulu.w d0, d0
db 0x00, 0x02, 0x03, 0xF0 ; 001182: provisional 68k ori.b #$f0, d2
db 0xC9, 0x00 ; 001186: provisional 68k abcd.b d0, d4
db 0x02, 0x3F ; file 001188
db 0xF0, 0xC9 ; 00118A: provisional 68k dc.w $f0c9
db 0x00, 0x02, 0x0F, 0xF0 ; 00118C: provisional 68k ori.b #$f0, d2
db 0xC9, 0x00 ; 001190: provisional 68k abcd.b d0, d4
db 0x02, 0x03, 0xC0, 0xFF ; 001192: provisional 68k andi.b #$ff, d3
db 0x00, 0xFF, 0x00, 0xDE ; file 001196
db 0x00, 0x04, 0x03, 0xFC ; 00119A: provisional 68k ori.b #$fc, d4
db 0x0F, 0xF0, 0xC1, 0x00 ; 00119E: provisional 68k bset.b d7, (a0, a4.w)
db 0x01, 0x30, 0x86, 0x00 ; 0011A2: provisional 68k btst.l d0, (a0, a0.w * 8)
db 0x03, 0xFC ; file 0011A6
db 0x03, 0xF0, 0x87, 0x00 ; 0011A8: provisional 68k bset.b d1, (a0, a0.w * 8)
db 0x01, 0x03 ; 0011AC: provisional 68k btst.l d0, d3
db 0x8C, 0x00 ; 0011AE: provisional 68k or.b d0, d6
db 0x03, 0x3F ; file 0011B0
db 0x00, 0x30, 0xA9, 0x00, 0x02, 0x03 ; 0011B2: provisional 68k ori.b #$0, $3(a0, d0.w)
db 0xF0, 0x86 ; 0011B8: provisional 68k dc.w $f086
db 0x00, 0x03, 0xFC, 0x03 ; 0011BA: provisional 68k ori.b #$3, d3
db 0xF0, 0x87 ; 0011BE: provisional 68k dc.w $f087
db 0x00, 0x01, 0x3F, 0x8C ; 0011C0: provisional 68k ori.b #$8c, d1
db 0x00, 0x03, 0x3F, 0x03 ; 0011C4: provisional 68k ori.b #$3, d3
db 0xF0, 0xA9 ; 0011C8: provisional 68k dc.w $f0a9
db 0x00, 0x02, 0x0F, 0xF0 ; 0011CA: provisional 68k ori.b #$f0, d2
db 0x86, 0x00 ; 0011CE: provisional 68k or.b d0, d3
db 0x03, 0xFC ; file 0011D0
db 0x03, 0xF0, 0x87, 0x00 ; 0011D2: provisional 68k bset.b d1, (a0, a0.w * 8)
db 0x01, 0xFF ; file 0011D6
db 0x8D, 0x00 ; 0011D8: provisional 68k sbcd.b d0, d6
db 0x02, 0x0F ; file 0011DA
db 0xF0, 0xA1 ; 0011DC: provisional 68k dc.w $f0a1
db 0x00, 0x1E, 0x03, 0xFC ; 0011DE: provisional 68k ori.b #$fc, (a6)+
db 0x00, 0xFF ; file 0011E2
db 0xF0, 0x3F ; 0011E4: provisional 68k dc.w $f03f
db 0xF3, 0xFC ; 0011E6: provisional 68k dc.w $f3fc
db 0x03, 0xF0, 0x3F, 0xF3, 0xF0, 0x3F, 0xFC, 0x00, 0xFC, 0x03, 0xF0, 0x00 ; 0011E8: provisional 68k bset.b d1, ([$f03ffc00], $fc03f000)
db 0xFF, 0xF0 ; 0011F4: provisional 68k dc.w $fff0
db 0xFF, 0xCF ; 0011F6: provisional 68k dc.w $ffcf
db 0xC0, 0x00 ; 0011F8: provisional 68k and.b d0, d0
db 0x3F, 0x00 ; 0011FA: provisional 68k move.w d0, -(a7)
db 0x0F, 0xFF ; file 0011FC
db 0x83, 0x00 ; 0011FE: provisional 68k sbcd.b d0, d1
db 0x09, 0x0F, 0xFF, 0x0F ; 001200: provisional 68k movep.w -$f1(a7), d4
db 0xFF, 0x3F ; 001204: provisional 68k dc.w $ff3f
db 0xC0, 0xFF ; file 001206
db 0xC3, 0xF0, 0xA1, 0x00 ; 001208: provisional 68k muls.w (a0, a2.w), d1
db 0x2B, 0x3C, 0x0F, 0x03, 0xC0, 0x3C ; 00120C: provisional 68k move.l #$f03c03c, -(a5)
db 0x0F, 0xFF ; file 001212
db 0xFF, 0x0F ; 001214: provisional 68k dc.w $ff0f
db 0xFF, 0xCF ; 001216: provisional 68k dc.w $ffcf
db 0xCF, 0xFC, 0xF0, 0x0F ; 001218: provisional 68k muls.w #$f00f, d7
db 0x00, 0xFC ; file 00121C
db 0x03, 0xF0, 0x03, 0x00 ; 00121E: provisional 68k bset.b d1, (a0, d0.w * 2)
db 0xFC, 0x3F ; 001222: provisional 68k dc.w $fc3f
db 0x3F, 0xF0, 0x00, 0xFF ; file 001224
db 0xFC, 0x3C ; 001228: provisional 68k dc.w $fc3c
db 0x03, 0xC0 ; 00122A: provisional 68k bset.b d1, d0
db 0x00, 0x00, 0x30, 0x0F ; 00122C: provisional 68k ori.b #$f, d0
db 0xC3, 0xF0, 0xC3, 0x00 ; 001230: provisional 68k muls.w (a0, a4.w * 2), d1
db 0x3F, 0x0F ; 001234: provisional 68k move.w a7, -(a7)
db 0xFF, 0xC0 ; 001236: provisional 68k dc.w $ffc0
db 0xA0, 0x00 ; 001238: provisional 68k dc.w $a000
db 0x2B, 0xF0 ; file 00123A
db 0x0F, 0x0F, 0x00, 0x0F ; 00123C: provisional 68k movep.w $f(a7), d7
db 0x0F, 0xF0, 0x3F, 0x03, 0xF3, 0xCF, 0xFF, 0xFF ; 001240: provisional 68k bset.b d7, ([a0, d3.l * 8], $f3cfffff)
db 0xC0, 0x03 ; 001248: provisional 68k and.b d3, d0
db 0xC0, 0xFC, 0x03, 0xF0 ; 00124A: provisional 68k mulu.w #$3f0, d0
db 0x0C, 0x00, 0xFC, 0x3F ; 00124E: provisional 68k cmpi.b #$3f, d0
db 0xFF, 0xF0 ; 001252: provisional 68k dc.w $fff0
db 0x00, 0x3F ; file 001254
db 0x3C, 0xF0, 0x00, 0xF0 ; 001256: provisional 68k move.w -$10(a0, d0.w), (a6)+
db 0x00, 0x00, 0xC0, 0x0F ; 00125A: provisional 68k ori.b #$f, d0
db 0xC0, 0xFC, 0x0C, 0x00 ; 00125E: provisional 68k mulu.w #$c00, d0
db 0x3F, 0x03 ; 001262: provisional 68k move.w d3, -(a7)
db 0xF3, 0xC0 ; 001264: provisional 68k dc.w $f3c0
db 0xA0, 0x00 ; 001266: provisional 68k dc.w $a000
db 0x2B, 0xC0 ; file 001268
db 0xFF, 0x3F ; 00126A: provisional 68k dc.w $ff3f
db 0x00, 0x0F ; file 00126C
db 0x0F, 0xC0 ; 00126E: provisional 68k bset.b d7, d0
db 0x3F, 0x03 ; 001270: provisional 68k move.w d3, -(a7)
db 0xF3, 0xCF ; 001272: provisional 68k dc.w $f3cf
db 0xC0, 0xFF ; file 001274
db 0xC0, 0x03 ; 001276: provisional 68k and.b d3, d0
db 0xC0, 0xFC, 0x03, 0xF0 ; 001278: provisional 68k mulu.w #$3f0, d0
db 0x0C, 0x03, 0xF0, 0x3F ; 00127C: provisional 68k cmpi.b #$3f, d3
db 0x03, 0xF0, 0x00, 0x3F ; 001280: provisional 68k bset.b d1, $3f(a0, d0.w)
db 0x3F, 0xF0 ; file 001284
db 0x00, 0xF0 ; 001286: provisional 68k dc.w $f0
db 0x00, 0x00, 0xC0, 0x3F ; 001288: provisional 68k ori.b #$3f, d0
db 0x00, 0x3F ; file 00128C
db 0x30, 0x00 ; 00128E: provisional 68k move.w d0, d0
db 0x3F, 0x03 ; 001290: provisional 68k move.w d3, -(a7)
db 0xF3, 0xC0 ; 001292: provisional 68k dc.w $f3c0
db 0x9F, 0x00 ; 001294: provisional 68k subx.b d0, d7
db 0x2C, 0x03 ; 001296: provisional 68k move.l d3, d6
db 0xC0, 0x3C, 0x3F, 0x00 ; 001298: provisional 68k and.b #$0, d0
db 0x0F, 0xCF, 0xC0, 0x3F ; 00129C: provisional 68k movep.l d7, -$3fc1(a7)
db 0x03, 0xF0, 0xCF, 0xC3, 0xFF, 0xC0, 0x03, 0xF0 ; 0012A0: provisional 68k bset.b d1, ([], $ffc003f0)
db 0xFC, 0x03 ; 0012A8: provisional 68k dc.w $fc03
db 0xF0, 0x3C ; 0012AA: provisional 68k dc.w $f03c
db 0x0F, 0x00 ; 0012AC: provisional 68k btst.l d7, d0
db 0x3F, 0x0F ; 0012AE: provisional 68k move.w a7, -(a7)
db 0xC0, 0x00 ; 0012B0: provisional 68k and.b d0, d0
db 0x3F, 0x0F ; 0012B2: provisional 68k move.w a7, -(a7)
db 0xF0, 0x00 ; 0012B4: provisional 68k dc.w $f000
db 0xFC, 0x00 ; 0012B6: provisional 68k dc.w $fc00
db 0x03, 0xC0 ; 0012B8: provisional 68k bset.b d1, d0
db 0xF0, 0x00 ; 0012BA: provisional 68k dc.w $f000
db 0x0F, 0xC0 ; 0012BC: provisional 68k bset.b d7, d0
db 0x00, 0x3F ; file 0012BE
db 0x03, 0xF0, 0xC0, 0x9F ; 0012C0: provisional 68k bset.b d1, -$61(a0, a4.w)
db 0x00, 0x2B, 0x03, 0xC0, 0x00, 0x3F ; 0012C4: provisional 68k ori.b #$c0, $3f(a3)
db 0x00, 0x0F ; file 0012CA
db 0xCF, 0xC0 ; 0012CC: provisional 68k muls.w d0, d7
db 0x3F, 0x03 ; 0012CE: provisional 68k move.w d3, -(a7)
db 0xF0, 0x0F ; 0012D0: provisional 68k dc.w $f00f
db 0xC3, 0xCF ; file 0012D2
db 0xC0, 0x03 ; 0012D4: provisional 68k and.b d3, d0
db 0xF0, 0xFC ; 0012D6: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0x3C, 0x3C ; 0012D8: provisional 68k bset.b d1, $3c(a0, d3.l)
db 0x00, 0x3F ; file 0012DC
db 0x0F, 0x00 ; 0012DE: provisional 68k btst.l d7, d0
db 0x00, 0x3F ; file 0012E0
db 0x03, 0xF0, 0x00, 0xFC ; 0012E2: provisional 68k bset.b d1, -$4(a0, d0.w)
db 0x00, 0x03, 0xC3, 0xC0 ; 0012E6: provisional 68k ori.b #$c0, d3
db 0x00, 0x0F ; file 0012EA
db 0xC0, 0x00 ; 0012EC: provisional 68k and.b d0, d0
db 0x3F, 0x03 ; 0012EE: provisional 68k move.w d3, -(a7)
db 0xF0, 0xA0 ; 0012F0: provisional 68k dc.w $f0a0
db 0x00, 0x18, 0x03, 0xC0 ; 0012F2: provisional 68k ori.b #$c0, (a0)+
db 0x00, 0x3F, 0x00, 0x0F ; file 0012F6
db 0xCF, 0xC0 ; 0012FA: provisional 68k muls.w d0, d7
db 0x3F, 0x03 ; 0012FC: provisional 68k move.w d3, -(a7)
db 0xF0, 0x0F ; 0012FE: provisional 68k dc.w $f00f
db 0xC0, 0x0F ; file 001300
db 0xC0, 0x03 ; 001302: provisional 68k and.b d3, d0
db 0xF0, 0xFC ; 001304: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0x3C, 0xC0 ; 001306: provisional 68k bset.b d1, -$40(a0, d3.l)
db 0x00, 0x3F ; file 00130A
db 0x83, 0x00 ; 00130C: provisional 68k sbcd.b d0, d1
db 0x10, 0x3F ; file 00130E
db 0x03, 0xF0, 0x00, 0xFC ; 001310: provisional 68k bset.b d1, -$4(a0, d0.w)
db 0x00, 0x03, 0xCC, 0x00 ; 001314: provisional 68k ori.b #$0, d3
db 0x00, 0x0F ; file 001318
db 0xF0, 0x00 ; 00131A: provisional 68k dc.w $f000
db 0x3F, 0x03 ; 00131C: provisional 68k move.w d3, -(a7)
db 0xF0, 0xA0 ; 00131E: provisional 68k dc.w $f0a0
db 0x00, 0x18, 0x03, 0xC0 ; 001320: provisional 68k ori.b #$c0, (a0)+
db 0x03, 0x3F, 0xC0, 0x3F ; file 001324
db 0xCF, 0xC0 ; 001328: provisional 68k muls.w d0, d7
db 0x3F, 0x03 ; 00132A: provisional 68k move.w d3, -(a7)
db 0xF0, 0x0F ; 00132C: provisional 68k dc.w $f00f
db 0xC0, 0x0F ; file 00132E
db 0xF0, 0x0F ; 001330: provisional 68k dc.w $f00f
db 0xF0, 0xFC ; 001332: provisional 68k dc.w $f0fc
db 0x03, 0xF0, 0x3F, 0xC0 ; 001334: provisional 68k bset.b d1, (invalid.w)
db 0x30, 0x3F ; file 001338
db 0x83, 0x00 ; 00133A: provisional 68k sbcd.b d0, d1
db 0x10, 0x3F, 0x03, 0xFC, 0x03, 0xFC ; file 00133C
db 0x00, 0x03, 0xFC, 0x03 ; 001342: provisional 68k ori.b #$3, d3
db 0x00, 0x3C ; file 001346
db 0xFC, 0x00 ; 001348: provisional 68k dc.w $fc00
db 0x3F, 0x03 ; 00134A: provisional 68k move.w d3, -(a7)
db 0xF0, 0xA0 ; 00134C: provisional 68k dc.w $f0a0
db 0x00, 0x18, 0x03, 0xFC ; 00134E: provisional 68k ori.b #$fc, (a0)+
db 0x03, 0xCF, 0xFF, 0xFF ; 001352: provisional 68k movep.l d1, -$1(a7)
db 0x0F, 0xC0 ; 001356: provisional 68k bset.b d7, d0
db 0x3F, 0x03 ; 001358: provisional 68k move.w d3, -(a7)
db 0xF0, 0x0F ; 00135A: provisional 68k dc.w $f00f
db 0xC0, 0x03 ; 00135C: provisional 68k and.b d3, d0
db 0xFF, 0xFF ; 00135E: provisional 68k dc.w $ffff
db 0xC0, 0xFC, 0x03, 0xF0 ; 001360: provisional 68k mulu.w #$3f0, d0
db 0x3F, 0xC0, 0x3C, 0x3F ; file 001364
db 0x83, 0x00 ; 001368: provisional 68k sbcd.b d0, d1
db 0x10, 0x3F, 0x00, 0xFF ; file 00136A
db 0xFF, 0xF0 ; 00136E: provisional 68k dc.w $fff0
db 0x00, 0x03, 0xFC, 0x03 ; 001370: provisional 68k ori.b #$3, d3
db 0xC0, 0xF0, 0xFF, 0x00 ; 001374: provisional 68k mulu.w (a0, a7.l * 8), d0
db 0x3F, 0x03 ; 001378: provisional 68k move.w d3, -(a7)
db 0xF0, 0xA1 ; 00137A: provisional 68k dc.w $f0a1
db 0x00, 0x82, 0xFF, 0x15, 0xCF, 0xFF ; 00137C: provisional 68k ori.l #$ff15cfff, d2
db 0xFF, 0x0F ; 001382: provisional 68k dc.w $ff0f
db 0xC0, 0x3F ; file 001384
db 0x03, 0xF0, 0x0F, 0xC0 ; 001386: provisional 68k bset.b d1, (invalid.w)
db 0x03, 0xFF ; file 00138A
db 0xFF, 0xC0 ; 00138C: provisional 68k dc.w $ffc0
db 0xFC, 0x03 ; 00138E: provisional 68k dc.w $fc03
db 0xF0, 0x0F ; 001390: provisional 68k dc.w $f00f
db 0xFF, 0xFC ; 001392: provisional 68k dc.w $fffc
db 0x3F, 0x83, 0x00, 0x12 ; 001394: provisional 68k move.w d3, $12(a7, d0.w)
db 0x3F, 0x00 ; 001398: provisional 68k move.w d0, -(a7)
db 0xFF, 0xFF ; 00139A: provisional 68k dc.w $ffff
db 0xF0, 0x00 ; 00139C: provisional 68k dc.w $f000
db 0x00, 0xFF ; file 00139E
db 0xFF, 0xC3 ; 0013A0: provisional 68k dc.w $ffc3
db 0xC0, 0x3F, 0xC0, 0x3F ; file 0013A2
db 0x03, 0xF0, 0x00, 0xC0 ; 0013A6: provisional 68k bset.b d1, -$40(a0, d0.w)
db 0x9F, 0x00 ; 0013AA: provisional 68k subx.b d0, d7
db 0x82, 0xFF ; file 0013AC
db 0x2A, 0xC3 ; 0013AE: provisional 68k move.l d3, (a5)+
db 0xFF, 0xFC ; 0013B0: provisional 68k dc.w $fffc
db 0x3F, 0xF0 ; file 0013B2
db 0xFF, 0xCF ; 0013B4: provisional 68k dc.w $ffcf
db 0xFC, 0x3F ; 0013B6: provisional 68k dc.w $fc3f
db 0xFC, 0x00 ; 0013B8: provisional 68k dc.w $fc00
db 0xFF, 0xFF ; 0013BA: provisional 68k dc.w $ffff
db 0x03, 0xFF, 0x0F, 0xFC, 0x0F, 0xFF ; file 0013BC
db 0xFC, 0xFF ; 0013C2: provisional 68k dc.w $fcff
db 0xF0, 0x00 ; 0013C4: provisional 68k dc.w $f000
db 0x00, 0xFF, 0xC0, 0x3F ; file 0013C6
db 0xFF, 0xC0 ; 0013CA: provisional 68k dc.w $ffc0
db 0x00, 0x00, 0xFF, 0xFF ; 0013CC: provisional 68k ori.b #$ff, d0
db 0xCF, 0xFC, 0x3F, 0xF0 ; 0013D0: provisional 68k muls.w #$3ff0, d7
db 0xFF, 0xCF ; 0013D4: provisional 68k dc.w $ffcf
db 0xFC, 0x03 ; 0013D6: provisional 68k dc.w $fc03
db 0xF0, 0x9F ; 0013D8: provisional 68k dc.w $f09f
db 0x00, 0x1E, 0x3F, 0xFF ; 0013DA: provisional 68k ori.b #$ff, (a6)+
db 0x00, 0xFF ; file 0013DE
db 0xF0, 0x3F ; 0013E0: provisional 68k dc.w $f03f
db 0xF0, 0xFF ; 0013E2: provisional 68k dc.w $f0ff
db 0xCF, 0xFC, 0x3F, 0xF0 ; 0013E4: provisional 68k muls.w #$3ff0, d7
db 0x00, 0x3F ; file 0013E8
db 0xFC, 0x03 ; 0013EA: provisional 68k dc.w $fc03
db 0xFF, 0x0F ; 0013EC: provisional 68k dc.w $ff0f
db 0xFC, 0x03 ; 0013EE: provisional 68k dc.w $fc03
db 0xFF, 0xC0 ; 0013F0: provisional 68k dc.w $ffc0
db 0xFF, 0xC0 ; 0013F2: provisional 68k dc.w $ffc0
db 0x00, 0x00, 0xFF, 0xC0 ; 0013F4: provisional 68k ori.b #$c0, d0
db 0x0F, 0xFF ; file 0013F8
db 0x83, 0x00 ; 0013FA: provisional 68k sbcd.b d0, d1
db 0x0B, 0x3F ; file 0013FC
db 0xFC, 0x0F ; 0013FE: provisional 68k dc.w $fc0f
db 0xF0, 0xFF ; 001400: provisional 68k dc.w $f0ff
db 0xF0, 0xFF ; 001402: provisional 68k dc.w $f0ff
db 0xCF, 0xFC, 0x00, 0xC0 ; 001404: provisional 68k muls.w #$c0, d7
db 0x8F, 0x00 ; 001408: provisional 68k sbcd.b d0, d7
db 0x00, 0x07, 0x00, 0x00 ; 00140A: provisional 68k ori.b #$0, d7
db 0x00, 0x1F, 0x00, 0x30 ; 00140E: provisional 68k ori.b #$30, (a7)+
db 0x00, 0x00, 0x00, 0x58 ; 001412: provisional 68k ori.b #$58, d0
db 0x00, 0x00, 0x00, 0x00 ; 001416: provisional 68k ori.b #$0, d0
db 0x00, 0x0C ; file 00141A
db 0x00, 0x1E, 0x00, 0x00 ; 00141C: provisional 68k ori.b #$0, (a6)+
db 0x00, 0x0A ; file 001420
db 0x00, 0x06, 0x00, 0x0A ; 001422: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 001426: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 00142A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 00142E: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 001432: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 001436: provisional 68k ori.b #$5, d4
db 0x00, 0x04, 0x00, 0x03 ; 00143A: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 00143E: provisional 68k ori.b #$1, d2
db 0x00, 0x0C ; file 001442
db 0x02, 0x40, 0x04, 0x96 ; 001444: provisional 68k andi.w #$496, d0
db 0x06, 0xFE ; file 001448
db 0x09, 0x9A ; 00144A: provisional 68k bclr.b d4, (a2)+
db 0x0C, 0x50, 0x00, 0x00 ; 00144C: provisional 68k cmpi.w #$0, (a0)
db 0x00, 0x00, 0x00, 0x20 ; 001450: provisional 68k ori.b #$20, d0
db 0x00, 0x30, 0x00, 0x10, 0x08, 0x08 ; 001454: provisional 68k ori.b #$10, $8(a0, d0.l)
db 0x08, 0x10 ; file 00145A
db 0x10, 0x10 ; 00145C: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00145E: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001460: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001462: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001464: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 001468: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00146C: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00146E: provisional 68k neg.w d4
db 0x10, 0x18 ; 001470: provisional 68k move.b (a0)+, d0
db 0x20, 0xB0, 0xB8, 0xB4 ; 001472: provisional 68k move.l -$4c(a0, a3.l), (a0)
db 0x64, 0x6C ; 001476: provisional 68k bcc.b $14e4
db 0x80, 0x44 ; 001478: provisional 68k or.w d4, d0
db 0x48, 0x78, 0xE8, 0xF0 ; 00147A: provisional 68k pea.l $e8f0.w
db 0xEC, 0x34 ; 00147E: provisional 68k roxr.l #$6, d4
db 0x3C, 0x54 ; 001480: provisional 68k movea.w (a4), a6
db 0x08, 0x08, 0x5C, 0x7C, 0x84, 0x8C ; file 001482
db 0xFF, 0xFF ; 001488: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00148A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00148C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00148E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001490: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001492: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001494: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001496: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001498: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00149A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00149C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00149E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0014A0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0014A2: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 0014A4: provisional 68k btst.l d3, d1
db 0xA9, 0x9B ; 0014A6: provisional 68k dc.w $a99b
db 0xFF, 0xFF ; 0014A8: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 0014AA: provisional 68k btst.l d3, d1
db 0xFC, 0x9A ; 0014AC: provisional 68k dc.w $fc9a
db 0xFF, 0xFF ; 0014AE: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 0014B0: provisional 68k btst.l d3, d1
db 0xB9, 0xFD ; file 0014B2
db 0xFF, 0xFF ; 0014B4: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 0014B6: provisional 68k btst.l d3, d1
db 0xB9, 0xF1, 0x01, 0x03, 0xF9, 0x9D, 0x19, 0x91 ; 0014B8: provisional 68k cmpa.l ([a1, d0.w], $f99d1991), a4
db 0xFF, 0xFF ; 0014C0: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 0014C2: provisional 68k btst.l d2, d3
db 0xFF, 0xAD ; 0014C4: provisional 68k dc.w $ffad
db 0xA9, 0xF1 ; 0014C6: provisional 68k dc.w $a9f1
db 0x01, 0x04 ; 0014C8: provisional 68k btst.l d0, d4
db 0xFC, 0xFD ; 0014CA: provisional 68k dc.w $fcfd
db 0x1F, 0x9A, 0xEE, 0xFF ; 0014CC: provisional 68k move.b (a2)+, -$1(a7, a6.l)
db 0xFF, 0x04 ; 0014D0: provisional 68k dc.w $ff04
db 0x04, 0x1D, 0xFF, 0xDB ; 0014D2: provisional 68k subi.b #$db, (a5)+
db 0x99, 0x9B ; 0014D6: provisional 68k sub.l d4, (a3)+
db 0x01, 0x03 ; 0014D8: provisional 68k btst.l d0, d3
db 0x19, 0xA1, 0x1D, 0x99 ; 0014DA: provisional 68k move.b -(a1), ([, d1.l * 4])
db 0xFF, 0xFF ; 0014DE: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xBF, 0x9A ; 0014E0: provisional 68k subi.b #$9a, d4
db 0xDF, 0xCC ; 0014E4: provisional 68k adda.l a4, a7
db 0x9A, 0x01 ; 0014E6: provisional 68k sub.b d1, d5
db 0x04, 0x19, 0xA1, 0xEE ; 0014E8: provisional 68k subi.b #$ee, (a1)+
db 0xFC, 0xF1 ; 0014EC: provisional 68k dc.w $fcf1
db 0xFF, 0xFF ; 0014EE: provisional 68k dc.w $ffff
db 0x04, 0x07, 0x9C, 0xC9 ; 0014F0: provisional 68k subi.b #$c9, d7
db 0xAF, 0xCC ; 0014F4: provisional 68k dc.w $afcc
db 0x9B, 0xEE, 0x99, 0xFB ; 0014F6: provisional 68k suba.l -$6605(a6), a5
db 0x01, 0x01 ; 0014FA: provisional 68k btst.l d0, d1
db 0xAC, 0x9D ; 0014FC: provisional 68k dc.w $ac9d
db 0xFF, 0xFF ; 0014FE: provisional 68k dc.w $ffff
db 0x03, 0x08, 0x1D, 0x9C ; 001500: provisional 68k movep.w $1d9c(a0), d1
db 0xC9, 0xBA ; file 001504
db 0xCC, 0x9B ; 001506: provisional 68k and.l (a3)+, d6
db 0xEA, 0xCC ; file 001508
db 0x9A, 0x01 ; 00150A: provisional 68k sub.b d1, d5
db 0x01, 0xA9, 0x9B, 0xFF ; 00150C: provisional 68k bclr.b d0, -$6401(a1)
db 0xFF, 0x03 ; 001510: provisional 68k dc.w $ff03
db 0x08, 0xBB ; file 001512
db 0x9C, 0xCF ; 001514: provisional 68k suba.w a7, a6
db 0x8B, 0xCC ; file 001516
db 0x9B, 0xEF, 0xCC, 0x9B ; 001518: provisional 68k suba.l -$3365(a7), a5
db 0x01, 0x01 ; 00151C: provisional 68k btst.l d0, d1
db 0xBF, 0x9D ; 00151E: provisional 68k eor.l d7, (a5)+
db 0xFF, 0xFF ; 001520: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 001522
db 0xF9, 0xFA ; 001524: provisional 68k dc.w $f9fa
db 0x9C, 0xC9 ; 001526: provisional 68k suba.w a1, a6
db 0x8B, 0xCC ; file 001528
db 0x9B, 0x8F ; 00152A: provisional 68k subx.l -(a7), -(a5)
db 0xCC, 0x9D ; 00152C: provisional 68k and.l (a5)+, d6
db 0x01, 0x01 ; 00152E: provisional 68k btst.l d0, d1
db 0xB9, 0x9D ; 001530: provisional 68k eor.l d4, (a5)+
db 0xFF, 0xFF ; 001532: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x1F, 0xCC ; 001534: provisional 68k movep.w $1fcc(a2), d0
db 0x9D, 0xFC, 0xC9, 0xDA, 0xCC, 0x9B ; 001538: provisional 68k suba.l #$c9dacc9b, a6
db 0xEF, 0xCC ; file 00153E
db 0x9D, 0x01 ; 001540: provisional 68k subx.b d1, d6
db 0x01, 0xB9, 0x91, 0xFF, 0xFF, 0x01 ; 001542: provisional 68k bclr.b d0, $91ffff01.l
db 0x0A, 0x1F, 0xCC, 0xFD ; 001548: provisional 68k eori.b #$fd, (a7)+
db 0xFC, 0xC9 ; 00154C: provisional 68k dc.w $fcc9
db 0xBA, 0xCC ; 00154E: provisional 68k cmpa.w a4, a5
db 0x9B, 0xEF, 0xCC, 0x9D ; 001550: provisional 68k suba.l -$3363(a7), a5
db 0x01, 0x01 ; 001554: provisional 68k btst.l d0, d1
db 0xB9, 0x91 ; 001556: provisional 68k eor.l d4, (a1)
db 0xFF, 0xFF ; 001558: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x1A, 0x9C ; 00155A: provisional 68k movep.w $1a9c(a2), d0
db 0xFD, 0xAC ; 00155E: provisional 68k dc.w $fdac
db 0xC9, 0xAB, 0xCC, 0x9B ; 001560: provisional 68k and.l d4, -$3365(a3)
db 0xEF, 0xCC ; file 001564
db 0xF1, 0x01 ; 001566: provisional 68k dc.w $f101
db 0x01, 0xA9, 0xF1, 0xFF ; 001568: provisional 68k bclr.b d0, -$e01(a1)
db 0xFF, 0x01 ; 00156C: provisional 68k dc.w $ff01
db 0x0A, 0x1B, 0x9C, 0x9D ; 00156E: provisional 68k eori.b #$9d, (a3)+
db 0xB9, 0xC9 ; 001572: provisional 68k cmpa.l a1, a4
db 0xDB, 0xCC ; 001574: provisional 68k adda.l a4, a5
db 0x9D, 0xEF, 0xC9, 0xA1 ; 001576: provisional 68k suba.l -$365f(a7), a6
db 0x01, 0x01 ; 00157A: provisional 68k btst.l d0, d1
db 0xFC, 0xF1 ; 00157C: provisional 68k dc.w $fcf1
db 0xFF, 0xFF ; 00157E: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1B, 0x9C ; 001580: provisional 68k movep.w $1b9c(a5), d0
db 0xCA, 0xB9, 0xC9, 0xDD, 0xCC, 0x9B ; 001584: provisional 68k and.l $c9ddcc9b.l, d5
db 0xEF, 0xC9 ; file 00158A
db 0xB1, 0x1D ; 00158C: provisional 68k eor.b d0, (a5)+
db 0x9C, 0xFD ; file 00158E
db 0xFF, 0xFF ; 001590: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1B, 0x9C ; 001592: provisional 68k movep.w $1b9c(a5), d0
db 0xCF, 0xB9, 0xCC, 0xAD, 0xCC, 0x9B ; 001596: provisional 68k and.l d7, $ccadcc9b.l
db 0xD9, 0xC9 ; 00159C: provisional 68k adda.l a1, a4
db 0xB1, 0x1A ; 00159E: provisional 68k eor.b d0, (a2)+
db 0xFF, 0xBD ; 0015A0: provisional 68k dc.w $ffbd
db 0xFF, 0xFF ; 0015A2: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1D, 0xFC ; 0015A4: provisional 68k movep.w $1dfc(a5), d0
db 0xCD, 0x8F ; 0015A8: provisional 68k exg.l d6, a7
db 0xCC, 0xFD ; file 0015AA
db 0xCC, 0x9B ; 0015AC: provisional 68k and.l (a3)+, d6
db 0xD9, 0xC9 ; 0015AE: provisional 68k adda.l a1, a4
db 0xD1, 0xBC ; file 0015B0
db 0xC9, 0xAD, 0xFF, 0xFF ; 0015B2: provisional 68k and.l d4, -$1(a5)
db 0x01, 0x0D, 0x1D, 0xA9 ; 0015B6: provisional 68k movep.w $1da9(a5), d0
db 0xC9, 0xDA ; 0015BA: provisional 68k muls.w (a2)+, d4
db 0xCC, 0xFA, 0xCC, 0x9B ; 0015BC: provisional 68k mulu.w $ffffe259(pc), d6
db 0xB9, 0xC9 ; 0015C0: provisional 68k cmpa.l a1, a4
db 0xD1, 0xFC, 0xC9, 0xB1, 0xFF, 0xFF ; 0015C2: provisional 68k adda.l #$c9b1ffff, a0
db 0x02, 0x0B ; file 0015C8
db 0xD9, 0xCC ; 0015CA: provisional 68k adda.l a4, a4
db 0xDF, 0x9C ; 0015CC: provisional 68k add.l d7, (a4)+
db 0x9A, 0xCC ; 0015CE: provisional 68k suba.w a4, a5
db 0xCB, 0xA9, 0xC9, 0xDD ; 0015D0: provisional 68k and.l d5, -$3623(a1)
db 0xCC, 0x9B ; 0015D4: provisional 68k and.l (a3)+, d6
db 0xFF, 0xFF ; 0015D6: provisional 68k dc.w $ffff
db 0x02, 0x0B ; file 0015D8
db 0xDF, 0xCC ; 0015DA: provisional 68k adda.l a4, a7
db 0xAA, 0x9C ; 0015DC: provisional 68k dc.w $aa9c
db 0x9F, 0xCC ; 0015DE: provisional 68k suba.l a4, a7
db 0xCA, 0xA9, 0xC9, 0xB9 ; 0015E0: provisional 68k and.l -$3647(a1), d5
db 0xC9, 0xBE ; file 0015E4
db 0xFF, 0xFF ; 0015E6: provisional 68k dc.w $ffff
db 0x02, 0x0B ; file 0015E8
db 0x1A, 0x9C ; 0015EA: provisional 68k move.b (a4)+, (a5)
db 0x9A, 0xFC, 0x99, 0xCC ; 0015EC: provisional 68k suba.w #$99cc, a5
db 0x9D, 0xAC, 0xC9, 0xAC ; 0015F0: provisional 68k sub.l d6, -$3654(a4)
db 0xCA, 0xD1 ; 0015F4: provisional 68k mulu.w (a1), d5
db 0xFF, 0xFF ; 0015F6: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 0015F8
db 0x1B, 0x9C, 0x9A, 0xF9 ; 0015FA: provisional 68k move.b (a4)+, -$7(a5, a1.l)
db 0x9A, 0xC9 ; 0015FE: provisional 68k suba.w a1, a5
db 0xF8, 0xFC ; 001600: provisional 68k dc.w $f8fc
db 0x9F, 0xFC, 0x9D, 0xFF, 0xFF, 0x02 ; 001602: provisional 68k suba.l #$9dffff02, a7
db 0x0A, 0x1B, 0x99, 0xFB ; 001608: provisional 68k eori.b #$fb, (a3)+
db 0xF9, 0xAD ; 00160C: provisional 68k dc.w $f9ad
db 0x9F, 0xD8 ; 00160E: provisional 68k suba.l (a0)+, a7
db 0xFC, 0xFB ; 001610: provisional 68k dc.w $fcfb
db 0xF9, 0xB1 ; 001612: provisional 68k dc.w $f9b1
db 0xFF, 0xFF ; 001614: provisional 68k dc.w $ffff
db 0x02, 0x09, 0x1B, 0xFF ; file 001616
db 0xBD, 0xAF, 0xD8, 0xFA ; 00161A: provisional 68k eor.l d6, -$2706(a7)
db 0x88, 0xF9, 0xA8, 0xAA, 0xFF, 0xFF ; 00161E: provisional 68k divu.w $a8aaffff.l, d4
db 0x03, 0x08, 0xAB, 0xDD ; 001624: provisional 68k movep.w -$5423(a0), d1
db 0xDD, 0xDA ; 001628: provisional 68k adda.l (a2)+, a6
db 0x9F, 0xA9, 0x9F, 0xD8 ; 00162A: provisional 68k sub.l d7, -$6028(a1)
db 0xDD, 0xFF ; file 00162E
db 0xFF, 0x03 ; 001630: provisional 68k dc.w $ff03
db 0x08, 0x1F ; file 001632
db 0x99, 0xF9, 0xCC, 0xC9, 0x99, 0x9A ; 001634: provisional 68k suba.l $ccc9999a.l, a4
db 0xD8, 0xD1 ; 00163A: provisional 68k adda.w (a1), a4
db 0xFF, 0xFF ; 00163C: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 00163E: provisional 68k btst.l d1, d7
db 0xFC, 0xCC ; 001640: provisional 68k dc.w $fccc
db 0xCC, 0xCC, 0xC9, 0xFF ; file 001642
db 0xAD, 0x8D ; 001646: provisional 68k dc.w $ad8d
db 0xFF, 0xFF ; 001648: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 00164A: provisional 68k btst.l d1, d7
db 0xFC, 0xCC ; 00164C: provisional 68k dc.w $fccc
db 0xCC, 0xCC ; file 00164E
db 0x9F, 0xAD, 0x88, 0xD1 ; 001650: provisional 68k sub.l d7, -$772f(a5)
db 0xFF, 0xFF ; 001654: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 001656: provisional 68k btst.l d1, d6
db 0x1A, 0xF9, 0x99, 0x99, 0xFB, 0xD8 ; 001658: provisional 68k move.b $9999fbd8.l, (a5)+
db 0x88, 0xFF ; file 00165E
db 0xFF, 0x03 ; 001660: provisional 68k dc.w $ff03
db 0x06, 0xEE ; file 001662
db 0x8D, 0xAF, 0xAA, 0xD8 ; 001664: provisional 68k or.l d6, -$5528(a7)
db 0x88, 0xD1 ; 001668: provisional 68k divu.w (a1), d4
db 0xFF, 0xFF ; 00166A: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x88, 0x8D ; 00166C: provisional 68k subi.b #$8d, d4
db 0xDD, 0xD8 ; 001670: provisional 68k adda.l (a0)+, a6
db 0x8D, 0xFF ; file 001672
db 0xFF, 0x04 ; 001674: provisional 68k dc.w $ff04
db 0x04, 0xDD ; file 001676
db 0xDD, 0xDD ; 001678: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 00167A: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 00167C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00167E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001680: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 001682: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 001686: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 00168A: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 00168E
db 0x10, 0x10 ; 001690: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001692: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001694: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001696: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001698: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00169C: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0016A0: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0016A2: provisional 68k neg.w d4
db 0x34, 0x3C, 0x50, 0xE4 ; 0016A4: provisional 68k move.w #$50e4, d2
db 0xE8, 0xE8 ; file 0016A8
db 0xA4, 0xB0 ; 0016AA: provisional 68k dc.w $a4b0
db 0xB0, 0x10 ; 0016AC: provisional 68k cmp.b (a0), d0
db 0x18, 0x20 ; 0016AE: provisional 68k move.b -(a0), d4
db 0x7C, 0x84 ; 0016B0: provisional 68k moveq #$84, d6
db 0x88, 0x68, 0x70, 0x7C ; 0016B2: provisional 68k or.w $707c(a0), d4
db 0x08, 0x0C ; file 0016B6
db 0x54, 0x40 ; 0016B8: provisional 68k addq.w #$2, d0
db 0x40, 0x78, 0xFF, 0xFF ; 0016BA: provisional 68k negx.w $ffff.w
db 0xFF, 0xFF ; 0016BE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016C0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016C2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016C4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016C6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016C8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016CA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016CC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016CE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016D0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016D2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0016D4: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 0016D6: provisional 68k btst.l d3, d1
db 0xCA, 0xC1 ; 0016D8: provisional 68k mulu.w d1, d5
db 0x01, 0x01 ; 0016DA: provisional 68k btst.l d0, d1
db 0xDA, 0xA8, 0xFF, 0xFF ; 0016DC: provisional 68k add.l -$1(a0), d5
db 0x07, 0x01 ; 0016E0: provisional 68k btst.l d3, d1
db 0x99, 0xAF, 0x01, 0x01 ; 0016E2: provisional 68k sub.l d4, $101(a7)
db 0xA9, 0xA8 ; 0016E6: provisional 68k dc.w $a9a8
db 0xFF, 0xFF ; 0016E8: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 0016EA: provisional 68k btst.l d3, d1
db 0xC9, 0xD8 ; 0016EC: provisional 68k muls.w (a0)+, d4
db 0x01, 0x01 ; 0016EE: provisional 68k btst.l d0, d1
db 0xD9, 0xA8, 0xFF, 0xFF ; 0016F0: provisional 68k add.l d4, -$1(a0)
db 0x07, 0x01 ; 0016F4: provisional 68k btst.l d3, d1
db 0xD9, 0xD1 ; 0016F6: provisional 68k adda.l (a1), a4
db 0x01, 0x03 ; 0016F8: provisional 68k btst.l d0, d3
db 0x19, 0xC1, 0x1D, 0xD1 ; file 0016FA
db 0xFF, 0xFF ; 0016FE: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x1F, 0xCA ; 001700: provisional 68k subi.b #$ca, d4
db 0xF8, 0xC9 ; 001704: provisional 68k dc.w $f8c9
db 0xD1, 0x01 ; 001706: provisional 68k addx.b d1, d0
db 0x03, 0xC9, 0xC1, 0x1A ; 001708: provisional 68k movep.l d1, -$3ee6(a1)
db 0xAF, 0xFF ; 00170C: provisional 68k dc.w $afff
db 0xFF, 0x04 ; 00170E: provisional 68k dc.w $ff04
db 0x04, 0x1C, 0xAA, 0x88 ; 001710: provisional 68k subi.b #$88, (a4)+
db 0xCA, 0xC8 ; file 001714
db 0x01, 0x04 ; 001716: provisional 68k btst.l d0, d4
db 0xC9, 0xC1 ; 001718: provisional 68k muls.w d1, d4
db 0x1D, 0xAC, 0xE1, 0xFF, 0xFF, 0x04 ; 00171A: provisional 68k move.b -$1e01(a4), (a6, a7.l * 8)
db 0x04, 0x1D, 0xAD, 0xBF ; 001720: provisional 68k subi.b #$bf, (a5)+
db 0xA9, 0xA8 ; 001724: provisional 68k dc.w $a9a8
db 0x01, 0x01 ; 001726: provisional 68k btst.l d0, d1
db 0xC9, 0xC1 ; 001728: provisional 68k muls.w d1, d4
db 0x01, 0x01 ; 00172A: provisional 68k btst.l d0, d1
db 0xAA, 0x81 ; 00172C: provisional 68k dc.w $aa81
db 0xFF, 0xFF ; 00172E: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x1A, 0xA8 ; 001730: provisional 68k subi.b #$a8, d4
db 0x8C, 0x9A ; 001734: provisional 68k or.l (a2)+, d6
db 0xAF, 0x01 ; 001736: provisional 68k dc.w $af01
db 0x01, 0xC9, 0xC1, 0x01 ; 001738: provisional 68k movep.l d0, -$3eff(a1)
db 0x01, 0xD9 ; 00173C: provisional 68k bset.b d0, (a1)+
db 0xA1, 0xFF ; 00173E: provisional 68k dc.w $a1ff
db 0xFF, 0x04 ; 001740: provisional 68k dc.w $ff04
db 0x07, 0xA9, 0x9C, 0xFA ; 001742: provisional 68k bclr.b d3, -$6306(a1)
db 0x9A, 0xAD, 0xEF, 0xA9 ; 001746: provisional 68k sub.l -$1057(a5), d5
db 0xA8, 0x01 ; 00174A: provisional 68k dc.w $a801
db 0x01, 0xF9, 0x9F, 0xFF, 0xFF, 0x03 ; 00174C: provisional 68k bset.b d0, $9fffff03.l
db 0x08, 0x1D ; file 001752
db 0x99, 0x9C ; 001754: provisional 68k sub.l d4, (a4)+
db 0xDA, 0x99 ; 001756: provisional 68k add.l (a1)+, d5
db 0xAF, 0xED ; 001758: provisional 68k dc.w $afed
db 0x99, 0xAF, 0x01, 0x01 ; 00175A: provisional 68k sub.l d4, $101(a7)
db 0xFA, 0x9D ; 00175E: provisional 68k dc.w $fa9d
db 0xFF, 0xFF ; 001760: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 001762
db 0xFA, 0xAD ; 001764: provisional 68k dc.w $faad
db 0xA9, 0x9C ; 001766: provisional 68k dc.w $a99c
db 0x8C, 0x99 ; 001768: provisional 68k or.l (a1)+, d6
db 0xA8, 0x8F ; 00176A: provisional 68k dc.w $a88f
db 0xCC, 0xD8 ; 00176C: provisional 68k mulu.w (a0)+, d6
db 0x01, 0x01 ; 00176E: provisional 68k btst.l d0, d1
db 0xFC, 0xA8 ; 001770: provisional 68k dc.w $fca8
db 0xFF, 0xFF ; 001772: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 001774
db 0xDC, 0xDC ; 001776: provisional 68k adda.w (a4)+, a6
db 0xA9, 0x9D ; 001778: provisional 68k dc.w $a99d
db 0x8C, 0x99 ; 00177A: provisional 68k or.l (a1)+, d6
db 0xAF, 0xEC ; 00177C: provisional 68k dc.w $afec
db 0x99, 0xA8, 0x01, 0x01 ; 00177E: provisional 68k sub.l d4, $101(a0)
db 0xFA, 0x98 ; 001782: provisional 68k dc.w $fa98
db 0xFF, 0xFF ; 001784: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xFA, 0x9A ; 001786: provisional 68k movep.w -$566(a2), d0
db 0xDD, 0xA9, 0x9D, 0xBC ; 00178A: provisional 68k add.l d6, -$6244(a1)
db 0x99, 0xAF, 0xEC, 0x99 ; 00178E: provisional 68k sub.l d4, -$1367(a7)
db 0xA8, 0x01 ; 001792: provisional 68k dc.w $a801
db 0x01, 0xFA ; file 001794
db 0xA8, 0xFF ; 001796: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 001798: provisional 68k dc.w $ff01
db 0x0A, 0xFA ; file 00179A
db 0x99, 0xA8, 0xA9, 0x9C ; 00179C: provisional 68k sub.l d4, -$5664(a0)
db 0xBD, 0x99 ; 0017A0: provisional 68k eor.l d6, (a1)+
db 0xAF, 0xEC ; 0017A2: provisional 68k dc.w $afec
db 0x99, 0xA8, 0x01, 0x01 ; 0017A4: provisional 68k sub.l d4, $101(a0)
db 0xFA, 0xA8 ; 0017A8: provisional 68k dc.w $faa8
db 0xFF, 0xFF ; 0017AA: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xFA, 0x99 ; 0017AC: provisional 68k movep.w -$567(a2), d0
db 0xDB, 0xA9, 0x9C, 0xBF ; 0017B0: provisional 68k add.l d5, -$6341(a1)
db 0x99, 0xAF, 0xEC, 0x99 ; 0017B4: provisional 68k sub.l d4, -$1367(a7)
db 0xC8, 0x01 ; 0017B8: provisional 68k and.b d1, d4
db 0x01, 0xFA ; file 0017BA
db 0xA1, 0xFF ; 0017BC: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 0017BE: provisional 68k dc.w $ff01
db 0x0A, 0xFA ; file 0017C0
db 0x99, 0x8B ; 0017C2: provisional 68k subx.l -(a3), -(a4)
db 0xC9, 0x9C ; 0017C4: provisional 68k and.l d4, (a4)+
db 0xBF, 0x99 ; 0017C6: provisional 68k eor.l d7, (a1)+
db 0xC1, 0x1C ; 0017C8: provisional 68k and.b d0, (a4)+
db 0x9A, 0xD1 ; 0017CA: provisional 68k suba.w (a1), a5
db 0x01, 0x01 ; 0017CC: provisional 68k btst.l d0, d1
db 0xC9, 0xA1 ; 0017CE: provisional 68k and.l d4, -(a1)
db 0xFF, 0xFF ; 0017D0: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x8C, 0x99 ; 0017D2: provisional 68k movep.w -$7367(a5), d0
db 0xA8, 0xD9 ; 0017D6: provisional 68k dc.w $a8d9
db 0x9A, 0x8F ; 0017D8: provisional 68k sub.l a7, d5
db 0x99, 0xC8 ; 0017DA: provisional 68k suba.l a0, a4
db 0xEC, 0x9A ; 0017DC: provisional 68k ror.l #$6, d2
db 0x81, 0x1E ; 0017DE: provisional 68k or.b d0, (a6)+
db 0xA9, 0xA8 ; 0017E0: provisional 68k dc.w $a9a8
db 0xFF, 0xFF ; 0017E2: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xED, 0x99 ; 0017E4: provisional 68k movep.w -$1267(a5), d0
db 0xA8, 0xDA ; 0017E8: provisional 68k dc.w $a8da
db 0x9A, 0x8F ; 0017EA: provisional 68k sub.l a7, d5
db 0x99, 0xA8, 0x8A, 0x9A ; 0017EC: provisional 68k sub.l d4, -$7566(a0)
db 0x81, 0x1F ; 0017F0: provisional 68k or.b d0, (a7)+
db 0xAA, 0xD8 ; 0017F2: provisional 68k dc.w $aad8
db 0xFF, 0xFF ; 0017F4: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1F, 0xA9 ; 0017F6: provisional 68k movep.w $1fa9(a5), d0
db 0xAD, 0xFA ; 0017FA: provisional 68k dc.w $adfa
db 0x99, 0xDF ; 0017FC: provisional 68k suba.l (a7)+, a4
db 0x99, 0xA8, 0x8A, 0x9A ; 0017FE: provisional 68k sub.l d4, -$7566(a0)
db 0x81, 0xFA, 0xAC, 0xD8 ; 001802: provisional 68k divs.w $ffffc4dc(pc), d0
db 0xFF, 0xFF ; 001806: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1F, 0xC9 ; 001808: provisional 68k movep.w $1fc9(a5), d0
db 0x9D, 0x8C ; 00180C: provisional 68k subx.l -(a4), -(a6)
db 0x99, 0xD8 ; 00180E: provisional 68k suba.l (a0)+, a4
db 0x99, 0xAF, 0x8A, 0x9A ; 001810: provisional 68k sub.l d4, -$7566(a7)
db 0x81, 0xD9 ; 001814: provisional 68k divs.w (a1)+, d0
db 0x99, 0xD1 ; 001816: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 001818: provisional 68k dc.w $ffff
db 0x02, 0x0C ; file 00181A
db 0xDA, 0x9A ; 00181C: provisional 68k add.l (a2)+, d5
db 0x8C, 0x99 ; 00181E: provisional 68k or.l (a1)+, d6
db 0xD8, 0x99 ; 001820: provisional 68k add.l (a1)+, d4
db 0xA8, 0xFA ; 001822: provisional 68k dc.w $a8fa
db 0x9A, 0x8E ; 001824: provisional 68k sub.l a6, d5
db 0xA9, 0x9C ; 001826: provisional 68k dc.w $a99c
db 0x81, 0xFF ; file 001828
db 0xFF, 0x02 ; 00182A: provisional 68k dc.w $ff02
db 0x0B, 0xFA ; file 00182C
db 0x9A, 0x8D ; 00182E: provisional 68k sub.l a5, d5
db 0x99, 0xAD, 0x99, 0xAF ; 001830: provisional 68k sub.l d4, -$6651(a5)
db 0xFA, 0x9A ; 001834: provisional 68k dc.w $fa9a
db 0x8A, 0x9A ; 001836: provisional 68k or.l (a2)+, d5
db 0xD8, 0xFF ; file 001838
db 0xFF, 0x02 ; 00183A: provisional 68k dc.w $ff02
db 0x0B, 0x8C, 0x99, 0xCD ; 00183C: provisional 68k movep.w d5, -$6633(a4)
db 0xA9, 0xAC ; 001840: provisional 68k dc.w $a9ac
db 0x99, 0xA8, 0xD9, 0x9A ; 001842: provisional 68k sub.l d4, -$2666(a0)
db 0xD9, 0x9D ; 001846: provisional 68k add.l d4, (a5)+
db 0xE1, 0xFF ; file 001848
db 0xFF, 0x02 ; 00184A: provisional 68k dc.w $ff02
db 0x0B, 0x1D ; 00184C: provisional 68k btst.l d5, (a5)+
db 0xA9, 0xAC ; 00184E: provisional 68k dc.w $a9ac
db 0xA9, 0xAC ; 001850: provisional 68k dc.w $a9ac
db 0x99, 0xCB ; 001852: provisional 68k suba.l a3, a4
db 0xC9, 0x9C ; 001854: provisional 68k and.l d4, (a4)+
db 0xD9, 0xA8, 0xE1, 0xFF ; 001856: provisional 68k add.l d4, -$1e01(a0)
db 0xFF, 0x02 ; 00185A: provisional 68k dc.w $ff02
db 0x0A, 0x1F, 0xA9, 0xAD ; 00185C: provisional 68k eori.b #$ad, (a7)+
db 0xCA, 0xD8 ; 001860: provisional 68k mulu.w (a0)+, d5
db 0xAA, 0xDB ; 001862: provisional 68k dc.w $aadb
db 0xC9, 0xA8, 0xDA, 0xDE ; 001864: provisional 68k and.l d4, -$2522(a0)
db 0xFF, 0xFF ; 001868: provisional 68k dc.w $ffff
db 0x02, 0x0A, 0x1F, 0xCA ; file 00186A
db 0xD8, 0xDC ; 00186E: provisional 68k adda.w (a4)+, a4
db 0x88, 0xAD, 0xBB, 0xCA ; 001870: provisional 68k or.l -$4436(a5), d4
db 0x8B, 0xDD ; 001874: provisional 68k divs.w (a5)+, d5
db 0x81, 0xFF ; file 001876
db 0xFF, 0x02 ; 001878: provisional 68k dc.w $ff02
db 0x09, 0x18 ; 00187A: provisional 68k btst.l d4, (a0)+
db 0xDD, 0x88 ; 00187C: provisional 68k addx.l -(a0), -(a6)
db 0xFF, 0xB8 ; 00187E: provisional 68k dc.w $ffb8
db 0xC8, 0x8C ; file 001880
db 0xAD, 0x8B ; 001882: provisional 68k dc.w $ad8b
db 0x88, 0xFF ; file 001884
db 0xFF, 0x03 ; 001886: provisional 68k dc.w $ff03
db 0x08, 0x8D ; file 001888
db 0xCD, 0x8E ; 00188A: provisional 68k exg.l d6, a6
db 0xD9, 0x9A ; 00188C: provisional 68k add.l d4, (a2)+
db 0xAA, 0xAC ; 00188E: provisional 68k dc.w $aaac
db 0x8B, 0x81 ; 001890: provisional 68k dc.w $8b81
db 0xFF, 0xFF ; 001892: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 001894: provisional 68k btst.l d1, d7
db 0xA9, 0x99 ; 001896: provisional 68k dc.w $a999
db 0xAA, 0x99 ; 001898: provisional 68k dc.w $aa99
db 0x9A, 0xAA, 0xC8, 0xB8 ; 00189A: provisional 68k sub.l -$3748(a2), d5
db 0xFF, 0xFF ; 00189E: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 0018A0: provisional 68k btst.l d1, d7
db 0xA9, 0x99 ; 0018A2: provisional 68k dc.w $a999
db 0x99, 0x99 ; 0018A4: provisional 68k sub.l d4, (a1)+
db 0x9C, 0xD8 ; 0018A6: provisional 68k suba.w (a0)+, a6
db 0xBB, 0xE1 ; 0018A8: provisional 68k cmpa.l -(a1), a5
db 0xFF, 0xFF ; 0018AA: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 0018AC: provisional 68k btst.l d1, d6
db 0x8C, 0xC9 ; file 0018AE
db 0x9A, 0xAA, 0xCD, 0x8B ; 0018B0: provisional 68k sub.l -$3275(a2), d5
db 0xBE, 0xFF ; file 0018B4
db 0xFF, 0x03 ; 0018B6: provisional 68k dc.w $ff03
db 0x06, 0xEB ; file 0018B8
db 0xBD, 0xCC ; 0018BA: provisional 68k cmpa.l a4, a6
db 0xDD, 0x8B ; 0018BC: provisional 68k addx.l -(a3), -(a6)
db 0xBB, 0x81 ; 0018BE: provisional 68k eor.l d5, d1
db 0xFF, 0xFF ; 0018C0: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xBB, 0xB8 ; 0018C2: provisional 68k subi.b #$b8, d4
db 0x8B, 0xBB, 0xB8, 0xFF ; file 0018C6
db 0xFF, 0x04 ; 0018CA: provisional 68k dc.w $ff04
db 0x03, 0xEB, 0xBB, 0xBB ; 0018CC: provisional 68k bset.b d1, -$4445(a3)
db 0xBE, 0xFF ; file 0018D0
db 0xFF, 0xFF ; 0018D2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0018D4: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0018D6: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 0018D8: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 0018DC: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 0018E0: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 0018E4
db 0x10, 0x10 ; 0018E6: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0018E8: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0018EA: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0018EC: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0018EE: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0018F2: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0018F6: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0018F8: provisional 68k neg.w d4
db 0x28, 0x2C, 0x48, 0xA4 ; 0018FA: provisional 68k move.l $48a4(a4), d4
db 0xB0, 0xB0, 0x0C, 0x18 ; 0018FE: provisional 68k cmp.l $18(a0, d0.l), d0
db 0x1C, 0x78 ; file 001902
db 0x84, 0x84 ; 001904: provisional 68k or.l d4, d2
db 0xE0, 0xE4 ; 001906: provisional 68k asr.w -(a4)
db 0xE4, 0x08 ; 001908: provisional 68k lsr.b #$2, d0
db 0x0C, 0x50, 0x48, 0x50 ; 00190A: provisional 68k cmpi.w #$4850, (a0)
db 0x78, 0x48 ; 00190E: provisional 68k moveq #$48, d4
db 0x50, 0x58 ; 001910: provisional 68k addq.w #$8, (a0)+
db 0xFF, 0xFF ; 001912: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001914: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001916: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001918: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00191A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00191C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00191E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001920: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001922: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001924: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001926: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xEB, 0xE8 ; 001928: provisional 68k eori.b #$e8, d1
db 0xFF, 0xFF ; 00192C: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 00192E: provisional 68k btst.l d3, d1
db 0xEE, 0xE1 ; file 001930
db 0x01, 0x01 ; 001932: provisional 68k btst.l d0, d1
db 0xBC, 0x9E ; 001934: provisional 68k cmp.l (a6)+, d6
db 0xFF, 0xFF ; 001936: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1E, 0xCC ; 001938: provisional 68k addi.b #$cc, d5
db 0x9F, 0xD1 ; 00193C: provisional 68k suba.l (a1), a7
db 0x9C, 0x9E ; 00193E: provisional 68k sub.l (a6)+, d6
db 0xFF, 0xFF ; 001940: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1E, 0xCC ; 001942: provisional 68k addi.b #$cc, d5
db 0xB8, 0xD1 ; 001946: provisional 68k cmpa.w (a1), a4
db 0xBC, 0x9F ; 001948: provisional 68k cmp.l (a7)+, d6
db 0xFF, 0xFF ; 00194A: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 00194C: provisional 68k btst.l d3, d1
db 0x9C, 0xB1, 0x01, 0x01 ; 00194E: provisional 68k sub.l ([a1, d0.w]), d6
db 0x1C, 0x98 ; 001952: provisional 68k move.b (a0)+, (a6)
db 0xFF, 0xFF ; 001954: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x18, 0xEE ; 001956: provisional 68k subi.b #$ee, d4
db 0x88, 0x9C ; 00195A: provisional 68k or.l (a4)+, d4
db 0xB1, 0x01 ; 00195C: provisional 68k eor.b d0, d1
db 0x03, 0x1C ; 00195E: provisional 68k btst.l d1, (a4)+
db 0xC1, 0x1E ; 001960: provisional 68k and.b d0, (a6)+
db 0xE1, 0xFF ; file 001962
db 0xFF, 0x04 ; 001964: provisional 68k dc.w $ff04
db 0x04, 0x89 ; file 001966
db 0xC9, 0xE8, 0x9C, 0xB1 ; 001968: provisional 68k muls.w -$634f(a0), d4
db 0x01, 0x03 ; 00196C: provisional 68k btst.l d0, d3
db 0x1C, 0x91 ; 00196E: provisional 68k move.b (a1), (a6)
db 0x19, 0x9E, 0xFF, 0xFF, 0x04, 0x04, 0x89, 0xCB ; 001970: provisional 68k move.b (a6)+, ([$40489cb])
db 0x8F, 0x9C ; 001978: provisional 68k or.l d7, (a4)+
db 0xB1, 0x01 ; 00197A: provisional 68k eor.b d0, d1
db 0x04, 0x1C, 0x91, 0x1E ; 00197C: provisional 68k subi.b #$1e, (a4)+
db 0x9B, 0xD1 ; 001980: provisional 68k suba.l (a1), a5
db 0xFF, 0xFF ; 001982: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xD9, 0x9F ; 001984: provisional 68k subi.b #$9f, d4
db 0xDE, 0x99 ; 001988: provisional 68k add.l (a1)+, d7
db 0xB1, 0x01 ; 00198A: provisional 68k eor.b d0, d1
db 0x04, 0xBC ; file 00198C
db 0x91, 0x1D ; 00198E: provisional 68k sub.b d0, (a5)+
db 0x99, 0xE1 ; 001990: provisional 68k suba.l -(a1), a4
db 0xFF, 0xFF ; 001992: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x19, 0xBF ; 001994: provisional 68k subi.b #$bf, d4
db 0xFB, 0xCC ; 001998: provisional 68k dc.w $fbcc
db 0x9E, 0x01 ; 00199A: provisional 68k sub.b d1, d7
db 0x01, 0xBC ; file 00199C
db 0x91, 0x01 ; 00199E: provisional 68k subx.b d1, d0
db 0x01, 0xBC, 0x91, 0xFF ; file 0019A0
db 0xFF, 0x04 ; 0019A4: provisional 68k dc.w $ff04
db 0x07, 0x9C ; 0019A6: provisional 68k bclr.b d3, (a4)+
db 0x9E, 0xE9, 0xCC, 0x9F ; 0019A8: provisional 68k suba.w -$3361(a1), a7
db 0xD1, 0x9C ; 0019AC: provisional 68k add.l d0, (a4)+
db 0x9F, 0x01 ; 0019AE: provisional 68k subx.b d1, d7
db 0x01, 0xE9, 0xCE, 0xFF ; 0019B0: provisional 68k bset.b d0, -$3101(a1)
db 0xFF, 0x03 ; 0019B4: provisional 68k dc.w $ff03
db 0x08, 0x1B, 0xCC, 0xCB ; file 0019B6
db 0xFB, 0x99 ; 0019BA: provisional 68k dc.w $fb99
db 0xB8, 0xD1 ; 0019BC: provisional 68k cmpa.w (a1), a4
db 0xCC, 0xCE ; file 0019BE
db 0x01, 0x01 ; 0019C0: provisional 68k btst.l d0, d1
db 0xE9, 0xCB ; file 0019C2
db 0xFF, 0xFF ; 0019C4: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x18, 0xBC ; 0019C6: provisional 68k movep.w $18bc(a2), d0
db 0x9B, 0xCC ; 0019CA: provisional 68k suba.l a4, a5
db 0x9B, 0xE9, 0xCC, 0x9F ; 0019CC: provisional 68k suba.l -$3361(a1), a5
db 0xD1, 0xCC ; 0019D0: provisional 68k adda.l a4, a0
db 0x9F, 0x01 ; 0019D2: provisional 68k subx.b d1, d7
db 0x01, 0x1B ; 0019D4: provisional 68k btst.l d0, (a3)+
db 0x9E, 0xFF ; file 0019D6
db 0xFF, 0x02 ; 0019D8: provisional 68k dc.w $ff02
db 0x09, 0xBB ; file 0019DA
db 0xFB, 0xCC ; 0019DC: provisional 68k dc.w $fbcc
db 0x9F, 0xF9, 0xCC, 0xB8, 0x8E, 0x99 ; 0019DE: provisional 68k suba.l $ccb88e99.l, a7
db 0xBF, 0x01 ; 0019E4: provisional 68k eor.b d7, d1
db 0x01, 0x19 ; 0019E6: provisional 68k btst.l d0, (a1)+
db 0xC8, 0xFF ; file 0019E8
db 0xFF, 0x01 ; 0019EA: provisional 68k dc.w $ff01
db 0x0A, 0xEB ; file 0019EC
db 0x9B, 0xEB, 0xCC, 0xCF ; 0019EE: provisional 68k suba.l -$3331(a3), a5
db 0x89, 0xCC ; file 0019F2
db 0x91, 0xDB ; 0019F4: provisional 68k suba.l (a3)+, a0
db 0xCC, 0x9F ; 0019F6: provisional 68k and.l (a7)+, d6
db 0x01, 0x01 ; 0019F8: provisional 68k btst.l d0, d1
db 0x19, 0xCF ; file 0019FA
db 0xFF, 0xFF ; 0019FC: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xBC, 0xC9 ; 0019FE: provisional 68k movep.w -$4337(a2), d0
db 0xBB, 0xCC ; 001A02: provisional 68k cmpa.l a4, a5
db 0xCF, 0xAB, 0xCC, 0xB1 ; 001A04: provisional 68k and.l d7, -$334f(a3)
db 0xDB, 0xCC ; 001A08: provisional 68k adda.l a4, a5
db 0x98, 0x01 ; 001A0A: provisional 68k sub.b d1, d4
db 0x01, 0xE9, 0xC8, 0xFF ; 001A0C: provisional 68k bset.b d0, -$3701(a1)
db 0xFF, 0x01 ; 001A10: provisional 68k dc.w $ff01
db 0x0A, 0xBC ; file 001A12
db 0xCC, 0xB8, 0x9C, 0xCF ; 001A14: provisional 68k and.l $9ccf.w, d6
db 0xAE, 0xCC ; 001A18: provisional 68k dc.w $aecc
db 0xB1, 0xDB ; 001A1A: provisional 68k cmpa.l (a3)+, a0
db 0xCC, 0xB8, 0x01, 0x01 ; 001A1C: provisional 68k and.l $101.w, d6
db 0xE9, 0x98 ; 001A20: provisional 68k rol.l #$4, d0
db 0xFF, 0xFF ; 001A22: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xE9, 0xCC ; 001A24: provisional 68k movep.w -$1634(a2), d0
db 0xFA, 0x9C ; 001A28: provisional 68k dc.w $fa9c
db 0xCB, 0xAE, 0xCC, 0xB1 ; 001A2A: provisional 68k and.l d5, -$334f(a6)
db 0xDB, 0xCC ; 001A2E: provisional 68k adda.l a4, a5
db 0xB8, 0x01 ; 001A30: provisional 68k cmp.b d1, d4
db 0x01, 0xBC, 0x98, 0xFF ; file 001A32
db 0xFF, 0x01 ; 001A36: provisional 68k dc.w $ff01
db 0x0D, 0xE9, 0xCC, 0xF8 ; 001A38: provisional 68k bset.b d6, -$3308(a1)
db 0x9C, 0xCB ; 001A3C: provisional 68k suba.w a3, a6
db 0xAE, 0xCC ; 001A3E: provisional 68k dc.w $aecc
db 0xB1, 0x1B ; 001A40: provisional 68k eor.b d0, (a3)+
db 0xC9, 0xE8, 0x18, 0x9C ; 001A42: provisional 68k muls.w $189c(a0), d4
db 0x98, 0xFF ; file 001A46
db 0xFF, 0x01 ; 001A48: provisional 68k dc.w $ff01
db 0x0D, 0xE9, 0xCC, 0x98 ; 001A4A: provisional 68k bset.b d6, -$3368(a1)
db 0xBC, 0xCB ; 001A4E: provisional 68k cmpa.w a3, a6
db 0xAE, 0xCC ; 001A50: provisional 68k dc.w $aecc
db 0xB1, 0x8B ; 001A52: provisional 68k cmpm.l (a3)+, (a0)+
db 0xC9, 0xF1, 0x1E, 0x9C ; 001A54: provisional 68k muls.w -$64(a1, d1.l), d4
db 0x9F, 0xFF ; file 001A58
db 0xFF, 0x01 ; 001A5A: provisional 68k dc.w $ff01
db 0x0D, 0x8B, 0xCC, 0xB8 ; 001A5C: provisional 68k movep.w d6, -$3348(a3)
db 0xE9, 0xC9 ; file 001A60
db 0xFE, 0xCC ; 001A62: provisional 68k dc.w $fecc
db 0xB8, 0x89 ; 001A64: provisional 68k cmp.l a1, d4
db 0xC9, 0x81 ; file 001A66
db 0xE9, 0xBE ; 001A68: provisional 68k rol.l d4, d6
db 0xF8, 0xFF ; 001A6A: provisional 68k dc.w $f8ff
db 0xFF, 0x01 ; 001A6C: provisional 68k dc.w $ff01
db 0x0D, 0x1E ; 001A6E: provisional 68k btst.l d6, (a6)+
db 0x9C, 0xBA, 0xE9, 0xC9 ; 001A70: provisional 68k sub.l $43b(pc), d6
db 0xFF, 0xCC ; 001A74: provisional 68k dc.w $ffcc
db 0xB8, 0xF9, 0xC9, 0x81, 0xE9, 0xC9 ; 001A76: provisional 68k cmpa.w $c981e9c9.l, a4
db 0xB1, 0xFF ; file 001A7C
db 0xFF, 0x01 ; 001A7E: provisional 68k dc.w $ff01
db 0x0D, 0x1E ; 001A80: provisional 68k btst.l d6, (a6)+
db 0xBC, 0x9B ; 001A82: provisional 68k cmp.l (a3)+, d6
db 0xE9, 0xC9 ; file 001A84
db 0xF8, 0xCC ; 001A86: provisional 68k dc.w $f8cc
db 0x9F, 0xE9, 0xC9, 0x8D ; 001A88: provisional 68k suba.l -$3673(a1), a7
db 0x9C, 0xC9 ; 001A8C: provisional 68k suba.w a1, a6
db 0xE1, 0xFF ; file 001A8E
db 0xFF, 0x01 ; 001A90: provisional 68k dc.w $ff01
db 0x0C, 0x18, 0xB9, 0xC9 ; 001A92: provisional 68k cmpi.b #$c9, (a0)+
db 0x8B, 0xCC ; file 001A96
db 0xBF, 0xCC ; 001A98: provisional 68k cmpa.l a4, a7
db 0x9F, 0xF9, 0xC9, 0x8B, 0xC9, 0xEE ; 001A9A: provisional 68k suba.l $c98bc9ee.l, a7
db 0xFF, 0xFF ; 001AA0: provisional 68k dc.w $ffff
db 0x02, 0x0B, 0xE9, 0xC9 ; file 001AA2
db 0xFB, 0x9C ; 001AA6: provisional 68k dc.w $fb9c
db 0x9B, 0xCC ; 001AA8: provisional 68k suba.l a4, a5
db 0x9F, 0xE9, 0xC9, 0xFC ; 001AAA: provisional 68k suba.l -$3604(a1), a7
db 0xCB, 0xD1 ; 001AAE: provisional 68k muls.w (a1), d5
db 0xFF, 0xFF ; 001AB0: provisional 68k dc.w $ffff
db 0x02, 0x0B ; file 001AB2
db 0xFB, 0xCC ; 001AB4: provisional 68k dc.w $fbcc
db 0xBB, 0x9C ; 001AB6: provisional 68k eor.l d5, (a4)+
db 0x9B, 0xCC ; 001AB8: provisional 68k suba.l a4, a5
db 0x98, 0xBC, 0xC9, 0xBC, 0x9F, 0xD1 ; 001ABA: provisional 68k sub.l #$c9bc9fd1, d4
db 0xFF, 0xFF ; 001AC0: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 001AC2
db 0x1F, 0x9C, 0x9B, 0xB9, 0xBF, 0x99, 0xFA, 0xBC ; 001AC4: provisional 68k move.b (a4)+, ([$bf99fabc, a1.l * 2])
db 0x9B, 0xEC, 0xF8, 0xFF ; 001ACC: provisional 68k suba.l -$701(a4), a5
db 0xFF, 0x02 ; 001AD0: provisional 68k dc.w $ff02
db 0x0A, 0x1E, 0x99, 0xBF ; 001AD2: provisional 68k eori.b #$bf, (a6)+
db 0xBB, 0xF8, 0x9B, 0x8A ; 001AD6: provisional 68k cmpa.l $9b8a.w, a5
db 0xB9, 0xB8, 0xFB, 0x81 ; 001ADA: provisional 68k eor.l d4, $fb81.w
db 0xFF, 0xFF ; 001ADE: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 001AE0
db 0x1F, 0xBB, 0x88, 0xFF, 0xA8, 0xBF ; 001AE2: provisional 68k move.b $1ae3(pc, a0.l), -$41(a7, a2.l)
db 0xA8, 0xBB ; 001AE8: provisional 68k dc.w $a8bb
db 0x8A, 0x88 ; file 001AEA
db 0xFF, 0xFF ; 001AEC: provisional 68k dc.w $ffff
db 0x02, 0x09, 0x18, 0xFF ; file 001AEE
db 0xFF, 0x88 ; 001AF2: provisional 68k dc.w $ff88
db 0xF9, 0x99 ; 001AF4: provisional 68k dc.w $f999
db 0x9C, 0x9B ; 001AF6: provisional 68k sub.l (a3)+, d6
db 0x8A, 0x88 ; file 001AF8
db 0xFF, 0xFF ; 001AFA: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 001AFC: provisional 68k btst.l d1, d7
db 0x9C, 0xCC ; 001AFE: provisional 68k suba.w a4, a6
db 0xBB, 0xCC ; 001B00: provisional 68k cmpa.l a4, a5
db 0xC9, 0x99 ; 001B02: provisional 68k and.l d4, (a1)+
db 0x9F, 0xA8, 0xFF, 0xFF ; 001B04: provisional 68k sub.l d7, -$1(a0)
db 0x03, 0x07 ; 001B08: provisional 68k btst.l d1, d7
db 0x9C, 0xCC ; 001B0A: provisional 68k suba.w a4, a6
db 0xCC, 0xCC, 0xC9, 0xBF ; file 001B0C
db 0x88, 0x81 ; 001B10: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 001B12: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 001B14: provisional 68k btst.l d1, d6
db 0xEB, 0xCC, 0xCC, 0xC9 ; file 001B16
db 0x9B, 0xFA, 0xA8, 0xFF ; 001B1A: provisional 68k suba.l $ffffc41b(pc), a5
db 0xFF, 0x03 ; 001B1E: provisional 68k dc.w $ff03
db 0x06, 0xD8 ; file 001B20
db 0xFB, 0xBB ; 001B22: provisional 68k dc.w $fbbb
db 0xBB, 0xFA, 0xAA, 0x81 ; 001B24: provisional 68k cmpa.l $ffffc5a7(pc), a5
db 0xFF, 0xFF ; 001B28: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xAA, 0x88 ; 001B2A: provisional 68k subi.b #$88, d4
db 0x88, 0xAA, 0xA8, 0xFF ; 001B2E: provisional 68k or.l -$5701(a2), d4
db 0xFF, 0x04 ; 001B32: provisional 68k dc.w $ff04
db 0x04, 0x8A ; file 001B34
db 0xAA, 0xAA ; 001B36: provisional 68k dc.w $aaaa
db 0x88, 0x81 ; 001B38: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 001B3A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001B3C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001B3E: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 001B40: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 001B44: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 001B48: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 001B4C
db 0x10, 0x10 ; 001B4E: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001B50: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001B52: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001B54: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001B56: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 001B5A: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 001B5E: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 001B60: provisional 68k neg.w d4
db 0x0C, 0x14, 0x24, 0x98 ; 001B62: provisional 68k cmpi.b #$98, (a4)
db 0xA0, 0xA0 ; 001B66: provisional 68k dc.w $a0a0
db 0x68, 0x70 ; 001B68: provisional 68k bvc.b $1bda
db 0x78, 0xE4 ; 001B6A: provisional 68k moveq #$e4, d4
db 0xEC, 0xE8, 0x44, 0x48 ; file 001B6C
db 0x6C, 0xC0 ; 001B70: provisional 68k bge.b $1b32
db 0xC8, 0xC8 ; file 001B72
db 0x30, 0x38, 0x48, 0x08 ; 001B74: provisional 68k move.w $4808.w, d0
db 0x08, 0x64 ; file 001B78
db 0xFF, 0xFF ; 001B7A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001B7C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001B7E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001B80: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001B82: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xA1 ; 001B84: provisional 68k eori.b #$a1, d1
db 0xFF, 0xFF ; 001B88: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xA1 ; 001B8A: provisional 68k eori.b #$a1, d1
db 0xFF, 0xFF ; 001B8E: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xCD, 0xDA ; 001B90: provisional 68k eori.b #$da, d1
db 0xFF, 0xFF ; 001B94: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xCB, 0xBA ; 001B96: provisional 68k eori.b #$ba, d1
db 0xFF, 0xFF ; 001B9A: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xCD, 0xBC ; 001B9C: provisional 68k eori.b #$bc, d1
db 0xFF, 0xFF ; 001BA0: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xC9, 0xBC ; 001BA2: provisional 68k eori.b #$bc, d1
db 0xFF, 0xFF ; 001BA6: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xC9, 0xDC ; 001BA8: provisional 68k eori.b #$dc, d1
db 0xFF, 0xFF ; 001BAC: provisional 68k dc.w $ffff
db 0x06, 0x02, 0x1A, 0xD9 ; 001BAE: provisional 68k addi.b #$d9, d2
db 0xA1, 0x01 ; 001BB2: provisional 68k dc.w $a101
db 0x01, 0xC9, 0xDC, 0xFF ; 001BB4: provisional 68k movep.l d0, -$2301(a1)
db 0xFF, 0x06 ; 001BB8: provisional 68k dc.w $ff06
db 0x02, 0x19, 0xBB, 0xA1 ; 001BBA: provisional 68k andi.b #$a1, (a1)+
db 0x01, 0x01 ; 001BBE: provisional 68k btst.l d0, d1
db 0xCD, 0xDA ; 001BC0: provisional 68k muls.w (a2)+, d6
db 0xFF, 0xFF ; 001BC2: provisional 68k dc.w $ffff
db 0x06, 0x02, 0x19, 0xBB ; 001BC4: provisional 68k addi.b #$bb, d2
db 0xAF, 0x01 ; 001BC8: provisional 68k dc.w $af01
db 0x02, 0xAB, 0xD9, 0xE1, 0xFF, 0xFF, 0x06, 0x02 ; 001BCA: provisional 68k andi.l #$d9e1ffff, $602(a3)
db 0xFC, 0xBB ; 001BD2: provisional 68k dc.w $fcbb
db 0xC1, 0x01 ; 001BD4: provisional 68k abcd.b d1, d0
db 0x02, 0x9B, 0xD9, 0xE1, 0xFF, 0xFF ; 001BD6: provisional 68k andi.l #$d9e1ffff, (a3)+
db 0x04, 0x04, 0xAD, 0xDA ; 001BDC: provisional 68k subi.b #$da, d4
db 0xFC, 0xBB ; 001BE0: provisional 68k dc.w $fcbb
db 0xC1, 0x01 ; 001BE2: provisional 68k abcd.b d1, d0
db 0x02, 0xAD, 0xDA, 0xE1, 0xFF, 0xFF, 0x04, 0x04 ; 001BE4: provisional 68k andi.l #$dae1ffff, $404(a5)
db 0xDB, 0xDC ; 001BEC: provisional 68k adda.l (a4)+, a5
db 0xFC, 0xBD ; 001BEE: provisional 68k dc.w $fcbd
db 0xC1, 0x01 ; 001BF0: provisional 68k abcd.b d1, d0
db 0x03, 0xC9, 0xAE, 0xEA ; 001BF2: provisional 68k movep.l d1, -$5116(a1)
db 0x9C, 0xFF ; file 001BF6
db 0xFF, 0x04 ; 001BF8: provisional 68k dc.w $ff04
db 0x04, 0x9B, 0x9E, 0xFC, 0xBB, 0xC1 ; 001BFA: provisional 68k subi.l #$9efcbbc1, (a3)+
db 0x01, 0x04 ; 001C00: provisional 68k btst.l d0, d4
db 0xC9, 0x9E ; 001C02: provisional 68k and.l d4, (a6)+
db 0x8A, 0xDA ; 001C04: provisional 68k divu.w (a2)+, d5
db 0xFF, 0xFF ; 001C06: provisional 68k dc.w $ffff
db 0xFF, 0x04 ; 001C08: provisional 68k dc.w $ff04
db 0x04, 0xAB, 0xAF, 0xFC, 0xBB, 0xC1, 0x01, 0x04 ; 001C0A: provisional 68k subi.l #$affcbbc1, $104(a3)
db 0xCD, 0x9E ; 001C12: provisional 68k and.l d6, (a6)+
db 0xFF, 0x99 ; 001C14: provisional 68k dc.w $ff99
db 0xE1, 0xFF ; file 001C16
db 0xFF, 0x04 ; 001C18: provisional 68k dc.w $ff04
db 0x04, 0x9B, 0xAE, 0xFC, 0xBB, 0xC1 ; 001C1A: provisional 68k subi.l #$aefcbbc1, (a3)+
db 0x01, 0x01 ; 001C20: provisional 68k btst.l d0, d1
db 0xCD, 0x9E ; 001C22: provisional 68k and.l d6, (a6)+
db 0x01, 0x01 ; 001C24: provisional 68k btst.l d0, d1
db 0xCD, 0xAF, 0xFF, 0xFF ; 001C26: provisional 68k and.l d6, -$1(a7)
db 0x02, 0x06, 0xFF, 0xFF ; 001C2A: provisional 68k andi.b #$ff, d6
db 0x9B, 0x9C ; 001C2E: provisional 68k sub.l d5, (a4)+
db 0xEA, 0xBB ; 001C30: provisional 68k ror.l d5, d3
db 0xA1, 0x01 ; 001C32: provisional 68k dc.w $a101
db 0x01, 0xCD, 0x9E, 0x01 ; 001C34: provisional 68k movep.l d0, -$61ff(a5)
db 0x01, 0xC9, 0xDC, 0xFF ; 001C38: provisional 68k movep.l d0, -$2301(a1)
db 0xFF, 0x02 ; 001C3C: provisional 68k dc.w $ff02
db 0x09, 0xCC, 0xEC, 0xDB ; 001C3E: provisional 68k movep.l d4, -$1325(a4)
db 0x9C, 0xC9 ; 001C42: provisional 68k suba.w a1, a6
db 0xBB, 0x9C ; 001C44: provisional 68k eor.l d5, (a4)+
db 0xFF, 0xCB ; 001C46: provisional 68k dc.w $ffcb
db 0x9E, 0x01 ; 001C48: provisional 68k sub.b d1, d7
db 0x02, 0xFA ; file 001C4A
db 0xB9, 0xE1 ; 001C4C: provisional 68k cmpa.l -(a1), a4
db 0xFF, 0xFF ; 001C4E: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xED, 0xB9 ; 001C50: provisional 68k movep.w -$1247(a2), d0
db 0xC9, 0xBB ; file 001C54
db 0x9C, 0xCB ; 001C56: provisional 68k suba.w a3, a6
db 0xBB, 0xDE ; 001C58: provisional 68k cmpa.l (a6)+, a5
db 0xFF, 0xAB ; 001C5A: provisional 68k dc.w $ffab
db 0x9E, 0x01 ; 001C5C: provisional 68k sub.b d1, d7
db 0x02, 0xF9 ; file 001C5E
db 0xBD, 0xC1 ; 001C60: provisional 68k cmpa.l d1, a6
db 0xFF, 0xFF ; 001C62: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xF9, 0xDA ; 001C64: provisional 68k movep.w -$626(a2), d0
db 0xCB, 0xBD ; file 001C68
db 0x9C, 0xEA, 0xAE, 0xEE ; 001C6A: provisional 68k suba.w -$5112(a2), a6
db 0xFC, 0xDB ; 001C6E: provisional 68k dc.w $fcdb
db 0xDA, 0x01 ; 001C70: provisional 68k add.b d1, d5
db 0x02, 0xFC ; file 001C72
db 0x9A, 0xE1 ; 001C74: provisional 68k suba.w -(a1), a5
db 0xFF, 0xFF ; 001C76: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xE9, 0x9E ; 001C78: provisional 68k movep.w -$1662(a2), d0
db 0xE9, 0x99 ; 001C7C: provisional 68k rol.l #$4, d1
db 0x9E, 0xE9, 0xDD, 0xAE ; 001C7E: provisional 68k suba.w -$2252(a1), a7
db 0x8A, 0xDB ; 001C82: provisional 68k divu.w (a3)+, d5
db 0xDA, 0x01 ; 001C84: provisional 68k add.b d1, d5
db 0x01, 0xFA, 0xDC, 0xFF ; file 001C86
db 0xFF, 0x01 ; 001C8A: provisional 68k dc.w $ff01
db 0x0D, 0xC9, 0x9A, 0x9D ; 001C8C: provisional 68k movep.l d6, -$6563(a1)
db 0xBD, 0x9E ; 001C90: provisional 68k eor.l d6, (a6)+
db 0xED, 0xBB ; 001C92: provisional 68k rol.l d6, d3
db 0xAE, 0xEA ; 001C94: provisional 68k dc.w $aeea
db 0x99, 0xDA ; 001C96: provisional 68k suba.l (a2)+, a4
db 0xE1, 0xFA, 0xDC, 0xFF ; file 001C98
db 0xFF, 0x00 ; 001C9C: provisional 68k dc.w $ff00
db 0x0E, 0x1C ; file 001C9E
db 0x9B, 0xD9 ; 001CA0: provisional 68k suba.l (a1)+, a5
db 0x9D, 0xBB ; file 001CA2
db 0x98, 0xED, 0xBD, 0xAE ; 001CA4: provisional 68k suba.w -$4252(a5), a4
db 0xEA, 0xBD ; 001CA8: provisional 68k ror.l d5, d5
db 0xDC, 0xE1 ; 001CAA: provisional 68k adda.w -(a1), a6
db 0xF9, 0xDC ; 001CAC: provisional 68k dc.w $f9dc
db 0xFF, 0xFF ; 001CAE: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 001CB0
db 0x1A, 0xDB ; 001CB2: provisional 68k move.b (a3)+, (a5)+
db 0xD9, 0x99 ; 001CB4: provisional 68k add.l d4, (a1)+
db 0xBB, 0x9E ; 001CB6: provisional 68k eor.l d5, (a6)+
db 0xE9, 0xBD ; 001CB8: provisional 68k rol.l d4, d5
db 0xAE, 0xFA ; 001CBA: provisional 68k dc.w $aefa
db 0xBB, 0x9E ; 001CBC: provisional 68k eor.l d5, (a6)+
db 0xE1, 0xC9, 0xDC, 0xFF ; file 001CBE
db 0xFF, 0x00 ; 001CC2: provisional 68k dc.w $ff00
db 0x0E, 0x1A ; file 001CC4
db 0x9B, 0xDA ; 001CC6: provisional 68k suba.l (a2)+, a5
db 0xAA, 0xDD ; 001CC8: provisional 68k dc.w $aadd
db 0x9C, 0xEA, 0xB9, 0xAE ; 001CCA: provisional 68k suba.w -$4652(a2), a6
db 0xFC, 0xDB ; 001CCE: provisional 68k dc.w $fcdb
db 0xAE, 0xFF ; 001CD0: provisional 68k dc.w $aeff
db 0xAD, 0xDC ; 001CD2: provisional 68k dc.w $addc
db 0xFF, 0xFF ; 001CD4: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 001CD6
db 0x1A, 0x9B ; 001CD8: provisional 68k move.b (a3)+, (a5)
db 0xDC, 0x8A ; 001CDA: provisional 68k add.l a2, d6
db 0x9D, 0x9C ; 001CDC: provisional 68k sub.l d6, (a4)+
db 0x8A, 0xD9 ; 001CDE: provisional 68k divu.w (a1)+, d5
db 0xAE, 0xEC ; 001CE0: provisional 68k dc.w $aeec
db 0xDD, 0xA8, 0xFF, 0x9B ; 001CE2: provisional 68k add.l d6, -$65(a0)
db 0xDC, 0xFF ; file 001CE6
db 0xFF, 0x00 ; 001CE8: provisional 68k dc.w $ff00
db 0x0E, 0x1C ; file 001CEA
db 0xAD, 0xDA ; 001CEC: provisional 68k dc.w $adda
db 0x8C, 0x9D ; 001CEE: provisional 68k or.l (a5)+, d6
db 0x9E, 0x8C ; 001CF0: provisional 68k sub.l a4, d7
db 0xD9, 0xCE ; 001CF2: provisional 68k adda.l a6, a4
db 0xFA, 0xD9 ; 001CF4: provisional 68k dc.w $fad9
db 0xCE, 0xFC, 0x9D, 0x9C ; 001CF6: provisional 68k mulu.w #$9d9c, d7
db 0xFF, 0xFF ; 001CFA: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xA9, 0xD9 ; 001CFC: provisional 68k movep.w -$5627(a5), d0
db 0xEE, 0x9D ; 001D00: provisional 68k ror.l #$7, d5
db 0x9E, 0x8C ; 001D02: provisional 68k sub.l a4, d7
db 0xD9, 0xCE ; 001D04: provisional 68k adda.l a6, a4
db 0xEA, 0xD9, 0xEE, 0xC9 ; file 001D06
db 0xAC, 0xEE ; 001D0A: provisional 68k dc.w $acee
db 0xFF, 0xFF ; 001D0C: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xC9, 0xD9 ; 001D0E: provisional 68k movep.w -$3627(a5), d0
db 0xAE, 0xAD ; 001D12: provisional 68k dc.w $aead
db 0x9A, 0xEC, 0xD9, 0xAE ; 001D14: provisional 68k suba.w -$2652(a4), a5
db 0xE9, 0xD9 ; file 001D18
db 0xE8, 0xAD ; 001D1A: provisional 68k lsr.l d4, d5
db 0xD9, 0xAC, 0xFF, 0xFF ; 001D1C: provisional 68k add.l d4, -$1(a4)
db 0x01, 0x0D, 0xEA, 0x9D ; 001D20: provisional 68k movep.w -$1563(a5), d0
db 0xA8, 0xA9 ; 001D24: provisional 68k dc.w $a8a9
db 0xD9, 0xEE, 0xD9, 0xAE ; 001D26: provisional 68k adda.l -$2652(a6), a4
db 0xC9, 0xDA ; 001D2A: provisional 68k muls.w (a2)+, d4
db 0xEE, 0xDB ; file 001D2C
db 0xD9, 0xC1 ; 001D2E: provisional 68k adda.l d1, a4
db 0xFF, 0xFF ; 001D30: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0x1C, 0x9D ; 001D32: provisional 68k movep.w $1c9d(a4), d0
db 0x9C, 0xC9 ; 001D36: provisional 68k suba.w a1, a6
db 0xD9, 0xEE, 0xD9, 0xAE ; 001D38: provisional 68k adda.l -$2652(a6), a4
db 0xC9, 0xDA ; 001D3C: provisional 68k muls.w (a2)+, d4
db 0xE9, 0xB9 ; 001D3E: provisional 68k rol.l d4, d1
db 0xCE, 0xFF ; file 001D40
db 0xFF, 0x01 ; 001D42: provisional 68k dc.w $ff01
db 0x0C, 0x1C, 0xAD, 0x9A ; 001D44: provisional 68k cmpi.b #$9a, (a4)+
db 0xEA, 0xD9 ; file 001D48
db 0xCE, 0xDD ; 001D4A: provisional 68k mulu.w (a5)+, d7
db 0xAE, 0xCD ; 001D4C: provisional 68k dc.w $aecd
db 0xDA, 0xEB, 0xBC, 0x81 ; 001D4E: provisional 68k adda.w -$437f(a3), a5
db 0xFF, 0xFF ; 001D52: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 001D54
db 0xC9, 0xD9 ; 001D56: provisional 68k muls.w (a1)+, d4
db 0xCA, 0x99 ; 001D58: provisional 68k and.l (a1)+, d5
db 0xAA, 0xDD ; 001D5A: provisional 68k dc.w $aadd
db 0x9E, 0xAD, 0xDA, 0xEB ; 001D5C: provisional 68k sub.l -$2515(a5), d7
db 0x9E, 0xFF ; file 001D60
db 0xFF, 0x02 ; 001D62: provisional 68k dc.w $ff02
db 0x0A, 0xEA ; file 001D64
db 0xD9, 0x9A ; 001D66: provisional 68k add.l d4, (a2)+
db 0x99, 0xAA, 0x99, 0xA8 ; 001D68: provisional 68k sub.l d4, -$6658(a2)
db 0xAD, 0xDA ; 001D6C: provisional 68k dc.w $adda
db 0xE9, 0xEF ; file 001D6E
db 0xFF, 0xFF ; 001D70: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 001D72
db 0xEA, 0x99 ; 001D74: provisional 68k ror.l #$5, d1
db 0xAC, 0xAA ; 001D76: provisional 68k dc.w $acaa
db 0xEE, 0x9A ; 001D78: provisional 68k ror.l #$7, d2
db 0xE8, 0xA9 ; 001D7A: provisional 68k lsr.l d4, d1
db 0xAE, 0xEE ; 001D7C: provisional 68k dc.w $aeee
db 0xE1, 0xFF ; file 001D7E
db 0xFF, 0x02 ; 001D80: provisional 68k dc.w $ff02
db 0x09, 0xFE ; file 001D82
db 0xAC, 0x88 ; 001D84: provisional 68k dc.w $ac88
db 0xEE, 0x88 ; 001D86: provisional 68k lsr.l #$7, d0
db 0xCE, 0x88 ; file 001D88
db 0xCC, 0xE8, 0x8E, 0xFF ; 001D8A: provisional 68k mulu.w -$7101(a0), d6
db 0xFF, 0x02 ; 001D8E: provisional 68k dc.w $ff02
db 0x08, 0x1E, 0xEE, 0xEE, 0xE8, 0xCA ; file 001D90
db 0xAA, 0xA9 ; 001D96: provisional 68k dc.w $aaa9
db 0x9A, 0xEE, 0xFF, 0xFF ; 001D98: provisional 68k suba.w -$1(a6), a5
db 0x02, 0x08 ; file 001D9C
db 0x1C, 0x9D ; 001D9E: provisional 68k move.b (a5)+, (a6)
db 0xDD, 0x99 ; 001DA0: provisional 68k add.l d6, (a1)+
db 0xBB, 0xDD ; 001DA2: provisional 68k cmpa.l (a5)+, a5
db 0x99, 0xAE, 0xE1, 0xFF ; 001DA4: provisional 68k sub.l d4, -$1e01(a6)
db 0xFF, 0x03 ; 001DA8: provisional 68k dc.w $ff03
db 0x06, 0x9B, 0xBB, 0xBB, 0xBB, 0xB9 ; 001DAA: provisional 68k addi.l #$bbbbbbb9, (a3)+
db 0xAE, 0x88 ; 001DB0: provisional 68k dc.w $ae88
db 0xFF, 0xFF ; 001DB2: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 001DB4: provisional 68k btst.l d1, d6
db 0xE9, 0xDD ; file 001DB6
db 0xD9, 0x99 ; 001DB8: provisional 68k add.l d4, (a1)+
db 0xAE, 0x88 ; 001DBA: provisional 68k dc.w $ae88
db 0x81, 0xFF ; file 001DBC
db 0xFF, 0x03 ; 001DBE: provisional 68k dc.w $ff03
db 0x05, 0xFF ; file 001DC0
db 0xEC, 0xAC ; 001DC2: provisional 68k lsr.l d6, d4
db 0xEE, 0xE8, 0x88, 0xFF ; file 001DC4
db 0xFF, 0x04 ; 001DC8: provisional 68k dc.w $ff04
db 0x04, 0x88, 0x88, 0x88 ; file 001DCA
db 0x88, 0xE1 ; 001DCE: provisional 68k divu.w -(a1), d4
db 0xFF, 0xFF ; 001DD0: provisional 68k dc.w $ffff
db 0x04, 0x03, 0xEE, 0xEE ; 001DD2: provisional 68k subi.b #$ee, d3
db 0xEE, 0xE1 ; file 001DD6
db 0xFF, 0xFF ; 001DD8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 001DDA: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 001DDC: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 001DE0: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 001DE4: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 001DE8
db 0x10, 0x10 ; 001DEA: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 001DEC: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 001DEE: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 001DF0: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 001DF2: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 001DF6: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 001DFA: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 001DFC: provisional 68k neg.w d4
db 0x0C, 0x18, 0x18, 0x8C ; 001DFE: provisional 68k cmpi.b #$8c, (a0)+
db 0x94, 0x94 ; 001E02: provisional 68k sub.l (a4), d2
db 0x68, 0x70 ; 001E04: provisional 68k bvc.b $1e76
db 0x74, 0x44 ; 001E06: provisional 68k moveq #$44, d2
db 0x48, 0x74, 0xD4, 0xD8 ; 001E08: provisional 68k pea.l -$28(a4, a5.w)
db 0xD8, 0x44 ; 001E0C: provisional 68k add.w d4, d4
db 0x4C, 0x54 ; file 001E0E
db 0x24, 0x28, 0x44, 0x0C ; 001E10: provisional 68k move.l $440c(a0), d2
db 0x0C, 0x5C, 0xFF, 0xFF ; 001E14: provisional 68k cmpi.w #$ffff, (a4)+
db 0x0A, 0x01, 0x1B, 0xAB ; 001E18: provisional 68k eori.b #$ab, d1
db 0xFF, 0xFF ; 001E1C: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1B, 0xCA ; 001E1E: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 001E22: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1B, 0xCA ; 001E24: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 001E28: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1B, 0xCA ; 001E2A: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 001E2E: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1B, 0xCA ; 001E30: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 001E34: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xCA ; 001E36: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 001E3A: provisional 68k dc.w $ffff
db 0x0A, 0x02, 0xB9, 0x9A ; 001E3C: provisional 68k eori.b #$9a, d2
db 0xD1, 0xFF ; file 001E40
db 0xFF, 0x0A ; 001E42: provisional 68k dc.w $ff0a
db 0x02, 0xB9, 0xC9, 0xD1, 0xFF, 0xFF, 0x0A, 0x01, 0x19, 0xCA ; 001E44: provisional 68k andi.l #$c9d1ffff, $a0119ca.l
db 0xFF, 0xFF ; 001E4E: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xCA ; 001E50: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 001E54: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0x1A, 0xCA ; 001E56: provisional 68k eori.b #$ca, d1
db 0xFF, 0xFF ; 001E5A: provisional 68k dc.w $ffff
db 0x06, 0x02, 0x1B, 0x99 ; 001E5C: provisional 68k addi.b #$99, d2
db 0xD1, 0x01 ; 001E60: provisional 68k addx.b d1, d0
db 0x01, 0x19 ; 001E62: provisional 68k btst.l d0, (a1)+
db 0xCA, 0xFF ; file 001E64
db 0xFF, 0x06 ; 001E66: provisional 68k dc.w $ff06
db 0x02, 0xBC ; file 001E68
db 0xCC, 0xA1 ; 001E6A: provisional 68k and.l -(a1), d6
db 0x01, 0x01 ; 001E6C: provisional 68k btst.l d0, d1
db 0x19, 0xCA ; file 001E6E
db 0xFF, 0xFF ; 001E70: provisional 68k dc.w $ffff
db 0x06, 0x02, 0xBC, 0xCC ; 001E72: provisional 68k addi.b #$cc, d2
db 0xA1, 0x01 ; 001E76: provisional 68k dc.w $a101
db 0x01, 0x19 ; 001E78: provisional 68k btst.l d0, (a1)+
db 0xC9, 0xFF ; file 001E7A
db 0xFF, 0x06 ; 001E7C: provisional 68k dc.w $ff06
db 0x02, 0x19, 0xCC, 0xBF ; 001E7E: provisional 68k andi.b #$bf, (a1)+
db 0x01, 0x02 ; 001E82: provisional 68k btst.l d0, d2
db 0xBC, 0xC9 ; 001E84: provisional 68k cmpa.w a1, a6
db 0xDF, 0xFF ; file 001E86
db 0xFF, 0x03 ; 001E88: provisional 68k dc.w $ff03
db 0x05, 0x1B ; 001E8A: provisional 68k btst.l d2, (a3)+
db 0xCC, 0x9B ; 001E8C: provisional 68k and.l (a3)+, d6
db 0xFB, 0xCC ; 001E8E: provisional 68k dc.w $fbcc
db 0xD1, 0x01 ; 001E90: provisional 68k addx.b d1, d0
db 0x02, 0xAC, 0x99, 0xDF, 0xFF, 0xFF, 0x03, 0x05 ; 001E92: provisional 68k andi.l #$99dfffff, $305(a4)
db 0x1A, 0xCC ; file 001E9A
db 0x9B, 0xFB, 0xCC, 0xD1 ; 001E9C: provisional 68k suba.l $1e6f(pc, a4.l), a5
db 0x01, 0x03 ; 001EA0: provisional 68k btst.l d0, d3
db 0x9C, 0xC9 ; 001EA2: provisional 68k suba.w a1, a6
db 0xDE, 0xD1 ; 001EA4: provisional 68k adda.w (a1), a7
db 0xFF, 0xFF ; 001EA6: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xCC, 0x9F ; 001EA8: provisional 68k subi.b #$9f, d4
db 0xFB, 0xCC ; 001EAC: provisional 68k dc.w $fbcc
db 0xB1, 0x01 ; 001EAE: provisional 68k eor.b d0, d1
db 0x04, 0xB9, 0xAD, 0x1B, 0x99, 0xFF, 0xFF, 0xFF, 0x04, 0x04 ; 001EB0: provisional 68k subi.l #$ad1b99ff, $ffff0404.l
db 0xCC, 0xAF, 0xFB, 0xCC ; 001EBA: provisional 68k and.l -$434(a7), d6
db 0xB1, 0x01 ; 001EBE: provisional 68k eor.b d0, d1
db 0x04, 0xBA ; file 001EC0
db 0xAE, 0x1B ; 001EC2: provisional 68k dc.w $ae1b
db 0x99, 0xE1 ; 001EC4: provisional 68k suba.l -(a1), a4
db 0xFF, 0xFF ; 001EC6: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xCC, 0xAE ; 001EC8: provisional 68k subi.b #$ae, d4
db 0xFB, 0xCC ; 001ECC: provisional 68k dc.w $fbcc
db 0xD1, 0x01 ; 001ECE: provisional 68k addx.b d1, d0
db 0x01, 0xBC ; file 001ED0
db 0x9D, 0x01 ; 001ED2: provisional 68k subx.b d1, d6
db 0x01, 0xA9, 0xB1, 0xFF ; 001ED4: provisional 68k bclr.b d0, -$4e01(a1)
db 0xFF, 0x04 ; 001ED8: provisional 68k dc.w $ff04
db 0x04, 0xCC ; file 001EDA
db 0x9D, 0xFB, 0xCC, 0xB1 ; 001EDC: provisional 68k suba.l $1e8f(pc, a4.l), a6
db 0x01, 0x01 ; 001EE0: provisional 68k btst.l d0, d1
db 0xBC, 0x9D ; 001EE2: provisional 68k cmp.l (a5)+, d6
db 0x01, 0x01 ; 001EE4: provisional 68k btst.l d0, d1
db 0xB9, 0x9D ; 001EE6: provisional 68k eor.l d4, (a5)+
db 0xFF, 0xFF ; 001EE8: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xCC, 0xAE ; 001EEA: provisional 68k subi.b #$ae, d4
db 0xE9, 0xCC ; file 001EEE
db 0xA1, 0x01 ; 001EF0: provisional 68k dc.w $a101
db 0x01, 0xBC ; file 001EF2
db 0x9D, 0x01 ; 001EF4: provisional 68k subx.b d1, d6
db 0x02, 0x19, 0xCA, 0xE1 ; 001EF6: provisional 68k andi.b #$e1, (a1)+
db 0xFF, 0xFF ; 001EFA: provisional 68k dc.w $ffff
db 0x01, 0x07 ; 001EFC: provisional 68k btst.l d0, d7
db 0xBC, 0xCA ; 001EFE: provisional 68k cmpa.w a2, a6
db 0xEA, 0xCC ; file 001F00
db 0x9E, 0xD9 ; 001F02: provisional 68k suba.w (a1)+, a7
db 0xCC, 0x9D ; 001F04: provisional 68k and.l (a5)+, d6
db 0x01, 0x01 ; 001F06: provisional 68k btst.l d0, d1
db 0xBC, 0x9D ; 001F08: provisional 68k cmp.l (a5)+, d6
db 0x01, 0x02 ; 001F0A: provisional 68k btst.l d0, d2
db 0x1B, 0xCC, 0xB1, 0xFF ; file 001F0C
db 0xFF, 0x01 ; 001F10: provisional 68k dc.w $ff01
db 0x0A, 0xAC, 0xCD, 0xE9, 0xCC, 0x9E, 0xAC, 0xCC ; 001F12: provisional 68k eori.l #$cde9cc9e, -$5334(a4)
db 0xCD, 0xFF ; file 001F1A
db 0xAC, 0x9B ; 001F1C: provisional 68k dc.w $ac9b
db 0x01, 0x02 ; 001F1E: provisional 68k btst.l d0, d2
db 0x1B, 0xCC ; file 001F20
db 0xA1, 0xFF ; 001F22: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 001F24: provisional 68k dc.w $ff01
db 0x0E, 0xBC ; file 001F26
db 0x9E, 0xAC, 0xCC, 0x9D ; 001F28: provisional 68k sub.l -$3363(a4), d7
db 0xB9, 0x99 ; 001F2C: provisional 68k eor.l d4, (a1)+
db 0xAE, 0xFB ; 001F2E: provisional 68k dc.w $aefb
db 0xCC, 0x9A ; 001F30: provisional 68k and.l (a2)+, d6
db 0xE1, 0x1B ; 001F32: provisional 68k rol.b #$8, d3
db 0x9A, 0xD1 ; 001F34: provisional 68k suba.w (a1), a5
db 0xFF, 0xFF ; 001F36: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xAC, 0xCA ; 001F38: provisional 68k movep.w -$5336(a5), d0
db 0xA9, 0x9A ; 001F3C: provisional 68k dc.w $a99a
db 0xAE, 0xDA ; 001F3E: provisional 68k dc.w $aeda
db 0xAA, 0xAD ; 001F40: provisional 68k dc.w $aaad
db 0xEA, 0xCC ; file 001F42
db 0x9A, 0xD1 ; 001F44: provisional 68k suba.w (a1), a5
db 0x1B, 0x9D, 0xFF, 0xFF, 0x01, 0x0D, 0x9C, 0x99 ; 001F46: provisional 68k move.b (a5)+, ([$10d9c99])
db 0x99, 0x9A ; 001F4E: provisional 68k sub.l d4, (a2)+
db 0xAE, 0xD9 ; 001F50: provisional 68k dc.w $aed9
db 0xCC, 0x9E ; 001F52: provisional 68k and.l (a6)+, d6
db 0xEA, 0x99 ; 001F54: provisional 68k ror.l #$5, d1
db 0x9A, 0xD1 ; 001F56: provisional 68k suba.w (a1), a5
db 0x1A, 0xCB ; file 001F58
db 0xFF, 0xFF ; 001F5A: provisional 68k dc.w $ffff
db 0x00, 0x0E, 0x1B, 0xCC ; file 001F5C
db 0x9A, 0x9C ; 001F60: provisional 68k sub.l (a4)+, d5
db 0xCC, 0xAE, 0xBC, 0xCC ; 001F62: provisional 68k and.l -$4334(a6), d6
db 0xAE, 0xEA ; 001F66: provisional 68k dc.w $aeea
db 0x9C, 0x9A ; 001F68: provisional 68k sub.l (a2)+, d6
db 0xE1, 0x19 ; 001F6A: provisional 68k rol.b #$8, d1
db 0xCB, 0xFF ; file 001F6C
db 0xFF, 0x00 ; 001F6E: provisional 68k dc.w $ff00
db 0x0E, 0x19 ; file 001F70
db 0xCC, 0x9A ; 001F72: provisional 68k and.l (a2)+, d6
db 0xAC, 0xCC ; 001F74: provisional 68k dc.w $accc
db 0xAE, 0xE9 ; 001F76: provisional 68k dc.w $aee9
db 0xC9, 0xAE, 0xFA, 0xCC ; 001F78: provisional 68k and.l d4, -$534(a6)
db 0xCD, 0xE1 ; 001F7C: provisional 68k muls.w -(a1), d6
db 0xB9, 0xCB ; 001F7E: provisional 68k cmpa.l a3, a4
db 0xFF, 0xFF ; 001F80: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 001F82
db 0x1A, 0x99 ; 001F84: provisional 68k move.b (a1)+, (a5)
db 0x9A, 0xD9 ; 001F86: provisional 68k suba.w (a1)+, a5
db 0xCC, 0xAE, 0xE9, 0xC9 ; 001F88: provisional 68k and.l -$1637(a6), d6
db 0xDE, 0xEB, 0xCC, 0x9E ; 001F8C: provisional 68k adda.w -$3362(a3), a7
db 0xFF, 0xAC ; 001F90: provisional 68k dc.w $ffac
db 0xCD, 0xFF ; file 001F92
db 0xFF, 0x00 ; 001F94: provisional 68k dc.w $ff00
db 0x0E, 0x1A ; file 001F96
db 0xCC, 0x9D ; 001F98: provisional 68k and.l (a5)+, d6
db 0xD9, 0x9C ; 001F9A: provisional 68k add.l d4, (a4)+
db 0xAE, 0xEA ; 001F9C: provisional 68k dc.w $aeea
db 0xC9, 0xDE ; 001F9E: provisional 68k muls.w (a6)+, d4
db 0xEA, 0xCC ; file 001FA0
db 0xAE, 0xFF ; 001FA2: provisional 68k dc.w $aeff
db 0x9C, 0xCA ; 001FA4: provisional 68k suba.w a2, a6
db 0xFF, 0xFF ; 001FA6: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 001FA8
db 0x1B, 0x9C, 0xCA, 0x8B ; 001FAA: provisional 68k move.b (a4)+, -$75(a5, a4.l)
db 0x99, 0xAE, 0x8A, 0x99 ; 001FAE: provisional 68k sub.l d4, -$7567(a6)
db 0xDE, 0xEA, 0xC9, 0xDE ; 001FB2: provisional 68k adda.w -$3622(a2), a7
db 0xEA, 0x99 ; 001FB6: provisional 68k ror.l #$5, d1
db 0x9D, 0xFF ; file 001FB8
db 0xFF, 0x00 ; 001FBA: provisional 68k dc.w $ff00
db 0x0E, 0x1B ; file 001FBC
db 0xA9, 0xCA ; 001FBE: provisional 68k dc.w $a9ca
db 0x8B, 0x99 ; 001FC0: provisional 68k or.l d5, (a1)+
db 0xAE, 0x8A ; 001FC2: provisional 68k dc.w $ae8a
db 0x99, 0xDE ; 001FC4: provisional 68k suba.l (a6)+, a4
db 0xEA, 0xC9 ; file 001FC6
db 0xDE, 0xD9 ; 001FC8: provisional 68k adda.w (a1)+, a7
db 0x9A, 0xBE ; file 001FCA
db 0xFF, 0xFF ; 001FCC: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xD9, 0x99 ; 001FCE: provisional 68k movep.w -$2667(a5), d0
db 0xDE, 0xA9, 0x9D, 0xEB ; 001FD2: provisional 68k add.l -$6215(a1), d7
db 0xC9, 0xDE ; 001FD6: provisional 68k muls.w (a6)+, d4
db 0xD9, 0xCA ; 001FD8: provisional 68k adda.l a2, a4
db 0xEE, 0x9C ; 001FDA: provisional 68k ror.l #$7, d4
db 0xC9, 0xAE, 0xFF, 0xFF ; 001FDC: provisional 68k and.l d4, -$1(a6)
db 0x01, 0x0D, 0xBA, 0x99 ; 001FE0: provisional 68k movep.w -$4567(a5), d0
db 0xA8, 0xA9 ; 001FE4: provisional 68k dc.w $a8a9
db 0x9A, 0xED, 0xC9, 0xDE ; 001FE6: provisional 68k suba.w -$3622(a5), a5
db 0xD9, 0xCA ; 001FEA: provisional 68k adda.l a2, a4
db 0xE9, 0xCC ; file 001FEC
db 0xAA, 0xB1 ; 001FEE: provisional 68k dc.w $aab1
db 0xFF, 0xFF ; 001FF0: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0x1D, 0x99 ; 001FF2: provisional 68k movep.w $1d99(a4), d0
db 0xAE, 0xD9 ; 001FF6: provisional 68k dc.w $aed9
db 0x9A, 0xEE, 0xC9, 0xAE ; 001FF8: provisional 68k suba.w -$3652(a6), a5
db 0xD9, 0x9A ; 001FFC: provisional 68k add.l d4, (a2)+
db 0xEC, 0xCA, 0x88, 0xFF ; file 001FFE
db 0xFF, 0x01 ; 002002: provisional 68k dc.w $ff01
db 0x0C, 0x1B, 0xA9, 0x9D ; 002004: provisional 68k cmpi.b #$9d, (a3)+
db 0xDA, 0x99 ; 002008: provisional 68k add.l (a1)+, d5
db 0xDD, 0x99 ; 00200A: provisional 68k add.l d6, (a1)+
db 0xAE, 0xAC ; 00200C: provisional 68k dc.w $aeac
db 0xCA, 0xEC, 0x9D, 0xE1 ; 00200E: provisional 68k mulu.w -$621f(a4), d5
db 0xFF, 0xFF ; 002012: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1E, 0xD9 ; 002014: provisional 68k movep.w $1ed9(a3), d0
db 0x9A, 0xDA ; 002018: provisional 68k suba.w (a2)+, a5
db 0x99, 0xAA, 0x99, 0xA8 ; 00201A: provisional 68k sub.l d4, -$6658(a2)
db 0xAC, 0x9A ; 00201E: provisional 68k dc.w $ac9a
db 0xE9, 0xDE ; file 002020
db 0xFF, 0xFF ; 002022: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 002024
db 0xDA, 0x99 ; 002026: provisional 68k add.l (a1)+, d5
db 0xAA, 0x99 ; 002028: provisional 68k dc.w $aa99
db 0xAD, 0x99 ; 00202A: provisional 68k dc.w $ad99
db 0xA8, 0xAC ; 00202C: provisional 68k dc.w $a8ac
db 0x9D, 0x8D ; 00202E: provisional 68k subx.l -(a5), -(a6)
db 0xE1, 0xFF ; file 002030
db 0xFF, 0x02 ; 002032: provisional 68k dc.w $ff02
db 0x09, 0xFD ; file 002034
db 0x99, 0xAE, 0xDD, 0xEE ; 002036: provisional 68k sub.l d4, -$2212(a6)
db 0xAD, 0x88 ; 00203A: provisional 68k dc.w $ad88
db 0xDA, 0xD8 ; 00203C: provisional 68k adda.w (a0)+, a5
db 0x8E, 0xFF ; file 00203E
db 0xFF, 0x02 ; 002040: provisional 68k dc.w $ff02
db 0x09, 0x1E ; 002042: provisional 68k btst.l d4, (a6)+
db 0xE8, 0x88 ; 002044: provisional 68k lsr.l #$4, d0
db 0x88, 0x88 ; file 002046
db 0xD8, 0x8D ; 002048: provisional 68k add.l a5, d4
db 0xAE, 0x8E ; 00204A: provisional 68k dc.w $ae8e
db 0xE1, 0xFF ; file 00204C
db 0xFF, 0x02 ; 00204E: provisional 68k dc.w $ff02
db 0x08, 0x1D ; file 002050
db 0xAD, 0xA9 ; 002052: provisional 68k dc.w $ada9
db 0xAA, 0x99 ; 002054: provisional 68k dc.w $aa99
db 0x9A, 0x99 ; 002056: provisional 68k sub.l (a1)+, d5
db 0xD8, 0xE1 ; 002058: provisional 68k adda.w -(a1), a4
db 0xFF, 0xFF ; 00205A: provisional 68k dc.w $ffff
db 0x02, 0x08 ; file 00205C
db 0x1B, 0x9C, 0xCC, 0xCC ; 00205E: provisional 68k move.b (a4)+, -$34(a5, a4.l)
db 0xCC, 0xCC ; file 002062
db 0x9A, 0xEE, 0xE1, 0xFF ; 002064: provisional 68k suba.w -$1e01(a6), a5
db 0xFF, 0x03 ; 002068: provisional 68k dc.w $ff03
db 0x06, 0xDC, 0xCC, 0xCC ; file 00206A
db 0xCC, 0x9A ; 00206E: provisional 68k and.l (a2)+, d6
db 0xE8, 0x8E ; 002070: provisional 68k lsr.l #$4, d6
db 0xFF, 0xFF ; 002072: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 002074: provisional 68k btst.l d1, d6
db 0x1B, 0xA9, 0x9A, 0xAD, 0x88, 0x88 ; 002076: provisional 68k move.b -$6553(a1), -$78(a5, a0.l)
db 0xE1, 0xFF ; file 00207C
db 0xFF, 0x04 ; 00207E: provisional 68k dc.w $ff04
db 0x04, 0x88, 0x88, 0x88 ; file 002080
db 0x88, 0xE1 ; 002084: provisional 68k divu.w -(a1), d4
db 0xFF, 0xFF ; 002086: provisional 68k dc.w $ffff
db 0x04, 0x03, 0xEE, 0xEE ; 002088: provisional 68k subi.b #$ee, d3
db 0xEE, 0xE1 ; file 00208C
db 0xFF, 0xFF ; 00208E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002090: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 002092: provisional 68k ori.b #$0, d0
db 0x00, 0x20, 0x00, 0x30 ; 002096: provisional 68k ori.b #$30, -(a0)
db 0x00, 0x10, 0x08, 0x08 ; 00209A: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 00209E
db 0x10, 0x10 ; 0020A0: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0020A2: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0020A4: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0020A6: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0020A8: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0020AC: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0020B0: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0020B2: provisional 68k neg.w d4
db 0x0C, 0x18, 0x1C, 0x78 ; 0020B4: provisional 68k cmpi.b #$78, (a0)+
db 0x84, 0x84 ; 0020B8: provisional 68k or.l d4, d2
db 0xD0, 0xD4 ; 0020BA: provisional 68k adda.w (a4), a0
db 0xD4, 0x60 ; 0020BC: provisional 68k add.w -(a0), d2
db 0x64, 0x74 ; 0020BE: provisional 68k bcc.b $2134
db 0x38, 0x38, 0x6C, 0x30 ; 0020C0: provisional 68k move.w $6c30.w, d4
db 0x38, 0x44 ; 0020C4: provisional 68k movea.w d4, a4
db 0x94, 0x9C ; 0020C6: provisional 68k sub.l (a4)+, d2
db 0xA4, 0x0C ; 0020C8: provisional 68k dc.w $a40c
db 0x0C, 0x60, 0xFF, 0xFF ; 0020CA: provisional 68k cmpi.w #$ffff, -(a0)
db 0xFF, 0xFF ; 0020CE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0020D0: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 0020D2: provisional 68k btst.l d5, d1
db 0xCE, 0xB1, 0xFF, 0xFF, 0x0B, 0x01, 0xBA, 0xBF ; 0020D4: provisional 68k and.l ([$b01babf]), d7
db 0xFF, 0xFF ; 0020DC: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 0020DE: provisional 68k btst.l d5, d1
db 0xBE, 0xCF ; 0020E0: provisional 68k cmpa.w a7, a7
db 0xFF, 0xFF ; 0020E2: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 0020E4: provisional 68k btst.l d5, d1
db 0xBE, 0xCF ; 0020E6: provisional 68k cmpa.w a7, a7
db 0xFF, 0xFF ; 0020E8: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 0020EA: provisional 68k btst.l d5, d1
db 0x9E, 0xCF ; 0020EC: provisional 68k suba.w a7, a7
db 0xFF, 0xFF ; 0020EE: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 0020F0: provisional 68k btst.l d5, d1
db 0xAA, 0xBF ; 0020F2: provisional 68k dc.w $aabf
db 0xFF, 0xFF ; 0020F4: provisional 68k dc.w $ffff
db 0x0A, 0x02, 0xFB, 0xAA ; 0020F6: provisional 68k eori.b #$aa, d2
db 0xB1, 0xFF ; file 0020FA
db 0xFF, 0x0A ; 0020FC: provisional 68k dc.w $ff0a
db 0x02, 0x1B, 0xAA, 0xBF ; 0020FE: provisional 68k andi.b #$bf, (a3)+
db 0xFF, 0xFF ; 002102: provisional 68k dc.w $ffff
db 0x0A, 0x02, 0x1B, 0xE9 ; 002104: provisional 68k eori.b #$e9, d2
db 0xDF, 0xFF ; file 002108
db 0xFF, 0x06 ; 00210A: provisional 68k dc.w $ff06
db 0x01, 0x1C ; 00210C: provisional 68k btst.l d0, (a4)+
db 0xBB, 0x02 ; 00210E: provisional 68k eor.b d5, d2
db 0x02, 0x1B, 0xEB, 0xD1 ; 002110: provisional 68k andi.b #$d1, (a3)+
db 0xFF, 0xFF ; 002114: provisional 68k dc.w $ffff
db 0x06, 0x02, 0xCA, 0xAA ; 002116: provisional 68k addi.b #$aa, d2
db 0xB1, 0x01 ; 00211A: provisional 68k eor.b d0, d1
db 0x02, 0x1B, 0xA9, 0xC1 ; 00211C: provisional 68k andi.b #$c1, (a3)+
db 0xFF, 0xFF ; 002120: provisional 68k dc.w $ffff
db 0x06, 0x02, 0xBA, 0xAA ; 002122: provisional 68k addi.b #$aa, d2
db 0xBF, 0x01 ; 002126: provisional 68k eor.b d7, d1
db 0x01, 0x1B ; 002128: provisional 68k btst.l d0, (a3)+
db 0xA9, 0xFF ; 00212A: provisional 68k dc.w $a9ff
db 0xFF, 0x06 ; 00212C: provisional 68k dc.w $ff06
db 0x02, 0xCA ; file 00212E
db 0xAA, 0xCF ; 002130: provisional 68k dc.w $aacf
db 0x01, 0x01 ; 002132: provisional 68k btst.l d0, d1
db 0x1B, 0xA9, 0xFF, 0xFF, 0x03, 0x05 ; 002134: provisional 68k move.b -$1(a1), ([a5], d0.w * 2)
db 0x1B, 0xEE ; file 00213A
db 0xBF, 0xDE ; 00213C: provisional 68k cmpa.l (a6)+, a7
db 0xAA, 0xDF ; 00213E: provisional 68k dc.w $aadf
db 0x01, 0x02 ; 002140: provisional 68k btst.l d0, d2
db 0xCE, 0xA9, 0xDF, 0xFF ; 002142: provisional 68k and.l -$2001(a1), d7
db 0xFF, 0x03 ; 002146: provisional 68k dc.w $ff03
db 0x05, 0x1E ; 002148: provisional 68k btst.l d2, (a6)+
db 0xAA, 0xEF ; 00214A: provisional 68k dc.w $aaef
db 0xDE, 0xAA, 0xDF, 0x01 ; 00214C: provisional 68k add.l -$20ff(a2), d7
db 0x02, 0xBA ; file 002150
db 0xAE, 0xDF ; 002152: provisional 68k dc.w $aedf
db 0xFF, 0xFF ; 002154: provisional 68k dc.w $ffff
db 0x03, 0x05 ; 002156: provisional 68k btst.l d1, d5
db 0x19, 0xAA, 0xBF, 0xD9, 0xAA, 0xCF ; 002158: provisional 68k move.b -$4027(a2), -$31(a4, a2.l)
db 0x01, 0x03 ; 00215E: provisional 68k btst.l d0, d3
db 0xBA, 0xAE, 0xBF, 0xCC ; 002160: provisional 68k cmp.l -$4034(a6), d5
db 0xFF, 0xFF ; 002164: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xAA, 0xBF ; 002166: provisional 68k subi.b #$bf, d4
db 0xD9, 0xAA, 0xCF, 0x01 ; 00216A: provisional 68k add.l d4, -$30ff(a2)
db 0x04, 0xBE, 0xEB, 0xDD, 0xEE, 0xFF ; file 00216E
db 0xFF, 0xFF ; 002174: provisional 68k dc.w $ffff
db 0x04, 0x04, 0xAA, 0xBF ; 002176: provisional 68k subi.b #$bf, d4
db 0xD9, 0xAA, 0xCF, 0x01 ; 00217A: provisional 68k add.l d4, -$30ff(a2)
db 0x04, 0xDB, 0xBD, 0xFF, 0xEE, 0xD1 ; file 00217E
db 0xFF, 0xFF ; 002184: provisional 68k dc.w $ffff
db 0x03, 0x05 ; 002186: provisional 68k btst.l d1, d5
db 0x1B, 0xAA, 0xBF, 0xD9, 0xAA, 0xBF ; 002188: provisional 68k move.b -$4027(a2), -$41(a5, a2.l)
db 0x01, 0x01 ; 00218E: provisional 68k btst.l d0, d1
db 0xB9, 0x9D ; 002190: provisional 68k eor.l d4, (a5)+
db 0x01, 0x01 ; 002192: provisional 68k btst.l d0, d1
db 0xC9, 0xBD ; file 002194
db 0xFF, 0xFF ; 002196: provisional 68k dc.w $ffff
db 0x03, 0x05 ; 002198: provisional 68k btst.l d1, d5
db 0x1B, 0xAA, 0xBF, 0xD9, 0xAA, 0xBF ; 00219A: provisional 68k move.b -$4027(a2), -$41(a5, a2.l)
db 0x01, 0x01 ; 0021A0: provisional 68k btst.l d0, d1
db 0xBE, 0xEC, 0x01, 0x01 ; 0021A2: provisional 68k cmpa.w $101(a4), a7
db 0x19, 0xEC ; file 0021A6
db 0xFF, 0xFF ; 0021A8: provisional 68k dc.w $ffff
db 0x01, 0x07 ; 0021AA: provisional 68k btst.l d0, d7
db 0xBE, 0xEC, 0xDB, 0xAA ; 0021AC: provisional 68k cmpa.w -$2456(a4), a7
db 0xBD, 0xDE ; 0021B0: provisional 68k cmpa.l (a6)+, a6
db 0xAA, 0xB1 ; 0021B2: provisional 68k dc.w $aab1
db 0x01, 0x01 ; 0021B4: provisional 68k btst.l d0, d1
db 0xBE, 0xED, 0x01, 0x02 ; 0021B6: provisional 68k cmpa.w $102(a5), a7
db 0x1C, 0xAE, 0xC1, 0xFF ; 0021BA: provisional 68k move.b -$3e01(a6), (a6)
db 0xFF, 0x01 ; 0021BE: provisional 68k dc.w $ff01
db 0x07, 0xEA, 0xAC, 0xD9 ; 0021C0: provisional 68k bset.b d3, -$5327(a2)
db 0xAA, 0x9D ; 0021C4: provisional 68k dc.w $aa9d
db 0xD9, 0xAA, 0x91, 0x01 ; 0021C6: provisional 68k add.l d4, -$6eff(a2)
db 0x01, 0xBA ; file 0021CA
db 0xED, 0x02 ; 0021CC: provisional 68k asl.b #$6, d2
db 0x01, 0xAA, 0xB1, 0xFF ; 0021CE: provisional 68k bclr.b d0, -$4e01(a2)
db 0xFF, 0x01 ; 0021D2: provisional 68k dc.w $ff01
db 0x0A, 0xEA, 0xE8, 0xCA ; file 0021D4
db 0xAA, 0x9D ; 0021D8: provisional 68k dc.w $aa9d
db 0xBA, 0xAA, 0xAB, 0xFF ; 0021DA: provisional 68k cmp.l -$5401(a2), d5
db 0xBA, 0xED, 0x02, 0x01 ; 0021DE: provisional 68k cmpa.w $201(a5), a5
db 0xAA, 0xB1 ; 0021E2: provisional 68k dc.w $aab1
db 0xFF, 0xFF ; 0021E4: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xEA, 0x9D ; 0021E6: provisional 68k movep.w -$1563(a3), d0
db 0x9A, 0xAA, 0xED, 0xBA ; 0021EA: provisional 68k sub.l -$1246(a2), d5
db 0xAA, 0xED ; 0021EE: provisional 68k dc.w $aaed
db 0xFF, 0xEA ; 0021F0: provisional 68k dc.w $ffea
db 0xED, 0xC1 ; 0021F2: provisional 68k dc.w $edc1
db 0x01, 0x01 ; 0021F4: provisional 68k btst.l d0, d1
db 0xE9, 0xD1 ; file 0021F6
db 0xFF, 0xFF ; 0021F8: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xEA, 0xEB ; 0021FA: provisional 68k movep.w -$1515(a3), d0
db 0xBE, 0xE9, 0xBD, 0xDB ; 0021FE: provisional 68k cmpa.w -$4225(a1), a7
db 0xBB, 0xBC ; file 002202
db 0xFB, 0xAA ; 002204: provisional 68k dc.w $fbaa
db 0xA9, 0xD1 ; 002206: provisional 68k dc.w $a9d1
db 0x01, 0x01 ; 002208: provisional 68k btst.l d0, d1
db 0xEB, 0xFF ; file 00220A
db 0xFF, 0xFF ; 00220C: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 00220E
db 0xFF, 0xEA ; 002210: provisional 68k dc.w $ffea
db 0x9B, 0xCB ; 002212: provisional 68k suba.l a3, a5
db 0xBB, 0xDD ; 002214: provisional 68k cmpa.l (a5)+, a5
db 0xDB, 0x99 ; 002216: provisional 68k add.l d5, (a1)+
db 0xBD, 0xDB ; 002218: provisional 68k cmpa.l (a3)+, a6
db 0xEE, 0xE9 ; file 00221A
db 0xD1, 0x1B ; 00221C: provisional 68k add.b d0, (a3)+
db 0xAB, 0xFF ; 00221E: provisional 68k dc.w $abff
db 0xFF, 0x00 ; 002220: provisional 68k dc.w $ff00
db 0x0E, 0x1C ; file 002222
db 0xAA, 0x9B ; 002224: provisional 68k dc.w $aa9b
db 0xEE, 0xEE ; file 002226
db 0xBD, 0xCA ; 002228: provisional 68k cmpa.l a2, a6
db 0xAA, 0x9D ; 00222A: provisional 68k dc.w $aa9d
db 0xFB, 0xEE ; 00222C: provisional 68k dc.w $fbee
db 0xEB, 0xD1 ; 00222E: provisional 68k dc.w $ebd1
db 0x19, 0xAB, 0xFF, 0xFF, 0x00, 0x0E ; 002230: provisional 68k move.b -$1(a3), $e(a4, d0.w)
db 0x1E, 0xAA, 0xEB, 0xEA ; 002236: provisional 68k move.b -$1416(a2), (a7)
db 0xAA, 0xD8 ; 00223A: provisional 68k dc.w $aad8
db 0xCE, 0xAE, 0xBD, 0xFB ; 00223C: provisional 68k and.l -$4205(a6), d7
db 0xAA, 0xAB ; 002240: provisional 68k dc.w $aaab
db 0xDF, 0xCE ; 002242: provisional 68k adda.l a6, a7
db 0xAB, 0xFF ; 002244: provisional 68k dc.w $abff
db 0xFF, 0x00 ; 002246: provisional 68k dc.w $ff00
db 0x0F, 0xC9, 0xE9, 0x9B ; 002248: provisional 68k movep.l d7, -$1665(a1)
db 0xBE, 0xAE, 0xD8, 0xCE ; 00224C: provisional 68k cmp.l -$2732(a6), d7
db 0xAE, 0xDD ; 002250: provisional 68k dc.w $aedd
db 0xFC, 0xAA ; 002252: provisional 68k dc.w $fcaa
db 0xED, 0xDF ; file 002254
db 0xEA, 0xAB ; 002256: provisional 68k lsr.l d5, d3
db 0xD1, 0xFF ; file 002258
db 0xFF, 0x00 ; 00225A: provisional 68k dc.w $ff00
db 0x0F, 0xC9, 0xAA, 0xED ; 00225C: provisional 68k movep.l d7, -$5513(a1)
db 0x89, 0xEE, 0xBD, 0xD9 ; 002260: provisional 68k divs.w -$4227(a6), d4
db 0xA9, 0xDD ; 002264: provisional 68k dc.w $a9dd
db 0xFC, 0xAA ; 002266: provisional 68k dc.w $fcaa
db 0xB8, 0xFB, 0xEA, 0xA9 ; 002268: provisional 68k cmpa.w $2213(pc, a6.l), a4
db 0xD1, 0xFF ; file 00226C
db 0xFF, 0x00 ; 00226E: provisional 68k dc.w $ff00
db 0x0E, 0x1B, 0xEA, 0xED ; file 002270
db 0x8B, 0xEE, 0xBD, 0xDB ; 002274: provisional 68k divs.w -$4225(a6), d5
db 0xE9, 0xDD ; file 002278
db 0xFB, 0xEE ; 00227A: provisional 68k dc.w $fbee
db 0xB8, 0x89 ; 00227C: provisional 68k cmp.l a1, d4
db 0xBC, 0xBD ; file 00227E
db 0xFF, 0xFF ; 002280: provisional 68k dc.w $ffff
db 0x00, 0x0E ; file 002282
db 0x1C, 0x9E ; 002284: provisional 68k move.b (a6)+, (a6)
db 0xEB, 0x8C ; 002286: provisional 68k lsl.l #$5, d4
db 0x9E, 0xBD ; file 002288
db 0x8B, 0xE9, 0xDD, 0xFB ; 00228A: provisional 68k divs.w -$2205(a1), d5
db 0xE9, 0xDD ; file 00228E
db 0x9A, 0xE9, 0xCD, 0xFF ; 002290: provisional 68k suba.w -$3201(a1), a5
db 0xFF, 0x01 ; 002294: provisional 68k dc.w $ff01
db 0x0D, 0xB9, 0xEB, 0xDD, 0x9E, 0x9D ; 002296: provisional 68k bclr.b d6, $ebdd9e9d.l
db 0x8C, 0xE9, 0xDD, 0xD9 ; 00229C: provisional 68k divu.w -$2227(a1), d6
db 0xE9, 0x8B ; 0022A0: provisional 68k lsl.l #$4, d3
db 0xAA, 0xA9 ; 0022A2: provisional 68k dc.w $aaa9
db 0xCD, 0xFF ; file 0022A4
db 0xFF, 0x01 ; 0022A6: provisional 68k dc.w $ff01
db 0x0D, 0xC9, 0x99, 0xBD ; 0022A8: provisional 68k movep.l d6, -$6643(a1)
db 0xBE, 0x9B ; 0022AC: provisional 68k cmp.l (a3)+, d7
db 0x8D, 0xE9, 0xDD, 0xCE ; 0022AE: provisional 68k divs.w -$2232(a1), d6
db 0xAB, 0x8E ; 0022B2: provisional 68k dc.w $ab8e
db 0xAE, 0xBD ; 0022B4: provisional 68k dc.w $aebd
db 0xD1, 0xFF ; file 0022B6
db 0xFF, 0x01 ; 0022B8: provisional 68k dc.w $ff01
db 0x0C, 0xCB, 0x9E, 0xBD ; file 0022BA
db 0xD9, 0xEB, 0xDD, 0xE9 ; 0022BE: provisional 68k adda.l -$2217(a3), a4
db 0xBD, 0xBE ; file 0022C2
db 0xEB, 0x8E ; 0022C4: provisional 68k lsl.l #$5, d6
db 0xAD, 0x8F ; 0022C6: provisional 68k dc.w $ad8f
db 0xFF, 0xFF ; 0022C8: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1C, 0xBE ; 0022CA: provisional 68k movep.w $1cbe(a3), d0
db 0x9B, 0xDB ; 0022CE: provisional 68k suba.l (a3)+, a5
db 0xE9, 0xDD ; file 0022D0
db 0xEE, 0xBD ; 0022D2: provisional 68k ror.l d7, d5
db 0xBA, 0xEB, 0x8E, 0xBD ; 0022D4: provisional 68k cmpa.w -$7143(a3), a5
db 0xFF, 0xFF ; 0022D8: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1C, 0xD9 ; 0022DA: provisional 68k movep.w $1cd9(a3), d0
db 0x9B, 0xBB, 0x99, 0xBD ; file 0022DE
db 0xEE, 0xBD ; 0022E2: provisional 68k ror.l d7, d5
db 0xBA, 0xEB, 0x8B, 0xDF ; 0022E4: provisional 68k cmpa.w -$7421(a3), a5
db 0xFF, 0xFF ; 0022E8: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 0022EA
db 0xDB, 0xE9, 0x9D, 0xB9 ; 0022EC: provisional 68k adda.l -$6247(a1), a5
db 0xDD, 0xE9, 0xD8, 0xC9 ; 0022F0: provisional 68k adda.l -$2737(a1), a6
db 0xB8, 0x88 ; 0022F4: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 0022F6: provisional 68k dc.w $ffff
db 0xFF, 0x02 ; 0022F8: provisional 68k dc.w $ff02
db 0x09, 0xFD ; file 0022FA
db 0xBB, 0xD8 ; 0022FC: provisional 68k cmpa.l (a0)+, a5
db 0x88, 0x88 ; file 0022FE
db 0xBD, 0x8D ; 002300: provisional 68k cmpm.l (a5)+, (a6)+
db 0xDD, 0x88 ; 002302: provisional 68k addx.l -(a0), -(a6)
db 0x8D, 0xFF ; file 002304
db 0xFF, 0x02 ; 002306: provisional 68k dc.w $ff02
db 0x08, 0x18, 0x88, 0x8D ; file 002308
db 0x88, 0xDB ; 00230C: provisional 68k divu.w (a3)+, d4
db 0xD8, 0xD9 ; 00230E: provisional 68k adda.w (a1)+, a4
db 0x9D, 0x8D ; 002310: provisional 68k subx.l -(a5), -(a6)
db 0xFF, 0xFF ; 002312: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 002314: provisional 68k btst.l d1, d7
db 0xBB, 0x9E ; 002316: provisional 68k eor.l d5, (a6)+
db 0xEE, 0xAA ; 002318: provisional 68k lsr.l d7, d2
db 0xEE, 0xEB ; file 00231A
db 0xDD, 0xD1 ; 00231C: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 00231E: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 002320: provisional 68k btst.l d1, d6
db 0x9A, 0xAA, 0xAA, 0xAA ; 002322: provisional 68k sub.l -$5556(a2), d5
db 0xAE, 0xB8 ; 002326: provisional 68k dc.w $aeb8
db 0x8D, 0xFF ; file 002328
db 0xFF, 0x03 ; 00232A: provisional 68k dc.w $ff03
db 0x06, 0xCE ; 00232C: provisional 68k dc.w $6ce
db 0xAA, 0xEE ; 00232E: provisional 68k dc.w $aaee
db 0xE9, 0xB8 ; 002330: provisional 68k rol.l d4, d0
db 0x88, 0xD1 ; 002332: provisional 68k divu.w (a1), d4
db 0xFF, 0xFF ; 002334: provisional 68k dc.w $ffff
db 0x03, 0x05 ; 002336: provisional 68k btst.l d1, d5
db 0x1D, 0x8D, 0x88, 0x88, 0x88, 0x8D ; file 002338
db 0xFF, 0xFF ; 00233E: provisional 68k dc.w $ffff
db 0x04, 0x03, 0xDD, 0xDD ; 002340: provisional 68k subi.b #$dd, d3
db 0xDD, 0xD1 ; 002344: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 002346: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002348: provisional 68k dc.w $ffff
db 0x00, 0x07, 0x00, 0x00 ; 00234A: provisional 68k ori.b #$0, d7
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x00 ; 00234E: provisional 68k ori.b #$26, (a0, d0.w)
db 0x00, 0x58, 0x00, 0x00 ; 002354: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x18 ; 002358: provisional 68k ori.b #$18, d0
db 0x00, 0x12, 0x00, 0x00 ; 00235C: provisional 68k ori.b #$0, (a2)
db 0x00, 0x0A ; file 002360
db 0x00, 0x06, 0x00, 0x0A ; 002362: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 002366: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 00236A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 00236E: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 002372: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 002376: provisional 68k ori.b #$5, d4
db 0x00, 0x04, 0x00, 0x03 ; 00237A: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 00237E: provisional 68k ori.b #$1, d2
db 0x00, 0x0C ; file 002382
db 0x01, 0xB6, 0x03, 0x5E ; 002384: provisional 68k bclr.b d0, ([a6])
db 0x05, 0x0E, 0x06, 0xCC ; 002388: provisional 68k movep.w $6cc(a6), d2
db 0x08, 0x84, 0x00, 0x00 ; 00238C: provisional 68k bclr.b #$0, d4
db 0x00, 0x00, 0x00, 0x30 ; 002390: provisional 68k ori.b #$30, d0
db 0x00, 0x26, 0x00, 0x10 ; 002394: provisional 68k ori.b #$10, -(a6)
db 0x08, 0x08, 0x08, 0x10 ; file 002398
db 0x10, 0x10 ; 00239C: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00239E: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0023A0: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0023A2: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0023A4: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0023A8: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0023AC: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0023AE: provisional 68k neg.w d4
db 0x30, 0x38, 0x44, 0x88 ; 0023B0: provisional 68k move.w $4488.w, d0
db 0x8C, 0x94 ; 0023B4: provisional 68k or.l (a4), d6
db 0xDC, 0xDC ; 0023B6: provisional 68k adda.w (a4)+, a6
db 0xE0, 0x60 ; 0023B8: provisional 68k asr.w d0, d0
db 0x64, 0x74 ; 0023BA: provisional 68k bcc.b $2430
db 0x38, 0x38, 0x74, 0xB0 ; 0023BC: provisional 68k move.w $74b0.w, d4
db 0xB4, 0xB8, 0x10, 0x10 ; 0023C0: provisional 68k cmp.l $1010.w, d2
db 0x60, 0x10 ; 0023C4: provisional 68k bra.b $23d6
db 0x10, 0x70 ; file 0023C6
db 0xFF, 0xFF ; 0023C8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023CA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023CC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023CE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023D0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023D2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023D4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023D6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023D8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023DA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023DC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023DE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023E0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023E2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023E4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023E6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023E8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0023EA: provisional 68k dc.w $ffff
db 0x08, 0x04 ; file 0023EC
db 0xBB, 0xB9, 0x99, 0xBC, 0xC1, 0xFF ; 0023EE: provisional 68k eor.l d5, $99bcc1ff.l
db 0xFF, 0x08 ; 0023F4: provisional 68k dc.w $ff08
db 0x05, 0xBB ; file 0023F6
db 0x99, 0x99 ; 0023F8: provisional 68k sub.l d4, (a1)+
db 0x99, 0xBC, 0xCC, 0xFF ; file 0023FA
db 0xFF, 0x09 ; 0023FE: provisional 68k dc.w $ff09
db 0x05, 0xEE, 0x88, 0x89 ; 002400: provisional 68k bset.b d2, -$7777(a6)
db 0xDD, 0xD9 ; 002404: provisional 68k adda.l (a1)+, a6
db 0xC1, 0xFF ; file 002406
db 0xFF, 0x0B ; 002408: provisional 68k dc.w $ff0b
db 0x03, 0x1C ; 00240A: provisional 68k btst.l d1, (a4)+
db 0x9D, 0x9B ; 00240C: provisional 68k sub.l d6, (a3)+
db 0xBC, 0xFF ; file 00240E
db 0xFF, 0x06 ; 002410: provisional 68k dc.w $ff06
db 0x02, 0xC9 ; file 002412
db 0x99, 0xDB ; 002414: provisional 68k suba.l (a3)+, a4
db 0x03, 0x03 ; 002416: provisional 68k btst.l d1, d3
db 0x8B, 0xAD, 0xB9, 0xB1 ; 002418: provisional 68k or.l d5, -$464f(a5)
db 0xFF, 0xFF ; 00241C: provisional 68k dc.w $ffff
db 0x06, 0x04, 0xCC, 0xCB ; 00241E: provisional 68k addi.b #$cb, d4
db 0xBB, 0x99 ; 002422: provisional 68k eor.l d5, (a1)+
db 0xBC, 0x01 ; 002424: provisional 68k cmp.b d1, d6
db 0x04, 0xFC, 0xDD, 0xBB ; file 002426
db 0x99, 0xC1 ; 00242A: provisional 68k suba.l d1, a4
db 0xFF, 0xFF ; 00242C: provisional 68k dc.w $ffff
db 0x06, 0x0B ; file 00242E
db 0xFC, 0xCC ; 002430: provisional 68k dc.w $fccc
db 0xCC, 0xBB, 0xDD, 0xC1 ; 002432: provisional 68k and.l ([$2434]), d6
db 0x1C, 0x9B ; 002436: provisional 68k move.b (a3)+, (a6)
db 0x8E, 0xBD ; file 002438
db 0xDC, 0xF1, 0xFF, 0xFF, 0x09, 0x04, 0xC8, 0x9D ; 00243A: provisional 68k adda.w ([$904c89d]), a6
db 0xC1, 0x1B ; 002442: provisional 68k and.b d0, (a3)+
db 0x9C, 0x01 ; 002444: provisional 68k sub.b d1, d6
db 0x02, 0xCD ; file 002446
db 0xAB, 0xEE ; 002448: provisional 68k dc.w $abee
db 0xFF, 0xFF ; 00244A: provisional 68k dc.w $ffff
db 0x09, 0x04 ; 00244C: provisional 68k btst.l d4, d4
db 0xEE, 0xBB ; 00244E: provisional 68k ror.l d7, d3
db 0xEE, 0xED ; file 002450
db 0x9F, 0x01 ; 002452: provisional 68k subx.b d1, d7
db 0x02, 0xBD ; file 002454
db 0x9C, 0xF1, 0xFF, 0xFF, 0x02, 0x00, 0xCC, 0x03 ; 002456: provisional 68k suba.w ([$200cc03]), a6
db 0x01, 0xCC, 0xCF, 0x01 ; 00245E: provisional 68k movep.l d0, -$30ff(a4)
db 0x07, 0x1C ; 002462: provisional 68k btst.l d3, (a4)+
db 0x9B, 0xEF, 0xBA, 0x9C ; 002464: provisional 68k suba.l -$4564(a7), a5
db 0xBB, 0xD9 ; 002468: provisional 68k cmpa.l (a1)+, a5
db 0x81, 0xFF ; file 00246A
db 0xFF, 0x01 ; 00246C: provisional 68k dc.w $ff01
db 0x0E, 0x1B ; file 00246E
db 0xDA, 0x9B ; 002470: provisional 68k add.l (a3)+, d5
db 0xB1, 0x1C ; 002472: provisional 68k eor.b d0, (a4)+
db 0x9D, 0x9B ; 002474: provisional 68k sub.l d6, (a3)+
db 0xB1, 0x1B ; 002476: provisional 68k eor.b d0, (a3)+
db 0x9B, 0x8B ; 002478: provisional 68k subx.l -(a3), -(a5)
db 0xDA, 0x9B ; 00247A: provisional 68k add.l (a3)+, d5
db 0x9D, 0xDC ; 00247C: provisional 68k suba.l (a4)+, a6
db 0xFF, 0xFF ; 00247E: provisional 68k dc.w $ffff
db 0x01, 0x0E, 0xBA, 0xAA ; 002480: provisional 68k movep.w -$4556(a6), d0
db 0xAA, 0xAA ; 002484: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 002486: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 002488: provisional 68k dc.w $aaad
db 0xDA, 0xAA, 0xAA, 0xAD ; 00248A: provisional 68k add.l -$5553(a2), d5
db 0x9B, 0xBB, 0x88, 0xFF ; file 00248E
db 0xFF, 0x00 ; 002492: provisional 68k dc.w $ff00
db 0x0F, 0x1C ; 002494: provisional 68k btst.l d7, (a4)+
db 0x9D, 0xD9 ; 002496: provisional 68k suba.l (a1)+, a6
db 0xDD, 0xDD ; 002498: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 00249A: provisional 68k adda.l (a2)+, a6
db 0xA9, 0xDD ; 00249C: provisional 68k dc.w $a9dd
db 0xDD, 0x99 ; 00249E: provisional 68k add.l d6, (a1)+
db 0x9B, 0xBB ; file 0024A0
db 0x89, 0xD8 ; 0024A2: provisional 68k divs.w (a0)+, d4
db 0xEE, 0xFF ; file 0024A4
db 0xFF, 0x00 ; 0024A6: provisional 68k dc.w $ff00
db 0x0E, 0x99 ; file 0024A8
db 0x9B, 0xB8, 0x88, 0x88 ; 0024AA: provisional 68k sub.l d5, $8888.w
db 0x88, 0xBB, 0xBB, 0x9B, 0x8B, 0x9D, 0xDD, 0x98 ; 0024AE: provisional 68k or.l ([$24b0, a3.l * 2], $8b9ddd98), d4
db 0x9D, 0x98 ; 0024B6: provisional 68k sub.l d6, (a0)+
db 0xFF, 0xFF ; 0024B8: provisional 68k dc.w $ffff
db 0x00, 0x11, 0xBB, 0x88 ; 0024BA: provisional 68k ori.b #$88, (a1)
db 0x88, 0x88 ; file 0024BE
db 0xB8, 0x88 ; 0024C0: provisional 68k cmp.l a0, d4
db 0x88, 0x89 ; file 0024C2
db 0x99, 0x9D ; 0024C4: provisional 68k sub.l d4, (a5)+
db 0xAA, 0xAA ; 0024C6: provisional 68k dc.w $aaaa
db 0xAD, 0xAD ; 0024C8: provisional 68k dc.w $adad
db 0xCC, 0xCC, 0xCC, 0xCC ; file 0024CA
db 0x02, 0x01, 0x1C, 0xCF ; 0024CE: provisional 68k andi.b #$cf, d1
db 0xFF, 0xFF ; 0024D2: provisional 68k dc.w $ffff
db 0x00, 0x17, 0x88, 0x88 ; 0024D4: provisional 68k ori.b #$88, (a7)
db 0x88, 0x89 ; file 0024D8
db 0x99, 0x9B ; 0024DA: provisional 68k sub.l d4, (a3)+
db 0xB8, 0xBD ; file 0024DC
db 0xDA, 0xAA, 0xAA, 0xD9 ; 0024DE: provisional 68k add.l -$5527(a2), d5
db 0xAA, 0xAD ; 0024E2: provisional 68k dc.w $aaad
db 0x99, 0xD9 ; 0024E4: provisional 68k suba.l (a1)+, a4
db 0xDA, 0xD9 ; 0024E6: provisional 68k adda.w (a1)+, a5
db 0xB9, 0xDD ; 0024E8: provisional 68k cmpa.l (a5)+, a4
db 0x99, 0x9B ; 0024EA: provisional 68k sub.l d4, (a3)+
db 0x99, 0x9E ; 0024EC: provisional 68k sub.l d4, (a6)+
db 0xFF, 0xFF ; 0024EE: provisional 68k dc.w $ffff
db 0x00, 0x17, 0x88, 0x88 ; 0024F0: provisional 68k ori.b #$88, (a7)
db 0x88, 0x89, 0x9B, 0xBB ; file 0024F4
db 0x99, 0xB9, 0xDD, 0xAA, 0xAD, 0x9B ; 0024F8: provisional 68k sub.l d4, $ddaaad9b.l
db 0x9B, 0x9D ; 0024FE: provisional 68k sub.l d5, (a5)+
db 0xDD, 0xDD ; 002500: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 002502: provisional 68k add.l d6, (a1)+
db 0x9D, 0xDD ; 002504: provisional 68k suba.l (a5)+, a6
db 0xDD, 0x99 ; 002506: provisional 68k add.l d6, (a1)+
db 0x9D, 0x98 ; 002508: provisional 68k sub.l d6, (a0)+
db 0xFF, 0xFF ; 00250A: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 00250C: provisional 68k btst.l d0, (a4)
db 0xE8, 0x88 ; 00250E: provisional 68k lsr.l #$4, d0
db 0x8C, 0xC8, 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB ; file 002510
db 0xB8, 0x88 ; 002518: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x8C, 0x88, 0x88, 0x88, 0x88, 0x8E, 0xFF ; file 00251A
db 0xFF, 0x02 ; 002524: provisional 68k dc.w $ff02
db 0x0A, 0x1F, 0x88, 0x88 ; 002526: provisional 68k eori.b #$88, (a7)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00252A
db 0xFF, 0xFF ; 002532: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002534: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002536: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 002538: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 00253C: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 002542
db 0x10, 0x10 ; 002546: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 002548: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00254A: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00254C: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00254E: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002552: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 002556: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002558: provisional 68k neg.w d4
db 0x2C, 0x34, 0x3C, 0xA8 ; 00255A: provisional 68k move.l -$58(a4, d3.l), d6
db 0xAC, 0xB0 ; 00255E: provisional 68k dc.w $acb0
db 0x7C, 0x80 ; 002560: provisional 68k moveq #$80, d6
db 0x88, 0x0C ; file 002562
db 0x14, 0x2C, 0x0C, 0x0C ; 002564: provisional 68k move.b $c0c(a4), d2
db 0x6C, 0x40 ; 002568: provisional 68k bge.b $25aa
db 0x44, 0x70, 0xD8, 0xDC ; 00256A: provisional 68k neg.w -$24(a0, a5.l)
db 0xDC, 0x08 ; file 00256E
db 0x0C, 0x5C, 0xFF, 0xFF ; 002570: provisional 68k cmpi.w #$ffff, (a4)+
db 0xFF, 0xFF ; 002574: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002576: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002578: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00257A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00257C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00257E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002580: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002582: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002584: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002586: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002588: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00258A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00258C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00258E: provisional 68k dc.w $ffff
db 0x07, 0x05 ; 002590: provisional 68k btst.l d3, d5
db 0x1D, 0xA9, 0x9A, 0xAA, 0x99, 0xA1, 0xFF, 0xFF ; 002592: provisional 68k move.b -$6556(a1), ([$ffff, a1.l])
db 0x06, 0x07, 0xDA, 0xAA ; 00259A: provisional 68k addi.b #$aa, d7
db 0xAA, 0xAA ; 00259E: provisional 68k dc.w $aaaa
db 0xA9, 0x9A ; 0025A0: provisional 68k dc.w $a99a
db 0xDA, 0xA1 ; 0025A2: provisional 68k add.l -(a1), d5
db 0xFF, 0xFF ; 0025A4: provisional 68k dc.w $ffff
db 0x06, 0x01, 0xDD, 0xDD ; 0025A6: provisional 68k addi.b #$dd, d1
db 0x02, 0x05, 0xDA, 0xA9 ; 0025AA: provisional 68k andi.b #$a9, d5
db 0x9A, 0xAA, 0xAD, 0xD1 ; 0025AE: provisional 68k sub.l -$522f(a2), d5
db 0x05, 0x00 ; 0025B2: provisional 68k btst.l d2, d0
db 0xAD, 0xFF ; 0025B4: provisional 68k dc.w $adff
db 0xFF, 0x0A ; 0025B6: provisional 68k dc.w $ff0a
db 0x05, 0xCF, 0xDA, 0xEA ; 0025B8: provisional 68k movep.l d2, -$2516(a7)
db 0xDD, 0xA9, 0x91, 0x03 ; 0025BC: provisional 68k add.l d6, -$6efd(a1)
db 0x02, 0x1D, 0xAA, 0xAD ; 0025C0: provisional 68k andi.b #$ad, (a5)+
db 0xFF, 0xFF ; 0025C4: provisional 68k dc.w $ffff
db 0x06, 0x02, 0x1D, 0xDD ; 0025C6: provisional 68k addi.b #$dd, d2
db 0xDD, 0x02 ; 0025CA: provisional 68k addx.b d2, d6
db 0x04, 0x1D, 0xAD, 0xCF ; 0025CC: provisional 68k subi.b #$cf, (a5)+
db 0xDE, 0xED, 0x02, 0x03 ; 0025D0: provisional 68k adda.w $203(a5), a7
db 0x1D, 0xAA, 0x9A, 0xDC, 0xFF, 0xFF, 0x05, 0x0A, 0x1D, 0xAA ; 0025D4: provisional 68k move.b -$6524(a2), ([$50a1daa])
db 0x9A, 0xAA, 0x9A, 0xD1 ; 0025DE: provisional 68k sub.l -$652f(a2), d5
db 0x1D, 0xAD, 0x88, 0xD9, 0xAD, 0x02, 0x02, 0xD9 ; 0025E2: provisional 68k move.b -$7727(a5), ([a6, a2.l * 4], $2d9)
db 0xEA, 0x8C ; 0025EA: provisional 68k lsr.l #$5, d4
db 0xFF, 0xFF ; 0025EC: provisional 68k dc.w $ffff
db 0x04, 0x0B ; file 0025EE
db 0x1C, 0xAA, 0xAD, 0xD8 ; 0025F0: provisional 68k move.b -$5228(a2), (a6)
db 0xDA, 0x99 ; 0025F4: provisional 68k add.l (a1)+, d5
db 0xD1, 0x1D ; 0025F6: provisional 68k add.b d0, (a5)+
db 0x9D, 0xB8, 0xA9, 0xF1 ; 0025F8: provisional 68k sub.l d6, $a9f1.w
db 0x01, 0x02 ; 0025FC: provisional 68k btst.l d0, d2
db 0xD9, 0xEA, 0xD8, 0xFF ; 0025FE: provisional 68k adda.l -$2701(a2), a4
db 0xFF, 0x09 ; 002602: provisional 68k dc.w $ff09
db 0x09, 0xDD ; 002604: provisional 68k bset.b d4, (a5)+
db 0xD1, 0x1A ; 002606: provisional 68k add.b d0, (a2)+
db 0x9D, 0xBA ; file 002608
db 0x9A, 0xCD ; 00260A: provisional 68k suba.w a5, a5
db 0x9E, 0xEA, 0xD8, 0xFF ; 00260C: provisional 68k suba.w -$2701(a2), a7
db 0xFF, 0x09 ; 002610: provisional 68k dc.w $ff09
db 0x09, 0xDA ; 002612: provisional 68k bset.b d4, (a2)+
db 0xDC, 0x19 ; 002614: provisional 68k add.b (a1)+, d6
db 0xEA, 0xA9 ; 002616: provisional 68k lsr.l d5, d1
db 0x9D, 0xDE ; 002618: provisional 68k suba.l (a6)+, a6
db 0xE9, 0xAD ; 00261A: provisional 68k lsl.l d4, d5
db 0xC1, 0xFF ; file 00261C
db 0xFF, 0x09 ; 00261E: provisional 68k dc.w $ff09
db 0x08, 0xDA ; file 002620
db 0xAA, 0x9E ; 002622: provisional 68k dc.w $aa9e
db 0x9A, 0xAA, 0xDA, 0x99 ; 002624: provisional 68k sub.l -$2567(a2), d5
db 0xA8, 0xFC ; 002628: provisional 68k dc.w $a8fc
db 0xFF, 0xFF ; 00262A: provisional 68k dc.w $ffff
db 0x05, 0x0B, 0xCD, 0xDA ; 00262C: provisional 68k movep.w -$3226(a3), d2
db 0xAA, 0xDD ; 002630: provisional 68k dc.w $aadd
db 0xAE, 0xE9 ; 002632: provisional 68k dc.w $aee9
db 0x9A, 0xAD, 0xA9, 0xA9 ; 002634: provisional 68k sub.l -$5657(a5), d5
db 0x9D, 0x8F ; 002638: provisional 68k subx.l -(a7), -(a6)
db 0xFF, 0xFF ; 00263A: provisional 68k dc.w $ffff
db 0x02, 0x0D ; file 00263C
db 0xDD, 0xDD ; 00263E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xA9, 0xEE, 0xEE ; 002640: provisional 68k add.l d6, -$1112(a1)
db 0x99, 0x99 ; 002644: provisional 68k sub.l d4, (a1)+
db 0x9A, 0xAA, 0x8D, 0xEE ; 002646: provisional 68k sub.l -$7212(a2), d5
db 0x9A, 0x8F ; 00264A: provisional 68k sub.l a7, d5
db 0xFF, 0xFF ; 00264C: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0x1A, 0x99 ; 00264E: provisional 68k movep.w $1a99(a5), d0
db 0x99, 0x9E ; 002652: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xEE ; file 002654
db 0x99, 0x99 ; 002656: provisional 68k sub.l d4, (a1)+
db 0xAA, 0xA9 ; 002658: provisional 68k dc.w $aaa9
db 0x9E, 0x9E ; 00265A: provisional 68k sub.l (a6)+, d7
db 0xE9, 0xDF ; file 00265C
db 0xFF, 0xFF ; 00265E: provisional 68k dc.w $ffff
db 0x01, 0x0D, 0xAE, 0xE9 ; 002660: provisional 68k movep.w -$5117(a5), d0
db 0xE9, 0x9A ; 002664: provisional 68k rol.l #$4, d2
db 0xAA, 0xAA ; 002666: provisional 68k dc.w $aaaa
db 0xDA, 0xDD ; 002668: provisional 68k adda.w (a5)+, a5
db 0xAE, 0xEE ; 00266A: provisional 68k dc.w $aeee
db 0xEE, 0xEE ; file 00266C
db 0xA8, 0xC1 ; 00266E: provisional 68k dc.w $a8c1
db 0xFF, 0xFF ; 002670: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 002672
db 0x1D, 0x9E, 0xAA, 0xAD ; 002674: provisional 68k move.b (a6)+, -$53(a6, a2.l)
db 0x88, 0x88 ; file 002678
db 0x8B, 0x89 ; 00267A: provisional 68k dc.w $8b89
db 0x8E, 0xEE, 0xEE, 0x9A ; 00267C: provisional 68k divu.w -$1166(a6), d7
db 0x9A, 0x8C ; 002680: provisional 68k sub.l a4, d5
db 0xFF, 0xFF ; 002682: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 002684
db 0x1A, 0xAD, 0x88, 0x88 ; 002686: provisional 68k move.b -$7778(a5), (a5)
db 0xBB, 0x88 ; 00268A: provisional 68k cmpm.l (a0)+, (a5)+
db 0x8B, 0x8E ; 00268C: provisional 68k dc.w $8b8e
db 0xEE, 0xEE ; file 00268E
db 0xE9, 0xAD ; 002690: provisional 68k lsl.l d4, d5
db 0x88, 0x81 ; 002692: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 002694: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 002696
db 0xAA, 0x88 ; 002698: provisional 68k dc.w $aa88
db 0x8B, 0x8A ; 00269A: provisional 68k dc.w $8b8a
db 0xAA, 0xAA ; 00269C: provisional 68k dc.w $aaaa
db 0xAA, 0xD9 ; 00269E: provisional 68k dc.w $aad9
db 0x9A, 0xAA, 0xD8, 0x88 ; 0026A0: provisional 68k sub.l -$2778(a2), d5
db 0x88, 0xFF ; file 0026A4
db 0xFF, 0x00 ; 0026A6: provisional 68k dc.w $ff00
db 0x0B, 0xD8 ; 0026A8: provisional 68k bset.b d5, (a0)+
db 0x88, 0x8B ; file 0026AA
db 0x8A, 0xAA, 0xDD, 0xAD ; 0026AC: provisional 68k or.l -$2253(a2), d5
db 0xD8, 0x88 ; 0026B0: provisional 68k add.l a0, d4
db 0x88, 0xBB, 0x88, 0xFF ; 0026B2: provisional 68k or.l $26b3(pc, a0.l), d4
db 0xFF, 0x00 ; 0026B6: provisional 68k dc.w $ff00
db 0x0A, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0026B8
db 0x88, 0xB8, 0xFF, 0xF1 ; 0026C0: provisional 68k or.l $fff1.w, d4
db 0xFF, 0xFF ; 0026C4: provisional 68k dc.w $ffff
db 0x00, 0x07, 0x18, 0x88 ; 0026C6: provisional 68k ori.b #$88, d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0026CA
db 0xFF, 0xFF ; 0026D0: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x18, 0x88 ; 0026D2: provisional 68k andi.b #$88, d2
db 0x81, 0xFF ; file 0026D6
db 0xFF, 0xFF ; 0026D8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0026DA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0026DC: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0026DE: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 0026E0: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 0026E4: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0026EA
db 0x10, 0x10 ; 0026EE: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0026F0: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0026F2: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0026F4: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0026F6: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0026FA: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0026FE: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002700: provisional 68k neg.w d4
db 0x2C, 0x34, 0x3C, 0x90 ; 002702: provisional 68k move.l -$70(a4, d3.l), d6
db 0x94, 0x94 ; 002706: provisional 68k sub.l (a4), d2
db 0xD8, 0xDC ; 002708: provisional 68k adda.w (a4)+, a4
db 0xDC, 0x58 ; 00270A: provisional 68k add.w (a0)+, d6
db 0x58, 0x74, 0x2C, 0x2C ; 00270C: provisional 68k addq.w #$4, $2c(a4, d2.l)
db 0x6C, 0xB8 ; 002710: provisional 68k bge.b $26ca
db 0xBC, 0xC0 ; 002712: provisional 68k cmpa.w d0, a6
db 0xA4, 0xA4 ; 002714: provisional 68k dc.w $a4a4
db 0xB4, 0x70, 0x74, 0x80 ; 002716: provisional 68k cmp.w -$80(a0, d7.w), d2
db 0xFF, 0xFF ; 00271A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00271C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00271E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002720: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002722: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002724: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002726: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002728: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00272A: provisional 68k dc.w $ffff
db 0x12, 0x01 ; 00272C: provisional 68k move.b d1, d1
db 0x1B, 0xF1 ; file 00272E
db 0xFF, 0xFF ; 002730: provisional 68k dc.w $ffff
db 0x12, 0x01 ; 002732: provisional 68k move.b d1, d1
db 0xB9, 0xB1, 0xFF, 0xFF, 0x11, 0x01, 0x1F, 0x9F ; 002734: provisional 68k eor.l d4, ([$11011f9f])
db 0xFF, 0xFF ; 00273C: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xCB, 0xC1 ; 00273E: provisional 68k eori.b #$c1, d1
db 0x05, 0x01 ; 002742: provisional 68k btst.l d2, d1
db 0xFE, 0xF1 ; 002744: provisional 68k dc.w $fef1
db 0xFF, 0xFF ; 002746: provisional 68k dc.w $ffff
db 0x07, 0x05 ; 002748: provisional 68k btst.l d3, d5
db 0x1C, 0xBC, 0xBF, 0x9E ; 00274A: provisional 68k move.b #$9e, (a6)
db 0x9B, 0xCC ; 00274E: provisional 68k suba.l a4, a5
db 0x03, 0x02 ; 002750: provisional 68k btst.l d1, d2
db 0x19, 0xEF, 0xC1, 0xFF ; file 002752
db 0xFF, 0x06 ; 002756: provisional 68k dc.w $ff06
db 0x07, 0x1B ; 002758: provisional 68k btst.l d3, (a3)+
db 0xED, 0xDE, 0xE9, 0xFF ; file 00275A
db 0xF9, 0xE9 ; 00275E: provisional 68k dc.w $f9e9
db 0xBC, 0x02 ; 002760: provisional 68k cmp.b d2, d6
db 0x02, 0xBD ; file 002762
db 0xB8, 0xC1 ; 002764: provisional 68k cmpa.w d1, a4
db 0xFF, 0xFF ; 002766: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0xC9, 0xEF ; 002768: provisional 68k movep.w -$3611(a4), d2
db 0xBC, 0xCB ; 00276C: provisional 68k cmpa.w a3, a6
db 0xBB, 0x9D ; 00276E: provisional 68k eor.l d5, (a5)+
db 0xA9, 0xBB ; 002770: provisional 68k dc.w $a9bb
db 0xEA, 0xDB ; file 002772
db 0x1B, 0xAF, 0xC1, 0xFF, 0xFF, 0x05 ; 002774: provisional 68k move.b -$3e01(a7), ([a5], a7.l * 8)
db 0x01, 0xCB, 0xBC, 0x03 ; 00277A: provisional 68k movep.l d0, -$43fd(a3)
db 0x06, 0x1B, 0x9F, 0x81 ; 00277E: provisional 68k addi.b #$81, (a3)+
db 0xCD, 0xAF, 0xBA, 0x9C ; 002782: provisional 68k and.l d6, -$4564(a7)
db 0xFF, 0xFF ; 002786: provisional 68k dc.w $ffff
db 0x0B, 0x05 ; 002788: provisional 68k btst.l d5, d5
db 0xFB, 0xC1 ; 00278A: provisional 68k dc.w $fbc1
db 0x1F, 0xED ; file 00278C
db 0xD9, 0xC1 ; 00278E: provisional 68k adda.l d1, a4
db 0xFF, 0xFF ; 002790: provisional 68k dc.w $ffff
db 0x05, 0x04 ; 002792: provisional 68k btst.l d2, d4
db 0x1C, 0xBF ; file 002794
db 0xBB, 0xF9, 0xBC, 0x01, 0x00, 0xFF ; 002796: provisional 68k cmpa.l $bc0100ff.l, a5
db 0x01, 0x02 ; 00279C: provisional 68k btst.l d0, d2
db 0xCF, 0xEA, 0xD8, 0xFF ; 00279E: provisional 68k muls.w -$2701(a2), d7
db 0xFF, 0x04 ; 0027A2: provisional 68k dc.w $ff04
db 0x05, 0x1C ; 0027A4: provisional 68k btst.l d2, (a4)+
db 0xBF, 0x99 ; 0027A6: provisional 68k eor.l d7, (a1)+
db 0xFF, 0x9A ; 0027A8: provisional 68k dc.w $ff9a
db 0x9C, 0x01 ; 0027AA: provisional 68k sub.b d1, d6
db 0x00, 0xF9 ; file 0027AC
db 0x01, 0x02 ; 0027AE: provisional 68k btst.l d0, d2
db 0xFD, 0xE9 ; 0027B0: provisional 68k dc.w $fde9
db 0xBC, 0xFF ; file 0027B2
db 0xFF, 0x04 ; 0027B4: provisional 68k dc.w $ff04
db 0x05, 0x1F ; 0027B6: provisional 68k btst.l d2, (a7)+
db 0x9F, 0xCC ; 0027B8: provisional 68k suba.l a4, a7
db 0xCC, 0x8B ; file 0027BA
db 0xFC, 0x01 ; 0027BC: provisional 68k dc.w $fc01
db 0x04, 0x9E, 0xCB, 0xED, 0xF8, 0x81 ; 0027BE: provisional 68k subi.l #$cbedf881, (a6)+
db 0xFF, 0xFF ; 0027C4: provisional 68k dc.w $ffff
db 0x04, 0x00, 0x1C, 0x03 ; 0027C6: provisional 68k subi.b #$3, d0
db 0x06, 0x1C, 0xFB, 0x1B ; 0027CA: provisional 68k addi.b #$1b, (a4)+
db 0xDD, 0xDD ; 0027CE: provisional 68k adda.l (a5)+, a6
db 0x9B, 0x8C ; 0027D0: provisional 68k subx.l -(a4), -(a5)
db 0xFF, 0xFF ; 0027D2: provisional 68k dc.w $ffff
db 0x08, 0x06 ; file 0027D4
db 0x1C, 0x9F ; 0027D6: provisional 68k move.b (a7)+, (a6)
db 0xBD, 0xDE ; 0027D8: provisional 68k cmpa.l (a6)+, a6
db 0xFF, 0xDF ; 0027DA: provisional 68k dc.w $ffdf
db 0x81, 0xFF ; file 0027DC
db 0xFF, 0x08 ; 0027DE: provisional 68k dc.w $ff08
db 0x05, 0xCB, 0xDA, 0xD9 ; 0027E0: provisional 68k movep.l d2, -$2527(a3)
db 0xFB, 0x8D ; 0027E4: provisional 68k dc.w $fb8d
db 0xEB, 0xFF ; file 0027E6
db 0xFF, 0x05 ; 0027E8: provisional 68k dc.w $ff05
db 0x08, 0xCF, 0xED, 0xDE ; file 0027EA
db 0xDD, 0xD9 ; 0027EE: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 0027F0: provisional 68k dc.w $ffff
db 0xED, 0xB1 ; 0027F2: provisional 68k roxl.l d6, d1
db 0xFF, 0xFF ; 0027F4: provisional 68k dc.w $ffff
db 0x03, 0x0A, 0x1C, 0xBF ; 0027F6: provisional 68k movep.w $1cbf(a2), d1
db 0xDA, 0xAA, 0xAA, 0xA9 ; 0027FA: provisional 68k add.l -$5557(a2), d5
db 0xF9, 0xED ; 0027FE: provisional 68k dc.w $f9ed
db 0xAA, 0xA9 ; 002800: provisional 68k dc.w $aaa9
db 0xC1, 0xFF ; file 002802
db 0xFF, 0x01 ; 002804: provisional 68k dc.w $ff01
db 0x0C, 0x1F, 0xFF, 0x99 ; 002806: provisional 68k cmpi.b #$99, (a7)+
db 0xED, 0xAA ; 00280A: provisional 68k lsl.l d6, d2
db 0xDE, 0xF9, 0xFF, 0x9A, 0xAA, 0xAA ; 00280C: provisional 68k adda.w $ff9aaaaa.l, a7
db 0xDF, 0xCC ; 002812: provisional 68k adda.l a4, a7
db 0xFF, 0xFF ; 002814: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0xFA, 0xAA ; 002816: provisional 68k movep.w -$556(a4), d0
db 0xDE, 0x9F ; 00281A: provisional 68k add.l (a7)+, d7
db 0xBB, 0xBB ; file 00281C
db 0xBB, 0xFA, 0xAA, 0xAA ; 00281E: provisional 68k cmpa.l $ffffd2ca(pc), a5
db 0x9F, 0xB8, 0x81, 0xFF ; 002822: provisional 68k sub.l d7, $81ff.w
db 0xFF, 0x00 ; 002826: provisional 68k dc.w $ff00
db 0x0C, 0x1C, 0xAA, 0x9F ; 002828: provisional 68k cmpi.b #$9f, (a4)+
db 0xBB, 0x88 ; 00282C: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88 ; file 00282E
db 0xFD, 0xAA ; 002830: provisional 68k dc.w $fdaa
db 0xAA, 0xD9 ; 002832: provisional 68k dc.w $aad9
db 0xBB, 0x88 ; 002834: provisional 68k cmpm.l (a0)+, (a5)+
db 0xFF, 0xFF ; 002836: provisional 68k dc.w $ffff
db 0x00, 0x0C, 0x1F, 0xE9, 0x88, 0x88 ; file 002838
db 0x88, 0xBB, 0x88, 0xBA ; 00283E: provisional 68k or.l $27fa(pc, a0.l), d4
db 0xE9, 0x9B ; 002842: provisional 68k rol.l #$4, d3
db 0x88, 0x88, 0x88, 0xFF ; file 002844
db 0xFF, 0x00 ; 002848: provisional 68k dc.w $ff00
db 0x0B, 0xCF, 0xBB, 0x88 ; 00284A: provisional 68k movep.l d5, -$4478(a7)
db 0x8B, 0xFF ; file 00284E
db 0xFF, 0xFB ; 002850: provisional 68k dc.w $fffb
db 0xBB, 0x88 ; 002852: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x81, 0xFF ; file 002854
db 0xFF, 0x00 ; 002858: provisional 68k dc.w $ff00
db 0x09, 0xF8, 0x88, 0x88 ; 00285A: provisional 68k bset.b d4, $8888.w
db 0x8F, 0xFB, 0x88, 0x88 ; 00285E: provisional 68k divs.w $27e8(pc, a0.l), d7
db 0x88, 0x88, 0xC1, 0xFF ; file 002862
db 0xFF, 0x00 ; 002866: provisional 68k dc.w $ff00
db 0x08, 0xB8, 0x88, 0x88 ; file 002868
db 0x8B, 0x88 ; 00286C: provisional 68k dc.w $8b88
db 0x88, 0x88, 0x8C, 0xCC ; file 00286E
db 0xFF, 0xFF ; 002872: provisional 68k dc.w $ffff
db 0x00, 0x06, 0x18, 0x88 ; 002874: provisional 68k ori.b #$88, d6
db 0x88, 0x88, 0x88, 0x8C, 0xC1, 0xFF ; file 002878
db 0xFF, 0x00 ; 00287E: provisional 68k dc.w $ff00
db 0x04, 0x1C, 0x88, 0xC8 ; 002880: provisional 68k subi.b #$c8, (a4)+
db 0x88, 0xC1 ; 002884: provisional 68k divu.w d1, d4
db 0xFF, 0xFF ; 002886: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002888: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00288A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00288C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00288E: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 002890: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 002894: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 00289A
db 0x10, 0x10 ; 00289E: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0028A0: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0028A2: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0028A4: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0028A6: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0028AA: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0028AE: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0028B0: provisional 68k neg.w d4
db 0x30, 0x34, 0x38, 0x90 ; 0028B2: provisional 68k move.w -$70(a4, d3.l), d0
db 0x94, 0xA4 ; 0028B6: provisional 68k sub.l -(a4), d2
db 0x78, 0x7C ; 0028B8: provisional 68k moveq #$7c, d4
db 0x84, 0xD8 ; 0028BA: provisional 68k divu.w (a0)+, d2
db 0xD8, 0xDC ; 0028BC: provisional 68k adda.w (a4)+, a4
db 0x3C, 0x3C, 0x6C, 0x0C ; 0028BE: provisional 68k move.w #$6c0c, d6
db 0x0C, 0x54, 0xB0, 0xB4 ; 0028C2: provisional 68k cmpi.w #$b0b4, (a4)
db 0xB4, 0x04 ; 0028C6: provisional 68k cmp.b d4, d2
db 0x04, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0x00, 0xC1, 0xFF ; 0028C8: provisional 68k subi.w #$ffff, ([$f00c1ff])
db 0xFF, 0x0E ; 0028D2: provisional 68k dc.w $ff0e
db 0x01, 0x1C ; 0028D4: provisional 68k btst.l d0, (a4)+
db 0x91, 0xFF ; file 0028D6
db 0xFF, 0x0E ; 0028D8: provisional 68k dc.w $ff0e
db 0x01, 0xCA, 0xA1, 0xFF ; 0028DA: provisional 68k movep.l d0, -$5e01(a2)
db 0xFF, 0x0E ; 0028DE: provisional 68k dc.w $ff0e
db 0x01, 0xC9, 0xC1, 0xFF ; 0028E0: provisional 68k movep.l d0, -$3e01(a1)
db 0xFF, 0x0E ; 0028E4: provisional 68k dc.w $ff0e
db 0x01, 0xAE, 0xDD, 0xFF ; 0028E6: provisional 68k bclr.b d0, -$2201(a6)
db 0xFF, 0x0D ; 0028EA: provisional 68k dc.w $ff0d
db 0x02, 0x1C, 0x9A, 0x81 ; 0028EC: provisional 68k andi.b #$81, (a4)+
db 0xFF, 0xFF ; 0028F0: provisional 68k dc.w $ffff
db 0x0D, 0x01 ; 0028F2: provisional 68k btst.l d6, d1
db 0x1C, 0xAC, 0xFF, 0xFF ; 0028F4: provisional 68k move.b -$1(a4), (a6)
db 0x0D, 0x01 ; 0028F8: provisional 68k btst.l d6, d1
db 0x1A, 0x98 ; 0028FA: provisional 68k move.b (a0)+, (a5)
db 0xFF, 0xFF ; 0028FC: provisional 68k dc.w $ffff
db 0x09, 0x01 ; 0028FE: provisional 68k btst.l d4, d1
db 0xCA, 0xC1 ; 002900: provisional 68k mulu.w d1, d5
db 0x02, 0x01, 0x19, 0xAD ; 002902: provisional 68k andi.b #$ad, d1
db 0xFF, 0xFF ; 002906: provisional 68k dc.w $ffff
db 0x07, 0x07 ; 002908: provisional 68k btst.l d3, d7
db 0xCC, 0xCA ; file 00290A
db 0xAA, 0xAC ; 00290C: provisional 68k dc.w $aaac
db 0xAC, 0xC1 ; 00290E: provisional 68k dc.w $acc1
db 0xA9, 0xC1 ; 002910: provisional 68k dc.w $a9c1
db 0xFF, 0xFF ; 002912: provisional 68k dc.w $ffff
db 0x06, 0x08 ; file 002914
db 0xCA, 0xAA, 0x9E, 0xE9 ; 002916: provisional 68k and.l -$6117(a2), d5
db 0x99, 0x99 ; 00291A: provisional 68k sub.l d4, (a1)+
db 0xAA, 0xB9 ; 00291C: provisional 68k dc.w $aab9
db 0xC1, 0xFF ; file 00291E
db 0xFF, 0x05 ; 002920: provisional 68k dc.w $ff05
db 0x09, 0x1C ; 002922: provisional 68k btst.l d4, (a4)+
db 0xAE, 0x9A ; 002924: provisional 68k dc.w $ae9a
db 0xA9, 0x9E ; 002926: provisional 68k dc.w $a99e
db 0xEA, 0xCC ; file 002928
db 0xAB, 0xBA ; 00292A: provisional 68k dc.w $abba
db 0xDD, 0xFF ; file 00292C
db 0xFF, 0x04 ; 00292E: provisional 68k dc.w $ff04
db 0x0A, 0x1C, 0xA9, 0xA8 ; 002930: provisional 68k eori.b #$a8, (a4)+
db 0x88, 0x88 ; file 002934
db 0x88, 0xA9, 0xCF, 0xFE ; 002936: provisional 68k or.l -$3002(a1), d4
db 0xBA, 0xDD ; 00293A: provisional 68k cmpa.w (a5)+, a5
db 0xFF, 0xFF ; 00293C: provisional 68k dc.w $ffff
db 0x04, 0x01, 0x1A, 0xA1 ; 00293E: provisional 68k subi.b #$a1, d1
db 0x04, 0x04, 0xCA, 0xDF ; 002942: provisional 68k subi.b #$df, d4
db 0xC9, 0x9C ; 002946: provisional 68k and.l d4, (a4)+
db 0xDD, 0xFF ; file 002948
db 0xFF, 0x08 ; 00294A: provisional 68k dc.w $ff08
db 0x00, 0xC1 ; file 00294C
db 0x01, 0x03 ; 00294E: provisional 68k btst.l d0, d3
db 0xCA, 0xCF ; file 002950
db 0xCA, 0xAC, 0xFF, 0xFF ; 002952: provisional 68k and.l -$1(a4), d5
db 0x05, 0x03 ; 002956: provisional 68k btst.l d2, d3
db 0x1C, 0xAA, 0x99, 0xEA ; 002958: provisional 68k move.b -$6616(a2), (a6)
db 0x01, 0x03 ; 00295C: provisional 68k btst.l d0, d3
db 0xCA, 0xCF ; file 00295E
db 0xAB, 0xEC ; 002960: provisional 68k dc.w $abec
db 0xFF, 0xFF ; 002962: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x1C, 0xAA ; 002964: provisional 68k subi.b #$aa, d4
db 0xAA, 0xAA ; 002968: provisional 68k dc.w $aaaa
db 0xEA, 0x01 ; 00296A: provisional 68k asr.b #$5, d1
db 0x03, 0xCE, 0x9A, 0x9E ; 00296C: provisional 68k movep.l d1, -$6562(a6)
db 0xAC, 0xFF ; 002970: provisional 68k dc.w $acff
db 0xFF, 0x04 ; 002972: provisional 68k dc.w $ff04
db 0x09, 0xAA, 0xAC, 0x8D ; 002974: provisional 68k bclr.b d4, -$5373(a2)
db 0xDD, 0xCA ; 002978: provisional 68k adda.l a2, a6
db 0x1F, 0xAB, 0xEE, 0xAC, 0x81, 0xFF, 0xFF, 0x04, 0x00, 0xAC ; 00297A: provisional 68k move.b -$1154(a3), ([$ff0400ac])
db 0x03, 0x05 ; 002984: provisional 68k btst.l d1, d5
db 0x19, 0xAC, 0xEE, 0xAC, 0xCA, 0xC1 ; 002986: provisional 68k move.b -$1154(a4), -$3f(a4, a4.l)
db 0xFF, 0xFF ; 00298C: provisional 68k dc.w $ffff
db 0x08, 0x05 ; file 00298E
db 0x1E, 0xBB, 0x9A, 0xCC ; 002990: provisional 68k move.b $295e(pc, a1.l), (a7)
db 0x9A, 0xC1 ; 002994: provisional 68k suba.w d1, a5
db 0xFF, 0xFF ; 002996: provisional 68k dc.w $ffff
db 0x05, 0x08, 0x1F, 0x1C ; 002998: provisional 68k movep.w $1f1c(a0), d2
db 0xCA, 0xEB, 0xEA, 0xCA ; 00299C: provisional 68k mulu.w -$1536(a3), d5
db 0x9B, 0x9A ; 0029A0: provisional 68k sub.l d5, (a2)+
db 0xC1, 0xFF ; file 0029A2
db 0xFF, 0x04 ; 0029A4: provisional 68k dc.w $ff04
db 0x09, 0xF1, 0xAE, 0xBB ; 0029A6: provisional 68k bset.b d4, -$45(a1, a2.l)
db 0xBB, 0xEA, 0xC9, 0xBB ; 0029AA: provisional 68k cmpa.l -$3645(a2), a5
db 0xBB, 0xE9, 0xC1, 0xFF ; 0029AE: provisional 68k cmpa.l -$3e01(a1), a5
db 0xFF, 0x03 ; 0029B2: provisional 68k dc.w $ff03
db 0x09, 0xF1, 0xAE, 0xBB ; 0029B4: provisional 68k bset.b d4, -$45(a1, a2.l)
db 0xBE, 0xEE, 0xAA, 0xEB ; 0029B8: provisional 68k cmpa.w -$5515(a6), a7
db 0xBB, 0xB9, 0xAC, 0xFF, 0xFF, 0x01 ; 0029BC: provisional 68k eor.l d5, $acffff01.l
db 0x0B, 0x1C ; 0029C2: provisional 68k btst.l d5, (a4)+
db 0xCC, 0xA9, 0x9E, 0xEE ; 0029C4: provisional 68k and.l -$6112(a1), d6
db 0xAA, 0xC8 ; 0029C8: provisional 68k dc.w $aac8
db 0x9B, 0xBB ; file 0029CA
db 0xBE, 0xAA, 0x8D, 0xFF ; 0029CC: provisional 68k cmp.l -$7201(a2), d7
db 0xFF, 0x01 ; 0029D0: provisional 68k dc.w $ff01
db 0x0B, 0xA9, 0x9E, 0xEE ; 0029D2: provisional 68k bclr.b d5, -$6112(a1)
db 0xAC, 0xC8 ; 0029D6: provisional 68k dc.w $acc8
db 0x88, 0xAA, 0xBB, 0xBB ; 0029D8: provisional 68k or.l -$4445(a2), d4
db 0x9A, 0xCC ; 0029DC: provisional 68k suba.w a4, a5
db 0x81, 0xFF ; file 0029DE
db 0xFF, 0x00 ; 0029E0: provisional 68k dc.w $ff00
db 0x0C, 0x1C, 0xBB, 0x99 ; 0029E2: provisional 68k cmpi.b #$99, (a4)+
db 0xAC, 0x88 ; 0029E6: provisional 68k dc.w $ac88
db 0x88, 0x8C, 0xBB, 0xBE ; file 0029E8
db 0xAA, 0x88 ; 0029EC: provisional 68k dc.w $aa88
db 0x88, 0x81 ; 0029EE: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0029F0: provisional 68k dc.w $ffff
db 0x00, 0x0B ; file 0029F2
db 0x1A, 0xB9, 0xC8, 0x88, 0x88, 0xCA ; 0029F4: provisional 68k move.b $c88888ca.l, (a5)
db 0xCC, 0xA9, 0xAC, 0x88 ; 0029FA: provisional 68k and.l -$5378(a1), d6
db 0x88, 0x8C ; file 0029FE
db 0xFF, 0xFF ; 002A00: provisional 68k dc.w $ffff
db 0x00, 0x0A ; file 002A02
db 0x1A, 0xAC, 0x88, 0x88 ; 002A04: provisional 68k move.b -$7778(a4), (a5)
db 0xAA, 0xAA ; 002A08: provisional 68k dc.w $aaaa
db 0xA8, 0x88 ; 002A0A: provisional 68k dc.w $a888
db 0x88, 0x88, 0xDD, 0xFF ; file 002A0C
db 0xFF, 0x00 ; 002A10: provisional 68k dc.w $ff00
db 0x08, 0xC8, 0x88, 0x88 ; file 002A12
db 0x8A, 0xAC, 0x88, 0x88 ; 002A16: provisional 68k or.l -$7778(a4), d5
db 0x88, 0x81 ; 002A1A: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 002A1C: provisional 68k dc.w $ffff
db 0x00, 0x06, 0xA8, 0x88 ; 002A1E: provisional 68k ori.b #$88, d6
db 0x88, 0x8C, 0x88, 0x88, 0x88, 0xFF ; file 002A22
db 0xFF, 0x00 ; 002A28: provisional 68k dc.w $ff00
db 0x05, 0xC8, 0x88, 0x88 ; 002A2A: provisional 68k movep.l d2, -$7778(a0)
db 0x88, 0x88, 0xCD, 0xFF ; file 002A2E
db 0xFF, 0x00 ; 002A32: provisional 68k dc.w $ff00
db 0x04, 0xD8, 0x88, 0x88, 0x88, 0x8C ; file 002A34
db 0xFF, 0xFF ; 002A3A: provisional 68k dc.w $ffff
db 0x00, 0x04, 0xDD, 0x8C ; 002A3C: provisional 68k ori.b #$8c, d4
db 0xCC, 0xCC, 0xC1, 0xFF ; file 002A40
db 0xFF, 0xFF ; 002A44: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002A46: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002A48: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002A4A: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 002A4C: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 002A4E: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 002A52: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 002A58
db 0x10, 0x10 ; 002A5C: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 002A5E: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 002A60: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002A62: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 002A64: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002A68: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 002A6C: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002A6E: provisional 68k neg.w d4
db 0x30, 0x34, 0x38, 0x78 ; 002A70: provisional 68k move.w $78(a4, d3.l), d0
db 0x7C, 0x84 ; 002A74: provisional 68k moveq #$84, d6
db 0xD4, 0xD4 ; 002A76: provisional 68k adda.w (a4), a2
db 0xD8, 0x50 ; 002A78: provisional 68k add.w (a0), d4
db 0x54, 0x70, 0x10, 0x14 ; 002A7A: provisional 68k addq.w #$2, $14(a0, d1.w)
db 0x44, 0xA4 ; 002A7E: provisional 68k neg.l -(a4)
db 0xA4, 0xA8 ; 002A80: provisional 68k dc.w $a4a8
db 0x0C, 0x0C ; file 002A82
db 0x70, 0x30 ; 002A84: provisional 68k moveq #$30, d0
db 0x34, 0x60 ; 002A86: provisional 68k movea.w -(a0), a2
db 0x09, 0x00 ; 002A88: provisional 68k btst.l d4, d0
db 0x99, 0xFF ; file 002A8A
db 0xFF, 0x09 ; 002A8C: provisional 68k dc.w $ff09
db 0x01, 0xB9, 0xF1, 0xFF, 0xFF, 0x09 ; 002A8E: provisional 68k bclr.b d0, $f1ffff09.l
db 0x01, 0xF9, 0xB1, 0xFF, 0xFF, 0x09 ; 002A94: provisional 68k bset.b d0, $b1ffff09.l
db 0x01, 0x19 ; 002A9A: provisional 68k btst.l d0, (a1)+
db 0xDF, 0xFF ; file 002A9C
db 0xFF, 0x09 ; 002A9E: provisional 68k dc.w $ff09
db 0x01, 0x1B ; 002AA0: provisional 68k btst.l d0, (a3)+
db 0xD9, 0xFF ; file 002AA2
db 0xFF, 0x09 ; 002AA4: provisional 68k dc.w $ff09
db 0x02, 0x1F, 0x99, 0xF1 ; 002AA6: provisional 68k andi.b #$f1, (a7)+
db 0xFF, 0xFF ; 002AAA: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xFB, 0xF1 ; 002AAC: provisional 68k eori.b #$f1, d1
db 0xFF, 0xFF ; 002AB0: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xF9, 0xB1 ; 002AB2: provisional 68k eori.b #$b1, d1
db 0xFF, 0xFF ; 002AB6: provisional 68k dc.w $ffff
db 0x0A, 0x01, 0xF9, 0x9F ; 002AB8: provisional 68k eori.b #$9f, d1
db 0xFF, 0xFF ; 002ABC: provisional 68k dc.w $ffff
db 0x08, 0x04, 0xB9, 0xBF ; file 002ABE
db 0xFB, 0xDF ; 002AC2: provisional 68k dc.w $fbdf
db 0xF1, 0xFF ; 002AC4: provisional 68k dc.w $f1ff
db 0xFF, 0x06 ; 002AC6: provisional 68k dc.w $ff06
db 0x06, 0x1E, 0xB9, 0x99 ; 002AC8: provisional 68k addi.b #$99, (a6)+
db 0xBB, 0x9D ; 002ACC: provisional 68k eor.l d5, (a5)+
db 0xAD, 0xDF ; 002ACE: provisional 68k dc.w $addf
db 0xFF, 0xFF ; 002AD0: provisional 68k dc.w $ffff
db 0x05, 0x07 ; 002AD2: provisional 68k btst.l d2, d7
db 0x1B, 0x99, 0xDD, 0xDD ; 002AD4: provisional 68k move.b (a1)+, ([])
db 0xDD, 0xDD ; 002AD8: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xAD ; 002ADA: provisional 68k dc.w $aaad
db 0xFF, 0xFF ; 002ADC: provisional 68k dc.w $ffff
db 0x05, 0x07 ; 002ADE: provisional 68k btst.l d2, d7
db 0x9D, 0xDD ; 002AE0: provisional 68k suba.l (a5)+, a6
db 0x99, 0xDD ; 002AE2: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xBF ; file 002AE4
db 0xD9, 0xD9 ; 002AE6: provisional 68k adda.l (a1)+, a4
db 0xFF, 0xFF ; 002AE8: provisional 68k dc.w $ffff
db 0x04, 0x08, 0x19, 0xDB, 0x8C, 0xFF ; file 002AEA
db 0xCC, 0xFB, 0xBF, 0x99 ; 002AF0: provisional 68k mulu.w ([$2af2, a3.l * 8]), d6
db 0xB8, 0xFF ; file 002AF4
db 0xFF, 0x03 ; 002AF6: provisional 68k dc.w $ff03
db 0x02, 0x1B, 0xD9, 0xFE ; 002AF8: provisional 68k andi.b #$fe, (a3)+
db 0x03, 0x03 ; 002AFC: provisional 68k btst.l d1, d3
db 0xC9, 0x9F ; 002AFE: provisional 68k and.l d4, (a7)+
db 0xBB, 0xDB ; 002B00: provisional 68k cmpa.l (a3)+, a5
db 0xFF, 0xFF ; 002B02: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002B04: provisional 68k btst.l d1, d1
db 0x1B, 0xB1, 0x02, 0x00, 0xFF, 0x01 ; 002B06: provisional 68k move.b (a1, d0.w * 2), ([a5, a7.l * 8])
db 0x03, 0x1F ; 002B0C: provisional 68k btst.l d1, (a7)+
db 0x9B, 0x99 ; 002B0E: provisional 68k sub.l d5, (a1)+
db 0xAD, 0xFF ; 002B10: provisional 68k dc.w $adff
db 0xFF, 0x05 ; 002B12: provisional 68k dc.w $ff05
db 0x07, 0xFB ; file 002B14
db 0xB9, 0xDA ; 002B16: provisional 68k cmpa.l (a2)+, a4
db 0xB1, 0x1F ; 002B18: provisional 68k eor.b d0, (a7)+
db 0xDD, 0xDA ; 002B1A: provisional 68k adda.l (a2)+, a6
db 0xDB, 0xFF ; file 002B1C
db 0xFF, 0x04 ; 002B1E: provisional 68k dc.w $ff04
db 0x08, 0x19 ; file 002B20
db 0xD9, 0x9B ; 002B22: provisional 68k add.l d4, (a3)+
db 0x99, 0xBF ; file 002B24
db 0x1F, 0xAD, 0xDD, 0x9F, 0xFF, 0xFF, 0x03, 0x09, 0x1B, 0x99 ; 002B26: provisional 68k move.b -$2261(a5), ([$3091b99])
db 0x9B, 0xFF ; file 002B30
db 0xF8, 0x9F ; 002B32: provisional 68k dc.w $f89f
db 0xFD, 0xA9 ; 002B34: provisional 68k dc.w $fda9
db 0xB9, 0x9F ; 002B36: provisional 68k eor.l d4, (a7)+
db 0xFF, 0xFF ; 002B38: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 002B3A: provisional 68k btst.l d1, d2
db 0x19, 0x9F, 0xFE, 0x01 ; 002B3C: provisional 68k move.b (a7)+, $1(a4, a7.l)
db 0x05, 0x1F ; 002B40: provisional 68k btst.l d2, (a7)+
db 0xDD, 0xDD ; 002B42: provisional 68k adda.l (a5)+, a6
db 0xBB, 0xBD, 0xDF, 0xFF ; file 002B44
db 0xFF, 0x03 ; 002B48: provisional 68k dc.w $ff03
db 0x01, 0x1F ; 002B4A: provisional 68k btst.l d0, (a7)+
db 0xE1, 0x02 ; 002B4C: provisional 68k asl.b #$8, d2
db 0x05, 0x1B ; 002B4E: provisional 68k btst.l d2, (a3)+
db 0xAA, 0xDB ; 002B50: provisional 68k dc.w $aadb
db 0xBB, 0xDD ; 002B52: provisional 68k cmpa.l (a5)+, a5
db 0xDF, 0xFF ; file 002B54
db 0xFF, 0x06 ; 002B56: provisional 68k dc.w $ff06
db 0x06, 0xB9, 0x9A, 0xA9, 0xB9, 0xAA, 0xAA, 0xAF, 0xFF, 0xFF ; 002B58: provisional 68k addi.l #$9aa9b9aa, $aaafffff.l
db 0x04, 0x08, 0x1F, 0xDA ; file 002B62
db 0xAA, 0xAD ; 002B66: provisional 68k dc.w $aaad
db 0xB9, 0xDA ; 002B68: provisional 68k cmpa.l (a2)+, a4
db 0xAA, 0xA9 ; 002B6A: provisional 68k dc.w $aaa9
db 0x9F, 0xFF ; file 002B6C
db 0xFF, 0x03 ; 002B6E: provisional 68k dc.w $ff03
db 0x09, 0x1E ; 002B70: provisional 68k btst.l d4, (a6)+
db 0x9A, 0xAA, 0xAD, 0xDB ; 002B72: provisional 68k sub.l -$5225(a2), d5
db 0x9D, 0xAA, 0xAD, 0x9B ; 002B76: provisional 68k sub.l d6, -$5265(a2)
db 0xF1, 0xFF ; 002B7A: provisional 68k dc.w $f1ff
db 0xFF, 0x02 ; 002B7C: provisional 68k dc.w $ff02
db 0x0A, 0xEF ; file 002B7E
db 0xBD, 0xDA ; 002B80: provisional 68k cmpa.l (a2)+, a6
db 0xDD, 0xB8, 0x89, 0xAA ; 002B82: provisional 68k add.l d6, $89aa.w
db 0xAA, 0xDB ; 002B86: provisional 68k dc.w $aadb
db 0x8B, 0x81 ; 002B88: provisional 68k dc.w $8b81
db 0xFF, 0xFF ; 002B8A: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0xFB, 0xB9 ; 002B8C: provisional 68k movep.w -$447(a2), d0
db 0xDD, 0x9B ; 002B90: provisional 68k add.l d6, (a3)+
db 0xB8, 0x88 ; 002B92: provisional 68k cmp.l a0, d4
db 0xDA, 0xAA, 0xD9, 0xB8 ; 002B94: provisional 68k add.l -$2648(a2), d5
db 0x88, 0xFF ; file 002B98
db 0xFF, 0x01 ; 002B9A: provisional 68k dc.w $ff01
db 0x0A, 0xDD ; file 002B9C
db 0xDD, 0x98 ; 002B9E: provisional 68k add.l d6, (a0)+
db 0x88, 0xCC ; file 002BA0
db 0x89, 0xAA, 0xD9, 0xB8 ; 002BA2: provisional 68k or.l d4, -$2648(a2)
db 0x88, 0xCC ; file 002BA6
db 0xFF, 0xFF ; 002BA8: provisional 68k dc.w $ffff
db 0x00, 0x09 ; file 002BAA
db 0x19, 0xAD, 0xBB, 0x88, 0x88, 0x88 ; 002BAC: provisional 68k move.b -$4478(a5), -$78(a4, a0.l)
db 0xB9, 0x9B ; 002BB2: provisional 68k eor.l d4, (a3)+
db 0x88, 0x88 ; file 002BB4
db 0xFF, 0xFF ; 002BB6: provisional 68k dc.w $ffff
db 0x00, 0x09, 0x1D, 0xDB, 0x88, 0x88 ; file 002BB8
db 0xB9, 0xDD ; 002BBE: provisional 68k cmpa.l (a5)+, a4
db 0x98, 0x88 ; 002BC0: provisional 68k sub.l a0, d4
db 0x88, 0xF1, 0xFF, 0xFF, 0x00, 0x07, 0xFB, 0xB8 ; 002BC2: provisional 68k divu.w ([$7fbb8]), d4
db 0x88, 0xB9, 0x9B, 0x88, 0x88, 0x88 ; 002BCA: provisional 68k or.l $9b888888.l, d4
db 0xFF, 0xFF ; 002BD0: provisional 68k dc.w $ffff
db 0x00, 0x06, 0xF8, 0x88 ; 002BD2: provisional 68k ori.b #$88, d6
db 0x88, 0x8B, 0x88, 0x88, 0x88, 0xFF ; file 002BD6
db 0xFF, 0x00 ; 002BDC: provisional 68k dc.w $ff00
db 0x05, 0xB8, 0x88, 0x88 ; 002BDE: provisional 68k bclr.b d2, $8888.w
db 0x88, 0x88, 0x81, 0xFF ; file 002BE2
db 0xFF, 0x00 ; 002BE6: provisional 68k dc.w $ff00
db 0x04, 0x88, 0x88, 0x88 ; file 002BE8
db 0x88, 0x81 ; 002BEC: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 002BEE: provisional 68k dc.w $ffff
db 0x00, 0x04, 0xC8, 0x88 ; 002BF0: provisional 68k ori.b #$88, d4
db 0xCC, 0xCC ; file 002BF4
db 0xF1, 0xFF ; 002BF6: provisional 68k dc.w $f1ff
db 0xFF, 0x01 ; 002BF8: provisional 68k dc.w $ff01
db 0x00, 0xF1 ; file 002BFA
db 0xFF, 0xFF ; 002BFC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002BFE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C00: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C02: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C04: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 002C06: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 002C0A: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 002C10
db 0x10, 0x10 ; 002C14: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 002C16: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 002C18: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002C1A: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 002C1C: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002C20: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 002C24: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002C26: provisional 68k neg.w d4
db 0x2C, 0x34, 0x34, 0xA0 ; 002C28: provisional 68k move.l -$60(a4, d3.w), d6
db 0xA4, 0xAC ; 002C2C: provisional 68k dc.w $a4ac
db 0x7C, 0x80 ; 002C2E: provisional 68k moveq #$80, d6
db 0x84, 0x10 ; 002C30: provisional 68k or.b (a0), d2
db 0x14, 0x3C, 0xD4, 0xD4 ; 002C32: provisional 68k move.b #$d4, d2
db 0xD8, 0x40 ; 002C36: provisional 68k add.w d0, d4
db 0x40, 0x68, 0x08, 0x08 ; 002C38: provisional 68k negx.w $808(a0)
db 0x6C, 0x0C ; 002C3C: provisional 68k bge.b $2c4a
db 0x0C, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF ; 002C3E: provisional 68k cmpi.w #$ffff, ([$ffffffff])
db 0xFF, 0xFF ; 002C48: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C4A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C4C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002C4E: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1F, 0xDA ; 002C50: provisional 68k addi.b #$da, d5
db 0xAA, 0xDD ; 002C54: provisional 68k dc.w $aadd
db 0xDA, 0x9D ; 002C56: provisional 68k add.l (a5)+, d5
db 0xFF, 0xFF ; 002C58: provisional 68k dc.w $ffff
db 0x05, 0x07 ; 002C5A: provisional 68k btst.l d2, d7
db 0xFF, 0xDA ; 002C5C: provisional 68k dc.w $ffda
db 0xAA, 0xAA ; 002C5E: provisional 68k dc.w $aaaa
db 0x99, 0xAA, 0xC9, 0xD1 ; 002C60: provisional 68k sub.l d4, -$362f(a2)
db 0xFF, 0xFF ; 002C64: provisional 68k dc.w $ffff
db 0x04, 0x08 ; file 002C66
db 0x1E, 0xDA ; 002C68: provisional 68k move.b (a2)+, (a7)+
db 0xA9, 0x99 ; 002C6A: provisional 68k dc.w $a999
db 0x99, 0xCC ; 002C6C: provisional 68k suba.l a4, a4
db 0xAA, 0xAA ; 002C6E: provisional 68k dc.w $aaaa
db 0xD1, 0xFF ; file 002C70
db 0xFF, 0x04 ; 002C72: provisional 68k dc.w $ff04
db 0x08, 0x1A ; file 002C74
db 0x9A, 0xAD, 0xAA, 0xAA ; 002C76: provisional 68k sub.l -$5556(a5), d5
db 0xAA, 0xDD ; 002C7A: provisional 68k dc.w $aadd
db 0xDD, 0xBB ; file 002C7C
db 0xFF, 0xFF ; 002C7E: provisional 68k dc.w $ffff
db 0x04, 0x08 ; file 002C80
db 0xA9, 0xA8 ; 002C82: provisional 68k dc.w $a9a8
db 0xBB, 0xBB ; file 002C84
db 0xBD, 0xDD ; 002C86: provisional 68k cmpa.l (a5)+, a6
db 0x88, 0xAA, 0xD1, 0xFF ; 002C88: provisional 68k or.l -$2e01(a2), d4
db 0xFF, 0x03 ; 002C8C: provisional 68k dc.w $ff03
db 0x02, 0x1A, 0xA8, 0xBB ; 002C8E: provisional 68k andi.b #$bb, (a2)+
db 0x02, 0x04, 0x1D, 0xA9 ; 002C92: provisional 68k andi.b #$a9, d4
db 0xDD, 0x9C ; 002C96: provisional 68k add.l d6, (a4)+
db 0xA1, 0xFF ; 002C98: provisional 68k dc.w $a1ff
db 0xFF, 0x03 ; 002C9A: provisional 68k dc.w $ff03
db 0x01, 0xA9, 0xD1, 0x03 ; 002C9C: provisional 68k bclr.b d0, -$2efd(a1)
db 0x04, 0xBB ; file 002CA0
db 0x99, 0xAA, 0xC9, 0xD1 ; 002CA2: provisional 68k sub.l d4, -$362f(a2)
db 0xFF, 0xFF ; 002CA6: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 002CA8: provisional 68k btst.l d1, d1
db 0xDD, 0xF1, 0x01, 0x01 ; 002CAA: provisional 68k adda.l ([a1, d0.w]), a6
db 0xAC, 0x9D ; 002CAE: provisional 68k dc.w $ac9d
db 0x01, 0x02 ; 002CB0: provisional 68k btst.l d0, d2
db 0xA9, 0xCC ; 002CB2: provisional 68k dc.w $a9cc
db 0xAA, 0xFF ; 002CB4: provisional 68k dc.w $aaff
db 0xFF, 0x03 ; 002CB6: provisional 68k dc.w $ff03
db 0x04, 0x1E, 0xD9, 0x9A ; 002CB8: provisional 68k subi.b #$9a, (a6)+
db 0xAA, 0xAD ; 002CBC: provisional 68k dc.w $aaad
db 0x01, 0x02 ; 002CBE: provisional 68k btst.l d0, d2
db 0x9C, 0x9A ; 002CC0: provisional 68k sub.l (a2)+, d6
db 0xAA, 0xFF ; 002CC2: provisional 68k dc.w $aaff
db 0xFF, 0x03 ; 002CC4: provisional 68k dc.w $ff03
db 0x08, 0x1D ; file 002CC6
db 0xAA, 0xAD ; 002CC8: provisional 68k dc.w $aaad
db 0x1F, 0xDA ; file 002CCA
db 0xDA, 0x99 ; 002CCC: provisional 68k add.l (a1)+, d5
db 0xAD, 0xA9 ; 002CCE: provisional 68k dc.w $ada9
db 0xFF, 0xFF ; 002CD0: provisional 68k dc.w $ffff
db 0x03, 0x08, 0xDA, 0xAD ; 002CD2: provisional 68k movep.w -$2553(a0), d1
db 0xE1, 0x1E ; 002CD6: provisional 68k rol.b #$8, d6
db 0xD9, 0x9C ; 002CD8: provisional 68k add.l d4, (a4)+
db 0xA8, 0xDA ; 002CDA: provisional 68k dc.w $a8da
db 0x99, 0xFF ; file 002CDC
db 0xFF, 0x02 ; 002CDE: provisional 68k dc.w $ff02
db 0x02, 0x1D, 0xAA, 0xBB ; 002CE0: provisional 68k andi.b #$bb, (a5)+
db 0x02, 0x05, 0xA9, 0xCA ; 002CE4: provisional 68k andi.b #$ca, d5
db 0xAA, 0x9C ; 002CE8: provisional 68k dc.w $aa9c
db 0xCC, 0xD1 ; 002CEA: provisional 68k mulu.w (a1), d6
db 0xFF, 0xFF ; 002CEC: provisional 68k dc.w $ffff
db 0x05, 0x07 ; 002CEE: provisional 68k btst.l d2, d7
db 0x1D, 0xAA, 0xC9, 0xAD, 0x9C, 0xCC ; 002CF0: provisional 68k move.b -$3653(a2), -$34(a6, a1.l)
db 0x99, 0xD1 ; 002CF6: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 002CF8: provisional 68k dc.w $ffff
db 0x04, 0x08 ; file 002CFA
db 0x1D, 0x9C, 0xCC, 0x9A ; 002CFC: provisional 68k move.b (a4)+, -$66(a6, a4.l)
db 0xAC, 0xCC ; 002D00: provisional 68k dc.w $accc
db 0xCA, 0xDD ; 002D02: provisional 68k mulu.w (a5)+, d5
db 0xD1, 0xFF ; file 002D04
db 0xFF, 0x04 ; 002D06: provisional 68k dc.w $ff04
db 0x07, 0x9C ; 002D08: provisional 68k bclr.b d3, (a4)+
db 0xC9, 0x99 ; 002D0A: provisional 68k and.l d4, (a1)+
db 0xA9, 0xCC ; 002D0C: provisional 68k dc.w $a9cc
db 0xCC, 0xAA, 0xAD, 0xFF ; 002D0E: provisional 68k and.l -$5201(a2), d6
db 0xFF, 0x02 ; 002D12: provisional 68k dc.w $ff02
db 0x09, 0x1F ; 002D14: provisional 68k btst.l d4, (a7)+
db 0xD9, 0xCC ; 002D16: provisional 68k adda.l a4, a4
db 0x9A, 0xD8 ; 002D18: provisional 68k suba.w (a0)+, a5
db 0xDC, 0xCC ; 002D1A: provisional 68k adda.w a4, a6
db 0xC9, 0xD8 ; 002D1C: provisional 68k muls.w (a0)+, d4
db 0xD8, 0xFF ; file 002D1E
db 0xFF, 0x02 ; 002D20: provisional 68k dc.w $ff02
db 0x09, 0xDA ; 002D22: provisional 68k bset.b d4, (a2)+
db 0x99, 0xAD, 0x88, 0xDA ; 002D24: provisional 68k sub.l d4, -$7726(a5)
db 0xCC, 0xC9 ; file 002D28
db 0xD8, 0x88 ; 002D2A: provisional 68k add.l a0, d4
db 0x8F, 0xFF ; file 002D2C
db 0xFF, 0x00 ; 002D2E: provisional 68k dc.w $ff00
db 0x0A, 0x1D, 0xDA, 0xA9 ; 002D30: provisional 68k eori.b #$a9, (a5)+
db 0xA8, 0x88 ; 002D34: provisional 68k dc.w $a888
db 0xBB, 0xD9 ; 002D36: provisional 68k cmpa.l (a1)+, a5
db 0xC9, 0xA8, 0x88, 0x8B ; 002D38: provisional 68k and.l d4, -$7775(a0)
db 0xFF, 0xFF ; 002D3C: provisional 68k dc.w $ffff
db 0x00, 0x09 ; file 002D3E
db 0x1A, 0x99 ; 002D40: provisional 68k move.b (a1)+, (a5)
db 0xAD, 0x8B ; 002D42: provisional 68k dc.w $ad8b
db 0x88, 0xDD ; 002D44: provisional 68k divu.w (a5)+, d4
db 0xDA, 0xAD, 0x88, 0x8B ; 002D46: provisional 68k add.l -$7775(a5), d5
db 0xFF, 0xFF ; 002D4A: provisional 68k dc.w $ffff
db 0x00, 0x08 ; file 002D4C
db 0x19, 0x9D, 0x88, 0x88 ; 002D4E: provisional 68k move.b (a5)+, -$78(a4, a0.l)
db 0xDA, 0xAA, 0xD8, 0x88 ; 002D52: provisional 68k add.l -$2778(a2), d5
db 0x88, 0xFF ; file 002D56
db 0xFF, 0x00 ; 002D58: provisional 68k dc.w $ff00
db 0x07, 0xD9 ; 002D5A: provisional 68k bset.b d3, (a1)+
db 0xA8, 0x88 ; 002D5C: provisional 68k dc.w $a888
db 0x8A, 0xAD, 0xD8, 0x88 ; 002D5E: provisional 68k or.l -$2778(a5), d5
db 0x88, 0xFF ; file 002D62
db 0xFF, 0x00 ; 002D64: provisional 68k dc.w $ff00
db 0x06, 0xDD ; file 002D66
db 0xD8, 0x8D ; 002D68: provisional 68k add.l a5, d4
db 0xAA, 0x88 ; 002D6A: provisional 68k dc.w $aa88
db 0x88, 0x8D ; file 002D6C
db 0xFF, 0xFF ; 002D6E: provisional 68k dc.w $ffff
db 0x00, 0x05, 0xD8, 0x88 ; 002D70: provisional 68k ori.b #$88, d5
db 0x88, 0x88, 0x88, 0x8B ; file 002D74
db 0xFF, 0xFF ; 002D78: provisional 68k dc.w $ffff
db 0x00, 0x04, 0x88, 0x88 ; 002D7A: provisional 68k ori.b #$88, d4
db 0x88, 0x88, 0x81, 0xFF ; file 002D7E
db 0xFF, 0x00 ; 002D82: provisional 68k dc.w $ff00
db 0x04, 0x88, 0x88, 0x88 ; file 002D84
db 0x88, 0xF1, 0xFF, 0xFF, 0x00, 0x03, 0x18, 0x8B ; 002D88: provisional 68k divu.w ([$3188b]), d4
db 0xBF, 0xF1, 0xFF, 0xFF, 0x00, 0x00, 0x1D, 0xFF ; 002D90: provisional 68k cmpa.l ([$1dff]), a7
db 0xFF, 0xFF ; 002D98: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002D9A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002D9C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002D9E: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 002DA0: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 002DA2: provisional 68k ori.b #$0, d7
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x00 ; 002DA6: provisional 68k ori.b #$26, (a0, d0.w)
db 0x00, 0x58, 0x00, 0x00 ; 002DAC: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x18 ; 002DB0: provisional 68k ori.b #$18, d0
db 0x00, 0x12, 0x00, 0x00 ; 002DB4: provisional 68k ori.b #$0, (a2)
db 0x00, 0x0A ; file 002DB8
db 0x00, 0x06, 0x00, 0x0A ; 002DBA: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 002DBE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 002DC2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 002DC6: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 002DCA: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 002DCE: provisional 68k ori.b #$5, d4
db 0x00, 0x04, 0x00, 0x03 ; 002DD2: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 002DD6: provisional 68k ori.b #$1, d2
db 0x00, 0x0C ; file 002DDA
db 0x01, 0xB2, 0x03, 0x5A, 0x05, 0x0A ; 002DDC: provisional 68k bclr.b d0, ([a2], $50a)
db 0x06, 0xC4 ; 002DE2: provisional 68k dc.w $6c4
db 0x08, 0x7C ; file 002DE4
db 0x00, 0x00, 0x00, 0x00 ; 002DE6: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 002DEA: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 002DF0
db 0x10, 0x10 ; 002DF4: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 002DF6: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 002DF8: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002DFA: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 002DFC: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002E00: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 002E04: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002E06: provisional 68k neg.w d4
db 0x30, 0x38, 0x44, 0x88 ; 002E08: provisional 68k move.w $4488.w, d0
db 0x8C, 0x94 ; 002E0C: provisional 68k or.l (a4), d6
db 0xDC, 0xDC ; 002E0E: provisional 68k adda.w (a4)+, a6
db 0xE0, 0x60 ; 002E10: provisional 68k asr.w d0, d0
db 0x64, 0x74 ; 002E12: provisional 68k bcc.b $2e88
db 0x38, 0x38, 0x74, 0xB0 ; 002E14: provisional 68k move.w $74b0.w, d4
db 0xB4, 0xB8, 0x10, 0x10 ; 002E18: provisional 68k cmp.l $1010.w, d2
db 0x60, 0x10 ; 002E1C: provisional 68k bra.b $2e2e
db 0x10, 0x70 ; file 002E1E
db 0xFF, 0xFF ; 002E20: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E22: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E24: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E26: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E28: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E2A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E2C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E2E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E30: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E32: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E34: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E36: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E38: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E3A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E3C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E3E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E40: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002E42: provisional 68k dc.w $ffff
db 0x0B, 0x04 ; 002E44: provisional 68k btst.l d5, d4
db 0x1C, 0xCB ; file 002E46
db 0x99, 0x9B ; 002E48: provisional 68k sub.l d4, (a3)+
db 0xBB, 0xFF ; file 002E4A
db 0xFF, 0x0A ; 002E4C: provisional 68k dc.w $ff0a
db 0x05, 0xCC, 0xCB, 0x99 ; 002E4E: provisional 68k movep.l d2, -$3467(a4)
db 0x99, 0x99 ; 002E52: provisional 68k sub.l d4, (a1)+
db 0xBB, 0xFF ; file 002E54
db 0xFF, 0x09 ; 002E56: provisional 68k dc.w $ff09
db 0x05, 0x1C ; 002E58: provisional 68k btst.l d2, (a4)+
db 0x9D, 0xDD ; 002E5A: provisional 68k suba.l (a5)+, a6
db 0x98, 0x88 ; 002E5C: provisional 68k sub.l a0, d4
db 0xEE, 0xFF ; file 002E5E
db 0xFF, 0x09 ; 002E60: provisional 68k dc.w $ff09
db 0x03, 0xCB, 0xB9, 0xD9 ; 002E62: provisional 68k movep.l d1, -$4627(a3)
db 0xC1, 0xFF ; file 002E66
db 0xFF, 0x08 ; 002E68: provisional 68k dc.w $ff08
db 0x03, 0x1B ; 002E6A: provisional 68k btst.l d1, (a3)+
db 0x9B, 0xDA ; 002E6C: provisional 68k suba.l (a2)+, a5
db 0xB8, 0x03 ; 002E6E: provisional 68k cmp.b d3, d4
db 0x02, 0xBD ; file 002E70
db 0x99, 0x9C ; 002E72: provisional 68k sub.l d4, (a4)+
db 0xFF, 0xFF ; 002E74: provisional 68k dc.w $ffff
db 0x07, 0x04 ; 002E76: provisional 68k btst.l d3, d4
db 0x1C, 0x99 ; 002E78: provisional 68k move.b (a1)+, (a6)
db 0xBB, 0xDD ; 002E7A: provisional 68k cmpa.l (a5)+, a5
db 0xCF, 0x01 ; 002E7C: provisional 68k abcd.b d1, d7
db 0x04, 0xCB, 0x99, 0xBB ; file 002E7E
db 0xBC, 0xCC ; 002E82: provisional 68k cmpa.w a4, a6
db 0xFF, 0xFF ; 002E84: provisional 68k dc.w $ffff
db 0x07, 0x0A, 0xCD, 0xDB ; 002E86: provisional 68k movep.w -$3225(a2), d3
db 0xE8, 0xB9 ; 002E8A: provisional 68k ror.l d4, d1
db 0xC1, 0x1C ; 002E8C: provisional 68k and.b d0, (a4)+
db 0xDD, 0xBB, 0xCC, 0xCC, 0xC1, 0xFF ; file 002E8E
db 0xFF, 0x06 ; 002E94: provisional 68k dc.w $ff06
db 0x02, 0xEE ; file 002E96
db 0xBA, 0xDC ; 002E98: provisional 68k cmpa.w (a4)+, a5
db 0x01, 0x04 ; 002E9A: provisional 68k btst.l d0, d4
db 0xC9, 0xB1, 0x1C, 0xD9 ; 002E9C: provisional 68k and.l d4, -$27(a1, d1.l)
db 0x8C, 0xFF ; file 002EA0
db 0xFF, 0x07 ; 002EA2: provisional 68k dc.w $ff07
db 0x01, 0xC9, 0xDB, 0x01 ; 002EA4: provisional 68k movep.l d0, -$24ff(a1)
db 0x04, 0xF9 ; file 002EA8
db 0xDE, 0xEE, 0xBB, 0xEE ; 002EAA: provisional 68k adda.w -$4412(a6), a7
db 0xFF, 0xFF ; 002EAE: provisional 68k dc.w $ffff
db 0x07, 0x07 ; 002EB0: provisional 68k btst.l d3, d7
db 0x18, 0x9D ; 002EB2: provisional 68k move.b (a5)+, (a4)
db 0xBB, 0xC9 ; 002EB4: provisional 68k cmpa.l a1, a5
db 0xAB, 0xFE ; 002EB6: provisional 68k dc.w $abfe
db 0xB9, 0xC1 ; 002EB8: provisional 68k cmpa.l d1, a4
db 0x01, 0x01 ; 002EBA: provisional 68k btst.l d0, d1
db 0xFC, 0xCC ; 002EBC: provisional 68k dc.w $fccc
db 0xFF, 0xFF ; 002EBE: provisional 68k dc.w $ffff
db 0x08, 0x0E ; file 002EC0
db 0xCD, 0xD9 ; 002EC2: provisional 68k muls.w (a1)+, d6
db 0xB9, 0xAD, 0xB8, 0xB9 ; 002EC4: provisional 68k eor.l d4, -$4747(a5)
db 0xB1, 0x1B ; 002EC8: provisional 68k eor.b d0, (a3)+
db 0xB9, 0xD9 ; 002ECA: provisional 68k cmpa.l (a1)+, a4
db 0xC1, 0x1B ; 002ECC: provisional 68k and.b d0, (a3)+
db 0xB9, 0xAD, 0xB1, 0xFF ; 002ECE: provisional 68k eor.l d4, -$4e01(a5)
db 0xFF, 0x08 ; 002ED2: provisional 68k dc.w $ff08
db 0x0E, 0x88 ; file 002ED4
db 0xBB, 0xB9, 0xDA, 0xAA, 0xAA, 0xAD ; 002ED6: provisional 68k eor.l d5, $daaaaaad.l
db 0xDA, 0xAA, 0xAA, 0xAA ; 002EDC: provisional 68k add.l -$5556(a2), d5
db 0xAA, 0xAA ; 002EE0: provisional 68k dc.w $aaaa
db 0xAA, 0xAB ; 002EE2: provisional 68k dc.w $aaab
db 0xFF, 0xFF ; 002EE4: provisional 68k dc.w $ffff
db 0x08, 0x0F ; file 002EE6
db 0xEE, 0x8D ; 002EE8: provisional 68k lsr.l #$7, d5
db 0x98, 0xBB, 0xB9, 0x99 ; 002EEA: provisional 68k sub.l ([$2eec, a3.l]), d4
db 0xDD, 0xDD ; 002EEE: provisional 68k adda.l (a5)+, a6
db 0x9A, 0xAD, 0xDD, 0xDD ; 002EF0: provisional 68k sub.l -$2223(a5), d5
db 0xDD, 0x9D ; 002EF4: provisional 68k add.l d6, (a5)+
db 0xD9, 0xC1 ; 002EF6: provisional 68k adda.l d1, a4
db 0xFF, 0xFF ; 002EF8: provisional 68k dc.w $ffff
db 0x09, 0x0E, 0x89, 0xD9 ; 002EFA: provisional 68k movep.w -$7627(a6), d4
db 0x89, 0xDD ; 002EFE: provisional 68k divs.w (a5)+, d4
db 0xD9, 0xB8, 0xB9, 0xBB ; 002F00: provisional 68k add.l d4, $b9bb.w
db 0xBB, 0x88 ; 002F04: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88 ; file 002F06
db 0x8B, 0xB9, 0x99, 0xFF, 0xFF, 0x02 ; 002F08: provisional 68k or.l d5, $99ffff02.l
db 0x01, 0xFC ; file 002F0E
db 0xC1, 0x02 ; 002F10: provisional 68k abcd.b d2, d0
db 0x11, 0xCC, 0xCC, 0xCC ; file 002F12
db 0xCC, 0xDA ; 002F16: provisional 68k mulu.w (a2)+, d6
db 0xDA, 0xAA, 0xAA, 0xD9 ; 002F18: provisional 68k add.l -$5527(a2), d5
db 0x99, 0x98 ; 002F1C: provisional 68k sub.l d4, (a0)+
db 0x88, 0x88 ; file 002F1E
db 0x8B, 0x88 ; 002F20: provisional 68k dc.w $8b88
db 0x88, 0x88, 0xBB, 0xFF ; file 002F22
db 0xFF, 0x00 ; 002F26: provisional 68k dc.w $ff00
db 0x17, 0xE9 ; file 002F28
db 0x99, 0xB9, 0x99, 0xDD, 0x9B, 0x9D ; 002F2A: provisional 68k sub.l d4, $99dd9b9d.l
db 0xAD, 0x9D ; 002F30: provisional 68k dc.w $ad9d
db 0x99, 0xDA ; 002F32: provisional 68k suba.l (a2)+, a4
db 0xAA, 0x9D ; 002F34: provisional 68k dc.w $aa9d
db 0xAA, 0xAA ; 002F36: provisional 68k dc.w $aaaa
db 0xAD, 0xDB ; 002F38: provisional 68k dc.w $addb
db 0x8B, 0xB9, 0x99, 0x98, 0x88, 0x88 ; 002F3A: provisional 68k or.l d5, $99988888.l
db 0x88, 0xFF ; file 002F40
db 0xFF, 0x00 ; 002F42: provisional 68k dc.w $ff00
db 0x17, 0x89 ; file 002F44
db 0xD9, 0x99 ; 002F46: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 002F48: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x99 ; 002F4A: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 002F4C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 002F4E: provisional 68k adda.l (a1)+, a6
db 0xB9, 0xB9, 0xDA, 0xAA, 0xDD, 0x9B ; 002F50: provisional 68k eor.l d4, $daaadd9b.l
db 0x99, 0xBB ; file 002F56
db 0xB9, 0x98 ; 002F58: provisional 68k eor.l d4, (a0)+
db 0x88, 0x88, 0x88, 0xFF ; file 002F5A
db 0xFF, 0x02 ; 002F5E: provisional 68k dc.w $ff02
db 0x14, 0xE8, 0x88, 0x88 ; 002F60: provisional 68k move.b -$7778(a0), (a2)+
db 0x88, 0x88, 0xC8, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB ; file 002F64
db 0xB8, 0x88 ; 002F6E: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x8C, 0xC8, 0x88, 0x8E ; file 002F70
db 0xFF, 0xFF ; 002F76: provisional 68k dc.w $ffff
db 0x0B, 0x0A, 0x88, 0x88 ; 002F78: provisional 68k movep.w -$7778(a2), d5
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 002F7C
db 0xF1, 0xFF ; 002F84: provisional 68k dc.w $f1ff
db 0xFF, 0xFF ; 002F86: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002F88: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 002F8A: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 002F8C: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 002F90: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 002F96
db 0x10, 0x10 ; 002F9A: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 002F9C: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 002F9E: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 002FA0: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 002FA2: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 002FA6: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 002FAA: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 002FAC: provisional 68k neg.w d4
db 0x2C, 0x34, 0x3C, 0xA8 ; 002FAE: provisional 68k move.l -$58(a4, d3.l), d6
db 0xAC, 0xB0 ; 002FB2: provisional 68k dc.w $acb0
db 0x7C, 0x80 ; 002FB4: provisional 68k moveq #$80, d6
db 0x88, 0x0C ; file 002FB6
db 0x14, 0x2C, 0x0C, 0x0C ; 002FB8: provisional 68k move.b $c0c(a4), d2
db 0x6C, 0x40 ; 002FBC: provisional 68k bge.b $2ffe
db 0x44, 0x70, 0xD8, 0xDC ; 002FBE: provisional 68k neg.w -$24(a0, a5.l)
db 0xDC, 0x08 ; file 002FC2
db 0x0C, 0x5C, 0xFF, 0xFF ; 002FC4: provisional 68k cmpi.w #$ffff, (a4)+
db 0xFF, 0xFF ; 002FC8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FCA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FCC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FCE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FD0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FD2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FD4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FD6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FD8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FDA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FDC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FDE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FE0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 002FE2: provisional 68k dc.w $ffff
db 0x0B, 0x05 ; 002FE4: provisional 68k btst.l d5, d5
db 0x1A, 0x99 ; 002FE6: provisional 68k move.b (a1)+, (a5)
db 0xAA, 0xA9 ; 002FE8: provisional 68k dc.w $aaa9
db 0x9A, 0xD1 ; 002FEA: provisional 68k suba.w (a1), a5
db 0xFF, 0xFF ; 002FEC: provisional 68k dc.w $ffff
db 0x0A, 0x07, 0x1A, 0xAD ; 002FEE: provisional 68k eori.b #$ad, d7
db 0xA9, 0x9A ; 002FF2: provisional 68k dc.w $a99a
db 0xAA, 0xAA ; 002FF4: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 002FF6: provisional 68k dc.w $aaad
db 0xFF, 0xFF ; 002FF8: provisional 68k dc.w $ffff
db 0x02, 0x00, 0xDA, 0x05 ; 002FFA: provisional 68k andi.b #$5, d0
db 0x05, 0x1D ; 002FFE: provisional 68k btst.l d2, (a5)+
db 0xDA, 0xAA, 0xA9, 0x9A ; 003000: provisional 68k add.l -$5666(a2), d5
db 0xAD, 0x02 ; 003004: provisional 68k dc.w $ad02
db 0x01, 0xDD ; 003006: provisional 68k bset.b d0, (a5)+
db 0xDD, 0xFF ; file 003008
db 0xFF, 0x02 ; 00300A: provisional 68k dc.w $ff02
db 0x02, 0xDA ; file 00300C
db 0xAA, 0xD1 ; 00300E: provisional 68k dc.w $aad1
db 0x03, 0x05 ; 003010: provisional 68k btst.l d1, d5
db 0x19, 0x9A, 0xDD, 0xAE, 0xAD, 0xFC, 0xFF, 0xFF ; 003012: provisional 68k move.b (a2)+, ([$adfc], a5.l * 4, $ffff)
db 0x02, 0x03, 0xCD, 0xA9 ; 00301A: provisional 68k andi.b #$a9, d3
db 0xAA, 0xD1 ; 00301E: provisional 68k dc.w $aad1
db 0x02, 0x04, 0xDE, 0xED ; 003020: provisional 68k andi.b #$ed, d4
db 0xFC, 0xDA ; 003024: provisional 68k dc.w $fcda
db 0xD1, 0x02 ; 003026: provisional 68k addx.b d2, d0
db 0x02, 0xDD ; file 003028
db 0xDD, 0xD1 ; 00302A: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 00302C: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 00302E: provisional 68k btst.l d1, d2
db 0xC8, 0xAE, 0x9D, 0x02 ; 003030: provisional 68k and.l -$62fe(a6), d4
db 0x0A, 0xDA ; file 003034
db 0x9D, 0x88 ; 003036: provisional 68k subx.l -(a0), -(a6)
db 0xDA, 0xD1 ; 003038: provisional 68k adda.w (a1), a5
db 0x1D, 0xA9, 0xAA, 0xA9, 0xAA, 0xD1 ; 00303A: provisional 68k move.b -$5557(a1), -$2f(a6, a2.l)
db 0xFF, 0xFF ; 003040: provisional 68k dc.w $ffff
db 0x04, 0x02, 0x8D, 0xAE ; 003042: provisional 68k subi.b #$ae, d2
db 0x9D, 0x01 ; 003046: provisional 68k subx.b d1, d6
db 0x0B, 0x1F ; 003048: provisional 68k btst.l d5, (a7)+
db 0x9A, 0x8B ; 00304A: provisional 68k sub.l a3, d5
db 0xD9, 0xD1 ; 00304C: provisional 68k adda.l (a1), a4
db 0x1D, 0x99, 0xAD, 0x8D ; 00304E: provisional 68k move.b (a1)+, ([], a2.l * 4)
db 0xDA, 0xAA, 0xC1, 0xFF ; 003052: provisional 68k add.l -$3e01(a2), d5
db 0xFF, 0x05 ; 003056: provisional 68k dc.w $ff05
db 0x09, 0x8D, 0xAE, 0xE9 ; 003058: provisional 68k movep.w d4, -$5117(a5)
db 0xDC, 0xA9, 0xAB, 0xD9 ; 00305C: provisional 68k add.l -$5427(a1), d6
db 0xA1, 0x1D ; 003060: provisional 68k dc.w $a11d
db 0xDD, 0xFF ; file 003062
db 0xFF, 0x05 ; 003064: provisional 68k dc.w $ff05
db 0x09, 0x1C ; 003066: provisional 68k btst.l d4, (a4)+
db 0xDA, 0x9E ; 003068: provisional 68k add.l (a6)+, d5
db 0xED, 0xD9 ; file 00306A
db 0x9A, 0xAE, 0x91, 0xCD ; 00306C: provisional 68k sub.l -$6e33(a6), d5
db 0xAD, 0xFF ; 003070: provisional 68k dc.w $adff
db 0xFF, 0x06 ; 003072: provisional 68k dc.w $ff06
db 0x08, 0xCF ; file 003074
db 0x8A, 0x99 ; 003076: provisional 68k or.l (a1)+, d5
db 0xAD, 0xAA ; 003078: provisional 68k dc.w $adaa
db 0xA9, 0xE9 ; 00307A: provisional 68k dc.w $a9e9
db 0xAA, 0xAD ; 00307C: provisional 68k dc.w $aaad
db 0xFF, 0xFF ; 00307E: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0xF8, 0xD9 ; 003080: provisional 68k movep.w -$727(a3), d3
db 0x9A, 0x9A ; 003084: provisional 68k sub.l (a2)+, d5
db 0xDA, 0xA9, 0x9E, 0xEA ; 003086: provisional 68k add.l -$6116(a1), d5
db 0xDD, 0xAA, 0xAD, 0xDC ; 00308A: provisional 68k add.l d6, -$5224(a2)
db 0xFF, 0xFF ; 00308E: provisional 68k dc.w $ffff
db 0x08, 0x0D ; file 003090
db 0xF8, 0xA9 ; 003092: provisional 68k dc.w $f8a9
db 0xEE, 0xD8 ; file 003094
db 0xAA, 0xA9 ; 003096: provisional 68k dc.w $aaa9
db 0x99, 0x99 ; 003098: provisional 68k sub.l d4, (a1)+
db 0xEE, 0xEE ; file 00309A
db 0x9A, 0xDD ; 00309C: provisional 68k suba.w (a5)+, a5
db 0xDD, 0xDD ; 00309E: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 0030A0: provisional 68k dc.w $ffff
db 0x09, 0x0D, 0xFD, 0x9E ; 0030A2: provisional 68k movep.w -$262(a5), d4
db 0xE9, 0xE9 ; file 0030A6
db 0x9A, 0xAA, 0x99, 0x99 ; 0030A8: provisional 68k sub.l -$6667(a2), d5
db 0xEE, 0xEE ; file 0030AC
db 0xE9, 0x99 ; 0030AE: provisional 68k rol.l #$4, d1
db 0x99, 0xA1 ; 0030B0: provisional 68k sub.l d4, -(a1)
db 0xFF, 0xFF ; 0030B2: provisional 68k dc.w $ffff
db 0x09, 0x0D, 0x1C, 0x8A ; 0030B4: provisional 68k movep.w $1c8a(a5), d4
db 0xEE, 0xEE, 0xEE, 0xEA ; file 0030B8
db 0xDD, 0xAD, 0xAA, 0xAA ; 0030BC: provisional 68k add.l d6, -$5556(a5)
db 0xA9, 0x9E ; 0030C0: provisional 68k dc.w $a99e
db 0x9E, 0xEA, 0xFF, 0xFF ; 0030C2: provisional 68k suba.w -$1(a2), a7
db 0x0A, 0x0D ; file 0030C6
db 0xC8, 0xA9, 0xA9, 0xEE ; 0030C8: provisional 68k and.l -$5612(a1), d4
db 0xEE, 0xE8 ; file 0030CC
db 0x98, 0xB8, 0x88, 0x88 ; 0030CE: provisional 68k sub.l $8888.w, d4
db 0xDA, 0xAA, 0xE9, 0xD1 ; 0030D2: provisional 68k add.l -$162f(a2), d5
db 0xFF, 0xFF ; 0030D6: provisional 68k dc.w $ffff
db 0x0A, 0x0D, 0x18, 0x88 ; file 0030D8
db 0xDA, 0x9E ; 0030DC: provisional 68k add.l (a6)+, d5
db 0xEE, 0xEE ; file 0030DE
db 0xE8, 0xB8 ; 0030E0: provisional 68k ror.l d4, d0
db 0x88, 0xBB, 0x88, 0x88 ; 0030E2: provisional 68k or.l $306c(pc, a0.l), d4
db 0xDA, 0xA1 ; 0030E6: provisional 68k add.l -(a1), d5
db 0xFF, 0xFF ; 0030E8: provisional 68k dc.w $ffff
db 0x0B, 0x0C, 0x88, 0x88 ; 0030EA: provisional 68k movep.w -$7778(a4), d5
db 0x8D, 0xAA, 0xA9, 0x9D ; 0030EE: provisional 68k or.l d6, -$5663(a2)
db 0xAA, 0xAA ; 0030F2: provisional 68k dc.w $aaaa
db 0xAA, 0xA8 ; 0030F4: provisional 68k dc.w $aaa8
db 0xB8, 0x88 ; 0030F6: provisional 68k cmp.l a0, d4
db 0xAA, 0xFF ; 0030F8: provisional 68k dc.w $aaff
db 0xFF, 0x0C ; 0030FA: provisional 68k dc.w $ff0c
db 0x0B, 0x88, 0xBB, 0x88 ; 0030FC: provisional 68k movep.w d5, -$4478(a0)
db 0x88, 0x8D ; file 003100
db 0xDA, 0xDD ; 003102: provisional 68k adda.w (a5)+, a5
db 0xAA, 0xA8 ; 003104: provisional 68k dc.w $aaa8
db 0xB8, 0x88 ; 003106: provisional 68k cmp.l a0, d4
db 0x8D, 0xFF ; file 003108
db 0xFF, 0x0D ; 00310A: provisional 68k dc.w $ff0d
db 0x0A, 0x1F, 0xFF, 0x8B ; 00310C: provisional 68k eori.b #$8b, (a7)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 003110
db 0xFF, 0xFF ; 003118: provisional 68k dc.w $ffff
db 0x10, 0x07 ; 00311A: provisional 68k move.b d7, d0
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00311C
db 0x88, 0x81 ; 003122: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 003124: provisional 68k dc.w $ffff
db 0x13, 0x02 ; 003126: provisional 68k move.b d2, -(a1)
db 0x18, 0x88, 0x81, 0xFF ; file 003128
db 0xFF, 0xFF ; 00312C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00312E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003130: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 003132: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 003134: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 003138: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 00313E
db 0x10, 0x10 ; 003142: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 003144: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 003146: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 003148: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00314A: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00314E: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003152: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003154: provisional 68k neg.w d4
db 0x2C, 0x34, 0x3C, 0x90 ; 003156: provisional 68k move.l -$70(a4, d3.l), d6
db 0x94, 0x94 ; 00315A: provisional 68k sub.l (a4), d2
db 0xD8, 0xDC ; 00315C: provisional 68k adda.w (a4)+, a4
db 0xDC, 0x58 ; 00315E: provisional 68k add.w (a0)+, d6
db 0x58, 0x74, 0x2C, 0x2C ; 003160: provisional 68k addq.w #$4, $2c(a4, d2.l)
db 0x6C, 0xB8 ; 003164: provisional 68k bge.b $311e
db 0xBC, 0xC0 ; 003166: provisional 68k cmpa.w d0, a6
db 0xA4, 0xA4 ; 003168: provisional 68k dc.w $a4a4
db 0xB4, 0x70, 0x74, 0x80 ; 00316A: provisional 68k cmp.w -$80(a0, d7.w), d2
db 0xFF, 0xFF ; 00316E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003170: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003172: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003174: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003176: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003178: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00317A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00317C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00317E: provisional 68k dc.w $ffff
db 0x04, 0x01, 0x1F, 0xB1 ; 003180: provisional 68k subi.b #$b1, d1
db 0xFF, 0xFF ; 003184: provisional 68k dc.w $ffff
db 0x04, 0x01, 0x1B, 0x9B ; 003186: provisional 68k subi.b #$9b, d1
db 0xFF, 0xFF ; 00318A: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 00318C: provisional 68k btst.l d2, d1
db 0xF9, 0xF1 ; 00318E: provisional 68k dc.w $f9f1
db 0xFF, 0xFF ; 003190: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 003192: provisional 68k btst.l d2, d1
db 0x1F, 0xEF ; file 003194
db 0x05, 0x01 ; 003196: provisional 68k btst.l d2, d1
db 0x1C, 0xBC, 0xFF, 0xFF ; 003198: provisional 68k move.b #$ff, (a6)
db 0x05, 0x02 ; 00319C: provisional 68k btst.l d2, d2
db 0x1C, 0xFE ; file 00319E
db 0x91, 0x03 ; 0031A0: provisional 68k subx.b d3, d0
db 0x05, 0xCC, 0xB9, 0xE9 ; 0031A2: provisional 68k movep.l d2, -$4617(a4)
db 0xFB, 0xCB ; 0031A6: provisional 68k dc.w $fbcb
db 0xC1, 0xFF ; file 0031A8
db 0xFF, 0x05 ; 0031AA: provisional 68k dc.w $ff05
db 0x02, 0x1C, 0x8B, 0xDB ; 0031AC: provisional 68k andi.b #$db, (a4)+
db 0x02, 0x07, 0xCB, 0x9E ; 0031B0: provisional 68k andi.b #$9e, d7
db 0x9F, 0xFF ; file 0031B4
db 0x9E, 0xED, 0xDE, 0xB1 ; 0031B6: provisional 68k suba.w -$214f(a5), a7
db 0xFF, 0xFF ; 0031BA: provisional 68k dc.w $ffff
db 0x06, 0x0C ; file 0031BC
db 0x1C, 0xFA, 0xB1, 0xBD ; 0031BE: provisional 68k move.b $ffffe37d(pc), (a6)+
db 0xAE, 0xBB ; 0031C2: provisional 68k dc.w $aebb
db 0x9A, 0xD9 ; 0031C4: provisional 68k suba.w (a1)+, a5
db 0xBB, 0xBC, 0xCB, 0xFE, 0x9C, 0xFF ; file 0031C6
db 0xFF, 0x07 ; 0031CC: provisional 68k dc.w $ff07
db 0x06, 0xC9 ; 0031CE: provisional 68k dc.w $6c9
db 0xAB, 0xFA ; 0031D0: provisional 68k dc.w $abfa
db 0xDC, 0x18 ; 0031D2: provisional 68k add.b (a0)+, d6
db 0xF9, 0xB1 ; 0031D4: provisional 68k dc.w $f9b1
db 0x03, 0x01 ; 0031D6: provisional 68k btst.l d1, d1
db 0xCB, 0xBC ; file 0031D8
db 0xFF, 0xFF ; 0031DA: provisional 68k dc.w $ffff
db 0x07, 0x05 ; 0031DC: provisional 68k btst.l d3, d5
db 0x1C, 0x9D ; 0031DE: provisional 68k move.b (a5)+, (a6)
db 0xDE, 0xF1, 0x1C, 0xBF ; 0031E0: provisional 68k adda.w -$41(a1, d1.l), a7
db 0xFF, 0xFF ; 0031E4: provisional 68k dc.w $ffff
db 0x08, 0x02 ; file 0031E6
db 0x8D, 0xAE, 0xFC, 0x01 ; 0031E8: provisional 68k or.l d6, -$3ff(a6)
db 0x00, 0xFF ; file 0031EC
db 0x01, 0x04 ; 0031EE: provisional 68k btst.l d0, d4
db 0xCB, 0x9F ; 0031F0: provisional 68k and.l d5, (a7)+
db 0xBB, 0xFB, 0xC1, 0xFF, 0xFF, 0x08, 0x02, 0xCB ; 0031F2: provisional 68k cmpa.l ([$ff0834bf]), a5
db 0x9E, 0xDF ; 0031FA: provisional 68k suba.w (a7)+, a7
db 0x01, 0x00 ; 0031FC: provisional 68k btst.l d0, d0
db 0x9F, 0x01 ; 0031FE: provisional 68k subx.b d1, d7
db 0x05, 0xC9, 0xA9, 0xFF ; 003200: provisional 68k movep.l d2, -$5601(a1)
db 0x99, 0xFB, 0xC1, 0xFF, 0xFF, 0x08, 0x04, 0x18 ; 003204: provisional 68k suba.l ([$ff08361e]), a4
db 0x8F, 0xDE ; 00320C: provisional 68k divs.w (a6)+, d7
db 0xBC, 0xE9, 0x01, 0x05 ; 00320E: provisional 68k cmpa.w $105(a1), a6
db 0xCF, 0xB8, 0xCC, 0xCC ; 003212: provisional 68k and.l d7, $cccc.w
db 0xF9, 0xF1 ; 003216: provisional 68k dc.w $f9f1
db 0xFF, 0xFF ; 003218: provisional 68k dc.w $ffff
db 0x09, 0x06 ; 00321A: provisional 68k btst.l d4, d6
db 0xC8, 0xB9, 0xDD, 0xDD, 0xB1, 0xBF ; 00321C: provisional 68k and.l $ddddb1bf.l, d4
db 0xC1, 0x03 ; 003222: provisional 68k abcd.b d3, d0
db 0x00, 0xC1 ; file 003224
db 0xFF, 0xFF ; 003226: provisional 68k dc.w $ffff
db 0x09, 0x06 ; 003228: provisional 68k btst.l d4, d6
db 0x18, 0xFD ; file 00322A
db 0xFF, 0xED ; 00322C: provisional 68k dc.w $ffed
db 0xDB, 0xF9, 0xC1, 0xFF, 0xFF, 0x0A ; 00322E: provisional 68k adda.l $c1ffff0a.l, a5
db 0x05, 0xBE, 0xD8, 0xBF ; file 003234
db 0x9D, 0xAD, 0xBC, 0xFF ; 003238: provisional 68k sub.l d6, -$4301(a5)
db 0xFF, 0x0A ; 00323C: provisional 68k dc.w $ff0a
db 0x08, 0x1B, 0xDE, 0xFF ; file 00323E
db 0xFF, 0x9D ; 003242: provisional 68k dc.w $ff9d
db 0xDD, 0xED, 0xDE, 0xFC ; 003244: provisional 68k adda.l -$2104(a5), a6
db 0xFF, 0xFF ; 003248: provisional 68k dc.w $ffff
db 0x0A, 0x0A ; file 00324A
db 0x1C, 0x9A ; 00324C: provisional 68k move.b (a2)+, (a6)
db 0xAA, 0xDE ; 00324E: provisional 68k dc.w $aade
db 0x9F, 0x9A ; 003250: provisional 68k sub.l d7, (a2)+
db 0xAA, 0xAA ; 003252: provisional 68k dc.w $aaaa
db 0xAD, 0xFB ; 003254: provisional 68k dc.w $adfb
db 0xC1, 0xFF ; file 003256
db 0xFF, 0x0A ; 003258: provisional 68k dc.w $ff0a
db 0x0C, 0xCC ; file 00325A
db 0xFD, 0xAA ; 00325C: provisional 68k dc.w $fdaa
db 0xAA, 0xA9 ; 00325E: provisional 68k dc.w $aaa9
db 0xFF, 0x9F ; 003260: provisional 68k dc.w $ff9f
db 0xED, 0xAA ; 003262: provisional 68k lsl.l d6, d2
db 0xDE, 0x99 ; 003264: provisional 68k add.l (a1)+, d7
db 0xFF, 0xF1 ; 003266: provisional 68k dc.w $fff1
db 0xFF, 0xFF ; 003268: provisional 68k dc.w $ffff
db 0x0A, 0x0C, 0x18, 0x8B ; file 00326A
db 0xF9, 0xAA ; 00326E: provisional 68k dc.w $f9aa
db 0xAA, 0xAF ; 003270: provisional 68k dc.w $aaaf
db 0xBB, 0xBB ; file 003272
db 0xBB, 0xF9, 0xED, 0xAA, 0xAF, 0xFF ; 003274: provisional 68k cmpa.l $edaaafff.l, a5
db 0xFF, 0x0B ; 00327A: provisional 68k dc.w $ff0b
db 0x0C, 0x88 ; file 00327C
db 0xBB, 0x9D ; 00327E: provisional 68k eor.l d5, (a5)+
db 0xAA, 0xAA ; 003280: provisional 68k dc.w $aaaa
db 0xDF, 0x88 ; 003282: provisional 68k addx.l -(a0), -(a7)
db 0x88, 0x88 ; file 003284
db 0xBB, 0xF9, 0xAA, 0xC1, 0xFF, 0xFF ; 003286: provisional 68k cmpa.l $aac1ffff.l, a5
db 0x0B, 0x0C, 0x88, 0x88 ; 00328C: provisional 68k movep.w -$7778(a4), d5
db 0x88, 0xB9, 0x9E, 0xAB, 0x88, 0xBB ; 003290: provisional 68k or.l $9eab88bb.l, d4
db 0x88, 0x88 ; file 003296
db 0x88, 0x9E ; 003298: provisional 68k or.l (a6)+, d4
db 0xF1, 0xFF ; 00329A: provisional 68k dc.w $f1ff
db 0xFF, 0x0C ; 00329C: provisional 68k dc.w $ff0c
db 0x0B, 0x18 ; 00329E: provisional 68k btst.l d5, (a0)+
db 0x88, 0x88 ; file 0032A0
db 0x88, 0xBB, 0xBF, 0xFF, 0xFF, 0xB8, 0x88, 0xBB ; 0032A2: provisional 68k or.l ([$ffb8bb5f]), d4
db 0xFC, 0xFF ; 0032AA: provisional 68k dc.w $fcff
db 0xFF, 0x0E ; 0032AC: provisional 68k dc.w $ff0e
db 0x09, 0x1C ; 0032AE: provisional 68k btst.l d4, (a4)+
db 0x88, 0x88, 0x88, 0x88 ; file 0032B0
db 0xBF, 0xF8, 0x88, 0x88 ; 0032B4: provisional 68k cmpa.l $8888.w, a7
db 0x8F, 0xFF ; file 0032B8
db 0xFF, 0x0F ; 0032BA: provisional 68k dc.w $ff0f
db 0x08, 0xCC, 0xC8, 0x88, 0x88, 0x88 ; file 0032BC
db 0xB8, 0x88 ; 0032C2: provisional 68k cmp.l a0, d4
db 0x88, 0x8B ; file 0032C4
db 0xFF, 0xFF ; 0032C6: provisional 68k dc.w $ffff
db 0x11, 0x06 ; 0032C8: provisional 68k move.b d6, -(a0)
db 0x1C, 0xC8, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 0032CA
db 0xFF, 0x13 ; 0032D2: provisional 68k dc.w $ff13
db 0x04, 0x1C, 0x88, 0x8C ; 0032D4: provisional 68k subi.b #$8c, (a4)+
db 0x88, 0xC1 ; 0032D8: provisional 68k divu.w d1, d4
db 0xFF, 0xFF ; 0032DA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0032DC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0032DE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0032E0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0032E2: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0032E4: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 0032E8: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0032EE
db 0x10, 0x10 ; 0032F2: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0032F4: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0032F6: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0032F8: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0032FA: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0032FE: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003302: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003304: provisional 68k neg.w d4
db 0x30, 0x34, 0x38, 0x90 ; 003306: provisional 68k move.w -$70(a4, d3.l), d0
db 0x94, 0xA4 ; 00330A: provisional 68k sub.l -(a4), d2
db 0x78, 0x7C ; 00330C: provisional 68k moveq #$7c, d4
db 0x84, 0xD8 ; 00330E: provisional 68k divu.w (a0)+, d2
db 0xD8, 0xDC ; 003310: provisional 68k adda.w (a4)+, a4
db 0x3C, 0x3C, 0x6C, 0x0C ; 003312: provisional 68k move.w #$6c0c, d6
db 0x0C, 0x54, 0xB0, 0xB4 ; 003316: provisional 68k cmpi.w #$b0b4, (a4)
db 0xB4, 0x04 ; 00331A: provisional 68k cmp.b d4, d2
db 0x04, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0x08, 0x00, 0x1C, 0xFF ; 00331C: provisional 68k subi.w #$ffff, ([$8001cff])
db 0xFF, 0x08 ; 003326: provisional 68k dc.w $ff08
db 0x01, 0x19 ; 003328: provisional 68k btst.l d0, (a1)+
db 0xC1, 0xFF ; file 00332A
db 0xFF, 0x08 ; 00332C: provisional 68k dc.w $ff08
db 0x01, 0x1A ; 00332E: provisional 68k btst.l d0, (a2)+
db 0xAC, 0xFF ; 003330: provisional 68k dc.w $acff
db 0xFF, 0x08 ; 003332: provisional 68k dc.w $ff08
db 0x01, 0x1C ; 003334: provisional 68k btst.l d0, (a4)+
db 0x9C, 0xFF ; file 003336
db 0xFF, 0x08 ; 003338: provisional 68k dc.w $ff08
db 0x01, 0xDD ; 00333A: provisional 68k bset.b d0, (a5)+
db 0xEA, 0xFF ; file 00333C
db 0xFF, 0x08 ; 00333E: provisional 68k dc.w $ff08
db 0x02, 0x18, 0xA9, 0xC1 ; 003340: provisional 68k andi.b #$c1, (a0)+
db 0xFF, 0xFF ; 003344: provisional 68k dc.w $ffff
db 0x09, 0x01 ; 003346: provisional 68k btst.l d4, d1
db 0xCA, 0xC1 ; 003348: provisional 68k mulu.w d1, d5
db 0xFF, 0xFF ; 00334A: provisional 68k dc.w $ffff
db 0x09, 0x01 ; 00334C: provisional 68k btst.l d4, d1
db 0x89, 0xA1 ; 00334E: provisional 68k or.l d4, -(a1)
db 0xFF, 0xFF ; 003350: provisional 68k dc.w $ffff
db 0x09, 0x01 ; 003352: provisional 68k btst.l d4, d1
db 0xDA, 0x91 ; 003354: provisional 68k add.l (a1), d5
db 0x02, 0x01, 0x1C, 0xAC ; 003356: provisional 68k andi.b #$ac, d1
db 0xFF, 0xFF ; 00335A: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 00335C: provisional 68k btst.l d4, d7
db 0x1C, 0x9A ; 00335E: provisional 68k move.b (a2)+, (a6)
db 0x1C, 0xCA ; file 003360
db 0xCA, 0xAA, 0xAC, 0xCC ; 003362: provisional 68k and.l -$5334(a2), d5
db 0xFF, 0xFF ; 003366: provisional 68k dc.w $ffff
db 0x09, 0x08, 0x1C, 0x9B ; 003368: provisional 68k movep.w $1c9b(a0), d4
db 0xAA, 0x99 ; 00336C: provisional 68k dc.w $aa99
db 0x99, 0x9E ; 00336E: provisional 68k sub.l d4, (a6)+
db 0xE9, 0xAA ; 003370: provisional 68k lsl.l d4, d2
db 0xAC, 0xFF ; 003372: provisional 68k dc.w $acff
db 0xFF, 0x09 ; 003374: provisional 68k dc.w $ff09
db 0x09, 0xDD ; 003376: provisional 68k bset.b d4, (a5)+
db 0xAB, 0xBA ; 003378: provisional 68k dc.w $abba
db 0xCC, 0xAE, 0xE9, 0x9A ; 00337A: provisional 68k and.l -$1666(a6), d6
db 0xA9, 0xEA ; 00337E: provisional 68k dc.w $a9ea
db 0xC1, 0xFF ; file 003380
db 0xFF, 0x09 ; 003382: provisional 68k dc.w $ff09
db 0x0A, 0xDD ; file 003384
db 0xAB, 0xE8 ; 003386: provisional 68k dc.w $abe8
db 0x8C, 0x9A ; 003388: provisional 68k or.l (a2)+, d6
db 0x88, 0x88, 0x88, 0x8A ; file 00338A
db 0x9A, 0xC1 ; 00338E: provisional 68k suba.w d1, a5
db 0xFF, 0xFF ; 003390: provisional 68k dc.w $ffff
db 0x09, 0x04 ; 003392: provisional 68k btst.l d4, d4
db 0xDD, 0xC9 ; 003394: provisional 68k adda.l a1, a6
db 0x9C, 0x8D ; 003396: provisional 68k sub.l a5, d6
db 0xAC, 0x04 ; 003398: provisional 68k dc.w $ac04
db 0x01, 0x1A ; 00339A: provisional 68k btst.l d0, (a2)+
db 0xA1, 0xFF ; 00339C: provisional 68k dc.w $a1ff
db 0xFF, 0x0A ; 00339E: provisional 68k dc.w $ff0a
db 0x03, 0xCA, 0xAC, 0x8C ; 0033A0: provisional 68k movep.l d1, -$5374(a2)
db 0xAC, 0x01 ; 0033A4: provisional 68k dc.w $ac01
db 0x00, 0x1C, 0xFF, 0xFF ; 0033A6: provisional 68k ori.b #$ff, (a4)+
db 0x0A, 0x03, 0xCE, 0xBA ; 0033AA: provisional 68k eori.b #$ba, d3
db 0x8C, 0xAC, 0x01, 0x03 ; 0033AE: provisional 68k or.l $103(a4), d6
db 0xAE, 0x99 ; 0033B2: provisional 68k dc.w $ae99
db 0xAA, 0xC1 ; 0033B4: provisional 68k dc.w $aac1
db 0xFF, 0xFF ; 0033B6: provisional 68k dc.w $ffff
db 0x0A, 0x03, 0xCA, 0xE9 ; 0033B8: provisional 68k eori.b #$e9, d3
db 0xA9, 0xEC ; 0033BC: provisional 68k dc.w $a9ec
db 0x01, 0x04 ; 0033BE: provisional 68k btst.l d0, d4
db 0xAE, 0xAA ; 0033C0: provisional 68k dc.w $aeaa
db 0xAA, 0xAA ; 0033C2: provisional 68k dc.w $aaaa
db 0xC1, 0xFF ; file 0033C4
db 0xFF, 0x0A ; 0033C6: provisional 68k dc.w $ff0a
db 0x09, 0x18 ; 0033C8: provisional 68k btst.l d4, (a0)+
db 0xCA, 0xEE, 0xBA, 0xF1 ; 0033CA: provisional 68k mulu.w -$450f(a6), d5
db 0xAC, 0xDD ; 0033CE: provisional 68k dc.w $acdd
db 0xD8, 0xCA ; 0033D0: provisional 68k adda.w a2, a4
db 0xAA, 0xFF ; 0033D2: provisional 68k dc.w $aaff
db 0xFF, 0x0A ; 0033D4: provisional 68k dc.w $ff0a
db 0x05, 0x1C ; 0033D6: provisional 68k btst.l d2, (a4)+
db 0xAC, 0xCA ; 0033D8: provisional 68k dc.w $acca
db 0xEE, 0xCA ; file 0033DA
db 0x91, 0x03 ; 0033DC: provisional 68k subx.b d3, d0
db 0x00, 0xCA ; file 0033DE
db 0xFF, 0xFF ; 0033E0: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0x1C, 0xA9 ; 0033E2: provisional 68k eori.b #$a9, d5
db 0xCC, 0xA9, 0xBB, 0xE1 ; 0033E6: provisional 68k and.l -$441f(a1), d6
db 0xFF, 0xFF ; 0033EA: provisional 68k dc.w $ffff
db 0x0A, 0x07, 0x1C, 0xA9 ; 0033EC: provisional 68k eori.b #$a9, d7
db 0xB9, 0xAC, 0xAE, 0xBE ; 0033F0: provisional 68k eor.l d4, -$5142(a4)
db 0xAC, 0xC1 ; 0033F4: provisional 68k dc.w $acc1
db 0xFF, 0xFF ; 0033F6: provisional 68k dc.w $ffff
db 0x0A, 0x08 ; file 0033F8
db 0x1C, 0x9E ; 0033FA: provisional 68k move.b (a6)+, (a6)
db 0xBB, 0xBB ; file 0033FC
db 0x9C, 0xAE, 0xBB, 0xBB ; 0033FE: provisional 68k sub.l -$4445(a6), d6
db 0xEA, 0xFF ; file 003402
db 0xFF, 0x0B ; 003404: provisional 68k dc.w $ff0b
db 0x08, 0xCA, 0x9B, 0xBB ; file 003406
db 0xBE, 0xAA, 0xEE, 0xEB ; 00340A: provisional 68k cmp.l -$1115(a2), d7
db 0xBB, 0xEA, 0xFF, 0xFF ; 00340E: provisional 68k cmpa.l -$1(a2), a5
db 0x0B, 0x0B, 0xD8, 0xAA ; 003412: provisional 68k movep.w -$2756(a3), d5
db 0xEB, 0xBB ; 003416: provisional 68k rol.l d5, d3
db 0xB9, 0x8C ; 003418: provisional 68k cmpm.l (a4)+, (a4)+
db 0xAA, 0xEE ; 00341A: provisional 68k dc.w $aaee
db 0xE9, 0x9A ; 00341C: provisional 68k rol.l #$4, d2
db 0xCC, 0xC1 ; 00341E: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 003420: provisional 68k dc.w $ffff
db 0x0B, 0x0B, 0x18, 0xCC ; 003422: provisional 68k movep.w $18cc(a3), d5
db 0xA9, 0xBB ; 003426: provisional 68k dc.w $a9bb
db 0xBB, 0xAA, 0x88, 0x8C ; 003428: provisional 68k eor.l d5, -$7774(a2)
db 0xCA, 0xEE, 0xE9, 0x9A ; 00342C: provisional 68k mulu.w -$1666(a6), d5
db 0xFF, 0xFF ; 003430: provisional 68k dc.w $ffff
db 0x0B, 0x0C, 0x18, 0x88 ; 003432: provisional 68k movep.w $1888(a4), d5
db 0x88, 0xAA, 0xEB, 0xBB ; 003436: provisional 68k or.l -$1445(a2), d4
db 0xC8, 0x88, 0x88, 0xCA, 0x99, 0xBB, 0xC1, 0xFF ; file 00343A
db 0xFF, 0x0C ; 003442: provisional 68k dc.w $ff0c
db 0x0B, 0xC8, 0x88, 0x88 ; 003444: provisional 68k movep.l d5, -$7778(a0)
db 0xCA, 0x9A ; 003448: provisional 68k and.l (a2)+, d5
db 0xCC, 0xAC, 0x88, 0x88 ; 00344A: provisional 68k and.l -$7778(a4), d6
db 0x8C, 0x9B ; 00344E: provisional 68k or.l (a3)+, d6
db 0xA1, 0xFF ; 003450: provisional 68k dc.w $a1ff
db 0xFF, 0x0D ; 003452: provisional 68k dc.w $ff0d
db 0x0A, 0xDD, 0x88, 0x88, 0x88, 0x8A ; file 003454
db 0xAA, 0xAA ; 00345A: provisional 68k dc.w $aaaa
db 0x88, 0x88 ; file 00345C
db 0xCA, 0xA1 ; 00345E: provisional 68k and.l -(a1), d5
db 0xFF, 0xFF ; 003460: provisional 68k dc.w $ffff
db 0x0F, 0x08, 0x18, 0x88 ; 003462: provisional 68k movep.w $1888(a0), d7
db 0x88, 0x88 ; file 003466
db 0xCA, 0xA8, 0x88, 0x88 ; 003468: provisional 68k and.l -$7778(a0), d5
db 0x8C, 0xFF ; file 00346C
db 0xFF, 0x11 ; 00346E: provisional 68k dc.w $ff11
db 0x06, 0x88, 0x88, 0x88, 0xC8, 0x88, 0x88, 0x8A ; file 003470
db 0xFF, 0xFF ; 003478: provisional 68k dc.w $ffff
db 0x12, 0x05 ; 00347A: provisional 68k move.b d5, d1
db 0xDC, 0x88 ; 00347C: provisional 68k add.l a0, d6
db 0x88, 0x88, 0x88, 0x8C ; file 00347E
db 0xFF, 0xFF ; 003482: provisional 68k dc.w $ffff
db 0x13, 0x04 ; 003484: provisional 68k move.b d4, -(a1)
db 0xC8, 0x88, 0x88, 0x88, 0x8D, 0xFF ; file 003486
db 0xFF, 0x13 ; 00348C: provisional 68k dc.w $ff13
db 0x04, 0x1C, 0xCC, 0xCC ; 00348E: provisional 68k subi.b #$cc, (a4)+
db 0xC8, 0xDD ; 003492: provisional 68k mulu.w (a5)+, d4
db 0xFF, 0xFF ; 003494: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003496: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003498: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00349A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00349C: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 00349E: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 0034A2: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0034A8
db 0x10, 0x10 ; 0034AC: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0034AE: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0034B0: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0034B2: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0034B4: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0034B8: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0034BC: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0034BE: provisional 68k neg.w d4
db 0x30, 0x34, 0x38, 0x78 ; 0034C0: provisional 68k move.w $78(a4, d3.l), d0
db 0x7C, 0x84 ; 0034C4: provisional 68k moveq #$84, d6
db 0xD4, 0xD4 ; 0034C6: provisional 68k adda.w (a4), a2
db 0xD8, 0x50 ; 0034C8: provisional 68k add.w (a0), d4
db 0x54, 0x70, 0x10, 0x14 ; 0034CA: provisional 68k addq.w #$2, $14(a0, d1.w)
db 0x44, 0xA4 ; 0034CE: provisional 68k neg.l -(a4)
db 0xA4, 0xA8 ; 0034D0: provisional 68k dc.w $a4a8
db 0x0C, 0x0C ; file 0034D2
db 0x70, 0x30 ; 0034D4: provisional 68k moveq #$30, d0
db 0x34, 0x60 ; 0034D6: provisional 68k movea.w -(a0), a2
db 0x0E, 0x00, 0x99, 0xFF ; file 0034D8
db 0xFF, 0x0D ; 0034DC: provisional 68k dc.w $ff0d
db 0x01, 0x1F ; 0034DE: provisional 68k btst.l d0, (a7)+
db 0x9B, 0xFF ; file 0034E0
db 0xFF, 0x0D ; 0034E2: provisional 68k dc.w $ff0d
db 0x01, 0x1B ; 0034E4: provisional 68k btst.l d0, (a3)+
db 0x9F, 0xFF ; file 0034E6
db 0xFF, 0x0D ; 0034E8: provisional 68k dc.w $ff0d
db 0x01, 0xFD, 0x91, 0xFF ; file 0034EA
db 0xFF, 0x0D ; 0034EE: provisional 68k dc.w $ff0d
db 0x01, 0x9D ; 0034F0: provisional 68k bclr.b d0, (a5)+
db 0xB1, 0xFF ; file 0034F2
db 0xFF, 0x0C ; 0034F4: provisional 68k dc.w $ff0c
db 0x02, 0x1F, 0x99, 0xF1 ; 0034F6: provisional 68k andi.b #$f1, (a7)+
db 0xFF, 0xFF ; 0034FA: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0x1F, 0xBF ; 0034FC: provisional 68k cmpi.b #$bf, d1
db 0xFF, 0xFF ; 003500: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0x1B, 0x9F ; 003502: provisional 68k cmpi.b #$9f, d1
db 0xFF, 0xFF ; 003506: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xF9, 0x9F ; 003508: provisional 68k cmpi.b #$9f, d1
db 0xFF, 0xFF ; 00350C: provisional 68k dc.w $ffff
db 0x0B, 0x04 ; 00350E: provisional 68k btst.l d5, d4
db 0x1F, 0xFD ; file 003510
db 0xBF, 0xFB, 0x9B, 0xFF, 0xFF, 0x0B, 0x06, 0xFD ; 003512: provisional 68k cmpa.l ([$ff0b3c11]), a7
db 0xDA, 0xD9 ; 00351A: provisional 68k adda.w (a1)+, a5
db 0xBB, 0x99 ; 00351C: provisional 68k eor.l d5, (a1)+
db 0x9B, 0xE1 ; 00351E: provisional 68k suba.l -(a1), a5
db 0xFF, 0xFF ; 003520: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 003522: provisional 68k btst.l d5, d7
db 0xDA, 0xAA, 0xDD, 0xDD ; 003524: provisional 68k add.l -$2223(a2), d5
db 0xDD, 0xDD ; 003528: provisional 68k adda.l (a5)+, a6
db 0x99, 0xB1, 0xFF, 0xFF, 0x0B, 0x07, 0x9D, 0x9D ; 00352A: provisional 68k sub.l d4, ([$b079d9d])
db 0xFB, 0xDD ; 003532: provisional 68k dc.w $fbdd
db 0xDD, 0x99 ; 003534: provisional 68k add.l d6, (a1)+
db 0xDD, 0xD9 ; 003536: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 003538: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0x8B, 0x99 ; 00353A: provisional 68k movep.w -$7467(a0), d5
db 0xFB, 0xBF ; 00353E: provisional 68k dc.w $fbbf
db 0xCC, 0xFF, 0xC8, 0xBD, 0x91, 0xFF ; file 003540
db 0xFF, 0x0B ; 003546: provisional 68k dc.w $ff0b
db 0x03, 0xBD ; file 003548
db 0xBB, 0xF9, 0x9C, 0x03, 0x02, 0xEF ; 00354A: provisional 68k cmpa.l $9c0302ef.l, a5
db 0x9D, 0xB1, 0xFF, 0xFF, 0x0B, 0x03, 0xDA, 0x99 ; 003550: provisional 68k sub.l d6, ([$b03da99])
db 0xB9, 0xF1, 0x01, 0x00 ; 003558: provisional 68k cmpa.l (a1, d0.w), a4
db 0xFF, 0x02 ; 00355C: provisional 68k dc.w $ff02
db 0x01, 0x1B ; 00355E: provisional 68k btst.l d0, (a3)+
db 0xB1, 0xFF ; file 003560
db 0xFF, 0x0B ; 003562: provisional 68k dc.w $ff0b
db 0x07, 0xBD ; file 003564
db 0xAD, 0xDD ; 003566: provisional 68k dc.w $addd
db 0xF1, 0x1B ; 003568: provisional 68k dc.w $f11b
db 0xAD, 0x9B ; 00356A: provisional 68k dc.w $ad9b
db 0xBF, 0xFF ; file 00356C
db 0xFF, 0x0B ; 00356E: provisional 68k dc.w $ff0b
db 0x08, 0xF9 ; file 003570
db 0xDD, 0xDA ; 003572: provisional 68k adda.l (a2)+, a6
db 0xF1, 0xFB ; 003574: provisional 68k dc.w $f1fb
db 0x99, 0xB9, 0x9D, 0x91, 0xFF, 0xFF ; 003576: provisional 68k sub.l d4, $9d91ffff.l
db 0x0B, 0x09, 0xF9, 0x9B ; 00357C: provisional 68k movep.w -$665(a1), d5
db 0x9A, 0xDF ; 003580: provisional 68k suba.w (a7)+, a5
db 0xF9, 0x8F ; 003582: provisional 68k dc.w $f98f
db 0xFF, 0xB9 ; 003584: provisional 68k dc.w $ffb9
db 0x99, 0xB1, 0xFF, 0xFF, 0x0B, 0x05, 0xFD, 0xDB ; 003586: provisional 68k sub.l d4, ([$b05fddb])
db 0xBB, 0xDD ; 00358E: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xF1, 0x01, 0x02, 0xEF, 0xF9 ; 003590: provisional 68k adda.l ([a1, d0.w], $eff9), a6
db 0x91, 0xFF ; file 003596
db 0xFF, 0x0B ; 003598: provisional 68k dc.w $ff0b
db 0x05, 0xFD, 0xDD, 0xBB ; file 00359A
db 0xBD, 0xAA, 0xB1, 0x02 ; 00359E: provisional 68k eor.l d6, -$4efe(a2)
db 0x01, 0x1E ; 0035A2: provisional 68k btst.l d0, (a6)+
db 0xF1, 0xFF ; 0035A4: provisional 68k dc.w $f1ff
db 0xFF, 0x0B ; 0035A6: provisional 68k dc.w $ff0b
db 0x06, 0xFA ; file 0035A8
db 0xAA, 0xAA ; 0035AA: provisional 68k dc.w $aaaa
db 0x9B, 0x9A ; 0035AC: provisional 68k sub.l d5, (a2)+
db 0xA9, 0x9B ; 0035AE: provisional 68k dc.w $a99b
db 0xFF, 0xFF ; 0035B0: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0xF9, 0x9A ; 0035B2: provisional 68k movep.w -$666(a0), d5
db 0xAA, 0xAD ; 0035B6: provisional 68k dc.w $aaad
db 0x9B, 0xDA ; 0035B8: provisional 68k suba.l (a2)+, a5
db 0xAA, 0xAD ; 0035BA: provisional 68k dc.w $aaad
db 0xF1, 0xFF ; 0035BC: provisional 68k dc.w $f1ff
db 0xFF, 0x0B ; 0035BE: provisional 68k dc.w $ff0b
db 0x09, 0x1F ; 0035C0: provisional 68k btst.l d4, (a7)+
db 0xB9, 0xDA ; 0035C2: provisional 68k cmpa.l (a2)+, a4
db 0xAA, 0xD9 ; 0035C4: provisional 68k dc.w $aad9
db 0xBD, 0xDA ; 0035C6: provisional 68k cmpa.l (a2)+, a6
db 0xAA, 0xA9 ; 0035C8: provisional 68k dc.w $aaa9
db 0xE1, 0xFF ; file 0035CA
db 0xFF, 0x0B ; 0035CC: provisional 68k dc.w $ff0b
db 0x0A, 0x18, 0xB8, 0xBD ; 0035CE: provisional 68k eori.b #$bd, (a0)+
db 0xAA, 0xAA ; 0035D2: provisional 68k dc.w $aaaa
db 0x98, 0x8B ; 0035D4: provisional 68k sub.l a3, d4
db 0xDD, 0xAD, 0xDB, 0xFE ; 0035D6: provisional 68k add.l d6, -$2402(a5)
db 0xFF, 0xFF ; 0035DA: provisional 68k dc.w $ffff
db 0x0C, 0x0A, 0x88, 0x8B ; file 0035DC
db 0x9D, 0xAA, 0xAD, 0x88 ; 0035E0: provisional 68k sub.l d6, -$5278(a2)
db 0x8B, 0xB9, 0xDD, 0x9B, 0xBF, 0xFF ; 0035E4: provisional 68k or.l d5, $dd9bbfff.l
db 0xFF, 0x0C ; 0035EA: provisional 68k dc.w $ff0c
db 0x0A, 0xCC, 0x88, 0x8B ; file 0035EC
db 0x9D, 0xAA, 0x98, 0xCC ; 0035F0: provisional 68k sub.l d6, -$6734(a2)
db 0x88, 0x89 ; file 0035F4
db 0xDD, 0xDD ; 0035F6: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 0035F8: provisional 68k dc.w $ffff
db 0x0E, 0x09, 0x88, 0x88 ; file 0035FA
db 0xB9, 0x9B ; 0035FE: provisional 68k eor.l d4, (a3)+
db 0x88, 0x88 ; file 003600
db 0x88, 0xBB, 0xDA, 0x91 ; 003602: provisional 68k or.l $3595(pc, a5.l), d4
db 0xFF, 0xFF ; 003606: provisional 68k dc.w $ffff
db 0x0E, 0x09, 0x1F, 0x88, 0x88, 0x89 ; file 003608
db 0xDD, 0x9B ; 00360E: provisional 68k add.l d6, (a3)+
db 0x88, 0x88 ; file 003610
db 0xBD, 0xD1 ; 003612: provisional 68k cmpa.l (a1), a6
db 0xFF, 0xFF ; 003614: provisional 68k dc.w $ffff
db 0x10, 0x07 ; 003616: provisional 68k move.b d7, d0
db 0x88, 0x88 ; file 003618
db 0x88, 0xB9, 0x9B, 0x88, 0x8B, 0xBF ; 00361A: provisional 68k or.l $9b888bbf.l, d4
db 0xFF, 0xFF ; 003620: provisional 68k dc.w $ffff
db 0x11, 0x06 ; 003622: provisional 68k move.b d6, -(a0)
db 0x88, 0x88 ; file 003624
db 0x88, 0xB8, 0x88, 0x88 ; 003626: provisional 68k or.l $8888.w, d4
db 0x8F, 0xFF ; file 00362A
db 0xFF, 0x12 ; 00362C: provisional 68k dc.w $ff12
db 0x05, 0x18 ; 00362E: provisional 68k btst.l d2, (a0)+
db 0x88, 0x88, 0x88, 0x88, 0x8B, 0xFF ; file 003630
db 0xFF, 0x13 ; 003636: provisional 68k dc.w $ff13
db 0x04, 0x18, 0x88, 0x88 ; 003638: provisional 68k subi.b #$88, (a0)+
db 0x88, 0x88 ; file 00363C
db 0xFF, 0xFF ; 00363E: provisional 68k dc.w $ffff
db 0x13, 0x04 ; 003640: provisional 68k move.b d4, -(a1)
db 0x1F, 0xCC, 0xCC, 0x88, 0x8C, 0xFF ; file 003642
db 0xFF, 0x16 ; 003648: provisional 68k dc.w $ff16
db 0x00, 0x1F, 0xFF, 0xFF ; 00364A: provisional 68k ori.b #$ff, (a7)+
db 0xFF, 0xFF ; 00364E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003650: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003652: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003654: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 003656: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x26, 0x00, 0x10 ; 00365A: provisional 68k ori.b #$26, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 003660
db 0x10, 0x10 ; 003664: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 003666: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 003668: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00366A: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00366C: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 003670: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003674: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003676: provisional 68k neg.w d4
db 0x2C, 0x34, 0x34, 0xA0 ; 003678: provisional 68k move.l -$60(a4, d3.w), d6
db 0xA4, 0xAC ; 00367C: provisional 68k dc.w $a4ac
db 0x7C, 0x80 ; 00367E: provisional 68k moveq #$80, d6
db 0x84, 0x10 ; 003680: provisional 68k or.b (a0), d2
db 0x14, 0x3C, 0xD4, 0xD4 ; 003682: provisional 68k move.b #$d4, d2
db 0xD8, 0x40 ; 003686: provisional 68k add.w d0, d4
db 0x40, 0x68, 0x08, 0x08 ; 003688: provisional 68k negx.w $808(a0)
db 0x6C, 0x0C ; 00368C: provisional 68k bge.b $369a
db 0x0C, 0x70, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF ; 00368E: provisional 68k cmpi.w #$ffff, ([$ffffffff])
db 0xFF, 0xFF ; 003698: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00369A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00369C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00369E: provisional 68k dc.w $ffff
db 0x0C, 0x05, 0xD9, 0xAD ; 0036A0: provisional 68k cmpi.b #$ad, d5
db 0xDD, 0xAA, 0xAD, 0xF1 ; 0036A4: provisional 68k add.l d6, -$520f(a2)
db 0xFF, 0xFF ; 0036A8: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 0036AA: provisional 68k btst.l d5, d7
db 0x1D, 0x9C, 0xAA, 0x99 ; 0036AC: provisional 68k move.b (a4)+, -$67(a6, a2.l)
db 0xAA, 0xAA ; 0036B0: provisional 68k dc.w $aaaa
db 0xAD, 0xFF ; 0036B2: provisional 68k dc.w $adff
db 0xFF, 0xFF ; 0036B4: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0x1D, 0xAA ; 0036B6: provisional 68k movep.w $1daa(a0), d5
db 0xAA, 0xCC ; 0036BA: provisional 68k dc.w $aacc
db 0x99, 0x99 ; 0036BC: provisional 68k sub.l d4, (a1)+
db 0x9A, 0xAD, 0xE1, 0xFF ; 0036BE: provisional 68k sub.l -$1e01(a5), d5
db 0xFF, 0x0B ; 0036C2: provisional 68k dc.w $ff0b
db 0x08, 0xBB ; file 0036C4
db 0xDD, 0xDD ; 0036C6: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xAA ; 0036C8: provisional 68k dc.w $aaaa
db 0xAA, 0xDA ; 0036CA: provisional 68k dc.w $aada
db 0xA9, 0xA1 ; 0036CC: provisional 68k dc.w $a9a1
db 0xFF, 0xFF ; 0036CE: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0x1D, 0xAA ; 0036D0: provisional 68k movep.w $1daa(a0), d5
db 0x88, 0xDD ; 0036D4: provisional 68k divu.w (a5)+, d4
db 0xDB, 0xBB ; file 0036D6
db 0xBB, 0x8A ; 0036D8: provisional 68k cmpm.l (a2)+, (a5)+
db 0x9A, 0xFF ; file 0036DA
db 0xFF, 0x0B ; 0036DC: provisional 68k dc.w $ff0b
db 0x04, 0x1A, 0xC9, 0xDD ; 0036DE: provisional 68k subi.b #$dd, (a2)+
db 0x9A, 0xD1 ; 0036E2: provisional 68k suba.w (a1), a5
db 0x02, 0x02, 0xBB, 0x8A ; 0036E4: provisional 68k andi.b #$8a, d2
db 0xA1, 0xFF ; 0036E8: provisional 68k dc.w $a1ff
db 0xFF, 0x0B ; 0036EA: provisional 68k dc.w $ff0b
db 0x04, 0x1D, 0x9C, 0xAA ; 0036EC: provisional 68k subi.b #$aa, (a5)+
db 0x99, 0xBB ; file 0036F0
db 0x03, 0x01 ; 0036F2: provisional 68k btst.l d1, d1
db 0x1D, 0x9A, 0xFF, 0xFF, 0x0C, 0x02, 0xAA, 0xCC ; 0036F4: provisional 68k move.b (a2)+, ([$c02aacc])
db 0x9A, 0x01 ; 0036FC: provisional 68k sub.b d1, d5
db 0x01, 0xD9 ; 0036FE: provisional 68k bset.b d0, (a1)+
db 0xCA, 0x01 ; 003700: provisional 68k and.b d1, d5
db 0x01, 0x1F ; 003702: provisional 68k btst.l d0, (a7)+
db 0xDD, 0xFF ; file 003704
db 0xFF, 0x0C ; 003706: provisional 68k dc.w $ff0c
db 0x02, 0xAA, 0xA9, 0xC9, 0x01, 0x04, 0xDA, 0xAA ; 003708: provisional 68k andi.l #$a9c90104, -$2556(a2)
db 0xA9, 0x9D ; 003710: provisional 68k dc.w $a99d
db 0xE1, 0xFF ; file 003712
db 0xFF, 0x0C ; 003714: provisional 68k dc.w $ff0c
db 0x08, 0x9A ; file 003716
db 0xDA, 0x99 ; 003718: provisional 68k add.l (a1)+, d5
db 0xAD, 0xAD ; 00371A: provisional 68k dc.w $adad
db 0xF1, 0xDA ; 00371C: provisional 68k dc.w $f1da
db 0xAA, 0xD1 ; 00371E: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 003720: provisional 68k dc.w $ffff
db 0x0C, 0x08 ; file 003722
db 0x99, 0xAD, 0x8A, 0xC9 ; 003724: provisional 68k sub.l d4, -$7537(a5)
db 0x9D, 0xE1 ; 003728: provisional 68k suba.l -(a1), a6
db 0x1E, 0xDA ; 00372A: provisional 68k move.b (a2)+, (a7)+
db 0xAD, 0xFF ; 00372C: provisional 68k dc.w $adff
db 0xFF, 0x0B ; 00372E: provisional 68k dc.w $ff0b
db 0x05, 0x1D ; 003730: provisional 68k btst.l d2, (a5)+
db 0xCC, 0xC9 ; file 003732
db 0xAA, 0xAC ; 003734: provisional 68k dc.w $aaac
db 0x9A, 0x02 ; 003736: provisional 68k sub.b d2, d5
db 0x02, 0xBB ; file 003738
db 0xAA, 0xD1 ; 00373A: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 00373C: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 00373E: provisional 68k btst.l d5, d7
db 0x1D, 0x99, 0xCC, 0xC9 ; 003740: provisional 68k move.b (a1)+, -$37(a6, a4.l)
db 0xDA, 0x9C ; 003744: provisional 68k add.l (a4)+, d5
db 0xAA, 0xD1 ; 003746: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 003748: provisional 68k dc.w $ffff
db 0x0B, 0x08, 0x1D, 0xDD ; 00374A: provisional 68k movep.w $1ddd(a0), d5
db 0xAC, 0xCC ; 00374E: provisional 68k dc.w $accc
db 0xCA, 0xA9, 0xCC, 0xC9 ; 003750: provisional 68k and.l -$3337(a1), d5
db 0xD1, 0xFF ; file 003754
db 0xFF, 0x0C ; 003756: provisional 68k dc.w $ff0c
db 0x07, 0xDA ; 003758: provisional 68k bset.b d3, (a2)+
db 0xAA, 0xCC ; 00375A: provisional 68k dc.w $aacc
db 0xCC, 0x9A ; 00375C: provisional 68k and.l (a2)+, d6
db 0x99, 0x9C ; 00375E: provisional 68k sub.l d4, (a4)+
db 0xC9, 0xFF ; file 003760
db 0xFF, 0x0C ; 003762: provisional 68k dc.w $ff0c
db 0x09, 0x8D, 0x8D, 0x9C ; 003764: provisional 68k movep.w d4, -$7264(a5)
db 0xCC, 0xCD ; file 003768
db 0x8D, 0xA9, 0xCC, 0x9D ; 00376A: provisional 68k or.l d6, -$3363(a1)
db 0xF1, 0xFF ; 00376E: provisional 68k dc.w $f1ff
db 0xFF, 0x0C ; 003770: provisional 68k dc.w $ff0c
db 0x09, 0xF8, 0x88, 0x8D ; 003772: provisional 68k bset.b d4, $888d.w
db 0x9C, 0xCC ; 003776: provisional 68k suba.w a4, a6
db 0xAD, 0x88 ; 003778: provisional 68k dc.w $ad88
db 0xDA, 0x99 ; 00377A: provisional 68k add.l (a1)+, d5
db 0xAD, 0xFF ; 00377C: provisional 68k dc.w $adff
db 0xFF, 0x0D ; 00377E: provisional 68k dc.w $ff0d
db 0x0A, 0xB8, 0x88, 0x8A, 0x9C, 0x9D, 0xBB, 0x88 ; 003780: provisional 68k eori.l #$888a9c9d, $bb88.w
db 0x8A, 0x9A ; 003788: provisional 68k or.l (a2)+, d5
db 0xAD, 0xD1 ; 00378A: provisional 68k dc.w $add1
db 0xFF, 0xFF ; 00378C: provisional 68k dc.w $ffff
db 0x0E, 0x09 ; file 00378E
db 0xB8, 0x88 ; 003790: provisional 68k cmp.l a0, d4
db 0xDA, 0xAD, 0xDD, 0x88 ; 003792: provisional 68k add.l -$2278(a5), d5
db 0xB8, 0xDA ; 003796: provisional 68k cmpa.w (a2)+, a4
db 0x99, 0xA1 ; 003798: provisional 68k sub.l d4, -(a1)
db 0xFF, 0xFF ; 00379A: provisional 68k dc.w $ffff
db 0x0F, 0x08, 0x88, 0x88 ; 00379C: provisional 68k movep.w -$7778(a0), d7
db 0x8D, 0xAA, 0xAD, 0x88 ; 0037A0: provisional 68k or.l d6, -$5278(a2)
db 0x88, 0xD9 ; 0037A4: provisional 68k divu.w (a1)+, d4
db 0x91, 0xFF ; file 0037A6
db 0xFF, 0x10 ; 0037A8: provisional 68k dc.w $ff10
db 0x07, 0x88, 0x88, 0x8D ; 0037AA: provisional 68k movep.w d3, -$7773(a0)
db 0xDA, 0xA8, 0x88, 0x8A ; 0037AE: provisional 68k add.l -$7776(a0), d5
db 0x9D, 0xFF ; file 0037B2
db 0xFF, 0x11 ; 0037B4: provisional 68k dc.w $ff11
db 0x06, 0xD8, 0x88, 0x88 ; file 0037B6
db 0xAA, 0xD8 ; 0037BA: provisional 68k dc.w $aad8
db 0x8D, 0xDD ; 0037BC: provisional 68k divs.w (a5)+, d6
db 0xFF, 0xFF ; 0037BE: provisional 68k dc.w $ffff
db 0x12, 0x05 ; 0037C0: provisional 68k move.b d5, d1
db 0xB8, 0x88 ; 0037C2: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x8D ; file 0037C4
db 0xFF, 0xFF ; 0037C8: provisional 68k dc.w $ffff
db 0x13, 0x04 ; 0037CA: provisional 68k move.b d4, -(a1)
db 0x18, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 0037CC
db 0xFF, 0x13 ; 0037D2: provisional 68k dc.w $ff13
db 0x04, 0x1F, 0x88, 0x88 ; 0037D4: provisional 68k subi.b #$88, (a7)+
db 0x88, 0x88 ; file 0037D8
db 0xFF, 0xFF ; 0037DA: provisional 68k dc.w $ffff
db 0x14, 0x03 ; 0037DC: provisional 68k move.b d3, d2
db 0x1F, 0xFB ; file 0037DE
db 0xB8, 0x81 ; 0037E0: provisional 68k cmp.l d1, d4
db 0xFF, 0xFF ; 0037E2: provisional 68k dc.w $ffff
db 0x17, 0x00 ; 0037E4: provisional 68k move.b d0, -(a3)
db 0xD1, 0xFF ; file 0037E6
db 0xFF, 0xFF ; 0037E8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0037EA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0037EC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0037EE: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0037F0: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 0037F2: provisional 68k ori.b #$0, d7
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x00 ; 0037F6: provisional 68k ori.b #$30, $0(a0)
db 0x00, 0x58, 0x00, 0x00 ; 0037FC: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x14 ; 003800: provisional 68k ori.b #$14, d0
db 0x00, 0x18, 0x00, 0x00 ; 003804: provisional 68k ori.b #$0, (a0)+
db 0x00, 0x0A ; file 003808
db 0x00, 0x06, 0x00, 0x0A ; 00380A: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 00380E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 003812: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 003816: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 00381A: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 00381E: provisional 68k ori.b #$5, d4
db 0x00, 0x04, 0x00, 0x03 ; 003822: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 003826: provisional 68k ori.b #$1, d2
db 0x00, 0x0C ; file 00382A
db 0x02, 0xB2, 0x05, 0x5E, 0x08, 0x0A, 0x0A, 0xB8 ; 00382C: provisional 68k andi.l #$55e080a, -$48(a2, d0.l)
db 0x0D, 0x60 ; 003834: provisional 68k bchg.b d6, -(a0)
db 0x00, 0x00, 0x00, 0x00 ; 003836: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 00383A: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 003840
db 0x10, 0x10 ; 003844: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 003846: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 003848: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00384A: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00384C: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 003850: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003854: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003856: provisional 68k neg.w d4
db 0x2C, 0x34, 0x4C, 0xA0 ; 003858: provisional 68k move.l -$60(a4, d4.l), d6
db 0xA4, 0xA8 ; 00385C: provisional 68k dc.w $a4a8
db 0x70, 0x74 ; 00385E: provisional 68k moveq #$74, d0
db 0x88, 0xE0 ; 003860: provisional 68k divu.w -(a0), d4
db 0xE4, 0xE0 ; 003862: provisional 68k roxr.w -(a0)
db 0x60, 0x68 ; 003864: provisional 68k bra.b $38ce
db 0x6C, 0x0C ; 003866: provisional 68k bge.b $3874
db 0x10, 0x50 ; file 003868
db 0x34, 0x38, 0x6C, 0x08 ; 00386A: provisional 68k move.w $6c08.w, d2
db 0x08, 0x6C ; file 00386E
db 0xFF, 0xFF ; 003870: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003872: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003874: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003876: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003878: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x1F, 0xFF ; 00387A: provisional 68k ori.b #$ff, d0
db 0xFF, 0x00 ; 00387E: provisional 68k dc.w $ff00
db 0x01, 0x1A ; 003880: provisional 68k btst.l d0, (a2)+
db 0xF1, 0xFF ; 003882: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 003884: provisional 68k dc.w $ff00
db 0x01, 0x19 ; 003886: provisional 68k btst.l d0, (a1)+
db 0x9F, 0xFF ; file 003888
db 0xFF, 0x00 ; 00388A: provisional 68k dc.w $ff00
db 0x02, 0x1E, 0x9C, 0xF1 ; 00388C: provisional 68k andi.b #$f1, (a6)+
db 0xFF, 0xFF ; 003890: provisional 68k dc.w $ffff
db 0x01, 0x01 ; 003892: provisional 68k btst.l d0, d1
db 0x9B, 0xA1 ; 003894: provisional 68k sub.l d5, -(a1)
db 0xFF, 0xFF ; 003896: provisional 68k dc.w $ffff
db 0x01, 0x01 ; 003898: provisional 68k btst.l d0, d1
db 0xCB, 0x9E ; 00389A: provisional 68k and.l d5, (a6)+
db 0xFF, 0xFF ; 00389C: provisional 68k dc.w $ffff
db 0x01, 0x01 ; 00389E: provisional 68k btst.l d0, d1
db 0xEA, 0x9F ; 0038A0: provisional 68k ror.l #$5, d7
db 0xFF, 0xFF ; 0038A2: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 0038A4: provisional 68k btst.l d0, d2
db 0x1E, 0x99 ; 0038A6: provisional 68k move.b (a1)+, (a7)
db 0xF1, 0x02 ; 0038A8: provisional 68k dc.w $f102
db 0x02, 0x1F, 0xAA, 0x91 ; 0038AA: provisional 68k andi.b #$91, (a7)+
db 0xFF, 0xFF ; 0038AE: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 0038B0: provisional 68k btst.l d0, d2
db 0x1F, 0x9B, 0xAF, 0x02, 0x02, 0x1A ; 0038B2: provisional 68k move.b (a3)+, ([a7, a2.l * 8], $21a)
db 0xBB, 0xA1 ; 0038B8: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 0038BA: provisional 68k dc.w $ffff
db 0x02, 0x01, 0xE9, 0xBE ; 0038BC: provisional 68k andi.b #$be, d1
db 0x02, 0x02, 0x1C, 0xBB ; 0038C0: provisional 68k andi.b #$bb, d2
db 0x91, 0xFF ; file 0038C4
db 0xFF, 0x02 ; 0038C6: provisional 68k dc.w $ff02
db 0x02, 0xDA ; file 0038C8
db 0xBB, 0xE1 ; 0038CA: provisional 68k cmpa.l -(a1), a5
db 0x01, 0x02 ; 0038CC: provisional 68k btst.l d0, d2
db 0xD8, 0x9B ; 0038CE: provisional 68k add.l (a3)+, d4
db 0xA1, 0xFF ; 0038D0: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 0038D2: provisional 68k dc.w $ff02
db 0x02, 0x1C, 0xBB, 0x91 ; 0038D4: provisional 68k andi.b #$91, (a4)+
db 0x01, 0x05 ; 0038D8: provisional 68k btst.l d0, d5
db 0xDD, 0xAB, 0x91, 0xFE ; 0038DA: provisional 68k add.l d6, -$6e02(a3)
db 0x9B, 0xB9, 0xFF, 0xFF, 0x02, 0x02 ; 0038DE: provisional 68k sub.l d5, $ffff0202.l
db 0x1E, 0xA9, 0x9F, 0x01 ; 0038E4: provisional 68k move.b -$60ff(a1), (a7)
db 0x05, 0x1F ; 0038E8: provisional 68k btst.l d2, (a7)+
db 0xAB, 0x9E ; 0038EA: provisional 68k dc.w $ab9e
db 0xFE, 0x9B ; 0038EC: provisional 68k dc.w $fe9b
db 0xBA, 0xFF ; file 0038EE
db 0xFF, 0x03 ; 0038F0: provisional 68k dc.w $ff03
db 0x01, 0x8A, 0xBC, 0x01 ; 0038F2: provisional 68k movep.w d0, -$43ff(a2)
db 0x05, 0x1F ; 0038F6: provisional 68k btst.l d2, (a7)+
db 0xAB, 0xBC ; 0038F8: provisional 68k dc.w $abbc
db 0xDD, 0xC9 ; 0038FA: provisional 68k adda.l a1, a6
db 0xBA, 0xFF ; file 0038FC
db 0xFF, 0x03 ; 0038FE: provisional 68k dc.w $ff03
db 0x08, 0x8C ; file 003900
db 0xB9, 0xEF, 0xDD, 0xCB ; 003902: provisional 68k cmpa.l -$2235(a7), a4
db 0x9C, 0x1F ; 003906: provisional 68k sub.b (a7)+, d6
db 0x89, 0xB9, 0xFF, 0xFF, 0x02, 0x09 ; 003908: provisional 68k or.l d4, $ffff0209.l
db 0xEA, 0xA8 ; 00390E: provisional 68k lsr.l d5, d0
db 0x9B, 0xA1 ; 003910: provisional 68k sub.l d5, -(a1)
db 0x1F, 0xEA ; file 003912
db 0x9A, 0xED, 0xDC, 0xB9 ; 003914: provisional 68k suba.w -$2347(a5), a5
db 0x02, 0x00, 0xFF, 0xFF ; 003918: provisional 68k andi.b #$ff, d0
db 0xFF, 0x02 ; 00391C: provisional 68k dc.w $ff02
db 0x0D, 0xA9, 0xAD, 0xCB ; 00391E: provisional 68k bclr.b d6, -$5235(a1)
db 0xBE, 0xF1, 0x1C, 0xB9 ; 003922: provisional 68k cmpa.w -$47(a1, d1.l), a7
db 0x9C, 0x8C ; 003926: provisional 68k sub.l a4, d6
db 0xBB, 0xC1 ; 003928: provisional 68k cmpa.l d1, a5
db 0x19, 0xAA, 0x91, 0xFF, 0xFF, 0x02, 0x0D, 0xCA ; 00392A: provisional 68k move.b -$6e01(a2), ([a4, a7.l * 8], $dca)
db 0xED, 0x89 ; 003932: provisional 68k lsl.l #$6, d1
db 0xB9, 0xE1 ; 003934: provisional 68k cmpa.l -(a1), a4
db 0x1C, 0xB9, 0x9A, 0xEC, 0x9B, 0xA1 ; 003936: provisional 68k move.b $9aec9ba1.l, (a6)
db 0xFA, 0xBB ; 00393C: provisional 68k dc.w $fabb
db 0x91, 0xFF ; file 00393E
db 0xFF, 0x01 ; 003940: provisional 68k dc.w $ff01
db 0x0E, 0x1F ; file 003942
db 0x99, 0x81 ; 003944: provisional 68k subx.l d1, d4
db 0x1E, 0xBB, 0x9E, 0xFC ; 003946: provisional 68k move.b $3944(pc, a1.l), (a7)
db 0xBB, 0xB9, 0xC9, 0xBB, 0x98, 0xE8 ; 00394A: provisional 68k eor.l d5, $c9bb98e8.l
db 0xA9, 0xC1 ; 003950: provisional 68k dc.w $a9c1
db 0xFF, 0xFF ; 003952: provisional 68k dc.w $ffff
db 0x01, 0x0E, 0x1E, 0x99 ; 003954: provisional 68k movep.w $1e99(a6), d0
db 0xDD, 0x1E ; 003958: provisional 68k add.b d6, (a6)+
db 0xBB, 0x9E ; 00395A: provisional 68k eor.l d5, (a6)+
db 0xFE, 0x9B ; 00395C: provisional 68k dc.w $fe9b
db 0xBA, 0xCC ; 00395E: provisional 68k cmpa.w a4, a5
db 0xA9, 0xAE ; 003960: provisional 68k dc.w $a9ae
db 0xC8, 0xCB ; file 003962
db 0xA1, 0xFF ; 003964: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 003966: provisional 68k dc.w $ff01
db 0x0E, 0x1A ; file 003968
db 0xB9, 0xDD ; 00396A: provisional 68k cmpa.l (a5)+, a4
db 0x1E, 0x99 ; 00396C: provisional 68k move.b (a1)+, (a7)
db 0x99, 0xA1 ; 00396E: provisional 68k sub.l d4, -(a1)
db 0xC9, 0x9A ; 003970: provisional 68k and.l d4, (a2)+
db 0x88, 0xCA ; file 003972
db 0xAE, 0xA9 ; 003974: provisional 68k dc.w $aea9
db 0x9B, 0x91 ; 003976: provisional 68k sub.l d5, (a1)
db 0xFF, 0xFF ; 003978: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 00397A: provisional 68k btst.l d0, d2
db 0x19, 0xB9, 0xE1, 0x01, 0x0A, 0xC9, 0xBB, 0xAF, 0x8C, 0x9A, 0x88, 0xCA, 0xAE, 0x89 ; 00397C: provisional 68k move.b $e1010ac9.l, ([$8c9a], a3.l * 2, $88caae89)
db 0x9B, 0x91 ; 00398A: provisional 68k sub.l d5, (a1)
db 0xFF, 0xFF ; 00398C: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 00398E: provisional 68k btst.l d0, d2
db 0x1E, 0xAA, 0xE1, 0x01 ; 003990: provisional 68k move.b -$1eff(a2), (a7)
db 0x0A, 0xEA ; file 003994
db 0x9B, 0x9F ; 003996: provisional 68k sub.l d5, (a7)+
db 0x8A, 0x99 ; 003998: provisional 68k or.l (a1)+, d5
db 0xE8, 0xC9 ; file 00399A
db 0x9E, 0x88 ; 00399C: provisional 68k sub.l a0, d7
db 0xAB, 0xBE ; 00399E: provisional 68k dc.w $abbe
db 0xFF, 0xFF ; 0039A0: provisional 68k dc.w $ffff
db 0x01, 0x02 ; 0039A2: provisional 68k btst.l d0, d2
db 0xDD, 0xEC, 0xE1, 0x01 ; 0039A4: provisional 68k adda.l -$1eff(a4), a6
db 0x0A, 0x1C, 0xA9, 0x9F ; 0039A8: provisional 68k eori.b #$9f, (a4)+
db 0xDA, 0xBB, 0xA8, 0xC9 ; 0039AC: provisional 68k add.l $3977(pc, a2.l), d5
db 0xBC, 0x88 ; 0039B0: provisional 68k cmp.l a0, d6
db 0xC9, 0xBC ; file 0039B2
db 0xFF, 0xFF ; 0039B4: provisional 68k dc.w $ffff
db 0x02, 0x01, 0xE9, 0xAF ; 0039B6: provisional 68k andi.b #$af, d1
db 0x01, 0x0A, 0x1E, 0xC9 ; 0039BA: provisional 68k movep.w $1ec9(a2), d0
db 0x9E, 0x1C ; 0039BE: provisional 68k sub.b (a4)+, d7
db 0xBB, 0xA8, 0xAB, 0xBA ; 0039C0: provisional 68k eor.l d5, -$5446(a0)
db 0x8C, 0x99 ; 0039C4: provisional 68k or.l (a1)+, d6
db 0x9E, 0xFF ; file 0039C6
db 0xFF, 0x02 ; 0039C8: provisional 68k dc.w $ff02
db 0x01, 0xE9, 0x9E, 0x01 ; 0039CA: provisional 68k bset.b d0, -$61ff(a1)
db 0x0A, 0x1E, 0xC9, 0xBA ; 0039CE: provisional 68k eori.b #$ba, (a6)+
db 0x1E, 0x9B ; 0039D2: provisional 68k move.b (a3)+, (a7)
db 0x98, 0xA9, 0x9C, 0xEA ; 0039D4: provisional 68k sub.l -$6316(a1), d4
db 0xBB, 0xAE, 0xFF, 0xFF ; 0039D8: provisional 68k eor.l d5, -$1(a6)
db 0x02, 0x01, 0x1A, 0x9A ; 0039DC: provisional 68k andi.b #$9a, d1
db 0x01, 0x0A, 0xDD, 0xC9 ; 0039E0: provisional 68k movep.w -$2237(a2), d0
db 0xB9, 0xD8 ; 0039E4: provisional 68k cmpa.l (a0)+, a4
db 0x9B, 0x9C ; 0039E6: provisional 68k sub.l d5, (a4)+
db 0xAB, 0xBE ; 0039E8: provisional 68k dc.w $abbe
db 0xEA, 0xBB ; 0039EA: provisional 68k ror.l d5, d3
db 0x9C, 0xFF ; file 0039EC
db 0xFF, 0x02 ; 0039EE: provisional 68k dc.w $ff02
db 0x02, 0x1C, 0x99, 0x8F ; 0039F0: provisional 68k andi.b #$8f, (a4)+
db 0x01, 0x09, 0xE9, 0xBB ; 0039F4: provisional 68k movep.w -$1645(a1), d0
db 0xE8, 0x9B ; 0039F8: provisional 68k ror.l #$4, d3
db 0xBA, 0xAB, 0xBA, 0xEA ; 0039FA: provisional 68k cmp.l -$4516(a3), d5
db 0xBB, 0x9A ; 0039FE: provisional 68k eor.l d5, (a2)+
db 0xFF, 0xFF ; 003A00: provisional 68k dc.w $ffff
db 0x02, 0x0D ; file 003A02
db 0x1A, 0xBB, 0x9A, 0x81 ; 003A04: provisional 68k move.b $3987(pc, a1.l), (a5)
db 0xEA, 0xBB ; 003A08: provisional 68k ror.l d5, d3
db 0xA8, 0xAB ; 003A0A: provisional 68k dc.w $a8ab
db 0xB9, 0xAB, 0xB9, 0xC9 ; 003A0C: provisional 68k eor.l d4, -$4637(a3)
db 0xBB, 0xCE ; 003A10: provisional 68k cmpa.l a6, a5
db 0xFF, 0xFF ; 003A12: provisional 68k dc.w $ffff
db 0x02, 0x0D ; file 003A14
db 0x1E, 0x9B ; 003A16: provisional 68k move.b (a3)+, (a7)
db 0xBB, 0xC1 ; 003A18: provisional 68k cmpa.l d1, a5
db 0x1C, 0xBB, 0x98, 0xAB ; 003A1A: provisional 68k move.b $39c7(pc, a1.l), (a6)
db 0xBB, 0xAB, 0xB9, 0xA9 ; 003A1E: provisional 68k eor.l d5, -$4657(a3)
db 0xBB, 0xA1 ; 003A22: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 003A24: provisional 68k dc.w $ffff
db 0x02, 0x0D, 0x1E, 0xC9 ; file 003A26
db 0xBB, 0x9E ; 003A2A: provisional 68k eor.l d5, (a6)+
db 0xDE, 0x9B ; 003A2C: provisional 68k add.l (a3)+, d7
db 0xBE, 0xAB, 0xBB, 0xAB ; 003A2E: provisional 68k cmp.l -$4455(a3), d7
db 0xBB, 0xA9, 0xBB, 0xA1 ; 003A32: provisional 68k eor.l d5, -$445f(a1)
db 0xFF, 0xFF ; 003A36: provisional 68k dc.w $ffff
db 0x03, 0x0C, 0x8A, 0x9B ; 003A38: provisional 68k movep.w -$7565(a4), d1
db 0xB9, 0x88 ; 003A3C: provisional 68k cmpm.l (a0)+, (a4)+
db 0x9B, 0xB9, 0xA9, 0xBB, 0xA9, 0xB9 ; 003A3E: provisional 68k sub.l d5, $a9bba9b9.l
db 0xA9, 0xB9 ; 003A44: provisional 68k dc.w $a9b9
db 0x81, 0xFF ; file 003A46
db 0xFF, 0x03 ; 003A48: provisional 68k dc.w $ff03
db 0x0C, 0x18, 0x89, 0xBB ; 003A4A: provisional 68k cmpi.b #$bb, (a0)+
db 0x9C, 0xAB, 0xBB, 0xCA ; 003A4E: provisional 68k sub.l -$4436(a3), d6
db 0xB9, 0xC9 ; 003A52: provisional 68k cmpa.l a1, a4
db 0x9C, 0xEA, 0xAC, 0xDD ; 003A54: provisional 68k suba.w -$5323(a2), a6
db 0xFF, 0xFF ; 003A58: provisional 68k dc.w $ffff
db 0x04, 0x0B ; file 003A5A
db 0xD8, 0xAB, 0xBB, 0xA9 ; 003A5C: provisional 68k add.l -$4457(a3), d4
db 0xBB, 0xCC ; 003A60: provisional 68k cmpa.l a4, a5
db 0xAC, 0xCC ; 003A62: provisional 68k dc.w $accc
db 0x88, 0x88 ; file 003A64
db 0x88, 0x81 ; 003A66: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 003A68: provisional 68k dc.w $ffff
db 0x04, 0x0A, 0x18, 0x8A, 0xBB, 0xBB ; file 003A6A
db 0x9B, 0xCE ; 003A70: provisional 68k suba.l a6, a5
db 0x8C, 0x9B ; 003A72: provisional 68k or.l (a3)+, d6
db 0xBB, 0x9B ; 003A74: provisional 68k eor.l d5, (a3)+
db 0x9C, 0xFF ; file 003A76
db 0xFF, 0x05 ; 003A78: provisional 68k dc.w $ff05
db 0x0A, 0x88, 0x9B, 0xBB ; file 003A7A
db 0xBC, 0x9B ; 003A7E: provisional 68k cmp.l (a3)+, d6
db 0xBB, 0xBB, 0xBB, 0xBB ; file 003A80
db 0xB9, 0xAA, 0xFF, 0xFF ; 003A84: provisional 68k eor.l d4, -$1(a2)
db 0x05, 0x0A, 0x18, 0xC9 ; 003A88: provisional 68k movep.w $18c9(a2), d2
db 0x9B, 0x9A ; 003A8C: provisional 68k sub.l d5, (a2)+
db 0xE9, 0xBB ; 003A8E: provisional 68k rol.l d4, d3
db 0xBB, 0xBB ; file 003A90
db 0xB9, 0xA9, 0x99, 0xFF ; 003A92: provisional 68k eor.l d4, -$6601(a1)
db 0xFF, 0x06 ; 003A96: provisional 68k dc.w $ff06
db 0x09, 0x8C, 0xCC, 0x9A ; 003A98: provisional 68k movep.w d4, -$3366(a4)
db 0xEA, 0xBB ; 003A9C: provisional 68k ror.l d5, d3
db 0xBB, 0xBB ; file 003A9E
db 0xB9, 0xCC ; 003AA0: provisional 68k cmpa.l a4, a4
db 0xCA, 0xFF ; file 003AA2
db 0xFF, 0x06 ; 003AA4: provisional 68k dc.w $ff06
db 0x09, 0x18 ; 003AA6: provisional 68k btst.l d4, (a0)+
db 0x88, 0xAA, 0xA9, 0x99 ; 003AA8: provisional 68k or.l -$5667(a2), d4
db 0xB9, 0xB9, 0x99, 0xC8, 0x8E, 0xFF ; 003AAC: provisional 68k eor.l d4, $99c88eff.l
db 0xFF, 0x07 ; 003AB2: provisional 68k dc.w $ff07
db 0x08, 0x1E, 0xEC, 0xCC ; file 003AB4
db 0xCA, 0x99 ; 003AB8: provisional 68k and.l (a1)+, d5
db 0x9A, 0xAC, 0x88, 0xEE ; 003ABA: provisional 68k sub.l -$7712(a4), d5
db 0xFF, 0xFF ; 003ABE: provisional 68k dc.w $ffff
db 0x08, 0x06, 0x1E, 0x8D ; file 003AC0
db 0x88, 0xAA, 0xCC, 0xC8 ; 003AC4: provisional 68k or.l -$3338(a2), d4
db 0x8D, 0xFF ; file 003AC8
db 0xFF, 0x09 ; 003ACA: provisional 68k dc.w $ff09
db 0x04, 0xDD ; file 003ACC
db 0xD8, 0xCC ; 003ACE: provisional 68k adda.w a4, a4
db 0x88, 0x8E ; file 003AD0
db 0xFF, 0xFF ; 003AD2: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 003AD4: provisional 68k btst.l d5, d1
db 0xEE, 0x81 ; 003AD6: provisional 68k asr.l #$7, d1
db 0xFF, 0xFF ; 003AD8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003ADA: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 003ADC: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 003AE0: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 003AE6
db 0x10, 0x10 ; 003AEA: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 003AEC: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 003AEE: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 003AF0: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 003AF2: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 003AF6: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003AFA: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003AFC: provisional 68k neg.w d4
db 0x24, 0x28, 0x54, 0xA4 ; 003AFE: provisional 68k move.l $54a4(a0), d2
db 0xA8, 0xA8 ; 003B02: provisional 68k dc.w $a8a8
db 0x64, 0x68 ; 003B04: provisional 68k bcc.b $3b6e
db 0x7C, 0xE0 ; 003B06: provisional 68k moveq #$e0, d6
db 0xE4, 0xE4 ; 003B08: provisional 68k roxr.w -(a4)
db 0x48, 0x50 ; 003B0A: provisional 68k pea.l (a0)
db 0x58, 0x40 ; 003B0C: provisional 68k addq.w #$4, d0
db 0x44, 0x78, 0x0C, 0x10 ; 003B0E: provisional 68k neg.w $c10.w
db 0x5C, 0x74, 0x78, 0x84 ; 003B12: provisional 68k addq.w #$6, -$7c(a4, d7.l)
db 0xFF, 0xFF ; 003B16: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003B18: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003B1A: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003B1C: provisional 68k btst.l d1, d1
db 0x8F, 0x81 ; 003B1E: provisional 68k dc.w $8f81
db 0xFF, 0xFF ; 003B20: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003B22: provisional 68k btst.l d1, d1
db 0xF9, 0xD1 ; 003B24: provisional 68k dc.w $f9d1
db 0xFF, 0xFF ; 003B26: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003B28: provisional 68k btst.l d1, d1
db 0xFF, 0xF1 ; 003B2A: provisional 68k dc.w $fff1
db 0xFF, 0xFF ; 003B2C: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003B2E: provisional 68k btst.l d1, d1
db 0xDF, 0x91 ; 003B30: provisional 68k add.l d7, (a1)
db 0xFF, 0xFF ; 003B32: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003B34: provisional 68k btst.l d1, d1
db 0x8F, 0xBF ; file 003B36
db 0xFF, 0xFF ; 003B38: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003B3A: provisional 68k btst.l d1, d1
db 0x1D, 0xB9, 0xFF, 0xFF, 0x03, 0x01, 0xE8, 0xF9 ; 003B3C: provisional 68k move.b $ffff0301.l, -$7(a6, a6.l)
db 0xFF, 0xFF ; 003B44: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 003B46: provisional 68k btst.l d1, d2
db 0xEE, 0xCB ; file 003B48
db 0xAE, 0xFF ; 003B4A: provisional 68k dc.w $aeff
db 0xFF, 0x04 ; 003B4C: provisional 68k dc.w $ff04
db 0x01, 0x1B ; 003B4E: provisional 68k btst.l d0, (a3)+
db 0x91, 0x02 ; 003B50: provisional 68k subx.b d2, d0
db 0x01, 0xDA ; 003B52: provisional 68k bset.b d0, (a2)+
db 0xF8, 0xFF ; 003B54: provisional 68k dc.w $f8ff
db 0xFF, 0x04 ; 003B56: provisional 68k dc.w $ff04
db 0x02, 0x19, 0xBD, 0xEE ; 003B58: provisional 68k andi.b #$ee, (a1)+
db 0x01, 0x01 ; 003B5C: provisional 68k btst.l d0, d1
db 0xFB, 0xBA ; 003B5E: provisional 68k dc.w $fbba
db 0xFF, 0xFF ; 003B60: provisional 68k dc.w $ffff
db 0x04, 0x02, 0x19, 0xB9 ; 003B62: provisional 68k subi.b #$b9, d2
db 0x81, 0x01 ; 003B66: provisional 68k sbcd.b d1, d0
db 0x02, 0xAB, 0xBF, 0x81, 0xFF, 0xFF, 0x04, 0x06 ; 003B68: provisional 68k andi.l #$bf81ffff, $406(a3)
db 0x19, 0xBB, 0xD1, 0xEE, 0x8B, 0xBA, 0xEE, 0xFF ; 003B70: provisional 68k move.b ([$c72c]), -$1(a4, a6.l)
db 0xFF, 0x04 ; 003B78: provisional 68k dc.w $ff04
db 0x02, 0x1F, 0x99, 0xD1 ; 003B7A: provisional 68k andi.b #$d1, (a7)+
db 0x01, 0x01 ; 003B7E: provisional 68k btst.l d0, d1
db 0x89, 0xBC ; file 003B80
db 0x01, 0x01 ; 003B82: provisional 68k btst.l d0, d1
db 0x1F, 0x9F, 0xFF, 0xFF, 0x04, 0x02, 0x18, 0xF9 ; 003B84: provisional 68k move.b (a7)+, ([$40218f9])
db 0xA1, 0x01 ; 003B8C: provisional 68k dc.w $a101
db 0x05, 0x19 ; 003B8E: provisional 68k btst.l d2, (a1)+
db 0xBF, 0xEE, 0xAB, 0xBB ; 003B90: provisional 68k cmpa.l -$5445(a6), a7
db 0xAE, 0xFF ; 003B94: provisional 68k dc.w $aeff
db 0xFF, 0x05 ; 003B96: provisional 68k dc.w $ff05
db 0x01, 0xAB, 0x98, 0x01 ; 003B98: provisional 68k bclr.b d0, -$67ff(a3)
db 0x05, 0x89, 0xB9, 0xDE ; 003B9C: provisional 68k movep.w d2, -$4622(a1)
db 0xC9, 0xB9, 0xD1, 0xFF, 0xFF, 0x03 ; 003BA0: provisional 68k and.l d4, $d1ffff03.l
db 0x03, 0x1F ; 003BA6: provisional 68k btst.l d1, (a7)+
db 0xF8, 0x89 ; 003BA8: provisional 68k dc.w $f889
db 0x9D, 0x01 ; 003BAA: provisional 68k subx.b d1, d6
db 0x05, 0x89, 0xB9, 0xD1 ; 003BAC: provisional 68k movep.w d2, -$462f(a1)
db 0xEC, 0xB9 ; 003BB0: provisional 68k ror.l d6, d1
db 0xD1, 0xFF ; file 003BB2
db 0xFF, 0x03 ; 003BB4: provisional 68k dc.w $ff03
db 0x03, 0xD9 ; 003BB6: provisional 68k bset.b d1, (a1)+
db 0xF8, 0x89 ; 003BB8: provisional 68k dc.w $f889
db 0xBF, 0x01 ; 003BBA: provisional 68k eor.b d7, d1
db 0x05, 0xEA, 0x9F, 0xD8 ; 003BBC: provisional 68k bset.b d2, -$6028(a2)
db 0xEC, 0xBB ; 003BC0: provisional 68k ror.l d6, d3
db 0xD1, 0xFF ; file 003BC2
db 0xFF, 0x03 ; 003BC4: provisional 68k dc.w $ff03
db 0x0A, 0xD9 ; file 003BC6
db 0xC1, 0xEF, 0xB9, 0xEE ; 003BC8: provisional 68k muls.w -$4612(a7), d0
db 0x1A, 0xB9, 0xAD, 0x88, 0xBB, 0xDE ; 003BCC: provisional 68k move.b $ad88bbde.l, (a5)
db 0xFF, 0xFF ; 003BD2: provisional 68k dc.w $ffff
db 0x02, 0x0E, 0xEE, 0xF9 ; file 003BD4
db 0xEE, 0x1D ; 003BD8: provisional 68k ror.b #$7, d5
db 0xBB, 0xAE, 0x8A, 0xBB ; 003BDA: provisional 68k eor.l d5, -$7545(a6)
db 0x9F, 0xC8 ; 003BDE: provisional 68k suba.l a0, a7
db 0x9B, 0xFE ; file 003BE0
db 0x18, 0xAF, 0x81, 0xFF ; 003BE2: provisional 68k move.b -$7e01(a7), (a4)
db 0xFF, 0x02 ; 003BE6: provisional 68k dc.w $ff02
db 0x01, 0x1D ; 003BE8: provisional 68k btst.l d0, (a5)+
db 0x9F, 0x01 ; 003BEA: provisional 68k subx.b d1, d7
db 0x0B, 0x1D ; 003BEC: provisional 68k btst.l d5, (a5)+
db 0xBB, 0x98 ; 003BEE: provisional 68k eor.l d5, (a0)+
db 0x8C, 0x9B ; 003BF0: provisional 68k or.l (a3)+, d6
db 0xB9, 0xCF ; 003BF2: provisional 68k cmpa.l a7, a4
db 0x9B, 0x91 ; 003BF4: provisional 68k sub.l d5, (a1)
db 0xEA, 0xBB ; 003BF6: provisional 68k ror.l d5, d3
db 0x91, 0xFF ; file 003BF8
db 0xFF, 0x02 ; 003BFA: provisional 68k dc.w $ff02
db 0x01, 0x89, 0xBF, 0x01 ; 003BFC: provisional 68k movep.w d0, -$40ff(a1)
db 0x0B, 0x1A ; 003C00: provisional 68k btst.l d5, (a2)+
db 0xBB, 0x9D ; 003C02: provisional 68k eor.l d5, (a5)+
db 0x88, 0x9B ; 003C04: provisional 68k or.l (a3)+, d4
db 0x9F, 0xA9, 0x9B, 0x9D ; 003C06: provisional 68k sub.l d7, -$6463(a1)
db 0x1A, 0xFB, 0xA1, 0xFF, 0xFF, 0x02, 0x01, 0x89 ; 003C0A: provisional 68k move.b ([$ff023d95]), (a5)+
db 0xB9, 0x01 ; 003C12: provisional 68k eor.b d4, d1
db 0x0B, 0x1D ; 003C14: provisional 68k btst.l d5, (a5)+
db 0xA9, 0xB9 ; 003C16: provisional 68k dc.w $a9b9
db 0x88, 0xA9, 0x9F, 0xCF ; 003C18: provisional 68k or.l -$6031(a1), d4
db 0xF9, 0xFC ; 003C1C: provisional 68k dc.w $f9fc
db 0xCC, 0xCB ; file 003C1E
db 0xA1, 0xFF ; 003C20: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 003C22: provisional 68k dc.w $ff02
db 0x01, 0x8A, 0xFA, 0x01 ; 003C24: provisional 68k movep.w d0, -$5ff(a2)
db 0x0B, 0x18 ; 003C28: provisional 68k btst.l d5, (a0)+
db 0xF9, 0xBB ; 003C2A: provisional 68k dc.w $f9bb
db 0xD8, 0xAF, 0x9F, 0x8C ; 003C2C: provisional 68k add.l -$6074(a7), d4
db 0xC9, 0xFC, 0xF9, 0x9B ; 003C30: provisional 68k muls.w #$f99b, d4
db 0xA1, 0xFF ; 003C34: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 003C36: provisional 68k dc.w $ff02
db 0x01, 0x18 ; 003C38: provisional 68k btst.l d0, (a0)+
db 0xAA, 0x02 ; 003C3A: provisional 68k dc.w $aa02
db 0x0A, 0xA9, 0x99, 0xDE, 0xC9, 0x9A, 0x8C, 0xF9 ; 003C3C: provisional 68k eori.l #$99dec99a, -$7307(a1)
db 0xFC, 0xF9 ; 003C44: provisional 68k dc.w $fcf9
db 0xBB, 0xF1, 0xFF, 0xFF, 0x02, 0x02, 0x18, 0xF9 ; 003C46: provisional 68k cmpa.l ([$20218f9]), a5
db 0x81, 0x01 ; 003C4E: provisional 68k sbcd.b d1, d0
db 0x0A, 0x8A ; file 003C50
db 0x99, 0xD1 ; 003C52: provisional 68k suba.l (a1), a4
db 0xD9, 0xBF ; file 003C54
db 0x8C, 0x99 ; 003C56: provisional 68k or.l (a1)+, d6
db 0xFC, 0x8A ; 003C58: provisional 68k dc.w $fc8a
db 0x9B, 0x91 ; 003C5A: provisional 68k sub.l d5, (a1)
db 0xFF, 0xFF ; 003C5C: provisional 68k dc.w $ffff
db 0x02, 0x02, 0xEE, 0xFB ; 003C5E: provisional 68k andi.b #$fb, d2
db 0xD1, 0x01 ; 003C62: provisional 68k addx.b d1, d0
db 0x0A, 0x1C, 0x99, 0xD1 ; 003C64: provisional 68k eori.b #$d1, (a4)+
db 0xC9, 0xB9, 0x8A, 0xBB, 0x9D, 0x8A ; 003C68: provisional 68k and.l d4, $8abb9d8a.l
db 0x99, 0x91 ; 003C6E: provisional 68k sub.l d4, (a1)
db 0xFF, 0xFF ; 003C70: provisional 68k dc.w $ffff
db 0x02, 0x02, 0xEE, 0xF9 ; 003C72: provisional 68k andi.b #$f9, d2
db 0xF1, 0x01 ; 003C76: provisional 68k dc.w $f101
db 0x0A, 0x1C, 0x9B, 0xF1 ; 003C78: provisional 68k eori.b #$f1, (a4)+
db 0x89, 0xB9, 0x8F, 0xB9, 0x9A, 0xC9 ; 003C7C: provisional 68k or.l d4, $8fb99ac9.l
db 0x9F, 0xA1 ; 003C82: provisional 68k sub.l d7, -(a1)
db 0xFF, 0xFF ; 003C84: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003C86: provisional 68k btst.l d1, d1
db 0xF9, 0x91 ; 003C88: provisional 68k dc.w $f991
db 0x02, 0x09 ; file 003C8A
db 0x9B, 0x91 ; 003C8C: provisional 68k sub.l d5, (a1)
db 0x89, 0xBB ; file 003C8E
db 0xDF, 0xB9, 0xFC, 0xAB, 0xBF, 0xA1 ; 003C90: provisional 68k add.l d7, $fcabbfa1.l
db 0xFF, 0xFF ; 003C96: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003C98: provisional 68k btst.l d1, d1
db 0xF9, 0xBF ; 003C9A: provisional 68k dc.w $f9bf
db 0x02, 0x09 ; file 003C9C
db 0x9B, 0xB1, 0x89, 0xBB, 0xFF, 0xBB, 0xA8, 0xFB, 0xBF, 0xF1, 0xFF, 0xFF ; 003C9E: provisional 68k sub.l d5, ([$ffbba8fb, a0.l], $bff1ffff)
db 0x02, 0x03, 0xEE, 0xC9 ; 003CAA: provisional 68k andi.b #$c9, d3
db 0xBB, 0x9D ; 003CAE: provisional 68k eor.l d5, (a5)+
db 0x01, 0x09, 0xFB, 0xBA ; 003CB0: provisional 68k movep.w -$446(a1), d0
db 0x8F, 0xBB, 0x9F, 0xBB ; file 003CB4
db 0xAC, 0x9B ; 003CB8: provisional 68k dc.w $ac9b
db 0xB9, 0x91 ; 003CBA: provisional 68k eor.l d4, (a1)
db 0xFF, 0xFF ; 003CBC: provisional 68k dc.w $ffff
db 0x03, 0x0D, 0x8F, 0xBB ; 003CBE: provisional 68k movep.w -$7045(a5), d1
db 0xBF, 0x8E ; 003CC2: provisional 68k cmpm.l (a6)+, (a7)+
db 0xAB, 0xB9 ; 003CC4: provisional 68k dc.w $abb9
db 0x8F, 0xBB, 0xB9, 0xBB ; file 003CC6
db 0xFC, 0x9B ; 003CCA: provisional 68k dc.w $fc9b
db 0xBC, 0xC1 ; 003CCC: provisional 68k cmpa.w d1, a6
db 0xFF, 0xFF ; 003CCE: provisional 68k dc.w $ffff
db 0x03, 0x0D, 0x8C, 0x9B ; 003CD0: provisional 68k movep.w -$7365(a5), d1
db 0xB9, 0xDE ; 003CD4: provisional 68k cmpa.l (a6)+, a4
db 0xAB, 0xBB ; 003CD6: provisional 68k dc.w $abbb
db 0x8F, 0xBB, 0xB9, 0xBB ; file 003CD8
db 0x9F, 0x9B ; 003CDC: provisional 68k sub.l d7, (a3)+
db 0xBC, 0xEE, 0xFF, 0xFF ; 003CDE: provisional 68k cmpa.w -$1(a6), a6
db 0x03, 0x0C, 0x18, 0xCF ; 003CE2: provisional 68k movep.w $18cf(a4), d1
db 0x9B, 0x98 ; 003CE6: provisional 68k sub.l d5, (a0)+
db 0xC9, 0xBB ; file 003CE8
db 0xAF, 0xBB ; 003CEA: provisional 68k dc.w $afbb
db 0xB9, 0xBB, 0x99, 0xBB, 0xB8, 0xFF ; file 003CEC
db 0xFF, 0x04 ; 003CF2: provisional 68k dc.w $ff04
db 0x0B, 0xE8, 0xFB, 0xB9 ; 003CF4: provisional 68k bset.b d5, -$447(a0)
db 0xA9, 0xBB ; 003CF8: provisional 68k dc.w $a9bb
db 0x9F, 0x9B ; 003CFA: provisional 68k sub.l d7, (a3)+
db 0x99, 0xBB, 0x99, 0xBB, 0x98, 0xFF ; file 003CFC
db 0xFF, 0x04 ; 003D02: provisional 68k dc.w $ff04
db 0x0B, 0x18 ; 003D04: provisional 68k btst.l d5, (a0)+
db 0x8F, 0xBB ; file 003D06
db 0xB9, 0x9B ; 003D08: provisional 68k eor.l d4, (a3)+
db 0x9F, 0xF9, 0xAA, 0xFF, 0x8C, 0xFA ; 003D0A: provisional 68k suba.l $aaff8cfa.l, a7
db 0xC8, 0xFF ; file 003D10
db 0xFF, 0x05 ; 003D12: provisional 68k dc.w $ff05
db 0x0A, 0x8C ; file 003D14
db 0xFB, 0xBB ; 003D16: provisional 68k dc.w $fbbb
db 0x9B, 0x9A ; 003D18: provisional 68k sub.l d5, (a2)+
db 0xAA, 0xCC ; 003D1A: provisional 68k dc.w $aacc
db 0xC8, 0x8C, 0x88, 0x88 ; file 003D1C
db 0xFF, 0xFF ; 003D20: provisional 68k dc.w $ffff
db 0x05, 0x09, 0x88, 0xC9 ; 003D22: provisional 68k movep.w -$7737(a1), d2
db 0xBB, 0xB9, 0xAF, 0x9B, 0xBB, 0xBB ; 003D26: provisional 68k eor.l d5, $af9bbbbb.l
db 0xBB, 0xB9, 0xFF, 0xFF, 0x05, 0x0A ; 003D2C: provisional 68k eor.l d5, $ffff050a.l
db 0x18, 0x8A ; file 003D32
db 0x9B, 0xB9, 0xDF, 0xBB, 0xBB, 0xBB ; 003D34: provisional 68k sub.l d5, $dfbbbbbb.l
db 0xBB, 0xB9, 0x88, 0xFF, 0xFF, 0x06 ; 003D3A: provisional 68k eor.l d5, $88ffff06.l
db 0x09, 0x8C, 0xCA, 0xF9 ; 003D40: provisional 68k movep.w d4, -$3507(a4)
db 0xDA, 0x9B ; 003D44: provisional 68k add.l (a3)+, d5
db 0xBB, 0xBB ; file 003D46
db 0xBB, 0x99 ; 003D48: provisional 68k eor.l d5, (a1)+
db 0xFB, 0xFF ; 003D4A: provisional 68k dc.w $fbff
db 0xFF, 0x07 ; 003D4C: provisional 68k dc.w $ff07
db 0x08, 0x88 ; file 003D4E
db 0xA9, 0xFF ; 003D50: provisional 68k dc.w $a9ff
db 0x9B, 0xBB ; file 003D52
db 0xBB, 0xB9, 0xAC, 0xA9, 0xFF, 0xFF ; 003D54: provisional 68k eor.l d5, $aca9ffff.l
db 0x07, 0x08, 0x18, 0xDA ; 003D5A: provisional 68k movep.w $18da(a0), d3
db 0xAA, 0xA9 ; 003D5E: provisional 68k dc.w $aaa9
db 0x99, 0x99 ; 003D60: provisional 68k sub.l d4, (a1)+
db 0x99, 0xC8 ; 003D62: provisional 68k suba.l a0, a4
db 0x8D, 0xFF ; file 003D64
db 0xFF, 0x09 ; 003D66: provisional 68k dc.w $ff09
db 0x06, 0x88 ; file 003D68
db 0x8C, 0x9F ; 003D6A: provisional 68k or.l (a7)+, d6
db 0xFF, 0xFA ; 003D6C: provisional 68k dc.w $fffa
db 0xC8, 0x88 ; file 003D6E
db 0xFF, 0xFF ; 003D70: provisional 68k dc.w $ffff
db 0x09, 0x05 ; 003D72: provisional 68k btst.l d4, d5
db 0x18, 0xE8, 0xFA, 0xCC ; 003D74: provisional 68k move.b -$534(a0), (a4)+
db 0xCC, 0x8E ; file 003D78
db 0xFF, 0xFF ; 003D7A: provisional 68k dc.w $ffff
db 0x0A, 0x03, 0x18, 0xDC ; 003D7C: provisional 68k eori.b #$dc, d3
db 0x88, 0x88 ; file 003D80
db 0xFF, 0xFF ; 003D82: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003D84: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 003D86: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 003D88: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 003D8C: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 003D92
db 0x10, 0x10 ; 003D96: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 003D98: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 003D9A: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 003D9C: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 003D9E: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 003DA2: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 003DA6: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 003DA8: provisional 68k neg.w d4
db 0x24, 0x28, 0x54, 0xA0 ; 003DAA: provisional 68k move.l $54a0(a0), d2
db 0xA4, 0xA4 ; 003DAE: provisional 68k dc.w $a4a4
db 0x60, 0x64 ; 003DB0: provisional 68k bra.b $3e16
db 0x80, 0xE0 ; 003DB2: provisional 68k divu.w -(a0), d0
db 0xE4, 0xE0 ; 003DB4: provisional 68k roxr.w -(a0)
db 0x4C, 0x54, 0x5C, 0x3C ; file 003DB6
db 0x3C, 0x7C, 0x74, 0x78 ; 003DBA: provisional 68k movea.w #$7478, a6
db 0x84, 0x10 ; 003DBE: provisional 68k or.b (a0), d2
db 0x10, 0x74 ; file 003DC0
db 0xFF, 0xFF ; 003DC2: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1D, 0xE1 ; 003DC4: provisional 68k addi.b #$e1, d1
db 0xFF, 0xFF ; 003DC8: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8A, 0x98 ; 003DCA: provisional 68k addi.b #$98, d1
db 0xFF, 0xFF ; 003DCE: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8A, 0x98 ; 003DD0: provisional 68k addi.b #$98, d1
db 0xFF, 0xFF ; 003DD4: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8A, 0xBD ; 003DD6: provisional 68k addi.b #$bd, d1
db 0xFF, 0xFF ; 003DDA: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8E, 0xBE ; 003DDC: provisional 68k addi.b #$be, d1
db 0xFF, 0xFF ; 003DE0: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x8A, 0x9E ; 003DE2: provisional 68k addi.b #$9e, d1
db 0xFF, 0xFF ; 003DE6: provisional 68k dc.w $ffff
db 0x06, 0x01, 0xFC, 0x9A ; 003DE8: provisional 68k addi.b #$9a, d1
db 0xFF, 0xFF ; 003DEC: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1A, 0x9E ; 003DEE: provisional 68k addi.b #$9e, d1
db 0xFF, 0xFF ; 003DF2: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1D, 0x99 ; 003DF4: provisional 68k addi.b #$99, d1
db 0xFF, 0xFF ; 003DF8: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1D, 0x99 ; 003DFA: provisional 68k addi.b #$99, d5
db 0xFF, 0x18 ; 003DFE: provisional 68k dc.w $ff18
db 0xAA, 0x81 ; 003E00: provisional 68k dc.w $aa81
db 0xFF, 0xFF ; 003E02: provisional 68k dc.w $ffff
db 0x06, 0x05, 0x1D, 0xBB ; 003E04: provisional 68k addi.b #$bb, d5
db 0xD1, 0xFE ; file 003E08
db 0x9B, 0x98 ; 003E0A: provisional 68k sub.l d5, (a0)+
db 0xFF, 0xFF ; 003E0C: provisional 68k dc.w $ffff
db 0x06, 0x05, 0xFE, 0xBB ; 003E0E: provisional 68k addi.b #$bb, d5
db 0xA1, 0x8E ; 003E12: provisional 68k dc.w $a18e
db 0xBB, 0x98 ; 003E14: provisional 68k eor.l d5, (a0)+
db 0xFF, 0xFF ; 003E16: provisional 68k dc.w $ffff
db 0x06, 0x06, 0xFA, 0xB9 ; 003E18: provisional 68k addi.b #$b9, d6
db 0xA1, 0xF8 ; 003E1C: provisional 68k dc.w $a1f8
db 0x9B, 0xA8, 0xFF, 0xFF ; 003E1E: provisional 68k sub.l d5, -$1(a0)
db 0xFF, 0x06 ; 003E22: provisional 68k dc.w $ff06
db 0x05, 0xF8, 0xE9, 0xD1 ; 003E24: provisional 68k bset.b d2, $e9d1.w
db 0x18, 0x9B ; 003E28: provisional 68k move.b (a3)+, (a4)
db 0xA1, 0x01 ; 003E2A: provisional 68k dc.w $a101
db 0x01, 0x8D, 0xD1, 0xFF ; 003E2C: provisional 68k movep.w d0, -$2e01(a5)
db 0xFF, 0x06 ; 003E30: provisional 68k dc.w $ff06
db 0x08, 0x1D ; file 003E32
db 0x9B, 0xC1 ; 003E34: provisional 68k suba.l d1, a5
db 0x18, 0x9B ; 003E36: provisional 68k move.b (a3)+, (a4)
db 0xE1, 0x1A ; 003E38: provisional 68k rol.b #$8, d2
db 0x9B, 0x9D ; 003E3A: provisional 68k sub.l d5, (a5)+
db 0xFF, 0xFF ; 003E3C: provisional 68k dc.w $ffff
db 0x05, 0x09, 0xDD, 0x1D ; 003E3E: provisional 68k movep.w -$22e3(a1), d2
db 0x9B, 0xA1 ; 003E42: provisional 68k sub.l d5, -(a1)
db 0x18, 0x9B ; 003E44: provisional 68k move.b (a3)+, (a4)
db 0x98, 0x8A ; 003E46: provisional 68k sub.l a2, d4
db 0xBB, 0x9D ; 003E48: provisional 68k eor.l d5, (a5)+
db 0xFF, 0xFF ; 003E4A: provisional 68k dc.w $ffff
db 0x04, 0x0A ; file 003E4C
db 0x1A, 0x9D ; 003E4E: provisional 68k move.b (a5)+, (a5)
db 0x18, 0x9B ; 003E50: provisional 68k move.b (a3)+, (a4)
db 0xA1, 0x18 ; 003E52: provisional 68k dc.w $a118
db 0x9B, 0x98 ; 003E54: provisional 68k sub.l d5, (a0)+
db 0x88, 0x9B ; 003E56: provisional 68k or.l (a3)+, d4
db 0x98, 0xFF ; file 003E58
db 0xFF, 0x04 ; 003E5A: provisional 68k dc.w $ff04
db 0x0A, 0x1E, 0xED, 0x18 ; 003E5C: provisional 68k eori.b #$18, (a6)+
db 0x9B, 0xE1 ; 003E60: provisional 68k suba.l -(a1), a5
db 0x18, 0xE9, 0xE8, 0x88 ; 003E62: provisional 68k move.b -$1778(a1), (a4)+
db 0xEB, 0x98 ; 003E66: provisional 68k rol.l #$5, d0
db 0xFF, 0xFF ; 003E68: provisional 68k dc.w $ffff
db 0x04, 0x0A ; file 003E6A
db 0xD9, 0xCF ; 003E6C: provisional 68k adda.l a7, a4
db 0x18, 0xEB, 0xE1, 0xFC ; 003E6E: provisional 68k move.b -$1e04(a3), (a4)+
db 0x99, 0x9D ; 003E72: provisional 68k sub.l d4, (a5)+
db 0xD8, 0xAB, 0x98, 0xFF ; 003E74: provisional 68k add.l -$6701(a3), d4
db 0xFF, 0x04 ; 003E78: provisional 68k dc.w $ff04
db 0x0A, 0x99, 0xDF, 0x1D, 0x9B, 0x9D ; 003E7A: provisional 68k eori.l #$df1d9b9d, (a1)+
db 0xFA, 0x9B ; 003E80: provisional 68k dc.w $fa9b
db 0x9A, 0xA8, 0xCB, 0xB8 ; 003E82: provisional 68k sub.l -$3448(a0), d5
db 0xFF, 0xFF ; 003E86: provisional 68k dc.w $ffff
db 0x03, 0x01 ; 003E88: provisional 68k btst.l d1, d1
db 0x1A, 0xB9, 0x01, 0x08, 0x1D, 0x9B ; 003E8A: provisional 68k move.b $1081d9b.l, (a5)
db 0xBC, 0xFD ; file 003E90
db 0x9B, 0x9E ; 003E92: provisional 68k sub.l d5, (a6)+
db 0xAC, 0xAB ; 003E94: provisional 68k dc.w $acab
db 0xBD, 0x01 ; 003E96: provisional 68k eor.b d6, d1
db 0x01, 0xDD ; 003E98: provisional 68k bset.b d0, (a5)+
db 0xD1, 0xFF ; file 003E9A
db 0xFF, 0x03 ; 003E9C: provisional 68k dc.w $ff03
db 0x01, 0x1E ; 003E9E: provisional 68k btst.l d0, (a6)+
db 0xBE, 0x01 ; 003EA0: provisional 68k cmp.b d1, d7
db 0x0B, 0x1D ; 003EA2: provisional 68k btst.l d5, (a5)+
db 0x9B, 0x9E ; 003EA4: provisional 68k sub.l d5, (a6)+
db 0x1D, 0x9B, 0xBE, 0xA9 ; 003EA6: provisional 68k move.b (a3)+, -$57(a6, a3.l)
db 0x9B, 0xBA ; file 003EAA
db 0x8D, 0x9B ; 003EAC: provisional 68k or.l d6, (a3)+
db 0x9D, 0xFF ; file 003EAE
db 0xFF, 0x03 ; 003EB0: provisional 68k dc.w $ff03
db 0x01, 0x1E ; 003EB2: provisional 68k btst.l d0, (a6)+
db 0x9E, 0x01 ; 003EB4: provisional 68k sub.b d1, d7
db 0x0B, 0x1D ; 003EB6: provisional 68k btst.l d5, (a5)+
db 0xE9, 0xB9 ; 003EB8: provisional 68k rol.l d4, d1
db 0xDD, 0xE9, 0x9A, 0xA9 ; 003EBA: provisional 68k adda.l -$6557(a1), a6
db 0xEE, 0xEC ; file 003EBE
db 0xDA, 0xEB, 0x9D, 0xFF ; 003EC0: provisional 68k adda.w -$6201(a3), a5
db 0xFF, 0x03 ; 003EC4: provisional 68k dc.w $ff03
db 0x0E, 0x1C, 0xEA, 0xD1 ; file 003EC6
db 0x18, 0xE9, 0xBB, 0xD8 ; 003ECA: provisional 68k move.b -$4428(a1), (a4)+
db 0xA9, 0xEC ; 003ECE: provisional 68k dc.w $a9ec
db 0xCE, 0xE9, 0x9E, 0xA8 ; 003ED0: provisional 68k mulu.w -$6158(a1), d7
db 0xCB, 0xEF, 0xFF, 0xFF ; 003ED4: provisional 68k muls.w -$1(a7), d5
db 0x04, 0x01, 0xEE, 0xD1 ; 003ED8: provisional 68k subi.b #$d1, d1
db 0x01, 0x0A, 0xC9, 0x99 ; 003EDC: provisional 68k movep.w -$3667(a2), d0
db 0xDF, 0xA9, 0x9C, 0xCA ; 003EE0: provisional 68k add.l d7, -$6336(a1)
db 0xE9, 0x9E ; 003EE4: provisional 68k rol.l #$4, d6
db 0x99, 0xEB, 0xAF, 0xFF ; 003EE6: provisional 68k suba.l -$5001(a3), a4
db 0xFF, 0x04 ; 003EEA: provisional 68k dc.w $ff04
db 0x01, 0xE9, 0xD1, 0x01 ; 003EEC: provisional 68k bset.b d0, -$2eff(a1)
db 0x0A, 0xCE ; file 003EF0
db 0x99, 0xD1 ; 003EF2: provisional 68k suba.l (a1), a4
db 0xE9, 0x9C ; 003EF4: provisional 68k rol.l #$4, d4
db 0xDE, 0x99 ; 003EF6: provisional 68k add.l (a1)+, d7
db 0xEA, 0x99 ; 003EF8: provisional 68k ror.l #$5, d1
db 0x9B, 0xAF, 0xFF, 0xFF ; 003EFA: provisional 68k sub.l d5, -$1(a7)
db 0x04, 0x01, 0xEB, 0xD1 ; 003EFE: provisional 68k subi.b #$d1, d1
db 0x01, 0x0A, 0x8E, 0x99 ; 003F02: provisional 68k movep.w -$7167(a2), d0
db 0xD8, 0xEB, 0xBA, 0xDE ; 003F06: provisional 68k adda.w -$4522(a3), a4
db 0xBB, 0x9C ; 003F0A: provisional 68k eor.l d5, (a4)+
db 0xCE, 0x9B ; 003F0C: provisional 68k and.l (a3)+, d7
db 0xEF, 0xFF ; file 003F0E
db 0xFF, 0x04 ; 003F10: provisional 68k dc.w $ff04
db 0x01, 0xAB, 0xAF, 0x01 ; 003F12: provisional 68k bclr.b d0, -$50ff(a3)
db 0x0A, 0x1A, 0x9B, 0xDF ; 003F16: provisional 68k eori.b #$df, (a2)+
db 0xEB, 0xBA ; 003F1A: provisional 68k rol.l d5, d2
db 0xC9, 0xBB ; file 003F1C
db 0x9C, 0xC9 ; 003F1E: provisional 68k suba.w a1, a6
db 0x9B, 0x98 ; 003F20: provisional 68k sub.l d5, (a0)+
db 0xFF, 0xFF ; 003F22: provisional 68k dc.w $ffff
db 0x04, 0x01, 0xEB, 0x9D ; 003F24: provisional 68k subi.b #$9d, d1
db 0x01, 0x0A, 0x1E, 0xBB ; 003F28: provisional 68k movep.w $1ebb(a2), d0
db 0xA8, 0xEB ; 003F2C: provisional 68k dc.w $a8eb
db 0xBE, 0xA9, 0xBB, 0xEA ; 003F2E: provisional 68k cmp.l -$4416(a1), d7
db 0xE9, 0xEE, 0xED, 0xFF ; file 003F32
db 0xFF, 0x04 ; 003F36: provisional 68k dc.w $ff04
db 0x0D, 0x9B ; 003F38: provisional 68k bclr.b d6, (a3)+
db 0xBE, 0x81 ; 003F3A: provisional 68k cmp.l d1, d7
db 0x1E, 0xBB, 0xE8, 0xEB ; 003F3C: provisional 68k move.b $3f29(pc, a6.l), (a7)
db 0xBE, 0xA9, 0xB9, 0xCA ; 003F40: provisional 68k cmp.l -$4636(a1), d7
db 0x9B, 0xE9, 0xAF, 0xFF ; 003F44: provisional 68k suba.l -$5001(a1), a5
db 0xFF, 0x04 ; 003F48: provisional 68k dc.w $ff04
db 0x0D, 0xA9, 0xBB, 0xEF ; 003F4A: provisional 68k bclr.b d6, -$4411(a1)
db 0x1E, 0xBB, 0xE8, 0xEB ; 003F4E: provisional 68k move.b $3f3b(pc, a6.l), (a7)
db 0xB9, 0xEB, 0xB9, 0xDE ; 003F52: provisional 68k cmpa.l -$4622(a3), a4
db 0xBB, 0xE9, 0xD1, 0xFF ; 003F56: provisional 68k cmpa.l -$2e01(a1), a5
db 0xFF, 0x04 ; 003F5A: provisional 68k dc.w $ff04
db 0x0D, 0xE9, 0xBB, 0x98 ; 003F5C: provisional 68k bset.b d6, -$4468(a1)
db 0xFC, 0xBB ; 003F60: provisional 68k dc.w $fcbb
db 0x98, 0xAB, 0xB9, 0xEB ; 003F62: provisional 68k sub.l -$4615(a3), d4
db 0xB9, 0x8E ; 003F66: provisional 68k cmpm.l (a6)+, (a4)+
db 0xBB, 0xE9, 0xA1, 0xFF ; 003F68: provisional 68k cmpa.l -$5e01(a1), a5
db 0xFF, 0x04 ; 003F6C: provisional 68k dc.w $ff04
db 0x0D, 0xCC, 0x9B, 0x9C ; 003F6E: provisional 68k movep.l d6, -$6464(a4)
db 0x8C, 0x9B ; 003F72: provisional 68k or.l (a3)+, d6
db 0xBC, 0xAB, 0xBB, 0x9B ; 003F74: provisional 68k cmp.l -$4465(a3), d6
db 0xB9, 0xA9, 0xBB, 0xCE ; 003F78: provisional 68k eor.l d4, -$4432(a1)
db 0xD1, 0xFF ; file 003F7C
db 0xFF, 0x04 ; 003F7E: provisional 68k dc.w $ff04
db 0x0C, 0xF8 ; file 003F80
db 0xCE, 0xB9, 0xCC, 0x9B, 0xBA, 0xEB ; 003F82: provisional 68k and.l $cc9bbaeb.l, d7
db 0xBB, 0x9B ; 003F88: provisional 68k eor.l d5, (a3)+
db 0xB9, 0xEB, 0xBB, 0x88 ; 003F8A: provisional 68k cmpa.l -$4478(a3), a4
db 0xFF, 0xFF ; 003F8E: provisional 68k dc.w $ffff
db 0x04, 0x0C ; file 003F90
db 0xFF, 0x8C ; 003F92: provisional 68k dc.w $ff8c
db 0x9B, 0x9E ; 003F94: provisional 68k sub.l d5, (a6)+
db 0x9B, 0xBE ; file 003F96
db 0xEB, 0xB9 ; 003F98: provisional 68k rol.l d5, d1
db 0x9B, 0xB9, 0xEB, 0xBB, 0x8F, 0xFF ; 003F9A: provisional 68k sub.l d5, $ebbb8fff.l
db 0xFF, 0x05 ; 003FA0: provisional 68k dc.w $ff05
db 0x0B, 0x88, 0xEB, 0xBB ; 003FA2: provisional 68k movep.w d5, -$1445(a0)
db 0x9B, 0xBE ; file 003FA6
db 0xE9, 0x9E ; 003FA8: provisional 68k rol.l #$4, d6
db 0x99, 0x9E ; 003FAA: provisional 68k sub.l d4, (a6)+
db 0xEB, 0xB9 ; 003FAC: provisional 68k rol.l d5, d1
db 0x8F, 0xFF ; file 003FAE
db 0xFF, 0x05 ; 003FB0: provisional 68k dc.w $ff05
db 0x0B, 0x18 ; 003FB2: provisional 68k btst.l d5, (a0)+
db 0xCE, 0xBB, 0xB9, 0x9A, 0xCE, 0xAA ; 003FB4: provisional 68k and.l ([$3fb6, a3.l], $ceaa), d7
db 0xEE, 0xC8 ; file 003FBA
db 0xCE, 0xE8, 0x81, 0xFF ; 003FBC: provisional 68k mulu.w -$7e01(a0), d7
db 0xFF, 0x06 ; 003FC0: provisional 68k dc.w $ff06
db 0x09, 0x8C, 0x9B, 0xB9 ; 003FC2: provisional 68k movep.w d4, -$6447(a4)
db 0xA8, 0x8D ; 003FC6: provisional 68k dc.w $a88d
db 0xA9, 0x9C ; 003FC8: provisional 68k dc.w $a99c
db 0x8C, 0x88, 0x88, 0xFF ; file 003FCA
db 0xFF, 0x06 ; 003FCE: provisional 68k dc.w $ff06
db 0x09, 0x8C, 0xE9, 0x9B ; 003FD0: provisional 68k movep.w d4, -$1665(a4)
db 0xEE, 0x9B ; 003FD4: provisional 68k ror.l #$7, d3
db 0xBB, 0xBB ; file 003FD6
db 0xBB, 0xB9, 0xDD, 0xFF, 0xFF, 0x06 ; 003FD8: provisional 68k eor.l d5, $ddffff06.l
db 0x09, 0x18 ; 003FDE: provisional 68k btst.l d4, (a0)+
db 0xCC, 0x89, 0xED, 0xEB, 0xBB, 0xBB ; file 003FE0
db 0xBB, 0xB9, 0x8D, 0xFF, 0xFF, 0x07 ; 003FE6: provisional 68k eor.l d5, $8dffff07.l
db 0x09, 0xF8, 0x89, 0x9E ; 003FEC: provisional 68k bset.b d4, $899e.w
db 0xE9, 0xBB ; 003FF0: provisional 68k rol.l d4, d3
db 0xBB, 0xBB ; file 003FF2
db 0x9E, 0xD9 ; 003FF4: provisional 68k suba.w (a1)+, a7
db 0xA1, 0xFF ; 003FF6: provisional 68k dc.w $a1ff
db 0xFF, 0x08 ; 003FF8: provisional 68k dc.w $ff08
db 0x08, 0x1E, 0xEA, 0xCE ; file 003FFA
db 0xB9, 0x9B ; 003FFE: provisional 68k eor.l d4, (a3)+
db 0xBB, 0xEC, 0xCB, 0xA1 ; 004000: provisional 68k cmpa.l -$345f(a4), a5
db 0xFF, 0xFF ; 004004: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 004006: provisional 68k btst.l d4, d7
db 0xC8, 0x8C ; file 004008
db 0x99, 0xE9, 0x99, 0xA8 ; 00400A: provisional 68k suba.l -$6658(a1), a4
db 0x8C, 0x81 ; 00400E: provisional 68k or.l d1, d6
db 0xFF, 0xFF ; 004010: provisional 68k dc.w $ffff
db 0x09, 0x06 ; 004012: provisional 68k btst.l d4, d6
db 0x18, 0x88 ; file 004014
db 0xAE, 0xCA ; 004016: provisional 68k dc.w $aeca
db 0xEA, 0x88 ; 004018: provisional 68k lsr.l #$5, d0
db 0x88, 0xFF ; file 00401A
db 0xFF, 0x0A ; 00401C: provisional 68k dc.w $ff0a
db 0x05, 0x88, 0xCC, 0x88 ; 00401E: provisional 68k movep.w d2, -$3378(a0)
db 0xCC, 0x88, 0x81, 0xFF ; file 004022
db 0xFF, 0x0B ; 004026: provisional 68k dc.w $ff0b
db 0x03, 0x88, 0x88, 0x88 ; 004028: provisional 68k movep.w d1, -$7778(a0)
db 0xFF, 0xFF ; 00402C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00402E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004030: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 004032: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 004034: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 004038: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 00403E
db 0x10, 0x10 ; 004042: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 004044: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 004046: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 004048: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00404A: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00404E: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 004052: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 004054: provisional 68k neg.w d4
db 0x34, 0x3C, 0x58, 0xA4 ; 004056: provisional 68k move.w #$58a4, d2
db 0xA8, 0xA8 ; 00405A: provisional 68k dc.w $a8a8
db 0x78, 0x80 ; 00405C: provisional 68k moveq #$80, d4
db 0x8C, 0xDC ; 00405E: provisional 68k divu.w (a4)+, d6
db 0xE0, 0xE0 ; 004060: provisional 68k asr.w -(a0)
db 0x64, 0x68 ; 004062: provisional 68k bcc.b $40cc
db 0x80, 0x0C, 0x14, 0x4C, 0x08, 0x08 ; file 004064
db 0x6C, 0x40 ; 00406A: provisional 68k bge.b $40ac
db 0x44, 0x74, 0x0A, 0x00 ; 00406C: provisional 68k neg.w (a4, d0.l * 2)
db 0x88, 0xFF ; file 004070
db 0xFF, 0x09 ; 004072: provisional 68k dc.w $ff09
db 0x01, 0x1F ; 004074: provisional 68k btst.l d0, (a7)+
db 0x9A, 0xFF ; file 004076
db 0xFF, 0x09 ; 004078: provisional 68k dc.w $ff09
db 0x01, 0x1F ; 00407A: provisional 68k btst.l d0, (a7)+
db 0x9A, 0xFF ; file 00407C
db 0xFF, 0x09 ; 00407E: provisional 68k dc.w $ff09
db 0x01, 0x1A ; 004080: provisional 68k btst.l d0, (a2)+
db 0x98, 0xFF ; file 004082
db 0xFF, 0x09 ; 004084: provisional 68k dc.w $ff09
db 0x01, 0x19 ; 004086: provisional 68k btst.l d0, (a1)+
db 0x98, 0xFF ; file 004088
db 0xFF, 0x09 ; 00408A: provisional 68k dc.w $ff09
db 0x01, 0x89, 0x98, 0xFF ; 00408C: provisional 68k movep.w d0, -$6701(a1)
db 0xFF, 0x09 ; 004090: provisional 68k dc.w $ff09
db 0x01, 0x19 ; 004092: provisional 68k btst.l d0, (a1)+
db 0x98, 0xFF ; file 004094
db 0xFF, 0x09 ; 004096: provisional 68k dc.w $ff09
db 0x01, 0x89, 0x9D, 0xFF ; 004098: provisional 68k movep.w d0, -$6201(a1)
db 0xFF, 0x09 ; 00409C: provisional 68k dc.w $ff09
db 0x01, 0xFB ; file 00409E
db 0xAE, 0xFF ; 0040A0: provisional 68k dc.w $aeff
db 0xFF, 0x09 ; 0040A2: provisional 68k dc.w $ff09
db 0x01, 0xCB, 0xAE, 0xFF ; 0040A4: provisional 68k movep.l d0, -$5101(a3)
db 0xFF, 0x08 ; 0040A8: provisional 68k dc.w $ff08
db 0x04, 0x18, 0x9B, 0xCE ; 0040AA: provisional 68k subi.b #$ce, (a0)+
db 0xF9, 0x9A ; 0040AE: provisional 68k dc.w $f99a
db 0xFF, 0xFF ; 0040B0: provisional 68k dc.w $ffff
db 0x08, 0x04 ; file 0040B2
db 0x1F, 0xBB, 0xAD, 0xCB, 0xB9, 0xFF, 0xFF, 0x08, 0x05, 0x1F, 0x9B, 0xA8, 0xF9, 0xBA ; 0040B4: provisional 68k move.b ([$40b6], $b9ffff08), ([a7], d0.w * 4, $9ba8f9ba)
db 0x81, 0xFF ; file 0040C2
db 0xFF, 0x08 ; 0040C4: provisional 68k dc.w $ff08
db 0x05, 0x18 ; 0040C6: provisional 68k btst.l d2, (a0)+
db 0x99, 0xFD, 0x89, 0xBC, 0x81, 0xFF ; file 0040C8
db 0xFF, 0x08 ; 0040CE: provisional 68k dc.w $ff08
db 0x07, 0x1F ; 0040D0: provisional 68k btst.l d3, (a7)+
db 0xBA, 0xFE ; file 0040D2
db 0xF9, 0xBF ; 0040D4: provisional 68k dc.w $f9bf
db 0x81, 0x88 ; 0040D6: provisional 68k dc.w $8188
db 0x81, 0xFF ; file 0040D8
db 0xFF, 0x06 ; 0040DA: provisional 68k dc.w $ff06
db 0x09, 0xCA, 0x81, 0x1A ; 0040DC: provisional 68k movep.l d4, -$7ee6(a2)
db 0xBA, 0xFE, 0x89, 0xBF ; file 0040E0
db 0xE1, 0xAB ; 0040E4: provisional 68k lsl.l d0, d3
db 0xB9, 0xFF ; file 0040E6
db 0xFF, 0x05 ; 0040E8: provisional 68k dc.w $ff05
db 0x07, 0x18 ; 0040EA: provisional 68k btst.l d3, (a0)+
db 0x99, 0xDD ; 0040EC: provisional 68k suba.l (a5)+, a4
db 0x1A, 0xBA, 0xEE, 0xF9 ; 0040EE: provisional 68k move.b $2fe9(pc), (a5)
db 0x9A, 0x01 ; 0040F2: provisional 68k sub.b d1, d5
db 0x01, 0xAB, 0xB9, 0xFF ; 0040F4: provisional 68k bclr.b d0, -$4601(a3)
db 0xFF, 0x05 ; 0040F8: provisional 68k dc.w $ff05
db 0x01, 0x1A ; 0040FA: provisional 68k btst.l d0, (a2)+
db 0x9F, 0x01 ; 0040FC: provisional 68k subx.b d1, d7
db 0x04, 0x19, 0xBA, 0xEE ; 0040FE: provisional 68k subi.b #$ee, (a1)+
db 0x89, 0xBC ; file 004102
db 0x01, 0x01 ; 004104: provisional 68k btst.l d0, d1
db 0x89, 0xBA ; file 004106
db 0xFF, 0xFF ; 004108: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 00410A: provisional 68k btst.l d2, d1
db 0xF9, 0xAD ; 00410C: provisional 68k dc.w $f9ad
db 0x01, 0x07 ; 00410E: provisional 68k btst.l d0, d7
db 0x19, 0xBC, 0xE8, 0xC9, 0xBF, 0xED, 0x89, 0xBC ; 004110: provisional 68k move.b #$c9, ([$89bc])
db 0xFF, 0xFF ; 004118: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 00411A: provisional 68k btst.l d2, d1
db 0x99, 0xFE ; file 00411C
db 0x01, 0x07 ; 00411E: provisional 68k btst.l d0, d7
db 0xCB, 0xBF ; file 004120
db 0xEC, 0xAA ; 004122: provisional 68k lsr.l d6, d2
db 0x9F, 0x88 ; 004124: provisional 68k subx.l -(a0), -(a7)
db 0x89, 0xBC ; file 004126
db 0xFF, 0xFF ; 004128: provisional 68k dc.w $ffff
db 0x04, 0x02, 0x1C, 0xB9 ; 00412A: provisional 68k subi.b #$b9, d2
db 0x81, 0x01 ; 00412E: provisional 68k sbcd.b d1, d0
db 0x07, 0x9B ; 004130: provisional 68k bclr.b d3, (a3)+
db 0xBC, 0xDC ; 004132: provisional 68k cmpa.w (a4)+, a6
db 0x99, 0x9C ; 004134: provisional 68k sub.l d4, (a4)+
db 0xC8, 0xDA ; 004136: provisional 68k mulu.w (a2)+, d4
db 0xBC, 0xFF ; file 004138
db 0xFF, 0x04 ; 00413A: provisional 68k dc.w $ff04
db 0x02, 0x1C, 0x9A, 0x81 ; 00413C: provisional 68k andi.b #$81, (a4)+
db 0x01, 0x07 ; 004140: provisional 68k btst.l d0, d7
db 0xA9, 0xBA ; 004142: provisional 68k dc.w $a9ba
db 0x8F, 0x9B ; 004144: provisional 68k or.l d7, (a3)+
db 0x9A, 0xAC, 0xC9, 0xBA ; 004146: provisional 68k sub.l -$3646(a4), d5
db 0x01, 0x01 ; 00414A: provisional 68k btst.l d0, d1
db 0x88, 0x81 ; 00414C: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 00414E: provisional 68k dc.w $ffff
db 0x04, 0x02, 0x18, 0xCF ; 004150: provisional 68k subi.b #$cf, d2
db 0x81, 0x01 ; 004154: provisional 68k sbcd.b d1, d0
db 0x07, 0xAA, 0x9A, 0x88 ; 004156: provisional 68k bclr.b d3, -$6578(a2)
db 0xA9, 0x9A ; 00415A: provisional 68k dc.w $a99a
db 0xA9, 0xBB ; 00415C: provisional 68k dc.w $a9bb
db 0xBA, 0x01 ; 00415E: provisional 68k cmp.b d1, d5
db 0x01, 0xA9, 0xC1, 0xFF ; 004160: provisional 68k bclr.b d0, -$3e01(a1)
db 0xFF, 0x04 ; 004164: provisional 68k dc.w $ff04
db 0x02, 0x18, 0x9C, 0x81 ; 004166: provisional 68k andi.b #$81, (a0)+
db 0x01, 0x0A, 0x9B, 0xB9 ; 00416A: provisional 68k movep.w -$6447(a2), d0
db 0x88, 0xAA, 0x9F, 0xC9 ; 00416E: provisional 68k or.l -$6037(a2), d4
db 0xAC, 0x9C ; 004172: provisional 68k dc.w $ac9c
db 0xDD, 0x9B ; 004174: provisional 68k add.l d6, (a3)+
db 0xBF, 0xFF ; file 004176
db 0xFF, 0x04 ; 004178: provisional 68k dc.w $ff04
db 0x02, 0x18, 0x9A, 0x81 ; 00417A: provisional 68k andi.b #$81, (a0)+
db 0x01, 0x0A, 0xC9, 0x9A ; 00417E: provisional 68k movep.w -$3666(a2), d0
db 0x88, 0xA9, 0x9F, 0xFA ; 004182: provisional 68k or.l -$6006(a1), d4
db 0xA9, 0x9C ; 004186: provisional 68k dc.w $a99c
db 0xA8, 0xCB ; 004188: provisional 68k dc.w $a8cb
db 0x9D, 0xFF ; file 00418A
db 0xFF, 0x04 ; 00418C: provisional 68k dc.w $ff04
db 0x02, 0x18, 0x99, 0x81 ; 00418E: provisional 68k andi.b #$81, (a0)+
db 0x01, 0x0A, 0xFA, 0x9A ; 004192: provisional 68k movep.w -$566(a2), d0
db 0x88, 0xA9, 0xAF, 0x8A ; 004196: provisional 68k or.l -$5076(a1), d4
db 0x99, 0x9A ; 00419A: provisional 68k sub.l d4, (a2)+
db 0xBA, 0xAB, 0x9E, 0xFF ; 00419C: provisional 68k cmp.l -$6101(a3), d5
db 0xFF, 0x04 ; 0041A0: provisional 68k dc.w $ff04
db 0x02, 0x18, 0x99, 0x81 ; 0041A2: provisional 68k andi.b #$81, (a0)+
db 0x01, 0x0A, 0x8A, 0x9C ; 0041A6: provisional 68k movep.w -$7564(a2), d0
db 0xD8, 0x9B ; 0041AA: provisional 68k add.l (a3)+, d4
db 0xAF, 0x89 ; 0041AC: provisional 68k dc.w $af89
db 0x99, 0x9A ; 0041AE: provisional 68k sub.l d4, (a2)+
db 0x99, 0x9B ; 0041B0: provisional 68k sub.l d4, (a3)+
db 0xA1, 0xFF ; 0041B2: provisional 68k dc.w $a1ff
db 0xFF, 0x04 ; 0041B4: provisional 68k dc.w $ff04
db 0x02, 0x18, 0xB9, 0xFE ; 0041B6: provisional 68k andi.b #$fe, (a0)+
db 0x01, 0x0A, 0xF9, 0xBA ; 0041BA: provisional 68k movep.w -$646(a2), d0
db 0xDF, 0x9B ; 0041BE: provisional 68k add.l d7, (a3)+
db 0x98, 0xC9 ; 0041C0: provisional 68k suba.w a1, a4
db 0x99, 0x9F ; 0041C2: provisional 68k sub.l d4, (a7)+
db 0xA9, 0xBB ; 0041C4: provisional 68k dc.w $a9bb
db 0xA1, 0xFF ; 0041C6: provisional 68k dc.w $a1ff
db 0xFF, 0x04 ; 0041C8: provisional 68k dc.w $ff04
db 0x0E, 0x1F ; file 0041CA
db 0xBB, 0xA8, 0xE1, 0xF9 ; 0041CC: provisional 68k eor.l d5, -$1e07(a0)
db 0xBA, 0xDF ; 0041D0: provisional 68k cmpa.w (a7)+, a5
db 0xBB, 0x9F ; 0041D2: provisional 68k eor.l d5, (a7)+
db 0xAB, 0xB9 ; 0041D4: provisional 68k dc.w $abb9
db 0x98, 0xA9, 0x9B, 0xA1 ; 0041D6: provisional 68k sub.l -$645f(a1), d4
db 0xFF, 0xFF ; 0041DA: provisional 68k dc.w $ffff
db 0x04, 0x0E ; file 0041DC
db 0x1C, 0x9B ; 0041DE: provisional 68k move.b (a3)+, (a6)
db 0xBC, 0xDD ; 0041E0: provisional 68k cmpa.w (a5)+, a6
db 0xF9, 0xB9 ; 0041E2: provisional 68k dc.w $f9b9
db 0x8F, 0xBB ; file 0041E4
db 0x9F, 0x9B ; 0041E6: provisional 68k sub.l d7, (a3)+
db 0xB9, 0x9C ; 0041E8: provisional 68k eor.l d4, (a4)+
db 0x9A, 0x99 ; 0041EA: provisional 68k sub.l (a1)+, d5
db 0xC1, 0xFF ; file 0041EC
db 0xFF, 0x04 ; 0041EE: provisional 68k dc.w $ff04
db 0x0E, 0x1C ; file 0041F0
db 0x9B, 0xB9, 0xDD, 0x89, 0xB9, 0x8F ; 0041F2: provisional 68k sub.l d5, $dd89b98f.l
db 0xBB, 0x9C ; 0041F8: provisional 68k eor.l d5, (a4)+
db 0x9B, 0xBC ; file 0041FA
db 0xFA, 0xBA ; 0041FC: provisional 68k dc.w $faba
db 0x9A, 0xF1, 0xFF, 0xFF, 0x04, 0x0E, 0x18, 0xC9 ; 0041FE: provisional 68k suba.w ([$40e18c9]), a5
db 0xB9, 0xDD ; 004206: provisional 68k cmpa.l (a5)+, a4
db 0x89, 0xBB ; file 004208
db 0xFC, 0xBB ; 00420A: provisional 68k dc.w $fcbb
db 0x9A, 0x9B ; 00420C: provisional 68k sub.l (a3)+, d5
db 0x98, 0xC9 ; 00420E: provisional 68k suba.w a1, a4
db 0xBA, 0xAA, 0x81, 0xFF ; 004210: provisional 68k cmp.l -$7e01(a2), d5
db 0xFF, 0x05 ; 004214: provisional 68k dc.w $ff05
db 0x0D, 0x8C, 0x99, 0xAD ; 004216: provisional 68k movep.w d6, -$6653(a4)
db 0xD9, 0xBB ; file 00421A
db 0xF8, 0xBB ; 00421C: provisional 68k dc.w $f8bb
db 0xB9, 0xBB ; file 00421E
db 0x98, 0xAB, 0xBC, 0x9A ; 004220: provisional 68k sub.l -$4366(a3), d4
db 0xE1, 0xFF ; file 004224
db 0xFF, 0x05 ; 004226: provisional 68k dc.w $ff05
db 0x0C, 0x88 ; file 004228
db 0xCB, 0xB8, 0xD9, 0xBB ; 00422A: provisional 68k and.l d5, $d9bb.w
db 0xAA, 0xBB ; 00422E: provisional 68k dc.w $aabb
db 0xBB, 0xBB ; file 004230
db 0x98, 0x9B ; 004232: provisional 68k sub.l (a3)+, d4
db 0xBF, 0x9A ; 004234: provisional 68k eor.l d7, (a2)+
db 0xFF, 0xFF ; 004236: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0x18, 0x89 ; 004238: provisional 68k movep.w $1889(a4), d2
db 0xB9, 0xC9 ; 00423C: provisional 68k cmpa.l a1, a4
db 0xBB, 0x9C ; 00423E: provisional 68k eor.l d5, (a4)+
db 0xBB, 0xBB ; file 004240
db 0xBB, 0x9C ; 004242: provisional 68k eor.l d5, (a4)+
db 0xBB, 0xBF ; file 004244
db 0xFF, 0xFF ; 004246: provisional 68k dc.w $ffff
db 0xFF, 0x06 ; 004248: provisional 68k dc.w $ff06
db 0x0B, 0x8C, 0xBB, 0xB9 ; 00424A: provisional 68k movep.w d5, -$4447(a4)
db 0xBB, 0x9C ; 00424E: provisional 68k eor.l d5, (a4)+
db 0xBB, 0x99 ; 004250: provisional 68k eor.l d5, (a1)+
db 0xBB, 0x99 ; 004252: provisional 68k eor.l d5, (a1)+
db 0xBB, 0xB8, 0xDD, 0xFF ; 004254: provisional 68k eor.l d5, $ddff.w
db 0xFF, 0x06 ; 004258: provisional 68k dc.w $ff06
db 0x0A, 0xD8 ; file 00425A
db 0xAB, 0xBB ; 00425C: provisional 68k dc.w $abbb
db 0xBB, 0xAC, 0xAA, 0xA9 ; 00425E: provisional 68k eor.l d5, -$5557(a4)
db 0x99, 0x99 ; 004262: provisional 68k sub.l d4, (a1)+
db 0xBB, 0xA8, 0xFF, 0xFF ; 004264: provisional 68k eor.l d5, -$1(a0)
db 0x06, 0x0A, 0x18, 0xC9 ; file 004268
db 0xBB, 0x9C ; 00426C: provisional 68k eor.l d5, (a4)+
db 0xCC, 0xCC, 0xCA, 0xC8 ; file 00426E
db 0x8A, 0x99 ; 004272: provisional 68k or.l (a1)+, d5
db 0x8E, 0xFF ; file 004274
db 0xFF, 0x07 ; 004276: provisional 68k dc.w $ff07
db 0x09, 0x8A, 0x99, 0x9C ; 004278: provisional 68k movep.w d4, -$6664(a2)
db 0xC9, 0xBB ; file 00427C
db 0xB9, 0xC8 ; 00427E: provisional 68k cmpa.l a0, a4
db 0x88, 0xDD ; 004280: provisional 68k divu.w (a5)+, d4
db 0xDD, 0xFF ; file 004282
db 0xFF, 0x07 ; 004284: provisional 68k dc.w $ff07
db 0x08, 0x88 ; file 004286
db 0x8F, 0x9F ; 004288: provisional 68k or.l d7, (a7)+
db 0xFA, 0xBB ; 00428A: provisional 68k dc.w $fabb
db 0xBB, 0xBB ; file 00428C
db 0xBB, 0x9A ; 00428E: provisional 68k eor.l d5, (a2)+
db 0xFF, 0xFF ; 004290: provisional 68k dc.w $ffff
db 0x07, 0x08, 0x1E, 0xD9 ; 004292: provisional 68k movep.w $1ed9(a0), d3
db 0x9A, 0xC9 ; 004296: provisional 68k suba.w a1, a5
db 0xBB, 0xBB, 0xBB, 0xBB, 0x9A, 0xFF ; file 004298
db 0xFF, 0x08 ; 00429E: provisional 68k dc.w $ff08
db 0x08, 0x1C ; file 0042A0
db 0xAA, 0xCA ; 0042A2: provisional 68k dc.w $aaca
db 0xBB, 0xBB ; file 0042A4
db 0xBB, 0xB9, 0x9A, 0xC1, 0xFF, 0xFF ; 0042A6: provisional 68k eor.l d5, $9ac1ffff.l
db 0x09, 0x07 ; 0042AC: provisional 68k btst.l d4, d7
db 0xF8, 0x8F ; 0042AE: provisional 68k dc.w $f88f
db 0x99, 0x99 ; 0042B0: provisional 68k sub.l d4, (a1)+
db 0xBB, 0x9C ; 0042B2: provisional 68k eor.l d5, (a4)+
db 0xC9, 0xA1 ; 0042B4: provisional 68k and.l d4, -(a1)
db 0xFF, 0xFF ; 0042B6: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 0042B8: provisional 68k btst.l d4, d7
db 0xDD, 0xD8 ; 0042BA: provisional 68k adda.l (a0)+, a6
db 0xAA, 0xCA ; 0042BC: provisional 68k dc.w $aaca
db 0x99, 0xC8 ; 0042BE: provisional 68k suba.l a0, a4
db 0x8C, 0xC1 ; 0042C0: provisional 68k divu.w d1, d6
db 0xFF, 0xFF ; 0042C2: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0xD8, 0xCC ; 0042C4: provisional 68k eori.b #$cc, d5
db 0x8F, 0xCC ; file 0042C8
db 0x8D, 0xD8 ; 0042CA: provisional 68k divs.w (a0)+, d6
db 0xFF, 0xFF ; 0042CC: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0x18, 0x88 ; 0042CE: provisional 68k eori.b #$88, d4
db 0x88, 0x88, 0xDD, 0xFF ; file 0042D2
db 0xFF, 0x0B ; 0042D6: provisional 68k dc.w $ff0b
db 0x01, 0x18 ; 0042D8: provisional 68k btst.l d0, (a0)+
db 0x88, 0xFF ; file 0042DA
db 0xFF, 0xFF ; 0042DC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0042DE: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0042E0: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 0042E2: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 0042E6: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 0042EC
db 0x10, 0x10 ; 0042F0: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0042F2: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0042F4: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0042F6: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0042F8: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0042FC: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 004300: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 004302: provisional 68k neg.w d4
db 0x38, 0x3C, 0x58, 0xA4 ; 004304: provisional 68k move.w #$58a4, d4
db 0xA8, 0xAC ; 004308: provisional 68k dc.w $a8ac
db 0x80, 0x84 ; 00430A: provisional 68k or.l d4, d0
db 0x88, 0xE0 ; 00430C: provisional 68k divu.w -(a0), d4
db 0xE4, 0xE0 ; 00430E: provisional 68k roxr.w -(a0)
db 0x0C, 0x14, 0x44, 0x64 ; 004310: provisional 68k cmpi.b #$64, (a4)
db 0x68, 0x7C ; 004314: provisional 68k bvc.b $4392
db 0x0C, 0x0C ; file 004316
db 0x6C, 0x44 ; 004318: provisional 68k bge.b $435e
db 0x44, 0x7C ; file 00431A
db 0x0C, 0x01, 0x1F, 0xD1 ; 00431C: provisional 68k cmpi.b #$d1, d1
db 0xFF, 0xFF ; 004320: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xF9, 0xF1 ; 004322: provisional 68k cmpi.b #$f1, d1
db 0xFF, 0xFF ; 004326: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xD9, 0xD1 ; 004328: provisional 68k cmpi.b #$d1, d1
db 0xFF, 0xFF ; 00432C: provisional 68k dc.w $ffff
db 0x0B, 0x02 ; 00432E: provisional 68k btst.l d5, d2
db 0x18, 0x9D ; 004330: provisional 68k move.b (a5)+, (a4)
db 0xF1, 0xFF ; 004332: provisional 68k dc.w $f1ff
db 0xFF, 0x0B ; 004334: provisional 68k dc.w $ff0b
db 0x02, 0x1A, 0xBD, 0xF1 ; 004336: provisional 68k andi.b #$f1, (a2)+
db 0xFF, 0xFF ; 00433A: provisional 68k dc.w $ffff
db 0x0B, 0x02 ; 00433C: provisional 68k btst.l d5, d2
db 0x19, 0xBD, 0xE1, 0xFF ; file 00433E
db 0xFF, 0x0B ; 004342: provisional 68k dc.w $ff0b
db 0x01, 0x1A ; 004344: provisional 68k btst.l d0, (a2)+
db 0xAF, 0xFF ; 004346: provisional 68k dc.w $afff
db 0xFF, 0x0B ; 004348: provisional 68k dc.w $ff0b
db 0x01, 0xFB, 0xDF, 0xFF ; file 00434A
db 0xFF, 0x0B ; 00434E: provisional 68k dc.w $ff0b
db 0x01, 0xAB, 0x8F, 0xFF ; 004350: provisional 68k bclr.b d0, -$7001(a3)
db 0xFF, 0x0A ; 004354: provisional 68k dc.w $ff0a
db 0x02, 0x1F, 0x9B, 0xF8 ; 004356: provisional 68k andi.b #$f8, (a7)+
db 0xFF, 0xFF ; 00435A: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0x1A, 0xB9 ; 00435C: provisional 68k eori.b #$b9, d4
db 0x89, 0xB9, 0xF1, 0xFF, 0xFF, 0x0A ; 004360: provisional 68k or.l d4, $f1ffff0a.l
db 0x04, 0xFB ; file 004366
db 0xB9, 0x89 ; 004368: provisional 68k cmpm.l (a1)+, (a4)+
db 0xBB, 0xF1, 0xFF, 0xFF, 0x0A, 0x04, 0xF9, 0x9A ; 00436A: provisional 68k cmpa.l ([$a04f99a]), a5
db 0x8A, 0xB9, 0x81, 0xFF, 0xFF, 0x0A ; 004372: provisional 68k or.l $81ffff0a.l, d5
db 0x04, 0xF9 ; file 004378
db 0xA8, 0xCA ; 00437A: provisional 68k dc.w $a8ca
db 0xBA, 0xE1 ; 00437C: provisional 68k cmpa.w -(a1), a5
db 0xFF, 0xFF ; 00437E: provisional 68k dc.w $ffff
db 0x07, 0x00 ; 004380: provisional 68k btst.l d3, d0
db 0xDD, 0x02 ; 004382: provisional 68k addx.b d2, d6
db 0x06, 0x9B, 0xDC, 0x89, 0xBA, 0xE1 ; 004384: provisional 68k addi.l #$dc89bae1, (a3)+
db 0x1D, 0xD1 ; file 00438A
db 0xFF, 0xFF ; 00438C: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1F, 0x99 ; 00438E: provisional 68k addi.b #$99, d1
db 0x01, 0x07 ; 004392: provisional 68k btst.l d0, d7
db 0x1F, 0xBB, 0x8C, 0x89, 0xBA, 0xE1 ; 004394: provisional 68k move.b $431f(pc, a0.l), -$1f(a7, a3.l)
db 0xDB, 0x9A ; 00439A: provisional 68k add.l d5, (a2)+
db 0xFF, 0xFF ; 00439C: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1A, 0x98 ; 00439E: provisional 68k addi.b #$98, d1
db 0x01, 0x04 ; 0043A2: provisional 68k btst.l d0, d4
db 0x1D, 0xB9, 0xCC, 0x89, 0xBA, 0x01, 0x02, 0xDB ; 0043A4: provisional 68k move.b $cc89ba01.l, -$25(a6, d0.w)
db 0xB9, 0xF1, 0xFF, 0xFF, 0x06, 0x01, 0xF9, 0xAE ; 0043AC: provisional 68k cmpa.l ([$601f9ae]), a4
db 0x01, 0x07 ; 0043B4: provisional 68k btst.l d0, d7
db 0xE9, 0xBA ; 0043B6: provisional 68k rol.l d4, d2
db 0xC8, 0x89 ; file 0043B8
db 0x9D, 0xEE, 0x89, 0xBA ; 0043BA: provisional 68k suba.l -$7646(a6), a6
db 0xFF, 0xFF ; 0043BE: provisional 68k dc.w $ffff
db 0x05, 0x02 ; 0043C0: provisional 68k btst.l d2, d2
db 0x1F, 0xB9, 0x81, 0x01, 0x08, 0xFB, 0xBD, 0x8D ; 0043C2: provisional 68k move.b $810108fb.l, ([], a3.l * 4)
db 0x89, 0x9F ; 0043CA: provisional 68k or.l d4, (a7)+
db 0xEC, 0xC9 ; file 0043CC
db 0xBD, 0xE1 ; 0043CE: provisional 68k cmpa.l -(a1), a6
db 0xFF, 0xFF ; 0043D0: provisional 68k dc.w $ffff
db 0x05, 0x0B, 0x19, 0xB9 ; 0043D2: provisional 68k movep.w $19b9(a3), d2
db 0xE1, 0x1F ; 0043D6: provisional 68k rol.b #$8, d7
db 0x9B, 0xBF ; file 0043D8
db 0x8A, 0xA9, 0xA8, 0xF8 ; 0043DA: provisional 68k or.l -$5708(a1), d5
db 0xC9, 0xBF ; file 0043DE
db 0xFF, 0xFF ; 0043E0: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 0043E2: provisional 68k btst.l d2, d1
db 0x8A, 0x9D ; 0043E4: provisional 68k or.l (a5)+, d5
db 0x01, 0x08, 0x1F, 0x9B ; 0043E6: provisional 68k movep.w $1f9b(a0), d0
db 0x9F, 0x8D ; 0043EA: provisional 68k subx.l -(a5), -(a7)
db 0xBB, 0x9F ; 0043EC: provisional 68k eor.l d5, (a7)+
db 0xF8, 0xC9 ; 0043EE: provisional 68k dc.w $f8c9
db 0xBF, 0xFF ; file 0043F0
db 0xFF, 0x05 ; 0043F2: provisional 68k dc.w $ff05
db 0x01, 0xE8, 0xD8, 0x01 ; 0043F4: provisional 68k bset.b d0, -$27ff(a0)
db 0x08, 0x18 ; file 0043F8
db 0xA9, 0x9D ; 0043FA: provisional 68k dc.w $a99d
db 0xED, 0xBB ; 0043FC: provisional 68k rol.l d6, d3
db 0xBA, 0xAD, 0x8B, 0xBF ; 0043FE: provisional 68k cmp.l -$7441(a5), d5
db 0xFF, 0xFF ; 004402: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 004404: provisional 68k btst.l d2, d1
db 0xFD, 0xAF ; 004406: provisional 68k dc.w $fdaf
db 0x01, 0x08, 0x1D, 0xBB ; 004408: provisional 68k movep.w $1dbb(a0), d0
db 0xBA, 0x8A ; 00440C: provisional 68k cmp.l a2, d5
db 0x99, 0xAA, 0x99, 0x9B ; 00440E: provisional 68k sub.l d4, -$6665(a2)
db 0xBD, 0x01 ; 004412: provisional 68k eor.b d6, d1
db 0x00, 0xDD ; file 004414
db 0xFF, 0xFF ; 004416: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 004418: provisional 68k btst.l d2, d1
db 0xFA, 0x9F ; 00441A: provisional 68k dc.w $fa9f
db 0x01, 0x0B, 0x1F, 0x9B ; 00441C: provisional 68k movep.w $1f9b(a3), d0
db 0x9D, 0xED, 0x9A, 0xDD ; 004420: provisional 68k suba.l -$6523(a5), a6
db 0xA9, 0xAA ; 004424: provisional 68k dc.w $a9aa
db 0x9D, 0xCD ; 004426: provisional 68k suba.l a5, a6
db 0xBB, 0xA1 ; 004428: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 00442A: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 00442C: provisional 68k btst.l d2, d1
db 0xFA, 0x9F ; 00442E: provisional 68k dc.w $fa9f
db 0x01, 0x0B, 0x18, 0xA9 ; 004430: provisional 68k movep.w $18a9(a3), d0
db 0x9F, 0xED, 0x9A, 0x8F ; 004434: provisional 68k suba.l -$6571(a5), a7
db 0xA9, 0x99 ; 004438: provisional 68k dc.w $a999
db 0x9D, 0xDD ; 00443A: provisional 68k suba.l (a5)+, a6
db 0xAB, 0xD1 ; 00443C: provisional 68k dc.w $abd1
db 0xFF, 0xFF ; 00443E: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 004440: provisional 68k btst.l d2, d1
db 0xFA, 0x9F ; 004442: provisional 68k dc.w $fa9f
db 0x01, 0x0B, 0x18, 0xA9 ; 004444: provisional 68k movep.w $18a9(a3), d0
db 0xA8, 0x8D ; 004448: provisional 68k dc.w $a88d
db 0xB9, 0x88 ; 00444A: provisional 68k cmpm.l (a0)+, (a4)+
db 0xA9, 0x99 ; 00444C: provisional 68k dc.w $a999
db 0x99, 0xDC ; 00444E: provisional 68k suba.l (a4)+, a4
db 0xAB, 0x81 ; 004450: provisional 68k dc.w $ab81
db 0xFF, 0xFF ; 004452: provisional 68k dc.w $ffff
db 0x05, 0x01 ; 004454: provisional 68k btst.l d2, d1
db 0xF9, 0xBD ; 004456: provisional 68k dc.w $f9bd
db 0x01, 0x0A, 0x18, 0xAB ; 004458: provisional 68k movep.w $18ab(a2), d0
db 0xA8, 0x8A ; 00445C: provisional 68k dc.w $a88a
db 0xB9, 0x88 ; 00445E: provisional 68k cmpm.l (a0)+, (a4)+
db 0x99, 0xA9, 0xA9, 0x9A ; 004460: provisional 68k sub.l d4, -$5666(a1)
db 0xBB, 0xFF ; file 004464
db 0xFF, 0x05 ; 004466: provisional 68k dc.w $ff05
db 0x01, 0xF9, 0xB9, 0x01, 0x0A, 0x18 ; 004468: provisional 68k bset.b d0, $b9010a18.l
db 0x9B, 0x98 ; 00446E: provisional 68k sub.l d5, (a0)+
db 0x89, 0xB9, 0x8D, 0x99, 0xD9, 0xAA ; 004470: provisional 68k or.l d4, $8d99d9aa.l
db 0x9B, 0xB9, 0xFF, 0xFF, 0x05, 0x0D ; 004476: provisional 68k sub.l d5, $ffff050d.l
db 0xF9, 0xBB ; 00447C: provisional 68k dc.w $f9bb
db 0xDE, 0x18 ; 00447E: provisional 68k add.b (a0)+, d7
db 0x9B, 0x98 ; 004480: provisional 68k sub.l d5, (a0)+
db 0x8B, 0xB9, 0xFA, 0xB9, 0xAB, 0xAA ; 004482: provisional 68k or.l d5, $fab9abaa.l
db 0x99, 0xB9, 0xFF, 0xFF, 0x05, 0x0D ; 004488: provisional 68k sub.l d4, $ffff050d.l
db 0xF9, 0xBB ; 00448E: provisional 68k dc.w $f9bb
db 0x9C, 0x18 ; 004490: provisional 68k sub.b (a0)+, d6
db 0x9B, 0x98 ; 004492: provisional 68k sub.l d5, (a0)+
db 0x8B, 0xB9, 0xD9, 0xBB, 0xA9, 0xA9 ; 004494: provisional 68k or.l d5, $d9bba9a9.l
db 0xA9, 0xB9 ; 00449A: provisional 68k dc.w $a9b9
db 0xFF, 0xFF ; 00449C: provisional 68k dc.w $ffff
db 0x05, 0x0D, 0x8D, 0x9B ; 00449E: provisional 68k movep.w -$7265(a5), d2
db 0x98, 0x18 ; 0044A2: provisional 68k sub.b (a0)+, d4
db 0x9B, 0x98 ; 0044A4: provisional 68k sub.l d5, (a0)+
db 0xDB, 0xB9, 0xD9, 0xBB, 0x8F, 0xAB ; 0044A6: provisional 68k add.l d5, $d9bb8fab.l
db 0xAD, 0xAF ; 0044AC: provisional 68k dc.w $adaf
db 0xFF, 0xFF ; 0044AE: provisional 68k dc.w $ffff
db 0x05, 0x0D, 0x18, 0xD9 ; 0044B0: provisional 68k movep.w $18d9(a5), d2
db 0x9F, 0x1D ; 0044B4: provisional 68k sub.b d7, (a5)+
db 0xBB, 0x98 ; 0044B6: provisional 68k eor.l d5, (a0)+
db 0xDB, 0xB9, 0xAB, 0xB9, 0xCD, 0x9B ; 0044B8: provisional 68k add.l d5, $abb9cd9b.l
db 0xAD, 0xA8 ; 0044BE: provisional 68k dc.w $ada8
db 0xFF, 0xFF ; 0044C0: provisional 68k dc.w $ffff
db 0x05, 0x0D, 0x1E, 0x8A ; 0044C2: provisional 68k movep.w $1e8a(a5), d2
db 0x99, 0x8D ; 0044C6: provisional 68k subx.l -(a5), -(a4)
db 0x9B, 0xBF ; file 0044C8
db 0x8B, 0xB9, 0x9B, 0xBA, 0xCA, 0xBB ; 0044CA: provisional 68k or.l d5, $9bbacabb.l
db 0x8D, 0x91 ; 0044D0: provisional 68k or.l d6, (a1)
db 0xFF, 0xFF ; 0044D2: provisional 68k dc.w $ffff
db 0x06, 0x0C, 0xCD, 0xBB ; file 0044D4
db 0x9A, 0xBB, 0xBD, 0xAB, 0xB9, 0xBB, 0xB9, 0xFB, 0xBB, 0xDA ; 0044D8: provisional 68k sub.l ([$fe95, a3.l * 4], $b9fbbbda), d5
db 0x91, 0xFF ; file 0044E2
db 0xFF, 0x06 ; 0044E4: provisional 68k dc.w $ff06
db 0x0C, 0x18, 0xAB, 0xB9 ; 0044E6: provisional 68k cmpi.b #$b9, (a0)+
db 0xBB, 0xBA, 0x9B, 0xBB ; file 0044EA
db 0xBB, 0xB9, 0xAB, 0xB9, 0xFD, 0xF1 ; 0044EE: provisional 68k eor.l d5, $abb9fdf1.l
db 0xFF, 0xFF ; 0044F4: provisional 68k dc.w $ffff
db 0x06, 0x0B ; file 0044F6
db 0x18, 0xD9 ; 0044F8: provisional 68k move.b (a1)+, (a4)+
db 0xBB, 0xBB ; file 0044FA
db 0x9A, 0x9B ; 0044FC: provisional 68k sub.l (a3)+, d5
db 0xB9, 0xBB, 0xB9, 0xBB ; file 0044FE
db 0xB9, 0x8E ; 004502: provisional 68k cmpm.l (a6)+, (a4)+
db 0xFF, 0xFF ; 004504: provisional 68k dc.w $ffff
db 0x07, 0x09, 0x8A, 0xBB ; 004506: provisional 68k movep.w -$7545(a1), d3
db 0xBA, 0xD8 ; 00450A: provisional 68k cmpa.w (a0)+, a5
db 0xDD, 0xDA ; 00450C: provisional 68k adda.l (a2)+, a6
db 0x99, 0xAA, 0xBB, 0xBD ; 00450E: provisional 68k sub.l d4, -$4443(a2)
db 0xFF, 0xFF ; 004512: provisional 68k dc.w $ffff
db 0x07, 0x09, 0x8D, 0x99 ; 004514: provisional 68k movep.w -$7267(a1), d3
db 0xBD, 0xC8 ; 004518: provisional 68k cmpa.l a0, a6
db 0xDD, 0xDA ; 00451A: provisional 68k adda.l (a2)+, a6
db 0xD8, 0x8D ; 00451C: provisional 68k add.l a5, d4
db 0xA9, 0x98 ; 00451E: provisional 68k dc.w $a998
db 0xFF, 0xFF ; 004520: provisional 68k dc.w $ffff
db 0x07, 0x09, 0x18, 0xDA ; 004522: provisional 68k movep.w $18da(a1), d3
db 0x9A, 0xA9, 0xBB, 0xBB ; 004526: provisional 68k sub.l -$4445(a1), d5
db 0x98, 0x88 ; 00452A: provisional 68k sub.l a0, d4
db 0xCC, 0xCC ; file 00452C
db 0xFF, 0xFF ; 00452E: provisional 68k dc.w $ffff
db 0x08, 0x08 ; file 004530
db 0xC8, 0x9A ; 004532: provisional 68k and.l (a2)+, d4
db 0x8D, 0x9B ; 004534: provisional 68k or.l d6, (a3)+
db 0xBB, 0xBB ; file 004536
db 0xBB, 0x98 ; 004538: provisional 68k eor.l d5, (a0)+
db 0x81, 0xFF ; file 00453A
db 0xFF, 0x08 ; 00453C: provisional 68k dc.w $ff08
db 0x08, 0x18 ; file 00453E
db 0x9A, 0xDA ; 004540: provisional 68k suba.w (a2)+, a5
db 0x9B, 0xBB, 0xBB, 0xBB ; file 004542
db 0xBC, 0xE1 ; 004546: provisional 68k cmpa.w -(a1), a6
db 0xFF, 0xFF ; 004548: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 00454A: provisional 68k btst.l d4, d7
db 0xFD, 0xDD ; 00454C: provisional 68k dc.w $fddd
db 0x9B, 0x9B ; 00454E: provisional 68k sub.l d5, (a3)+
db 0xBB, 0xB9, 0x9F, 0xF1, 0xFF, 0xFF ; 004550: provisional 68k eor.l d5, $9ff1ffff.l
db 0x09, 0x07 ; 004556: provisional 68k btst.l d4, d7
db 0x18, 0xC8 ; file 004558
db 0xA9, 0xA9 ; 00455A: provisional 68k dc.w $a9a9
db 0x9B, 0x9D ; 00455C: provisional 68k sub.l d5, (a5)+
db 0x8A, 0x91 ; 00455E: provisional 68k or.l (a1), d5
db 0xFF, 0xFF ; 004560: provisional 68k dc.w $ffff
db 0x0A, 0x06, 0xC8, 0xDA ; 004562: provisional 68k eori.b #$da, d6
db 0xDD, 0xAA, 0xA8, 0xC8 ; 004566: provisional 68k add.l d6, -$5738(a2)
db 0xA1, 0xFF ; 00456A: provisional 68k dc.w $a1ff
db 0xFF, 0x0A ; 00456C: provisional 68k dc.w $ff0a
db 0x06, 0xCC ; 00456E: provisional 68k dc.w $6cc
db 0x8D, 0x88 ; 004570: provisional 68k dc.w $8d88
db 0xDD, 0x8C ; 004572: provisional 68k addx.l -(a4), -(a6)
db 0xCC, 0x81 ; 004574: provisional 68k and.l d1, d6
db 0xFF, 0xFF ; 004576: provisional 68k dc.w $ffff
db 0x0B, 0x04 ; 004578: provisional 68k btst.l d5, d4
db 0x88, 0xC8, 0x88, 0xCC, 0x88, 0xFF ; file 00457A
db 0xFF, 0x0C ; 004580: provisional 68k dc.w $ff0c
db 0x00, 0x88 ; file 004582
db 0xFF, 0xFF ; 004584: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004586: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004588: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 00458A: provisional 68k ori.b #$0, d0
db 0x00, 0x28, 0x00, 0x30, 0x00, 0x10 ; 00458E: provisional 68k ori.b #$30, $10(a0)
db 0x08, 0x08, 0x08, 0x10 ; file 004594
db 0x10, 0x10 ; 004598: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00459A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00459C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00459E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0045A0: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0045A4: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0045A8: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0045AA: provisional 68k neg.w d4
db 0x24, 0x28, 0x50, 0xA4 ; 0045AC: provisional 68k move.l $50a4(a0), d2
db 0xA8, 0xAC ; 0045B0: provisional 68k dc.w $a8ac
db 0x64, 0x68 ; 0045B2: provisional 68k bcc.b $461c
db 0x7C, 0xE0 ; 0045B4: provisional 68k moveq #$e0, d6
db 0xE4, 0xE0 ; 0045B6: provisional 68k roxr.w -(a0)
db 0x44, 0x44 ; 0045B8: provisional 68k neg.w d4
db 0x78, 0x0C ; 0045BA: provisional 68k moveq #$c, d4
db 0x10, 0x50 ; file 0045BC
db 0x48, 0x4C ; 0045BE: provisional 68k dc.w $484c
db 0x58, 0x7C, 0x80, 0x88 ; file 0045C0
db 0xFF, 0xFF ; 0045C4: provisional 68k dc.w $ffff
db 0x0D, 0x01 ; 0045C6: provisional 68k btst.l d6, d1
db 0xA9, 0xA1 ; 0045C8: provisional 68k dc.w $a9a1
db 0xFF, 0xFF ; 0045CA: provisional 68k dc.w $ffff
db 0x0D, 0x01 ; 0045CC: provisional 68k btst.l d6, d1
db 0x99, 0xC1 ; 0045CE: provisional 68k suba.l d1, a4
db 0xFF, 0xFF ; 0045D0: provisional 68k dc.w $ffff
db 0x0C, 0x02, 0x1C, 0x9F ; 0045D2: provisional 68k cmpi.b #$9f, d2
db 0xDD, 0xFF ; file 0045D6
db 0xFF, 0x0C ; 0045D8: provisional 68k dc.w $ff0c
db 0x01, 0x19 ; 0045DA: provisional 68k btst.l d0, (a1)+
db 0x9A, 0xFF ; file 0045DC
db 0xFF, 0x0C ; 0045DE: provisional 68k dc.w $ff0c
db 0x01, 0xE9, 0x9D, 0xFF ; 0045E0: provisional 68k bset.b d0, -$6201(a1)
db 0xFF, 0x0C ; 0045E4: provisional 68k dc.w $ff0c
db 0x01, 0xC9, 0xF8, 0xFF ; 0045E6: provisional 68k movep.l d0, -$701(a1)
db 0xFF, 0x0C ; 0045EA: provisional 68k dc.w $ff0c
db 0x01, 0x99 ; 0045EC: provisional 68k bclr.b d0, (a1)+
db 0xED, 0xFF ; file 0045EE
db 0xFF, 0x0B ; 0045F0: provisional 68k dc.w $ff0b
db 0x01, 0x1C ; 0045F2: provisional 68k btst.l d0, (a4)+
db 0xBF, 0xFF ; file 0045F4
db 0xFF, 0x0B ; 0045F6: provisional 68k dc.w $ff0b
db 0x02, 0x19, 0xBA, 0x88 ; 0045F8: provisional 68k andi.b #$88, (a1)+
db 0xFF, 0xFF ; 0045FC: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 0045FE: provisional 68k btst.l d5, d3
db 0xAB, 0xBA ; 004600: provisional 68k dc.w $abba
db 0x9B, 0x9C ; 004602: provisional 68k sub.l d5, (a4)+
db 0xFF, 0xFF ; 004604: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0x1C, 0x9B ; 004606: provisional 68k eori.b #$9b, d4
db 0x9E, 0x9B ; 00460A: provisional 68k sub.l (a3)+, d7
db 0xBE, 0xFF ; file 00460C
db 0xFF, 0x0A ; 00460E: provisional 68k dc.w $ff0a
db 0x04, 0x1C, 0x9B, 0xF8 ; 004610: provisional 68k subi.b #$f8, (a4)+
db 0x9B, 0x98 ; 004614: provisional 68k sub.l d5, (a0)+
db 0xFF, 0xFF ; 004616: provisional 68k dc.w $ffff
db 0x07, 0x01 ; 004618: provisional 68k btst.l d3, d1
db 0x1C, 0xDD ; 00461A: provisional 68k move.b (a5)+, (a6)+
db 0x01, 0x04 ; 00461C: provisional 68k btst.l d0, d4
db 0x1C, 0x9F ; 00461E: provisional 68k move.b (a7)+, (a6)
db 0xCD, 0x9B ; 004620: provisional 68k and.l d6, (a3)+
db 0xFD, 0xFF ; 004622: provisional 68k dc.w $fdff
db 0xFF, 0x07 ; 004624: provisional 68k dc.w $ff07
db 0x01, 0xCF, 0xF1, 0x01 ; 004626: provisional 68k movep.l d0, -$eff(a7)
db 0x04, 0x8F ; file 00462A
db 0xBA, 0x8D ; 00462C: provisional 68k cmp.l a5, d5
db 0x9B, 0xF1, 0xFF, 0xFF, 0x07, 0x01, 0xA9, 0xA1 ; 00462E: provisional 68k suba.l ([$701a9a1]), a5
db 0x01, 0x07 ; 004636: provisional 68k btst.l d0, d7
db 0xCB, 0xB8, 0x8E, 0xBB ; 004638: provisional 68k and.l d5, $8ebb.w
db 0xF1, 0x1F ; 00463C: provisional 68k dc.w $f11f
db 0x99, 0xA1 ; 00463E: provisional 68k sub.l d4, -(a1)
db 0xFF, 0xFF ; 004640: provisional 68k dc.w $ffff
db 0x06, 0x01, 0x1C, 0x9A ; 004642: provisional 68k addi.b #$9a, d1
db 0x01, 0x08, 0xDD, 0xFB ; 004646: provisional 68k movep.w -$2205(a0), d0
db 0x98, 0x8E ; 00464A: provisional 68k sub.l a6, d4
db 0x99, 0xFD ; file 00464C
db 0x1F, 0xBB, 0x9C, 0xFF, 0xFF, 0x06, 0x01, 0xC9 ; 00464E: provisional 68k move.b $464f(pc, a1.l), ([a7], a7.l * 8, $1c9)
db 0x98, 0x01 ; 004656: provisional 68k sub.b d1, d4
db 0x08, 0x1C ; file 004658
db 0x9B, 0xA8, 0x8E, 0x99 ; 00465A: provisional 68k sub.l d5, -$7167(a0)
db 0xC1, 0x1E ; 00465E: provisional 68k and.b d0, (a6)+
db 0xBB, 0xAD, 0xFF, 0xFF ; 004660: provisional 68k eor.l d5, -$1(a5)
db 0x06, 0x01, 0xFB, 0xF1 ; 004664: provisional 68k addi.b #$f1, d1
db 0x01, 0x04 ; 004668: provisional 68k btst.l d0, d4
db 0x1F, 0xB9, 0x88, 0xFA, 0x99, 0x01, 0x02, 0xDD ; 00466A: provisional 68k move.b $88fa9901.l, -$23(a7, d0.w)
db 0xBB, 0xE1 ; 004672: provisional 68k cmpa.l -(a1), a5
db 0xFF, 0xFF ; 004674: provisional 68k dc.w $ffff
db 0x05, 0x02 ; 004676: provisional 68k btst.l d2, d2
db 0x1C, 0x9B ; 004678: provisional 68k move.b (a3)+, (a6)
db 0xA1, 0x01 ; 00467A: provisional 68k dc.w $a101
db 0x08, 0xAB ; file 00467C
db 0xB9, 0x8E ; 00467E: provisional 68k cmpm.l (a6)+, (a4)+
db 0x9F, 0xBF, 0x8C, 0x88 ; file 004680
db 0xBB, 0xE1 ; 004684: provisional 68k cmpa.l -(a1), a5
db 0xFF, 0xFF ; 004686: provisional 68k dc.w $ffff
db 0x05, 0x02 ; 004688: provisional 68k btst.l d2, d2
db 0x1C, 0xFF ; file 00468A
db 0xC1, 0x01 ; 00468C: provisional 68k abcd.b d1, d0
db 0x08, 0xF9 ; file 00468E
db 0xB9, 0xD8 ; 004690: provisional 68k cmpa.l (a0)+, a4
db 0x99, 0xBF, 0xCE, 0x88 ; file 004692
db 0xBB, 0xE1 ; 004696: provisional 68k cmpa.l -(a1), a5
db 0xFF, 0xFF ; 004698: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0xDD, 0xEE ; 00469A: provisional 68k movep.w -$2212(a4), d2
db 0xDD, 0x18 ; 00469E: provisional 68k add.b d6, (a0)+
db 0xF9, 0x99 ; 0046A0: provisional 68k dc.w $f999
db 0x88, 0xBB, 0xB9, 0xFF, 0xEE, 0xBB, 0xE1, 0xFF ; 0046A2: provisional 68k or.l ([$eebc28a3]), d4
db 0xFF, 0x05 ; 0046AA: provisional 68k dc.w $ff05
db 0x0E, 0x18 ; file 0046AC
db 0x9F, 0xDD ; 0046AE: provisional 68k suba.l (a5)+, a7
db 0x18, 0x9B ; 0046B0: provisional 68k move.b (a3)+, (a4)
db 0xB9, 0xE8, 0x99, 0x9F ; 0046B2: provisional 68k cmpa.l -$6661(a0), a4
db 0xF9, 0x99 ; 0046B6: provisional 68k dc.w $f999
db 0xB9, 0xE1 ; 0046B8: provisional 68k cmpa.l -(a1), a4
db 0xAF, 0xA1 ; 0046BA: provisional 68k dc.w $afa1
db 0xFF, 0xFF ; 0046BC: provisional 68k dc.w $ffff
db 0x05, 0x0E, 0x1C, 0x99 ; 0046BE: provisional 68k movep.w $1c99(a6), d2
db 0x81, 0x18 ; 0046C2: provisional 68k or.b d0, (a0)+
db 0xF9, 0x9F ; 0046C4: provisional 68k dc.w $f99f
db 0x88, 0x99 ; 0046C6: provisional 68k or.l (a1)+, d4
db 0x9A, 0xA9, 0x9F, 0xF9 ; 0046C8: provisional 68k sub.l -$6007(a1), d5
db 0xE1, 0xFB, 0x9C, 0xFF ; file 0046CC
db 0xFF, 0x05 ; 0046D0: provisional 68k dc.w $ff05
db 0x0E, 0x1C ; file 0046D2
db 0x99, 0x81 ; 0046D4: provisional 68k subx.l d1, d4
db 0x18, 0xA9, 0x9F, 0x88 ; 0046D6: provisional 68k move.b -$6078(a1), (a4)
db 0xF9, 0xA8 ; 0046DA: provisional 68k dc.w $f9a8
db 0xA9, 0x99 ; 0046DC: provisional 68k dc.w $a999
db 0x9F, 0xFA, 0xAB, 0x9E ; 0046DE: provisional 68k suba.l $fffff27e(pc), a7
db 0xFF, 0xFF ; 0046E2: provisional 68k dc.w $ffff
db 0x05, 0x0E, 0x1C, 0x99 ; 0046E4: provisional 68k movep.w $1c99(a6), d2
db 0x81, 0x18 ; 0046E8: provisional 68k or.b d0, (a0)+
db 0xA9, 0x9C ; 0046EA: provisional 68k dc.w $a99c
db 0xDE, 0x9B ; 0046EC: provisional 68k add.l (a3)+, d7
db 0xA8, 0xA9 ; 0046EE: provisional 68k dc.w $a8a9
db 0x9F, 0x9F ; 0046F0: provisional 68k sub.l d7, (a7)+
db 0xFE, 0xEB ; 0046F2: provisional 68k dc.w $feeb
db 0x91, 0xFF ; file 0046F4
db 0xFF, 0x05 ; 0046F6: provisional 68k dc.w $ff05
db 0x0E, 0x1F ; file 0046F8
db 0xB9, 0x81 ; 0046FA: provisional 68k eor.l d4, d1
db 0x18, 0xA9, 0x9C, 0xDA ; 0046FC: provisional 68k move.b -$6326(a1), (a4)
db 0x9B, 0xA8, 0xF9, 0x9A ; 004700: provisional 68k sub.l d5, -$666(a0)
db 0x99, 0xB9, 0x9B, 0xF1, 0xFF, 0xFF ; 004704: provisional 68k sub.l d4, $9bf1ffff.l
db 0x05, 0x0E, 0x89, 0xBB ; 00470A: provisional 68k movep.w -$7645(a6), d2
db 0xF1, 0x18 ; 00470E: provisional 68k dc.w $f118
db 0xFB, 0xBA ; 004710: provisional 68k dc.w $fbba
db 0xDF, 0xBB ; file 004712
db 0xAC, 0x9B ; 004714: provisional 68k dc.w $ac9b
db 0x9A, 0x99 ; 004716: provisional 68k sub.l (a1)+, d5
db 0x99, 0xBB ; file 004718
db 0xA1, 0xFF ; 00471A: provisional 68k dc.w $a1ff
db 0xFF, 0x05 ; 00471C: provisional 68k dc.w $ff05
db 0x0E, 0x8F ; file 00471E
db 0xBB, 0x9C ; 004720: provisional 68k eor.l d5, (a4)+
db 0x18, 0x9B ; 004722: provisional 68k move.b (a3)+, (a4)
db 0xBA, 0xDF ; 004724: provisional 68k cmpa.w (a7)+, a5
db 0xBB, 0xCC ; 004726: provisional 68k cmpa.l a4, a5
db 0xBB, 0x99 ; 004728: provisional 68k eor.l d5, (a1)+
db 0x9F, 0xF9, 0xBB, 0xC1, 0xFF, 0xFF ; 00472A: provisional 68k suba.l $bbc1ffff.l, a7
db 0x05, 0x0E, 0x8F, 0xBB ; 004730: provisional 68k movep.w -$7045(a6), d2
db 0xBA, 0xDD ; 004734: provisional 68k cmpa.w (a5)+, a5
db 0x9B, 0xBA ; file 004736
db 0xE9, 0xBB ; 004738: provisional 68k rol.l d4, d3
db 0xCA, 0xBB, 0x9F, 0xFF, 0x9F, 0x9B, 0xC1, 0xFF ; 00473A: provisional 68k and.l ([$9f9c093b]), d5
db 0xFF, 0x05 ; 004742: provisional 68k dc.w $ff05
db 0x0E, 0x18 ; file 004744
db 0xF9, 0x9F ; 004746: provisional 68k dc.w $f99f
db 0xDD, 0x9B ; 004748: provisional 68k add.l d6, (a3)+
db 0xBA, 0xEB, 0xBB, 0xFF ; 00474A: provisional 68k cmpa.w -$4401(a3), a5
db 0xBB, 0xFE ; file 00474E
db 0xF9, 0x9A ; 004750: provisional 68k dc.w $f99a
db 0xAF, 0xC1 ; 004752: provisional 68k dc.w $afc1
db 0xFF, 0xFF ; 004754: provisional 68k dc.w $ffff
db 0x06, 0x0D ; file 004756
db 0xEF, 0x99 ; 004758: provisional 68k rol.l #$7, d1
db 0x88, 0x9B ; 00475A: provisional 68k or.l (a3)+, d4
db 0xBA, 0x8B ; 00475C: provisional 68k cmp.l a3, d5
db 0xBB, 0x99 ; 00475E: provisional 68k eor.l d5, (a1)+
db 0xBB, 0xE8, 0x9B, 0x9A ; 004760: provisional 68k cmpa.l -$6466(a0), a5
db 0xAA, 0x81 ; 004764: provisional 68k dc.w $aa81
db 0xFF, 0xFF ; 004766: provisional 68k dc.w $ffff
db 0x06, 0x0C ; file 004768
db 0x8A, 0x9B ; 00476A: provisional 68k or.l (a3)+, d5
db 0xC8, 0x9B ; 00476C: provisional 68k and.l (a3)+, d4
db 0xBF, 0xCB ; 00476E: provisional 68k cmpa.l a3, a7
db 0xBB, 0x9B ; 004770: provisional 68k eor.l d5, (a3)+
db 0xB9, 0x8A ; 004772: provisional 68k cmpm.l (a2)+, (a4)+
db 0xBB, 0x9A ; 004774: provisional 68k eor.l d5, (a2)+
db 0xFC, 0xFF ; 004776: provisional 68k dc.w $fcff
db 0xFF, 0x06 ; 004778: provisional 68k dc.w $ff06
db 0x0C, 0x8E ; file 00477A
db 0xFB, 0xBA ; 00477C: provisional 68k dc.w $fbba
db 0x9B, 0xB9, 0xAB, 0xBB, 0x9B, 0xB9 ; 00477E: provisional 68k sub.l d5, $abbb9bb9.l
db 0x89, 0xBB ; file 004784
db 0xAF, 0x9C ; 004786: provisional 68k dc.w $af9c
db 0xFF, 0xFF ; 004788: provisional 68k dc.w $ffff
db 0x06, 0x0C ; file 00478A
db 0x18, 0xA9, 0xBB, 0xBB ; 00478C: provisional 68k move.b -$4445(a1), (a4)
db 0xB9, 0xAB, 0xBB, 0xBB ; 004790: provisional 68k eor.l d4, -$4445(a3)
db 0xB9, 0xEB, 0xBB, 0xEE ; 004794: provisional 68k cmpa.l -$4412(a3), a4
db 0xF8, 0xFF ; 004798: provisional 68k dc.w $f8ff
db 0xFF, 0x07 ; 00479A: provisional 68k dc.w $ff07
db 0x0B, 0xEF, 0xBB, 0xBB ; 00479C: provisional 68k bset.b d5, -$4445(a7)
db 0xBF, 0xE9, 0x99, 0xBB ; 0047A0: provisional 68k cmpa.l -$6645(a1), a7
db 0xB9, 0x9B ; 0047A4: provisional 68k eor.l d4, (a3)+
db 0xB9, 0xCD ; 0047A6: provisional 68k cmpa.l a5, a4
db 0x81, 0xFF ; file 0047A8
db 0xFF, 0x07 ; 0047AA: provisional 68k dc.w $ff07
db 0x0A, 0xCA ; file 0047AC
db 0x9B, 0xB9, 0xFE, 0xEA, 0xEA, 0xF9 ; 0047AE: provisional 68k sub.l d5, $feeaeaf9.l
db 0xFF, 0xBB ; 0047B4: provisional 68k dc.w $ffbb
db 0xBF, 0xE1 ; 0047B6: provisional 68k cmpa.l -(a1), a7
db 0xFF, 0xFF ; 0047B8: provisional 68k dc.w $ffff
db 0x07, 0x0A, 0x1E, 0xFF ; 0047BA: provisional 68k movep.w $1eff(a2), d3
db 0x9F, 0xEE, 0xAA, 0xAF ; 0047BE: provisional 68k suba.l -$5551(a6), a7
db 0xA8, 0x8A ; 0047C2: provisional 68k dc.w $a88a
db 0x99, 0x9E ; 0047C4: provisional 68k sub.l d4, (a6)+
db 0xDD, 0xFF ; file 0047C6
db 0xFF, 0x07 ; 0047C8: provisional 68k dc.w $ff07
db 0x09, 0x18 ; 0047CA: provisional 68k btst.l d4, (a0)+
db 0x88, 0xF9, 0xAA, 0xBB, 0xBB, 0x9E ; 0047CC: provisional 68k divu.w $aabbbb9e.l, d4
db 0xEE, 0xE8, 0x88, 0xFF ; file 0047D2
db 0xFF, 0x08 ; 0047D6: provisional 68k dc.w $ff08
db 0x08, 0x88 ; file 0047D8
db 0x99, 0xAA, 0x9B, 0xBB ; 0047DA: provisional 68k sub.l d4, -$6445(a2)
db 0xBB, 0xBB ; file 0047DE
db 0x98, 0x81 ; 0047E0: provisional 68k sub.l d1, d4
db 0xFF, 0xFF ; 0047E2: provisional 68k dc.w $ffff
db 0x08, 0x08, 0x18, 0xFF ; file 0047E4
db 0xFA, 0x9B ; 0047E8: provisional 68k dc.w $fa9b
db 0xBB, 0xBB ; file 0047EA
db 0xBB, 0xB8, 0x81, 0xFF ; 0047EC: provisional 68k eor.l d5, $81ff.w
db 0xFF, 0x09 ; 0047F0: provisional 68k dc.w $ff09
db 0x07, 0xCE, 0xEE, 0x9B ; 0047F2: provisional 68k movep.l d3, -$1165(a6)
db 0x99, 0xBB ; file 0047F6
db 0xB9, 0x9C ; 0047F8: provisional 68k eor.l d4, (a4)+
db 0xC1, 0xFF ; file 0047FA
db 0xFF, 0x09 ; 0047FC: provisional 68k dc.w $ff09
db 0x07, 0x18 ; 0047FE: provisional 68k btst.l d3, (a0)+
db 0x88, 0xF9, 0xF9, 0x9B, 0x9A, 0xEA ; 004800: provisional 68k divu.w $f99b9aea.l, d4
db 0x91, 0xFF ; file 004806
db 0xFF, 0x0A ; 004808: provisional 68k dc.w $ff0a
db 0x06, 0xD8 ; file 00480A
db 0xAF, 0xAA ; 00480C: provisional 68k dc.w $afaa
db 0xF9, 0xFE ; 00480E: provisional 68k dc.w $f9fe
db 0x8E, 0x91 ; 004810: provisional 68k or.l (a1), d7
db 0xFF, 0xFF ; 004812: provisional 68k dc.w $ffff
db 0x0A, 0x06, 0x18, 0xEE ; 004814: provisional 68k eori.b #$ee, d6
db 0x8E, 0xAE, 0x88, 0x88 ; 004818: provisional 68k or.l -$7778(a6), d7
db 0xE1, 0xFF ; file 00481C
db 0xFF, 0x0B ; 00481E: provisional 68k dc.w $ff0b
db 0x03, 0x88, 0x88, 0x88 ; 004820: provisional 68k movep.w d1, -$7778(a0)
db 0x88, 0xFF ; file 004824
db 0xFF, 0x0C ; 004826: provisional 68k dc.w $ff0c
db 0x00, 0x81, 0xFF, 0xFF, 0xFF, 0xFF ; 004828: provisional 68k ori.l #$ffffffff, d1
db 0xFF, 0xFF ; 00482E: provisional 68k dc.w $ffff
db 0x00, 0x07, 0x00, 0x00 ; 004830: provisional 68k ori.b #$0, d7
db 0x00, 0x1A, 0x00, 0x2E ; 004834: provisional 68k ori.b #$2e, (a2)+
db 0x00, 0x00, 0x00, 0x58 ; 004838: provisional 68k ori.b #$58, d0
db 0x00, 0x00, 0x00, 0x00 ; 00483C: provisional 68k ori.b #$0, d0
db 0x00, 0x0C ; file 004840
db 0x00, 0x16, 0x00, 0x00 ; 004842: provisional 68k ori.b #$0, (a6)
db 0x00, 0x01, 0x00, 0x06 ; 004846: provisional 68k ori.b #$6, d1
db 0x00, 0x0A ; file 00484A
db 0x00, 0x00, 0x00, 0x00 ; 00484C: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 004850: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x02 ; 004854: provisional 68k ori.b #$2, d0
db 0x00, 0x07, 0x00, 0x00 ; 004858: provisional 68k ori.b #$0, d7
db 0x00, 0x2E, 0x00, 0x39, 0x00, 0x00 ; 00485C: provisional 68k ori.b #$39, $0(a6)
db 0x00, 0x58, 0x00, 0x00 ; 004862: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x16 ; 004866: provisional 68k ori.b #$16, d0
db 0x00, 0x1D, 0x00, 0x00 ; 00486A: provisional 68k ori.b #$0, (a5)+
db 0x00, 0x0C ; file 00486E
db 0x00, 0x07, 0x00, 0x0A ; 004870: provisional 68k ori.b #$a, d7
db 0x00, 0x00, 0x00, 0x00 ; 004874: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 004878: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 00487C: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 004880: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 004884: provisional 68k ori.b #$5, d4
db 0x00, 0x06, 0x00, 0x05 ; 004888: provisional 68k ori.b #$5, d6
db 0x00, 0x04, 0x00, 0x03 ; 00488C: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 004890: provisional 68k ori.b #$1, d2
db 0x00, 0x0E, 0x04, 0xC8 ; file 004894
db 0x09, 0x3C, 0x0D, 0x82, 0x11, 0xB4 ; 004898: provisional 68k btst.l d4, #$d8211b4
db 0x16, 0x02 ; 00489E: provisional 68k move.b d2, d3
db 0x1A, 0x90 ; 0048A0: provisional 68k move.b (a0), (a5)
db 0x00, 0x00, 0x00, 0x00 ; 0048A2: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 0048A6: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0048AC
db 0x10, 0x10 ; 0048B0: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0048B2: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0048B4: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0048B6: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0048B8: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0048BC: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0048C0: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0048C2: provisional 68k neg.w d4
db 0x00, 0x0C ; file 0048C4
db 0x20, 0xB4, 0x90, 0x78 ; 0048C6: provisional 68k move.l $78(a4, a1.w), (a0)
db 0x78, 0x64 ; 0048CA: provisional 68k moveq #$64, d4
db 0x50, 0x00 ; 0048CC: provisional 68k addq.b #$8, d0
db 0x38, 0x80 ; 0048CE: provisional 68k move.w d0, (a4)
db 0x48, 0x3C ; file 0048D0
db 0x38, 0xA8, 0x74, 0x64 ; 0048D2: provisional 68k move.w $7464(a0), (a4)
db 0xE4, 0xA8 ; 0048D6: provisional 68k lsr.l d2, d0
db 0x88, 0x24 ; 0048D8: provisional 68k or.b -(a4), d4
db 0x1C, 0x18 ; 0048DA: provisional 68k move.b (a0)+, d6
db 0x09, 0x06 ; 0048DC: provisional 68k btst.l d4, d6
db 0xAA, 0xAA ; 0048DE: provisional 68k dc.w $aaaa
db 0xDD, 0xD9 ; 0048E0: provisional 68k adda.l (a1)+, a6
db 0xDA, 0xAA, 0xF1, 0xFF ; 0048E2: provisional 68k add.l -$e01(a2), d5
db 0xFF, 0x06 ; 0048E6: provisional 68k dc.w $ff06
db 0x0A, 0x1A, 0xAD, 0x99 ; 0048E8: provisional 68k eori.b #$99, (a2)+
db 0x99, 0xDD ; 0048EC: provisional 68k suba.l (a5)+, a4
db 0x99, 0xDE ; 0048EE: provisional 68k suba.l (a6)+, a4
db 0x99, 0x99 ; 0048F0: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xA1 ; 0048F2: provisional 68k sub.l d6, -(a1)
db 0xFF, 0xFF ; 0048F4: provisional 68k dc.w $ffff
db 0x04, 0x0D ; file 0048F6
db 0x1C, 0xAA, 0xD9, 0x9D ; 0048F8: provisional 68k move.b -$2663(a2), (a6)
db 0xDD, 0xDA ; 0048FC: provisional 68k adda.l (a2)+, a6
db 0xA9, 0xED ; 0048FE: provisional 68k dc.w $a9ed
db 0xDD, 0x9E ; 004900: provisional 68k add.l d6, (a6)+
db 0x9D, 0xDD ; 004902: provisional 68k suba.l (a5)+, a6
db 0x9E, 0xDF ; 004904: provisional 68k suba.w (a7)+, a7
db 0xFF, 0xFF ; 004906: provisional 68k dc.w $ffff
db 0x04, 0x0E ; file 004908
db 0xAA, 0xAD ; 00490A: provisional 68k dc.w $aaad
db 0xD9, 0xE9, 0xD9, 0xEE ; 00490C: provisional 68k adda.l -$2612(a1), a4
db 0xE9, 0xDD ; file 004910
db 0x9E, 0x99 ; 004912: provisional 68k sub.l (a1)+, d7
db 0xEE, 0xE9, 0xEE, 0xED ; file 004914
db 0xA1, 0xFF ; 004918: provisional 68k dc.w $a1ff
db 0xFF, 0x03 ; 00491A: provisional 68k dc.w $ff03
db 0x0F, 0xCA, 0xDD, 0xDD ; 00491C: provisional 68k movep.l d7, -$2223(a2)
db 0xD9, 0xEE, 0x9E, 0xE9 ; 004920: provisional 68k adda.l -$6117(a6), a4
db 0xDD, 0xD9 ; 004924: provisional 68k adda.l (a1)+, a6
db 0xEE, 0x99 ; 004926: provisional 68k ror.l #$7, d1
db 0x99, 0xEE, 0xD9, 0xE9 ; 004928: provisional 68k suba.l -$2617(a6), a4
db 0x9D, 0xFF ; file 00492C
db 0xFF, 0x02 ; 00492E: provisional 68k dc.w $ff02
db 0x11, 0x1C ; 004930: provisional 68k move.b (a4)+, -(a0)
db 0xAD, 0xD9 ; 004932: provisional 68k dc.w $add9
db 0x9D, 0x99 ; 004934: provisional 68k sub.l d6, (a1)+
db 0x9E, 0xE9, 0xEE, 0xE9 ; 004936: provisional 68k suba.w -$1117(a1), a7
db 0x99, 0x9E ; 00493A: provisional 68k sub.l d4, (a6)+
db 0xEE, 0x9D ; 00493C: provisional 68k ror.l #$7, d5
db 0x9E, 0x9D ; 00493E: provisional 68k sub.l (a5)+, d7
db 0x99, 0xD9 ; 004940: provisional 68k suba.l (a1)+, a4
db 0xD1, 0xFF ; file 004942
db 0xFF, 0x02 ; 004944: provisional 68k dc.w $ff02
db 0x11, 0xCA ; file 004946
db 0xAA, 0xAD ; 004948: provisional 68k dc.w $aaad
db 0xDD, 0x99 ; 00494A: provisional 68k add.l d6, (a1)+
db 0xDE, 0xE9, 0xEE, 0x9E ; 00494C: provisional 68k adda.w -$1162(a1), a7
db 0xEE, 0xEE ; file 004950
db 0xEE, 0x9D ; 004952: provisional 68k ror.l #$7, d5
db 0xDE, 0xEE, 0x99, 0x9D ; 004954: provisional 68k adda.w -$6663(a6), a7
db 0x9A, 0xFF ; file 004958
db 0xFF, 0x01 ; 00495A: provisional 68k dc.w $ff01
db 0x12, 0x1C ; 00495C: provisional 68k move.b (a4)+, d1
db 0xAD, 0xAA ; 00495E: provisional 68k dc.w $adaa
db 0xAA, 0xDD ; 004960: provisional 68k dc.w $aadd
db 0xDD, 0x9E ; 004962: provisional 68k add.l d6, (a6)+
db 0x99, 0xE9, 0x9E, 0xEE ; 004964: provisional 68k suba.l -$6112(a1), a4
db 0xEE, 0xEE ; file 004968
db 0x9E, 0xE9, 0xE9, 0x9E ; 00496A: provisional 68k suba.w -$1662(a1), a7
db 0x9D, 0xDD ; 00496E: provisional 68k suba.l (a5)+, a6
db 0xFF, 0xFF ; 004970: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 004972: provisional 68k btst.l d0, (a2)
db 0xCC, 0xCA ; file 004974
db 0xDA, 0xAA, 0xD9, 0xDD ; 004976: provisional 68k add.l -$2623(a2), d5
db 0xAA, 0xDE ; 00497A: provisional 68k dc.w $aade
db 0x9E, 0xEE, 0xEE, 0xE9 ; 00497C: provisional 68k suba.w -$1117(a6), a7
db 0x9E, 0xEE, 0xEE, 0xAA ; 004980: provisional 68k suba.w -$1156(a6), a7
db 0x9E, 0x9D ; 004984: provisional 68k sub.l (a5)+, d7
db 0x9E, 0xFF ; file 004986
db 0xFF, 0x01 ; 004988: provisional 68k dc.w $ff01
db 0x13, 0xFC, 0xFC, 0xAA, 0xAC, 0xA9, 0xDC, 0xFF ; 00498A: provisional 68k move.b #$aa, $aca9dcff.l
db 0xDE, 0xE9, 0xEE, 0xEE ; 004992: provisional 68k adda.w -$1112(a1), a7
db 0xEE, 0xEE ; file 004996
db 0xEE, 0x9E ; 004998: provisional 68k ror.l #$7, d6
db 0xAD, 0x9E ; 00499A: provisional 68k dc.w $ad9e
db 0x9D, 0xE9, 0xA1, 0xFF ; 00499C: provisional 68k suba.l -$5e01(a1), a6
db 0xFF, 0x00 ; 0049A0: provisional 68k dc.w $ff00
db 0x14, 0x1F ; 0049A2: provisional 68k move.b (a7)+, d2
db 0xCA, 0xCF ; file 0049A4
db 0xCD, 0x9F ; 0049A6: provisional 68k and.l d6, (a7)+
db 0xAA, 0xDE ; 0049A8: provisional 68k dc.w $aade
db 0xEA, 0x9D ; 0049AA: provisional 68k ror.l #$5, d5
db 0xDD, 0xEE, 0xEE, 0xEE ; 0049AC: provisional 68k adda.l -$1112(a6), a6
db 0x9D, 0xDD ; 0049B0: provisional 68k suba.l (a5)+, a6
db 0xAD, 0xDD ; 0049B2: provisional 68k dc.w $addd
db 0x9E, 0x9D ; 0049B4: provisional 68k sub.l (a5)+, d7
db 0xD9, 0xA1 ; 0049B6: provisional 68k add.l d4, -(a1)
db 0xFF, 0xFF ; 0049B8: provisional 68k dc.w $ffff
db 0x00, 0x14, 0x1C, 0xFC ; 0049BA: provisional 68k ori.b #$fc, (a4)
db 0xAC, 0xCD ; 0049BE: provisional 68k dc.w $accd
db 0xDC, 0xAA, 0xAD, 0x99 ; 0049C0: provisional 68k add.l -$5267(a2), d6
db 0xAA, 0xAC ; 0049C4: provisional 68k dc.w $aaac
db 0xAE, 0xEE ; 0049C6: provisional 68k dc.w $aeee
db 0xEE, 0xEE ; file 0049C8
db 0x99, 0xD9 ; 0049CA: provisional 68k suba.l (a1)+, a4
db 0xEE, 0xD9, 0xED, 0xDA, 0xD1, 0xFF ; file 0049CC
db 0xFF, 0x00 ; 0049D2: provisional 68k dc.w $ff00
db 0x14, 0x8C ; file 0049D4
db 0xFF, 0xCC ; 0049D6: provisional 68k dc.w $ffcc
db 0xCA, 0xCC ; file 0049D8
db 0xAA, 0xAC ; 0049DA: provisional 68k dc.w $aaac
db 0xCD, 0xDC ; 0049DC: provisional 68k muls.w (a4)+, d6
db 0xA9, 0xDA ; 0049DE: provisional 68k dc.w $a9da
db 0x9E, 0xEE, 0xE9, 0xDD ; 0049E0: provisional 68k suba.w -$1623(a6), a7
db 0xDE, 0xEE, 0xDD, 0xDA ; 0049E4: provisional 68k adda.w -$2226(a6), a7
db 0xEA, 0xD1 ; file 0049E8
db 0xFF, 0xFF ; 0049EA: provisional 68k dc.w $ffff
db 0x00, 0x14, 0xFF, 0xCC ; 0049EC: provisional 68k ori.b #$cc, (a4)
db 0xFF, 0xAA ; 0049F0: provisional 68k dc.w $ffaa
db 0xFC, 0xAA ; 0049F2: provisional 68k dc.w $fcaa
db 0xAA, 0xCA ; 0049F4: provisional 68k dc.w $aaca
db 0xAF, 0xDE ; 0049F6: provisional 68k dc.w $afde
db 0xAC, 0xAD ; 0049F8: provisional 68k dc.w $acad
db 0xAA, 0xA9 ; 0049FA: provisional 68k dc.w $aaa9
db 0xE9, 0xEE, 0xEE, 0xDA ; file 0049FC
db 0xDA, 0xED, 0xD1, 0xFF ; 004A00: provisional 68k adda.w -$2e01(a5), a5
db 0xFF, 0x00 ; 004A04: provisional 68k dc.w $ff00
db 0x14, 0xFF ; file 004A06
db 0xFC, 0xFF ; 004A08: provisional 68k dc.w $fcff
db 0xCC, 0xCC ; file 004A0A
db 0xCC, 0xAD, 0xAA, 0xAC ; 004A0C: provisional 68k and.l -$5554(a5), d6
db 0xA9, 0xAC ; 004A10: provisional 68k dc.w $a9ac
db 0xD9, 0xDC ; 004A12: provisional 68k adda.l (a4)+, a4
db 0xCE, 0xEE, 0xEE, 0xE9 ; 004A14: provisional 68k mulu.w -$1117(a6), d7
db 0xAD, 0x9A ; 004A18: provisional 68k dc.w $ad9a
db 0x9D, 0xDC ; 004A1A: provisional 68k suba.l (a4)+, a6
db 0xFF, 0xFF ; 004A1C: provisional 68k dc.w $ffff
db 0x00, 0x14, 0xFF, 0xFC ; 004A1E: provisional 68k ori.b #$fc, (a4)
db 0xCC, 0xC8, 0xCC, 0xCC ; file 004A22
db 0xCA, 0xAD, 0xAA, 0xAA ; 004A26: provisional 68k and.l -$5556(a5), d5
db 0xD9, 0x9D ; 004A2A: provisional 68k add.l d4, (a5)+
db 0xED, 0xA9 ; 004A2C: provisional 68k lsl.l d6, d1
db 0xEE, 0x9D ; 004A2E: provisional 68k ror.l #$7, d5
db 0xDD, 0xD9 ; 004A30: provisional 68k adda.l (a1)+, a6
db 0xEA, 0xDA ; file 004A32
db 0xAC, 0xFF ; 004A34: provisional 68k dc.w $acff
db 0xFF, 0x00 ; 004A36: provisional 68k dc.w $ff00
db 0x14, 0xFF ; file 004A38
db 0xFC, 0xCC ; 004A3A: provisional 68k dc.w $fccc
db 0xCF, 0xCC ; file 004A3C
db 0xAA, 0xCF ; 004A3E: provisional 68k dc.w $aacf
db 0xCC, 0xFC, 0xAA, 0xAA ; 004A40: provisional 68k mulu.w #$aaaa, d6
db 0xAA, 0xAD ; 004A44: provisional 68k dc.w $aaad
db 0xE9, 0xDD, 0xED, 0xDE ; file 004A46
db 0xDD, 0xED, 0xAA, 0xAC ; 004A4A: provisional 68k adda.l -$5554(a5), a6
db 0xFF, 0xFF ; 004A4E: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8F, 0xFF ; 004A50: provisional 68k ori.b #$ff, (a5)
db 0xFF, 0xFC ; 004A54: provisional 68k dc.w $fffc
db 0xCC, 0xCC ; file 004A56
db 0xCF, 0xFC, 0xFC, 0xCA ; 004A58: provisional 68k muls.w #$fcca, d7
db 0xAA, 0xAA ; 004A5C: provisional 68k dc.w $aaaa
db 0xDD, 0xDD ; 004A5E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 004A60: provisional 68k adda.l (a5)+, a6
db 0xD9, 0xAD, 0xED, 0xAD ; 004A62: provisional 68k add.l d4, -$1253(a5)
db 0xCF, 0xAA, 0xFF, 0xFF ; 004A66: provisional 68k and.l d7, -$1(a2)
db 0x00, 0x15, 0x8F, 0xFF ; 004A6A: provisional 68k ori.b #$ff, (a5)
db 0xFF, 0xFC ; 004A6E: provisional 68k dc.w $fffc
db 0xCF, 0xFF ; file 004A70
db 0xCA, 0xAA, 0xCF, 0xFC ; 004A72: provisional 68k and.l -$3004(a2), d5
db 0xAA, 0xAD ; 004A76: provisional 68k dc.w $aaad
db 0xDD, 0xDD ; 004A78: provisional 68k adda.l (a5)+, a6
db 0xCF, 0xFA, 0xAA, 0xFA ; 004A7A: provisional 68k muls.w $fffff576(pc), d7
db 0xE9, 0xD9 ; file 004A7E
db 0x9D, 0xDC ; 004A80: provisional 68k suba.l (a4)+, a6
db 0xFF, 0xFF ; 004A82: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8F, 0xFF ; 004A84: provisional 68k ori.b #$ff, (a5)
db 0xFC, 0xFF ; 004A88: provisional 68k dc.w $fcff
db 0xFF, 0xCF ; 004A8A: provisional 68k dc.w $ffcf
db 0xFC, 0xCC ; 004A8C: provisional 68k dc.w $fccc
db 0xCF, 0xFF ; file 004A8E
db 0xFF, 0xAA ; 004A90: provisional 68k dc.w $ffaa
db 0xAC, 0xAA ; 004A92: provisional 68k dc.w $acaa
db 0xCC, 0x9E ; 004A94: provisional 68k and.l (a6)+, d6
db 0xEE, 0x99 ; 004A96: provisional 68k ror.l #$7, d1
db 0xE9, 0x9D ; 004A98: provisional 68k rol.l #$4, d5
db 0xDA, 0xAF, 0xFF, 0xFF ; 004A9A: provisional 68k add.l -$1(a7), d5
db 0x00, 0x15, 0x1F, 0xCF ; 004A9E: provisional 68k ori.b #$cf, (a5)
db 0xCC, 0xFF ; file 004AA2
db 0xFF, 0xFF ; 004AA4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004AA6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004AA8: provisional 68k dc.w $ffff
db 0xFF, 0xCA ; 004AAA: provisional 68k dc.w $ffca
db 0xAD, 0xDD ; 004AAC: provisional 68k dc.w $addd
db 0x99, 0xEE, 0xEE, 0x99 ; 004AAE: provisional 68k suba.l -$1167(a6), a4
db 0x99, 0xDA ; 004AB2: provisional 68k suba.l (a2)+, a4
db 0xAC, 0xCC ; 004AB4: provisional 68k dc.w $accc
db 0xFF, 0xFF ; 004AB6: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1F, 0xFF ; 004AB8: provisional 68k ori.b #$ff, (a5)
db 0xFF, 0xFF ; 004ABC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004ABE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004AC0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004AC2: provisional 68k dc.w $ffff
db 0xFF, 0xAA ; 004AC4: provisional 68k dc.w $ffaa
db 0xD9, 0x9E ; 004AC6: provisional 68k add.l d4, (a6)+
db 0xEE, 0xE9 ; file 004AC8
db 0x9D, 0xDA ; 004ACA: provisional 68k suba.l (a2)+, a6
db 0xAD, 0xDA ; 004ACC: provisional 68k dc.w $adda
db 0xCF, 0xFF ; file 004ACE
db 0xFF, 0xFF ; 004AD0: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1C, 0xFF ; 004AD2: provisional 68k ori.b #$ff, (a5)
db 0xFF, 0xFF ; 004AD6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004AD8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004ADA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004ADC: provisional 68k dc.w $ffff
db 0xFF, 0xAD ; 004ADE: provisional 68k dc.w $ffad
db 0xDD, 0x99 ; 004AE0: provisional 68k add.l d6, (a1)+
db 0xEE, 0x9D ; 004AE2: provisional 68k ror.l #$7, d5
db 0xAA, 0xAC ; 004AE4: provisional 68k dc.w $aaac
db 0xAD, 0xDC ; 004AE6: provisional 68k dc.w $addc
db 0xFF, 0xCC ; 004AE8: provisional 68k dc.w $ffcc
db 0xFF, 0xFF ; 004AEA: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1C, 0xCF ; 004AEC: provisional 68k ori.b #$cf, (a5)
db 0xFF, 0xFF ; 004AF0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004AF2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004AF4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004AF6: provisional 68k dc.w $ffff
db 0xFF, 0xFD ; 004AF8: provisional 68k dc.w $fffd
db 0xAD, 0x99 ; 004AFA: provisional 68k dc.w $ad99
db 0x99, 0xDD ; 004AFC: provisional 68k suba.l (a5)+, a4
db 0xCC, 0xCA ; file 004AFE
db 0xAC, 0xCF ; 004B00: provisional 68k dc.w $accf
db 0xFC, 0xAC ; 004B02: provisional 68k dc.w $fcac
db 0xFF, 0xFF ; 004B04: provisional 68k dc.w $ffff
db 0x01, 0x15 ; 004B06: provisional 68k btst.l d0, (a5)
db 0xCC, 0xFF ; file 004B08
db 0xFF, 0xFF ; 004B0A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004B0C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004B0E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004B10: provisional 68k dc.w $ffff
db 0xFA, 0xAD ; 004B12: provisional 68k dc.w $faad
db 0x99, 0x9D ; 004B14: provisional 68k sub.l d4, (a5)+
db 0xDA, 0xFF ; file 004B16
db 0xFF, 0xCC ; 004B18: provisional 68k dc.w $ffcc
db 0xFF, 0xCB ; 004B1A: provisional 68k dc.w $ffcb
db 0xBB, 0xFF ; file 004B1C
db 0xFF, 0xFF ; 004B1E: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 004B20: provisional 68k btst.l d0, (a4)
db 0xCC, 0xCF ; file 004B22
db 0xFF, 0xFF ; 004B24: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004B26: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004B28: provisional 68k dc.w $ffff
db 0xFF, 0xFC ; 004B2A: provisional 68k dc.w $fffc
db 0xAD, 0xDD ; 004B2C: provisional 68k dc.w $addd
db 0xDD, 0xEE, 0xBC, 0xFF ; 004B2E: provisional 68k adda.l -$4301(a6), a6
db 0xFF, 0xCC ; 004B32: provisional 68k dc.w $ffcc
db 0xF8, 0xBB ; 004B34: provisional 68k dc.w $f8bb
db 0xBB, 0xFF ; file 004B36
db 0xFF, 0x01 ; 004B38: provisional 68k dc.w $ff01
db 0x14, 0xCC, 0xCC, 0xFF ; file 004B3A
db 0xFF, 0xCF ; 004B3E: provisional 68k dc.w $ffcf
db 0xFF, 0xFF ; 004B40: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004B42: provisional 68k dc.w $ffff
db 0xFC, 0xDD ; 004B44: provisional 68k dc.w $fcdd
db 0xDA, 0xAE, 0xE9, 0xBB ; 004B46: provisional 68k add.l -$1645(a6), d5
db 0xF8, 0xAD ; 004B4A: provisional 68k dc.w $f8ad
db 0xDA, 0xFC, 0xB8, 0x88 ; 004B4C: provisional 68k adda.w #$b888, a5
db 0xFF, 0xFF ; 004B50: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 004B52: provisional 68k btst.l d0, (a4)
db 0xFC, 0xCC ; 004B54: provisional 68k dc.w $fccc
db 0xFF, 0xFC ; 004B56: provisional 68k dc.w $fffc
db 0xCF, 0xFF ; file 004B58
db 0xFF, 0xFF ; 004B5A: provisional 68k dc.w $ffff
db 0xFF, 0xCC ; 004B5C: provisional 68k dc.w $ffcc
db 0xAA, 0xAA ; 004B5E: provisional 68k dc.w $aaaa
db 0xEE, 0x9B ; 004B60: provisional 68k ror.l #$7, d3
db 0x8B, 0x8C ; 004B62: provisional 68k dc.w $8b8c
db 0x9E, 0x9D ; 004B64: provisional 68k sub.l (a5)+, d7
db 0xCA, 0xB8, 0x88, 0xFF ; 004B66: provisional 68k and.l $88ff.w, d5
db 0xFF, 0x01 ; 004B6A: provisional 68k dc.w $ff01
db 0x14, 0x1C ; 004B6C: provisional 68k move.b (a4)+, d2
db 0xCF, 0xFF ; file 004B6E
db 0xFC, 0xFF ; 004B70: provisional 68k dc.w $fcff
db 0xFF, 0xFF ; 004B72: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004B74: provisional 68k dc.w $ffff
db 0xCC, 0xAA, 0xCA, 0xEE ; 004B76: provisional 68k and.l -$3512(a2), d6
db 0xBB, 0x88 ; 004B7A: provisional 68k cmpm.l (a0)+, (a5)+
db 0xCE, 0xE9, 0x99, 0xAA ; 004B7C: provisional 68k mulu.w -$6656(a1), d7
db 0xF8, 0xF1 ; 004B80: provisional 68k dc.w $f8f1
db 0xFF, 0xFF ; 004B82: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xCC, 0xCF ; 004B84: provisional 68k andi.b #$cf, (a3)
db 0xFF, 0xFA ; 004B88: provisional 68k dc.w $fffa
db 0xCF, 0xFF ; file 004B8A
db 0xFF, 0xFF ; 004B8C: provisional 68k dc.w $ffff
db 0xCC, 0xDD ; 004B8E: provisional 68k mulu.w (a5)+, d6
db 0xCB, 0xAA, 0xBB, 0x88 ; 004B90: provisional 68k and.l d5, -$4478(a2)
db 0xDE, 0xE9, 0x9D, 0xAC ; 004B94: provisional 68k adda.w -$6254(a1), a7
db 0xF8, 0xF1 ; 004B98: provisional 68k dc.w $f8f1
db 0xFF, 0xFF ; 004B9A: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xFC, 0xCF ; 004B9C: provisional 68k andi.b #$cf, (a3)
db 0xFF, 0xFA ; 004BA0: provisional 68k dc.w $fffa
db 0xDC, 0xFF ; file 004BA2
db 0xFC, 0xCF ; 004BA4: provisional 68k dc.w $fccf
db 0xCA, 0x99 ; 004BA6: provisional 68k and.l (a1)+, d5
db 0xAC, 0xFC ; 004BA8: provisional 68k dc.w $acfc
db 0xCB, 0x88 ; 004BAA: provisional 68k exg.l d5, a0
db 0x9E, 0xE9, 0xAC, 0xCC ; 004BAC: provisional 68k suba.w -$5334(a1), a7
db 0xCF, 0xF1, 0xFF, 0xFF, 0x02, 0x13, 0xCC, 0xCF ; 004BB0: provisional 68k muls.w ([$213cccf]), d7
db 0xCF, 0xCC, 0xEE, 0xFF, 0xCC, 0xCC ; file 004BB8
db 0xC9, 0xEE, 0xDC, 0xCF ; 004BBE: provisional 68k muls.w -$2331(a6), d4
db 0xFF, 0xF8 ; 004BC2: provisional 68k dc.w $fff8
db 0xEE, 0x9C ; 004BC4: provisional 68k ror.l #$7, d4
db 0x8F, 0xFC, 0xCF, 0xF1 ; 004BC6: provisional 68k divs.w #$cff1, d7
db 0xFF, 0xFF ; 004BCA: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 004BCC: provisional 68k btst.l d1, (a2)
db 0xCF, 0xCC ; file 004BCE
db 0xFC, 0xA9 ; 004BD0: provisional 68k dc.w $fca9
db 0xAA, 0xAA ; 004BD2: provisional 68k dc.w $aaaa
db 0xCA, 0xD9 ; 004BD4: provisional 68k mulu.w (a1)+, d5
db 0x99, 0x9A ; 004BD6: provisional 68k sub.l d4, (a2)+
db 0xF8, 0x88 ; 004BD8: provisional 68k dc.w $f888
db 0x8F, 0xDA ; 004BDA: provisional 68k divs.w (a2)+, d7
db 0xFF, 0xFF ; 004BDC: provisional 68k dc.w $ffff
db 0xFC, 0xCF ; 004BDE: provisional 68k dc.w $fccf
db 0xF1, 0xFF ; 004BE0: provisional 68k dc.w $f1ff
db 0xFF, 0x03 ; 004BE2: provisional 68k dc.w $ff03
db 0x11, 0xAC, 0xFC, 0xFF, 0xFC, 0xCF ; 004BE4: provisional 68k move.b -$301(a4), -$31(a0, a7.l)
db 0xCC, 0x99 ; 004BEA: provisional 68k and.l (a1)+, d6
db 0x99, 0xDD ; 004BEC: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x99 ; 004BEE: provisional 68k add.l d6, (a1)+
db 0xE9, 0xC9, 0xCF, 0xFF ; file 004BF0
db 0xFF, 0xFF ; 004BF4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004BF6: provisional 68k dc.w $ffff
db 0xFF, 0x03 ; 004BF8: provisional 68k dc.w $ff03
db 0x11, 0x1A ; 004BFA: provisional 68k move.b (a2)+, -(a0)
db 0xCF, 0xCC ; file 004BFC
db 0xFC, 0xAC ; 004BFE: provisional 68k dc.w $fcac
db 0xCC, 0xAD, 0xDA, 0xAA ; 004C00: provisional 68k and.l -$2556(a5), d6
db 0xAA, 0x99 ; 004C04: provisional 68k dc.w $aa99
db 0xAC, 0xCD ; 004C06: provisional 68k dc.w $accd
db 0xAF, 0xFF ; 004C08: provisional 68k dc.w $afff
db 0xFF, 0xFF ; 004C0A: provisional 68k dc.w $ffff
db 0xF1, 0xFF ; 004C0C: provisional 68k dc.w $f1ff
db 0xFF, 0x04 ; 004C0E: provisional 68k dc.w $ff04
db 0x10, 0xCC ; file 004C10
db 0xCF, 0xFC, 0xDC, 0xCC ; 004C12: provisional 68k muls.w #$dccc, d7
db 0xCC, 0xCC, 0xCC, 0xCF ; file 004C16
db 0xCC, 0xF8, 0xFF, 0xAC ; 004C1A: provisional 68k mulu.w $ffac.w, d6
db 0xFF, 0xFF ; 004C1E: provisional 68k dc.w $ffff
db 0xFF, 0x88 ; 004C20: provisional 68k dc.w $ff88
db 0xFF, 0xFF ; 004C22: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 004C24
db 0xCC, 0xC1 ; 004C26: provisional 68k mulu.w d1, d6
db 0x1C, 0xAA, 0xAC, 0xCC ; 004C28: provisional 68k move.b -$5334(a2), (a6)
db 0xCC, 0xCC ; file 004C2C
db 0xCF, 0xF8, 0xFC, 0xCC ; 004C2E: provisional 68k muls.w $fccc.w, d7
db 0xCF, 0xFF ; file 004C32
db 0x8F, 0xAF, 0xFF, 0xFF ; 004C34: provisional 68k or.l d7, -$1(a7)
db 0x06, 0x0D, 0x88, 0xCD ; file 004C38
db 0x9C, 0xFC, 0xCC, 0xCC ; 004C3C: provisional 68k suba.w #$cccc, a6
db 0xCC, 0xFF ; file 004C40
db 0xCA, 0xD9 ; 004C42: provisional 68k mulu.w (a1)+, d5
db 0x9C, 0xFF ; file 004C44
db 0xCA, 0x91 ; 004C46: provisional 68k and.l (a1), d5
db 0xFF, 0xFF ; 004C48: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x1F, 0xCF, 0xCF, 0xFF ; file 004C4A
db 0xF8, 0x8C ; 004C50: provisional 68k dc.w $f88c
db 0xCC, 0xF8, 0xC9, 0x99 ; 004C52: provisional 68k mulu.w $c999.w, d6
db 0xE9, 0xA9 ; 004C56: provisional 68k lsl.l d4, d1
db 0xEE, 0xD1 ; file 004C58
db 0xFF, 0xFF ; 004C5A: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x1F, 0xCF ; file 004C5C
db 0xFF, 0xFF ; 004C60: provisional 68k dc.w $ffff
db 0xFF, 0x8C ; 004C62: provisional 68k dc.w $ff8c
db 0xCC, 0xFF ; file 004C64
db 0xC9, 0x99 ; 004C66: provisional 68k and.l d4, (a1)+
db 0xEE, 0xEE, 0xED, 0xDC ; file 004C68
db 0xFF, 0xFF ; 004C6C: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0xFF, 0xFF ; 004C6E: provisional 68k movep.w -$1(a4), d3
db 0xFF, 0xFF ; 004C72: provisional 68k dc.w $ffff
db 0x8C, 0xCF ; file 004C74
db 0xFC, 0x99 ; 004C76: provisional 68k dc.w $fc99
db 0x9E, 0xEE, 0x99, 0xDD ; 004C78: provisional 68k suba.w -$6623(a6), a7
db 0x9C, 0xFF ; file 004C7C
db 0xFF, 0x07 ; 004C7E: provisional 68k dc.w $ff07
db 0x0C, 0xFC ; file 004C80
db 0xFF, 0xFF ; 004C82: provisional 68k dc.w $ffff
db 0xFF, 0x8F ; 004C84: provisional 68k dc.w $ff8f
db 0xCC, 0xCA ; file 004C86
db 0x99, 0x99 ; 004C88: provisional 68k sub.l d4, (a1)+
db 0x9E, 0xE9, 0x99, 0x9C ; 004C8A: provisional 68k suba.w -$6664(a1), a7
db 0xFF, 0xFF ; 004C8E: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1C, 0xFF ; 004C90: provisional 68k movep.w $1cff(a4), d3
db 0xFF, 0xFF ; 004C94: provisional 68k dc.w $ffff
db 0xF8, 0xCC ; 004C96: provisional 68k dc.w $f8cc
db 0xCA, 0xAA, 0xA9, 0x99 ; 004C98: provisional 68k and.l -$5667(a2), d5
db 0xE9, 0x99 ; 004C9C: provisional 68k rol.l #$4, d1
db 0xAF, 0xFF ; 004C9E: provisional 68k dc.w $afff
db 0xFF, 0x07 ; 004CA0: provisional 68k dc.w $ff07
db 0x0C, 0x1C, 0xCF, 0xFF ; 004CA2: provisional 68k cmpi.b #$ff, (a4)+
db 0xCF, 0xF8, 0x8F, 0xFC ; 004CA6: provisional 68k muls.w $8ffc.w, d7
db 0xAC, 0xCA ; 004CAA: provisional 68k dc.w $acca
db 0xD9, 0x9D ; 004CAC: provisional 68k add.l d4, (a5)+
db 0xAA, 0xC1 ; 004CAE: provisional 68k dc.w $aac1
db 0xFF, 0xFF ; 004CB0: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1C, 0xCC ; 004CB2: provisional 68k movep.w $1ccc(a4), d3
db 0xCA, 0xDD ; 004CB6: provisional 68k mulu.w (a5)+, d5
db 0xCF, 0x88 ; 004CB8: provisional 68k exg.l d7, a0
db 0x8F, 0xCC ; file 004CBA
db 0xCC, 0xAA, 0xAA, 0xCC ; 004CBC: provisional 68k and.l -$5534(a2), d6
db 0xF1, 0xFF ; 004CC0: provisional 68k dc.w $f1ff
db 0xFF, 0x07 ; 004CC2: provisional 68k dc.w $ff07
db 0x0B, 0x1C ; 004CC4: provisional 68k btst.l d5, (a4)+
db 0xCF, 0xCA ; file 004CC6
db 0x9E, 0xED, 0xC8, 0x88 ; 004CC8: provisional 68k suba.w -$3778(a5), a7
db 0x88, 0xBC, 0xCC, 0xAC, 0xCC, 0xFF ; 004CCC: provisional 68k or.l #$ccacccff, d4
db 0xFF, 0x07 ; 004CD2: provisional 68k dc.w $ff07
db 0x0C, 0x1C, 0xCF, 0xCC ; 004CD4: provisional 68k cmpi.b #$cc, (a4)+
db 0xAE, 0xEE ; 004CD8: provisional 68k dc.w $aeee
db 0xEC, 0x88 ; 004CDA: provisional 68k lsr.l #$6, d0
db 0x88, 0x88, 0x8F, 0xCF ; file 004CDC
db 0xFF, 0xC1 ; 004CE0: provisional 68k dc.w $ffc1
db 0xFF, 0xFF ; 004CE2: provisional 68k dc.w $ffff
db 0x08, 0x0B ; file 004CE4
db 0xCC, 0xFC, 0xCD, 0xEE ; 004CE6: provisional 68k mulu.w #$cdee, d6
db 0xEE, 0xEA ; file 004CEA
db 0xFF, 0xF8 ; 004CEC: provisional 68k dc.w $fff8
db 0x88, 0xFF ; file 004CEE
db 0xFF, 0xF1 ; 004CF0: provisional 68k dc.w $fff1
db 0xFF, 0xFF ; 004CF2: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0x1C, 0xCC ; file 004CF4
db 0xCC, 0xA9, 0xEE, 0xE9 ; 004CF8: provisional 68k and.l -$1117(a1), d6
db 0x9A, 0xCF ; 004CFC: provisional 68k suba.w a7, a5
db 0xF8, 0xFF ; 004CFE: provisional 68k dc.w $f8ff
db 0xFF, 0xF1 ; 004D00: provisional 68k dc.w $fff1
db 0xFF, 0xFF ; 004D02: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xCC, 0xCC ; 004D04: provisional 68k movep.w -$3334(a2), d4
db 0xCA, 0xAD, 0x99, 0x9D ; 004D08: provisional 68k and.l -$6663(a5), d5
db 0xCC, 0xCC ; file 004D0C
db 0xFC, 0xCF ; 004D0E: provisional 68k dc.w $fccf
db 0xF1, 0xFF ; 004D10: provisional 68k dc.w $f1ff
db 0xFF, 0x09 ; 004D12: provisional 68k dc.w $ff09
db 0x0A, 0x1F, 0xCC, 0xCC ; 004D14: provisional 68k eori.b #$cc, (a7)+
db 0xCC, 0xAA, 0xAA, 0xAA ; 004D18: provisional 68k and.l -$5556(a2), d6
db 0xAC, 0xCA ; 004D1C: provisional 68k dc.w $acca
db 0xCC, 0xF1, 0xFF, 0xFF, 0x0A, 0x08, 0xFC, 0xCC ; 004D1E: provisional 68k mulu.w ([$a08fccc]), d6
db 0xFF, 0xCC ; 004D26: provisional 68k dc.w $ffcc
db 0xCA, 0xAA, 0xAA, 0xDD ; 004D28: provisional 68k and.l -$5523(a2), d5
db 0xAA, 0xFF ; 004D2C: provisional 68k dc.w $aaff
db 0xFF, 0x0B ; 004D2E: provisional 68k dc.w $ff0b
db 0x07, 0xCC, 0xCC, 0xFF ; 004D30: provisional 68k movep.l d3, -$3301(a4)
db 0xFC, 0xCA ; 004D34: provisional 68k dc.w $fcca
db 0x99, 0x99 ; 004D36: provisional 68k sub.l d4, (a1)+
db 0xDC, 0xFF ; file 004D38
db 0xFF, 0x0C ; 004D3A: provisional 68k dc.w $ff0c
db 0x06, 0xCC ; 004D3C: provisional 68k dc.w $6cc
db 0xCC, 0xFF ; file 004D3E
db 0xFA, 0xAD ; 004D40: provisional 68k dc.w $faad
db 0xDD, 0xA1 ; 004D42: provisional 68k add.l d6, -(a1)
db 0xFF, 0xFF ; 004D44: provisional 68k dc.w $ffff
db 0x0D, 0x04 ; 004D46: provisional 68k btst.l d6, d4
db 0xCC, 0xCC ; file 004D48
db 0xCF, 0xFC, 0xFF, 0xFF ; 004D4A: provisional 68k muls.w #$ffff, d7
db 0xFF, 0x0E ; 004D4E: provisional 68k dc.w $ff0e
db 0x03, 0xFC, 0xCC, 0xCC ; file 004D50
db 0xF1, 0xFF ; 004D54: provisional 68k dc.w $f1ff
db 0xFF, 0xFF ; 004D56: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004D58: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 004D5A: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 004D5C: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 004D60: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 004D66
db 0x10, 0x10 ; 004D6A: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 004D6C: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 004D6E: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 004D70: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 004D72: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 004D76: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 004D7A: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 004D7C: provisional 68k neg.w d4
db 0x24, 0x1C ; 004D7E: provisional 68k move.l (a4)+, d2
db 0x18, 0xC0 ; 004D80: provisional 68k move.b d0, (a4)+
db 0x88, 0x6C, 0x78, 0x60 ; 004D82: provisional 68k or.w $7860(a4), d4
db 0x4C, 0x00 ; file 004D86
db 0x34, 0x68, 0x4C, 0x3C ; 004D88: provisional 68k movea.w $4c3c(a0), a2
db 0x34, 0xA8, 0x84, 0x70 ; 004D8C: provisional 68k move.w -$7b90(a0), (a2)
db 0xDC, 0xAC, 0x8C, 0x88 ; 004D90: provisional 68k add.l -$7378(a4), d6
db 0x78, 0x6C ; 004D94: provisional 68k moveq #$6c, d4
db 0xFF, 0xFF ; 004D96: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 004D98: provisional 68k dc.w $ffff
db 0x09, 0x05 ; 004D9A: provisional 68k btst.l d4, d5
db 0x1C, 0xAA, 0xAF, 0xFA ; 004D9C: provisional 68k move.b -$5006(a2), (a6)
db 0xAA, 0xC1 ; 004DA0: provisional 68k dc.w $aac1
db 0xFF, 0xFF ; 004DA2: provisional 68k dc.w $ffff
db 0x07, 0x09, 0xCA, 0xAA ; 004DA4: provisional 68k movep.w -$3556(a1), d3
db 0xD9, 0x99 ; 004DA8: provisional 68k add.l d4, (a1)+
db 0xD9, 0x9E ; 004DAA: provisional 68k add.l d4, (a6)+
db 0xE9, 0x9D ; 004DAC: provisional 68k rol.l #$4, d5
db 0xFA, 0xC1 ; 004DAE: provisional 68k dc.w $fac1
db 0xFF, 0xFF ; 004DB0: provisional 68k dc.w $ffff
db 0x06, 0x0B ; file 004DB2
db 0xAF, 0xDD ; 004DB4: provisional 68k dc.w $afdd
db 0xD9, 0x99 ; 004DB6: provisional 68k add.l d4, (a1)+
db 0xD9, 0xE9, 0xD9, 0xEE ; 004DB8: provisional 68k adda.l -$2612(a1), a4
db 0x9D, 0xDD ; 004DBC: provisional 68k suba.l (a5)+, a6
db 0xDF, 0xC1 ; 004DBE: provisional 68k adda.l d1, a7
db 0xFF, 0xFF ; 004DC0: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0xAD, 0xD9 ; 004DC2: provisional 68k movep.w -$5227(a4), d2
db 0xE9, 0x9E ; 004DC6: provisional 68k rol.l #$4, d6
db 0x99, 0x99 ; 004DC8: provisional 68k sub.l d4, (a1)+
db 0x9E, 0x99 ; 004DCA: provisional 68k sub.l (a1)+, d7
db 0x99, 0xEE, 0x99, 0xE9 ; 004DCC: provisional 68k suba.l -$6617(a6), a4
db 0xDA, 0xFF ; file 004DD0
db 0xFF, 0x04 ; 004DD2: provisional 68k dc.w $ff04
db 0x0E, 0xCF ; file 004DD4
db 0xD9, 0x99 ; 004DD6: provisional 68k add.l d4, (a1)+
db 0x9E, 0xE9, 0xEE, 0xE9 ; 004DD8: provisional 68k suba.w -$1117(a1), a7
db 0x99, 0xEE, 0x99, 0x9E ; 004DDC: provisional 68k suba.l -$6662(a6), a4
db 0xEE, 0x99 ; 004DE0: provisional 68k ror.l #$7, d1
db 0x99, 0xF1, 0xFF, 0xFF, 0x03, 0x0F, 0x1A, 0xFF ; 004DE2: provisional 68k suba.l ([$30f1aff]), a4
db 0x99, 0xDD ; 004DEA: provisional 68k suba.l (a5)+, a4
db 0xD9, 0xE9, 0xEE, 0x99 ; 004DEC: provisional 68k adda.l -$1167(a1), a4
db 0x99, 0x9E ; 004DF0: provisional 68k sub.l d4, (a6)+
db 0xEE, 0x9D ; 004DF2: provisional 68k ror.l #$7, d5
db 0xEE, 0x99 ; 004DF4: provisional 68k ror.l #$7, d1
db 0x99, 0x9D ; 004DF6: provisional 68k sub.l d4, (a5)+
db 0xFF, 0xFF ; 004DF8: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 004DFA: provisional 68k btst.l d1, (a0)
db 0xAF, 0xAA ; 004DFC: provisional 68k dc.w $afaa
db 0xDD, 0xD9 ; 004DFE: provisional 68k adda.l (a1)+, a6
db 0xDF, 0xEE, 0x9E, 0x9D ; 004E00: provisional 68k adda.l -$6163(a6), a7
db 0x99, 0x9E ; 004E04: provisional 68k sub.l d4, (a6)+
db 0xEE, 0x99 ; 004E06: provisional 68k ror.l #$7, d1
db 0x9E, 0xE9, 0xE9, 0xD9 ; 004E08: provisional 68k suba.w -$1627(a1), a7
db 0xA1, 0xFF ; 004E0C: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 004E0E: provisional 68k dc.w $ff02
db 0x11, 0x1C ; 004E10: provisional 68k move.b (a4)+, -(a0)
db 0xAF, 0xFA ; 004E12: provisional 68k dc.w $affa
db 0xAD, 0x9D ; 004E14: provisional 68k dc.w $ad9d
db 0xD9, 0xEE, 0x99, 0x9E ; 004E16: provisional 68k adda.l -$6662(a6), a4
db 0xEE, 0xE9 ; file 004E1A
db 0x99, 0x9E ; 004E1C: provisional 68k sub.l d4, (a6)+
db 0x99, 0xD9 ; 004E1E: provisional 68k suba.l (a1)+, a4
db 0xEE, 0xD9 ; file 004E20
db 0xA1, 0xFF ; 004E22: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 004E24: provisional 68k dc.w $ff02
db 0x11, 0xCC, 0xCF, 0xFF ; file 004E26
db 0xAD, 0x9D ; 004E2A: provisional 68k dc.w $ad9d
db 0xAA, 0xAD ; 004E2C: provisional 68k dc.w $aaad
db 0x99, 0xEE, 0xEE, 0xEE ; 004E2E: provisional 68k suba.l -$1112(a6), a4
db 0xEE, 0xEE ; file 004E32
db 0x9D, 0xAF, 0x9E, 0x9D ; 004E34: provisional 68k sub.l d6, -$6163(a7)
db 0x9C, 0xFF ; file 004E38
db 0xFF, 0x01 ; 004E3A: provisional 68k dc.w $ff01
db 0x12, 0x1C ; 004E3C: provisional 68k move.b (a4)+, d1
db 0xCC, 0x8C ; file 004E3E
db 0xAF, 0x8A ; 004E40: provisional 68k dc.w $af8a
db 0xDD, 0x9D ; 004E42: provisional 68k add.l d6, (a5)+
db 0xAD, 0xE9 ; 004E44: provisional 68k dc.w $ade9
db 0x9E, 0xEE, 0xEE, 0x99 ; 004E46: provisional 68k suba.w -$1167(a6), a7
db 0x9D, 0xDD ; 004E4A: provisional 68k suba.l (a5)+, a6
db 0xF9, 0xEE ; 004E4C: provisional 68k dc.w $f9ee
db 0xEE, 0x9A ; 004E4E: provisional 68k ror.l #$7, d2
db 0xFF, 0xFF ; 004E50: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 004E52: provisional 68k btst.l d0, (a2)
db 0x88, 0x8C ; file 004E54
db 0xAC, 0xCF ; 004E56: provisional 68k dc.w $accf
db 0x8C, 0xAF, 0xDD, 0xDA ; 004E58: provisional 68k or.l -$2226(a7), d6
db 0xFA, 0xAE ; 004E5C: provisional 68k dc.w $faae
db 0xEE, 0xEE ; file 004E5E
db 0xEE, 0x99 ; 004E60: provisional 68k ror.l #$7, d1
db 0xD9, 0x99 ; 004E62: provisional 68k add.l d4, (a1)+
db 0x9E, 0x9D ; 004E64: provisional 68k sub.l (a5)+, d7
db 0xFF, 0xFF ; 004E66: provisional 68k dc.w $ffff
db 0xFF, 0x01 ; 004E68: provisional 68k dc.w $ff01
db 0x12, 0x88 ; file 004E6A
db 0x8C, 0xAA, 0xCC, 0x8C ; 004E6C: provisional 68k or.l -$3374(a2), d6
db 0xAA, 0xAA ; 004E70: provisional 68k dc.w $aaaa
db 0xDA, 0xAA, 0xF9, 0x9E ; 004E72: provisional 68k add.l -$662(a2), d5
db 0xEE, 0xE9 ; file 004E76
db 0xDD, 0xDE ; 004E78: provisional 68k adda.l (a6)+, a6
db 0xE9, 0xD9 ; file 004E7A
db 0x99, 0xAF, 0xFF, 0xFF ; 004E7C: provisional 68k sub.l d4, -$1(a7)
db 0x01, 0x12 ; 004E80: provisional 68k btst.l d0, (a2)
db 0x88, 0xCC, 0x8C, 0xCC ; file 004E82
db 0xCA, 0xAA, 0xAA, 0xAA ; 004E86: provisional 68k and.l -$5556(a2), d5
db 0xA9, 0x9A ; 004E8A: provisional 68k dc.w $a99a
db 0xA9, 0xD9 ; 004E8C: provisional 68k dc.w $a9d9
db 0x99, 0xE9, 0x9E, 0xED ; 004E8E: provisional 68k suba.l -$6113(a1), a4
db 0xFF, 0xD9 ; 004E92: provisional 68k dc.w $ffd9
db 0xAF, 0xFF ; 004E94: provisional 68k dc.w $afff
db 0xFF, 0x01 ; 004E96: provisional 68k dc.w $ff01
db 0x12, 0x88, 0x88, 0x88 ; file 004E98
db 0xAA, 0xAA ; 004E9C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 004E9E: provisional 68k dc.w $aaaa
db 0xAC, 0xAD ; 004EA0: provisional 68k dc.w $acad
db 0xDA, 0xA9, 0xDC, 0xCE ; 004EA2: provisional 68k add.l -$2332(a1), d5
db 0xEE, 0xEE, 0x9A, 0xFD ; file 004EA6
db 0xA9, 0xAA ; 004EAA: provisional 68k dc.w $a9aa
db 0xFF, 0xFF ; 004EAC: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 004EAE: provisional 68k btst.l d0, (a3)
db 0x88, 0x88, 0xCC, 0xC8, 0xCC, 0xCC ; file 004EB0
db 0xAA, 0xAA ; 004EB6: provisional 68k dc.w $aaaa
db 0xAA, 0xD9 ; 004EB8: provisional 68k dc.w $aad9
db 0x99, 0xEA, 0xC9, 0xE9 ; 004EBA: provisional 68k suba.l -$3617(a2), a4
db 0xDD, 0xDF ; 004EBE: provisional 68k adda.l (a7)+, a6
db 0x9E, 0xDD ; 004EC0: provisional 68k suba.w (a5)+, a7
db 0xAA, 0x88 ; 004EC2: provisional 68k dc.w $aa88
db 0xFF, 0xFF ; 004EC4: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 004EC6: provisional 68k btst.l d0, (a4)
db 0x88, 0x88, 0xCC, 0xC8 ; file 004EC8
db 0x8C, 0xAC, 0x88, 0x8C ; 004ECC: provisional 68k or.l -$7774(a4), d6
db 0xAA, 0xAA ; 004ED0: provisional 68k dc.w $aaaa
db 0xFA, 0xAD ; 004ED2: provisional 68k dc.w $faad
db 0xE9, 0xD9, 0xEE, 0xE9 ; file 004ED4
db 0xD9, 0xDA ; 004ED8: provisional 68k adda.l (a2)+, a4
db 0xAC, 0xCF ; 004EDA: provisional 68k dc.w $accf
db 0xDC, 0xFF ; file 004EDC
db 0xFF, 0x01 ; 004EDE: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0xC8, 0xCC, 0xCC ; file 004EE0
db 0xCC, 0xAA, 0xA8, 0x8C ; 004EE6: provisional 68k and.l -$5774(a2), d6
db 0xAA, 0xAA ; 004EEA: provisional 68k dc.w $aaaa
db 0xAD, 0x9D ; 004EEC: provisional 68k dc.w $ad9d
db 0xAA, 0xA9 ; 004EEE: provisional 68k dc.w $aaa9
db 0x9A, 0xA9, 0x9F, 0xDD ; 004EF0: provisional 68k sub.l -$6023(a1), d5
db 0xDD, 0xFC, 0xFF, 0xFF, 0x01, 0x14 ; 004EF4: provisional 68k adda.l #$ffff0114, a6
db 0x88, 0x88, 0x88, 0x8C, 0xCC, 0xC8 ; file 004EFA
db 0xCA, 0xAC, 0x88, 0xAA ; 004F00: provisional 68k and.l -$7756(a4), d5
db 0xAA, 0xFF ; 004F04: provisional 68k dc.w $aaff
db 0xFF, 0xAC ; 004F06: provisional 68k dc.w $ffac
db 0xFD, 0xD9 ; 004F08: provisional 68k dc.w $fdd9
db 0xD9, 0xED, 0xDD, 0xDA ; 004F0A: provisional 68k adda.l -$2226(a5), a4
db 0xA8, 0xFF ; 004F0E: provisional 68k dc.w $a8ff
db 0xFF, 0x00 ; 004F10: provisional 68k dc.w $ff00
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8C, 0x88, 0x88 ; file 004F12
db 0xAA, 0xFD ; 004F1E: provisional 68k dc.w $aafd
db 0xDD, 0xDD ; 004F20: provisional 68k adda.l (a5)+, a6
db 0xED, 0xDE ; file 004F22
db 0xDD, 0xDD ; 004F24: provisional 68k adda.l (a5)+, a6
db 0xFA, 0xAC ; 004F26: provisional 68k dc.w $faac
db 0xCC, 0xFF ; file 004F28
db 0xFF, 0x00 ; 004F2A: provisional 68k dc.w $ff00
db 0x15, 0x8C, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004F2C
db 0xAA, 0xDD ; 004F38: provisional 68k dc.w $aadd
db 0xDE, 0xEE, 0xED, 0xDD ; 004F3A: provisional 68k adda.w -$1223(a6), a7
db 0xDF, 0xFD ; file 004F3E
db 0xFA, 0xC8 ; 004F40: provisional 68k dc.w $fac8
db 0x88, 0xFF ; file 004F42
db 0xFF, 0x00 ; 004F44: provisional 68k dc.w $ff00
db 0x15, 0x8C, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004F46
db 0xAD, 0xDD ; 004F52: provisional 68k dc.w $addd
db 0xDE, 0xEE, 0xDD, 0xAA ; 004F54: provisional 68k adda.w -$2256(a6), a7
db 0xAC, 0xAF ; 004F58: provisional 68k dc.w $acaf
db 0xFC, 0x88 ; 004F5A: provisional 68k dc.w $fc88
db 0xC8, 0xFF ; file 004F5C
db 0xFF, 0x00 ; 004F5E: provisional 68k dc.w $ff00
db 0x15, 0x1C ; 004F60: provisional 68k move.b (a4)+, -(a2)
db 0xC8, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F, 0xFD ; file 004F62
db 0x99, 0x99 ; 004F6E: provisional 68k sub.l d4, (a1)+
db 0xDF, 0xCC ; 004F70: provisional 68k adda.l a4, a7
db 0xCC, 0xAA, 0xC8, 0x8C ; 004F72: provisional 68k and.l -$3774(a2), d6
db 0xFA, 0xFF ; 004F76: provisional 68k dc.w $faff
db 0xFF, 0x00 ; 004F78: provisional 68k dc.w $ff00
db 0x15, 0x1C ; 004F7A: provisional 68k move.b (a4)+, -(a2)
db 0xCC, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8A, 0xFD ; file 004F7C
db 0x99, 0x9D ; 004F88: provisional 68k sub.l d4, (a5)+
db 0xAA, 0x88 ; 004F8A: provisional 68k dc.w $aa88
db 0x8C, 0xCC ; file 004F8C
db 0x88, 0xBB, 0xBD, 0xFF, 0xFF, 0x01, 0x15, 0xCC ; 004F8E: provisional 68k or.l ([$ff01655c]), d4
db 0xCC, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 004F96
db 0x8C, 0xAF, 0xFF, 0xD9 ; 004F9E: provisional 68k or.l -$27(a7), d6
db 0xDF, 0xFA, 0x88, 0x88 ; 004FA2: provisional 68k adda.l $ffffd82c(pc), a7
db 0xCC, 0x88 ; file 004FA6
db 0xC8, 0xBB, 0xCC, 0xFF ; 004FA8: provisional 68k and.l $4fa9(pc, a4.l), d4
db 0xFF, 0x01 ; 004FAC: provisional 68k dc.w $ff01
db 0x15, 0xCC, 0xCC, 0x88 ; file 004FAE
db 0x88, 0xA8, 0x88, 0x88 ; 004FB2: provisional 68k or.l -$7778(a0), d4
db 0x88, 0x8C ; file 004FB6
db 0x8C, 0xAD, 0xDA, 0xAF ; 004FB8: provisional 68k or.l -$2551(a5), d6
db 0xFB, 0xBD ; 004FBC: provisional 68k dc.w $fbbd
db 0xC8, 0xAD, 0xDA, 0x8B ; 004FBE: provisional 68k and.l -$2575(a5), d4
db 0x88, 0xBB, 0x88, 0xFF ; 004FC2: provisional 68k or.l $4fc3(pc, a0.l), d4
db 0xFF, 0x01 ; 004FC6: provisional 68k dc.w $ff01
db 0x14, 0x1C ; 004FC8: provisional 68k move.b (a4)+, d2
db 0xCC, 0x88, 0x88, 0xC8, 0x88, 0x88, 0x88, 0x88 ; file 004FCA
db 0xCC, 0xAA, 0xCA, 0x9B ; 004FD2: provisional 68k and.l -$3565(a2), d6
db 0xBB, 0xBB ; file 004FD6
db 0xCA, 0xDE ; 004FD8: provisional 68k mulu.w (a6)+, d5
db 0xE9, 0xCB, 0xBB, 0xBB ; file 004FDA
db 0xFF, 0xFF ; 004FDE: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 004FE0: provisional 68k btst.l d0, (a4)
db 0x1C, 0xC8, 0xC8, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8C, 0xCC ; file 004FE2
db 0xAA, 0x8F ; 004FEC: provisional 68k dc.w $aa8f
db 0xDB, 0xB8, 0x8B, 0xA9 ; 004FEE: provisional 68k add.l d5, $8ba9.w
db 0xE9, 0xE9 ; file 004FF2
db 0xAC, 0xBB ; 004FF4: provisional 68k dc.w $acbb
db 0xB8, 0xFF ; file 004FF6
db 0xFF, 0x02 ; 004FF8: provisional 68k dc.w $ff02
db 0x13, 0xCC, 0xC8, 0x88, 0x8C, 0x88, 0x88, 0x88, 0x88, 0xCC ; file 004FFA
db 0xAD, 0xCC ; 005004: provisional 68k dc.w $adcc
db 0xFB, 0xBB ; 005006: provisional 68k dc.w $fbbb
db 0x88, 0xFE ; file 005008
db 0xE9, 0x9F ; 00500A: provisional 68k rol.l #$4, d7
db 0xAC, 0x88 ; 00500C: provisional 68k dc.w $ac88
db 0x88, 0xFF ; file 00500E
db 0xFF, 0x02 ; 005010: provisional 68k dc.w $ff02
db 0x13, 0x8C, 0xC8, 0x88 ; file 005012
db 0x8A, 0xFC, 0x88, 0x8C ; 005016: provisional 68k divu.w #$888c, d5
db 0xC8, 0xCA ; file 00501A
db 0xD9, 0xAC, 0xCC, 0xBB ; 00501C: provisional 68k add.l d4, -$3345(a4)
db 0x88, 0x9E ; 005020: provisional 68k or.l (a6)+, d4
db 0xED, 0xAC ; 005022: provisional 68k lsl.l d6, d4
db 0x8C, 0xC8, 0x88, 0xFF ; file 005024
db 0xFF, 0x02 ; 005028: provisional 68k dc.w $ff02
db 0x13, 0x1C ; 00502A: provisional 68k move.b (a4)+, -(a1)
db 0xCC, 0xCC ; file 00502C
db 0xCC, 0xEE, 0x88, 0xCC ; 00502E: provisional 68k mulu.w -$7734(a6), d6
db 0xCC, 0xA9, 0xE9, 0xAC ; 005032: provisional 68k and.l -$1654(a1), d6
db 0xCC, 0x88 ; file 005036
db 0x88, 0xEE, 0x9C, 0x88 ; 005038: provisional 68k divu.w -$6378(a6), d4
db 0x8C, 0xC8, 0x88, 0xFF ; file 00503C
db 0xFF, 0x02 ; 005040: provisional 68k dc.w $ff02
db 0x13, 0x88, 0xC8, 0xCC ; file 005042
db 0xC8, 0xAD, 0xFA, 0xAA ; 005046: provisional 68k and.l -$556(a5), d4
db 0xCA, 0xD9 ; 00504A: provisional 68k mulu.w (a1)+, d5
db 0xEE, 0x9A ; 00504C: provisional 68k ror.l #$7, d2
db 0x88, 0x88 ; file 00504E
db 0x8C, 0x9F ; 005050: provisional 68k or.l (a7)+, d6
db 0x88, 0xC8, 0x8C, 0x88, 0x88, 0xFF ; file 005052
db 0xFF, 0x03 ; 005058: provisional 68k dc.w $ff03
db 0x12, 0xAC, 0xCC, 0x88 ; 00505A: provisional 68k move.b -$3378(a4), (a1)
db 0x8C, 0xC8 ; file 00505E
db 0xCA, 0x9E ; 005060: provisional 68k and.l (a6)+, d5
db 0x99, 0xDD ; 005062: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x99 ; 005064: provisional 68k add.l d6, (a1)+
db 0x9A, 0xA9, 0xC8, 0x88 ; 005066: provisional 68k sub.l -$3778(a1), d5
db 0x88, 0x88, 0x88, 0x88 ; file 00506A
db 0xFF, 0xFF ; 00506E: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 005070: provisional 68k btst.l d1, (a1)
db 0x1A, 0xC8, 0xCC, 0x8C ; file 005072
db 0xAC, 0xCC ; 005076: provisional 68k dc.w $accc
db 0xAF, 0xFA ; 005078: provisional 68k dc.w $affa
db 0xAA, 0xAA ; 00507A: provisional 68k dc.w $aaaa
db 0x99, 0xAC, 0xCF, 0xA8 ; 00507C: provisional 68k sub.l d4, -$3058(a4)
db 0x88, 0x88, 0x88, 0x88 ; file 005080
db 0xFF, 0xFF ; 005084: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 005086: provisional 68k btst.l d1, (a0)
db 0x1C, 0xCC, 0xC8, 0x8C ; file 005088
db 0xFC, 0xCC ; 00508C: provisional 68k dc.w $fccc
db 0xCC, 0xCC, 0xCC, 0xC8, 0xCC, 0x88 ; file 00508E
db 0x88, 0xA8, 0x88, 0x88 ; 005094: provisional 68k or.l -$7778(a0), d4
db 0x88, 0xFF ; file 005098
db 0xFF, 0x04 ; 00509A: provisional 68k dc.w $ff04
db 0x0F, 0xC8, 0xA1, 0x1C ; 00509C: provisional 68k movep.l d7, -$5ee4(a0)
db 0xAF, 0xAC ; 0050A0: provisional 68k dc.w $afac
db 0xCC, 0xCC, 0xCC, 0xC8, 0x88, 0x8C, 0xCC, 0xC8, 0x88, 0x88 ; file 0050A2
db 0xA8, 0xFF ; 0050AC: provisional 68k dc.w $a8ff
db 0xFF, 0x06 ; 0050AE: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xCD, 0xDC ; 0050B0: provisional 68k movep.w d6, -$3224(a0)
db 0xCC, 0xCC, 0xCC, 0xCC, 0x88, 0xCF ; file 0050B4
db 0xFD, 0xDC ; 0050BA: provisional 68k dc.w $fddc
db 0x88, 0xCF, 0xD8, 0xFF ; file 0050BC
db 0xFF, 0x06 ; 0050C0: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xC8, 0xC8 ; 0050C2: provisional 68k movep.w d6, -$3738(a0)
db 0x88, 0x88, 0x8C, 0xCC, 0x88, 0xCD ; file 0050C6
db 0xDD, 0xED, 0xFD, 0xEE ; 0050CC: provisional 68k adda.l -$212(a5), a6
db 0xF1, 0xFF ; 0050D0: provisional 68k dc.w $f1ff
db 0xFF, 0x07 ; 0050D2: provisional 68k dc.w $ff07
db 0x0C, 0xC8, 0x88, 0x88, 0x88, 0x8C, 0xCC, 0x88 ; file 0050D4
db 0xCD, 0xDD ; 0050DC: provisional 68k muls.w (a5)+, d6
db 0xEE, 0xEE, 0xED, 0xFC ; file 0050DE
db 0xFF, 0xFF ; 0050E2: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x88, 0x88 ; 0050E4: provisional 68k movep.w -$7778(a4), d3
db 0x88, 0x88, 0x8C, 0xCC ; file 0050E8
db 0x8C, 0xDE ; 0050EC: provisional 68k divu.w (a6)+, d6
db 0xDE, 0xEE, 0xED, 0xDD ; 0050EE: provisional 68k adda.w -$1223(a6), a7
db 0xDC, 0xFF ; file 0050F2
db 0xFF, 0x07 ; 0050F4: provisional 68k dc.w $ff07
db 0x0C, 0x8C, 0x88, 0x88, 0x88, 0x88, 0xCC, 0xCF ; file 0050F6
db 0xDD, 0xDE ; 0050FE: provisional 68k adda.l (a6)+, a6
db 0xDE, 0xED, 0xDE, 0x9C ; 005100: provisional 68k adda.w -$2164(a5), a7
db 0xFF, 0xFF ; 005104: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8C, 0x88 ; 005106: provisional 68k movep.w -$7378(a4), d3
db 0x88, 0x88, 0x88, 0xCC ; file 00510A
db 0xCA, 0xAA, 0xAD, 0xD9 ; 00510E: provisional 68k and.l -$5227(a2), d5
db 0xEE, 0xDD ; file 005112
db 0xF1, 0xFF ; 005114: provisional 68k dc.w $f1ff
db 0xFF, 0x07 ; 005116: provisional 68k dc.w $ff07
db 0x0C, 0x8C, 0xC8, 0x88, 0xCC, 0x88, 0x88, 0x8C ; file 005118
db 0xAC, 0xCF ; 005120: provisional 68k dc.w $accf
db 0xFF, 0xFF ; 005122: provisional 68k dc.w $ffff
db 0xFA, 0xC1 ; 005124: provisional 68k dc.w $fac1
db 0xFF, 0xFF ; 005126: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1C, 0xCC ; 005128: provisional 68k movep.w $1ccc(a4), d3
db 0xCA, 0xDF ; 00512C: provisional 68k mulu.w (a7)+, d5
db 0xC8, 0x88, 0x88, 0xCC ; file 00512E
db 0xCC, 0xAF, 0xFA, 0xCC ; 005132: provisional 68k and.l -$534(a7), d6
db 0x88, 0xFF ; file 005136
db 0xFF, 0x07 ; 005138: provisional 68k dc.w $ff07
db 0x0B, 0x1C ; 00513A: provisional 68k btst.l d5, (a4)+
db 0xC8, 0xCA, 0xEE, 0xEF, 0xC8, 0x88 ; file 00513C
db 0x88, 0xBC, 0xCC, 0xAC, 0xCC, 0xFF ; 005142: provisional 68k or.l #$ccacccff, d4
db 0xFF, 0x07 ; 005148: provisional 68k dc.w $ff07
db 0x0C, 0x1C, 0xC8, 0xCC ; 00514A: provisional 68k cmpi.b #$cc, (a4)+
db 0xFE, 0xEE ; 00514E: provisional 68k dc.w $feee
db 0xEC, 0x88 ; 005150: provisional 68k lsr.l #$6, d0
db 0x88, 0x88, 0x88, 0xC8 ; file 005152
db 0x88, 0xC1 ; 005156: provisional 68k divu.w d1, d4
db 0xFF, 0xFF ; 005158: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0xCC, 0xC8 ; file 00515A
db 0xCD, 0xEE, 0xEE, 0xEF ; 00515E: provisional 68k muls.w -$1111(a6), d6
db 0x88, 0x88, 0x88, 0x8C, 0x88, 0x88 ; file 005162
db 0xFF, 0xFF ; 005168: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0x1C, 0xCC ; file 00516A
db 0xCC, 0xAD, 0xEE, 0xEE ; 00516E: provisional 68k and.l -$1112(a5), d6
db 0xDF, 0xC8 ; 005172: provisional 68k adda.l a0, a7
db 0x88, 0x88, 0x88, 0x88 ; file 005174
db 0xFF, 0xFF ; 005178: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xCC, 0xCC ; 00517A: provisional 68k movep.w -$3334(a2), d4
db 0xCA, 0xAF, 0xDD, 0xDF ; 00517E: provisional 68k and.l -$2221(a7), d5
db 0xCC, 0xCC, 0x88, 0xC8, 0x88, 0xFF ; file 005182
db 0xFF, 0x09 ; 005188: provisional 68k dc.w $ff09
db 0x09, 0x88, 0xCC, 0xCC ; 00518A: provisional 68k movep.w d4, -$3334(a0)
db 0xCC, 0xFA, 0xAA, 0xAA ; 00518E: provisional 68k mulu.w $fffffc3a(pc), d6
db 0xAC, 0xCA ; 005192: provisional 68k dc.w $acca
db 0xCC, 0xFF ; file 005194
db 0xFF, 0x0A ; 005196: provisional 68k dc.w $ff0a
db 0x08, 0x1C, 0xCC, 0x88, 0xCC, 0xCA ; file 005198
db 0xAA, 0xAA ; 00519E: provisional 68k dc.w $aaaa
db 0xFD, 0xFA ; 0051A0: provisional 68k dc.w $fdfa
db 0xFF, 0xFF ; 0051A2: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 0051A4: provisional 68k btst.l d5, d7
db 0xCC, 0xCC, 0x88, 0x8C ; file 0051A6
db 0xCA, 0xD9 ; 0051AA: provisional 68k mulu.w (a1)+, d5
db 0xDD, 0xFC, 0xFF, 0xFF, 0x0C, 0x06 ; 0051AC: provisional 68k adda.l #$ffff0c06, a6
db 0xCC, 0xCC, 0xC8, 0x8A ; file 0051B2
db 0xAF, 0xFF ; 0051B6: provisional 68k dc.w $afff
db 0xA1, 0xFF ; 0051B8: provisional 68k dc.w $a1ff
db 0xFF, 0x0D ; 0051BA: provisional 68k dc.w $ff0d
db 0x04, 0xCA, 0xCC, 0xC8, 0x8C, 0x88 ; file 0051BC
db 0xFF, 0xFF ; 0051C2: provisional 68k dc.w $ffff
db 0x0E, 0x03, 0x8C, 0xCC, 0xCC, 0x88 ; file 0051C4
db 0xFF, 0xFF ; 0051CA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0051CC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0051CE: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0051D0: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 0051D4: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 0051DA
db 0x10, 0x10 ; 0051DE: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0051E0: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0051E2: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0051E4: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0051E6: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0051EA: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0051EE: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0051F0: provisional 68k neg.w d4
db 0x1C, 0x18 ; 0051F2: provisional 68k move.b (a0)+, d6
db 0x10, 0x84 ; 0051F4: provisional 68k move.b d4, (a0)
db 0x60, 0x54 ; 0051F6: provisional 68k bra.b $524c
db 0x00, 0x38, 0x68, 0x48, 0x44, 0x40 ; 0051F8: provisional 68k ori.b #$48, $4440.w
db 0x40, 0x3C ; file 0051FE
db 0x34, 0xC0 ; 005200: provisional 68k move.w d0, (a2)+
db 0x98, 0x78, 0x40, 0x44 ; 005202: provisional 68k sub.w $4044.w, d4
db 0x64, 0x34 ; 005206: provisional 68k bcc.b $523c
db 0x2C, 0x28, 0xFF, 0xFF ; 005208: provisional 68k move.l -$1(a0), d6
db 0xFF, 0xFF ; 00520C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00520E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005210: provisional 68k dc.w $ffff
db 0x09, 0x05 ; 005212: provisional 68k btst.l d4, d5
db 0xEC, 0xB9 ; 005214: provisional 68k ror.l d6, d1
db 0x99, 0x99 ; 005216: provisional 68k sub.l d4, (a1)+
db 0x9B, 0xBC ; file 005218
db 0xFF, 0xFF ; 00521A: provisional 68k dc.w $ffff
db 0x07, 0x09, 0xCB, 0x99 ; 00521C: provisional 68k movep.w -$3467(a1), d3
db 0x99, 0x9D ; 005220: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 005222: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 005224: provisional 68k add.l d6, (a1)+
db 0x9B, 0xB1, 0xFF, 0xFF, 0x05, 0x0C, 0x1F, 0xB9 ; 005226: provisional 68k sub.l d5, ([$50c1fb9])
db 0x9D, 0xDD ; 00522E: provisional 68k suba.l (a5)+, a6
db 0xD9, 0xDD ; 005230: provisional 68k adda.l (a5)+, a4
db 0xD9, 0xDD ; 005232: provisional 68k adda.l (a5)+, a4
db 0xDD, 0xDD ; 005234: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 005236: provisional 68k adda.l (a3)+, a6
db 0xF1, 0xFF ; 005238: provisional 68k dc.w $f1ff
db 0xFF, 0x05 ; 00523A: provisional 68k dc.w $ff05
db 0x0C, 0xB9, 0x9D, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD ; 00523C: provisional 68k cmpi.l #$9ddddddd, $dddddddd.l
db 0xDD, 0xDD ; 005246: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x9B ; 005248: provisional 68k add.l d6, (a3)+
db 0xFF, 0xFF ; 00524A: provisional 68k dc.w $ffff
db 0x04, 0x0E ; file 00524C
db 0x1B, 0x9D, 0xD9, 0xDD ; 00524E: provisional 68k move.b (a5)+, ([])
db 0xDD, 0xDD ; 005252: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9D ; 005254: provisional 68k add.l d4, (a5)+
db 0xDD, 0xDD ; 005256: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005258: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00525A: provisional 68k adda.l (a5)+, a6
db 0x91, 0xFF ; file 00525C
db 0xFF, 0x04 ; 00525E: provisional 68k dc.w $ff04
db 0x0E, 0x99 ; file 005260
db 0x99, 0xD9 ; 005262: provisional 68k suba.l (a1)+, a4
db 0xDD, 0x9D ; 005264: provisional 68k add.l d6, (a5)+
db 0xDD, 0xDD ; 005266: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005268: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 00526A: provisional 68k adda.l (a1)+, a6
db 0xDD, 0xDD ; 00526C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 00526E: provisional 68k adda.l (a3)+, a6
db 0xFF, 0xFF ; 005270: provisional 68k dc.w $ffff
db 0x03, 0x0F, 0x1B, 0x99 ; 005272: provisional 68k movep.w $1b99(a7), d1
db 0x99, 0x9D ; 005276: provisional 68k sub.l d4, (a5)+
db 0x99, 0x9D ; 005278: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 00527A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00527C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00527E: provisional 68k adda.l (a5)+, a6
db 0x9D, 0x9D ; 005280: provisional 68k sub.l d6, (a5)+
db 0xDD, 0xD9 ; 005282: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 005284: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 005286: provisional 68k btst.l d1, (a0)
db 0xCB, 0x99 ; 005288: provisional 68k and.l d5, (a1)+
db 0x99, 0x9D ; 00528A: provisional 68k sub.l d4, (a5)+
db 0xD9, 0x99 ; 00528C: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 00528E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005290: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005292: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9D ; 005294: provisional 68k add.l d4, (a5)+
db 0xDD, 0xDD ; 005296: provisional 68k adda.l (a5)+, a6
db 0xF1, 0xFF ; 005298: provisional 68k dc.w $f1ff
db 0xFF, 0x02 ; 00529A: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 00529C
db 0xBB, 0xF9, 0x9F, 0xBD, 0xDD, 0x99 ; 00529E: provisional 68k cmpa.l $9fbddd99.l, a5
db 0xDD, 0xDD ; 0052A4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0052A6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0052A8: provisional 68k adda.l (a5)+, a6
db 0xD9, 0xDD ; 0052AA: provisional 68k adda.l (a5)+, a4
db 0xDD, 0xDD ; 0052AC: provisional 68k adda.l (a5)+, a6
db 0x91, 0xFF ; file 0052AE
db 0xFF, 0x02 ; 0052B0: provisional 68k dc.w $ff02
db 0x11, 0x88, 0xC9, 0xBC ; file 0052B2
db 0x9F, 0xC9 ; 0052B6: provisional 68k suba.l a1, a7
db 0x99, 0xD9 ; 0052B8: provisional 68k suba.l (a1)+, a4
db 0x99, 0x9D ; 0052BA: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 0052BC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 0052BE: provisional 68k adda.l (a1)+, a6
db 0xDD, 0xDD ; 0052C0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 0052C2: provisional 68k add.l d6, (a1)+
db 0x91, 0xFF ; file 0052C4
db 0xFF, 0x02 ; 0052C6: provisional 68k dc.w $ff02
db 0x11, 0x1F ; 0052C8: provisional 68k move.b (a7)+, -(a0)
db 0xFB, 0x9C ; 0052CA: provisional 68k dc.w $fb9c
db 0xBF, 0xC9 ; 0052CC: provisional 68k cmpa.l a1, a7
db 0x99, 0x9D ; 0052CE: provisional 68k sub.l d4, (a5)+
db 0xB9, 0x99 ; 0052D0: provisional 68k eor.l d4, (a1)+
db 0xDD, 0xDD ; 0052D2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 0052D4: provisional 68k add.l d6, (a1)+
db 0xDD, 0xDD ; 0052D6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 0052D8: provisional 68k add.l d6, (a1)+
db 0x91, 0xFF ; file 0052DA
db 0xFF, 0x02 ; 0052DC: provisional 68k dc.w $ff02
db 0x11, 0x1F ; 0052DE: provisional 68k move.b (a7)+, -(a0)
db 0xCF, 0xFC, 0xBC, 0xB9 ; 0052E0: provisional 68k muls.w #$bcb9, d7
db 0x99, 0xBD ; file 0052E4
db 0xB9, 0xD9 ; 0052E6: provisional 68k cmpa.l (a1)+, a4
db 0xB9, 0x9D ; 0052E8: provisional 68k eor.l d4, (a5)+
db 0x9D, 0xDD ; 0052EA: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 0052EC: provisional 68k adda.l (a5)+, a6
db 0x99, 0xD9 ; 0052EE: provisional 68k suba.l (a1)+, a4
db 0x98, 0xFF ; file 0052F0
db 0xFF, 0x02 ; 0052F2: provisional 68k dc.w $ff02
db 0x12, 0x1F ; 0052F4: provisional 68k move.b (a7)+, d1
db 0xCF, 0x8C ; 0052F6: provisional 68k exg.l d7, a4
db 0x99, 0x99 ; 0052F8: provisional 68k sub.l d4, (a1)+
db 0xB9, 0x99 ; 0052FA: provisional 68k eor.l d4, (a1)+
db 0xCB, 0x99 ; 0052FC: provisional 68k and.l d5, (a1)+
db 0xBD, 0xDB ; 0052FE: provisional 68k cmpa.l (a3)+, a6
db 0x9D, 0xDD ; 005300: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 005302: provisional 68k adda.l (a5)+, a6
db 0x99, 0xD9 ; 005304: provisional 68k suba.l (a1)+, a4
db 0x9B, 0x88 ; 005306: provisional 68k subx.l -(a0), -(a5)
db 0xFF, 0xFF ; 005308: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1F, 0xFF ; 00530A: provisional 68k andi.b #$ff, (a3)
db 0xFB, 0x8F ; 00530E: provisional 68k dc.w $fb8f
db 0xCB, 0xBB ; file 005310
db 0x9B, 0x99 ; 005312: provisional 68k sub.l d5, (a1)+
db 0x99, 0xDD ; 005314: provisional 68k suba.l (a5)+, a4
db 0xD9, 0x99 ; 005316: provisional 68k add.l d4, (a1)+
db 0xD9, 0x99 ; 005318: provisional 68k add.l d4, (a1)+
db 0x99, 0xDD ; 00531A: provisional 68k suba.l (a5)+, a4
db 0x9B, 0xBB ; file 00531C
db 0x9D, 0xDB ; 00531E: provisional 68k suba.l (a3)+, a6
db 0xFF, 0xFF ; 005320: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1F, 0x88 ; 005322: provisional 68k andi.b #$88, (a3)
db 0xCB, 0xFC, 0xBB, 0xCF ; 005326: provisional 68k muls.w #$bbcf, d5
db 0xF8, 0xB9 ; 00532A: provisional 68k dc.w $f8b9
db 0x99, 0x99 ; 00532C: provisional 68k sub.l d4, (a1)+
db 0x99, 0xDD ; 00532E: provisional 68k suba.l (a5)+, a4
db 0xD9, 0x9D ; 005330: provisional 68k add.l d4, (a5)+
db 0xD9, 0xDD ; 005332: provisional 68k adda.l (a5)+, a4
db 0x99, 0x99 ; 005334: provisional 68k sub.l d4, (a1)+
db 0xDD, 0x9C ; 005336: provisional 68k add.l d6, (a4)+
db 0xFF, 0xFF ; 005338: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x8F, 0xFF ; 00533A: provisional 68k andi.b #$ff, (a3)
db 0x88, 0xCC, 0x88, 0x8B ; file 00533E
db 0x99, 0x8F ; 005342: provisional 68k subx.l -(a7), -(a4)
db 0x99, 0x99 ; 005344: provisional 68k sub.l d4, (a1)+
db 0x99, 0xDD ; 005346: provisional 68k suba.l (a5)+, a4
db 0x99, 0xDD ; 005348: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 00534A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00534C: provisional 68k adda.l (a5)+, a6
db 0x9B, 0xBF ; file 00534E
db 0xFF, 0xFF ; 005350: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1B, 0x88 ; 005352: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88 ; file 005356
db 0x88, 0xF8, 0x88, 0x8F ; 005358: provisional 68k divu.w $888f.w, d4
db 0xB9, 0x88 ; 00535C: provisional 68k cmpm.l (a0)+, (a4)+
db 0x88, 0x99 ; 00535E: provisional 68k or.l (a1)+, d4
db 0xDD, 0xDD ; 005360: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005362: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005364: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 005366: provisional 68k add.l d6, (a1)+
db 0x9C, 0xCF ; 005368: provisional 68k suba.w a7, a6
db 0xFF, 0xFF ; 00536A: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x89, 0xF8 ; 00536C: provisional 68k ori.b #$f8, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005370
db 0x88, 0xB9, 0xDD, 0xDD, 0xDD, 0xDD ; 005378: provisional 68k or.l $dddddddd.l, d4
db 0xD9, 0x99 ; 00537E: provisional 68k add.l d4, (a1)+
db 0x99, 0x9B ; 005380: provisional 68k sub.l d4, (a3)+
db 0xBF, 0xFF ; file 005382
db 0xFF, 0xFF ; 005384: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8C, 0xF8 ; 005386: provisional 68k ori.b #$f8, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00538A
db 0x88, 0xB9, 0x99, 0xDD, 0xDD, 0xD9 ; 005392: provisional 68k or.l $99ddddd9.l, d4
db 0x99, 0x9B ; 005398: provisional 68k sub.l d4, (a3)+
db 0xB9, 0x9B ; 00539A: provisional 68k eor.l d4, (a3)+
db 0xF8, 0xFF ; 00539C: provisional 68k dc.w $f8ff
db 0xFF, 0xFF ; 00539E: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1F, 0xCF ; 0053A0: provisional 68k ori.b #$cf, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x89 ; file 0053A4
db 0x99, 0xDD ; 0053AE: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x99 ; 0053B0: provisional 68k add.l d6, (a1)+
db 0xBB, 0xCC ; 0053B2: provisional 68k cmpa.l a4, a5
db 0xBB, 0xB8, 0x8B, 0xDE ; 0053B4: provisional 68k eor.l d5, $8bde.w
db 0xFF, 0xFF ; 0053B8: provisional 68k dc.w $ffff
db 0x00, 0x16, 0x1F, 0xFC ; 0053BA: provisional 68k ori.b #$fc, (a6)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0053BE
db 0x88, 0xFB, 0x99, 0xDD ; 0053C6: provisional 68k divu.w ([$53c8]), d4
db 0xD9, 0x9B ; 0053CA: provisional 68k add.l d4, (a3)+
db 0xFF, 0xFF ; 0053CC: provisional 68k dc.w $ffff
db 0xCC, 0x8A ; file 0053CE
db 0x8E, 0xDD ; 0053D0: provisional 68k divu.w (a5)+, d7
db 0xEE, 0xFF ; file 0053D2
db 0xFF, 0x01 ; 0053D4: provisional 68k dc.w $ff01
db 0x15, 0xFC ; file 0053D6
db 0xFF, 0x88 ; 0053D8: provisional 68k dc.w $ff88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0053DA
db 0xFC, 0x99 ; 0053E0: provisional 68k dc.w $fc99
db 0x99, 0xDD ; 0053E2: provisional 68k suba.l (a5)+, a4
db 0x9D, 0xDB ; 0053E4: provisional 68k suba.l (a3)+, a6
db 0xFF, 0xFF ; 0053E6: provisional 68k dc.w $ffff
db 0xCF, 0x88 ; 0053E8: provisional 68k exg.l d7, a0
db 0x8A, 0xED, 0xFF, 0xFF ; 0053EA: provisional 68k divu.w -$1(a5), d5
db 0xFF, 0x01 ; 0053EE: provisional 68k dc.w $ff01
db 0x14, 0xCC ; file 0053F0
db 0xFF, 0x88 ; 0053F2: provisional 68k dc.w $ff88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 0053F4
db 0xFC, 0x99 ; 0053FA: provisional 68k dc.w $fc99
db 0x99, 0x8F ; 0053FC: provisional 68k subx.l -(a7), -(a4)
db 0xEE, 0xED ; file 0053FE
db 0xB8, 0xB9, 0x99, 0x88, 0x8A, 0xAE ; 005400: provisional 68k cmp.l $99888aae.l, d4
db 0xFF, 0xFF ; 005406: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 005408: provisional 68k btst.l d0, (a4)
db 0x1C, 0xCF, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00540A
db 0x8F, 0xFC, 0x99, 0xBE ; 005412: provisional 68k divs.w #$99be, d7
db 0x88, 0xAA, 0xAD, 0xBB ; 005416: provisional 68k or.l -$5245(a2), d4
db 0xDD, 0xD9 ; 00541A: provisional 68k adda.l (a1)+, a6
db 0xF8, 0x88 ; 00541C: provisional 68k dc.w $f888
db 0xFF, 0xFF ; 00541E: provisional 68k dc.w $ffff
db 0xFF, 0x01 ; 005420: provisional 68k dc.w $ff01
db 0x14, 0x1B ; 005422: provisional 68k move.b (a3)+, d2
db 0xBF, 0x88 ; 005424: provisional 68k cmpm.l (a0)+, (a7)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 005426
db 0xFB, 0x99 ; 00542C: provisional 68k dc.w $fb99
db 0xFE, 0xA8 ; 00542E: provisional 68k dc.w $fea8
db 0x88, 0xAE, 0x9D, 0xDD ; 005430: provisional 68k or.l -$6223(a6), d4
db 0xDD, 0x98 ; 005434: provisional 68k add.l d6, (a0)+
db 0x88, 0x88 ; file 005436
db 0xFF, 0xFF ; 005438: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xCF, 0xF8 ; 00543A: provisional 68k andi.b #$f8, (a3)
db 0x88, 0x8C, 0x88, 0x88, 0x88, 0x8F ; file 00543E
db 0xFB, 0x99 ; 005444: provisional 68k dc.w $fb99
db 0xBB, 0xAA, 0xAA, 0xAF ; 005446: provisional 68k eor.l d5, -$5551(a2)
db 0x9D, 0xDD ; 00544A: provisional 68k suba.l (a5)+, a6
db 0xD9, 0x98 ; 00544C: provisional 68k add.l d4, (a0)+
db 0x88, 0xF8, 0xFF, 0xFF ; 00544E: provisional 68k divu.w $ffff.w, d4
db 0x02, 0x13, 0xFC, 0xF8 ; 005452: provisional 68k andi.b #$f8, (a3)
db 0x88, 0x89, 0x9B, 0xFF ; file 005456
db 0xFF, 0xFF ; 00545A: provisional 68k dc.w $ffff
db 0xC9, 0xDD ; 00545C: provisional 68k muls.w (a5)+, d4
db 0x9C, 0xEA, 0xAA, 0x88 ; 00545E: provisional 68k suba.w -$5578(a2), a6
db 0xDD, 0xDD ; 005462: provisional 68k adda.l (a5)+, a6
db 0x9C, 0xFB, 0xF8, 0xF8 ; 005464: provisional 68k suba.w $545e(pc, a7.l), a6
db 0xFF, 0xFF ; 005468: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1B, 0xCF ; 00546A: provisional 68k andi.b #$cf, (a3)
db 0xFF, 0xCC ; 00546E: provisional 68k dc.w $ffcc
db 0xDD, 0xFF ; file 005470
db 0xFC, 0xCF ; 005472: provisional 68k dc.w $fccf
db 0xBD, 0xDD ; 005474: provisional 68k cmpa.l (a5)+, a6
db 0x9E, 0xEF, 0x88, 0x88 ; 005476: provisional 68k suba.w -$7778(a7), a7
db 0xDD, 0xDC ; 00547A: provisional 68k adda.l (a4)+, a6
db 0x8F, 0x8B ; 00547C: provisional 68k dc.w $8f8b
db 0xCF, 0xF8, 0xFF, 0xFF ; 00547E: provisional 68k muls.w $ffff.w, d7
db 0x02, 0x13, 0x1F, 0xBF ; 005482: provisional 68k andi.b #$bf, (a3)
db 0xFF, 0xFF ; 005486: provisional 68k dc.w $ffff
db 0x9D, 0x9B ; 005488: provisional 68k sub.l d6, (a3)+
db 0x9B, 0xB9, 0x9D, 0xDD, 0xD9, 0x88 ; 00548A: provisional 68k sub.l d5, $9dddd988.l
db 0x88, 0x8D ; file 005490
db 0xD9, 0xF8, 0xF8, 0x8F ; 005492: provisional 68k adda.l $f88f.w, a4
db 0xF8, 0xF8 ; 005496: provisional 68k dc.w $f8f8
db 0xFF, 0xFF ; 005498: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 00549A: provisional 68k btst.l d1, (a2)
db 0xBC, 0xFF ; file 00549C
db 0xFF, 0xFC ; 00549E: provisional 68k dc.w $fffc
db 0xCF, 0xFB, 0xDD, 0xDD ; 0054A0: provisional 68k muls.w ([$54a2]), d7
db 0x99, 0x99 ; 0054A4: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0054A6: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xC8 ; 0054A8: provisional 68k suba.l a0, a6
db 0x88, 0x88 ; file 0054AA
db 0x8F, 0x8F ; 0054AC: provisional 68k dc.w $8f8f
db 0x88, 0xFF ; file 0054AE
db 0xFF, 0x03 ; 0054B0: provisional 68k dc.w $ff03
db 0x12, 0xFB, 0xCF, 0xCB, 0x8F, 0x9C, 0xFC, 0xB9 ; 0054B2: provisional 68k move.b ([$54b4], $8f9cfcb9), (a1)+
db 0x99, 0x99 ; 0054BA: provisional 68k sub.l d4, (a1)+
db 0x99, 0xD9 ; 0054BC: provisional 68k suba.l (a1)+, a4
db 0xBC, 0x99 ; 0054BE: provisional 68k cmp.l (a1)+, d6
db 0xB8, 0x88 ; 0054C0: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x88 ; file 0054C2
db 0xFF, 0xFF ; 0054C6: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 0054C8: provisional 68k btst.l d1, (a1)
db 0x1F, 0xBB, 0xBF, 0x8B, 0x9B, 0xFC, 0xFC, 0xCC, 0xCC, 0xCF ; 0054CA: provisional 68k move.b ([$54cc, a3.l * 8], $9bfcfccc), -$31(a7, a4.l)
db 0xCB, 0x88 ; 0054D4: provisional 68k exg.l d5, a0
db 0xFF, 0xBF ; 0054D6: provisional 68k dc.w $ffbf
db 0x88, 0x88 ; file 0054D8
db 0x8F, 0x88 ; 0054DA: provisional 68k dc.w $8f88
db 0xFF, 0xFF ; 0054DC: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 0054DE
db 0xFF, 0xB8 ; 0054E0: provisional 68k dc.w $ffb8
db 0x1F, 0xB9, 0x9C, 0xBC, 0xFC, 0xFF, 0xF8, 0x88 ; 0054E2: provisional 68k move.b $9cbcfcff.l, -$78(a7, a7.l)
db 0x8F, 0xCC ; file 0054EA
db 0xBF, 0x88 ; 0054EC: provisional 68k cmpm.l (a0)+, (a7)+
db 0x8F, 0xB8, 0xFF, 0xFF ; 0054EE: provisional 68k or.l d7, $ffff.w
db 0x05, 0x0E, 0xC1, 0x88 ; 0054F2: provisional 68k movep.w -$3e78(a6), d2
db 0xC9, 0x9F ; 0054F6: provisional 68k and.l d4, (a7)+
db 0xFC, 0xCF ; 0054F8: provisional 68k dc.w $fccf
db 0xCB, 0xBC ; file 0054FA
db 0xF8, 0xF9 ; 0054FC: provisional 68k dc.w $f8f9
db 0x9D, 0xDB ; 0054FE: provisional 68k suba.l (a3)+, a6
db 0x88, 0xC9, 0xD1, 0xFF ; file 005500
db 0xFF, 0x06 ; 005504: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xCF, 0xC8 ; 005506: provisional 68k movep.w d6, -$3038(a0)
db 0x88, 0x88, 0x8B, 0xBC, 0x88, 0xCD ; file 00550A
db 0xDD, 0xDD ; 005510: provisional 68k adda.l (a5)+, a6
db 0x9D, 0xDD ; 005512: provisional 68k suba.l (a5)+, a6
db 0x91, 0xFF ; file 005514
db 0xFF, 0x07 ; 005516: provisional 68k dc.w $ff07
db 0x0C, 0xC8, 0x88, 0x88 ; file 005518
db 0xF8, 0x8B ; 00551C: provisional 68k dc.w $f88b
db 0xFF, 0x88 ; 00551E: provisional 68k dc.w $ff88
db 0xBD, 0xDD ; 005520: provisional 68k cmpa.l (a5)+, a6
db 0xDD, 0xDD ; 005522: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9B ; 005524: provisional 68k add.l d4, (a3)+
db 0xFF, 0xFF ; 005526: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x88, 0x88 ; 005528: provisional 68k movep.w -$7778(a4), d3
db 0x88, 0xF8, 0x8B, 0xBF ; 00552C: provisional 68k divu.w $8bbf.w, d4
db 0xFB, 0xDD ; 005530: provisional 68k dc.w $fbdd
db 0xDD, 0xDD ; 005532: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 005534: provisional 68k add.l d6, (a1)+
db 0xDC, 0xFF ; file 005536
db 0xFF, 0x07 ; 005538: provisional 68k dc.w $ff07
db 0x0C, 0x8F, 0x88, 0x88 ; file 00553A
db 0xF8, 0x88 ; 00553E: provisional 68k dc.w $f888
db 0xBC, 0xB9, 0xDD, 0xDD, 0xDD, 0xDD ; 005540: provisional 68k cmp.l $dddddddd.l, d6
db 0xDD, 0xDB ; 005546: provisional 68k adda.l (a3)+, a6
db 0xFF, 0xFF ; 005548: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0xF8 ; 00554A: provisional 68k movep.w -$7408(a4), d3
db 0x88, 0x88 ; file 00554E
db 0x88, 0xEB, 0xB9, 0x99 ; 005550: provisional 68k divu.w -$4667(a3), d4
db 0x9D, 0xDD ; 005554: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 005556: provisional 68k adda.l (a5)+, a6
db 0x9F, 0xFF ; file 005558
db 0xFF, 0x07 ; 00555A: provisional 68k dc.w $ff07
db 0x0C, 0x8B ; file 00555C
db 0xFF, 0x8F ; 00555E: provisional 68k dc.w $ff8f
db 0xCF, 0x88 ; 005560: provisional 68k exg.l d7, a0
db 0x8F, 0x8C ; 005562: provisional 68k dc.w $8f8c
db 0xBB, 0xC9 ; 005564: provisional 68k cmpa.l a1, a5
db 0x99, 0x99 ; 005566: provisional 68k sub.l d4, (a1)+
db 0x99, 0xC1 ; 005568: provisional 68k suba.l d1, a4
db 0xFF, 0xFF ; 00556A: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0xFF ; 00556C: provisional 68k movep.w -$7401(a4), d3
db 0xFB, 0x99 ; 005570: provisional 68k dc.w $fb99
db 0xF8, 0x88 ; 005572: provisional 68k dc.w $f888
db 0x88, 0xFF ; file 005574
db 0xBB, 0xEE, 0xEE, 0xBB ; 005576: provisional 68k cmpa.l -$1145(a6), a5
db 0x88, 0xFF ; file 00557A
db 0xFF, 0x07 ; 00557C: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 00557E: provisional 68k btst.l d5, (a3)+
db 0xBF, 0xB9, 0xDD, 0xD9, 0xB8, 0x88 ; 005580: provisional 68k eor.l d7, $ddd9b888.l
db 0x88, 0xAC, 0xFB, 0x9B ; 005586: provisional 68k or.l -$465(a4), d4
db 0xCC, 0xFF ; file 00558A
db 0xFF, 0x07 ; 00558C: provisional 68k dc.w $ff07
db 0x0C, 0x1B, 0xBF, 0xFC ; 00558E: provisional 68k cmpi.b #$fc, (a3)+
db 0x9D, 0xDD ; 005592: provisional 68k suba.l (a5)+, a6
db 0xDC, 0x88 ; 005594: provisional 68k add.l a0, d6
db 0x88, 0x88, 0x8F, 0xCF ; file 005596
db 0x8F, 0xC1 ; 00559A: provisional 68k divs.w d1, d7
db 0xFF, 0xFF ; 00559C: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0xBB, 0xFF ; file 00559E
db 0xB9, 0xDD ; 0055A2: provisional 68k cmpa.l (a5)+, a4
db 0xDD, 0xD9 ; 0055A4: provisional 68k adda.l (a1)+, a6
db 0xF8, 0xF8 ; 0055A6: provisional 68k dc.w $f8f8
db 0x88, 0xFF ; file 0055A8
db 0x88, 0xF1, 0xFF, 0xFF, 0x08, 0x0B, 0x1B, 0xBF ; 0055AA: provisional 68k divu.w ([$80b1bbf]), d4
db 0xFB, 0x9D ; 0055B2: provisional 68k dc.w $fb9d
db 0xDD, 0xDD ; 0055B4: provisional 68k adda.l (a5)+, a6
db 0xD9, 0xC8 ; 0055B6: provisional 68k adda.l a0, a4
db 0x88, 0x8F ; file 0055B8
db 0xF8, 0x88 ; 0055BA: provisional 68k dc.w $f888
db 0xFF, 0xFF ; 0055BC: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xBB, 0xCF ; 0055BE: provisional 68k movep.w -$4431(a2), d4
db 0xF9, 0x99 ; 0055C2: provisional 68k dc.w $f999
db 0xDD, 0xD9 ; 0055C4: provisional 68k adda.l (a1)+, a6
db 0xBB, 0xBC ; file 0055C6
db 0xFF, 0xCF ; 0055C8: provisional 68k dc.w $ffcf
db 0x88, 0xFF ; file 0055CA
db 0xFF, 0x09 ; 0055CC: provisional 68k dc.w $ff09
db 0x0A, 0x1F, 0xCB, 0xFC ; 0055CE: provisional 68k eori.b #$fc, (a7)+
db 0xFB, 0x99 ; 0055D2: provisional 68k dc.w $fb99
db 0xB9, 0xB9, 0xBB, 0xB9, 0xBB, 0x88 ; 0055D4: provisional 68k eor.l d4, $bbb9bb88.l
db 0xFF, 0xFF ; 0055DA: provisional 68k dc.w $ffff
db 0x0A, 0x08, 0x8B, 0xBF ; file 0055DC
db 0xFF, 0xCC ; 0055E0: provisional 68k dc.w $ffcc
db 0xCB, 0xBB ; file 0055E2
db 0x99, 0x99 ; 0055E4: provisional 68k sub.l d4, (a1)+
db 0x9B, 0xFF ; file 0055E6
db 0xFF, 0x0B ; 0055E8: provisional 68k dc.w $ff0b
db 0x07, 0xBC, 0xBC, 0xFF ; file 0055EA
db 0xFC, 0xBB ; 0055EE: provisional 68k dc.w $fcbb
db 0xDD, 0xDD ; 0055F0: provisional 68k adda.l (a5)+, a6
db 0x9B, 0xFF ; file 0055F2
db 0xFF, 0x0C ; 0055F4: provisional 68k dc.w $ff0c
db 0x06, 0xBB, 0xBC, 0xFF ; file 0055F6
db 0xFB, 0x99 ; 0055FA: provisional 68k dc.w $fb99
db 0x99, 0x91 ; 0055FC: provisional 68k sub.l d4, (a1)
db 0xFF, 0xFF ; 0055FE: provisional 68k dc.w $ffff
db 0x0D, 0x04 ; 005600: provisional 68k btst.l d6, d4
db 0xCB, 0xBB, 0xC8, 0xFF ; file 005602
db 0xF8, 0xFF ; 005606: provisional 68k dc.w $f8ff
db 0xFF, 0x0D ; 005608: provisional 68k dc.w $ff0d
db 0x04, 0x88 ; file 00560A
db 0xFE, 0xBF ; 00560C: provisional 68k dc.w $febf
db 0xFC, 0xF1 ; 00560E: provisional 68k dc.w $fcf1
db 0xFF, 0xFF ; 005610: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005612: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005614: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 005616: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 00561A: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 005620
db 0x10, 0x10 ; 005624: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 005626: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 005628: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00562A: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00562C: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 005630: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 005634: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 005636: provisional 68k neg.w d4
db 0x20, 0x18 ; 005638: provisional 68k move.l (a0)+, d0
db 0x14, 0x80 ; 00563A: provisional 68k move.b d0, (a2)
db 0x64, 0x50 ; 00563C: provisional 68k bcc.b $568e
db 0x00, 0x34, 0x68, 0x48, 0x44, 0x44 ; 00563E: provisional 68k ori.b #$48, $44(a4, d4.w)
db 0x44, 0x40 ; 005644: provisional 68k neg.w d0
db 0x38, 0xC0 ; 005646: provisional 68k move.w d0, (a4)+
db 0x98, 0x7C, 0x3C, 0x48 ; 005648: provisional 68k sub.w #$3c48, d4
db 0x6C, 0x38 ; 00564C: provisional 68k bge.b $5686
db 0x30, 0x28, 0xFF, 0xFF ; 00564E: provisional 68k move.w -$1(a0), d0
db 0xFF, 0xFF ; 005652: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005654: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005656: provisional 68k dc.w $ffff
db 0x0B, 0x01 ; 005658: provisional 68k btst.l d5, d1
db 0xFB, 0xCF ; 00565A: provisional 68k dc.w $fbcf
db 0xFF, 0xFF ; 00565C: provisional 68k dc.w $ffff
db 0x07, 0x08, 0x1F, 0xFF ; 00565E: provisional 68k movep.w $1fff(a0), d3
db 0xFB, 0x99 ; 005662: provisional 68k dc.w $fb99
db 0x99, 0x99 ; 005664: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9B ; 005666: provisional 68k sub.l d4, (a3)+
db 0xC8, 0xFF ; file 005668
db 0xFF, 0x06 ; 00566A: provisional 68k dc.w $ff06
db 0x0A, 0x88 ; file 00566C
db 0xC9, 0x99 ; 00566E: provisional 68k and.l d4, (a1)+
db 0xDD, 0xDD ; 005670: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005672: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 005674: provisional 68k adda.l (a1)+, a6
db 0x99, 0xBF ; file 005676
db 0xFF, 0xFF ; 005678: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0x88, 0xC9 ; 00567A: provisional 68k movep.w -$7737(a4), d2
db 0xDD, 0xDD ; 00567E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005680: provisional 68k adda.l (a5)+, a6
db 0x9D, 0xDD ; 005682: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 005684: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005686: provisional 68k adda.l (a5)+, a6
db 0xC1, 0xFF ; file 005688
db 0xFF, 0x05 ; 00568A: provisional 68k dc.w $ff05
db 0x0C, 0xC9 ; file 00568C
db 0xDD, 0xDD ; 00568E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005690: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005692: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005694: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 005696: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 005698: provisional 68k adda.l (a3)+, a6
db 0xFF, 0xFF ; 00569A: provisional 68k dc.w $ffff
db 0x04, 0x0E ; file 00569C
db 0x19, 0x9D, 0xDD, 0x99 ; 00569E: provisional 68k move.b (a5)+, ([, a5.l * 4])
db 0xDD, 0xDD ; 0056A2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056A4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056A6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056A8: provisional 68k adda.l (a5)+, a6
db 0x9D, 0xDD ; 0056AA: provisional 68k suba.l (a5)+, a6
db 0x91, 0xFF ; file 0056AC
db 0xFF, 0x04 ; 0056AE: provisional 68k dc.w $ff04
db 0x0E, 0xB9 ; file 0056B0
db 0x9D, 0xDD ; 0056B2: provisional 68k suba.l (a5)+, a6
db 0xD9, 0x9D ; 0056B4: provisional 68k add.l d4, (a5)+
db 0xDD, 0xDD ; 0056B6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056B8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056BA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056BC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x9C ; 0056BE: provisional 68k add.l d6, (a4)+
db 0xFF, 0xFF ; 0056C0: provisional 68k dc.w $ffff
db 0x03, 0x0F, 0x1B, 0x99 ; 0056C2: provisional 68k movep.w $1b99(a7), d1
db 0x99, 0xDD ; 0056C6: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x9D ; 0056C8: provisional 68k add.l d6, (a5)+
db 0xDD, 0xDD ; 0056CA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056CC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056CE: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9D ; 0056D0: provisional 68k add.l d4, (a5)+
db 0xD9, 0xD9 ; 0056D2: provisional 68k adda.l (a1)+, a4
db 0xFF, 0xFF ; 0056D4: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 0056D6: provisional 68k btst.l d1, (a0)
db 0xFB, 0x8C ; 0056D8: provisional 68k dc.w $fb8c
db 0x99, 0x99 ; 0056DA: provisional 68k sub.l d4, (a1)+
db 0xD9, 0x99 ; 0056DC: provisional 68k add.l d4, (a1)+
db 0x9D, 0xDD ; 0056DE: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 0056E0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056E2: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x9D ; 0056E4: provisional 68k add.l d4, (a5)+
db 0xDD, 0xD9 ; 0056E6: provisional 68k adda.l (a1)+, a6
db 0xF1, 0xFF ; 0056E8: provisional 68k dc.w $f1ff
db 0xFF, 0x02 ; 0056EA: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 0056EC
db 0xFC, 0xCF ; 0056EE: provisional 68k dc.w $fccf
db 0x99, 0xB9, 0x99, 0x99, 0x99, 0x9D ; 0056F0: provisional 68k sub.l d4, $9999999d.l
db 0xDD, 0xDD ; 0056F6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056F8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0056FA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 0056FC: provisional 68k adda.l (a1)+, a6
db 0xC1, 0xFF ; file 0056FE
db 0xFF, 0x02 ; 005700: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 005702
db 0xFC, 0x9B ; 005704: provisional 68k dc.w $fc9b
db 0x99, 0xB9, 0x99, 0x9D, 0x9B, 0xB9 ; 005706: provisional 68k sub.l d4, $999d9bb9.l
db 0xDD, 0xDD ; 00570C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 00570E: provisional 68k adda.l (a1)+, a6
db 0xDD, 0xDD ; 005710: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 005712: provisional 68k adda.l (a1)+, a6
db 0xC1, 0xFF ; file 005714
db 0xFF, 0x02 ; 005716: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 005718
db 0xCF, 0xFC, 0x9B, 0xC9 ; 00571A: provisional 68k muls.w #$9bc9, d7
db 0x99, 0x99 ; 00571E: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 005720: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xDD ; 005722: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 005724: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 005726: provisional 68k adda.l (a1)+, a6
db 0x9D, 0xD9 ; 005728: provisional 68k suba.l (a1)+, a6
db 0xB1, 0xFF ; file 00572A
db 0xFF, 0x02 ; 00572C: provisional 68k dc.w $ff02
db 0x13, 0x88 ; file 00572E
db 0xCF, 0x88 ; 005730: provisional 68k exg.l d7, a0
db 0x9B, 0xC9 ; 005732: provisional 68k suba.l a1, a5
db 0x99, 0xBB ; file 005734
db 0xFB, 0x99 ; 005736: provisional 68k dc.w $fb99
db 0x99, 0x9C ; 005738: provisional 68k sub.l d4, (a4)+
db 0x9D, 0xDD ; 00573A: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD9 ; 00573C: provisional 68k adda.l (a1)+, a6
db 0x99, 0x9B ; 00573E: provisional 68k sub.l d4, (a3)+
db 0xBB, 0x88 ; 005740: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0xFF ; file 005742
db 0xFF, 0x02 ; 005744: provisional 68k dc.w $ff02
db 0x13, 0x88 ; file 005746
db 0xFF, 0x8B ; 005748: provisional 68k dc.w $ff8b
db 0x8F, 0xBB ; file 00574A
db 0xCB, 0xB9, 0xB9, 0x99, 0xDD, 0xD9 ; 00574C: provisional 68k and.l d5, $b999ddd9.l
db 0xBD, 0xDD ; 005752: provisional 68k cmpa.l (a5)+, a6
db 0x99, 0x9D ; 005754: provisional 68k sub.l d4, (a5)+
db 0xDD, 0x9B ; 005756: provisional 68k add.l d6, (a3)+
db 0xB9, 0x99 ; 005758: provisional 68k eor.l d4, (a1)+
db 0xDB, 0xFF ; file 00575A
db 0xFF, 0x02 ; 00575C: provisional 68k dc.w $ff02
db 0x13, 0x88 ; file 00575E
db 0x88, 0xFB, 0xFF, 0xCB, 0xFF, 0xCF, 0xB9, 0x99 ; 005760: provisional 68k divu.w ([$5762], $ffcfb999), d4
db 0x99, 0x99 ; 005768: provisional 68k sub.l d4, (a1)+
db 0xDD, 0x9D ; 00576A: provisional 68k add.l d6, (a5)+
db 0xDD, 0x99 ; 00576C: provisional 68k add.l d6, (a1)+
db 0x9D, 0xD9 ; 00576E: provisional 68k suba.l (a1)+, a6
db 0x9D, 0xDD ; 005770: provisional 68k suba.l (a5)+, a6
db 0x9C, 0xFF ; file 005772
db 0xFF, 0x01 ; 005774: provisional 68k dc.w $ff01
db 0x14, 0x8E, 0xC8, 0x88 ; file 005776
db 0xFF, 0xFC ; 00577A: provisional 68k dc.w $fffc
db 0xCF, 0xFB, 0x99, 0x88 ; 00577C: provisional 68k muls.w (a1.l), d7
db 0xB9, 0x99 ; 005780: provisional 68k eor.l d4, (a1)+
db 0x9D, 0xD9 ; 005782: provisional 68k suba.l (a1)+, a6
db 0x99, 0xDD ; 005784: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 005786: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 005788: provisional 68k adda.l (a1)+, a6
db 0x9B, 0xBF ; file 00578A
db 0xFF, 0xFF ; 00578C: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0x8B ; 00578E: provisional 68k ori.b #$8b, (a5)
db 0xF8, 0x88 ; 005792: provisional 68k dc.w $f888
db 0x88, 0xFC, 0xFF, 0x8C ; 005794: provisional 68k divu.w #$ff8c, d4
db 0xBB, 0x88 ; 005798: provisional 68k cmpm.l (a0)+, (a5)+
db 0x8F, 0x99 ; 00579A: provisional 68k or.l d7, (a1)+
db 0xDD, 0xDD ; 00579C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00579E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0057A0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 0057A2: provisional 68k add.l d6, (a1)+
db 0x9F, 0xCF ; 0057A4: provisional 68k suba.l a7, a7
db 0xFF, 0xFF ; 0057A6: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0x88 ; 0057A8: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0057AC
db 0x88, 0x99 ; 0057B4: provisional 68k or.l (a1)+, d4
db 0xDD, 0xDD ; 0057B6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0057B8: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x99 ; 0057BA: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 0057BC: provisional 68k sub.l d4, (a1)+
db 0xC8, 0x8F ; file 0057BE
db 0xFF, 0xFF ; 0057C0: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8F, 0x88 ; 0057C2: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0057C6
db 0x88, 0xB9, 0x99, 0xDD, 0xDD, 0xD9 ; 0057CE: provisional 68k or.l $99ddddd9.l, d4
db 0x99, 0x9C ; 0057D4: provisional 68k sub.l d4, (a4)+
db 0xB9, 0x9C ; 0057D6: provisional 68k eor.l d4, (a4)+
db 0xF8, 0xCF ; 0057D8: provisional 68k dc.w $f8cf
db 0xFF, 0xFF ; 0057DA: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1F, 0xC8 ; 0057DC: provisional 68k ori.b #$c8, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x89 ; file 0057E0
db 0x99, 0xDD ; 0057EA: provisional 68k suba.l (a5)+, a4
db 0xDD, 0x99 ; 0057EC: provisional 68k add.l d6, (a1)+
db 0xCC, 0xCC ; file 0057EE
db 0x9B, 0xC8 ; 0057F0: provisional 68k suba.l a0, a5
db 0x8E, 0xDE ; 0057F2: provisional 68k divu.w (a6)+, d7
db 0xFF, 0xFF ; 0057F4: provisional 68k dc.w $ffff
db 0x00, 0x16, 0x88, 0x8C ; 0057F6: provisional 68k ori.b #$8c, (a6)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0057FA
db 0x88, 0xFB, 0x99, 0xDD ; 005802: provisional 68k divu.w ([$5804]), d4
db 0xD9, 0x9C ; 005806: provisional 68k add.l d4, (a4)+
db 0xFF, 0xFF ; 005808: provisional 68k dc.w $ffff
db 0xCC, 0x8A ; file 00580A
db 0x8E, 0xDD ; 00580C: provisional 68k divu.w (a5)+, d7
db 0xEE, 0xFF ; file 00580E
db 0xFF, 0x01 ; 005810: provisional 68k dc.w $ff01
db 0x15, 0xFF ; file 005812
db 0xFF, 0x88 ; 005814: provisional 68k dc.w $ff88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005816
db 0xFF, 0x99 ; 00581C: provisional 68k dc.w $ff99
db 0x99, 0xD9 ; 00581E: provisional 68k suba.l (a1)+, a4
db 0xDD, 0xEE, 0xFF, 0x8F ; 005820: provisional 68k adda.l -$71(a6), a6
db 0xCF, 0x88 ; 005824: provisional 68k exg.l d7, a0
db 0x8A, 0xDD ; 005826: provisional 68k divu.w (a5)+, d5
db 0xFF, 0xFF ; 005828: provisional 68k dc.w $ffff
db 0xFF, 0x01 ; 00582A: provisional 68k dc.w $ff01
db 0x14, 0xFF ; file 00582C
db 0xFF, 0x88 ; 00582E: provisional 68k dc.w $ff88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 005830
db 0xFF, 0x99 ; 005836: provisional 68k dc.w $ff99
db 0x99, 0xFE, 0xEE, 0xDD, 0xC8, 0xC9 ; file 005838
db 0x99, 0x88 ; 00583E: provisional 68k subx.l -(a0), -(a4)
db 0x8A, 0xEE, 0xFF, 0xFF ; 005840: provisional 68k divu.w -$1(a6), d5
db 0x01, 0x14 ; 005844: provisional 68k btst.l d0, (a4)
db 0x8C, 0xCF, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005846
db 0x8F, 0xFC, 0x99, 0x98 ; 00584E: provisional 68k divs.w #$9998, d7
db 0x88, 0xCA ; file 005852
db 0xED, 0xBC ; 005854: provisional 68k rol.l d6, d4
db 0xDD, 0xD9 ; 005856: provisional 68k adda.l (a1)+, a6
db 0x88, 0xAA, 0xEF, 0xFF ; 005858: provisional 68k or.l -$1001(a2), d4
db 0xFF, 0x01 ; 00585C: provisional 68k dc.w $ff01
db 0x14, 0x1B ; 00585E: provisional 68k move.b (a3)+, d2
db 0xCF, 0x88 ; 005860: provisional 68k exg.l d7, a0
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 005862
db 0xFB, 0x99 ; 005868: provisional 68k dc.w $fb99
db 0xC8, 0x88 ; file 00586A
db 0x8A, 0xA9, 0x9D, 0xDD ; 00586C: provisional 68k or.l -$6223(a1), d5
db 0xDD, 0x98 ; 005870: provisional 68k add.l d6, (a0)+
db 0xAA, 0xF1 ; 005872: provisional 68k dc.w $aaf1
db 0xFF, 0xFF ; 005874: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xFF, 0xF8 ; 005876: provisional 68k andi.b #$f8, (a3)
db 0x88, 0x8B ; file 00587A
db 0x88, 0xF8, 0xF8, 0x8F ; 00587C: provisional 68k divu.w $f88f.w, d4
db 0xFB, 0x99 ; 005880: provisional 68k dc.w $fb99
db 0xB8, 0x8A ; 005882: provisional 68k cmp.l a2, d4
db 0xAA, 0xAF ; 005884: provisional 68k dc.w $aaaf
db 0x9D, 0xDD ; 005886: provisional 68k suba.l (a5)+, a6
db 0xD9, 0x98 ; 005888: provisional 68k add.l d4, (a0)+
db 0x88, 0x88 ; file 00588A
db 0xFF, 0xFF ; 00588C: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xFC, 0xF8 ; 00588E: provisional 68k andi.b #$f8, (a3)
db 0x88, 0x89 ; file 005892
db 0x9B, 0x8F ; 005894: provisional 68k subx.l -(a7), -(a5)
db 0xFF, 0xFF ; 005896: provisional 68k dc.w $ffff
db 0xC9, 0xDD ; 005898: provisional 68k muls.w (a5)+, d4
db 0x9C, 0xEA, 0xAA, 0x88 ; 00589A: provisional 68k suba.w -$5578(a2), a6
db 0x9D, 0xDD ; 00589E: provisional 68k suba.l (a5)+, a6
db 0x9C, 0xFB, 0xCF, 0x88 ; 0058A0: provisional 68k suba.w (a4.l * 8), a6
db 0xFF, 0xFF ; 0058A4: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1B, 0xCF ; 0058A6: provisional 68k andi.b #$cf, (a3)
db 0xFF, 0xCC ; 0058AA: provisional 68k dc.w $ffcc
db 0xDD, 0x8F ; 0058AC: provisional 68k addx.l -(a7), -(a6)
db 0xFC, 0xCF ; 0058AE: provisional 68k dc.w $fccf
db 0xBD, 0xDD ; 0058B0: provisional 68k cmpa.l (a5)+, a6
db 0x9F, 0xE8, 0x8F, 0xF8 ; 0058B2: provisional 68k suba.l -$7008(a0), a7
db 0xDD, 0xDC ; 0058B6: provisional 68k adda.l (a4)+, a6
db 0x8F, 0x8B ; 0058B8: provisional 68k dc.w $8f8b
db 0xC8, 0x88 ; file 0058BA
db 0xFF, 0xFF ; 0058BC: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 0058BE: provisional 68k btst.l d1, (a2)
db 0xBF, 0xFF ; file 0058C0
db 0xFF, 0x9D ; 0058C2: provisional 68k dc.w $ff9d
db 0x9B, 0x9B ; 0058C4: provisional 68k sub.l d5, (a3)+
db 0xB9, 0x9D ; 0058C6: provisional 68k eor.l d4, (a5)+
db 0xDD, 0xD9 ; 0058C8: provisional 68k adda.l (a1)+, a6
db 0x88, 0x88 ; file 0058CA
db 0x8D, 0xD9 ; 0058CC: provisional 68k divs.w (a1)+, d6
db 0xF8, 0xF8 ; 0058CE: provisional 68k dc.w $f8f8
db 0x8F, 0xF8, 0xF1, 0xFF ; 0058D0: provisional 68k divs.w $f1ff.w, d7
db 0xFF, 0x03 ; 0058D4: provisional 68k dc.w $ff03
db 0x12, 0xBC, 0xFF, 0xFF ; 0058D6: provisional 68k move.b #$ff, (a1)
db 0xFC, 0xCF ; 0058DA: provisional 68k dc.w $fccf
db 0xFB, 0xDD ; 0058DC: provisional 68k dc.w $fbdd
db 0xDD, 0x99 ; 0058DE: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 0058E0: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 0058E2: provisional 68k sub.l d4, (a5)+
db 0xC8, 0x88, 0x88, 0x88 ; file 0058E4
db 0x8F, 0x88 ; 0058E8: provisional 68k dc.w $8f88
db 0xFF, 0xFF ; 0058EA: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 0058EC: provisional 68k btst.l d1, (a1)
db 0x1B, 0xCF ; file 0058EE
db 0xCB, 0x8F ; 0058F0: provisional 68k exg.l d5, a7
db 0x9C, 0xFC, 0xB9, 0x99 ; 0058F2: provisional 68k suba.w #$b999, a6
db 0x99, 0x99 ; 0058F6: provisional 68k sub.l d4, (a1)+
db 0xD9, 0xBC ; file 0058F8
db 0x99, 0xB8, 0x88, 0x88 ; 0058FA: provisional 68k sub.l d4, $8888.w
db 0x88, 0x88 ; file 0058FE
db 0xFF, 0xFF ; 005900: provisional 68k dc.w $ffff
db 0x04, 0x0F, 0xBB, 0xBF ; file 005902
db 0x8B, 0x9B ; 005906: provisional 68k or.l d5, (a3)+
db 0xFC, 0xFF ; 005908: provisional 68k dc.w $fcff
db 0xCF, 0xFF ; file 00590A
db 0xFF, 0xCC ; 00590C: provisional 68k dc.w $ffcc
db 0x88, 0xFF, 0xC8, 0x88, 0x88, 0x8F ; file 00590E
db 0xFF, 0xFF ; 005914: provisional 68k dc.w $ffff
db 0x05, 0x0E, 0xC1, 0x1F ; 005916: provisional 68k movep.w -$3ee1(a6), d2
db 0xB9, 0x9C ; 00591A: provisional 68k eor.l d4, (a4)+
db 0xCC, 0xFF ; file 00591C
db 0xFF, 0xF8 ; 00591E: provisional 68k dc.w $fff8
db 0x88, 0x8F ; file 005920
db 0xFC, 0xC8 ; 005922: provisional 68k dc.w $fcc8
db 0x88, 0x88, 0xB8, 0xFF ; file 005924
db 0xFF, 0x06 ; 005928: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xC9, 0x9F ; 00592A: provisional 68k movep.w d6, -$3661(a0)
db 0xFC, 0xCF ; 00592E: provisional 68k dc.w $fccf
db 0xCB, 0xBC ; file 005930
db 0x88, 0xF9, 0x9D, 0xDB, 0x88, 0xF9 ; 005932: provisional 68k divu.w $9ddb88f9.l, d4
db 0xD8, 0xFF ; file 005938
db 0xFF, 0x07 ; 00593A: provisional 68k dc.w $ff07
db 0x0C, 0xFF, 0xC8, 0x88, 0x88, 0x8B ; file 00593C
db 0xBF, 0x88 ; 005942: provisional 68k cmpm.l (a0)+, (a7)+
db 0xFD, 0xDD ; 005944: provisional 68k dc.w $fddd
db 0xDD, 0x9D ; 005946: provisional 68k add.l d6, (a5)+
db 0xDD, 0x9B ; 005948: provisional 68k add.l d6, (a3)+
db 0xFF, 0xFF ; 00594A: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0xC8, 0x88 ; 00594C: provisional 68k movep.w -$3778(a4), d3
db 0x88, 0x88, 0x8B, 0xFF, 0x88, 0xBD ; file 005950
db 0xDD, 0xDD ; 005956: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 005958: provisional 68k adda.l (a1)+, a6
db 0x9B, 0xFF ; file 00595A
db 0xFF, 0x07 ; 00595C: provisional 68k dc.w $ff07
db 0x0C, 0x88, 0x88, 0x88 ; file 00595E
db 0xF8, 0x8B ; 005962: provisional 68k dc.w $f88b
db 0xCF, 0xFB, 0xDD, 0xDD ; 005964: provisional 68k muls.w ([$5966]), d7
db 0xDD, 0xDD ; 005968: provisional 68k adda.l (a5)+, a6
db 0x99, 0xDC ; 00596A: provisional 68k suba.l (a4)+, a4
db 0xFF, 0xFF ; 00596C: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8F, 0x88 ; 00596E: provisional 68k movep.w -$7078(a4), d3
db 0x88, 0x88 ; file 005972
db 0x88, 0xBC, 0xC9, 0xDD, 0xDD, 0xDD ; 005974: provisional 68k or.l #$c9dddddd, d4
db 0xDD, 0xDD ; 00597A: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xFF ; file 00597C
db 0xFF, 0x07 ; 00597E: provisional 68k dc.w $ff07
db 0x0C, 0x8B ; file 005980
db 0xF8, 0x88 ; 005982: provisional 68k dc.w $f888
db 0x88, 0x88 ; file 005984
db 0xBB, 0xB9, 0x99, 0x9D, 0xDD, 0xDD ; 005986: provisional 68k eor.l d5, $999ddddd.l
db 0xDD, 0x9F ; 00598C: provisional 68k add.l d6, (a7)+
db 0xFF, 0xFF ; 00598E: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0xFF ; 005990: provisional 68k movep.w -$7401(a4), d3
db 0x8F, 0xFF, 0x88, 0x8F ; file 005994
db 0x8C, 0xBC, 0xC9, 0x99, 0x99, 0x99 ; 005998: provisional 68k or.l #$c9999999, d6
db 0xC1, 0xFF ; file 00599E
db 0xFF, 0x07 ; 0059A0: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 0059A2: provisional 68k btst.l d5, (a3)+
db 0xFF, 0xFB ; 0059A4: provisional 68k dc.w $fffb
db 0x99, 0xF8, 0x88, 0x88 ; 0059A6: provisional 68k suba.l $8888.w, a4
db 0xFF, 0xBB ; 0059AA: provisional 68k dc.w $ffbb
db 0xEE, 0xEB, 0xBB, 0xFF ; file 0059AC
db 0xFF, 0x07 ; 0059B0: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 0059B2: provisional 68k btst.l d5, (a3)+
db 0xBF, 0xC9 ; 0059B4: provisional 68k cmpa.l a1, a7
db 0xDD, 0xD9 ; 0059B6: provisional 68k adda.l (a1)+, a6
db 0xC8, 0x88 ; file 0059B8
db 0x88, 0xAC, 0xFC, 0x9C ; 0059BA: provisional 68k or.l -$364(a4), d4
db 0xCF, 0xFF ; file 0059BE
db 0xFF, 0x07 ; 0059C0: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 0059C2: provisional 68k btst.l d5, (a3)+
db 0xBF, 0xFC, 0x9D, 0xDD, 0xDC, 0x88 ; 0059C4: provisional 68k cmpa.l #$9ddddc88, a7
db 0x88, 0x88, 0x88, 0xCF, 0x8F, 0xFF ; file 0059CA
db 0xFF, 0x08 ; 0059D0: provisional 68k dc.w $ff08
db 0x0B, 0xBB ; file 0059D2
db 0xFF, 0xB9 ; 0059D4: provisional 68k dc.w $ffb9
db 0xDD, 0xDD ; 0059D6: provisional 68k adda.l (a5)+, a6
db 0xD9, 0x88 ; 0059D8: provisional 68k addx.l -(a0), -(a4)
db 0xF8, 0x88 ; 0059DA: provisional 68k dc.w $f888
db 0x8F, 0x88 ; 0059DC: provisional 68k dc.w $8f88
db 0xF1, 0xFF ; 0059DE: provisional 68k dc.w $f1ff
db 0xFF, 0x08 ; 0059E0: provisional 68k dc.w $ff08
db 0x0B, 0x1B ; 0059E2: provisional 68k btst.l d5, (a3)+
db 0xBF, 0xFB, 0x9D, 0xDD ; 0059E4: provisional 68k cmpa.l ([$59e6]), a7
db 0xDD, 0xD9 ; 0059E8: provisional 68k adda.l (a1)+, a6
db 0xF8, 0x88 ; 0059EA: provisional 68k dc.w $f888
db 0x8F, 0xF8, 0x88, 0xFF ; 0059EC: provisional 68k divs.w $88ff.w, d7
db 0xFF, 0x09 ; 0059F0: provisional 68k dc.w $ff09
db 0x0A, 0xBB ; file 0059F2
db 0xCF, 0xF9, 0x99, 0xDD, 0xD9, 0xBB ; 0059F4: provisional 68k muls.w $99ddd9bb.l, d7
db 0xCF, 0xFF ; file 0059FA
db 0xF8, 0x88 ; 0059FC: provisional 68k dc.w $f888
db 0xFF, 0xFF ; 0059FE: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0x1F, 0xCB ; 005A00: provisional 68k movep.w $1fcb(a2), d4
db 0xFC, 0xFB ; 005A04: provisional 68k dc.w $fcfb
db 0x99, 0xB9, 0xB9, 0xBB, 0xB9, 0xBC ; 005A06: provisional 68k sub.l d4, $b9bbb9bc.l
db 0x88, 0xFF ; file 005A0C
db 0xFF, 0x0A ; 005A0E: provisional 68k dc.w $ff0a
db 0x08, 0x1C, 0xBF, 0xFF ; file 005A10
db 0xCF, 0xFB, 0xBB, 0x99 ; 005A14: provisional 68k muls.w ([$5a16, a3.l * 2]), d7
db 0x99, 0x99 ; 005A18: provisional 68k sub.l d4, (a1)+
db 0xFF, 0xFF ; 005A1A: provisional 68k dc.w $ffff
db 0x0B, 0x07 ; 005A1C: provisional 68k btst.l d5, d7
db 0xCC, 0xBC, 0xFF, 0xFC, 0xBB, 0xDD ; 005A1E: provisional 68k and.l #$fffcbbdd, d6
db 0xDD, 0x9B ; 005A24: provisional 68k add.l d6, (a3)+
db 0xFF, 0xFF ; 005A26: provisional 68k dc.w $ffff
db 0x0C, 0x06, 0xCB, 0xBC ; 005A28: provisional 68k cmpi.b #$bc, d6
db 0xFF, 0xFB ; 005A2C: provisional 68k dc.w $fffb
db 0x99, 0x99 ; 005A2E: provisional 68k sub.l d4, (a1)+
db 0x91, 0xFF ; file 005A30
db 0xFF, 0x0D ; 005A32: provisional 68k dc.w $ff0d
db 0x04, 0xCB ; file 005A34
db 0xBC, 0xC8 ; 005A36: provisional 68k cmpa.w a0, a6
db 0xFF, 0x88 ; 005A38: provisional 68k dc.w $ff88
db 0xFF, 0xFF ; 005A3A: provisional 68k dc.w $ffff
db 0x0E, 0x03, 0x8E, 0xBF ; file 005A3C
db 0xFC, 0xF1 ; 005A40: provisional 68k dc.w $fcf1
db 0xFF, 0xFF ; 005A42: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005A44: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005A46: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 005A48: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 005A4C: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 005A52
db 0x10, 0x10 ; 005A56: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 005A58: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 005A5A: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 005A5C: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 005A5E: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 005A62: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 005A66: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 005A68: provisional 68k neg.w d4
db 0x24, 0x1C ; 005A6A: provisional 68k move.l (a4)+, d2
db 0x14, 0xD0 ; 005A6C: provisional 68k move.b (a0), (a2)+
db 0xA8, 0x88 ; 005A6E: provisional 68k dc.w $a888
db 0x74, 0x5C ; 005A70: provisional 68k moveq #$5c, d2
db 0x4C, 0x44 ; file 005A72
db 0x38, 0x38, 0x00, 0x24 ; 005A74: provisional 68k move.w $24.w, d4
db 0x40, 0x00 ; 005A78: provisional 68k negx.b d0
db 0x48, 0x84 ; 005A7A: provisional 68k ext.w d4
db 0xB8, 0x80 ; 005A7C: provisional 68k cmp.l d0, d4
db 0x6C, 0x90 ; 005A7E: provisional 68k bge.b $5a10
db 0x7C, 0x6C ; 005A80: provisional 68k moveq #$6c, d6
db 0xFF, 0xFF ; 005A82: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005A84: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005A86: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0xBB, 0xAB ; 005A88: provisional 68k eori.b #$ab, d4
db 0xBA, 0xBB, 0xB1, 0xFF, 0xFF, 0x07, 0x08, 0x1A ; 005A8C: provisional 68k cmp.l ([$ff0762a8]), d5
db 0xAA, 0xAA ; 005A94: provisional 68k dc.w $aaaa
db 0xFE, 0xFF ; 005A96: provisional 68k dc.w $feff
db 0xEF, 0xFF ; file 005A98
db 0xFF, 0xAB ; 005A9A: provisional 68k dc.w $ffab
db 0xFF, 0xFF ; 005A9C: provisional 68k dc.w $ffff
db 0x06, 0x0A ; file 005A9E
db 0x1A, 0xAF, 0xFE, 0xEE ; 005AA0: provisional 68k move.b -$112(a7), (a5)
db 0xEE, 0x9E ; 005AA4: provisional 68k ror.l #$7, d6
db 0xEE, 0xEE, 0xEE, 0xEF ; file 005AA6
db 0xAB, 0xFF ; 005AAA: provisional 68k dc.w $abff
db 0xFF, 0x05 ; 005AAC: provisional 68k dc.w $ff05
db 0x0C, 0x1A, 0xFE, 0xEE ; 005AAE: provisional 68k cmpi.b #$ee, (a2)+
db 0xE9, 0xEE, 0xEE, 0xE9 ; file 005AB2
db 0xEE, 0x99 ; 005AB6: provisional 68k ror.l #$7, d1
db 0x9E, 0xEE, 0x9E, 0xA8 ; 005AB8: provisional 68k suba.w -$6158(a6), a7
db 0xFF, 0xFF ; 005ABC: provisional 68k dc.w $ffff
db 0x04, 0x0E, 0x1B, 0xFF, 0xEE, 0xE9 ; file 005ABE
db 0x9E, 0xE9, 0x9E, 0xEE ; 005AC4: provisional 68k suba.w -$6112(a1), a7
db 0xE9, 0xEE ; file 005AC8
db 0xE9, 0x9E ; 005ACA: provisional 68k rol.l #$4, d6
db 0xEE, 0xEF, 0xB1, 0xFF ; file 005ACC
db 0xFF, 0x04 ; 005AD0: provisional 68k dc.w $ff04
db 0x0E, 0xAA ; file 005AD2
db 0xFE, 0xEE ; 005AD4: provisional 68k dc.w $feee
db 0xEE, 0xEE, 0xEE, 0xE9, 0xEF, 0xE9 ; file 005AD6
db 0x9E, 0xEE, 0x99, 0xEE ; 005ADC: provisional 68k suba.w -$6612(a6), a7
db 0xEE, 0xEB ; file 005AE0
db 0xFF, 0xFF ; 005AE2: provisional 68k dc.w $ffff
db 0x03, 0x0F, 0x1A, 0xAA ; 005AE4: provisional 68k movep.w $1aaa(a7), d1
db 0xAF, 0xEE ; 005AE8: provisional 68k dc.w $afee
db 0xFA, 0xEE ; 005AEA: provisional 68k dc.w $faee
db 0xEE, 0xEE ; file 005AEC
db 0xEE, 0x99 ; 005AEE: provisional 68k ror.l #$7, d1
db 0x99, 0xEE, 0xE9, 0x9E ; 005AF0: provisional 68k suba.l -$1662(a6), a4
db 0x9E, 0xEF, 0xFF, 0xFF ; 005AF4: provisional 68k suba.w -$1(a7), a7
db 0x03, 0x10 ; 005AF8: provisional 68k btst.l d1, (a0)
db 0xAA, 0xAF ; 005AFA: provisional 68k dc.w $aaaf
db 0xAF, 0xEE ; 005AFC: provisional 68k dc.w $afee
db 0xEE, 0xEE, 0xE9, 0xEE ; file 005AFE
db 0x99, 0x9E ; 005B02: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xEE, 0xEF, 0xFE ; file 005B04
db 0x9E, 0xEE, 0xB1, 0xFF ; 005B08: provisional 68k suba.w -$4e01(a6), a7
db 0xFF, 0x03 ; 005B0C: provisional 68k dc.w $ff03
db 0x10, 0xB8, 0xAA, 0xFA ; 005B0E: provisional 68k move.b $aafa.w, (a0)
db 0xAF, 0xEA ; 005B12: provisional 68k dc.w $afea
db 0x8F, 0x99 ; 005B14: provisional 68k or.l d7, (a1)+
db 0xE9, 0x99 ; 005B16: provisional 68k rol.l #$4, d1
db 0x99, 0x99 ; 005B18: provisional 68k sub.l d4, (a1)+
db 0x99, 0xEF, 0xFE, 0x9E ; 005B1A: provisional 68k suba.l -$162(a7), a4
db 0xEE, 0xA1 ; 005B1E: provisional 68k asr.l d7, d1
db 0xFF, 0xFF ; 005B20: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x1B, 0xAB ; 005B22: provisional 68k andi.b #$ab, (a1)
db 0x8B, 0xFB, 0xBF, 0xEF, 0xAA, 0xEF ; 005B26: provisional 68k divs.w ([$10617]), d5
db 0xF9, 0x99 ; 005B2C: provisional 68k dc.w $f999
db 0x99, 0xEE, 0xEE, 0xEE ; 005B2E: provisional 68k suba.l -$1112(a6), a4
db 0xEE, 0x9E ; 005B32: provisional 68k ror.l #$7, d6
db 0xEE, 0xA1 ; 005B34: provisional 68k asr.l d7, d1
db 0xFF, 0xFF ; 005B36: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x88, 0xBA ; 005B38: provisional 68k andi.b #$ba, (a1)
db 0xBA, 0xFB, 0xAF, 0xFE, 0xEE, 0xAA, 0xAF, 0x99 ; 005B3C: provisional 68k cmpa.w ([$eeab0ad7]), a5
db 0x99, 0x99 ; 005B44: provisional 68k sub.l d4, (a1)+
db 0xEA, 0xFE ; file 005B46
db 0x99, 0x9E ; 005B48: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xA8 ; 005B4A: provisional 68k lsr.l d7, d0
db 0xFF, 0xFF ; 005B4C: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x88, 0x8B ; 005B4E: provisional 68k andi.b #$8b, (a1)
db 0xAA, 0xBB ; 005B52: provisional 68k dc.w $aabb
db 0xAA, 0xAB ; 005B54: provisional 68k dc.w $aaab
db 0xAE, 0xAA ; 005B56: provisional 68k dc.w $aeaa
db 0xFA, 0xA9 ; 005B58: provisional 68k dc.w $faa9
db 0x99, 0x9E ; 005B5A: provisional 68k sub.l d4, (a6)+
db 0xE9, 0xE9 ; file 005B5C
db 0x9E, 0xEE, 0xEE, 0xAB ; 005B5E: provisional 68k suba.w -$1155(a6), a7
db 0xFF, 0xFF ; 005B62: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x1B, 0xB8 ; 005B64: provisional 68k andi.b #$b8, (a1)
db 0x8A, 0x88 ; file 005B68
db 0xBA, 0xAB, 0xBA, 0xAF ; 005B6A: provisional 68k cmp.l -$4551(a3), d5
db 0xEF, 0xAE ; 005B6E: provisional 68k lsl.l d7, d6
db 0xAA, 0xAE ; 005B70: provisional 68k dc.w $aaae
db 0x99, 0x99 ; 005B72: provisional 68k sub.l d4, (a1)+
db 0xEF, 0xFF ; file 005B74
db 0xEE, 0xAB ; 005B76: provisional 68k lsr.l d7, d3
db 0xFF, 0xFF ; 005B78: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x88, 0x88 ; 005B7A: provisional 68k andi.b #$88, (a1)
db 0xBA, 0xAA, 0xAA, 0xAA ; 005B7E: provisional 68k cmp.l -$5556(a2), d5
db 0xFA, 0xBA ; 005B82: provisional 68k dc.w $faba
db 0xFF, 0xA9 ; 005B84: provisional 68k dc.w $ffa9
db 0xEA, 0xA9 ; 005B86: provisional 68k lsr.l d5, d1
db 0x9E, 0xEE, 0xEA, 0xAE ; 005B88: provisional 68k suba.w -$1552(a6), a7
db 0xEE, 0xAB ; 005B8C: provisional 68k lsr.l d7, d3
db 0xFF, 0xFF ; 005B8E: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x8B ; 005B90: provisional 68k andi.b #$8b, (a3)
db 0xB8, 0xBB, 0xBA, 0xAA ; 005B94: provisional 68k cmp.l $5b40(pc, a3.l), d4
db 0xAB, 0xAA ; 005B98: provisional 68k dc.w $abaa
db 0xAA, 0xFE ; 005B9A: provisional 68k dc.w $aafe
db 0xEA, 0xFE ; file 005B9C
db 0xFF, 0xFF ; 005B9E: provisional 68k dc.w $ffff
db 0xEE, 0xEE ; file 005BA0
db 0xFA, 0xAB ; 005BA2: provisional 68k dc.w $faab
db 0xAF, 0xFA ; 005BA4: provisional 68k dc.w $affa
db 0xFF, 0xFF ; 005BA6: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x8B ; 005BA8: provisional 68k andi.b #$8b, (a3)
db 0xBB, 0xBB ; file 005BAC
db 0xBB, 0xB8, 0x88, 0xBA ; 005BAE: provisional 68k eor.l d5, $88ba.w
db 0xAA, 0xAA ; 005BB2: provisional 68k dc.w $aaaa
db 0xFA, 0xE9 ; 005BB4: provisional 68k dc.w $fae9
db 0xEE, 0xEF, 0xEA, 0xEE ; file 005BB6
db 0xFF, 0xFA ; 005BBA: provisional 68k dc.w $fffa
db 0xFE, 0xFB ; 005BBC: provisional 68k dc.w $fefb
db 0xFF, 0xFF ; 005BBE: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x88 ; 005BC0: provisional 68k andi.b #$88, (a3)
db 0x8B, 0xBB ; file 005BC4
db 0xB8, 0x8B ; 005BC6: provisional 68k cmp.l a3, d4
db 0xAB, 0x88 ; 005BC8: provisional 68k dc.w $ab88
db 0xBA, 0xAA, 0xAA, 0xAE ; 005BCA: provisional 68k cmp.l -$5552(a2), d5
db 0xAA, 0xEE ; 005BCE: provisional 68k dc.w $aaee
db 0x99, 0xEE, 0xEF, 0xFE ; 005BD0: provisional 68k suba.l -$1002(a6), a4
db 0xFA, 0xBB ; 005BD4: provisional 68k dc.w $fabb
db 0xFF, 0xFF ; 005BD6: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x88 ; 005BD8: provisional 68k andi.b #$88, (a3)
db 0x88, 0x88, 0x88, 0x8B ; file 005BDC
db 0xAB, 0x88 ; 005BE0: provisional 68k dc.w $ab88
db 0x88, 0xAF, 0xFF, 0xFF ; 005BE2: provisional 68k or.l -$1(a7), d4
db 0xEF, 0x9E ; 005BE6: provisional 68k rol.l #$7, d6
db 0x99, 0xFF, 0xEF, 0xFA ; file 005BE8
db 0xAB, 0xBB ; 005BEC: provisional 68k dc.w $abbb
db 0xFF, 0xFF ; 005BEE: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1B, 0x88 ; 005BF0: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005BF4
db 0x88, 0xAF, 0xFF, 0xF9 ; 005BFC: provisional 68k or.l -$7(a7), d4
db 0x99, 0x9F ; 005C00: provisional 68k sub.l d4, (a7)+
db 0xFF, 0xFA ; 005C02: provisional 68k dc.w $fffa
db 0xAF, 0xFA ; 005C04: provisional 68k dc.w $affa
db 0xB8, 0x88 ; 005C06: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 005C08: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x1B, 0x88 ; 005C0A: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xBF ; file 005C0E
db 0xFF, 0xF9 ; 005C18: provisional 68k dc.w $fff9
db 0x99, 0xFF ; file 005C1A
db 0xAA, 0xAB ; 005C1C: provisional 68k dc.w $aaab
db 0xAF, 0xFA ; 005C1E: provisional 68k dc.w $affa
db 0x88, 0xBB, 0xFF, 0xFF, 0x00, 0x15, 0x1B, 0xB8 ; 005C20: provisional 68k or.l ([$1577da]), d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 005C28
db 0xAF, 0xEE ; 005C32: provisional 68k dc.w $afee
db 0xEF, 0xFA, 0xBB, 0xBB ; file 005C34
db 0xAA, 0xB8 ; 005C38: provisional 68k dc.w $aab8
db 0x8B, 0xFA, 0xFF, 0xFF ; 005C3A: provisional 68k divs.w $5c3b(pc), d5
db 0x01, 0x15 ; 005C3E: provisional 68k btst.l d0, (a5)
db 0xBB, 0x88 ; 005C40: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005C42
db 0x8B, 0xAF, 0xE9, 0xEF ; 005C4A: provisional 68k or.l d5, -$1611(a7)
db 0xAB, 0x88 ; 005C4E: provisional 68k dc.w $ab88
db 0x8B, 0xBB, 0x8C, 0x8A, 0x99, 0xBB ; file 005C50
db 0xFF, 0xFF ; 005C56: provisional 68k dc.w $ffff
db 0x01, 0x15 ; 005C58: provisional 68k btst.l d0, (a5)
db 0xBB, 0xBB, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 005C5A
db 0xAF, 0xFF ; 005C64: provisional 68k dc.w $afff
db 0xEE, 0xFF ; file 005C66
db 0xEB, 0x88 ; 005C68: provisional 68k lsl.l #$5, d0
db 0x88, 0xBB, 0x88, 0xCD ; 005C6A: provisional 68k or.l $5c39(pc, a0.l), d4
db 0xDE, 0xBB, 0xFF, 0xFF, 0x01, 0x14, 0xBB, 0xBB ; 005C6E: provisional 68k add.l ([$115182b]), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005C76
db 0x8B, 0x8B ; 005C7C: provisional 68k dc.w $8b8b
db 0xAF, 0xFA ; 005C7E: provisional 68k dc.w $affa
db 0x8B, 0xDD ; 005C80: provisional 68k divs.w (a5)+, d5
db 0xF9, 0xB8 ; 005C82: provisional 68k dc.w $f9b8
db 0xAE, 0xFA ; 005C84: provisional 68k dc.w $aefa
db 0xC8, 0x8C, 0xDB, 0xFF ; file 005C86
db 0xFF, 0x01 ; 005C8A: provisional 68k dc.w $ff01
db 0x14, 0x8B ; file 005C8C
db 0xBB, 0x88 ; 005C8E: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 005C90
db 0xBB, 0xAA, 0xAA, 0x8C ; 005C96: provisional 68k eor.l d5, -$5574(a2)
db 0xDD, 0xD9 ; 005C9A: provisional 68k adda.l (a1)+, a6
db 0xAB, 0xE9 ; 005C9C: provisional 68k dc.w $abe9
db 0x9F, 0xCC ; 005C9E: provisional 68k suba.l a4, a7
db 0xCC, 0xC8 ; file 005CA0
db 0xFF, 0xFF ; 005CA2: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 005CA4: provisional 68k btst.l d0, (a4)
db 0x1B, 0xBB, 0x88, 0x88, 0x88, 0x88 ; 005CA6: provisional 68k move.b $5c30(pc, a0.l), -$78(a5, a0.l)
db 0x88, 0x88, 0x8B, 0xBB ; file 005CAC
db 0xAA, 0xBD ; 005CB0: provisional 68k dc.w $aabd
db 0xCC, 0x8C ; file 005CB2
db 0xDD, 0xAE, 0x9E, 0x9E ; 005CB4: provisional 68k add.l d6, -$6162(a6)
db 0xA8, 0xC8 ; 005CB8: provisional 68k dc.w $a8c8
db 0x88, 0xFF ; file 005CBA
db 0xFF, 0x01 ; 005CBC: provisional 68k dc.w $ff01
db 0x14, 0x88 ; file 005CBE
db 0xBB, 0xB8, 0x88, 0x8B ; 005CC0: provisional 68k eor.l d5, $888b.w
db 0x88, 0x88, 0x88, 0x88 ; file 005CC4
db 0xBB, 0xAF, 0xBB, 0xCC ; 005CC8: provisional 68k eor.l d5, -$4434(a7)
db 0xCC, 0xDB ; 005CCC: provisional 68k mulu.w (a3)+, d6
db 0xA9, 0x9E ; 005CCE: provisional 68k dc.w $a99e
db 0xEF, 0xA8 ; 005CD0: provisional 68k lsl.l d7, d0
db 0x88, 0x88 ; file 005CD2
db 0xFF, 0xFF ; 005CD4: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x8B, 0xB8 ; 005CD6: provisional 68k andi.b #$b8, (a3)
db 0x88, 0x8A ; file 005CDA
db 0xFB, 0x88 ; 005CDC: provisional 68k dc.w $fb88
db 0x8B, 0xB8, 0xBA, 0xEE ; 005CDE: provisional 68k or.l d5, $baee.w
db 0xAB, 0xCD ; 005CE2: provisional 68k dc.w $abcd
db 0xDC, 0x88 ; 005CE4: provisional 68k add.l a0, d6
db 0xE9, 0x9E ; 005CE6: provisional 68k rol.l #$4, d6
db 0xAB, 0xBB ; 005CE8: provisional 68k dc.w $abbb
db 0xB8, 0x88 ; 005CEA: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 005CEC: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xBB, 0xBB ; 005CEE: provisional 68k andi.b #$bb, (a3)
db 0xBB, 0xBB ; file 005CF2
db 0x99, 0x88 ; 005CF4: provisional 68k subx.l -(a0), -(a4)
db 0xBB, 0xBB ; file 005CF6
db 0xAF, 0x9E ; 005CF8: provisional 68k dc.w $af9e
db 0xAB, 0xD8 ; 005CFA: provisional 68k dc.w $abd8
db 0x88, 0x88 ; file 005CFC
db 0x99, 0xEB, 0x88, 0x8B ; 005CFE: provisional 68k suba.l -$7775(a3), a4
db 0xB8, 0x88 ; 005D02: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 005D04: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0xB8 ; 005D06: provisional 68k andi.b #$b8, (a3)
db 0xBB, 0xBB ; file 005D0A
db 0xAE, 0xFA ; 005D0C: provisional 68k dc.w $aefa
db 0xAA, 0xBA ; 005D0E: provisional 68k dc.w $aaba
db 0xFE, 0x99 ; 005D10: provisional 68k dc.w $fe99
db 0xEA, 0x88 ; 005D12: provisional 68k lsr.l #$5, d0
db 0x88, 0x89 ; file 005D14
db 0xEA, 0x88 ; 005D16: provisional 68k lsr.l #$5, d0
db 0x88, 0x8B, 0x88, 0x88 ; file 005D18
db 0xFF, 0xFF ; 005D1C: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0xAB ; 005D1E: provisional 68k andi.b #$ab, (a3)
db 0xBB, 0xB8, 0x8B, 0xB8 ; 005D22: provisional 68k eor.l d5, $8bb8.w
db 0xBB, 0xE9, 0xFF, 0xFF ; 005D26: provisional 68k cmpa.l -$1(a1), a5
db 0xFF, 0xAA ; 005D2A: provisional 68k dc.w $ffaa
db 0xAF, 0xF9 ; 005D2C: provisional 68k dc.w $aff9
db 0xB8, 0x88 ; 005D2E: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x88 ; file 005D30
db 0xFF, 0xFF ; 005D34: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 005D36: provisional 68k btst.l d1, (a1)
db 0xBA, 0xB8, 0xBB, 0x8B ; 005D38: provisional 68k cmp.l $bb8b.w, d5
db 0xAB, 0xBB ; 005D3C: provisional 68k dc.w $abbb
db 0xAF, 0xFA ; 005D3E: provisional 68k dc.w $affa
db 0xAA, 0xAA ; 005D40: provisional 68k dc.w $aaaa
db 0xFF, 0xBB ; 005D42: provisional 68k dc.w $ffbb
db 0xAA, 0xB8 ; 005D44: provisional 68k dc.w $aab8
db 0x88, 0x88, 0x88, 0x88 ; file 005D46
db 0xFF, 0xFF ; 005D4A: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 005D4C
db 0xAB, 0xB8 ; 005D4E: provisional 68k dc.w $abb8
db 0x8B, 0xFB, 0xBB, 0xBB, 0xBB, 0xBB, 0xB8, 0xBB, 0x88, 0x8B, 0xB8, 0x88 ; 005D50: provisional 68k divs.w ([$bbbc160d, a3.l * 2], $888bb888), d5
db 0x88, 0x88 ; file 005D5C
db 0xFF, 0xFF ; 005D5E: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 005D60
db 0x1B, 0xA8, 0x1B, 0xAA, 0xAB, 0xBB, 0xBB, 0xBB, 0xB8, 0x88, 0x8B, 0xBB, 0xB8, 0x88 ; 005D62: provisional 68k move.b $1baa(a0), ([$bbbbb888, a2.l * 2], $8bbbb888)
db 0x88, 0xA8, 0xFF, 0xFF ; 005D70: provisional 68k or.l -$1(a0), d4
db 0x06, 0x0D, 0x88, 0xBF ; file 005D74
db 0xFB, 0xBB ; 005D78: provisional 68k dc.w $fbbb
db 0xBB, 0xBB ; file 005D7A
db 0xBB, 0x88 ; 005D7C: provisional 68k cmpm.l (a0)+, (a5)+
db 0xBA, 0xFF ; file 005D7E
db 0xEA, 0x88 ; 005D80: provisional 68k lsr.l #$5, d0
db 0xBA, 0xF1, 0xFF, 0xFF, 0x06, 0x0D, 0x88, 0xB8 ; 005D82: provisional 68k cmpa.w ([$60d88b8]), a5
db 0xB8, 0x88 ; 005D8A: provisional 68k cmp.l a0, d4
db 0x88, 0x8B ; file 005D8C
db 0xBB, 0x88 ; 005D8E: provisional 68k cmpm.l (a0)+, (a5)+
db 0xBF, 0xFE, 0x9F, 0xFE ; file 005D90
db 0x99, 0xF1, 0xFF, 0xFF, 0x06, 0x0D, 0x88, 0xB8 ; 005D94: provisional 68k suba.l ([$60d88b8]), a4
db 0x88, 0x88, 0x88, 0x8B ; file 005D9C
db 0xBB, 0x88 ; 005DA0: provisional 68k cmpm.l (a0)+, (a5)+
db 0xBE, 0xEF, 0x99, 0x99 ; 005DA2: provisional 68k cmpa.w -$6667(a7), a7
db 0x9F, 0xFB, 0xFF, 0xFF, 0x07, 0x0C, 0x88, 0x88 ; 005DA6: provisional 68k suba.l ([$70ce630]), a7
db 0x88, 0x88, 0x8B, 0xBB ; file 005DAE
db 0x8B, 0xF9, 0xE9, 0x99, 0x9F, 0xFF ; 005DB2: provisional 68k divs.w $e9999fff.l, d5
db 0xFB, 0xFF ; 005DB8: provisional 68k dc.w $fbff
db 0xFF, 0x07 ; 005DBA: provisional 68k dc.w $ff07
db 0x0C, 0x8B, 0x88, 0x88, 0x88, 0x88, 0xBB, 0xBA, 0xEE, 0xF9 ; file 005DBC
db 0xE9, 0x9E ; 005DC6: provisional 68k rol.l #$4, d6
db 0xFE, 0xEB ; 005DC8: provisional 68k dc.w $feeb
db 0xFF, 0xFF ; 005DCA: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0x88 ; 005DCC: provisional 68k movep.w -$7478(a4), d3
db 0x88, 0x88 ; file 005DD0
db 0x88, 0xBB, 0xBA, 0xAA ; 005DD2: provisional 68k or.l $5d7e(pc, a3.l), d4
db 0xAF, 0xFE ; 005DD6: provisional 68k dc.w $affe
db 0x99, 0xFF ; file 005DD8
db 0xF1, 0xFF ; 005DDA: provisional 68k dc.w $f1ff
db 0xFF, 0x07 ; 005DDC: provisional 68k dc.w $ff07
db 0x0C, 0x1B, 0xB8, 0x88 ; 005DDE: provisional 68k cmpi.b #$88, (a3)+
db 0xBB, 0x88 ; 005DE2: provisional 68k cmpm.l (a0)+, (a5)+
db 0xC8, 0x8B ; file 005DE4
db 0xAB, 0xBF ; 005DE6: provisional 68k dc.w $abbf
db 0xFF, 0xFF ; 005DE8: provisional 68k dc.w $ffff
db 0xAA, 0xB1 ; 005DEA: provisional 68k dc.w $aab1
db 0xFF, 0xFF ; 005DEC: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0x1B, 0xBB ; 005DEE: provisional 68k movep.w $1bbb(a3), d3
db 0xBA, 0xFF ; file 005DF2
db 0xB8, 0x88 ; 005DF4: provisional 68k cmp.l a0, d4
db 0x88, 0xBB, 0xBB, 0xAA, 0xAA, 0xBB, 0xFF, 0xFF ; 005DF6: provisional 68k or.l ([$108b3, a3.l * 2], $ffff), d4
db 0x07, 0x0B, 0x1B, 0xB8 ; 005DFE: provisional 68k movep.w $1bb8(a3), d3
db 0xBA, 0xE9, 0x9A, 0xB8 ; 005E02: provisional 68k cmpa.w -$6548(a1), a5
db 0x88, 0x88, 0xCB, 0xBB ; file 005E06
db 0xAB, 0xBB ; 005E0A: provisional 68k dc.w $abbb
db 0xFF, 0xFF ; 005E0C: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0x1B, 0xBB ; 005E0E: provisional 68k movep.w $1bbb(a3), d3
db 0xBB, 0xF9, 0x99, 0x9B, 0x88, 0x88 ; 005E12: provisional 68k cmpa.l $999b8888.l, a5
db 0x88, 0x88 ; file 005E18
db 0xB8, 0x88 ; 005E1A: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 005E1C: provisional 68k dc.w $ffff
db 0x08, 0x0B ; file 005E1E
db 0xBB, 0x8B ; 005E20: provisional 68k cmpm.l (a3)+, (a5)+
db 0xBF, 0x99 ; 005E22: provisional 68k eor.l d7, (a1)+
db 0x99, 0x9A ; 005E24: provisional 68k sub.l d4, (a2)+
db 0x88, 0x88, 0x88, 0x8B, 0x88, 0x88 ; file 005E26
db 0xFF, 0xFF ; 005E2C: provisional 68k dc.w $ffff
db 0x08, 0x0B ; file 005E2E
db 0x1B, 0xBB, 0xBB, 0xAE, 0x99, 0x99, 0xFA, 0xB8, 0x88, 0x88 ; 005E30: provisional 68k move.b ([$f7cb], a3.l * 2, $fab8), -$78(a5, a0.l)
db 0x88, 0x88 ; file 005E3A
db 0xFF, 0xFF ; 005E3C: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xBB, 0xBB ; 005E3E: provisional 68k movep.w -$4445(a2), d4
db 0xBA, 0xAF, 0xEE, 0xEF ; 005E42: provisional 68k cmp.l -$1111(a7), d5
db 0xBB, 0xBB ; file 005E46
db 0x8B, 0xB8, 0x88, 0xFF ; 005E48: provisional 68k or.l d5, $88ff.w
db 0xFF, 0x09 ; 005E4C: provisional 68k dc.w $ff09
db 0x0A, 0x88, 0xBB, 0xBB ; file 005E4E
db 0xBB, 0xFA, 0xAA, 0xAA ; 005E52: provisional 68k cmpa.l $8fe(pc), a5
db 0xAB, 0xBA ; 005E56: provisional 68k dc.w $abba
db 0xAB, 0x88 ; 005E58: provisional 68k dc.w $ab88
db 0xFF, 0xFF ; 005E5A: provisional 68k dc.w $ffff
db 0x0A, 0x08, 0x8B, 0xBB ; file 005E5C
db 0x88, 0xBB, 0xBA, 0xAA ; 005E60: provisional 68k or.l $5e0c(pc, a3.l), d4
db 0xAA, 0xFF ; 005E64: provisional 68k dc.w $aaff
db 0xAA, 0xFF ; 005E66: provisional 68k dc.w $aaff
db 0xFF, 0x0B ; 005E68: provisional 68k dc.w $ff0b
db 0x07, 0xBB ; file 005E6A
db 0xBB, 0xB8, 0x8B, 0xBA ; 005E6C: provisional 68k eor.l d5, $8bba.w
db 0xFE, 0xEF ; 005E70: provisional 68k dc.w $feef
db 0xFB, 0xFF ; 005E72: provisional 68k dc.w $fbff
db 0xFF, 0x0C ; 005E74: provisional 68k dc.w $ff0c
db 0x06, 0xBB ; file 005E76
db 0xBB, 0xB8, 0x8A, 0xAF ; 005E78: provisional 68k eor.l d5, $8aaf.w
db 0xFF, 0xA8 ; 005E7C: provisional 68k dc.w $ffa8
db 0xFF, 0xFF ; 005E7E: provisional 68k dc.w $ffff
db 0x0D, 0x05 ; 005E80: provisional 68k btst.l d6, d5
db 0xBA, 0xBB, 0xB8, 0x8B ; 005E82: provisional 68k cmp.l $5e0f(pc, a3.l), d5
db 0x88, 0x88 ; file 005E86
db 0xFF, 0xFF ; 005E88: provisional 68k dc.w $ffff
db 0x0E, 0x03, 0x8B, 0xBB ; file 005E8A
db 0xBB, 0x88 ; 005E8E: provisional 68k cmpm.l (a0)+, (a5)+
db 0xFF, 0xFF ; 005E90: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005E92: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 005E94: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 005E96: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 005E9A: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 005EA0
db 0x10, 0x10 ; 005EA4: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 005EA6: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 005EA8: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 005EAA: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 005EAC: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 005EB0: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 005EB4: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 005EB6: provisional 68k neg.w d4
db 0x2C, 0x24 ; 005EB8: provisional 68k move.l -(a4), d6
db 0x20, 0xCC ; 005EBA: provisional 68k move.l a4, (a0)+
db 0xA0, 0x84 ; 005EBC: provisional 68k dc.w $a084
db 0x7C, 0x6C ; 005EBE: provisional 68k moveq #$6c, d6
db 0x64, 0x6C ; 005EC0: provisional 68k bcc.b $5f2e
db 0x58, 0x48 ; 005EC2: provisional 68k addq.w #$4, a0
db 0x00, 0x20, 0x40, 0x00 ; 005EC4: provisional 68k ori.b #$0, -(a0)
db 0x40, 0x7C ; file 005EC8
db 0xB0, 0x78, 0x64, 0x98 ; 005ECA: provisional 68k cmp.w $6498.w, d0
db 0x78, 0x64 ; 005ECE: provisional 68k moveq #$64, d4
db 0xFF, 0xFF ; 005ED0: provisional 68k dc.w $ffff
db 0x0A, 0x04, 0xBB, 0xBF ; 005ED2: provisional 68k eori.b #$bf, d4
db 0xBB, 0xBB, 0x88, 0xFF ; file 005ED6
db 0xFF, 0x06 ; 005EDA: provisional 68k dc.w $ff06
db 0x0A, 0x88, 0xBB, 0xBF ; file 005EDC
db 0xFE, 0xFA ; 005EE0: provisional 68k dc.w $fefa
db 0xEE, 0xE9, 0xEE, 0xEE ; file 005EE2
db 0xFA, 0xB1 ; 005EE6: provisional 68k dc.w $fab1
db 0xFF, 0xFF ; 005EE8: provisional 68k dc.w $ffff
db 0x05, 0x0C, 0x1B, 0xAF ; 005EEA: provisional 68k movep.w $1baf(a4), d2
db 0xEE, 0xE9 ; file 005EEE
db 0xEA, 0xAE ; 005EF0: provisional 68k lsr.l d5, d6
db 0x9F, 0xFF, 0xE9, 0xEF, 0xEE, 0xEF, 0xB1, 0xFF ; file 005EF2
db 0xFF, 0x05 ; 005EFA: provisional 68k dc.w $ff05
db 0x0C, 0xAF, 0xEE, 0x9E, 0xEE, 0xE9, 0x9E, 0xFF ; 005EFC: provisional 68k cmpi.l #$ee9eeee9, -$6101(a7)
db 0xEE, 0xEE ; file 005F04
db 0x99, 0xEE, 0x9E, 0xAB ; 005F06: provisional 68k suba.l -$6155(a6), a4
db 0xFF, 0xFF ; 005F0A: provisional 68k dc.w $ffff
db 0x04, 0x0E, 0xBA, 0xFE ; file 005F0C
db 0xEE, 0x99 ; 005F10: provisional 68k ror.l #$7, d1
db 0xE9, 0x9E ; 005F12: provisional 68k rol.l #$4, d6
db 0xEE, 0xEE ; file 005F14
db 0x99, 0xEE, 0xEE, 0x99 ; 005F16: provisional 68k suba.l -$1167(a6), a4
db 0xEE, 0xEE, 0xE1, 0xFF ; file 005F1A
db 0xFF, 0x03 ; 005F1E: provisional 68k dc.w $ff03
db 0x0F, 0x1B ; 005F20: provisional 68k btst.l d7, (a3)+
db 0xBF, 0xEE, 0xFE, 0xEE ; 005F22: provisional 68k cmpa.l -$112(a6), a7
db 0xE9, 0x99 ; 005F26: provisional 68k rol.l #$4, d1
db 0x9E, 0xEE, 0x99, 0x99 ; 005F28: provisional 68k suba.w -$6667(a6), a7
db 0xEE, 0x99 ; 005F2C: provisional 68k ror.l #$7, d1
db 0xEE, 0xEE, 0xEE, 0xFF ; file 005F2E
db 0xFF, 0x02 ; 005F32: provisional 68k dc.w $ff02
db 0x11, 0x1B ; 005F34: provisional 68k move.b (a3)+, -(a0)
db 0xAB, 0xBF ; 005F36: provisional 68k dc.w $abbf
db 0xEE, 0xEF ; file 005F38
db 0xFF, 0x9E ; 005F3A: provisional 68k dc.w $ff9e
db 0x99, 0x9E ; 005F3C: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xE9 ; file 005F3E
db 0x99, 0xEE, 0xE9, 0x9E ; 005F40: provisional 68k suba.l -$1662(a6), a4
db 0xEE, 0xEE, 0xE1, 0xFF ; file 005F44
db 0xFF, 0x02 ; 005F48: provisional 68k dc.w $ff02
db 0x11, 0x8B ; file 005F4A
db 0xAB, 0xBB ; 005F4C: provisional 68k dc.w $abbb
db 0xFE, 0xEE ; 005F4E: provisional 68k dc.w $feee
db 0xEE, 0xEE ; file 005F50
db 0x9E, 0xF9, 0x99, 0x99, 0xEE, 0x9E ; 005F52: provisional 68k suba.w $9999ee9e.l, a7
db 0xEE, 0xEF, 0xE9, 0xEE, 0xEB, 0xFF ; file 005F58
db 0xFF, 0x02 ; 005F5E: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 005F60
db 0xBA, 0xBA, 0xAF, 0xEE ; 005F62: provisional 68k cmp.l $f52(pc), d5
db 0xEF, 0xBE ; 005F66: provisional 68k rol.l d7, d6
db 0xE9, 0x99 ; 005F68: provisional 68k rol.l #$4, d1
db 0x99, 0x99 ; 005F6A: provisional 68k sub.l d4, (a1)+
db 0xE9, 0x99 ; 005F6C: provisional 68k rol.l #$4, d1
db 0xE9, 0xBB ; 005F6E: provisional 68k rol.l d4, d3
db 0xE9, 0xEE, 0xEB, 0xFF ; file 005F70
db 0xFF, 0x02 ; 005F74: provisional 68k dc.w $ff02
db 0x11, 0x88 ; file 005F76
db 0x8A, 0xBB, 0xBB, 0xFE, 0xB8, 0xAE, 0xEE, 0x99 ; 005F78: provisional 68k or.l ([$b8af4e13]), d5
db 0x99, 0x99 ; 005F80: provisional 68k sub.l d4, (a1)+
db 0x9E, 0x99 ; 005F82: provisional 68k sub.l (a1)+, d7
db 0xFF, 0xFF ; 005F84: provisional 68k dc.w $ffff
db 0xEE, 0xEE, 0xEA, 0xFF ; file 005F86
db 0xFF, 0x01 ; 005F8A: provisional 68k dc.w $ff01
db 0x13, 0x88 ; file 005F8C
db 0xBB, 0x8B ; 005F8E: provisional 68k cmpm.l (a3)+, (a5)+
db 0xBB, 0x8B ; 005F90: provisional 68k cmpm.l (a3)+, (a5)+
db 0xFA, 0xAF ; 005F92: provisional 68k dc.w $faaf
db 0xAA, 0xAB ; 005F94: provisional 68k dc.w $aaab
db 0xA9, 0x99 ; 005F96: provisional 68k dc.w $a999
db 0x99, 0x9E ; 005F98: provisional 68k sub.l d4, (a6)+
db 0xEF, 0xBA ; 005F9A: provisional 68k rol.l d7, d2
db 0xEE, 0xE9, 0xEE, 0xEB, 0x88, 0xFF ; file 005F9C
db 0xFF, 0x01 ; 005FA2: provisional 68k dc.w $ff01
db 0x13, 0x88 ; file 005FA4
db 0x8B, 0xB8, 0xB8, 0xBB ; 005FA6: provisional 68k or.l d5, $b8bb.w
db 0xBB, 0xBE ; file 005FAA
db 0xEB, 0xBB ; 005FAC: provisional 68k rol.l d5, d3
db 0xFE, 0x99 ; 005FAE: provisional 68k dc.w $fe99
db 0x99, 0x99 ; 005FB0: provisional 68k sub.l d4, (a1)+
db 0xEA, 0xE9, 0x9E, 0xFE ; file 005FB2
db 0x9F, 0xEB, 0xB1, 0xFF ; 005FB6: provisional 68k suba.l -$4e01(a3), a7
db 0xFF, 0x01 ; 005FBA: provisional 68k dc.w $ff01
db 0x13, 0x88, 0x88, 0x8B ; file 005FBC
db 0xB8, 0x8B ; 005FC0: provisional 68k cmp.l a3, d4
db 0xBB, 0x88 ; 005FC2: provisional 68k cmpm.l (a0)+, (a5)+
db 0xFB, 0xBE ; 005FC4: provisional 68k dc.w $fbbe
db 0xEB, 0xF9 ; file 005FC6
db 0x99, 0x9E ; 005FC8: provisional 68k sub.l d4, (a6)+
db 0xFE, 0x99 ; 005FCA: provisional 68k dc.w $fe99
db 0x9E, 0xAA, 0xFE, 0xEB ; 005FCC: provisional 68k sub.l -$115(a2), d7
db 0xB1, 0xFF ; file 005FD0
db 0xFF, 0x01 ; 005FD2: provisional 68k dc.w $ff01
db 0x13, 0x88, 0x88, 0x8B ; file 005FD4
db 0xA8, 0x8B ; 005FD8: provisional 68k dc.w $a88b
db 0xBB, 0x88 ; 005FDA: provisional 68k cmpm.l (a0)+, (a5)+
db 0xB8, 0xB9, 0xEB, 0xBE, 0xBB, 0xBE ; 005FDC: provisional 68k cmp.l $ebbebbbe.l, d4
db 0x99, 0x99 ; 005FE2: provisional 68k sub.l d4, (a1)+
db 0x9E, 0xAB, 0xBE, 0xFB ; 005FE4: provisional 68k sub.l -$4105(a3), d7
db 0xB1, 0xFF ; file 005FE8
db 0xFF, 0x01 ; 005FEA: provisional 68k dc.w $ff01
db 0x13, 0x88, 0x88, 0x8B, 0xBB, 0xBB ; file 005FEC
db 0xBB, 0xAF, 0xB8, 0xBF ; 005FF2: provisional 68k eor.l d5, -$4741(a7)
db 0xFB, 0xF9 ; 005FF6: provisional 68k dc.w $fbf9
db 0xFA, 0xB9 ; 005FF8: provisional 68k dc.w $fab9
db 0x99, 0x9E ; 005FFA: provisional 68k sub.l d4, (a6)+
db 0xEE, 0xFB ; file 005FFC
db 0xBE, 0xBB, 0xB1, 0xFF, 0xFF, 0x01, 0x13, 0x88 ; 005FFE: provisional 68k cmp.l ([$ff017388]), d7
db 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB, 0xBB, 0xBB ; file 006006
db 0xBA, 0xEF, 0xEE, 0xAB ; 00600E: provisional 68k cmpa.w -$1155(a7), a5
db 0xFF, 0xFF ; 006012: provisional 68k dc.w $ffff
db 0xEE, 0xEE ; file 006014
db 0xEF, 0xBB ; 006016: provisional 68k rol.l d7, d3
db 0xB1, 0xFF ; file 006018
db 0xFF, 0x01 ; 00601A: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB, 0xBB ; file 00601C
db 0xBF, 0xE9, 0xEE, 0x99 ; 006028: provisional 68k cmpa.l -$1167(a1), a7
db 0x9E, 0xAF, 0xEB, 0xBB ; 00602C: provisional 68k sub.l -$1445(a7), d7
db 0x8B, 0xEB, 0xFF, 0xFF ; 006030: provisional 68k divs.w -$1(a3), d5
db 0x01, 0x14 ; 006034: provisional 68k btst.l d0, (a4)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 006036
db 0xBB, 0xB8, 0x88, 0xBB ; 00603C: provisional 68k eor.l d5, $88bb.w
db 0xBE, 0xEE, 0xEE, 0xA8 ; 006040: provisional 68k cmpa.w -$1158(a6), a7
db 0xBE, 0xAB, 0x8E, 0x9F ; 006044: provisional 68k cmp.l -$7161(a3), d7
db 0xFF, 0xFF ; 006048: provisional 68k dc.w $ffff
db 0xA8, 0xFF ; 00604A: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 00604C: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 00604E
db 0xB8, 0x88 ; 006056: provisional 68k cmp.l a0, d4
db 0x88, 0xBA, 0xBB, 0xBA ; 006058: provisional 68k or.l $1c14(pc), d4
db 0xB8, 0xBE, 0x99, 0xFF, 0x9F, 0xFF ; file 00605C
db 0xAB, 0xB8 ; 006062: provisional 68k dc.w $abb8
db 0xFF, 0xFF ; 006064: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 006066: provisional 68k btst.l d0, (a4)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xBB, 0xBA ; file 006068
db 0xFF, 0xFE ; 006074: provisional 68k dc.w $fffe
db 0x99, 0x99 ; 006076: provisional 68k sub.l d4, (a1)+
db 0xFF, 0xFF ; 006078: provisional 68k dc.w $ffff
db 0xAB, 0xB8 ; 00607A: provisional 68k dc.w $abb8
db 0x88, 0xFF ; file 00607C
db 0xFF, 0x00 ; 00607E: provisional 68k dc.w $ff00
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 006080
db 0x8B, 0xAF, 0xF9, 0x99 ; 00608C: provisional 68k or.l d5, -$667(a7)
db 0x9F, 0xFF ; file 006090
db 0xAB, 0xAF ; 006092: provisional 68k dc.w $abaf
db 0xAB, 0xB8 ; 006094: provisional 68k dc.w $abb8
db 0x88, 0xFF ; file 006096
db 0xFF, 0x00 ; 006098: provisional 68k dc.w $ff00
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F, 0xFF ; file 00609A
db 0xF9, 0x99 ; 0060A8: provisional 68k dc.w $f999
db 0xFF, 0xBB ; 0060AA: provisional 68k dc.w $ffbb
db 0xBB, 0xBA ; file 0060AC
db 0xAB, 0x88 ; 0060AE: provisional 68k dc.w $ab88
db 0x88, 0xFF ; file 0060B0
db 0xFF, 0x00 ; 0060B2: provisional 68k dc.w $ff00
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0060B4
db 0x8A, 0xAF, 0xFF, 0xFF ; 0060C0: provisional 68k or.l -$1(a7), d5
db 0xFB, 0xBB ; 0060C4: provisional 68k dc.w $fbbb
db 0xBB, 0xBB ; file 0060C6
db 0xB8, 0x8B ; 0060C8: provisional 68k cmp.l a3, d4
db 0xAB, 0xFF ; 0060CA: provisional 68k dc.w $abff
db 0xFF, 0x01 ; 0060CC: provisional 68k dc.w $ff01
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0060CE
db 0xAF, 0xFE ; 0060DA: provisional 68k dc.w $affe
db 0xEE, 0xBB ; 0060DC: provisional 68k ror.l d7, d3
db 0x88, 0x88, 0x88, 0x88 ; file 0060DE
db 0xCD, 0xDF ; 0060E2: provisional 68k muls.w (a7)+, d6
db 0x88, 0xFF ; file 0060E4
db 0xFF, 0x01 ; 0060E6: provisional 68k dc.w $ff01
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0060E8
db 0x88, 0xBA, 0xAA, 0xFE ; 0060F2: provisional 68k or.l $bf2(pc), d4
db 0xFD, 0xAB ; 0060F6: provisional 68k dc.w $fdab
db 0x88, 0x88, 0x88, 0x8C ; file 0060F8
db 0x88, 0xDD ; 0060FC: provisional 68k divu.w (a5)+, d4
db 0x88, 0xFF ; file 0060FE
db 0xFF, 0x01 ; 006100: provisional 68k dc.w $ff01
db 0x15, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xBF ; file 006102
db 0xFB, 0xBE ; 00610E: provisional 68k dc.w $fbbe
db 0xAD, 0xDF ; 006110: provisional 68k dc.w $addf
db 0x88, 0xBF ; file 006112
db 0xFB, 0x8C ; 006114: provisional 68k dc.w $fb8c
db 0x88, 0xDD ; 006116: provisional 68k divu.w (a5)+, d4
db 0x88, 0xFF ; file 006118
db 0xFF, 0x01 ; 00611A: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00611C
db 0x88, 0xBB, 0xBB, 0xED, 0xDC, 0xCD ; 006126: provisional 68k or.l ([$13df5]), d4
db 0x8B, 0xF9, 0xEF, 0x8C, 0xCD, 0xDC ; 00612C: provisional 68k divs.w $ef8ccddc.l, d5
db 0xFF, 0xFF ; 006132: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 006134: provisional 68k btst.l d0, (a4)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 006136
db 0xBB, 0x8A ; 006140: provisional 68k cmpm.l (a2)+, (a5)+
db 0xFD, 0xC8 ; 006142: provisional 68k dc.w $fdc8
db 0xCD, 0xBE ; file 006144
db 0x9E, 0xEE, 0xB8, 0xCC ; 006146: provisional 68k suba.w -$4734(a6), a7
db 0xC1, 0xFF ; file 00614A
db 0xFF, 0x01 ; 00614C: provisional 68k dc.w $ff01
db 0x14, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xBF ; file 00614E
db 0x8B, 0xAD, 0xDC, 0xCC ; 00615A: provisional 68k or.l d5, -$2334(a5)
db 0xF9, 0x9E ; 00615E: provisional 68k dc.w $f99e
db 0xEA, 0xBB ; 006160: provisional 68k ror.l d5, d3
db 0x88, 0x88 ; file 006162
db 0xFF, 0xFF ; 006164: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x88, 0x88 ; 006166: provisional 68k andi.b #$88, (a3)
db 0x88, 0x8B ; file 00616A
db 0xA8, 0x88 ; 00616C: provisional 68k dc.w $a888
db 0x88, 0x88, 0x8B, 0xFE ; file 00616E
db 0xB8, 0x88 ; 006172: provisional 68k cmp.l a0, d4
db 0xDC, 0x88 ; 006174: provisional 68k add.l a0, d6
db 0xE9, 0x9F ; 006176: provisional 68k rol.l #$4, d7
db 0xB8, 0x88 ; 006178: provisional 68k cmp.l a0, d4
db 0x88, 0x88 ; file 00617A
db 0xFF, 0xFF ; 00617C: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1B, 0x88 ; 00617E: provisional 68k andi.b #$88, (a3)
db 0x88, 0x88 ; file 006182
db 0x99, 0x88 ; 006184: provisional 68k subx.l -(a0), -(a4)
db 0x88, 0x88 ; file 006186
db 0xBF, 0x9E ; 006188: provisional 68k eor.l d7, (a6)+
db 0xBB, 0x88 ; 00618A: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88 ; file 00618C
db 0x99, 0xF8, 0x88, 0x88 ; 00618E: provisional 68k suba.l $8888.w, a4
db 0xB8, 0x88 ; 006192: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 006194: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 006196: provisional 68k btst.l d1, (a2)
db 0xB8, 0x88 ; 006198: provisional 68k cmp.l a0, d4
db 0x88, 0xBF ; file 00619A
db 0xAB, 0xBB ; 00619C: provisional 68k dc.w $abbb
db 0xBB, 0xFF ; file 00619E
db 0x99, 0xFB, 0x88, 0x88 ; 0061A0: provisional 68k suba.l $612a(pc, a0.l), a4
db 0x8B, 0xFA, 0x88, 0x88 ; 0061A4: provisional 68k divs.w $ffffea2e(pc), d5
db 0x88, 0x88, 0x88, 0xFF ; file 0061A8
db 0xFF, 0x03 ; 0061AC: provisional 68k dc.w $ff03
db 0x11, 0xB8, 0x88, 0x88, 0x88, 0x88 ; 0061AE: provisional 68k move.b $8888.w, -$78(a0, a0.l)
db 0x8B, 0xF9, 0xFF, 0xAA, 0xFA, 0xFF ; 0061B4: provisional 68k divs.w $ffaafaff.l, d5
db 0xFA, 0xBE ; 0061BA: provisional 68k dc.w $fabe
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 0061BC
db 0xFF, 0x03 ; 0061C2: provisional 68k dc.w $ff03
db 0x10, 0x1B ; 0061C4: provisional 68k move.b (a3)+, d0
db 0x88, 0x8B ; file 0061C6
db 0x88, 0xB8, 0x88, 0xBA ; 0061C8: provisional 68k or.l $88ba.w, d4
db 0xAB, 0xBB ; 0061CC: provisional 68k dc.w $abbb
db 0xBB, 0xFE ; file 0061CE
db 0xB8, 0xBA, 0xA8, 0x88 ; 0061D0: provisional 68k cmp.l $a5a(pc), d4
db 0x88, 0x88 ; file 0061D4
db 0xFF, 0xFF ; 0061D6: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 0061D8
db 0xB8, 0xB8, 0x8B, 0xAB ; 0061DA: provisional 68k cmp.l $8bab.w, d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0061DE
db 0xB8, 0x88 ; 0061E6: provisional 68k cmp.l a0, d4
db 0x88, 0x88 ; file 0061E8
db 0xFF, 0xFF ; 0061EA: provisional 68k dc.w $ffff
db 0x04, 0x0F ; file 0061EC
db 0x88, 0xB8, 0x88, 0xBA ; 0061EE: provisional 68k or.l $88ba.w, d4
db 0xB8, 0x88 ; 0061F2: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0061F4
db 0xB8, 0x88 ; 0061FA: provisional 68k cmp.l a0, d4
db 0x88, 0xB1, 0xFF, 0xFF, 0x06, 0x0D, 0x88, 0x8F ; 0061FC: provisional 68k or.l ([$60d888f]), d4
db 0xF8, 0x88 ; 006204: provisional 68k dc.w $f888
db 0x88, 0x88, 0x88, 0x88 ; file 006206
db 0x8A, 0xAF, 0xFB, 0x88 ; 00620A: provisional 68k or.l -$478(a7), d5
db 0x8A, 0xF1, 0xFF, 0xFF, 0x06, 0x0D, 0x88, 0x88 ; 00620E: provisional 68k divu.w ([$60d8888]), d5
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F, 0xFF ; file 006216
db 0x9F, 0xAF, 0x99, 0xA1 ; 00621E: provisional 68k sub.l d7, -$665f(a7)
db 0xFF, 0xFF ; 006222: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0x88, 0x88, 0xBE, 0xFF ; file 006224
db 0x99, 0x99 ; 006230: provisional 68k sub.l d4, (a1)+
db 0x9F, 0xAB, 0xFF, 0xFF ; 006232: provisional 68k sub.l d7, -$1(a3)
db 0x07, 0x0C, 0x88, 0x88 ; 006236: provisional 68k movep.w -$7778(a4), d3
db 0x88, 0x88 ; file 00623A
db 0x8B, 0x88 ; 00623C: provisional 68k dc.w $8b88
db 0x8B, 0xF9, 0xF9, 0x99, 0x9F, 0xFF ; 00623E: provisional 68k divs.w $f9999fff.l, d5
db 0xF8, 0xFF ; 006244: provisional 68k dc.w $f8ff
db 0xFF, 0x07 ; 006246: provisional 68k dc.w $ff07
db 0x0C, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8A ; file 006248
db 0xFF, 0xF9 ; 006250: provisional 68k dc.w $fff9
db 0xF9, 0x9E ; 006252: provisional 68k dc.w $f99e
db 0xFE, 0xEB ; 006254: provisional 68k dc.w $feeb
db 0xFF, 0xFF ; 006256: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0x88 ; 006258: provisional 68k movep.w -$7478(a4), d3
db 0x88, 0x88, 0x88, 0x8B, 0xBB, 0xBB, 0xBF, 0xFE, 0x99, 0xFF ; file 00625C
db 0xA8, 0xFF ; 006266: provisional 68k dc.w $a8ff
db 0xFF, 0x07 ; 006268: provisional 68k dc.w $ff07
db 0x0C, 0x8B, 0x88, 0x88, 0x88, 0x88, 0xC8, 0x88 ; file 00626A
db 0xB8, 0x8A ; 006272: provisional 68k cmp.l a2, d4
db 0xAA, 0xAA ; 006274: provisional 68k dc.w $aaaa
db 0xAB, 0x88 ; 006276: provisional 68k dc.w $ab88
db 0xFF, 0xFF ; 006278: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1B, 0x88 ; 00627A: provisional 68k movep.w $1b88(a4), d3
db 0x8B, 0xFA, 0x88, 0x88 ; 00627E: provisional 68k divs.w $ffffeb08(pc), d5
db 0x88, 0x88, 0x8B, 0xBA ; file 006282
db 0xAB, 0xBB ; 006286: provisional 68k dc.w $abbb
db 0x88, 0xFF ; file 006288
db 0xFF, 0x07 ; 00628A: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 00628C: provisional 68k btst.l d5, (a3)+
db 0x88, 0xBB, 0x99, 0x9A, 0xB8, 0x88 ; 00628E: provisional 68k or.l ([$6290, a1.l], $b888), d4
db 0x88, 0xC8 ; file 006294
db 0x8B, 0xB8, 0x88, 0xFF ; 006296: provisional 68k or.l d5, $88ff.w
db 0xFF, 0x07 ; 00629A: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 00629C: provisional 68k btst.l d5, (a3)+
db 0x88, 0x88 ; file 00629E
db 0xA9, 0x99 ; 0062A0: provisional 68k dc.w $a999
db 0x98, 0x88 ; 0062A2: provisional 68k sub.l a0, d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 0062A4
db 0xFF, 0x08 ; 0062AA: provisional 68k dc.w $ff08
db 0x0B, 0xB8, 0x88, 0xBF ; 0062AC: provisional 68k bclr.b d5, $88bf.w
db 0x99, 0x99 ; 0062B0: provisional 68k sub.l d4, (a1)+
db 0x9A, 0x88 ; 0062B2: provisional 68k sub.l a0, d5
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 0062B4
db 0xFF, 0x08 ; 0062BA: provisional 68k dc.w $ff08
db 0x0B, 0x8B, 0xB8, 0x88 ; 0062BC: provisional 68k movep.w d5, -$4778(a3)
db 0xBE, 0x99 ; 0062C0: provisional 68k cmp.l (a1)+, d7
db 0x99, 0xFA, 0x88, 0x88 ; 0062C2: provisional 68k suba.l $ffffeb4c(pc), a4
db 0x88, 0x88, 0x88, 0xFF ; file 0062C6
db 0xFF, 0x08 ; 0062CA: provisional 68k dc.w $ff08
db 0x0B, 0x88, 0x8B, 0x88 ; 0062CC: provisional 68k movep.w d5, -$7478(a0)
db 0x8B, 0xBA ; file 0062D0
db 0xFF, 0xEA ; 0062D2: provisional 68k dc.w $ffea
db 0xBB, 0xB8, 0x88, 0x88 ; 0062D4: provisional 68k eor.l d5, $8888.w
db 0x88, 0xFF ; file 0062D8
db 0xFF, 0x09 ; 0062DA: provisional 68k dc.w $ff09
db 0x0A, 0x88, 0x88, 0x88 ; file 0062DC
db 0x8B, 0xAB, 0xBB, 0xBB ; 0062E0: provisional 68k or.l d5, -$4445(a3)
db 0xB8, 0xBB, 0xB8, 0x88 ; 0062E4: provisional 68k cmp.l $626e(pc, a3.l), d4
db 0xFF, 0xFF ; 0062E8: provisional 68k dc.w $ffff
db 0x0A, 0x08 ; file 0062EA
db 0x88, 0xB8, 0x88, 0x88 ; 0062EC: provisional 68k or.l $8888.w, d4
db 0x8B, 0xBB ; file 0062F0
db 0xBB, 0xAF, 0xAB, 0xFF ; 0062F2: provisional 68k eor.l d5, -$5401(a7)
db 0xFF, 0x0B ; 0062F6: provisional 68k dc.w $ff0b
db 0x07, 0x88, 0xB8, 0x88 ; 0062F8: provisional 68k movep.w d3, -$4778(a0)
db 0x88, 0xBB, 0xFE, 0xFF ; 0062FC: provisional 68k or.l $62fd(pc, a7.l), d4
db 0xAB, 0xFF ; 006300: provisional 68k dc.w $abff
db 0xFF, 0x0C ; 006302: provisional 68k dc.w $ff0c
db 0x06, 0x8B ; file 006304
db 0xB8, 0x88 ; 006306: provisional 68k cmp.l a0, d4
db 0x8B, 0xBA ; file 006308
db 0xAA, 0xB1 ; 00630A: provisional 68k dc.w $aab1
db 0xFF, 0xFF ; 00630C: provisional 68k dc.w $ffff
db 0x0D, 0x04 ; 00630E: provisional 68k btst.l d6, d4
db 0x88, 0xB8, 0x88, 0x88 ; 006310: provisional 68k or.l $8888.w, d4
db 0x88, 0xFF ; file 006314
db 0xFF, 0x0E ; 006316: provisional 68k dc.w $ff0e
db 0x03, 0x1D ; 006318: provisional 68k btst.l d1, (a5)+
db 0xB8, 0x88 ; 00631A: provisional 68k cmp.l a0, d4
db 0x88, 0xFF ; file 00631C
db 0xFF, 0xFF ; 00631E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006320: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 006322: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 006324: provisional 68k ori.b #$0, d0
db 0x00, 0x30, 0x00, 0x39, 0x00, 0x10 ; 006328: provisional 68k ori.b #$39, $10(a0, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 00632E
db 0x10, 0x10 ; 006332: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 006334: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 006336: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 006338: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00633A: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00633E: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006342: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 006344: provisional 68k neg.w d4
db 0x1C, 0x14 ; 006346: provisional 68k move.b (a4), d6
db 0x10, 0xB4, 0x7C, 0x64 ; 006348: provisional 68k move.b $64(a4, d7.l), (a0)
db 0x6C, 0x58 ; 00634C: provisional 68k bge.b $63a6
db 0x48, 0x44 ; 00634E: provisional 68k swap d4
db 0x34, 0x34, 0x00, 0x24 ; 006350: provisional 68k move.w $24(a4, d0.w), d2
db 0x4C, 0x98, 0x78, 0x64 ; 006354: provisional 68k movem.w (a0)+, d2/d5-d6/a3-a6
db 0xCC, 0xA0 ; 006358: provisional 68k and.l -(a0), d6
db 0x84, 0x80 ; 00635A: provisional 68k or.l d0, d2
db 0x6C, 0x60 ; 00635C: provisional 68k bge.b $63be
db 0x09, 0x05 ; 00635E: provisional 68k btst.l d4, d5
db 0xAA, 0xAF ; 006360: provisional 68k dc.w $aaaf
db 0xDD, 0xD9 ; 006362: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFA ; 006364: provisional 68k dc.w $fffa
db 0xFF, 0xFF ; 006366: provisional 68k dc.w $ffff
db 0x06, 0x0A ; file 006368
db 0x1A, 0xAF, 0xDD, 0x99 ; 00636A: provisional 68k move.b -$2267(a7), (a5)
db 0xDF, 0x99 ; 00636E: provisional 68k add.l d7, (a1)+
db 0x9E, 0x99 ; 006370: provisional 68k sub.l (a1)+, d7
db 0x99, 0x9F ; 006372: provisional 68k sub.l d4, (a7)+
db 0xF1, 0xFF ; 006374: provisional 68k dc.w $f1ff
db 0xFF, 0x04 ; 006376: provisional 68k dc.w $ff04
db 0x0D, 0x1B ; 006378: provisional 68k btst.l d6, (a3)+
db 0xAA, 0xD9 ; 00637A: provisional 68k dc.w $aad9
db 0x99, 0x99 ; 00637C: provisional 68k sub.l d4, (a1)+
db 0x9F, 0xF9, 0x9D, 0xDD, 0x9E, 0x9D ; 00637E: provisional 68k suba.l $9ddd9e9d.l, a7
db 0xD9, 0x99 ; 006384: provisional 68k add.l d4, (a1)+
db 0xD1, 0xFF ; file 006386
db 0xFF, 0x04 ; 006388: provisional 68k dc.w $ff04
db 0x0E, 0xAA ; file 00638A
db 0xFD, 0x99 ; 00638C: provisional 68k dc.w $fd99
db 0xE9, 0xD9 ; file 00638E
db 0x99, 0xE9, 0xDD, 0x99 ; 006390: provisional 68k suba.l -$2267(a1), a4
db 0x99, 0xEE, 0xE9, 0x9E ; 006394: provisional 68k suba.l -$1662(a6), a4
db 0x9D, 0xA1 ; 006398: provisional 68k sub.l d6, -(a1)
db 0xFF, 0xFF ; 00639A: provisional 68k dc.w $ffff
db 0x03, 0x0F, 0x1A, 0xF9 ; 00639C: provisional 68k movep.w $1af9(a7), d1
db 0xDD, 0xD9 ; 0063A0: provisional 68k adda.l (a1)+, a6
db 0xE9, 0x99 ; 0063A2: provisional 68k rol.l #$4, d1
db 0x99, 0xDD ; 0063A4: provisional 68k suba.l (a5)+, a4
db 0xD9, 0x99 ; 0063A6: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 0063A8: provisional 68k sub.l d4, (a1)+
db 0xEE, 0xD9 ; file 0063AA
db 0xE9, 0x9D ; 0063AC: provisional 68k rol.l #$4, d5
db 0xFF, 0xFF ; 0063AE: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 0063B0: provisional 68k btst.l d1, (a0)
db 0xFF, 0xF9 ; 0063B2: provisional 68k dc.w $fff9
db 0x9D, 0x99 ; 0063B4: provisional 68k sub.l d6, (a1)+
db 0x99, 0x99 ; 0063B6: provisional 68k sub.l d4, (a1)+
db 0xEE, 0x99 ; 0063B8: provisional 68k ror.l #$7, d1
db 0x99, 0x9E ; 0063BA: provisional 68k sub.l d4, (a6)+
db 0xEE, 0x9F ; 0063BC: provisional 68k ror.l #$7, d7
db 0x9E, 0x9D ; 0063BE: provisional 68k sub.l (a5)+, d7
db 0x99, 0xD9 ; 0063C0: provisional 68k suba.l (a1)+, a4
db 0xD1, 0xFF ; file 0063C2
db 0xFF, 0x02 ; 0063C4: provisional 68k dc.w $ff02
db 0x11, 0x1F ; 0063C6: provisional 68k move.b (a7)+, -(a0)
db 0xAA, 0xAF ; 0063C8: provisional 68k dc.w $aaaf
db 0xDD, 0x99 ; 0063CA: provisional 68k add.l d6, (a1)+
db 0xDE, 0x99 ; 0063CC: provisional 68k add.l (a1)+, d7
db 0xEE, 0x99 ; 0063CE: provisional 68k ror.l #$7, d1
db 0xE9, 0x9E ; 0063D0: provisional 68k rol.l #$4, d6
db 0xEE, 0x99 ; 0063D2: provisional 68k ror.l #$7, d1
db 0x9E, 0xE9, 0x99, 0x99 ; 0063D4: provisional 68k suba.w -$6667(a1), a7
db 0x9A, 0xFF ; file 0063D8
db 0xFF, 0x02 ; 0063DA: provisional 68k dc.w $ff02
db 0x11, 0xAF, 0xAA, 0xAF, 0xD9, 0xD9 ; 0063DC: provisional 68k move.b -$5551(a7), ([])
db 0x99, 0x99 ; 0063E2: provisional 68k sub.l d4, (a1)+
db 0xE9, 0x9E ; 0063E4: provisional 68k rol.l #$4, d6
db 0xEE, 0xEE ; file 0063E6
db 0xE9, 0x99 ; 0063E8: provisional 68k rol.l #$4, d1
db 0x99, 0xE9, 0x9E, 0x9D ; 0063EA: provisional 68k suba.l -$6163(a1), a4
db 0x99, 0xFF ; file 0063EE
db 0xFF, 0x01 ; 0063F0: provisional 68k dc.w $ff01
db 0x12, 0x1B ; 0063F2: provisional 68k move.b (a3)+, d1
db 0xBA, 0xFA, 0xAA, 0xD9 ; 0063F4: provisional 68k cmpa.w $ecf(pc), a5
db 0xDF, 0xAA, 0xD9, 0x9E ; 0063F8: provisional 68k add.l d7, -$2662(a2)
db 0xEE, 0xEE ; file 0063FC
db 0xE9, 0x99 ; 0063FE: provisional 68k rol.l #$4, d1
db 0xEE, 0x9E ; 006400: provisional 68k ror.l #$7, d6
db 0xAA, 0xDE ; 006402: provisional 68k dc.w $aade
db 0x9D, 0x99 ; 006404: provisional 68k sub.l d6, (a1)+
db 0xFF, 0xFF ; 006406: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 006408: provisional 68k btst.l d0, (a3)
db 0x8B, 0x8B ; 00640A: provisional 68k dc.w $8b8b
db 0xAA, 0xAB ; 00640C: provisional 68k dc.w $aaab
db 0xAD, 0xFB ; 00640E: provisional 68k dc.w $adfb
db 0x88, 0x9E ; 006410: provisional 68k or.l (a6)+, d4
db 0x99, 0xEE, 0xEE, 0xEE ; 006412: provisional 68k suba.l -$1112(a6), a4
db 0xEE, 0xEE ; file 006416
db 0x9E, 0xAA, 0x9E, 0x9D ; 006418: provisional 68k sub.l -$6163(a2), d7
db 0xE9, 0xA1 ; 00641C: provisional 68k asl.l d4, d1
db 0xFF, 0xFF ; 00641E: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 006420: provisional 68k btst.l d0, (a3)
db 0xBA, 0xB8, 0xBF, 0x98 ; 006422: provisional 68k cmp.l $bf98.w, d5
db 0xBF, 0xD9 ; 006426: provisional 68k cmpa.l (a1)+, a7
db 0x9A, 0x99 ; 006428: provisional 68k sub.l (a1)+, d5
db 0x9F, 0xEE, 0x9E, 0xEE ; 00642A: provisional 68k suba.l -$6112(a6), a7
db 0x9D, 0xDF ; 00642E: provisional 68k suba.l (a7)+, a6
db 0xAD, 0xDD ; 006430: provisional 68k dc.w $addd
db 0x9E, 0x9D ; 006432: provisional 68k sub.l (a5)+, d7
db 0xD9, 0xF1, 0xFF, 0xFF, 0x00, 0x14, 0x1B, 0x8B ; 006434: provisional 68k adda.l ([$141b8b]), a4
db 0xAB, 0xBF ; 00643C: provisional 68k dc.w $abbf
db 0xFB, 0xAA ; 00643E: provisional 68k dc.w $fbaa
db 0xAF, 0x99 ; 006440: provisional 68k dc.w $af99
db 0xAA, 0xAA ; 006442: provisional 68k dc.w $aaaa
db 0xA9, 0xEE ; 006444: provisional 68k dc.w $a9ee
db 0xEE, 0xEE ; file 006446
db 0x99, 0xF9, 0xEE, 0x99, 0x9D, 0xDA ; 006448: provisional 68k suba.l $ee999dda.l, a4
db 0xF1, 0xFF ; 00644E: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 006450: provisional 68k dc.w $ff00
db 0x14, 0x8B ; file 006452
db 0x88, 0xBB, 0xBA, 0xBB ; 006454: provisional 68k or.l $6411(pc, a3.l), d4
db 0xAA, 0xAB ; 006458: provisional 68k dc.w $aaab
db 0xBD, 0x9B ; 00645A: provisional 68k eor.l d6, (a3)+
db 0xA9, 0xDA ; 00645C: provisional 68k dc.w $a9da
db 0x9E, 0xEE, 0xE9, 0xFD ; 00645E: provisional 68k suba.w -$1603(a6), a7
db 0xDE, 0xEE, 0xDF, 0xDA ; 006462: provisional 68k adda.w -$2026(a6), a7
db 0xEA, 0xF1 ; file 006466
db 0xFF, 0xFF ; 006468: provisional 68k dc.w $ffff
db 0x00, 0x14, 0x88, 0xBB ; 00646A: provisional 68k ori.b #$bb, (a4)
db 0x88, 0xAA, 0x8B, 0xAA ; 00646E: provisional 68k or.l -$7456(a2), d4
db 0xAA, 0xBA ; 006472: provisional 68k dc.w $aaba
db 0xF8, 0xFE ; 006474: provisional 68k dc.w $f8fe
db 0xAB, 0xAF ; 006476: provisional 68k dc.w $abaf
db 0xAA, 0xA9 ; 006478: provisional 68k dc.w $aaa9
db 0xE9, 0x9E ; 00647A: provisional 68k rol.l #$4, d6
db 0xEE, 0xFA ; file 00647C
db 0xFA, 0x9F ; 00647E: provisional 68k dc.w $fa9f
db 0xF1, 0xFF ; 006480: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 006482: provisional 68k dc.w $ff00
db 0x14, 0x88 ; file 006484
db 0x8B, 0x88 ; 006486: provisional 68k dc.w $8b88
db 0xBB, 0xBB ; file 006488
db 0xBB, 0xAF, 0xAA, 0xAB ; 00648A: provisional 68k eor.l d5, -$5555(a7)
db 0xAD, 0xAB ; 00648E: provisional 68k dc.w $adab
db 0xF9, 0xFB ; 006490: provisional 68k dc.w $f9fb
db 0xBE, 0xEE, 0xE9, 0x99 ; 006492: provisional 68k cmpa.w -$1667(a6), a7
db 0xAF, 0x9A ; 006496: provisional 68k dc.w $af9a
db 0x9F, 0xFA, 0xFF, 0xFF ; 006498: provisional 68k suba.l $6499(pc), a7
db 0x00, 0x14, 0x88, 0x8B ; 00649C: provisional 68k ori.b #$8b, (a4)
db 0xBB, 0xB8, 0xBB, 0xBB ; 0064A0: provisional 68k eor.l d5, $bbbb.w
db 0xBA, 0xAF, 0xAA, 0xAA ; 0064A4: provisional 68k cmp.l -$5556(a7), d5
db 0xD9, 0xDD ; 0064A8: provisional 68k adda.l (a5)+, a4
db 0xED, 0xA9 ; 0064AA: provisional 68k lsl.l d6, d1
db 0xEE, 0x9F ; 0064AC: provisional 68k ror.l #$7, d7
db 0xF9, 0xFD ; 0064AE: provisional 68k dc.w $f9fd
db 0x9F, 0xDA ; 0064B0: provisional 68k suba.l (a2)+, a7
db 0xAB, 0xFF ; 0064B2: provisional 68k dc.w $abff
db 0xFF, 0x00 ; 0064B4: provisional 68k dc.w $ff00
db 0x14, 0x88, 0x8B, 0xBB ; file 0064B6
db 0xB8, 0xBB, 0xAA, 0xB8 ; 0064BA: provisional 68k cmp.l $6474(pc, a2.l), d4
db 0xBB, 0x8B ; 0064BE: provisional 68k cmpm.l (a3)+, (a5)+
db 0xAA, 0xAF ; 0064C0: provisional 68k dc.w $aaaf
db 0xFA, 0xAD ; 0064C2: provisional 68k dc.w $faad
db 0xE9, 0xF9, 0xED, 0xDE ; file 0064C4
db 0xDD, 0xED, 0xAA, 0xAB ; 0064C8: provisional 68k adda.l -$5555(a5), a6
db 0xFF, 0xFF ; 0064CC: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0x88 ; 0064CE: provisional 68k ori.b #$88, (a5)
db 0x88, 0x8B, 0xBB, 0xBB ; file 0064D2
db 0xB8, 0x8B ; 0064D6: provisional 68k cmp.l a3, d4
db 0x8B, 0xBA ; file 0064D8
db 0xAA, 0xAA ; 0064DA: provisional 68k dc.w $aaaa
db 0x99, 0x99 ; 0064DC: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0064DE: provisional 68k sub.l d4, (a1)+
db 0x99, 0xAF, 0xED, 0xAF ; 0064E0: provisional 68k sub.l d4, -$1251(a7)
db 0xB8, 0xAA, 0xFF, 0xFF ; 0064E4: provisional 68k cmp.l -$1(a2), d4
db 0x00, 0x15, 0x88, 0x88 ; 0064E8: provisional 68k ori.b #$88, (a5)
db 0x88, 0x8B ; file 0064EC
db 0xB8, 0x88 ; 0064EE: provisional 68k cmp.l a0, d4
db 0xBA, 0xAA, 0xB8, 0x8B ; 0064F0: provisional 68k cmp.l -$4775(a2), d5
db 0xAA, 0xAF ; 0064F4: provisional 68k dc.w $aaaf
db 0xFF, 0xFF ; 0064F6: provisional 68k dc.w $ffff
db 0xB8, 0x8A ; 0064F8: provisional 68k cmp.l a2, d4
db 0xAA, 0x8A ; 0064FA: provisional 68k dc.w $aa8a
db 0xED, 0xFD ; file 0064FC
db 0xDD, 0xFB, 0xFF, 0xFF, 0x00, 0x15, 0x88, 0x88 ; 0064FE: provisional 68k adda.l ([$15ed88]), a6
db 0x8B, 0x88 ; 006506: provisional 68k dc.w $8b88
db 0x88, 0xB8, 0x8B, 0xBB ; 006508: provisional 68k or.l $8bbb.w, d4
db 0x88, 0x88 ; file 00650C
db 0x88, 0xAA, 0xBB, 0xAA ; 00650E: provisional 68k or.l -$4456(a2), d4
db 0xBB, 0xDE ; 006512: provisional 68k cmpa.l (a6)+, a5
db 0xEE, 0xDD, 0xED, 0xDF ; file 006514
db 0xFA, 0xA8 ; 006518: provisional 68k dc.w $faa8
db 0xFF, 0xFF ; 00651A: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0xB8 ; 00651C: provisional 68k ori.b #$b8, (a5)
db 0xBB, 0x88 ; 006520: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 006522
db 0x88, 0xBA, 0xAF, 0xFD ; 006528: provisional 68k or.l $1527(pc), d4
db 0xD9, 0xEE, 0xEE, 0xED ; 00652C: provisional 68k adda.l -$1113(a6), a4
db 0xDD, 0xFA, 0xAB, 0xBB ; 006530: provisional 68k adda.l $10ed(pc), a6
db 0xFF, 0xFF ; 006534: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x88, 0xB8 ; 006536: provisional 68k ori.b #$b8, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00653A
db 0x88, 0xAA, 0xDD, 0xDE ; 006542: provisional 68k or.l -$2222(a2), d4
db 0xEE, 0xED ; file 006546
db 0xDF, 0xFA, 0xFD, 0xFA ; 006548: provisional 68k adda.l $6344(pc), a7
db 0xB8, 0x88 ; 00654C: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 00654E: provisional 68k dc.w $ffff
db 0x00, 0x15, 0x8B, 0x88 ; 006550: provisional 68k ori.b #$88, (a5)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0xBD ; file 006554
db 0xDF, 0xDE ; 00655E: provisional 68k adda.l (a6)+, a7
db 0xEE, 0xDD ; file 006560
db 0xAA, 0xAB ; 006562: provisional 68k dc.w $aaab
db 0xAF, 0xFB ; 006564: provisional 68k dc.w $affb
db 0x88, 0xBB, 0xFF, 0xFF, 0x00, 0x15, 0x1B, 0xB8 ; 006566: provisional 68k or.l ([$158120]), d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8F ; file 00656E
db 0xFD, 0xDD ; 006578: provisional 68k dc.w $fddd
db 0xDD, 0xDF ; 00657A: provisional 68k adda.l (a7)+, a6
db 0xBB, 0xBA ; file 00657C
db 0xAA, 0xB8 ; 00657E: provisional 68k dc.w $aab8
db 0x8C, 0xAB, 0xFF, 0xFF ; 006580: provisional 68k or.l -$1(a3), d6
db 0x01, 0x15 ; 006584: provisional 68k btst.l d0, (a5)
db 0xBB, 0x88 ; 006586: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xFD ; file 006588
db 0xD9, 0xDD ; 006592: provisional 68k adda.l (a5)+, a4
db 0xFA, 0x88 ; 006594: provisional 68k dc.w $fa88
db 0x8B, 0xBB ; file 006596
db 0x88, 0xBC, 0xCC, 0xCC, 0xFF, 0xFF ; 006598: provisional 68k or.l #$ccccffff, d4
db 0x01, 0x14 ; 00659E: provisional 68k btst.l d0, (a4)
db 0xBB, 0xB8, 0x88, 0x88 ; 0065A0: provisional 68k eor.l d5, $8888.w
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 0065A4
db 0xAF, 0xFF ; 0065AA: provisional 68k dc.w $afff
db 0xDD, 0xEE, 0xBB, 0xBB ; 0065AC: provisional 68k adda.l -$4445(a6), a6
db 0x88, 0xBB, 0x88, 0xCC ; 0065B0: provisional 68k or.l $657e(pc, a0.l), d4
db 0xCC, 0xFF ; file 0065B4
db 0xFF, 0x01 ; 0065B6: provisional 68k dc.w $ff01
db 0x14, 0xBB, 0xB8, 0x88 ; 0065B8: provisional 68k move.b $6542(pc, a3.l), (a2)
db 0x88, 0xB8, 0x88, 0x88 ; 0065BC: provisional 68k or.l $8888.w, d4
db 0x88, 0x8B, 0x8B, 0xFD ; file 0065C0
db 0xDB, 0xAE, 0xEF, 0xCC ; 0065C4: provisional 68k add.l d5, -$1034(a6)
db 0x88, 0xAD, 0xFA, 0x8C ; 0065C8: provisional 68k or.l -$574(a5), d4
db 0xCC, 0xCC ; file 0065CC
db 0xFF, 0xFF ; 0065CE: provisional 68k dc.w $ffff
db 0x01, 0x14 ; 0065D0: provisional 68k btst.l d0, (a4)
db 0x8B, 0xB8, 0x88, 0x8B ; 0065D2: provisional 68k or.l d5, $888b.w
db 0xB8, 0x88 ; 0065D6: provisional 68k cmp.l a0, d4
db 0x88, 0x88 ; file 0065D8
db 0x88, 0xBB, 0xAA, 0xAA ; 0065DA: provisional 68k or.l $6586(pc, a2.l), d4
db 0x9E, 0xEC, 0x8C, 0x8B ; 0065DE: provisional 68k suba.w -$7375(a4), a7
db 0xDE, 0x9D ; 0065E2: provisional 68k add.l (a5)+, d7
db 0xBA, 0xC8 ; 0065E4: provisional 68k cmpa.w a0, a5
db 0x88, 0xFF ; file 0065E6
db 0xFF, 0x01 ; 0065E8: provisional 68k dc.w $ff01
db 0x14, 0x1B ; 0065EA: provisional 68k move.b (a3)+, d2
db 0xBB, 0x88 ; 0065EC: provisional 68k cmpm.l (a0)+, (a5)+
db 0x8B, 0x88 ; 0065EE: provisional 68k dc.w $8b88
db 0x88, 0x88, 0x88, 0x88 ; file 0065F0
db 0xBB, 0xAA, 0xBF, 0x99 ; 0065F4: provisional 68k eor.l d5, -$4067(a2)
db 0xCC, 0x8C ; file 0065F8
db 0xB9, 0xE9, 0x9D, 0xAA ; 0065FA: provisional 68k cmpa.l -$6256(a1), a4
db 0x88, 0x88 ; file 0065FE
db 0xFF, 0xFF ; 006600: provisional 68k dc.w $ffff
db 0x02, 0x13, 0xBB, 0xB8 ; 006602: provisional 68k andi.b #$b8, (a3)
db 0x88, 0x8B, 0x88, 0x88, 0x88, 0x88, 0xBB, 0xFF ; file 006606
db 0xBB, 0xAA, 0xCC, 0xC8 ; 00660E: provisional 68k eor.l d5, -$3338(a2)
db 0xAE, 0xE9 ; 006612: provisional 68k dc.w $aee9
db 0x9F, 0xAB, 0x88, 0x88 ; 006614: provisional 68k sub.l d7, -$7778(a3)
db 0xFF, 0xFF ; 006618: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1B, 0xB8 ; 00661A: provisional 68k andi.b #$b8, (a3)
db 0x88, 0x8A ; file 00661E
db 0xF8, 0x88 ; 006620: provisional 68k dc.w $f888
db 0x8B, 0xB8, 0xBA, 0x99 ; 006622: provisional 68k or.l d5, $ba99.w
db 0xAB, 0xBB ; 006626: provisional 68k dc.w $abbb
db 0xBC, 0x88 ; 006628: provisional 68k cmp.l a0, d6
db 0xDE, 0xED, 0xAB, 0xBB ; 00662A: provisional 68k adda.w -$5445(a5), a7
db 0xB8, 0x88 ; 00662E: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 006630: provisional 68k dc.w $ffff
db 0x02, 0x13, 0x1A, 0xBB ; 006632: provisional 68k andi.b #$bb, (a3)
db 0xBB, 0xBB ; file 006636
db 0xEE, 0x88 ; 006638: provisional 68k lsr.l #$7, d0
db 0xBB, 0xBB ; file 00663A
db 0xBD, 0xEE, 0xDB, 0xBB ; 00663C: provisional 68k cmpa.l -$2445(a6), a6
db 0x88, 0x88 ; file 006640
db 0x9E, 0xDB ; 006642: provisional 68k suba.w (a3)+, a7
db 0x88, 0x8B ; file 006644
db 0xB8, 0x88 ; 006646: provisional 68k cmp.l a0, d4
db 0xFF, 0xFF ; 006648: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 00664A: provisional 68k btst.l d1, (a2)
db 0xB8, 0xBB, 0xBB, 0xAD, 0xFA, 0xAA ; 00664C: provisional 68k cmp.l ([$160f8], a3.l * 2), d4
db 0xBA, 0xFD ; file 006652
db 0x99, 0xDA ; 006654: provisional 68k suba.l (a2)+, a4
db 0x88, 0x88 ; file 006656
db 0x8B, 0xDF ; 006658: provisional 68k divs.w (a7)+, d5
db 0x88, 0x88 ; file 00665A
db 0x8B, 0xB8, 0x88, 0xFF ; 00665C: provisional 68k or.l d5, $88ff.w
db 0xFF, 0x03 ; 006660: provisional 68k dc.w $ff03
db 0x12, 0xAB, 0x8B, 0x88 ; 006662: provisional 68k move.b -$7478(a3), (a1)
db 0xBB, 0xB8, 0xBB, 0xDE ; 006666: provisional 68k eor.l d5, $bbde.w
db 0xDD, 0xFF ; file 00666A
db 0xFF, 0xDD ; 00666C: provisional 68k dc.w $ffdd
db 0xED, 0xAD ; 00666E: provisional 68k lsl.l d6, d5
db 0xB8, 0x88 ; 006670: provisional 68k cmp.l a0, d4
db 0x88, 0x88, 0x88, 0x88 ; file 006672
db 0xFF, 0xFF ; 006676: provisional 68k dc.w $ffff
db 0x03, 0x12 ; 006678: provisional 68k btst.l d1, (a2)
db 0x1A, 0xB8, 0xBB, 0x8B ; 00667A: provisional 68k move.b $bb8b.w, (a5)
db 0xAB, 0xBB ; 00667E: provisional 68k dc.w $abbb
db 0xAF, 0xFA ; 006680: provisional 68k dc.w $affa
db 0xAA, 0xAA ; 006682: provisional 68k dc.w $aaaa
db 0xD9, 0xAB, 0xBF, 0xF8 ; 006684: provisional 68k add.l d4, -$4008(a3)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 006688
db 0xFF, 0x04 ; 00668E: provisional 68k dc.w $ff04
db 0x10, 0xAB, 0xB8, 0x8B ; 006690: provisional 68k move.b -$4775(a3), (a0)
db 0xFB, 0xBB ; 006694: provisional 68k dc.w $fbbb
db 0xBB, 0xBB ; file 006696
db 0xBB, 0xB8, 0xBB, 0x88 ; 006698: provisional 68k eor.l d5, $bb88.w
db 0x88, 0xAB, 0x88, 0x88 ; 00669C: provisional 68k or.l -$7778(a3), d4
db 0x88, 0x88 ; file 0066A0
db 0xFF, 0xFF ; 0066A2: provisional 68k dc.w $ffff
db 0x05, 0x0E, 0xA8, 0x1B ; 0066A4: provisional 68k movep.w -$57e5(a6), d2
db 0xAF, 0xAB ; 0066A8: provisional 68k dc.w $afab
db 0xBB, 0xBB ; file 0066AA
db 0xBB, 0xB8, 0x88, 0x8B ; 0066AC: provisional 68k eor.l d5, $888b.w
db 0xBB, 0xB8, 0x88, 0x88 ; 0066B0: provisional 68k eor.l d5, $8888.w
db 0xA1, 0xFF ; 0066B4: provisional 68k dc.w $a1ff
db 0xFF, 0x06 ; 0066B6: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xBD, 0xDB ; 0066B8: provisional 68k movep.w d6, -$4225(a0)
db 0xBB, 0xBB, 0xBB, 0xBB, 0x88, 0xBF ; file 0066BC
db 0xFD, 0xDB ; 0066C2: provisional 68k dc.w $fddb
db 0x88, 0xBF, 0xD1, 0xFF ; file 0066C4
db 0xFF, 0x06 ; 0066C8: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xB8, 0xB8 ; 0066CA: provisional 68k movep.w d6, -$4748(a0)
db 0x88, 0x88, 0x8B, 0xBB, 0x88, 0xBD ; file 0066CE
db 0xDD, 0xED, 0xFD, 0xEE ; 0066D4: provisional 68k adda.l -$212(a5), a6
db 0xF1, 0xFF ; 0066D8: provisional 68k dc.w $f1ff
db 0xFF, 0x06 ; 0066DA: provisional 68k dc.w $ff06
db 0x0D, 0x88, 0xB8, 0x88 ; 0066DC: provisional 68k movep.w d6, -$4778(a0)
db 0x88, 0x88, 0x8B, 0xBB ; file 0066E0
db 0x88, 0xB9, 0xDD, 0xEE, 0xEE, 0xED ; 0066E4: provisional 68k or.l $ddeeeeed.l, d4
db 0xFB, 0xFF ; 0066EA: provisional 68k dc.w $fbff
db 0xFF, 0x07 ; 0066EC: provisional 68k dc.w $ff07
db 0x0C, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 0066EE
db 0xBB, 0x8B ; 0066F4: provisional 68k cmpm.l (a3)+, (a5)+
db 0xD9, 0xDE ; 0066F6: provisional 68k adda.l (a6)+, a4
db 0xEE, 0xED ; file 0066F8
db 0xFD, 0xDB ; 0066FA: provisional 68k dc.w $fddb
db 0xFF, 0xFF ; 0066FC: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x8B, 0x88 ; 0066FE: provisional 68k movep.w -$7478(a4), d3
db 0x88, 0x88 ; file 006702
db 0x88, 0xBB, 0xBA, 0xDD ; 006704: provisional 68k or.l $66e3(pc, a3.l), d4
db 0xDE, 0xDE ; 006708: provisional 68k adda.w (a6)+, a7
db 0xE9, 0xD9, 0x9B, 0xFF ; file 00670A
db 0xFF, 0x07 ; 00670E: provisional 68k dc.w $ff07
db 0x0C, 0x8B, 0x88, 0x88, 0x88, 0x88, 0xBB, 0xBA ; file 006710
db 0xAA, 0xAD ; 006718: provisional 68k dc.w $aaad
db 0xD9, 0xEE, 0xDD, 0xF1 ; 00671A: provisional 68k adda.l -$220f(a6), a4
db 0xFF, 0xFF ; 00671E: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1B, 0xB8 ; 006720: provisional 68k movep.w $1bb8(a4), d3
db 0x88, 0xB8, 0x88, 0x88 ; 006724: provisional 68k or.l $8888.w, d4
db 0x8B, 0xAB, 0xBF, 0xFF ; 006728: provisional 68k or.l d5, -$4001(a3)
db 0xFF, 0xFA ; 00672C: provisional 68k dc.w $fffa
db 0xB1, 0xFF ; file 00672E
db 0xFF, 0x07 ; 006730: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 006732: provisional 68k btst.l d5, (a3)+
db 0xBB, 0xBA ; file 006734
db 0xDF, 0xB8, 0x88, 0x88 ; 006736: provisional 68k add.l d7, $8888.w
db 0xBB, 0xBB ; file 00673A
db 0xAA, 0xAA ; 00673C: provisional 68k dc.w $aaaa
db 0xBB, 0xFF ; file 00673E
db 0xFF, 0x07 ; 006740: provisional 68k dc.w $ff07
db 0x0B, 0x1B ; 006742: provisional 68k btst.l d5, (a3)+
db 0xB8, 0xBA, 0xEE, 0xEF ; 006744: provisional 68k cmp.l $5635(pc), d4
db 0xB8, 0x88 ; 006748: provisional 68k cmp.l a0, d4
db 0x88, 0xCB ; file 00674A
db 0xBB, 0xAB, 0xBB, 0xFF ; 00674C: provisional 68k eor.l d5, -$4401(a3)
db 0xFF, 0x07 ; 006750: provisional 68k dc.w $ff07
db 0x0C, 0x1B, 0xBB, 0xBB ; 006752: provisional 68k cmpi.b #$bb, (a3)+
db 0xFE, 0xEE ; 006756: provisional 68k dc.w $feee
db 0xEB, 0x88 ; 006758: provisional 68k lsl.l #$5, d0
db 0x88, 0x88 ; file 00675A
db 0x88, 0xB8, 0x88, 0xB1 ; 00675C: provisional 68k or.l $88b1.w, d4
db 0xFF, 0xFF ; 006760: provisional 68k dc.w $ffff
db 0x08, 0x0B, 0xBB, 0xBB ; file 006762
db 0xBF, 0xEE, 0xEE, 0xEF ; 006766: provisional 68k cmpa.l -$1111(a6), a7
db 0x88, 0x88, 0x88, 0x8B, 0x88, 0x88 ; file 00676A
db 0xFF, 0xFF ; 006770: provisional 68k dc.w $ffff
db 0x08, 0x0B ; file 006772
db 0x1B, 0xBB, 0xBB, 0xA9, 0xEE, 0xEE, 0xDF, 0xB8, 0x88, 0x88, 0x88, 0x88 ; 006774: provisional 68k move.b ([$15664, a3.l * 2]), $88888888(a5.l * 8)
db 0xFF, 0xFF ; 006780: provisional 68k dc.w $ffff
db 0x09, 0x0A, 0xBB, 0xBB ; 006782: provisional 68k movep.w -$4445(a2), d4
db 0xBA, 0xAF, 0xDD, 0xDF ; 006786: provisional 68k cmp.l -$2221(a7), d5
db 0xBB, 0xBB ; file 00678A
db 0x8B, 0xB8, 0x88, 0xFF ; 00678C: provisional 68k or.l d5, $88ff.w
db 0xFF, 0x0A ; 006790: provisional 68k dc.w $ff0a
db 0x09, 0xBB, 0xBB, 0xBB ; file 006792
db 0xFA, 0xAA ; 006796: provisional 68k dc.w $faaa
db 0xAA, 0xAB ; 006798: provisional 68k dc.w $aaab
db 0xBA, 0xBB, 0x88, 0xFF ; 00679A: provisional 68k cmp.l $679b(pc, a0.l), d5
db 0xFF, 0x0A ; 00679E: provisional 68k dc.w $ff0a
db 0x09, 0x1B ; 0067A0: provisional 68k btst.l d4, (a3)+
db 0xBB, 0x88 ; 0067A2: provisional 68k cmpm.l (a0)+, (a5)+
db 0xBB, 0xBA ; file 0067A4
db 0xAA, 0xAA ; 0067A6: provisional 68k dc.w $aaaa
db 0xFD, 0xFA ; 0067A8: provisional 68k dc.w $fdfa
db 0x88, 0xFF ; file 0067AA
db 0xFF, 0x0B ; 0067AC: provisional 68k dc.w $ff0b
db 0x07, 0xBB ; file 0067AE
db 0xBB, 0x88 ; 0067B0: provisional 68k cmpm.l (a0)+, (a5)+
db 0x8B, 0xBA ; file 0067B2
db 0xD9, 0xDD ; 0067B4: provisional 68k adda.l (a5)+, a4
db 0xFB, 0xFF ; 0067B6: provisional 68k dc.w $fbff
db 0xFF, 0x0C ; 0067B8: provisional 68k dc.w $ff0c
db 0x06, 0xBB ; file 0067BA
db 0xBB, 0xB8, 0x8A, 0xAF ; 0067BC: provisional 68k eor.l d5, $8aaf.w
db 0xFF, 0xA8 ; 0067C0: provisional 68k dc.w $ffa8
db 0xFF, 0xFF ; 0067C2: provisional 68k dc.w $ffff
db 0x0D, 0x05 ; 0067C4: provisional 68k btst.l d6, d5
db 0x1A, 0xBB, 0xB8, 0x8B ; 0067C6: provisional 68k move.b $6753(pc, a3.l), (a5)
db 0x88, 0x88 ; file 0067CA
db 0xFF, 0xFF ; 0067CC: provisional 68k dc.w $ffff
db 0x0E, 0x03 ; file 0067CE
db 0x1B, 0xBB, 0xBB, 0x88, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF ; 0067D0: provisional 68k move.b (a3.l * 2), ([$ffffffff])
db 0x00, 0x07, 0x00, 0x00 ; 0067DA: provisional 68k ori.b #$0, d7
db 0x00, 0x2A, 0x00, 0x34, 0x00, 0x00 ; 0067DE: provisional 68k ori.b #$34, $0(a2)
db 0x00, 0x58, 0x00, 0x00 ; 0067E4: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x14 ; 0067E8: provisional 68k ori.b #$14, d0
db 0x00, 0x1A, 0x00, 0x00 ; 0067EC: provisional 68k ori.b #$0, (a2)+
db 0x00, 0x03, 0x00, 0x03 ; 0067F0: provisional 68k ori.b #$3, d3
db 0x00, 0x0A ; file 0067F4
db 0x00, 0x00, 0x00, 0x00 ; 0067F6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0067FA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 0067FE: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x06 ; 006802: provisional 68k ori.b #$6, d2
db 0x03, 0xA6 ; 006806: provisional 68k bclr.b d1, -(a6)
db 0x07, 0x58 ; 006808: provisional 68k bchg.b d3, (a0)+
db 0x00, 0x00, 0x00, 0x00 ; 00680A: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x34, 0x00, 0x10 ; 00680E: provisional 68k ori.b #$34, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 006814
db 0x10, 0x10 ; 006818: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00681A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00681C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00681E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 006820: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 006824: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006828: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00682A: provisional 68k neg.w d4
db 0x18, 0x20 ; 00682C: provisional 68k move.b -(a0), d4
db 0x4C, 0x70 ; file 00682E
db 0x74, 0x8C ; 006830: provisional 68k moveq #$8c, d2
db 0x20, 0x34, 0x98, 0x9C ; 006832: provisional 68k move.l -$64(a4, a1.l), d0
db 0x9C, 0xA8, 0x38, 0x58 ; 006836: provisional 68k sub.l $3858(a0), d6
db 0xDC, 0x54 ; 00683A: provisional 68k add.w (a4), d6
db 0x58, 0x6C, 0xD0, 0xD0 ; 00683C: provisional 68k addq.w #$4, -$2f30(a4)
db 0xD0, 0x7C, 0x80, 0xA4 ; 006840: provisional 68k add.w #$80a4, d0
db 0xFF, 0xFF ; 006844: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006846: provisional 68k dc.w $ffff
db 0x0C, 0x03, 0x8C, 0xCC ; 006848: provisional 68k cmpi.b #$cc, d3
db 0xCC, 0xA8, 0xFF, 0xFF ; 00684C: provisional 68k and.l -$1(a0), d6
db 0x0B, 0x02 ; 006850: provisional 68k btst.l d5, d2
db 0x88, 0xAA, 0xA8, 0xFF ; 006852: provisional 68k or.l -$5701(a2), d4
db 0xFF, 0x02 ; 006856: provisional 68k dc.w $ff02
db 0x00, 0x88, 0x08, 0x02, 0x88, 0x88 ; file 006858
db 0x88, 0x04 ; 00685E: provisional 68k or.b d4, d4
db 0x00, 0x8A ; file 006860
db 0xFF, 0xFF ; 006862: provisional 68k dc.w $ffff
db 0x02, 0x00, 0xDB, 0x04 ; 006864: provisional 68k andi.b #$4, d0
db 0x08, 0x8A, 0xCC, 0xCC, 0xCC, 0xCA ; file 006868
db 0xAC, 0xCC ; 00686E: provisional 68k dc.w $accc
db 0xCA, 0x88 ; file 006870
db 0x02, 0x02, 0x1B, 0xBC ; 006872: provisional 68k andi.b #$bc, d2
db 0xD8, 0xFF ; file 006876
db 0xFF, 0x01 ; 006878: provisional 68k dc.w $ff01
db 0x01, 0x1D ; 00687A: provisional 68k btst.l d0, (a5)+
db 0xBD, 0x04 ; 00687C: provisional 68k eor.b d6, d4
db 0x04, 0xAA, 0xCC, 0xCC, 0xCC, 0xCA, 0x06, 0x02 ; 00687E: provisional 68k subi.l #$ccccccca, $602(a2)
db 0x88, 0xCB, 0xC8, 0xFF ; file 006886
db 0xFF, 0x01 ; 00688A: provisional 68k dc.w $ff01
db 0x01, 0x1E ; 00688C: provisional 68k btst.l d0, (a6)+
db 0xDD, 0x04 ; 00688E: provisional 68k addx.b d4, d6
db 0x04, 0xAA, 0xCC, 0xCC, 0xCC, 0xCA, 0x06, 0x02 ; 006890: provisional 68k subi.l #$ccccccca, $602(a2)
db 0x8C, 0xCA ; file 006898
db 0xA8, 0xFF ; 00689A: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 00689C: provisional 68k dc.w $ff01
db 0x01, 0x1E ; 00689E: provisional 68k btst.l d0, (a6)+
db 0xDD, 0x04 ; 0068A0: provisional 68k addx.b d4, d6
db 0x04, 0xAA, 0xCC, 0xCC, 0xCC, 0xCA, 0x06, 0x02 ; 0068A2: provisional 68k subi.l #$ccccccca, $602(a2)
db 0x8C, 0xCA ; file 0068AA
db 0xA1, 0xFF ; 0068AC: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 0068AE: provisional 68k dc.w $ff01
db 0x0A, 0xDF ; file 0068B0
db 0xDD, 0x88 ; 0068B2: provisional 68k addx.l -(a0), -(a6)
db 0x8A, 0xAA, 0xAA, 0xAA ; 0068B4: provisional 68k or.l -$5556(a2), d5
db 0xCA, 0xAC, 0xCC, 0xC8 ; 0068B8: provisional 68k and.l -$3338(a4), d5
db 0x06, 0x02, 0xAA, 0xAA ; 0068BC: provisional 68k addi.b #$aa, d2
db 0xA1, 0xFF ; 0068C0: provisional 68k dc.w $a1ff
db 0xFF, 0x01 ; 0068C2: provisional 68k dc.w $ff01
db 0x06, 0x99, 0xD9, 0x8A, 0xAC, 0xCC ; 0068C4: provisional 68k addi.l #$d98aaccc, (a1)+
db 0xCC, 0xA8, 0x07, 0x05 ; 0068CA: provisional 68k and.l $705(a0), d6
db 0x88, 0x99 ; 0068CE: provisional 68k or.l (a1)+, d4
db 0x91, 0xCC ; 0068D0: provisional 68k suba.l a4, a0
db 0xCA, 0xA1 ; 0068D2: provisional 68k and.l -(a1), d5
db 0xFF, 0xFF ; 0068D4: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 0068D6: provisional 68k btst.l d0, d6
db 0xEB, 0xD9 ; file 0068D8
db 0xAA, 0xAC ; 0068DA: provisional 68k dc.w $aaac
db 0xCC, 0xCC ; file 0068DC
db 0xA8, 0x07 ; 0068DE: provisional 68k dc.w $a807
db 0x05, 0xD9 ; 0068E0: provisional 68k bset.b d2, (a1)+
db 0xDD, 0xD1 ; 0068E2: provisional 68k adda.l (a1), a6
db 0xCB, 0xBC, 0x88, 0xFF ; file 0068E4
db 0xFF, 0x01 ; 0068E8: provisional 68k dc.w $ff01
db 0x06, 0xEE ; file 0068EA
db 0xF9, 0xAA ; 0068EC: provisional 68k dc.w $f9aa
db 0xAC, 0xCC ; 0068EE: provisional 68k dc.w $accc
db 0xCC, 0xA8, 0x05, 0x06 ; 0068F0: provisional 68k and.l $506(a0), d6
db 0x88, 0xDF ; 0068F4: provisional 68k divu.w (a7)+, d4
db 0xDD, 0xDD ; 0068F6: provisional 68k adda.l (a5)+, a6
db 0xD8, 0xAA, 0xA8, 0xFF ; 0068F8: provisional 68k add.l -$5701(a2), d4
db 0xFF, 0x01 ; 0068FC: provisional 68k dc.w $ff01
db 0x05, 0xEE, 0xEB, 0xAA ; 0068FE: provisional 68k bset.b d2, -$1456(a6)
db 0x88, 0x88 ; file 006902
db 0x88, 0x04 ; 006904: provisional 68k or.b d4, d4
db 0x08, 0x88 ; file 006906
db 0xD9, 0x9F ; 006908: provisional 68k add.l d4, (a7)+
db 0xDD, 0xDD ; 00690A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 00690C: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xA8 ; 00690E: provisional 68k dc.w $aaa8
db 0xFF, 0xFF ; 006910: provisional 68k dc.w $ffff
db 0x01, 0x05 ; 006912: provisional 68k btst.l d0, d5
db 0xEE, 0xEE, 0xEB, 0xF9 ; file 006914
db 0x9D, 0x88 ; 006918: provisional 68k subx.l -(a0), -(a6)
db 0x01, 0x0B, 0x8D, 0xDD ; 00691A: provisional 68k movep.w -$7223(a3), d0
db 0xD9, 0x99 ; 00691E: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 006920: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006922: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 006924: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xA8 ; 006926: provisional 68k dc.w $aaa8
db 0xFF, 0xFF ; 006928: provisional 68k dc.w $ffff
db 0x01, 0x05 ; 00692A: provisional 68k btst.l d0, d5
db 0xEE, 0xEE, 0xEB, 0xF9 ; file 00692C
db 0x9D, 0x88 ; 006930: provisional 68k subx.l -(a0), -(a6)
db 0x01, 0x0B, 0x8D, 0xDD ; 006932: provisional 68k movep.w -$7223(a3), d0
db 0xD9, 0x99 ; 006936: provisional 68k add.l d4, (a1)+
db 0xDD, 0xDD ; 006938: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00693A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 00693C: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xA8 ; 00693E: provisional 68k dc.w $aaa8
db 0xFF, 0xFF ; 006940: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 006942: provisional 68k btst.l d0, (a2)
db 0xEE, 0xEE ; file 006944
db 0xEB, 0xBB ; 006946: provisional 68k rol.l d5, d3
db 0xBB, 0xFF ; file 006948
db 0x99, 0x9D ; 00694A: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 00694C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00694E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006950: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006952: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xAA, 0xA8, 0xFF ; 006954: provisional 68k add.l -$5701(a2), d5
db 0xFF, 0x01 ; 006958: provisional 68k dc.w $ff01
db 0x10, 0x9E ; 00695A: provisional 68k move.b (a6)+, (a0)
db 0xEE, 0xEB, 0xBB, 0xBF ; file 00695C
db 0x99, 0xDD ; 006960: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006962: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006964: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006966: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006968: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD8 ; 00696A: provisional 68k adda.l (a0)+, a6
db 0xFF, 0xFF ; 00696C: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 00696E: provisional 68k btst.l d0, (a0)
db 0x9E, 0xEE, 0xEB, 0xBB ; 006970: provisional 68k suba.w -$1445(a6), a7
db 0xBF, 0x99 ; 006974: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 006976: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006978: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00697A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00697C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00697E: provisional 68k adda.l (a5)+, a6
db 0xD8, 0xFF ; file 006980
db 0xFF, 0x01 ; 006982: provisional 68k dc.w $ff01
db 0x10, 0xDE ; 006984: provisional 68k move.b (a6)+, (a0)+
db 0xEE, 0xBB ; 006986: provisional 68k ror.l d7, d3
db 0xBB, 0xBF ; file 006988
db 0x99, 0xDD ; 00698A: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 00698C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00698E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006990: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006992: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD8 ; 006994: provisional 68k adda.l (a0)+, a6
db 0xFF, 0xFF ; 006996: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006998: provisional 68k btst.l d0, (a0)
db 0xDD, 0xBE, 0xBB, 0xBB ; file 00699A
db 0xBF, 0x99 ; 00699E: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 0069A0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069A2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069A4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069A6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069A8: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 0069AA
db 0xFF, 0x01 ; 0069AC: provisional 68k dc.w $ff01
db 0x10, 0x8D, 0x9B, 0xBB, 0xBB, 0xBF ; file 0069AE
db 0x99, 0xDD ; 0069B4: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 0069B6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069B8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069BA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069BC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 0069BE: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0069C0: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 0069C2: provisional 68k btst.l d0, (a0)
db 0x8D, 0x99 ; 0069C4: provisional 68k or.l d6, (a1)+
db 0xFB, 0xBF ; 0069C6: provisional 68k dc.w $fbbf
db 0xFF, 0x99 ; 0069C8: provisional 68k dc.w $ff99
db 0xDD, 0xDD ; 0069CA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0069CC: provisional 68k adda.l (a5)+, a6
db 0x99, 0x99 ; 0069CE: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 0069D0: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 0069D2: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 0069D4
db 0xFF, 0x01 ; 0069D6: provisional 68k dc.w $ff01
db 0x10, 0x8D ; file 0069D8
db 0x99, 0xFB, 0xBF, 0xFF, 0x99, 0xDD, 0xDD, 0xDD ; 0069DA: provisional 68k suba.l ([$99de47b9]), a4
db 0xDD, 0x99 ; 0069E2: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 0069E4: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xDD ; 0069E6: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD1 ; 0069E8: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0069EA: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 0069EC: provisional 68k btst.l d0, d6
db 0x9B, 0x99 ; 0069EE: provisional 68k sub.l d5, (a1)+
db 0xD9, 0x99 ; 0069F0: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 0069F2: provisional 68k sub.l d4, (a1)+
db 0xD8, 0x02 ; 0069F4: provisional 68k add.b d2, d4
db 0x07, 0x88, 0xDD, 0xD9 ; 0069F6: provisional 68k movep.w d3, -$2227(a0)
db 0x99, 0x9D ; 0069FA: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 0069FC: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 0069FE
db 0xFF, 0x01 ; 006A00: provisional 68k dc.w $ff01
db 0x06, 0x9E, 0xB9, 0x8D, 0x99, 0x99 ; 006A02: provisional 68k addi.l #$b98d9999, (a6)+
db 0x9D, 0x88 ; 006A08: provisional 68k subx.l -(a0), -(a6)
db 0x04, 0x05, 0xDD, 0xD9 ; 006A0A: provisional 68k subi.b #$d9, d5
db 0x9D, 0xDD ; 006A0E: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD1 ; 006A10: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006A12: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006A14: provisional 68k btst.l d0, (a0)
db 0xEE, 0xEE ; file 006A16
db 0xFD, 0xD9 ; 006A18: provisional 68k dc.w $fdd9
db 0x99, 0x9D ; 006A1A: provisional 68k sub.l d4, (a5)+
db 0x88, 0x88, 0x88, 0x88 ; file 006A1C
db 0xD8, 0x8D ; 006A20: provisional 68k add.l a5, d4
db 0xDD, 0xDD ; 006A22: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A24: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006A26
db 0xFF, 0x01 ; 006A28: provisional 68k dc.w $ff01
db 0x10, 0xEE, 0xEE, 0xEE ; 006A2A: provisional 68k move.b -$1112(a6), (a0)+
db 0xB9, 0x99 ; 006A2E: provisional 68k eor.l d4, (a1)+
db 0xDD, 0xDD ; 006A30: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A32: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A34: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A36: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A38: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 006A3A: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006A3C: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006A3E: provisional 68k btst.l d0, (a0)
db 0xEE, 0xEE, 0xEE, 0xEB ; file 006A40
db 0xBB, 0xF9, 0xDD, 0xDD, 0xDD, 0xDD ; 006A44: provisional 68k cmpa.l $dddddddd.l, a5
db 0xDD, 0xDD ; 006A4A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A4C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A4E: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006A50
db 0xFF, 0x01 ; 006A52: provisional 68k dc.w $ff01
db 0x10, 0xEE, 0xEE, 0xEE ; 006A54: provisional 68k move.b -$1112(a6), (a0)+
db 0xEE, 0xEB ; file 006A58
db 0xBF, 0x99 ; 006A5A: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 006A5C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A5E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A60: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A62: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 006A64: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006A66: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006A68: provisional 68k btst.l d0, (a0)
db 0x9E, 0xEE, 0xEE, 0xEE ; 006A6A: provisional 68k suba.w -$1112(a6), a7
db 0xEB, 0xBF ; 006A6E: provisional 68k rol.l d5, d7
db 0x99, 0xDD ; 006A70: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006A72: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A74: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A76: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006A78: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006A7A
db 0xFF, 0x01 ; 006A7C: provisional 68k dc.w $ff01
db 0x10, 0xDE ; 006A7E: provisional 68k move.b (a6)+, (a0)+
db 0xEE, 0xEE, 0xEE, 0xEB ; file 006A80
db 0xBB, 0xF9, 0xDD, 0xDD, 0xDD, 0xDD ; 006A84: provisional 68k cmpa.l $dddddddd.l, a5
db 0xDD, 0xDD ; 006A8A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 006A8C: provisional 68k add.l d6, (a1)+
db 0x9D, 0xD1 ; 006A8E: provisional 68k suba.l (a1), a6
db 0xFF, 0xFF ; 006A90: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006A92: provisional 68k btst.l d0, (a0)
db 0x8D, 0xEE, 0xEE, 0xEB ; 006A94: provisional 68k divs.w -$1115(a6), d6
db 0xBB, 0xBB ; file 006A98
db 0xF9, 0xDD ; 006A9A: provisional 68k dc.w $f9dd
db 0xDD, 0xDD ; 006A9C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 006A9E: provisional 68k adda.l (a1)+, a6
db 0x99, 0x99 ; 006AA0: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 006AA2: provisional 68k sub.l d4, (a5)+
db 0xD1, 0xFF ; file 006AA4
db 0xFF, 0x01 ; 006AA6: provisional 68k dc.w $ff01
db 0x0F, 0x88, 0x9E, 0xEB ; 006AA8: provisional 68k movep.w d7, -$6115(a0)
db 0xBB, 0xBB ; file 006AAC
db 0xFF, 0x99 ; 006AAE: provisional 68k dc.w $ff99
db 0xDD, 0xDD ; 006AB0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 006AB2: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 006AB4: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 006AB6: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xFF ; file 006AB8
db 0xFF, 0x02 ; 006ABA: provisional 68k dc.w $ff02
db 0x0E, 0xDB, 0xBB, 0xBB ; file 006ABC
db 0xBF, 0xF9, 0x9D, 0xDD, 0xDD, 0xDD ; 006AC0: provisional 68k cmpa.l $9ddddddd.l, a7
db 0xDD, 0x99 ; 006AC6: provisional 68k add.l d6, (a1)+
db 0x9F, 0xFF ; file 006AC8
db 0x99, 0xD1 ; 006ACA: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 006ACC: provisional 68k dc.w $ffff
db 0x02, 0x0E ; file 006ACE
db 0x8D, 0xFB, 0xFF, 0xFF, 0x99, 0x9D, 0xD8, 0x88 ; 006AD0: provisional 68k divs.w ([$999e435a]), d6
db 0x88, 0x8D ; file 006AD8
db 0xD9, 0x9F ; 006ADA: provisional 68k add.l d4, (a7)+
db 0xFF, 0xF9 ; 006ADC: provisional 68k dc.w $fff9
db 0xD1, 0xFF ; file 006ADE
db 0xFF, 0x02 ; 006AE0: provisional 68k dc.w $ff02
db 0x06, 0x8D ; file 006AE2
db 0xD9, 0x99 ; 006AE4: provisional 68k add.l d4, (a1)+
db 0x99, 0xDD ; 006AE6: provisional 68k suba.l (a5)+, a4
db 0xD8, 0x88 ; 006AE8: provisional 68k add.l a0, d4
db 0x02, 0x04, 0x1D, 0xD9 ; 006AEA: provisional 68k andi.b #$d9, d4
db 0x9F, 0xFF ; file 006AEE
db 0xFD, 0xFF ; 006AF0: provisional 68k dc.w $fdff
db 0xFF, 0x02 ; 006AF2: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 006AF4
db 0xDD, 0x88 ; 006AF6: provisional 68k addx.l -(a0), -(a6)
db 0x06, 0x04, 0x1D, 0x9F ; 006AF8: provisional 68k addi.b #$9f, d4
db 0xFF, 0xFF ; 006AFC: provisional 68k dc.w $ffff
db 0x9D, 0xFF ; file 006AFE
db 0xFF, 0x02 ; 006B00: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 006B02
db 0xDD, 0x88 ; 006B04: provisional 68k addx.l -(a0), -(a6)
db 0x06, 0x04, 0x1D, 0x9F ; 006B06: provisional 68k addi.b #$9f, d4
db 0xFF, 0xFF ; 006B0A: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 006B0C
db 0xFF, 0x02 ; 006B0E: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 006B10
db 0xDD, 0x88 ; 006B12: provisional 68k addx.l -(a0), -(a6)
db 0x06, 0x04, 0x8D, 0x9F ; 006B14: provisional 68k addi.b #$9f, d4
db 0xFF, 0xF9 ; 006B18: provisional 68k dc.w $fff9
db 0xD1, 0xFF ; file 006B1A
db 0xFF, 0x02 ; 006B1C: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 006B1E
db 0xDD, 0x88 ; 006B20: provisional 68k addx.l -(a0), -(a6)
db 0x06, 0x03, 0x89, 0xFF ; 006B22: provisional 68k addi.b #$ff, d3
db 0xFF, 0xFD ; 006B26: provisional 68k dc.w $fffd
db 0xFF, 0xFF ; 006B28: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006B2A: provisional 68k andi.b #$dd, d2
db 0x88, 0x05 ; 006B2E: provisional 68k or.b d5, d4
db 0x04, 0x88, 0xD9, 0xFF ; file 006B30
db 0xFF, 0xD1 ; 006B34: provisional 68k dc.w $ffd1
db 0xFF, 0xFF ; 006B36: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006B38: provisional 68k andi.b #$dd, d2
db 0xDD, 0x05 ; 006B3C: provisional 68k addx.b d5, d6
db 0x03, 0x8D, 0x9F, 0xFF ; 006B3E: provisional 68k movep.w d1, -$6001(a5)
db 0xFD, 0xFF ; 006B42: provisional 68k dc.w $fdff
db 0xFF, 0x03 ; 006B44: provisional 68k dc.w $ff03
db 0x02, 0xDD ; file 006B46
db 0xDD, 0xD1 ; 006B48: provisional 68k adda.l (a1), a6
db 0x03, 0x04 ; 006B4A: provisional 68k btst.l d1, d4
db 0x88, 0xD9 ; 006B4C: provisional 68k divu.w (a1)+, d4
db 0xFF, 0xFF ; 006B4E: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 006B50
db 0xFF, 0x03 ; 006B52: provisional 68k dc.w $ff03
db 0x02, 0x8D ; file 006B54
db 0xDD, 0xDD ; 006B56: provisional 68k adda.l (a5)+, a6
db 0x02, 0x04, 0xDD, 0xD9 ; 006B58: provisional 68k andi.b #$d9, d4
db 0xFF, 0xFF ; 006B5C: provisional 68k dc.w $ffff
db 0xFD, 0xFF ; 006B5E: provisional 68k dc.w $fdff
db 0xFF, 0x03 ; 006B60: provisional 68k dc.w $ff03
db 0x09, 0x8D, 0xDD, 0xDD ; 006B62: provisional 68k movep.w d4, -$2223(a5)
db 0xDD, 0xDD ; 006B66: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD9 ; 006B68: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 006B6A: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 006B6C
db 0xFF, 0x03 ; 006B6E: provisional 68k dc.w $ff03
db 0x08, 0x1D ; file 006B70
db 0x99, 0x9D ; 006B72: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xD9 ; 006B74: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 006B76: provisional 68k dc.w $ffff
db 0xBB, 0xFD ; file 006B78
db 0xFF, 0xFF ; 006B7A: provisional 68k dc.w $ffff
db 0x03, 0x08, 0x1D, 0x99 ; 006B7C: provisional 68k movep.w $1d99(a0), d1
db 0x99, 0x99 ; 006B80: provisional 68k sub.l d4, (a1)+
db 0xFF, 0xFB ; 006B82: provisional 68k dc.w $fffb
db 0xBB, 0xB9, 0xD1, 0xFF, 0xFF, 0x04 ; 006B84: provisional 68k eor.l d5, $d1ffff04.l
db 0x06, 0xD9 ; file 006B8A
db 0x99, 0x9F ; 006B8C: provisional 68k sub.l d4, (a7)+
db 0xFF, 0xBB ; 006B8E: provisional 68k dc.w $ffbb
db 0xBF, 0xD1 ; 006B90: provisional 68k cmpa.l (a1), a7
db 0xFF, 0xFF ; 006B92: provisional 68k dc.w $ffff
db 0x04, 0x05, 0x1D, 0xD9 ; 006B94: provisional 68k subi.b #$d9, d5
db 0x9F, 0xFB, 0xFF, 0xD1 ; 006B98: provisional 68k suba.l ([$6b9a]), a7
db 0xFF, 0xFF ; 006B9C: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 006B9E: provisional 68k btst.l d2, d3
db 0x1D, 0xFF ; file 006BA0
db 0xFD, 0xD1 ; 006BA2: provisional 68k dc.w $fdd1
db 0xFF, 0xFF ; 006BA4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006BA6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006BA8: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 006BAA: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x34, 0x00, 0x10 ; 006BAE: provisional 68k ori.b #$34, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 006BB4
db 0x10, 0x10 ; 006BB8: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 006BBA: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 006BBC: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 006BBE: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 006BC0: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 006BC4: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006BC8: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 006BCA: provisional 68k neg.w d4
db 0x18, 0x1C ; 006BCC: provisional 68k move.b (a4)+, d4
db 0x50, 0x70, 0x74, 0x8C ; 006BCE: provisional 68k addq.w #$8, -$74(a0, d7.w)
db 0x24, 0x38, 0xA0, 0x9C ; 006BD2: provisional 68k move.l $a09c.w, d2
db 0x9C, 0xA8, 0x3C, 0x58 ; 006BD6: provisional 68k sub.l $3c58(a0), d6
db 0xE0, 0x54 ; 006BDA: provisional 68k roxr.w #$8, d4
db 0x58, 0x6C, 0xD0, 0xD0 ; 006BDC: provisional 68k addq.w #$4, -$2f30(a4)
db 0xD0, 0x7C, 0x80, 0xA4 ; 006BE0: provisional 68k add.w #$80a4, d0
db 0x0E, 0x00, 0x88, 0xFF ; file 006BE4
db 0xFF, 0x0E ; 006BE8: provisional 68k dc.w $ff0e
db 0x00, 0x88 ; file 006BEA
db 0xFF, 0xFF ; 006BEC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006BEE: provisional 68k dc.w $ffff
db 0x12, 0x01 ; 006BF0: provisional 68k move.b d1, d1
db 0x88, 0xA8, 0xFF, 0xFF ; 006BF2: provisional 68k or.l -$1(a0), d4
db 0x02, 0x00, 0x88, 0x05 ; 006BF6: provisional 68k andi.b #$5, d0
db 0x06, 0x1A, 0xAC, 0xCC ; 006BFA: provisional 68k addi.b #$cc, (a2)+
db 0xCC, 0xCA ; file 006BFE
db 0xA8, 0x88 ; 006C00: provisional 68k dc.w $a888
db 0x04, 0x01, 0x8C, 0xC8 ; 006C02: provisional 68k subi.b #$c8, d1
db 0xFF, 0xFF ; 006C06: provisional 68k dc.w $ffff
db 0x02, 0x00, 0xDB, 0x05 ; 006C08: provisional 68k andi.b #$5, d0
db 0x06, 0x1A, 0xAC, 0xCC ; 006C0C: provisional 68k addi.b #$cc, (a2)+
db 0xCC, 0xCC, 0xC8, 0x88 ; file 006C10
db 0x04, 0x01, 0x88, 0xA8 ; 006C14: provisional 68k subi.b #$a8, d1
db 0xFF, 0xFF ; 006C18: provisional 68k dc.w $ffff
db 0x01, 0x01 ; 006C1A: provisional 68k btst.l d0, d1
db 0x1D, 0xBD ; file 006C1C
db 0x05, 0x05 ; 006C1E: provisional 68k btst.l d2, d5
db 0x1C, 0xCA, 0xCC, 0xCC, 0xCC, 0xC8 ; file 006C20
db 0x04, 0x02, 0x88, 0xAA ; 006C26: provisional 68k subi.b #$aa, d2
db 0xA8, 0xFF ; 006C2A: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 006C2C: provisional 68k dc.w $ff01
db 0x01, 0x1E ; 006C2E: provisional 68k btst.l d0, (a6)+
db 0xDD, 0x01 ; 006C30: provisional 68k addx.b d1, d6
db 0x09, 0x88, 0x8A, 0xAA ; 006C32: provisional 68k movep.w d4, -$7556(a0)
db 0xAA, 0xAA ; 006C36: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 006C38: provisional 68k dc.w $aaaa
db 0xCC, 0xCC ; file 006C3A
db 0xC8, 0x04 ; 006C3C: provisional 68k and.b d4, d4
db 0x02, 0xAC, 0xAA, 0xA8, 0xFF, 0xFF, 0x01, 0x01 ; 006C3E: provisional 68k andi.l #$aaa8ffff, $101(a4)
db 0x1E, 0xDD ; 006C46: provisional 68k move.b (a5)+, (a7)+
db 0x01, 0x09, 0x88, 0x8A ; 006C48: provisional 68k movep.w -$7776(a1), d0
db 0xAA, 0xAA ; 006C4C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 006C4E: provisional 68k dc.w $aaaa
db 0xAA, 0xCC ; 006C50: provisional 68k dc.w $aacc
db 0xCC, 0xC8 ; file 006C52
db 0x04, 0x02, 0xAC, 0xAA ; 006C54: provisional 68k subi.b #$aa, d2
db 0xA8, 0xFF ; 006C58: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 006C5A: provisional 68k dc.w $ff01
db 0x01, 0xDF ; 006C5C: provisional 68k bset.b d0, (a7)+
db 0xDD, 0x01 ; 006C5E: provisional 68k addx.b d1, d6
db 0x05, 0x8A, 0xAA, 0xCC ; 006C60: provisional 68k movep.w d2, -$5534(a2)
db 0xCC, 0xA8, 0x88, 0x08 ; 006C64: provisional 68k and.l -$77f8(a0), d6
db 0x02, 0xAB, 0xBC, 0xA8, 0xFF, 0xFF, 0x01, 0x01 ; 006C68: provisional 68k andi.l #$bca8ffff, $101(a3)
db 0x99, 0xD9 ; 006C70: provisional 68k suba.l (a1)+, a4
db 0x01, 0x05 ; 006C72: provisional 68k btst.l d0, d5
db 0x8C, 0xCA, 0xCC, 0xCC ; file 006C74
db 0xA8, 0x88 ; 006C78: provisional 68k dc.w $a888
db 0x05, 0x05 ; 006C7A: provisional 68k btst.l d2, d5
db 0x88, 0x99 ; 006C7C: provisional 68k or.l (a1)+, d4
db 0x98, 0xAB, 0xCC, 0x88 ; 006C7E: provisional 68k sub.l -$3378(a3), d4
db 0xFF, 0xFF ; 006C82: provisional 68k dc.w $ffff
db 0x01, 0x08, 0xEB, 0xD9 ; 006C84: provisional 68k movep.w -$1427(a0), d0
db 0x88, 0x8C, 0xCA, 0xCC ; file 006C88
db 0xCC, 0xA8, 0x88, 0x05 ; 006C8C: provisional 68k and.l -$77fb(a0), d6
db 0x05, 0xD9 ; 006C90: provisional 68k bset.b d2, (a1)+
db 0xDD, 0xD8 ; 006C92: provisional 68k adda.l (a0)+, a6
db 0xAA, 0xAA ; 006C94: provisional 68k dc.w $aaaa
db 0x88, 0xFF ; file 006C96
db 0xFF, 0x01 ; 006C98: provisional 68k dc.w $ff01
db 0x04, 0xEE ; file 006C9A
db 0xF9, 0xAA ; 006C9C: provisional 68k dc.w $f9aa
db 0xAA, 0xA8 ; 006C9E: provisional 68k dc.w $aaa8
db 0x07, 0x07 ; 006CA0: provisional 68k btst.l d3, d7
db 0x88, 0xDF ; 006CA2: provisional 68k divu.w (a7)+, d4
db 0xDD, 0xDD ; 006CA4: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xAA, 0xAA, 0x88 ; 006CA6: provisional 68k add.l -$5578(a2), d5
db 0xFF, 0xFF ; 006CAA: provisional 68k dc.w $ffff
db 0x01, 0x04 ; 006CAC: provisional 68k btst.l d0, d4
db 0xEE, 0xEB ; file 006CAE
db 0xAA, 0xAA ; 006CB0: provisional 68k dc.w $aaaa
db 0xA8, 0x05 ; 006CB2: provisional 68k dc.w $a805
db 0x09, 0x88, 0xD9, 0x9F ; 006CB4: provisional 68k movep.w d4, -$2661(a0)
db 0xDD, 0xDD ; 006CB8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 006CBA: provisional 68k adda.l (a3)+, a6
db 0xCA, 0xAA, 0x88, 0xFF ; 006CBC: provisional 68k and.l -$7701(a2), d5
db 0xFF, 0x01 ; 006CC0: provisional 68k dc.w $ff01
db 0x05, 0xEE, 0xEE, 0xEB ; 006CC2: provisional 68k bset.b d2, -$1115(a6)
db 0xF9, 0x9D ; 006CC6: provisional 68k dc.w $f99d
db 0x88, 0x01 ; 006CC8: provisional 68k or.b d1, d4
db 0x0B, 0x8D, 0xDD, 0xD9 ; 006CCA: provisional 68k movep.w d5, -$2227(a5)
db 0x99, 0xDD ; 006CCE: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006CD0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006CD2: provisional 68k adda.l (a5)+, a6
db 0xDC, 0xCA ; 006CD4: provisional 68k adda.w a2, a6
db 0x88, 0xFF ; file 006CD6
db 0xFF, 0x01 ; 006CD8: provisional 68k dc.w $ff01
db 0x05, 0xEE, 0xEE, 0xEB ; 006CDA: provisional 68k bset.b d2, -$1115(a6)
db 0xF9, 0x9D ; 006CDE: provisional 68k dc.w $f99d
db 0x88, 0x01 ; 006CE0: provisional 68k or.b d1, d4
db 0x0B, 0x8D, 0xDD, 0xD9 ; 006CE2: provisional 68k movep.w d5, -$2227(a5)
db 0x99, 0xDD ; 006CE6: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006CE8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006CEA: provisional 68k adda.l (a5)+, a6
db 0xDC, 0xCA ; 006CEC: provisional 68k adda.w a2, a6
db 0x88, 0xFF ; file 006CEE
db 0xFF, 0x01 ; 006CF0: provisional 68k dc.w $ff01
db 0x11, 0xEE, 0xEE, 0xEB, 0xBB, 0xBB ; 006CF2: provisional 68k move.b -$1115(a6), $bbbb.w
db 0xFF, 0x99 ; 006CF8: provisional 68k dc.w $ff99
db 0x9D, 0xDD ; 006CFA: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDD ; 006CFC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006CFE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D00: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 006D02: provisional 68k adda.l (a2)+, a6
db 0xA8, 0xFF ; 006D04: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 006D06: provisional 68k dc.w $ff01
db 0x11, 0x9E, 0xEE, 0xEB ; 006D08: provisional 68k move.b (a6)+, -$15(a0, a6.l)
db 0xBB, 0xBF ; file 006D0C
db 0x99, 0xDD ; 006D0E: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006D10: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D12: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D14: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D16: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 006D18: provisional 68k adda.l (a2)+, a6
db 0xA8, 0xFF ; 006D1A: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 006D1C: provisional 68k dc.w $ff01
db 0x11, 0x9E, 0xEE, 0xEB ; 006D1E: provisional 68k move.b (a6)+, -$15(a0, a6.l)
db 0xBB, 0xBF ; file 006D22
db 0x99, 0xDD ; 006D24: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006D26: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D28: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D2A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D2C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 006D2E: provisional 68k adda.l (a2)+, a6
db 0xA8, 0xFF ; 006D30: provisional 68k dc.w $a8ff
db 0xFF, 0x01 ; 006D32: provisional 68k dc.w $ff01
db 0x11, 0xDE, 0xEE, 0xBB ; 006D34: provisional 68k move.b (a6)+, $eebb.w
db 0xBB, 0xBF ; file 006D38
db 0x99, 0xDD ; 006D3A: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006D3C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D3E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D40: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D42: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 006D44: provisional 68k adda.l (a2)+, a6
db 0x88, 0xFF ; file 006D46
db 0xFF, 0x01 ; 006D48: provisional 68k dc.w $ff01
db 0x10, 0xDD ; 006D4A: provisional 68k move.b (a5)+, (a0)+
db 0xBE, 0xBB, 0xBB, 0xBF, 0x99, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD ; 006D4C: provisional 68k cmp.l ([$99de4b2b], a3.l * 2, $dddddddd), d7
db 0xDD, 0xDD ; 006D58: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 006D5A: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006D5C: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006D5E: provisional 68k btst.l d0, (a0)
db 0x8D, 0x9B ; 006D60: provisional 68k or.l d6, (a3)+
db 0xBB, 0xBB ; file 006D62
db 0xBF, 0x99 ; 006D64: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 006D66: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D68: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D6A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D6C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D6E: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006D70
db 0xFF, 0x01 ; 006D72: provisional 68k dc.w $ff01
db 0x10, 0x8D ; file 006D74
db 0x99, 0xFB, 0xBF, 0xFF, 0x99, 0xDD, 0xDD, 0xDD ; 006D76: provisional 68k suba.l ([$99de4b55]), a4
db 0xDD, 0x99 ; 006D7E: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 006D80: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xDD ; 006D82: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD1 ; 006D84: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006D86: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006D88: provisional 68k btst.l d0, (a0)
db 0x8D, 0x99 ; 006D8A: provisional 68k or.l d6, (a1)+
db 0xFB, 0xBF ; 006D8C: provisional 68k dc.w $fbbf
db 0xFF, 0x99 ; 006D8E: provisional 68k dc.w $ff99
db 0xDD, 0xDD ; 006D90: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006D92: provisional 68k adda.l (a5)+, a6
db 0x99, 0x99 ; 006D94: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 006D96: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDD ; 006D98: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006D9A
db 0xFF, 0x01 ; 006D9C: provisional 68k dc.w $ff01
db 0x06, 0x9B, 0x99, 0xD9, 0x99, 0x99 ; 006D9E: provisional 68k addi.l #$99d99999, (a3)+
db 0x99, 0xD8 ; 006DA4: provisional 68k suba.l (a0)+, a4
db 0x02, 0x07, 0x88, 0xDD ; 006DA6: provisional 68k andi.b #$dd, d7
db 0xD9, 0x99 ; 006DAA: provisional 68k add.l d4, (a1)+
db 0x9D, 0xDD ; 006DAC: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xD1 ; 006DAE: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006DB0: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 006DB2: provisional 68k btst.l d0, d6
db 0x9E, 0xB9, 0x8D, 0x99, 0x99, 0x9D ; 006DB4: provisional 68k sub.l $8d99999d.l, d7
db 0x88, 0x04 ; 006DBA: provisional 68k or.b d4, d4
db 0x05, 0xDD ; 006DBC: provisional 68k bset.b d2, (a5)+
db 0xD9, 0x9D ; 006DBE: provisional 68k add.l d4, (a5)+
db 0xDD, 0xDD ; 006DC0: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006DC2
db 0xFF, 0x01 ; 006DC4: provisional 68k dc.w $ff01
db 0x10, 0xEE, 0xEE, 0xFD ; 006DC6: provisional 68k move.b -$1103(a6), (a0)+
db 0xD9, 0x99 ; 006DCA: provisional 68k add.l d4, (a1)+
db 0x9D, 0x88 ; 006DCC: provisional 68k subx.l -(a0), -(a6)
db 0x88, 0x88 ; file 006DCE
db 0x88, 0xD8 ; 006DD0: provisional 68k divu.w (a0)+, d4
db 0x8D, 0xDD ; 006DD2: provisional 68k divs.w (a5)+, d6
db 0xDD, 0xDD ; 006DD4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 006DD6: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006DD8: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006DDA: provisional 68k btst.l d0, (a0)
db 0xEE, 0xEE ; file 006DDC
db 0xEE, 0xB9 ; 006DDE: provisional 68k ror.l d7, d1
db 0x99, 0xDD ; 006DE0: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006DE2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006DE4: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006DE6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006DE8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006DEA: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006DEC
db 0xFF, 0x01 ; 006DEE: provisional 68k dc.w $ff01
db 0x10, 0xEE, 0xEE, 0xEE ; 006DF0: provisional 68k move.b -$1112(a6), (a0)+
db 0xEB, 0xBB ; 006DF4: provisional 68k rol.l d5, d3
db 0xF9, 0xDD ; 006DF6: provisional 68k dc.w $f9dd
db 0xDD, 0xDD ; 006DF8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006DFA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006DFC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006DFE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 006E00: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006E02: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006E04: provisional 68k btst.l d0, (a0)
db 0xEE, 0xEE, 0xEE, 0xEE ; file 006E06
db 0xEB, 0xBF ; 006E0A: provisional 68k rol.l d5, d7
db 0x99, 0xDD ; 006E0C: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006E0E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E10: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E12: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E14: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 006E16
db 0xFF, 0x01 ; 006E18: provisional 68k dc.w $ff01
db 0x10, 0x9E ; 006E1A: provisional 68k move.b (a6)+, (a0)
db 0xEE, 0xEE, 0xEE, 0xEB ; file 006E1C
db 0xBF, 0x99 ; 006E20: provisional 68k eor.l d7, (a1)+
db 0xDD, 0xDD ; 006E22: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E24: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E26: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E28: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xD1 ; 006E2A: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 006E2C: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 006E2E: provisional 68k btst.l d0, (a0)
db 0xDE, 0xEE, 0xEE, 0xEE ; 006E30: provisional 68k adda.w -$1112(a6), a7
db 0xEB, 0xBB ; 006E34: provisional 68k rol.l d5, d3
db 0xF9, 0xDD ; 006E36: provisional 68k dc.w $f9dd
db 0xDD, 0xDD ; 006E38: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E3A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E3C: provisional 68k adda.l (a5)+, a6
db 0x99, 0x9D ; 006E3E: provisional 68k sub.l d4, (a5)+
db 0xD1, 0xFF ; file 006E40
db 0xFF, 0x01 ; 006E42: provisional 68k dc.w $ff01
db 0x10, 0x8D, 0xEE, 0xEE ; file 006E44
db 0xEB, 0xBB ; 006E48: provisional 68k rol.l d5, d3
db 0xBB, 0xF9, 0xDD, 0xDD, 0xDD, 0xDD ; 006E4A: provisional 68k cmpa.l $dddddddd.l, a5
db 0xD9, 0x99 ; 006E50: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 006E52: provisional 68k sub.l d4, (a1)+
db 0x9D, 0xD1 ; 006E54: provisional 68k suba.l (a1), a6
db 0xFF, 0xFF ; 006E56: provisional 68k dc.w $ffff
db 0x01, 0x0F, 0x88, 0x9E ; 006E58: provisional 68k movep.w -$7762(a7), d0
db 0xEB, 0xBB ; 006E5C: provisional 68k rol.l d5, d3
db 0xBB, 0xFF ; file 006E5E
db 0x99, 0xDD ; 006E60: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xDD ; 006E62: provisional 68k adda.l (a5)+, a6
db 0x99, 0x99 ; 006E64: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 006E66: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9D ; 006E68: provisional 68k sub.l d4, (a5)+
db 0xFF, 0xFF ; 006E6A: provisional 68k dc.w $ffff
db 0x02, 0x0E, 0xDB, 0xBB, 0xBB, 0xBF ; file 006E6C
db 0xF9, 0x9D ; 006E72: provisional 68k dc.w $f99d
db 0xDD, 0xDD ; 006E74: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 006E76: provisional 68k adda.l (a5)+, a6
db 0x99, 0x9F ; 006E78: provisional 68k sub.l d4, (a7)+
db 0xFF, 0x99 ; 006E7A: provisional 68k dc.w $ff99
db 0xD1, 0xFF ; file 006E7C
db 0xFF, 0x02 ; 006E7E: provisional 68k dc.w $ff02
db 0x0E, 0x8D ; file 006E80
db 0xFB, 0xFF ; 006E82: provisional 68k dc.w $fbff
db 0xFF, 0x99 ; 006E84: provisional 68k dc.w $ff99
db 0x9D, 0xD8 ; 006E86: provisional 68k suba.l (a0)+, a6
db 0x88, 0x88 ; file 006E88
db 0x8D, 0xD9 ; 006E8A: provisional 68k divs.w (a1)+, d6
db 0x9F, 0xFF ; file 006E8C
db 0xF9, 0xD1 ; 006E8E: provisional 68k dc.w $f9d1
db 0xFF, 0xFF ; 006E90: provisional 68k dc.w $ffff
db 0x02, 0x06, 0x8D, 0xD9 ; 006E92: provisional 68k andi.b #$d9, d6
db 0x99, 0x99 ; 006E96: provisional 68k sub.l d4, (a1)+
db 0xDD, 0xD8 ; 006E98: provisional 68k adda.l (a0)+, a6
db 0x88, 0x02 ; 006E9A: provisional 68k or.b d2, d4
db 0x04, 0x1D, 0xD9, 0x9F ; 006E9C: provisional 68k subi.b #$9f, (a5)+
db 0xFF, 0xFD ; 006EA0: provisional 68k dc.w $fffd
db 0xFF, 0xFF ; 006EA2: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006EA4: provisional 68k andi.b #$dd, d2
db 0x88, 0x06 ; 006EA8: provisional 68k or.b d6, d4
db 0x04, 0x1D, 0x9F, 0xFF ; 006EAA: provisional 68k subi.b #$ff, (a5)+
db 0xFF, 0x9D ; 006EAE: provisional 68k dc.w $ff9d
db 0xFF, 0xFF ; 006EB0: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006EB2: provisional 68k andi.b #$dd, d2
db 0x88, 0x06 ; 006EB6: provisional 68k or.b d6, d4
db 0x04, 0x1D, 0x9F, 0xFF ; 006EB8: provisional 68k subi.b #$ff, (a5)+
db 0xFF, 0xD1 ; 006EBC: provisional 68k dc.w $ffd1
db 0xFF, 0xFF ; 006EBE: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006EC0: provisional 68k andi.b #$dd, d2
db 0x88, 0x06 ; 006EC4: provisional 68k or.b d6, d4
db 0x04, 0x8D, 0x9F, 0xFF ; file 006EC6
db 0xF9, 0xD1 ; 006ECA: provisional 68k dc.w $f9d1
db 0xFF, 0xFF ; 006ECC: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x88, 0xDD ; 006ECE: provisional 68k andi.b #$dd, d2
db 0x88, 0x06 ; 006ED2: provisional 68k or.b d6, d4
db 0x03, 0x89, 0xFF, 0xFF ; 006ED4: provisional 68k movep.w d1, -$1(a1)
db 0xFD, 0xFF ; 006ED8: provisional 68k dc.w $fdff
db 0xFF, 0x02 ; 006EDA: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 006EDC
db 0xDD, 0xD1 ; 006EDE: provisional 68k adda.l (a1), a6
db 0x05, 0x04 ; 006EE0: provisional 68k btst.l d2, d4
db 0x88, 0xD9 ; 006EE2: provisional 68k divu.w (a1)+, d4
db 0xFF, 0xFF ; 006EE4: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 006EE6
db 0xFF, 0x02 ; 006EE8: provisional 68k dc.w $ff02
db 0x02, 0x88 ; file 006EEA
db 0xDD, 0xDD ; 006EEC: provisional 68k adda.l (a5)+, a6
db 0x05, 0x03 ; 006EEE: provisional 68k btst.l d2, d3
db 0x8D, 0x9F ; 006EF0: provisional 68k or.l d6, (a7)+
db 0xFF, 0xFD ; 006EF2: provisional 68k dc.w $fffd
db 0xFF, 0xFF ; 006EF4: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 006EF6: provisional 68k btst.l d1, d2
db 0xDD, 0xDD ; 006EF8: provisional 68k adda.l (a5)+, a6
db 0xD1, 0x03 ; 006EFA: provisional 68k addx.b d3, d0
db 0x04, 0x88, 0xD9, 0xFF ; file 006EFC
db 0xFF, 0xD1 ; 006F00: provisional 68k dc.w $ffd1
db 0xFF, 0xFF ; 006F02: provisional 68k dc.w $ffff
db 0x03, 0x03 ; 006F04: provisional 68k btst.l d1, d3
db 0x8D, 0xDD ; 006F06: provisional 68k divs.w (a5)+, d6
db 0xDD, 0xD1 ; 006F08: provisional 68k adda.l (a1), a6
db 0x01, 0x04 ; 006F0A: provisional 68k btst.l d0, d4
db 0xDD, 0xD9 ; 006F0C: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 006F0E: provisional 68k dc.w $ffff
db 0xFD, 0xFF ; 006F10: provisional 68k dc.w $fdff
db 0xFF, 0x03 ; 006F12: provisional 68k dc.w $ff03
db 0x09, 0x8D, 0xDD, 0xDD ; 006F14: provisional 68k movep.w d4, -$2223(a5)
db 0xDD, 0xDD ; 006F18: provisional 68k adda.l (a5)+, a6
db 0x8D, 0xD9 ; 006F1A: provisional 68k divs.w (a1)+, d6
db 0xFF, 0xFF ; 006F1C: provisional 68k dc.w $ffff
db 0xD1, 0xFF ; file 006F1E
db 0xFF, 0x03 ; 006F20: provisional 68k dc.w $ff03
db 0x08, 0x1D ; file 006F22
db 0x99, 0x9D ; 006F24: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xD9 ; 006F26: provisional 68k adda.l (a1)+, a6
db 0xFF, 0xFF ; 006F28: provisional 68k dc.w $ffff
db 0xBB, 0xFD ; file 006F2A
db 0xFF, 0xFF ; 006F2C: provisional 68k dc.w $ffff
db 0x03, 0x08, 0x1D, 0x99 ; 006F2E: provisional 68k movep.w $1d99(a0), d1
db 0x99, 0x99 ; 006F32: provisional 68k sub.l d4, (a1)+
db 0xFF, 0xFB ; 006F34: provisional 68k dc.w $fffb
db 0xBB, 0xB9, 0xD1, 0xFF, 0xFF, 0x04 ; 006F36: provisional 68k eor.l d5, $d1ffff04.l
db 0x06, 0xD9 ; file 006F3C
db 0x99, 0x9F ; 006F3E: provisional 68k sub.l d4, (a7)+
db 0xFF, 0xBB ; 006F40: provisional 68k dc.w $ffbb
db 0xBF, 0xD1 ; 006F42: provisional 68k cmpa.l (a1), a7
db 0xFF, 0xFF ; 006F44: provisional 68k dc.w $ffff
db 0x04, 0x05, 0x1D, 0xD9 ; 006F46: provisional 68k subi.b #$d9, d5
db 0x9F, 0xFB, 0xFF, 0xD1 ; 006F4A: provisional 68k suba.l ([$6f4c]), a7
db 0xFF, 0xFF ; 006F4E: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 006F50: provisional 68k btst.l d2, d3
db 0x1D, 0xFF ; file 006F52
db 0xFD, 0xD1 ; 006F54: provisional 68k dc.w $fdd1
db 0xFF, 0xFF ; 006F56: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006F58: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006F5A: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 006F5C: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x34, 0x00, 0x10 ; 006F60: provisional 68k ori.b #$34, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 006F66
db 0x10, 0x10 ; 006F6A: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 006F6C: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 006F6E: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 006F70: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 006F72: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 006F76: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 006F7A: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 006F7C: provisional 68k neg.w d4
db 0x54, 0x58 ; 006F7E: provisional 68k addq.w #$2, (a0)+
db 0x6C, 0x18 ; 006F80: provisional 68k bge.b $6f9a
db 0x20, 0x50 ; 006F82: provisional 68k movea.l (a0), a0
db 0x70, 0x74 ; 006F84: provisional 68k moveq #$74, d0
db 0x8C, 0x24 ; 006F86: provisional 68k or.b -(a4), d6
db 0x38, 0x9C ; 006F88: provisional 68k move.w (a4)+, (a4)
db 0xD0, 0xD0 ; 006F8A: provisional 68k adda.w (a0), a0
db 0xD0, 0x3C, 0x58, 0xE0 ; 006F8C: provisional 68k add.b #$e0, d0
db 0x98, 0x98 ; 006F90: provisional 68k sub.l (a0)+, d4
db 0xAC, 0x78 ; 006F92: provisional 68k dc.w $ac78
db 0x7C, 0xA8 ; 006F94: provisional 68k moveq #$a8, d6
db 0xFF, 0xFF ; 006F96: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 006F98: provisional 68k dc.w $ffff
db 0x0F, 0x00 ; 006F9A: provisional 68k btst.l d7, d0
db 0x99, 0xFF ; file 006F9C
db 0xFF, 0x0A ; 006F9E: provisional 68k dc.w $ff0a
db 0x05, 0x1B ; 006FA0: provisional 68k btst.l d2, (a3)+
db 0xDD, 0xDD ; 006FA2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 006FA4: provisional 68k adda.l (a3)+, a6
db 0x99, 0x04 ; 006FA6: provisional 68k subx.b d4, d4
db 0x00, 0x99, 0xFF, 0xFF, 0x02, 0x00 ; 006FA8: provisional 68k ori.l #$ffff0200, (a1)+
db 0x99, 0x07 ; 006FAE: provisional 68k subx.b d7, d4
db 0x04, 0x9B, 0xDD, 0xDD, 0xDD, 0xDB ; 006FB0: provisional 68k subi.l #$dddddddb, (a3)+
db 0x04, 0x01, 0x99, 0xB1 ; 006FB6: provisional 68k subi.b #$b1, d1
db 0xFF, 0xFF ; 006FBA: provisional 68k dc.w $ffff
db 0x02, 0x00, 0x8E, 0x07 ; 006FBC: provisional 68k andi.b #$7, d0
db 0x04, 0x9B, 0xDD, 0xDD, 0xDD, 0xB9 ; 006FC0: provisional 68k subi.l #$ddddddb9, (a3)+
db 0x03, 0x01 ; 006FC6: provisional 68k btst.l d1, d1
db 0x9B, 0xB9, 0xFF, 0xFF, 0x01, 0x01 ; 006FC8: provisional 68k sub.l d5, $ffff0101.l
db 0x18, 0xE8, 0x03, 0x09 ; 006FCE: provisional 68k move.b $309(a0), (a4)+
db 0xBB, 0xBB, 0xBB, 0xBD, 0xBB, 0xBB ; file 006FD2
db 0xDD, 0xDD ; 006FD8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x99 ; 006FDA: provisional 68k add.l d6, (a1)+
db 0x02, 0x02, 0x9E, 0xDB ; 006FDC: provisional 68k andi.b #$db, d2
db 0x99, 0xFF ; file 006FE0
db 0xFF, 0x01 ; 006FE2: provisional 68k dc.w $ff01
db 0x01, 0x1C ; 006FE4: provisional 68k btst.l d0, (a4)+
db 0x88, 0x03 ; 006FE6: provisional 68k or.b d3, d4
db 0x04, 0xBB ; file 006FE8
db 0xDD, 0xDD ; 006FEA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xB9, 0x07, 0x02, 0x9E, 0xEE ; 006FEC: provisional 68k add.l d6, $7029eee.l
db 0xE9, 0xFF ; file 006FF2
db 0xFF, 0x01 ; 006FF4: provisional 68k dc.w $ff01
db 0x01, 0x1C ; 006FF6: provisional 68k btst.l d0, (a4)+
db 0x88, 0x03 ; 006FF8: provisional 68k or.b d3, d4
db 0x04, 0xBB ; file 006FFA
db 0xDD, 0xDD ; 006FFC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xB9, 0x07, 0x02, 0x9E, 0xEE ; 006FFE: provisional 68k add.l d6, $7029eee.l
db 0xE9, 0xFF ; file 007004
db 0xFF, 0x01 ; 007006: provisional 68k dc.w $ff01
db 0x01, 0x8E, 0x88, 0x03 ; 007008: provisional 68k movep.w d0, -$77fd(a6)
db 0x04, 0xDB ; file 00700C
db 0xDD, 0xDD ; 00700E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xB9, 0x07, 0x02, 0x9D, 0xDD ; 007010: provisional 68k add.l d6, $7029ddd.l
db 0xB1, 0xFF ; file 007016
db 0xFF, 0x01 ; 007018: provisional 68k dc.w $ff01
db 0x09, 0xAA, 0x8A, 0x99 ; 00701A: provisional 68k bclr.b d4, -$7567(a2)
db 0x99, 0x99 ; 00701E: provisional 68k sub.l d4, (a1)+
db 0xBB, 0xDD ; 007020: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 007022: provisional 68k adda.l (a5)+, a6
db 0xB1, 0x04 ; 007024: provisional 68k eor.b d0, d4
db 0x05, 0x99 ; 007026: provisional 68k bclr.b d2, (a1)+
db 0xAA, 0xA9 ; 007028: provisional 68k dc.w $aaa9
db 0xBB, 0xBB, 0xB1, 0xFF ; file 00702A
db 0xFF, 0x01 ; 00702E: provisional 68k dc.w $ff01
db 0x05, 0xCE, 0x8A, 0xBB ; 007030: provisional 68k movep.l d2, -$7545(a6)
db 0xBB, 0xBB ; file 007034
db 0xB1, 0x08 ; 007036: provisional 68k cmpm.b (a0)+, (a0)+
db 0x05, 0x8A, 0x88, 0x8B ; 007038: provisional 68k movep.w d2, -$7775(a2)
db 0xDB, 0xBB, 0xB1, 0xFF ; file 00703C
db 0xFF, 0x01 ; 007040: provisional 68k dc.w $ff01
db 0x05, 0xCC, 0xEA, 0xBB ; 007042: provisional 68k movep.l d2, -$1545(a4)
db 0xBB, 0xBB ; file 007046
db 0xB1, 0x06 ; 007048: provisional 68k eor.b d0, d6
db 0x07, 0x99 ; 00704A: provisional 68k bclr.b d3, (a1)+
db 0x8E, 0x88, 0x88, 0x8B, 0xEE, 0xDB, 0x99, 0xFF ; file 00704C
db 0xFF, 0x01 ; 007054: provisional 68k dc.w $ff01
db 0x05, 0xCC, 0xCE, 0xBB ; 007056: provisional 68k movep.l d2, -$3145(a4)
db 0xBB, 0xBB ; file 00705A
db 0xB1, 0x04 ; 00705C: provisional 68k eor.b d0, d4
db 0x08, 0x99 ; file 00705E
db 0x8A, 0xAE, 0x88, 0x88 ; 007060: provisional 68k or.l -$7778(a6), d5
db 0x88, 0x8B ; file 007064
db 0xDD, 0xB1, 0xFF, 0xFF, 0x01, 0x05, 0xCC, 0xCC ; 007066: provisional 68k add.l d6, ([$105cccc])
db 0xCE, 0xEA, 0xA8, 0x99 ; 00706E: provisional 68k mulu.w -$5767(a2), d7
db 0x01, 0x0B, 0x98, 0x88 ; 007072: provisional 68k movep.w -$6778(a3), d0
db 0x8A, 0xAA, 0x88, 0x88 ; 007076: provisional 68k or.l -$7778(a2), d5
db 0x88, 0x88, 0x88, 0x8B ; file 00707A
db 0xBB, 0x99 ; 00707E: provisional 68k eor.l d5, (a1)+
db 0xFF, 0xFF ; 007080: provisional 68k dc.w $ffff
db 0x01, 0x05 ; 007082: provisional 68k btst.l d0, d5
db 0xCC, 0xCC ; file 007084
db 0xCE, 0xEA, 0xA8, 0x99 ; 007086: provisional 68k mulu.w -$5767(a2), d7
db 0x01, 0x0B, 0x98, 0x88 ; 00708A: provisional 68k movep.w -$6778(a3), d0
db 0x8A, 0xAA, 0x88, 0x88 ; 00708E: provisional 68k or.l -$7778(a2), d5
db 0x88, 0x88, 0x88, 0x8B ; file 007092
db 0xBB, 0x99 ; 007096: provisional 68k eor.l d5, (a1)+
db 0xFF, 0xFF ; 007098: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 00709A: provisional 68k btst.l d0, (a2)
db 0xCC, 0xCC ; file 00709C
db 0xCE, 0xEE, 0xEE, 0xEE ; 00709E: provisional 68k mulu.w -$1112(a6), d7
db 0xAA, 0xA8 ; 0070A2: provisional 68k dc.w $aaa8
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B, 0xBB, 0x99, 0xFF ; file 0070A4
db 0xFF, 0x01 ; 0070B0: provisional 68k dc.w $ff01
db 0x12, 0xAC, 0xCC, 0xCE ; 0070B2: provisional 68k move.b -$3332(a4), (a1)
db 0xEE, 0xEE ; file 0070B6
db 0xAA, 0x88 ; 0070B8: provisional 68k dc.w $aa88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x8B ; file 0070BA
db 0xBB, 0x99 ; 0070C4: provisional 68k eor.l d5, (a1)+
db 0xFF, 0xFF ; 0070C6: provisional 68k dc.w $ffff
db 0x01, 0x11 ; 0070C8: provisional 68k btst.l d0, (a1)
db 0xAC, 0xCC ; 0070CA: provisional 68k dc.w $accc
db 0xCE, 0xEE, 0xEE, 0xAA ; 0070CC: provisional 68k mulu.w -$1156(a6), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0070D0
db 0x89, 0x99 ; 0070DA: provisional 68k or.l d4, (a1)+
db 0xFF, 0xFF ; 0070DC: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 0070DE: provisional 68k btst.l d0, (a0)
db 0x8C, 0xCC, 0xEE, 0xEE ; file 0070E0
db 0xEE, 0xAA ; 0070E4: provisional 68k lsr.l d7, d2
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 0070E6
db 0xFF, 0x01 ; 0070F2: provisional 68k dc.w $ff01
db 0x10, 0x88, 0xEC, 0xEE, 0xEE, 0xEE ; file 0070F4
db 0xAA, 0x88 ; 0070FA: provisional 68k dc.w $aa88
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0070FC
db 0x88, 0x81 ; 007104: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 007106: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 007108: provisional 68k btst.l d0, (a0)
db 0x98, 0xAE, 0xEE, 0xEE ; 00710A: provisional 68k sub.l -$1112(a6), d4
db 0xEE, 0xAA ; 00710E: provisional 68k lsr.l d7, d2
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 007110
db 0xFF, 0x01 ; 00711C: provisional 68k dc.w $ff01
db 0x10, 0x98 ; 00711E: provisional 68k move.b (a0)+, (a0)
db 0xAA, 0xEE ; 007120: provisional 68k dc.w $aaee
db 0xEE, 0xEE ; file 007122
db 0xAA, 0x88 ; 007124: provisional 68k dc.w $aa88
db 0x88, 0x88 ; file 007126
db 0x88, 0xAA, 0xAA, 0xAA ; 007128: provisional 68k or.l -$5556(a2), d4
db 0xA8, 0x88 ; 00712C: provisional 68k dc.w $a888
db 0x88, 0x81 ; 00712E: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 007130: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 007132: provisional 68k btst.l d0, (a0)
db 0x98, 0xAA, 0xEE, 0xEE ; 007134: provisional 68k sub.l -$1112(a2), d4
db 0xEE, 0xAA ; 007138: provisional 68k lsr.l d7, d2
db 0x88, 0x88, 0x88, 0x88 ; file 00713A
db 0xAA, 0xAA ; 00713E: provisional 68k dc.w $aaaa
db 0xAA, 0xA8 ; 007140: provisional 68k dc.w $aaa8
db 0x88, 0x88, 0x81, 0xFF ; file 007142
db 0xFF, 0x01 ; 007146: provisional 68k dc.w $ff01
db 0x06, 0xAE, 0xAA, 0x8A, 0xAA, 0xAA, 0xAA, 0x89 ; 007148: provisional 68k addi.l #$aa8aaaaa, -$5577(a6)
db 0x02, 0x07, 0x99, 0x88 ; 007150: provisional 68k andi.b #$88, d7
db 0x8A, 0xAA, 0xA8, 0x88 ; 007154: provisional 68k or.l -$5778(a2), d5
db 0x88, 0x81 ; 007158: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 00715A: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 00715C: provisional 68k btst.l d0, d6
db 0xAC, 0xEA ; 00715E: provisional 68k dc.w $acea
db 0x98, 0xAA, 0xAA, 0xA8 ; 007160: provisional 68k sub.l -$5558(a2), d4
db 0x99, 0x04 ; 007164: provisional 68k subx.b d4, d4
db 0x05, 0x88, 0x8A, 0xA8 ; 007166: provisional 68k movep.w d2, -$7558(a0)
db 0x88, 0x88, 0x81, 0xFF ; file 00716A
db 0xFF, 0x01 ; 00716E: provisional 68k dc.w $ff01
db 0x10, 0xCC ; file 007170
db 0xCC, 0xE8, 0x8A, 0xAA ; 007172: provisional 68k mulu.w -$7556(a0), d6
db 0xA8, 0x99 ; 007176: provisional 68k dc.w $a899
db 0x99, 0x99 ; 007178: provisional 68k sub.l d4, (a1)+
db 0x99, 0x89 ; 00717A: provisional 68k subx.l -(a1), -(a4)
db 0x98, 0x88 ; 00717C: provisional 68k sub.l a0, d4
db 0x88, 0x88 ; file 00717E
db 0x88, 0x81 ; 007180: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 007182: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 007184: provisional 68k btst.l d0, (a0)
db 0xCC, 0xCC ; file 007186
db 0xCC, 0xEA, 0xAA, 0x88 ; 007188: provisional 68k mulu.w -$5578(a2), d6
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 00718C
db 0xFF, 0x01 ; 007198: provisional 68k dc.w $ff01
db 0x10, 0xCC, 0xCC, 0xCC ; file 00719A
db 0xCE, 0xEE, 0xEA, 0x88 ; 00719E: provisional 68k mulu.w -$1578(a6), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0071A2
db 0x88, 0x81 ; 0071AA: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0071AC: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 0071AE: provisional 68k btst.l d0, (a0)
db 0xCC, 0xCC, 0xCC, 0xCC ; file 0071B0
db 0xCE, 0xEE, 0xAA, 0x88 ; 0071B4: provisional 68k mulu.w -$5578(a6), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 0071B8
db 0xFF, 0x01 ; 0071C2: provisional 68k dc.w $ff01
db 0x10, 0xAC, 0xCC, 0xCC ; 0071C4: provisional 68k move.b -$3334(a4), (a0)
db 0xCC, 0xCE ; file 0071C8
db 0xEE, 0xAA ; 0071CA: provisional 68k lsr.l d7, d2
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0071CC
db 0x88, 0x81 ; 0071D4: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0071D6: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 0071D8: provisional 68k btst.l d0, (a0)
db 0x8C, 0xCC, 0xCC, 0xCC ; file 0071DA
db 0xCE, 0xEE, 0xEA, 0x88 ; 0071DE: provisional 68k mulu.w -$1578(a6), d7
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 0071E2
db 0xAA, 0xA8 ; 0071E8: provisional 68k dc.w $aaa8
db 0x81, 0xFF ; file 0071EA
db 0xFF, 0x01 ; 0071EC: provisional 68k dc.w $ff01
db 0x10, 0x98 ; 0071EE: provisional 68k move.b (a0)+, (a0)
db 0xCC, 0xCC ; file 0071F0
db 0xCE, 0xEE, 0xEE, 0xEA ; 0071F2: provisional 68k mulu.w -$1116(a6), d7
db 0x88, 0x88, 0x88, 0x88 ; file 0071F6
db 0x8A, 0xAA, 0xAA, 0xAA ; 0071FA: provisional 68k or.l -$5556(a2), d5
db 0xA8, 0x81 ; 0071FE: provisional 68k dc.w $a881
db 0xFF, 0xFF ; 007200: provisional 68k dc.w $ffff
db 0x01, 0x0F, 0x99, 0xAC ; 007202: provisional 68k movep.w -$6654(a7), d0
db 0xCE, 0xEE, 0xEE, 0xEE ; 007206: provisional 68k mulu.w -$1112(a6), d7
db 0xAA, 0x88 ; 00720A: provisional 68k dc.w $aa88
db 0x88, 0x88 ; file 00720C
db 0xAA, 0xAA ; 00720E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007210: provisional 68k dc.w $aaaa
db 0xAA, 0xA8 ; 007212: provisional 68k dc.w $aaa8
db 0xFF, 0xFF ; 007214: provisional 68k dc.w $ffff
db 0x02, 0x0E ; file 007216
db 0x8E, 0xEE, 0xEE, 0xEE ; 007218: provisional 68k divu.w -$1112(a6), d7
db 0xEA, 0xA8 ; 00721C: provisional 68k lsr.l d5, d0
db 0x88, 0x88, 0x88, 0x88 ; file 00721E
db 0xAA, 0xAF ; 007222: provisional 68k dc.w $aaaf
db 0xFF, 0xAA ; 007224: provisional 68k dc.w $ffaa
db 0x81, 0xFF ; file 007226
db 0xFF, 0x02 ; 007228: provisional 68k dc.w $ff02
db 0x0E, 0x98, 0xEE, 0xEE ; file 00722A
db 0xEE, 0xAA ; 00722E: provisional 68k lsr.l d7, d2
db 0xA8, 0x89 ; 007230: provisional 68k dc.w $a889
db 0x99, 0x99 ; 007232: provisional 68k sub.l d4, (a1)+
db 0x98, 0x8A ; 007234: provisional 68k sub.l a2, d4
db 0xAF, 0xFF ; 007236: provisional 68k dc.w $afff
db 0xFA, 0x81 ; 007238: provisional 68k dc.w $fa81
db 0xFF, 0xFF ; 00723A: provisional 68k dc.w $ffff
db 0x02, 0x06, 0x98, 0x8A ; 00723C: provisional 68k andi.b #$8a, d6
db 0xAA, 0xAA ; 007240: provisional 68k dc.w $aaaa
db 0x88, 0x89 ; file 007242
db 0x99, 0x02 ; 007244: provisional 68k subx.b d2, d4
db 0x04, 0x18, 0x8A, 0xAF ; 007246: provisional 68k subi.b #$af, (a0)+
db 0xFF, 0xF8 ; 00724A: provisional 68k dc.w $fff8
db 0xFF, 0xFF ; 00724C: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x99, 0x88 ; 00724E: provisional 68k andi.b #$88, d2
db 0x99, 0x06 ; 007252: provisional 68k subx.b d6, d4
db 0x04, 0x18, 0xAF, 0xFF ; 007254: provisional 68k subi.b #$ff, (a0)+
db 0xFF, 0xA8 ; 007258: provisional 68k dc.w $ffa8
db 0xFF, 0xFF ; 00725A: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x99, 0x88 ; 00725C: provisional 68k andi.b #$88, d2
db 0x99, 0x06 ; 007260: provisional 68k subx.b d6, d4
db 0x04, 0x18, 0xAF, 0xFF ; 007262: provisional 68k subi.b #$ff, (a0)+
db 0xFF, 0x81 ; 007266: provisional 68k dc.w $ff81
db 0xFF, 0xFF ; 007268: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x99, 0x88 ; 00726A: provisional 68k andi.b #$88, d2
db 0x99, 0x06 ; 00726E: provisional 68k subx.b d6, d4
db 0x04, 0x98, 0xAF, 0xFF, 0xFA, 0x81 ; 007270: provisional 68k subi.l #$affffa81, (a0)+
db 0xFF, 0xFF ; 007276: provisional 68k dc.w $ffff
db 0x02, 0x02, 0x99, 0x88 ; 007278: provisional 68k andi.b #$88, d2
db 0x81, 0x06 ; 00727C: provisional 68k sbcd.b d6, d0
db 0x03, 0x9A ; 00727E: provisional 68k bclr.b d1, (a2)+
db 0xFF, 0xFF ; 007280: provisional 68k dc.w $ffff
db 0xF8, 0xFF ; 007282: provisional 68k dc.w $f8ff
db 0xFF, 0x02 ; 007284: provisional 68k dc.w $ff02
db 0x02, 0x99, 0x88, 0x81, 0x05, 0x04 ; 007286: provisional 68k andi.l #$88810504, (a1)+
db 0x99, 0x8A ; 00728C: provisional 68k subx.l -(a2), -(a4)
db 0xFF, 0xFF ; 00728E: provisional 68k dc.w $ffff
db 0x81, 0xFF ; file 007290
db 0xFF, 0x02 ; 007292: provisional 68k dc.w $ff02
db 0x02, 0x99, 0x88, 0x88, 0x05, 0x03 ; 007294: provisional 68k andi.l #$88880503, (a1)+
db 0x98, 0xAF, 0xFE, 0xE8 ; 00729A: provisional 68k sub.l -$118(a7), d4
db 0xFF, 0xFF ; 00729E: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 0072A0: provisional 68k btst.l d1, d2
db 0x88, 0x88 ; file 0072A2
db 0x81, 0x03 ; 0072A4: provisional 68k sbcd.b d3, d0
db 0x04, 0x99, 0x8A, 0xFE, 0xEF, 0x81 ; 0072A6: provisional 68k subi.l #$8afeef81, (a1)+
db 0xFF, 0xFF ; 0072AC: provisional 68k dc.w $ffff
db 0x03, 0x02 ; 0072AE: provisional 68k btst.l d1, d2
db 0x98, 0x88 ; 0072B0: provisional 68k sub.l a0, d4
db 0x88, 0x02 ; 0072B2: provisional 68k or.b d2, d4
db 0x04, 0x88, 0x8A, 0xFE, 0xEE, 0xF8 ; file 0072B4
db 0xFF, 0xFF ; 0072BA: provisional 68k dc.w $ffff
db 0x03, 0x09, 0x98, 0x88 ; 0072BC: provisional 68k movep.w -$6778(a1), d1
db 0x88, 0x88 ; file 0072C0
db 0x88, 0x98 ; 0072C2: provisional 68k or.l (a0)+, d4
db 0x8A, 0xFE ; file 0072C4
db 0xEE, 0x81 ; 0072C6: provisional 68k asr.l #$7, d1
db 0xFF, 0xFF ; 0072C8: provisional 68k dc.w $ffff
db 0x03, 0x08, 0x18, 0xAA ; 0072CA: provisional 68k movep.w $18aa(a0), d1
db 0xA8, 0x88 ; 0072CE: provisional 68k dc.w $a888
db 0x8A, 0xEE, 0xEE, 0xEE ; 0072D0: provisional 68k divu.w -$1112(a6), d5
db 0xE8, 0xFF ; file 0072D4
db 0xFF, 0x03 ; 0072D6: provisional 68k dc.w $ff03
db 0x08, 0x18 ; file 0072D8
db 0xAA, 0xAA ; 0072DA: provisional 68k dc.w $aaaa
db 0xAA, 0xFE ; 0072DC: provisional 68k dc.w $aafe
db 0xEE, 0xEE ; file 0072DE
db 0xEA, 0x81 ; 0072E0: provisional 68k asr.l #$5, d1
db 0xFF, 0xFF ; 0072E2: provisional 68k dc.w $ffff
db 0x04, 0x06, 0x8A, 0xAA ; 0072E4: provisional 68k subi.b #$aa, d6
db 0xAF, 0xEE ; 0072E8: provisional 68k dc.w $afee
db 0xEE, 0xEF, 0x81, 0xFF ; file 0072EA
db 0xFF, 0x04 ; 0072EE: provisional 68k dc.w $ff04
db 0x05, 0x18 ; 0072F0: provisional 68k btst.l d2, (a0)+
db 0x8A, 0xAF, 0xEE, 0xEF ; 0072F2: provisional 68k or.l -$1111(a7), d5
db 0x81, 0xFF ; file 0072F6
db 0xFF, 0x05 ; 0072F8: provisional 68k dc.w $ff05
db 0x03, 0x18 ; 0072FA: provisional 68k btst.l d1, (a0)+
db 0xFE, 0xE8 ; 0072FC: provisional 68k dc.w $fee8
db 0x81, 0xFF ; file 0072FE
db 0xFF, 0xFF ; 007300: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007302: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 007304: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 007306: provisional 68k ori.b #$0, d7
db 0x00, 0x1C, 0x00, 0x1C ; 00730A: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x00, 0x00, 0x58 ; 00730E: provisional 68k ori.b #$58, d0
db 0x00, 0x00, 0x00, 0x00 ; 007312: provisional 68k ori.b #$0, d0
db 0x00, 0x0E, 0x00, 0x0E ; file 007316
db 0x00, 0x00, 0x00, 0x06 ; 00731A: provisional 68k ori.b #$6, d0
db 0x00, 0x06, 0x00, 0x0A ; 00731E: provisional 68k ori.b #$a, d6
db 0x00, 0x00, 0x00, 0x00 ; 007322: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 007326: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 00732A: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 00732E: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x05 ; 007332: provisional 68k ori.b #$5, d4
db 0x00, 0x0C ; file 007336
db 0x01, 0xD8 ; 007338: provisional 68k bset.b d0, (a0)+
db 0x03, 0xA4 ; 00733A: provisional 68k bclr.b d1, -(a4)
db 0x05, 0x6A, 0x07, 0x32 ; 00733C: provisional 68k bchg.b d2, $732(a2)
db 0x08, 0xF4, 0x00, 0x00, 0x00, 0x00 ; 007340: provisional 68k bset.b #$0, (a4, d0.w)
db 0x00, 0x1C, 0x00, 0x1C ; 007346: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 00734A: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 00734E
db 0x10, 0x10 ; 007350: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 007352: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 007354: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 007356: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007358: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00735C: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 007360: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 007362: provisional 68k neg.w d4
db 0x00, 0x00, 0x00, 0xDC ; 007364: provisional 68k ori.b #$dc, d0
db 0xDC, 0xD4 ; 007368: provisional 68k adda.w (a4), a6
db 0x64, 0x68 ; 00736A: provisional 68k bcc.b $73d4
db 0x68, 0x08 ; 00736C: provisional 68k bvc.b $7376
db 0x20, 0x4C ; 00736E: provisional 68k movea.l a4, a0
db 0xAC, 0xAC ; 007370: provisional 68k dc.w $acac
db 0xA4, 0x34 ; 007372: provisional 68k dc.w $a434
db 0x38, 0x40 ; 007374: provisional 68k movea.w d0, a4
db 0x00, 0x18, 0x34, 0x10 ; 007376: provisional 68k ori.b #$10, (a0)+
db 0x34, 0x58 ; 00737A: provisional 68k movea.w (a0)+, a2
db 0x05, 0x03 ; 00737C: provisional 68k btst.l d2, d3
db 0x1D, 0xAA, 0xDA, 0xF1, 0xFF, 0xFF, 0x04, 0x05, 0xDA, 0x99 ; 00737E: provisional 68k move.b -$250f(a2), ([$405da99])
db 0x99, 0x99 ; 007388: provisional 68k sub.l d4, (a1)+
db 0x9C, 0xAD, 0xFF, 0xFF ; 00738A: provisional 68k sub.l -$1(a5), d6
db 0x03, 0x07 ; 00738E: provisional 68k btst.l d1, d7
db 0xDA, 0x99 ; 007390: provisional 68k add.l (a1)+, d5
db 0x99, 0x99 ; 007392: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 007394: provisional 68k sub.l d4, (a1)+
db 0xCC, 0xA1 ; 007396: provisional 68k and.l -(a1), d6
db 0xFF, 0xFF ; 007398: provisional 68k dc.w $ffff
db 0x02, 0x09, 0x1D, 0xC9 ; file 00739A
db 0x99, 0x99 ; 00739E: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0073A0: provisional 68k sub.l d4, (a1)+
db 0x9C, 0xCC ; 0073A2: provisional 68k suba.w a4, a6
db 0xCA, 0xD1 ; 0073A4: provisional 68k mulu.w (a1), d5
db 0xFF, 0xFF ; 0073A6: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 0073A8
db 0xD9, 0x99 ; 0073AA: provisional 68k add.l d4, (a1)+
db 0x99, 0x99 ; 0073AC: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0073AE: provisional 68k sub.l d4, (a1)+
db 0x99, 0xCC ; 0073B0: provisional 68k suba.l a4, a4
db 0xCC, 0xAD, 0xFF, 0xFF ; 0073B2: provisional 68k and.l -$1(a5), d6
db 0x01, 0x0A, 0x1D, 0x99 ; 0073B6: provisional 68k movep.w $1d99(a2), d0
db 0x99, 0x99 ; 0073BA: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0073BC: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9C ; 0073BE: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC ; file 0073C0
db 0xAA, 0xFF ; 0073C2: provisional 68k dc.w $aaff
db 0xFF, 0x01 ; 0073C4: provisional 68k dc.w $ff01
db 0x0B, 0x1C ; 0073C6: provisional 68k btst.l d5, (a4)+
db 0x99, 0x99 ; 0073C8: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0073CA: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0073CC: provisional 68k sub.l d4, (a1)+
db 0x9C, 0xCC ; 0073CE: provisional 68k suba.w a4, a6
db 0xCA, 0xAA, 0xD1, 0xFF ; 0073D0: provisional 68k and.l -$2e01(a2), d5
db 0xFF, 0x01 ; 0073D4: provisional 68k dc.w $ff01
db 0x0B, 0xAC, 0x99, 0x99 ; 0073D6: provisional 68k bclr.b d5, -$6667(a4)
db 0x99, 0x99 ; 0073DA: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9C ; 0073DC: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC ; file 0073DE
db 0xCA, 0xAA, 0xAD, 0xFF ; 0073E0: provisional 68k and.l -$5201(a2), d5
db 0xFF, 0x01 ; 0073E4: provisional 68k dc.w $ff01
db 0x0B, 0xCC, 0x99, 0x99 ; 0073E6: provisional 68k movep.l d5, -$6667(a4)
db 0x99, 0x99 ; 0073EA: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9C ; 0073EC: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC ; file 0073EE
db 0xAA, 0xAA ; 0073F0: provisional 68k dc.w $aaaa
db 0xAD, 0xFF ; 0073F2: provisional 68k dc.w $adff
db 0xFF, 0x00 ; 0073F4: provisional 68k dc.w $ff00
db 0x0C, 0x1D, 0xCC, 0xCC ; 0073F6: provisional 68k cmpi.b #$cc, (a5)+
db 0x99, 0x99 ; 0073FA: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0073FC: provisional 68k sub.l d4, (a1)+
db 0xCC, 0xCC ; file 0073FE
db 0xCC, 0xAA, 0xAA, 0xDD ; 007400: provisional 68k and.l -$5523(a2), d6
db 0xFF, 0xFF ; 007404: provisional 68k dc.w $ffff
db 0x00, 0x0D, 0x1A, 0xCC, 0xCC, 0xCC, 0xCC, 0xC9, 0xCC, 0xCC ; file 007406
db 0xCC, 0xAA, 0xAA, 0xAA ; 007410: provisional 68k and.l -$5556(a2), d6
db 0xAD, 0xD1 ; 007414: provisional 68k dc.w $add1
db 0xFF, 0xFF ; 007416: provisional 68k dc.w $ffff
db 0x00, 0x0D, 0x1A, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 007418
db 0xAC, 0xAA ; 007422: provisional 68k dc.w $acaa
db 0xAA, 0xAA ; 007424: provisional 68k dc.w $aaaa
db 0xDD, 0xD1 ; 007426: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 007428: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 00742A
db 0x1A, 0xAC, 0xCC, 0xCC ; 00742C: provisional 68k move.b -$3334(a4), (a5)
db 0xCC, 0xCC, 0xCA, 0xFD ; file 007430
db 0xDA, 0xAA, 0xAA, 0xAD ; 007434: provisional 68k add.l -$5553(a2), d5
db 0xDD, 0xD1 ; 007438: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 00743A: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 00743C
db 0x1A, 0xAC, 0xCC, 0xCC ; 00743E: provisional 68k move.b -$3334(a4), (a5)
db 0xAD, 0xFA ; 007442: provisional 68k dc.w $adfa
db 0xAF, 0xFB ; 007444: provisional 68k dc.w $affb
db 0xBB, 0xFA, 0xAA, 0xAD ; 007446: provisional 68k cmpa.l $1ef5(pc), a5
db 0xDD, 0xD1 ; 00744A: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 00744C: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 00744E
db 0x1A, 0xAA, 0xAA, 0xAA ; 007450: provisional 68k move.b -$5556(a2), (a5)
db 0xFB, 0xBF ; 007454: provisional 68k dc.w $fbbf
db 0xFF, 0xBF ; 007456: provisional 68k dc.w $ffbf
db 0xFB, 0xBF ; 007458: provisional 68k dc.w $fbbf
db 0xAA, 0xDD ; 00745A: provisional 68k dc.w $aadd
db 0xDD, 0xD1 ; 00745C: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 00745E: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 007460
db 0x1D, 0xAA, 0xAA, 0xAD, 0xBB, 0xFF, 0xBE, 0xEE, 0xFF, 0xBB ; 007462: provisional 68k move.b -$5553(a2), ([$beeeffbb])
db 0xFD, 0xDD ; 00746C: provisional 68k dc.w $fddd
db 0xDD, 0xD1 ; 00746E: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 007470: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 007472
db 0x1D, 0xAA, 0xAA, 0xAB, 0xBF, 0xFE, 0x88, 0x88, 0xEF, 0xFB ; 007474: provisional 68k move.b -$5555(a2), ([$8888effb])
db 0xBD, 0xDD ; 00747E: provisional 68k cmpa.l (a5)+, a6
db 0xDD, 0xD1 ; 007480: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 007482: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0xDA, 0xAA ; 007484: provisional 68k movep.w -$2556(a4), d0
db 0xDB, 0xBB ; file 007488
db 0xE8, 0x88 ; 00748A: provisional 68k lsr.l #$4, d0
db 0x88, 0x8F ; file 00748C
db 0xFF, 0xBF ; 00748E: provisional 68k dc.w $ffbf
db 0xDD, 0xDD ; 007490: provisional 68k adda.l (a5)+, a6
db 0xD1, 0xFF ; file 007492
db 0xFF, 0x01 ; 007494: provisional 68k dc.w $ff01
db 0x0B, 0xDD ; 007496: provisional 68k bset.b d5, (a5)+
db 0xDA, 0xFB, 0xBF, 0xE8, 0x88, 0x88 ; 007498: provisional 68k adda.w $8888(invalid.w), a5
db 0x8E, 0xFF ; file 00749E
db 0xBF, 0xDD ; 0074A0: provisional 68k cmpa.l (a5)+, a7
db 0xDD, 0xFF ; file 0074A2
db 0xFF, 0x01 ; 0074A4: provisional 68k dc.w $ff01
db 0x0B, 0x1D ; 0074A6: provisional 68k btst.l d5, (a5)+
db 0xDD, 0xFB, 0xBF, 0xF8, 0x88, 0x88, 0x8E, 0xFB ; 0074A8: provisional 68k adda.l $88888efb(invalid.w), a6
db 0xBF, 0xDD ; 0074B0: provisional 68k cmpa.l (a5)+, a7
db 0xDD, 0xFF ; file 0074B2
db 0xFF, 0x01 ; 0074B4: provisional 68k dc.w $ff01
db 0x0B, 0x1D ; 0074B6: provisional 68k btst.l d5, (a5)+
db 0xDD, 0xDE ; 0074B8: provisional 68k adda.l (a6)+, a6
db 0xBB, 0xFE, 0x88, 0x88, 0xEF, 0xFB ; file 0074BA
db 0xBF, 0xDD ; 0074C0: provisional 68k cmpa.l (a5)+, a7
db 0xD1, 0xFF ; file 0074C2
db 0xFF, 0x02 ; 0074C4: provisional 68k dc.w $ff02
db 0x09, 0xDD ; 0074C6: provisional 68k bset.b d4, (a5)+
db 0xDE, 0xBB, 0xFF, 0xFE, 0xEF, 0xFF, 0xBB, 0xED ; 0074C8: provisional 68k add.l ([$f00030b7]), d7
db 0xDD, 0xFF ; file 0074D0
db 0xFF, 0x02 ; 0074D2: provisional 68k dc.w $ff02
db 0x09, 0x1D ; 0074D4: provisional 68k btst.l d4, (a5)+
db 0xDD, 0xEB, 0xBB, 0xFF ; 0074D6: provisional 68k adda.l -$4401(a3), a6
db 0xFF, 0xFF ; 0074DA: provisional 68k dc.w $ffff
db 0xBE, 0xDD ; 0074DC: provisional 68k cmpa.w (a5)+, a7
db 0xD1, 0xFF ; file 0074DE
db 0xFF, 0x03 ; 0074E0: provisional 68k dc.w $ff03
db 0x07, 0xDD ; 0074E2: provisional 68k bset.b d3, (a5)+
db 0xDE, 0xEB, 0xBB, 0xBB ; 0074E4: provisional 68k adda.w -$4445(a3), a7
db 0xBB, 0xED, 0xDD, 0xFF ; 0074E8: provisional 68k cmpa.l -$2201(a5), a5
db 0xFF, 0x03 ; 0074EC: provisional 68k dc.w $ff03
db 0x07, 0x1D ; 0074EE: provisional 68k btst.l d3, (a5)+
db 0xDD, 0xFE, 0xEE, 0xEE, 0xEF, 0xDA, 0xD1, 0xFF ; file 0074F0
db 0xFF, 0x04 ; 0074F8: provisional 68k dc.w $ff04
db 0x05, 0x1D ; 0074FA: provisional 68k btst.l d2, (a5)+
db 0xDD, 0xDF ; 0074FC: provisional 68k adda.l (a7)+, a6
db 0xFD, 0xDD ; 0074FE: provisional 68k dc.w $fddd
db 0xD1, 0xFF ; file 007500
db 0xFF, 0x06 ; 007502: provisional 68k dc.w $ff06
db 0x01, 0xDD ; 007504: provisional 68k bset.b d0, (a5)+
db 0xDD, 0xFF ; file 007506
db 0xFF, 0xFF ; 007508: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00750A: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 00750C: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 00750E: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 007512: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 007516: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 00751A
db 0x10, 0x10 ; 00751C: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00751E: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 007520: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 007522: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007524: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 007528: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00752C: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00752E: provisional 68k neg.w d4
db 0x0C, 0x10, 0x18, 0xE0 ; 007530: provisional 68k cmpi.b #$e0, (a0)
db 0xE0, 0xD8 ; 007534: provisional 68k asr.w (a0)+
db 0x5C, 0x60 ; 007536: provisional 68k addq.w #$6, -(a0)
db 0x64, 0xA8 ; 007538: provisional 68k bcc.b $74e2
db 0xA8, 0xA4 ; 00753A: provisional 68k dc.w $a8a4
db 0x08, 0x30, 0x5C, 0x3C, 0x40, 0x48 ; file 00753C
db 0x04, 0x1C, 0x44, 0x7C ; 007542: provisional 68k subi.b #$7c, (a4)+
db 0x80, 0x7C, 0x06, 0x01 ; 007546: provisional 68k or.w #$601, d0
db 0xDA, 0xDD ; 00754A: provisional 68k adda.w (a5)+, a5
db 0xFF, 0xFF ; 00754C: provisional 68k dc.w $ffff
db 0x04, 0x05, 0xDA, 0xB9 ; 00754E: provisional 68k subi.b #$b9, d5
db 0x99, 0x99 ; 007552: provisional 68k sub.l d4, (a1)+
db 0xFA, 0xD1 ; 007554: provisional 68k dc.w $fad1
db 0xFF, 0xFF ; 007556: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 007558: provisional 68k btst.l d1, d7
db 0xDD, 0x99 ; 00755A: provisional 68k add.l d6, (a1)+
db 0x99, 0x99 ; 00755C: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9B ; 00755E: provisional 68k sub.l d4, (a3)+
db 0xBA, 0xD1 ; 007560: provisional 68k cmpa.w (a1), a5
db 0xFF, 0xFF ; 007562: provisional 68k dc.w $ffff
db 0x02, 0x08 ; file 007564
db 0x1D, 0xB9, 0x99, 0x99, 0x99, 0x99, 0x9B, 0xBB, 0xFD, 0xFF, 0xFF, 0x02, 0x09, 0xD9, 0x99, 0x99 ; 007566: provisional 68k move.b $99999999.l, ([$fdffff02, a1.l * 2], $9d99999)
db 0x99, 0x99 ; 007576: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 007578: provisional 68k sub.l d4, (a1)+
db 0xBB, 0xBF, 0xD1, 0xFF ; file 00757A
db 0xFF, 0x01 ; 00757E: provisional 68k dc.w $ff01
db 0x0A, 0x1D, 0x99, 0x99 ; 007580: provisional 68k eori.b #$99, (a5)+
db 0x99, 0x99 ; 007584: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 007586: provisional 68k sub.l d4, (a1)+
db 0x9B, 0xBB ; file 007588
db 0xBF, 0xAD, 0xFF, 0xFF ; 00758A: provisional 68k eor.l d7, -$1(a5)
db 0x01, 0x0B, 0xDB, 0x99 ; 00758E: provisional 68k movep.w -$2467(a3), d0
db 0x99, 0x99 ; 007592: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 007594: provisional 68k sub.l d4, (a1)+
db 0x99, 0xBB, 0xBB, 0xFF ; file 007596
db 0xFA, 0xD1 ; 00759A: provisional 68k dc.w $fad1
db 0xFF, 0xFF ; 00759C: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xAB, 0x99 ; 00759E: provisional 68k movep.w -$5467(a3), d0
db 0x99, 0x99 ; 0075A2: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0075A4: provisional 68k sub.l d4, (a1)+
db 0x99, 0xBB, 0xBF, 0xFF ; file 0075A6
db 0xAA, 0xD1 ; 0075AA: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 0075AC: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 0075AE
db 0x1D, 0xB9, 0x99, 0x99, 0x99, 0x99, 0x99, 0x9B, 0xAD, 0xED, 0xDA, 0xAA ; 0075B0: provisional 68k move.b $99999999.l, ([, a1.l], $adeddaaa)
db 0xDD, 0xFF ; file 0075BC
db 0xFF, 0x00 ; 0075BE: provisional 68k dc.w $ff00
db 0x0C, 0x1A, 0xBB, 0xB9 ; 0075C0: provisional 68k cmpi.b #$b9, (a2)+
db 0x99, 0x99 ; 0075C4: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0075C6: provisional 68k sub.l d4, (a1)+
db 0xFA, 0xCC ; 0075C8: provisional 68k dc.w $facc
db 0xCE, 0xEE, 0xDA, 0xDD ; 0075CA: provisional 68k mulu.w -$2523(a6), d7
db 0xFF, 0xFF ; 0075CE: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 0075D0
db 0x1F, 0xBB, 0xBB, 0xBB, 0x9B, 0x99, 0x9F, 0xFF, 0xAC, 0xCC, 0xCC, 0xED, 0xDD, 0xFF, 0xFF, 0x00, 0x0D, 0x1F ; 0075D2: provisional 68k move.b ([$9b9a15d3, a3.l * 2], $accccced), ([$ff000d1f])
db 0xBB, 0xBB, 0xBB, 0xBB ; file 0075E4
db 0xBB, 0xAA, 0xFF, 0xCC ; 0075E8: provisional 68k eor.l d5, -$34(a2)
db 0xCC, 0xCC, 0xEE, 0xDD, 0xD1, 0xFF ; file 0075EC
db 0xFF, 0x00 ; 0075F2: provisional 68k dc.w $ff00
db 0x0D, 0x1F ; 0075F4: provisional 68k btst.l d6, (a7)+
db 0xBB, 0xBB, 0xBB, 0xBB ; file 0075F6
db 0xBB, 0xCA ; 0075FA: provisional 68k cmpa.l a2, a5
db 0xAC, 0x88 ; 0075FC: provisional 68k dc.w $ac88
db 0x88, 0xCC ; file 0075FE
db 0xCC, 0xDD ; 007600: provisional 68k mulu.w (a5)+, d6
db 0xD1, 0xFF ; file 007602
db 0xFF, 0x00 ; 007604: provisional 68k dc.w $ff00
db 0x0D, 0x1A ; 007606: provisional 68k btst.l d6, (a2)+
db 0xFF, 0xFB ; 007608: provisional 68k dc.w $fffb
db 0xBB, 0xBB ; file 00760A
db 0xBA, 0xEC, 0xC8, 0x88 ; 00760C: provisional 68k cmpa.w -$3778(a4), a5
db 0x88, 0x8C ; file 007610
db 0xCE, 0xED, 0xD1, 0xFF ; 007612: provisional 68k mulu.w -$2e01(a5), d7
db 0xFF, 0x00 ; 007616: provisional 68k dc.w $ff00
db 0x0D, 0x1A ; 007618: provisional 68k btst.l d6, (a2)+
db 0xFF, 0xFF ; 00761A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00761C: provisional 68k dc.w $ffff
db 0xFD, 0xCC ; 00761E: provisional 68k dc.w $fdcc
db 0xC8, 0x88, 0x88, 0x8C ; file 007620
db 0xCC, 0xED, 0xD1, 0xFF ; 007624: provisional 68k mulu.w -$2e01(a5), d6
db 0xFF, 0x00 ; 007628: provisional 68k dc.w $ff00
db 0x0D, 0x1A ; 00762A: provisional 68k btst.l d6, (a2)+
db 0xAA, 0xFF ; 00762C: provisional 68k dc.w $aaff
db 0xFF, 0xFF ; 00762E: provisional 68k dc.w $ffff
db 0xFE, 0xCC ; 007630: provisional 68k dc.w $fecc
db 0xE8, 0x88 ; 007632: provisional 68k lsr.l #$4, d0
db 0x88, 0x8C ; file 007634
db 0xCC, 0xED, 0xD1, 0xFF ; 007636: provisional 68k mulu.w -$2e01(a5), d6
db 0xFF, 0x00 ; 00763A: provisional 68k dc.w $ff00
db 0x0D, 0x1D ; 00763C: provisional 68k btst.l d6, (a5)+
db 0xAA, 0xAA ; 00763E: provisional 68k dc.w $aaaa
db 0xFA, 0xFA ; 007640: provisional 68k dc.w $fafa
db 0xAE, 0xCC ; 007642: provisional 68k dc.w $aecc
db 0xC8, 0x88, 0x88, 0x8C, 0xCE, 0x8D, 0xD1, 0xFF ; file 007644
db 0xFF, 0x00 ; 00764C: provisional 68k dc.w $ff00
db 0x0C, 0x1D, 0xDA, 0xAA ; 00764E: provisional 68k cmpi.b #$aa, (a5)+
db 0xAA, 0xAA ; 007652: provisional 68k dc.w $aaaa
db 0xAC, 0xCC ; 007654: provisional 68k dc.w $accc
db 0xC8, 0x88 ; file 007656
db 0x88, 0xEC, 0xE8, 0xED ; 007658: provisional 68k divu.w -$1713(a4), d4
db 0xFF, 0xFF ; 00765C: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xDD, 0xAD ; 00765E: provisional 68k movep.w -$2253(a3), d0
db 0xAA, 0xAA ; 007662: provisional 68k dc.w $aaaa
db 0xAD, 0xEC ; 007664: provisional 68k dc.w $adec
db 0xCC, 0x88, 0x8E, 0xCC ; file 007666
db 0x8E, 0xDD ; 00766A: provisional 68k divu.w (a5)+, d7
db 0xFF, 0xFF ; 00766C: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xDD, 0xDD ; 00766E: provisional 68k movep.w -$2223(a3), d0
db 0xDD, 0xDD ; 007672: provisional 68k adda.l (a5)+, a6
db 0xAD, 0xEC ; 007674: provisional 68k dc.w $adec
db 0xCC, 0xCC, 0xCC, 0xCE ; file 007676
db 0x8D, 0xD1 ; 00767A: provisional 68k divs.w (a1), d6
db 0xFF, 0xFF ; 00767C: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1D, 0xDD ; 00767E: provisional 68k movep.w $1ddd(a3), d0
db 0xDD, 0xDD ; 007682: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xEE, 0xCC, 0xCC ; 007684: provisional 68k adda.l -$3334(a6), a6
db 0xCC, 0xE8, 0xED, 0xD1 ; 007688: provisional 68k mulu.w -$122f(a0), d6
db 0xFF, 0xFF ; 00768C: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x1D, 0xDD ; 00768E: provisional 68k movep.w $1ddd(a2), d0
db 0xDD, 0xDD ; 007692: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDE ; 007694: provisional 68k adda.l (a6)+, a6
db 0xEE, 0xCE, 0xCE, 0x8E, 0xDD, 0xFF ; file 007696
db 0xFF, 0x02 ; 00769C: provisional 68k dc.w $ff02
db 0x09, 0xDD ; 00769E: provisional 68k bset.b d4, (a5)+
db 0xDD, 0xDD ; 0076A0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0076A2: provisional 68k adda.l (a5)+, a6
db 0xDE, 0xEE, 0x8E, 0xDD ; 0076A4: provisional 68k adda.w -$7123(a6), a7
db 0xD1, 0xFF ; file 0076A8
db 0xFF, 0x02 ; 0076AA: provisional 68k dc.w $ff02
db 0x08, 0x1D ; file 0076AC
db 0xDD, 0xDD ; 0076AE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0076B0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0076B2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xAD, 0xFF, 0xFF ; 0076B4: provisional 68k add.l d6, -$1(a5)
db 0x03, 0x07 ; 0076B8: provisional 68k btst.l d1, d7
db 0xDD, 0xDD ; 0076BA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0076BC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 0076BE: provisional 68k adda.l (a2)+, a6
db 0xDD, 0xD1 ; 0076C0: provisional 68k adda.l (a1), a6
db 0xFF, 0xFF ; 0076C2: provisional 68k dc.w $ffff
db 0x04, 0x05, 0xDD, 0xDD ; 0076C4: provisional 68k subi.b #$dd, d5
db 0xDD, 0xDD ; 0076C8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0076CA: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 0076CC: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 0076CE: provisional 68k btst.l d2, d3
db 0xDD, 0xDD ; 0076D0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xE1 ; 0076D2: provisional 68k adda.l -(a1), a6
db 0xFF, 0xFF ; 0076D4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076D6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0076D8: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0076DA: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 0076DE: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 0076E2: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 0076E6
db 0x10, 0x10 ; 0076E8: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0076EA: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0076EC: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0076EE: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0076F0: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0076F4: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0076F8: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0076FA: provisional 68k neg.w d4
db 0x0C, 0x10, 0x1C, 0xAC ; 0076FC: provisional 68k cmpi.b #$ac, (a0)
db 0xAC, 0xA4 ; 007700: provisional 68k dc.w $aca4
db 0x50, 0x58 ; 007702: provisional 68k addq.w #$8, (a0)+
db 0x60, 0x00, 0x2C, 0x4C ; 007704: provisional 68k bra.w $a352
db 0x80, 0x80 ; 007708: provisional 68k or.l d0, d0
db 0x80, 0x3C, 0x40, 0x48 ; 00770A: provisional 68k or.b #$48, d0
db 0xD4, 0xD8 ; 00770E: provisional 68k adda.w (a0)+, a2
db 0xCC, 0x08 ; file 007710
db 0x30, 0x5C ; 007712: provisional 68k movea.w (a4)+, a0
db 0xFF, 0xFF ; 007714: provisional 68k dc.w $ffff
db 0x04, 0x04, 0x1D, 0xA9 ; 007716: provisional 68k subi.b #$a9, d4
db 0x99, 0x9C ; 00771A: provisional 68k sub.l d4, (a4)+
db 0xAD, 0xFF ; 00771C: provisional 68k dc.w $adff
db 0xFF, 0x03 ; 00771E: provisional 68k dc.w $ff03
db 0x06, 0x1D, 0x9E, 0xEE ; 007720: provisional 68k addi.b #$ee, (a5)+
db 0xEE, 0xEE, 0xE9, 0xCD ; file 007724
db 0xFF, 0xFF ; 007728: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 00772A: provisional 68k btst.l d1, d7
db 0xDE, 0xEE, 0xEE, 0xEE ; 00772C: provisional 68k adda.w -$1112(a6), a7
db 0xEE, 0xE9 ; file 007730
db 0x99, 0xCD ; 007732: provisional 68k suba.l a5, a4
db 0xFF, 0xFF ; 007734: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 007736
db 0xD9, 0xEE, 0xEE, 0xEE ; 007738: provisional 68k adda.l -$1112(a6), a4
db 0xEE, 0xE9, 0xCC, 0xC9 ; file 00773C
db 0x9C, 0xD1 ; 007740: provisional 68k suba.w (a1), a6
db 0xFF, 0xFF ; 007742: provisional 68k dc.w $ffff
db 0x01, 0x0A, 0x1D, 0x9E ; 007744: provisional 68k movep.w $1d9e(a2), d0
db 0xEE, 0xEE, 0xEE, 0xE9 ; file 007748
db 0xFF, 0xFF ; 00774C: provisional 68k dc.w $ffff
db 0xFF, 0xFC ; 00774E: provisional 68k dc.w $fffc
db 0xCD, 0xFF ; file 007750
db 0xFF, 0x01 ; 007752: provisional 68k dc.w $ff01
db 0x0A, 0x1C, 0xEE, 0xEE ; 007754: provisional 68k eori.b #$ee, (a4)+
db 0xEE, 0xEE, 0x9F, 0xFF ; file 007758
db 0xFF, 0xFF ; 00775C: provisional 68k dc.w $ffff
db 0xFF, 0xAA ; 00775E: provisional 68k dc.w $ffaa
db 0xFF, 0xFF ; 007760: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xAE, 0xEE ; 007762: provisional 68k movep.w -$5112(a3), d0
db 0xEE, 0xEE, 0xEE, 0xFF ; file 007766
db 0xAA, 0xAF ; 00776A: provisional 68k dc.w $aaaf
db 0xFF, 0xFF ; 00776C: provisional 68k dc.w $ffff
db 0xFA, 0xD1 ; 00776E: provisional 68k dc.w $fad1
db 0xFF, 0xFF ; 007770: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x99, 0xEE ; 007772: provisional 68k movep.w -$6612(a3), d0
db 0xEE, 0xEE, 0xEC, 0xFA ; file 007776
db 0xCC, 0xA8, 0xBF, 0xFF ; 00777A: provisional 68k and.l -$4001(a0), d6
db 0xFB, 0xD1 ; 00777E: provisional 68k dc.w $fbd1
db 0xFF, 0xFF ; 007780: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 007782
db 0x1D, 0x99, 0xEE, 0xEE ; 007784: provisional 68k move.b (a1)+, -$12(a6, a6.l)
db 0xEE, 0xEA ; file 007788
db 0xFA, 0xCA ; 00778A: provisional 68k dc.w $faca
db 0xD8, 0x88 ; 00778C: provisional 68k add.l a0, d4
db 0xFF, 0xFF ; 00778E: provisional 68k dc.w $ffff
db 0xDD, 0xFF ; file 007790
db 0xFF, 0x00 ; 007792: provisional 68k dc.w $ff00
db 0x0C, 0x1C, 0x99, 0x99 ; 007794: provisional 68k cmpi.b #$99, (a4)+
db 0xE9, 0xEE, 0xEF, 0xFA ; file 007798
db 0xAD, 0x88 ; 00779C: provisional 68k dc.w $ad88
db 0x88, 0x8F ; file 00779E
db 0xFF, 0xBD ; 0077A0: provisional 68k dc.w $ffbd
db 0xFF, 0xFF ; 0077A2: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 0077A4
db 0x19, 0x99, 0x99, 0x99 ; 0077A6: provisional 68k move.b (a1)+, ([, a1.l])
db 0x99, 0x9F ; 0077AA: provisional 68k sub.l d4, (a7)+
db 0xFF, 0xB8 ; 0077AC: provisional 68k dc.w $ffb8
db 0x88, 0x88, 0x8F, 0xFF, 0xBD, 0xFF ; file 0077AE
db 0xFF, 0x00 ; 0077B4: provisional 68k dc.w $ff00
db 0x0D, 0x19 ; 0077B6: provisional 68k btst.l d6, (a1)+
db 0x99, 0x99 ; 0077B8: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0077BA: provisional 68k sub.l d4, (a1)+
db 0x9F, 0xFF ; file 0077BC
db 0xF8, 0x88 ; 0077BE: provisional 68k dc.w $f888
db 0x88, 0x8F ; file 0077C0
db 0xFB, 0xBD ; 0077C2: provisional 68k dc.w $fbbd
db 0xD1, 0xFF ; file 0077C4
db 0xFF, 0x00 ; 0077C6: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 0077C8: provisional 68k btst.l d6, (a4)+
db 0x99, 0x99 ; 0077CA: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0077CC: provisional 68k sub.l d4, (a1)+
db 0x9A, 0xFF ; file 0077CE
db 0xF8, 0x88 ; 0077D0: provisional 68k dc.w $f888
db 0x88, 0x8B ; file 0077D2
db 0xBB, 0x8D ; 0077D4: provisional 68k cmpm.l (a5)+, (a5)+
db 0xD1, 0xFF ; file 0077D6
db 0xFF, 0x00 ; 0077D8: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 0077DA: provisional 68k btst.l d6, (a4)+
db 0xC9, 0x99 ; 0077DC: provisional 68k and.l d4, (a1)+
db 0x99, 0x99 ; 0077DE: provisional 68k sub.l d4, (a1)+
db 0x9A, 0xFF ; file 0077E0
db 0xFF, 0x88 ; 0077E2: provisional 68k dc.w $ff88
db 0x88, 0xBB, 0xBB, 0x8D ; 0077E4: provisional 68k or.l ([$77e6], a3.l * 2), d4
db 0xD1, 0xFF ; file 0077E8
db 0xFF, 0x00 ; 0077EA: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 0077EC: provisional 68k btst.l d6, (a4)+
db 0xCC, 0xCC ; file 0077EE
db 0x99, 0xC9 ; 0077F0: provisional 68k suba.l a1, a4
db 0xCC, 0xFF ; file 0077F2
db 0xFF, 0xFB ; 0077F4: provisional 68k dc.w $fffb
db 0xBB, 0xBB ; file 0077F6
db 0x88, 0xDD ; 0077F8: provisional 68k divu.w (a5)+, d4
db 0xD1, 0xFF ; file 0077FA
db 0xFF, 0x00 ; 0077FC: provisional 68k dc.w $ff00
db 0x0D, 0x1A ; 0077FE: provisional 68k btst.l d6, (a2)+
db 0xAC, 0xCC ; 007800: provisional 68k dc.w $accc
db 0xCC, 0xCC ; file 007802
db 0xCC, 0xAF, 0xFF, 0xFB ; 007804: provisional 68k and.l -$5(a7), d6
db 0xBB, 0xB8, 0x88, 0xDD ; 007808: provisional 68k eor.l d5, $88dd.w
db 0xD1, 0xFF ; file 00780C
db 0xFF, 0x00 ; 00780E: provisional 68k dc.w $ff00
db 0x0C, 0x1D, 0xAA, 0xAC ; 007810: provisional 68k cmpi.b #$ac, (a5)+
db 0xAC, 0xCC ; 007814: provisional 68k dc.w $accc
db 0xCC, 0xCA ; file 007816
db 0xFB, 0xBB ; 007818: provisional 68k dc.w $fbbb
db 0xFF, 0xB8 ; 00781A: provisional 68k dc.w $ffb8
db 0x8D, 0xDD ; 00781C: provisional 68k divs.w (a5)+, d6
db 0xFF, 0xFF ; 00781E: provisional 68k dc.w $ffff
db 0x00, 0x0C, 0x1D, 0xDD ; file 007820
db 0xAA, 0xAA ; 007824: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007826: provisional 68k dc.w $aaaa
db 0xAA, 0xDF ; 007828: provisional 68k dc.w $aadf
db 0xBF, 0xFB, 0x88, 0xDD ; 00782A: provisional 68k cmpa.l $7809(pc, a0.l), a7
db 0xDD, 0xFF ; file 00782E
db 0xFF, 0x01 ; 007830: provisional 68k dc.w $ff01
db 0x0B, 0xDD ; 007832: provisional 68k bset.b d5, (a5)+
db 0xDD, 0xAA, 0xAA, 0xAA ; 007834: provisional 68k add.l d6, -$5556(a2)
db 0xAA, 0xDD ; 007838: provisional 68k dc.w $aadd
db 0xDD, 0xDD ; 00783A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00783C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFF ; file 00783E
db 0xFF, 0x01 ; 007840: provisional 68k dc.w $ff01
db 0x0B, 0x1D ; 007842: provisional 68k btst.l d5, (a5)+
db 0xDD, 0xDD ; 007844: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007846: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007848: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xAA, 0xDD, 0xDD ; 00784A: provisional 68k add.l -$2223(a2), d5
db 0xD1, 0xFF ; file 00784E
db 0xFF, 0x01 ; 007850: provisional 68k dc.w $ff01
db 0x0A, 0x1D, 0xDD, 0xDD ; 007852: provisional 68k eori.b #$dd, (a5)+
db 0xDD, 0xDD ; 007856: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007858: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xAA ; 00785A: provisional 68k dc.w $aaaa
db 0xAD, 0xDD ; 00785C: provisional 68k dc.w $addd
db 0xFF, 0xFF ; 00785E: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 007860
db 0xDD, 0xDD ; 007862: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007864: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 007866: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xAA ; 007868: provisional 68k dc.w $aaaa
db 0xDA, 0xAD, 0xFF, 0xFF ; 00786A: provisional 68k add.l -$1(a5), d5
db 0x02, 0x09, 0x1D, 0xDD ; file 00786E
db 0xDD, 0xDD ; 007872: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007874: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xAA ; 007876: provisional 68k dc.w $aaaa
db 0xAA, 0xD1 ; 007878: provisional 68k dc.w $aad1
db 0xFF, 0xFF ; 00787A: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 00787C: provisional 68k btst.l d1, d7
db 0xDD, 0xDD ; 00787E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 007880: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 007882: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xDD ; 007884: provisional 68k dc.w $aadd
db 0xFF, 0xFF ; 007886: provisional 68k dc.w $ffff
db 0x03, 0x06 ; 007888: provisional 68k btst.l d1, d6
db 0x1D, 0xDD ; file 00788A
db 0xDD, 0xDD ; 00788C: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xAA, 0xAD, 0xFF ; 00788E: provisional 68k add.l -$5201(a2), d5
db 0xFF, 0x04 ; 007892: provisional 68k dc.w $ff04
db 0x04, 0x1D, 0xDD, 0xDD ; 007894: provisional 68k subi.b #$dd, (a5)+
db 0xAD, 0xDD ; 007898: provisional 68k dc.w $addd
db 0xFF, 0xFF ; 00789A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00789C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00789E: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0078A0: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 0078A4: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 0078A8: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 0078AC
db 0x10, 0x10 ; 0078AE: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0078B0: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0078B2: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0078B4: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0078B6: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0078BA: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0078BE: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0078C0: provisional 68k neg.w d4
db 0x10, 0x14 ; 0078C2: provisional 68k move.b (a4), d0
db 0x1C, 0x68 ; file 0078C4
db 0x74, 0x7C ; 0078C6: provisional 68k moveq #$7c, d2
db 0x1C, 0x38, 0x64, 0xAC ; 0078C8: provisional 68k move.b $64ac.w, d6
db 0xAC, 0xA8 ; 0078CC: provisional 68k dc.w $aca8
db 0x50, 0x54 ; 0078CE: provisional 68k addq.w #$8, (a4)
db 0x5C, 0x40 ; 0078D0: provisional 68k addq.w #$6, d0
db 0x44, 0x48 ; file 0078D2
db 0x34, 0x60 ; 0078D4: provisional 68k movea.w -(a0), a2
db 0x78, 0x38 ; 0078D6: provisional 68k moveq #$38, d4
db 0x3C, 0x44 ; 0078D8: provisional 68k movea.w d4, a6
db 0xFF, 0xFF ; 0078DA: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 0078DC: provisional 68k btst.l d2, d3
db 0x1C, 0xC9 ; file 0078DE
db 0x99, 0xD1 ; 0078E0: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 0078E2: provisional 68k dc.w $ffff
db 0x04, 0x05, 0xCB, 0xBB ; 0078E4: provisional 68k subi.b #$bb, d5
db 0xBB, 0xBB ; file 0078E8
db 0xBB, 0x9C ; 0078EA: provisional 68k eor.l d5, (a4)+
db 0xFF, 0xFF ; 0078EC: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 0078EE: provisional 68k btst.l d1, d7
db 0xCB, 0xBB ; file 0078F0
db 0x9A, 0xAA, 0xAA, 0xA9 ; 0078F2: provisional 68k sub.l -$5557(a2), d5
db 0xBB, 0x9C ; 0078F6: provisional 68k eor.l d5, (a4)+
db 0xFF, 0xFF ; 0078F8: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 0078FA
db 0x1C, 0xBB, 0xBA, 0xAA ; 0078FC: provisional 68k move.b $78a8(pc, a3.l), (a6)
db 0xEE, 0xEE ; file 007900
db 0xAA, 0xA9 ; 007902: provisional 68k dc.w $aaa9
db 0xBB, 0xC1 ; 007904: provisional 68k cmpa.l d1, a5
db 0xFF, 0xFF ; 007906: provisional 68k dc.w $ffff
db 0x02, 0x09, 0xDB, 0xBB ; file 007908
db 0xAA, 0xEE ; 00790C: provisional 68k dc.w $aaee
db 0xEE, 0xEE ; file 00790E
db 0xEE, 0xAA ; 007910: provisional 68k lsr.l d7, d2
db 0x99, 0x9D ; 007912: provisional 68k sub.l d4, (a5)+
db 0xFF, 0xFF ; 007914: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1D, 0xBB ; 007916: provisional 68k movep.w $1dbb(a3), d0
db 0xBA, 0xAE, 0xEE, 0x99 ; 00791A: provisional 68k cmp.l -$1167(a6), d5
db 0x8A, 0xEE, 0xEA, 0xA9 ; 00791E: provisional 68k divu.w -$1557(a6), d5
db 0x99, 0xD1 ; 007922: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 007924: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1B, 0xBB ; 007926: provisional 68k movep.w $1bbb(a3), d0
db 0xBA, 0xEE, 0xE9, 0xBC ; 00792A: provisional 68k cmpa.w -$1644(a6), a5
db 0x88, 0x8E ; file 00792E
db 0xEE, 0xAD ; 007930: provisional 68k lsr.l d7, d5
db 0x99, 0xD1 ; 007932: provisional 68k suba.l (a1), a4
db 0xFF, 0xFF ; 007934: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xCB, 0xBB ; 007936: provisional 68k movep.w -$3445(a3), d0
db 0x9A, 0xEE, 0xED, 0xDF ; 00793A: provisional 68k suba.w -$1221(a6), a5
db 0x88, 0x8A ; file 00793E
db 0xEE, 0xAA ; 007940: provisional 68k lsr.l d7, d2
db 0xCC, 0xCD ; file 007942
db 0xFF, 0xFF ; 007944: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xBB, 0xBB ; 007946: provisional 68k movep.w -$4445(a3), d0
db 0x9A, 0xEE, 0xA8, 0x88 ; 00794A: provisional 68k suba.w -$5778(a6), a5
db 0x88, 0x8A ; file 00794E
db 0xEE, 0xAA ; 007950: provisional 68k lsr.l d7, d2
db 0xCC, 0xCF ; file 007952
db 0xFF, 0xFF ; 007954: provisional 68k dc.w $ffff
db 0x00, 0x0C ; file 007956
db 0x1D, 0xBB, 0xBB, 0xBA, 0xEE, 0xE8, 0x88, 0x88, 0x8A, 0xEE, 0xAA, 0xCC ; 007958: provisional 68k move.b ([$eee901e2, a3.l * 2], $8aee), -$34(a6, a2.l)
db 0xDF, 0xFF ; file 007964
db 0xFF, 0x00 ; 007966: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 007968: provisional 68k btst.l d6, (a4)+
db 0xBB, 0xBB ; file 00796A
db 0xBA, 0xAE, 0xEA, 0x88 ; 00796C: provisional 68k cmp.l -$1578(a6), d5
db 0x88, 0xAE, 0xEA, 0xAD ; 007970: provisional 68k or.l -$1553(a6), d4
db 0xCC, 0xDF ; 007974: provisional 68k mulu.w (a7)+, d6
db 0xF1, 0xFF ; 007976: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 007978: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 00797A: provisional 68k btst.l d6, (a4)+
db 0xBB, 0xBB ; file 00797C
db 0xB9, 0xAA, 0xEE, 0xEA ; 00797E: provisional 68k eor.l d4, -$1116(a2)
db 0xAA, 0xEA ; 007982: provisional 68k dc.w $aaea
db 0xAA, 0xAC ; 007984: provisional 68k dc.w $aaac
db 0xCC, 0xDF ; 007986: provisional 68k mulu.w (a7)+, d6
db 0xF1, 0xFF ; 007988: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 00798A: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 00798C: provisional 68k btst.l d6, (a4)+
db 0xBB, 0xBB ; file 00798E
db 0xBB, 0xAA, 0xAE, 0xEE ; 007990: provisional 68k eor.l d5, -$5112(a2)
db 0xEE, 0xAA ; 007994: provisional 68k lsr.l d7, d2
db 0xAA, 0xDC ; 007996: provisional 68k dc.w $aadc
db 0xCC, 0xFF ; file 007998
db 0xF1, 0xFF ; 00799A: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 00799C: provisional 68k dc.w $ff00
db 0x0D, 0x19 ; 00799E: provisional 68k btst.l d6, (a1)+
db 0x9B, 0xBB ; file 0079A0
db 0xBB, 0xB9, 0xAA, 0xAA, 0xAA, 0xAA ; 0079A2: provisional 68k eor.l d5, $aaaaaaaa.l
db 0xDD, 0xCC ; 0079A8: provisional 68k adda.l a4, a6
db 0xCD, 0xFF ; file 0079AA
db 0xF1, 0xFF ; 0079AC: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 0079AE: provisional 68k dc.w $ff00
db 0x0D, 0x1C ; 0079B0: provisional 68k btst.l d6, (a4)+
db 0x99, 0x9B ; 0079B2: provisional 68k sub.l d4, (a3)+
db 0x9B, 0x99 ; 0079B4: provisional 68k sub.l d5, (a1)+
db 0x99, 0xAA, 0xAA, 0xDC ; 0079B6: provisional 68k sub.l d4, -$5524(a2)
db 0xCC, 0xCC, 0xDF, 0xFF ; file 0079BA
db 0xF1, 0xFF ; 0079BE: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 0079C0: provisional 68k dc.w $ff00
db 0x0D, 0x1D ; 0079C2: provisional 68k btst.l d6, (a5)+
db 0xC9, 0x99 ; 0079C4: provisional 68k and.l d4, (a1)+
db 0x99, 0x99 ; 0079C6: provisional 68k sub.l d4, (a1)+
db 0x99, 0x9C ; 0079C8: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC, 0xCC, 0xCD ; file 0079CA
db 0xFF, 0xFF ; 0079CE: provisional 68k dc.w $ffff
db 0xF1, 0xFF ; 0079D0: provisional 68k dc.w $f1ff
db 0xFF, 0x00 ; 0079D2: provisional 68k dc.w $ff00
db 0x0D, 0x1D ; 0079D4: provisional 68k btst.l d6, (a5)+
db 0xCC, 0xCC ; file 0079D6
db 0xC9, 0x99 ; 0079D8: provisional 68k and.l d4, (a1)+
db 0x99, 0x9C ; 0079DA: provisional 68k sub.l d4, (a4)+
db 0xCC, 0xCC ; file 0079DC
db 0xCC, 0xDF ; 0079DE: provisional 68k mulu.w (a7)+, d6
db 0xFF, 0xFD ; 0079E0: provisional 68k dc.w $fffd
db 0xF1, 0xFF ; 0079E2: provisional 68k dc.w $f1ff
db 0xFF, 0x01 ; 0079E4: provisional 68k dc.w $ff01
db 0x0B, 0xCC, 0xCC, 0xCC ; 0079E6: provisional 68k movep.l d5, -$3334(a4)
db 0xCC, 0xCC, 0xCC, 0xCC ; file 0079EA
db 0xCC, 0xDD ; 0079EE: provisional 68k mulu.w (a5)+, d6
db 0xFF, 0xDD ; 0079F0: provisional 68k dc.w $ffdd
db 0xDD, 0xFF ; file 0079F2
db 0xFF, 0x01 ; 0079F4: provisional 68k dc.w $ff01
db 0x0B, 0xDD ; 0079F6: provisional 68k bset.b d5, (a5)+
db 0xDC, 0xCC ; 0079F8: provisional 68k adda.w a4, a6
db 0xCC, 0xCC, 0xCC, 0xCC, 0xDD, 0xFD ; file 0079FA
db 0xDD, 0xDD ; 007A00: provisional 68k adda.l (a5)+, a6
db 0xDF, 0xFF ; file 007A02
db 0xFF, 0x01 ; 007A04: provisional 68k dc.w $ff01
db 0x0B, 0x1F ; 007A06: provisional 68k btst.l d5, (a7)+
db 0xFF, 0xDD ; 007A08: provisional 68k dc.w $ffdd
db 0xCD, 0xCD ; file 007A0A
db 0xDD, 0xDD ; 007A0C: provisional 68k adda.l (a5)+, a6
db 0xFD, 0xDD ; 007A0E: provisional 68k dc.w $fddd
db 0xDD, 0xDD ; 007A10: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFF ; file 007A12
db 0xFF, 0x01 ; 007A14: provisional 68k dc.w $ff01
db 0x0B, 0x1D ; 007A16: provisional 68k btst.l d5, (a5)+
db 0xFF, 0xFF ; 007A18: provisional 68k dc.w $ffff
db 0xFF, 0xFD ; 007A1A: provisional 68k dc.w $fffd
db 0xFF, 0xFD ; 007A1C: provisional 68k dc.w $fffd
db 0xD9, 0x9C ; 007A1E: provisional 68k add.l d4, (a4)+
db 0xCD, 0xDD ; 007A20: provisional 68k muls.w (a5)+, d6
db 0xD1, 0xFF ; file 007A22
db 0xFF, 0x02 ; 007A24: provisional 68k dc.w $ff02
db 0x09, 0xFF ; file 007A26
db 0xFF, 0xFF ; 007A28: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007A2A: provisional 68k dc.w $ffff
db 0xDD, 0xC9 ; 007A2C: provisional 68k adda.l a1, a6
db 0x9C, 0xDD ; 007A2E: provisional 68k suba.w (a5)+, a6
db 0xDD, 0xFF ; file 007A30
db 0xFF, 0x02 ; 007A32: provisional 68k dc.w $ff02
db 0x09, 0x1F ; 007A34: provisional 68k btst.l d4, (a7)+
db 0xFF, 0xFF ; 007A36: provisional 68k dc.w $ffff
db 0xFF, 0xDD ; 007A38: provisional 68k dc.w $ffdd
db 0xDD, 0xC9 ; 007A3A: provisional 68k adda.l a1, a6
db 0xCD, 0xCC, 0xD1, 0xFF ; file 007A3C
db 0xFF, 0x03 ; 007A40: provisional 68k dc.w $ff03
db 0x07, 0xFF ; file 007A42
db 0xFF, 0xFD ; 007A44: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 007A46: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xCC ; 007A48: provisional 68k adda.l a4, a6
db 0xCD, 0xFF ; file 007A4A
db 0xFF, 0x03 ; 007A4C: provisional 68k dc.w $ff03
db 0x07, 0x1D ; 007A4E: provisional 68k btst.l d3, (a5)+
db 0xFD, 0xDD ; 007A50: provisional 68k dc.w $fddd
db 0xDD, 0xDD ; 007A52: provisional 68k adda.l (a5)+, a6
db 0xCC, 0xCD, 0xD1, 0xFF ; file 007A54
db 0xFF, 0x04 ; 007A58: provisional 68k dc.w $ff04
db 0x05, 0x1F ; 007A5A: provisional 68k btst.l d2, (a7)+
db 0xFD, 0xDD ; 007A5C: provisional 68k dc.w $fddd
db 0xDC, 0xCF ; 007A5E: provisional 68k adda.w a7, a6
db 0xF1, 0xFF ; 007A60: provisional 68k dc.w $f1ff
db 0xFF, 0xFF ; 007A62: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007A64: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 007A66: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 007A68: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 007A6C: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 007A70: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 007A74
db 0x10, 0x10 ; 007A76: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 007A78: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 007A7A: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 007A7C: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007A7E: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 007A82: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 007A86: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 007A88: provisional 68k neg.w d4
db 0x4C, 0x50 ; file 007A8A
db 0x54, 0x18 ; 007A8C: provisional 68k addq.b #$2, (a0)+
db 0x1C, 0x20 ; 007A8E: provisional 68k move.b -(a0), d6
db 0x8C, 0x90 ; 007A90: provisional 68k or.l (a0), d6
db 0x90, 0xD8 ; 007A92: provisional 68k suba.w (a0)+, a0
db 0xDC, 0xD0 ; 007A94: provisional 68k adda.w (a0), a6
db 0x14, 0x34, 0x60, 0x38 ; 007A96: provisional 68k move.b $38(a4, d6.w), d2
db 0x60, 0x78 ; 007A9A: provisional 68k bra.b $7b14
db 0x34, 0x38, 0x44, 0xA8 ; 007A9C: provisional 68k move.w $44a8.w, d2
db 0xA8, 0xA4 ; 007AA0: provisional 68k dc.w $a8a4
db 0xFF, 0xFF ; 007AA2: provisional 68k dc.w $ffff
db 0x05, 0x04 ; 007AA4: provisional 68k btst.l d2, d4
db 0xE8, 0xAA ; 007AA6: provisional 68k lsr.l d4, d2
db 0xAA, 0xA8 ; 007AA8: provisional 68k dc.w $aaa8
db 0xE1, 0xFF ; file 007AAA
db 0xFF, 0x04 ; 007AAC: provisional 68k dc.w $ff04
db 0x06, 0x8F, 0xBB, 0xBB, 0xBB, 0xFF ; file 007AAE
db 0xF8, 0x81 ; 007AB4: provisional 68k dc.w $f881
db 0xFF, 0xFF ; 007AB6: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 007AB8: provisional 68k btst.l d1, d7
db 0x8F, 0xBB, 0xBB, 0xBB, 0xBB, 0xBF ; file 007ABA
db 0xFF, 0xA8 ; 007AC0: provisional 68k dc.w $ffa8
db 0xFF, 0xFF ; 007AC2: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 007AC4
db 0x18, 0xBB, 0xBA, 0xAA ; 007AC6: provisional 68k move.b $7a72(pc, a3.l), (a4)
db 0xAB, 0xBB ; 007ACA: provisional 68k dc.w $abbb
db 0xBF, 0xFF ; file 007ACC
db 0xFA, 0x81 ; 007ACE: provisional 68k dc.w $fa81
db 0xFF, 0xFF ; 007AD0: provisional 68k dc.w $ffff
db 0x02, 0x09, 0x8B, 0xBD, 0xCC, 0xCC ; file 007AD2
db 0xCC, 0xDF ; 007AD8: provisional 68k mulu.w (a7)+, d6
db 0xBF, 0xFF ; file 007ADA
db 0xFA, 0xA8 ; 007ADC: provisional 68k dc.w $faa8
db 0xFF, 0xFF ; 007ADE: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x18, 0xFF ; 007AE0: provisional 68k movep.w $18ff(a3), d0
db 0xCC, 0xCC ; file 007AE4
db 0xDC, 0xCC ; 007AE6: provisional 68k adda.w a4, a6
db 0xCC, 0xFF ; file 007AE8
db 0xFF, 0xAA ; 007AEA: provisional 68k dc.w $ffaa
db 0xA8, 0x81 ; 007AEC: provisional 68k dc.w $a881
db 0xFF, 0xFF ; 007AEE: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1A, 0xFC ; 007AF0: provisional 68k movep.w $1afc(a3), d0
db 0xCC, 0xDD ; 007AF4: provisional 68k mulu.w (a5)+, d6
db 0xDD, 0xDD ; 007AF6: provisional 68k adda.l (a5)+, a6
db 0xCC, 0xDF ; 007AF8: provisional 68k mulu.w (a7)+, d6
db 0xFF, 0xAA ; 007AFA: provisional 68k dc.w $ffaa
db 0xA8, 0x81 ; 007AFC: provisional 68k dc.w $a881
db 0xFF, 0xFF ; 007AFE: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x8F, 0xDC ; 007B00: provisional 68k movep.w -$7024(a3), d0
db 0xCD, 0xDD ; 007B04: provisional 68k muls.w (a5)+, d6
db 0xAD, 0xDD ; 007B06: provisional 68k dc.w $addd
db 0xDC, 0xCA ; 007B08: provisional 68k adda.w a2, a6
db 0xFA, 0xAA ; 007B0A: provisional 68k dc.w $faaa
db 0x88, 0x88 ; file 007B0C
db 0xFF, 0xFF ; 007B0E: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xAF, 0xCC ; 007B10: provisional 68k movep.w -$5034(a3), d0
db 0xCD, 0xC8 ; file 007B14
db 0x88, 0x9D ; 007B16: provisional 68k or.l (a5)+, d4
db 0xDD, 0xCD ; 007B18: provisional 68k adda.l a5, a6
db 0xAA, 0xAA ; 007B1A: provisional 68k dc.w $aaaa
db 0x88, 0x8E ; file 007B1C
db 0xFF, 0xFF ; 007B1E: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0xAD, 0xCC ; 007B20: provisional 68k movep.w -$5234(a4), d0
db 0xDC, 0x9E ; 007B24: provisional 68k add.l (a6)+, d6
db 0xE9, 0x99 ; 007B26: provisional 68k rol.l #$4, d1
db 0xDD, 0xCC ; 007B28: provisional 68k adda.l a4, a6
db 0xAA, 0xA8 ; 007B2A: provisional 68k dc.w $aaa8
db 0x88, 0x8E, 0xE1, 0xFF ; file 007B2C
db 0xFF, 0x00 ; 007B30: provisional 68k dc.w $ff00
db 0x0D, 0x1E ; 007B32: provisional 68k btst.l d6, (a6)+
db 0xAD, 0xCC ; 007B34: provisional 68k dc.w $adcc
db 0xDC, 0x99 ; 007B36: provisional 68k add.l (a1)+, d6
db 0x99, 0x99 ; 007B38: provisional 68k sub.l d4, (a1)+
db 0xDD, 0xCC ; 007B3A: provisional 68k adda.l a4, a6
db 0xA8, 0x88 ; 007B3C: provisional 68k dc.w $a888
db 0x88, 0x8E, 0xE1, 0xFF ; file 007B3E
db 0xFF, 0x00 ; 007B42: provisional 68k dc.w $ff00
db 0x0D, 0x1E ; 007B44: provisional 68k btst.l d6, (a6)+
db 0xAC, 0xCC ; 007B46: provisional 68k dc.w $accc
db 0xDC, 0x99 ; 007B48: provisional 68k add.l (a1)+, d6
db 0x99, 0x99 ; 007B4A: provisional 68k sub.l d4, (a1)+
db 0xDC, 0xCC ; 007B4C: provisional 68k adda.w a4, a6
db 0x8A, 0x88 ; file 007B4E
db 0x88, 0xEE, 0xE1, 0xFF ; 007B50: provisional 68k divu.w -$1e01(a6), d4
db 0xFF, 0x00 ; 007B54: provisional 68k dc.w $ff00
db 0x0D, 0x18 ; 007B56: provisional 68k btst.l d6, (a0)+
db 0xAC, 0xCC ; 007B58: provisional 68k dc.w $accc
db 0xDC, 0x99 ; 007B5A: provisional 68k add.l (a1)+, d6
db 0x99, 0x9C ; 007B5C: provisional 68k sub.l d4, (a4)+
db 0xDC, 0xC8 ; 007B5E: provisional 68k adda.w a0, a6
db 0x88, 0x88 ; file 007B60
db 0x88, 0xEE, 0xE1, 0xFF ; 007B62: provisional 68k divu.w -$1e01(a6), d4
db 0xFF, 0x00 ; 007B66: provisional 68k dc.w $ff00
db 0x0D, 0x18 ; 007B68: provisional 68k btst.l d6, (a0)+
db 0x88, 0xCC ; file 007B6A
db 0xDC, 0xC9 ; 007B6C: provisional 68k adda.w a1, a6
db 0x99, 0xCC ; 007B6E: provisional 68k suba.l a4, a4
db 0xCC, 0xC8, 0x88, 0x88 ; file 007B70
db 0x8E, 0xEE, 0xE1, 0xFF ; 007B74: provisional 68k divu.w -$1e01(a6), d7
db 0xFF, 0x00 ; 007B78: provisional 68k dc.w $ff00
db 0x0D, 0x1E ; 007B7A: provisional 68k btst.l d6, (a6)+
db 0x88, 0xCC ; file 007B7C
db 0xCD, 0xDC ; 007B7E: provisional 68k muls.w (a4)+, d6
db 0xCC, 0xCC, 0xCC, 0xC8, 0x88, 0x88 ; file 007B80
db 0x8E, 0xEE, 0xE1, 0xFF ; 007B86: provisional 68k divu.w -$1e01(a6), d7
db 0xFF, 0x00 ; 007B8A: provisional 68k dc.w $ff00
db 0x0D, 0x1E ; 007B8C: provisional 68k btst.l d6, (a6)+
db 0x88, 0xCC, 0xCC, 0xCC ; file 007B8E
db 0xDC, 0xDC ; 007B92: provisional 68k adda.w (a4)+, a6
db 0xCC, 0x88, 0x88, 0x88, 0xEE, 0xEE, 0xE1, 0xFF ; file 007B94
db 0xFF, 0x01 ; 007B9C: provisional 68k dc.w $ff01
db 0x0C, 0x88, 0x8C, 0xCC, 0xCC, 0xCC, 0xCC, 0xC8, 0x88, 0x88 ; file 007B9E
db 0x8E, 0xEE, 0xEE, 0xE1 ; 007BA8: provisional 68k divu.w -$111f(a6), d7
db 0xFF, 0xFF ; 007BAC: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0x8E, 0xEE ; 007BAE: provisional 68k movep.w -$7112(a4), d0
db 0xCC, 0xCC, 0xCC, 0xCE, 0x88, 0x88 ; file 007BB2
db 0x8E, 0xEE, 0xEE, 0xEE ; 007BB8: provisional 68k divu.w -$1112(a6), d7
db 0xE1, 0xFF ; file 007BBC
db 0xFF, 0x01 ; 007BBE: provisional 68k dc.w $ff01
db 0x0B, 0x1E ; 007BC0: provisional 68k btst.l d5, (a6)+
db 0xEE, 0xEE, 0xEC, 0xCE ; file 007BC2
db 0xE8, 0x88 ; 007BC6: provisional 68k lsr.l #$4, d0
db 0x8E, 0xEE, 0xEE, 0xEE ; 007BC8: provisional 68k divu.w -$1112(a6), d7
db 0x8E, 0xFF ; file 007BCC
db 0xFF, 0x02 ; 007BCE: provisional 68k dc.w $ff02
db 0x0A, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0x88, 0x88 ; file 007BD0
db 0xE8, 0x88 ; 007BDA: provisional 68k lsr.l #$4, d0
db 0xFF, 0xFF ; 007BDC: provisional 68k dc.w $ffff
db 0x02, 0x0A, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xE8, 0xD8, 0x88, 0x88, 0x81, 0xFF ; file 007BDE
db 0xFF, 0x02 ; 007BEC: provisional 68k dc.w $ff02
db 0x09, 0x1E ; 007BEE: provisional 68k btst.l d4, (a6)+
db 0xEE, 0xEE, 0xEE, 0xEE ; file 007BF0
db 0xE8, 0x8D ; 007BF4: provisional 68k lsr.l #$4, d5
db 0x88, 0x88, 0x88, 0xFF ; file 007BF6
db 0xFF, 0x03 ; 007BFA: provisional 68k dc.w $ff03
db 0x08, 0xEE, 0xEE, 0xEE, 0xEE, 0xE8, 0x88, 0x88 ; file 007BFC
db 0x88, 0x81 ; 007C04: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 007C06: provisional 68k dc.w $ffff
db 0x03, 0x07 ; 007C08: provisional 68k btst.l d1, d7
db 0x1E, 0xEE, 0xEE, 0xEE ; 007C0A: provisional 68k move.b -$1112(a6), (a7)+
db 0x88, 0x88, 0x88, 0x88 ; file 007C0E
db 0xFF, 0xFF ; 007C12: provisional 68k dc.w $ffff
db 0x04, 0x05, 0xEE, 0xEE ; 007C14: provisional 68k subi.b #$ee, d5
db 0x88, 0x88, 0x88, 0x88 ; file 007C18
db 0xFF, 0xFF ; 007C1C: provisional 68k dc.w $ffff
db 0x05, 0x03 ; 007C1E: provisional 68k btst.l d2, d3
db 0xEE, 0xE8 ; file 007C20
db 0x88, 0xEC, 0xFF, 0xFF ; 007C22: provisional 68k divu.w -$1(a4), d4
db 0xFF, 0xFF ; 007C26: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007C28: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 007C2A: provisional 68k ori.b #$0, d0
db 0x00, 0x1C, 0x00, 0x1C ; 007C2E: provisional 68k ori.b #$1c, (a4)+
db 0x00, 0x10, 0x08, 0x08 ; 007C32: provisional 68k ori.b #$8, (a0)
db 0x08, 0x10 ; file 007C36
db 0x10, 0x10 ; 007C38: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 007C3A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 007C3C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 007C3E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007C40: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 007C44: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 007C48: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 007C4A: provisional 68k neg.w d4
db 0x0C, 0x10, 0x18, 0xA4 ; 007C4C: provisional 68k cmpi.b #$a4, (a0)
db 0xA4, 0xA0 ; 007C50: provisional 68k dc.w $a4a0
db 0x4C, 0x50 ; 007C52: provisional 68k dc.w $4c50
db 0x60, 0x00, 0x28, 0x48 ; 007C54: provisional 68k bra.w $a49e
db 0xD8, 0xD8 ; 007C58: provisional 68k adda.w (a0)+, a4
db 0xD0, 0x78, 0x78, 0x78 ; 007C5A: provisional 68k add.w $7878.w, d0
db 0x38, 0x3C, 0x44, 0x08 ; 007C5E: provisional 68k move.w #$4408, d4
db 0x2C, 0x5C ; 007C62: provisional 68k movea.l (a4)+, a6
db 0xFF, 0xFF ; 007C64: provisional 68k dc.w $ffff
db 0x04, 0x05, 0x1E, 0xD9 ; 007C66: provisional 68k subi.b #$d9, d5
db 0xCC, 0xCC ; file 007C6A
db 0x9D, 0xAE, 0xFF, 0xFF ; 007C6C: provisional 68k sub.l d6, -$1(a6)
db 0x03, 0x07 ; 007C70: provisional 68k btst.l d1, d7
db 0x1E, 0xDC ; 007C72: provisional 68k move.b (a4)+, (a7)+
db 0xCC, 0xCC, 0xCC, 0xCC ; file 007C74
db 0x99, 0xA1 ; 007C78: provisional 68k sub.l d4, -(a1)
db 0xFF, 0xFF ; 007C7A: provisional 68k dc.w $ffff
db 0x03, 0x08, 0xAC, 0xCC ; 007C7C: provisional 68k movep.w -$5334(a0), d1
db 0xCC, 0xCC, 0xCC, 0xCC ; file 007C80
db 0x99, 0x9D ; 007C84: provisional 68k sub.l d4, (a5)+
db 0xA1, 0xFF ; 007C86: provisional 68k dc.w $a1ff
db 0xFF, 0x02 ; 007C88: provisional 68k dc.w $ff02
db 0x09, 0x1D ; 007C8A: provisional 68k btst.l d4, (a5)+
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 007C8C
db 0x99, 0x99 ; 007C92: provisional 68k sub.l d4, (a1)+
db 0xDE, 0xFF ; file 007C94
db 0xFF, 0x02 ; 007C96: provisional 68k dc.w $ff02
db 0x0A, 0xAC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; 007C98: provisional 68k eori.l #$cccccccc, -$3334(a4)
db 0x99, 0x99 ; 007CA0: provisional 68k sub.l d4, (a1)+
db 0xDD, 0xA1 ; 007CA2: provisional 68k add.l d6, -(a1)
db 0xFF, 0xFF ; 007CA4: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1A, 0xCC ; 007CA6: provisional 68k movep.w $1acc(a3), d0
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xC9 ; file 007CAA
db 0x99, 0x99 ; 007CB0: provisional 68k sub.l d4, (a1)+
db 0xDD, 0xA1 ; 007CB2: provisional 68k add.l d6, -(a1)
db 0xFF, 0xFF ; 007CB4: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x19, 0xCC ; 007CB6: provisional 68k movep.w $19cc(a3), d0
db 0xCC, 0xCC, 0xCC, 0xCC ; file 007CBA
db 0xCC, 0x99 ; 007CBE: provisional 68k and.l (a1)+, d6
db 0x99, 0x9D ; 007CC0: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xAE, 0xFF, 0xFF ; 007CC2: provisional 68k add.l d6, -$1(a6)
db 0x01, 0x0B, 0xA9, 0x9C ; 007CC6: provisional 68k movep.w -$5664(a3), d0
db 0x9E, 0xFF, 0xED, 0xCC ; file 007CCA
db 0xC9, 0x99 ; 007CCE: provisional 68k and.l d4, (a1)+
db 0x99, 0x9D ; 007CD0: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xAE, 0xFF, 0xFF ; 007CD2: provisional 68k add.l d6, -$1(a6)
db 0x01, 0x0C, 0xD9, 0x9E ; 007CD6: provisional 68k movep.w -$2662(a4), d0
db 0xFF, 0xFA ; 007CDA: provisional 68k dc.w $fffa
db 0xAF, 0xFA ; 007CDC: provisional 68k dc.w $affa
db 0x99, 0x99 ; 007CDE: provisional 68k sub.l d4, (a1)+
db 0x99, 0xDD ; 007CE0: provisional 68k suba.l (a5)+, a4
db 0xDD, 0xAE, 0xE1, 0xFF ; 007CE2: provisional 68k add.l d6, -$1e01(a6)
db 0xFF, 0x01 ; 007CE6: provisional 68k dc.w $ff01
db 0x0C, 0x99, 0xAF, 0xFF, 0xA9, 0x9A ; 007CE8: provisional 68k cmpi.l #$afffa99a, (a1)+
db 0xFF, 0xE9 ; 007CEE: provisional 68k dc.w $ffe9
db 0x99, 0x9D ; 007CF0: provisional 68k sub.l d4, (a5)+
db 0xDD, 0xDA ; 007CF2: provisional 68k adda.l (a2)+, a6
db 0xAE, 0xE1 ; 007CF4: provisional 68k dc.w $aee1
db 0xFF, 0xFF ; 007CF6: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 007CF8
db 0x1E, 0x9D ; 007CFA: provisional 68k move.b (a5)+, (a7)
db 0xFF, 0xFF ; 007CFC: provisional 68k dc.w $ffff
db 0xAD, 0x9A ; 007CFE: provisional 68k dc.w $ad9a
db 0xFF, 0xFA ; 007D00: provisional 68k dc.w $fffa
db 0x9D, 0xDD ; 007D02: provisional 68k suba.l (a5)+, a6
db 0xDD, 0xDA ; 007D04: provisional 68k adda.l (a2)+, a6
db 0xEE, 0xE1 ; file 007D06
db 0xFF, 0xFF ; 007D08: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 007D0A
db 0x1E, 0xDE ; 007D0C: provisional 68k move.b (a6)+, (a7)+
db 0xFF, 0xFB ; 007D0E: provisional 68k dc.w $fffb
db 0x8E, 0x8B ; file 007D10
db 0xFF, 0xFF ; 007D12: provisional 68k dc.w $ffff
db 0xDD, 0xDD ; 007D14: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xAA, 0xEE, 0xE1 ; 007D16: provisional 68k add.l d6, -$111f(a2)
db 0xFF, 0xFF ; 007D1A: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 007D1C
db 0x1A, 0xDF ; 007D1E: provisional 68k move.b (a7)+, (a5)+
db 0xFF, 0xB8 ; 007D20: provisional 68k dc.w $ffb8
db 0x88, 0x88, 0xBF, 0xFF ; file 007D22
db 0xAD, 0xDD ; 007D26: provisional 68k dc.w $addd
db 0xDA, 0xAE, 0xEE, 0xE1 ; 007D28: provisional 68k add.l -$111f(a6), d5
db 0xFF, 0xFF ; 007D2C: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 007D2E
db 0x1E, 0xDF ; 007D30: provisional 68k move.b (a7)+, (a7)+
db 0xFF, 0xB8 ; 007D32: provisional 68k dc.w $ffb8
db 0x88, 0x88, 0x8F, 0xFF, 0xED, 0xDD ; file 007D34
db 0xAA, 0xAE ; 007D3A: provisional 68k dc.w $aaae
db 0xEE, 0xE1 ; file 007D3C
db 0xFF, 0xFF ; 007D3E: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 007D40
db 0x1E, 0xDB ; 007D42: provisional 68k move.b (a3)+, (a7)+
db 0xFB, 0xB8 ; 007D44: provisional 68k dc.w $fbb8
db 0x88, 0x88, 0x8F, 0xFF ; file 007D46
db 0xFA, 0xDA ; 007D4A: provisional 68k dc.w $fada
db 0xAA, 0xEE ; 007D4C: provisional 68k dc.w $aaee
db 0xEE, 0xE1 ; file 007D4E
db 0xFF, 0xFF ; 007D50: provisional 68k dc.w $ffff
db 0x00, 0x0D ; file 007D52
db 0x1E, 0xAF, 0xBB, 0xB8 ; 007D54: provisional 68k move.b -$4448(a7), (a7)
db 0x88, 0x88, 0x8F, 0xFF ; file 007D58
db 0xFA, 0xAA ; 007D5C: provisional 68k dc.w $faaa
db 0xAA, 0xEE ; 007D5E: provisional 68k dc.w $aaee
db 0xEE, 0xE1 ; file 007D60
db 0xFF, 0xFF ; 007D62: provisional 68k dc.w $ffff
db 0x01, 0x0C, 0xEE, 0xFB ; 007D64: provisional 68k movep.w -$1105(a4), d0
db 0xBB, 0x88 ; 007D68: provisional 68k cmpm.l (a0)+, (a5)+
db 0x88, 0x8F ; file 007D6A
db 0xFF, 0xFA ; 007D6C: provisional 68k dc.w $fffa
db 0xAA, 0xEE ; 007D6E: provisional 68k dc.w $aaee
db 0xEE, 0xEE, 0xE1, 0xFF ; file 007D70
db 0xFF, 0x01 ; 007D74: provisional 68k dc.w $ff01
db 0x0C, 0xEE, 0xBB, 0xBB ; file 007D76
db 0xB8, 0x8B ; 007D7A: provisional 68k cmp.l a3, d4
db 0xBF, 0xFF, 0xEA, 0xEE, 0xEE, 0xEE, 0xEE, 0xE1 ; file 007D7C
db 0xFF, 0xFF ; 007D84: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0x1E, 0x8B ; 007D86: provisional 68k movep.w $1e8b(a3), d0
db 0xBB, 0xBB, 0xBB, 0xBF, 0xEF, 0xEE, 0xEE, 0xEE ; file 007D8A
db 0xEE, 0xAE ; 007D92: provisional 68k lsr.l d7, d6
db 0xFF, 0xFF ; 007D94: provisional 68k dc.w $ffff
db 0x02, 0x0A ; file 007D96
db 0xE8, 0xBB ; 007D98: provisional 68k ror.l d4, d3
db 0xBB, 0xBB, 0xBF, 0xFE ; file 007D9A
db 0xAA, 0xAA ; 007D9E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007DA0: provisional 68k dc.w $aaaa
db 0xAE, 0xFF ; 007DA2: provisional 68k dc.w $aeff
db 0xFF, 0x02 ; 007DA4: provisional 68k dc.w $ff02
db 0x0A, 0xEE, 0x8B, 0xBB ; file 007DA6
db 0xBB, 0xB8, 0xEE, 0xAA ; 007DAA: provisional 68k eor.l d5, $eeaa.w
db 0xAD, 0xAA ; 007DAE: provisional 68k dc.w $adaa
db 0xAA, 0xE1 ; 007DB0: provisional 68k dc.w $aae1
db 0xFF, 0xFF ; 007DB2: provisional 68k dc.w $ffff
db 0x02, 0x09 ; file 007DB4
db 0x1E, 0xEE, 0x88, 0x88 ; 007DB6: provisional 68k move.b -$7778(a6), (a7)+
db 0x8E, 0xAA, 0xAA, 0xAA ; 007DBA: provisional 68k or.l -$5556(a2), d7
db 0xAA, 0xAE ; 007DBE: provisional 68k dc.w $aaae
db 0xFF, 0xFF ; 007DC0: provisional 68k dc.w $ffff
db 0x03, 0x08, 0xEE, 0xEE ; 007DC2: provisional 68k movep.w -$1112(a0), d1
db 0xEE, 0xEE ; file 007DC6
db 0xEA, 0xAA ; 007DC8: provisional 68k lsr.l d5, d2
db 0xAA, 0xAA ; 007DCA: provisional 68k dc.w $aaaa
db 0xE1, 0xFF ; file 007DCC
db 0xFF, 0x03 ; 007DCE: provisional 68k dc.w $ff03
db 0x07, 0x1E ; 007DD0: provisional 68k btst.l d3, (a6)+
db 0xEE, 0xEE ; file 007DD2
db 0xEA, 0xAA ; 007DD4: provisional 68k lsr.l d5, d2
db 0xAA, 0xAA ; 007DD6: provisional 68k dc.w $aaaa
db 0xAE, 0xFF ; 007DD8: provisional 68k dc.w $aeff
db 0xFF, 0x04 ; 007DDA: provisional 68k dc.w $ff04
db 0x05, 0xEE, 0xEA, 0xEA ; 007DDC: provisional 68k bset.b d2, -$1516(a6)
db 0xAA, 0xAA ; 007DE0: provisional 68k dc.w $aaaa
db 0xAE, 0xFF ; 007DE2: provisional 68k dc.w $aeff
db 0xFF, 0x05 ; 007DE4: provisional 68k dc.w $ff05
db 0x03, 0x1E ; 007DE6: provisional 68k btst.l d1, (a6)+
db 0xEE, 0xEE, 0xEE, 0xFF ; file 007DE8
db 0xFF, 0xFF ; 007DEC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 007DEE: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 007DF0: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 007DF2: provisional 68k ori.b #$0, d7
db 0x00, 0x34, 0x00, 0x30, 0x00, 0x00 ; 007DF6: provisional 68k ori.b #$30, (a4, d0.w)
db 0x00, 0x58, 0x00, 0x00 ; 007DFC: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x1A ; 007E00: provisional 68k ori.b #$1a, d0
db 0x00, 0x0E ; file 007E04
db 0x00, 0x00, 0x00, 0x01 ; 007E06: provisional 68k ori.b #$1, d0
db 0x00, 0x01, 0x00, 0x0A ; 007E0A: provisional 68k ori.b #$a, d1
db 0x00, 0x00, 0x00, 0x00 ; 007E0E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 007E12: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x02 ; 007E16: provisional 68k ori.b #$2, d0
db 0x00, 0x00, 0x00, 0x00 ; 007E1A: provisional 68k ori.b #$0, d0
db 0x00, 0x34, 0x00, 0x30, 0x00, 0x10 ; 007E1E: provisional 68k ori.b #$30, $10(a4, d0.w)
db 0x08, 0x08, 0x08, 0x10 ; file 007E24
db 0x10, 0x10 ; 007E28: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 007E2A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 007E2C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 007E2E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 007E30: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 007E34: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 007E38: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 007E3A: provisional 68k neg.w d4
db 0x28, 0x18 ; 007E3C: provisional 68k move.l (a0)+, d4
db 0x0C, 0x70, 0x70, 0x70, 0x7C, 0x4C ; 007E3E: provisional 68k cmpi.w #$7070, $4c(a0, d7.l)
db 0x34, 0xC8 ; 007E44: provisional 68k move.w a0, (a2)+
db 0xB0, 0x98 ; 007E46: provisional 68k cmp.l (a0)+, d0
db 0x64, 0x3C ; 007E48: provisional 68k bcc.b $7e86
db 0x2C, 0x5C ; 007E4A: provisional 68k movea.l (a4)+, a6
db 0x4C, 0x48 ; file 007E4C
db 0x94, 0x7C, 0x68, 0x64 ; 007E4E: provisional 68k sub.w #$6864, d2
db 0x44, 0x34, 0x0C, 0x01 ; 007E52: provisional 68k neg.b $1(a4, d0.l)
db 0x1C, 0xC1 ; 007E56: provisional 68k move.b d1, (a6)+
db 0xFF, 0xFF ; 007E58: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xCC, 0xCC ; 007E5A: provisional 68k cmpi.b #$cc, d1
db 0xFF, 0xFF ; 007E5E: provisional 68k dc.w $ffff
db 0x0C, 0x01, 0xCC, 0xCC ; 007E60: provisional 68k cmpi.b #$cc, d1
db 0xFF, 0xFF ; 007E64: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 007E66: provisional 68k btst.l d5, d3
db 0x1C, 0xCA ; file 007E68
db 0xCC, 0xC1 ; 007E6A: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 007E6C: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 007E6E: provisional 68k btst.l d5, d3
db 0x1C, 0xCA ; file 007E70
db 0xCC, 0xC1 ; 007E72: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 007E74: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 007E76: provisional 68k btst.l d5, d3
db 0xCC, 0xAA, 0xCA, 0xCC ; 007E78: provisional 68k and.l -$3534(a2), d6
db 0xFF, 0xFF ; 007E7C: provisional 68k dc.w $ffff
db 0x0B, 0x03 ; 007E7E: provisional 68k btst.l d5, d3
db 0xCC, 0xAA, 0xAA, 0xCC ; 007E80: provisional 68k and.l -$5534(a2), d6
db 0xFF, 0xFF ; 007E84: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0x1C, 0xCF ; 007E86: provisional 68k eori.b #$cf, d5
db 0xFA, 0xAA ; 007E8A: provisional 68k dc.w $faaa
db 0xAC, 0xC1 ; 007E8C: provisional 68k dc.w $acc1
db 0xFF, 0xFF ; 007E8E: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0x1C, 0xFF ; 007E90: provisional 68k eori.b #$ff, d5
db 0xCA, 0xAA, 0xAC, 0xC1 ; 007E94: provisional 68k and.l -$533f(a2), d5
db 0xFF, 0xFF ; 007E98: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0xCC, 0xFF ; 007E9A: provisional 68k eori.b #$ff, d5
db 0xCA, 0xAA, 0xAC, 0xCC ; 007E9E: provisional 68k and.l -$5334(a2), d5
db 0xFF, 0xFF ; 007EA2: provisional 68k dc.w $ffff
db 0x0A, 0x05, 0xCA, 0xAC ; 007EA4: provisional 68k eori.b #$ac, d5
db 0xAE, 0xEA ; 007EA8: provisional 68k dc.w $aeea
db 0xFA, 0xAC ; 007EAA: provisional 68k dc.w $faac
db 0xFF, 0xFF ; 007EAC: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 007EAE: provisional 68k btst.l d4, d7
db 0x1C, 0xCA ; file 007EB0
db 0xAE, 0xBB ; 007EB2: provisional 68k dc.w $aebb
db 0xBB, 0xEA, 0xAC, 0xC1 ; 007EB4: provisional 68k cmpa.l -$533f(a2), a5
db 0xFF, 0xFF ; 007EB8: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 007EBA: provisional 68k btst.l d4, d7
db 0xCC, 0xAE, 0xEB, 0xBE ; 007EBC: provisional 68k and.l -$1442(a6), d6
db 0xEB, 0xBE ; 007EC0: provisional 68k rol.l d5, d6
db 0xEA, 0xC1 ; file 007EC2
db 0xFF, 0xFF ; 007EC4: provisional 68k dc.w $ffff
db 0x09, 0x07 ; 007EC6: provisional 68k btst.l d4, d7
db 0xCC, 0xAB, 0xBE, 0x8A ; 007EC8: provisional 68k and.l -$4176(a3), d6
db 0xC8, 0xEE, 0xEC, 0xCC ; 007ECC: provisional 68k mulu.w -$1334(a6), d4
db 0xFF, 0xFF ; 007ED0: provisional 68k dc.w $ffff
db 0x08, 0x08, 0x1C, 0xCA ; file 007ED2
db 0xAE, 0xEC ; 007ED6: provisional 68k dc.w $aeec
db 0x88, 0x88 ; file 007ED8
db 0xCE, 0xED, 0xAC, 0xFF ; 007EDA: provisional 68k mulu.w -$5301(a5), d7
db 0xFF, 0x08 ; 007EDE: provisional 68k dc.w $ff08
db 0x09, 0x1C ; 007EE0: provisional 68k btst.l d4, (a4)+
db 0xCA, 0xD9 ; 007EE2: provisional 68k mulu.w (a1)+, d5
db 0x9C, 0x88 ; 007EE4: provisional 68k sub.l a0, d6
db 0x88, 0xC9 ; file 007EE6
db 0x9D, 0xCC ; 007EE8: provisional 68k suba.l a4, a6
db 0xC1, 0xFF ; file 007EEA
db 0xFF, 0x08 ; 007EEC: provisional 68k dc.w $ff08
db 0x09, 0xCC, 0xCC, 0xC9 ; 007EEE: provisional 68k movep.l d4, -$3337(a4)
db 0x9C, 0x88 ; 007EF2: provisional 68k sub.l a0, d6
db 0x88, 0xC9 ; file 007EF4
db 0x9D, 0xCC ; 007EF6: provisional 68k suba.l a4, a6
db 0xC1, 0xFF ; file 007EF8
db 0xFF, 0x08 ; 007EFA: provisional 68k dc.w $ff08
db 0x09, 0xCF, 0xCC, 0xC9 ; 007EFC: provisional 68k movep.l d4, -$3337(a7)
db 0x9C, 0x88 ; 007F00: provisional 68k sub.l a0, d6
db 0x88, 0xC9 ; file 007F02
db 0x9D, 0xCC ; 007F04: provisional 68k suba.l a4, a6
db 0xCC, 0xFF ; file 007F06
db 0xFF, 0x07 ; 007F08: provisional 68k dc.w $ff07
db 0x0A, 0x1C, 0xCF, 0xAA ; 007F0A: provisional 68k eori.b #$aa, (a4)+
db 0xCD, 0xDD ; 007F0E: provisional 68k muls.w (a5)+, d6
db 0x88, 0x88 ; file 007F10
db 0x99, 0x98 ; 007F12: provisional 68k sub.l d4, (a0)+
db 0x8A, 0xAC, 0xFF, 0xFF ; 007F14: provisional 68k or.l -$1(a4), d5
db 0x07, 0x0B, 0x1C, 0xFA ; 007F18: provisional 68k movep.w $1cfa(a3), d3
db 0xAA, 0xAD ; 007F1C: provisional 68k dc.w $aaad
db 0xD9, 0x99 ; 007F1E: provisional 68k add.l d4, (a1)+
db 0x99, 0x9D ; 007F20: provisional 68k sub.l d4, (a5)+
db 0xD8, 0x8F ; 007F22: provisional 68k add.l a7, d4
db 0xAC, 0xC1 ; 007F24: provisional 68k dc.w $acc1
db 0xFF, 0xFF ; 007F26: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0xCC, 0xCC ; 007F28: provisional 68k movep.w -$3334(a3), d3
db 0xCC, 0xAC, 0xCD, 0x99 ; 007F2C: provisional 68k and.l -$3267(a4), d6
db 0x99, 0xD8 ; 007F30: provisional 68k suba.l (a0)+, a4
db 0x88, 0x8C, 0xCD, 0xCC ; file 007F32
db 0xFF, 0xFF ; 007F36: provisional 68k dc.w $ffff
db 0x07, 0x0B, 0xCF, 0xAF ; 007F38: provisional 68k movep.w -$3051(a3), d3
db 0xAA, 0xAF ; 007F3C: provisional 68k dc.w $aaaf
db 0xF8, 0x88 ; 007F3E: provisional 68k dc.w $f888
db 0x88, 0x88, 0x88, 0xCA ; file 007F40
db 0xAA, 0xCC ; 007F44: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 007F46: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x1C, 0xCA ; file 007F48
db 0xAC, 0xFA ; 007F4C: provisional 68k dc.w $acfa
db 0xAA, 0xAC ; 007F4E: provisional 68k dc.w $aaac
db 0x88, 0x88, 0x88, 0x8C ; file 007F50
db 0xAF, 0xAA ; 007F54: provisional 68k dc.w $afaa
db 0xAC, 0xC1 ; 007F56: provisional 68k dc.w $acc1
db 0xFF, 0xFF ; 007F58: provisional 68k dc.w $ffff
db 0x06, 0x0D, 0x1C, 0xCC, 0xCC, 0xCC ; file 007F5A
db 0xFC, 0xCC ; 007F60: provisional 68k dc.w $fccc
db 0xCC, 0x88, 0x8C, 0xCC, 0xCC, 0xCA ; file 007F62
db 0xCC, 0xC1 ; 007F68: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 007F6A: provisional 68k dc.w $ffff
db 0x06, 0x0D ; file 007F6C
db 0xCC, 0xAA, 0xAA, 0xAA ; 007F6E: provisional 68k and.l -$5556(a2), d6
db 0xAA, 0xAA ; 007F72: provisional 68k dc.w $aaaa
db 0xAA, 0xCA ; 007F74: provisional 68k dc.w $aaca
db 0xAA, 0xAA ; 007F76: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xCC ; 007F78: provisional 68k and.l -$5534(a2), d5
db 0xFF, 0xFF ; 007F7C: provisional 68k dc.w $ffff
db 0x06, 0x0D ; file 007F7E
db 0xCA, 0xAA, 0xAA, 0xAA ; 007F80: provisional 68k and.l -$5556(a2), d5
db 0xAA, 0xAA ; 007F84: provisional 68k dc.w $aaaa
db 0xAA, 0xCA ; 007F86: provisional 68k dc.w $aaca
db 0xAA, 0xAA ; 007F88: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xAC ; 007F8A: provisional 68k and.l -$5554(a2), d5
db 0xFF, 0xFF ; 007F8E: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0x1C, 0xCA ; 007F90: provisional 68k movep.w $1cca(a7), d2
db 0xCC, 0xAF, 0xAA, 0xFA ; 007F94: provisional 68k and.l -$5506(a7), d6
db 0xAA, 0xAF ; 007F98: provisional 68k dc.w $aaaf
db 0xCA, 0xFF ; file 007F9A
db 0xFF, 0xCF ; 007F9C: provisional 68k dc.w $ffcf
db 0xFF, 0xFF ; 007F9E: provisional 68k dc.w $ffff
db 0xFC, 0xC1 ; 007FA0: provisional 68k dc.w $fcc1
db 0xFF, 0xFF ; 007FA2: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0x1C, 0xFC ; 007FA4: provisional 68k movep.w $1cfc(a7), d2
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 007FA8
db 0xCC, 0xC1 ; 007FB4: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 007FB6: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0xCC, 0xAA ; 007FB8: provisional 68k movep.w -$3356(a7), d2
db 0xAA, 0xAF ; 007FBC: provisional 68k dc.w $aaaf
db 0xAA, 0xAA ; 007FBE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007FC0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007FC2: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007FC4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 007FC6: provisional 68k dc.w $aaaa
db 0xAA, 0xCC ; 007FC8: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 007FCA: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0xCA, 0xFA ; 007FCC: provisional 68k movep.w -$3506(a7), d2
db 0xAA, 0xAC ; 007FD0: provisional 68k dc.w $aaac
db 0xFA, 0xFA ; 007FD2: provisional 68k dc.w $fafa
db 0xAC, 0xCF ; 007FD4: provisional 68k dc.w $accf
db 0xAA, 0xAC ; 007FD6: provisional 68k dc.w $aaac
db 0xCF, 0xAA, 0xFF, 0xFF ; 007FD8: provisional 68k and.l d7, -$1(a2)
db 0xFF, 0xFC ; 007FDC: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 007FDE: provisional 68k dc.w $ffff
db 0x04, 0x11, 0x1C, 0xCF ; 007FE0: provisional 68k subi.b #$cf, (a1)
db 0xFF, 0xFF ; 007FE4: provisional 68k dc.w $ffff
db 0xFC, 0xFF ; 007FE6: provisional 68k dc.w $fcff
db 0xAF, 0xFC ; 007FE8: provisional 68k dc.w $affc
db 0xCF, 0xAF, 0xFC, 0xCF ; 007FEA: provisional 68k and.l d7, -$331(a7)
db 0xAF, 0xFF ; 007FEE: provisional 68k dc.w $afff
db 0xFF, 0xFF ; 007FF0: provisional 68k dc.w $ffff
db 0xFC, 0xC1 ; 007FF2: provisional 68k dc.w $fcc1
db 0xFF, 0xFF ; 007FF4: provisional 68k dc.w $ffff
db 0x04, 0x11, 0x1C, 0xCA ; 007FF6: provisional 68k subi.b #$ca, (a1)
db 0xCC, 0xCC, 0xCA, 0xCF ; file 007FFA
db 0xCA, 0xAF, 0xFC, 0xCC ; 007FFE: provisional 68k and.l -$334(a7), d5
db 0xCA, 0xAC, 0xCC, 0xCA ; 008002: provisional 68k and.l -$3336(a4), d5
db 0xCC, 0xCC ; file 008006
db 0xCC, 0xC1 ; 008008: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 00800A: provisional 68k dc.w $ffff
db 0x04, 0x11, 0xCC, 0xAA ; 00800C: provisional 68k subi.b #$aa, (a1)
db 0xAF, 0xFF ; 008010: provisional 68k dc.w $afff
db 0xAA, 0xAA ; 008012: provisional 68k dc.w $aaaa
db 0xFA, 0xAA ; 008014: provisional 68k dc.w $faaa
db 0xAA, 0xFA ; 008016: provisional 68k dc.w $aafa
db 0xAA, 0xAA ; 008018: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xAF ; 00801A: provisional 68k and.l -$5551(a2), d5
db 0xAA, 0xCC ; 00801E: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 008020: provisional 68k dc.w $ffff
db 0x04, 0x11, 0xCC, 0xAA ; 008022: provisional 68k subi.b #$aa, (a1)
db 0xAF, 0xFF ; 008026: provisional 68k dc.w $afff
db 0xAA, 0xAA ; 008028: provisional 68k dc.w $aaaa
db 0xFA, 0xAA ; 00802A: provisional 68k dc.w $faaa
db 0xAA, 0xFA ; 00802C: provisional 68k dc.w $aafa
db 0xAA, 0xAA ; 00802E: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xAF ; 008030: provisional 68k and.l -$5551(a2), d5
db 0xAA, 0xCC ; 008034: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 008036: provisional 68k dc.w $ffff
db 0x03, 0x13 ; 008038: provisional 68k btst.l d1, (a3)
db 0x1C, 0xCC ; file 00803A
db 0xFF, 0xAF ; 00803C: provisional 68k dc.w $ffaf
db 0xCC, 0xFF ; file 00803E
db 0xAF, 0xCF ; 008040: provisional 68k dc.w $afcf
db 0xFA, 0xFA ; 008042: provisional 68k dc.w $fafa
db 0xCF, 0xFF ; file 008044
db 0xFF, 0xCC ; 008046: provisional 68k dc.w $ffcc
db 0xFF, 0xFF ; 008048: provisional 68k dc.w $ffff
db 0xFC, 0xCF ; 00804A: provisional 68k dc.w $fccf
db 0xFC, 0xC1 ; 00804C: provisional 68k dc.w $fcc1
db 0xFF, 0xFF ; 00804E: provisional 68k dc.w $ffff
db 0x03, 0x13 ; 008050: provisional 68k btst.l d1, (a3)
db 0xCC, 0xAC, 0xCC, 0xCC ; 008052: provisional 68k and.l -$3334(a4), d6
db 0xCC, 0xCC ; file 008056
db 0xCC, 0xFC, 0xCC, 0xCC ; 008058: provisional 68k mulu.w #$cccc, d6
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 00805C
db 0xCD, 0xC1 ; 008064: provisional 68k muls.w d1, d6
db 0xFF, 0xFF ; 008066: provisional 68k dc.w $ffff
db 0x03, 0x13 ; 008068: provisional 68k btst.l d1, (a3)
db 0xCA, 0xAA, 0xAF, 0xAA ; 00806A: provisional 68k and.l -$5056(a2), d5
db 0xAA, 0xAA ; 00806E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008070: provisional 68k dc.w $aaaa
db 0xAF, 0xAA ; 008072: provisional 68k dc.w $afaa
db 0xAA, 0xAF ; 008074: provisional 68k dc.w $aaaf
db 0xFA, 0xAA ; 008076: provisional 68k dc.w $faaa
db 0xAC, 0xAA ; 008078: provisional 68k dc.w $acaa
db 0xAA, 0xAF ; 00807A: provisional 68k dc.w $aaaf
db 0xAA, 0xCC ; 00807C: provisional 68k dc.w $aacc
db 0xFF, 0xFF ; 00807E: provisional 68k dc.w $ffff
db 0x02, 0x14, 0x1C, 0xCF ; 008080: provisional 68k andi.b #$cf, (a4)
db 0xFA, 0xFC ; 008084: provisional 68k dc.w $fafc
db 0xFF, 0xFF ; 008086: provisional 68k dc.w $ffff
db 0xFC, 0xFF ; 008088: provisional 68k dc.w $fcff
db 0xFF, 0xFC ; 00808A: provisional 68k dc.w $fffc
db 0xCF, 0xFF ; file 00808C
db 0xFC, 0xCF ; 00808E: provisional 68k dc.w $fccf
db 0xFF, 0xFC ; 008090: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 008092: provisional 68k dc.w $ffff
db 0xFC, 0xCF ; 008094: provisional 68k dc.w $fccf
db 0xFC, 0xFF ; 008096: provisional 68k dc.w $fcff
db 0xFF, 0x02 ; 008098: provisional 68k dc.w $ff02
db 0x15, 0x1C ; 00809A: provisional 68k move.b (a4)+, -(a2)
db 0xAC, 0xCC ; 00809C: provisional 68k dc.w $accc
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 00809E
db 0xCA, 0xAC, 0xC1, 0xFF ; 0080AE: provisional 68k and.l -$3e01(a4), d5
db 0xFF, 0x02 ; 0080B2: provisional 68k dc.w $ff02
db 0x15, 0xCC ; file 0080B4
db 0xAA, 0xAA ; 0080B6: provisional 68k dc.w $aaaa
db 0xAA, 0xAC ; 0080B8: provisional 68k dc.w $aaac
db 0xAA, 0xAA ; 0080BA: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080BC: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080BE: provisional 68k dc.w $aaaa
db 0xFA, 0xAA ; 0080C0: provisional 68k dc.w $faaa
db 0xAA, 0xCA ; 0080C2: provisional 68k dc.w $aaca
db 0xAA, 0xAA ; 0080C4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0080C6: provisional 68k dc.w $aaaa
db 0xAA, 0xAC ; 0080C8: provisional 68k dc.w $aaac
db 0xC1, 0xFF ; file 0080CA
db 0xFF, 0x02 ; 0080CC: provisional 68k dc.w $ff02
db 0x15, 0xCF ; file 0080CE
db 0xFC, 0xCF ; 0080D0: provisional 68k dc.w $fccf
db 0xFF, 0xFC ; 0080D2: provisional 68k dc.w $fffc
db 0xCC, 0xFF ; file 0080D4
db 0xFF, 0xCF ; 0080D6: provisional 68k dc.w $ffcf
db 0xFF, 0xFF ; 0080D8: provisional 68k dc.w $ffff
db 0xCF, 0xFF ; file 0080DA
db 0xFF, 0xCC ; 0080DC: provisional 68k dc.w $ffcc
db 0xFF, 0xFF ; 0080DE: provisional 68k dc.w $ffff
db 0xFC, 0xFF ; 0080E0: provisional 68k dc.w $fcff
db 0xFF, 0xFD ; 0080E2: provisional 68k dc.w $fffd
db 0xCC, 0xFF ; file 0080E4
db 0xFF, 0x01 ; 0080E6: provisional 68k dc.w $ff01
db 0x16, 0x1C ; 0080E8: provisional 68k move.b (a4)+, d3
db 0x8F, 0xFC, 0xCF, 0xFF ; 0080EA: provisional 68k divs.w #$cfff, d7
db 0xFC, 0xCC ; 0080EE: provisional 68k dc.w $fccc
db 0xFF, 0xFF ; 0080F0: provisional 68k dc.w $ffff
db 0xCF, 0xFF ; file 0080F2
db 0xFF, 0xCF ; 0080F4: provisional 68k dc.w $ffcf
db 0xFF, 0xFF ; 0080F6: provisional 68k dc.w $ffff
db 0xCC, 0xFF ; file 0080F8
db 0xFF, 0xFC ; 0080FA: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 0080FC: provisional 68k dc.w $ffff
db 0xFD, 0xFC ; 0080FE: provisional 68k dc.w $fdfc
db 0xFF, 0xFF ; 008100: provisional 68k dc.w $ffff
db 0x01, 0x17 ; 008102: provisional 68k btst.l d0, (a7)
db 0x1C, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 008104
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; file 008114
db 0xCC, 0xC1 ; 00811A: provisional 68k mulu.w d1, d6
db 0xFF, 0xFF ; 00811C: provisional 68k dc.w $ffff
db 0x01, 0x17 ; 00811E: provisional 68k btst.l d0, (a7)
db 0xCC, 0xAA, 0xAA, 0xAA ; 008120: provisional 68k and.l -$5556(a2), d6
db 0xAF, 0xAA ; 008124: provisional 68k dc.w $afaa
db 0xAA, 0xAA ; 008126: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008128: provisional 68k dc.w $aaaa
db 0xAF, 0xAA ; 00812A: provisional 68k dc.w $afaa
db 0xAA, 0xAA ; 00812C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00812E: provisional 68k dc.w $aaaa
db 0xAC, 0xAA ; 008130: provisional 68k dc.w $acaa
db 0xAA, 0xAA ; 008132: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008134: provisional 68k dc.w $aaaa
db 0xAA, 0xC1 ; 008136: provisional 68k dc.w $aac1
db 0xFF, 0xFF ; 008138: provisional 68k dc.w $ffff
db 0x01, 0x17 ; 00813A: provisional 68k btst.l d0, (a7)
db 0xCC, 0xCC ; file 00813C
db 0xFF, 0xFF ; 00813E: provisional 68k dc.w $ffff
db 0xFC, 0xFF ; 008140: provisional 68k dc.w $fcff
db 0xFF, 0xFC ; 008142: provisional 68k dc.w $fffc
db 0xFF, 0xAA ; 008144: provisional 68k dc.w $ffaa
db 0xAC, 0xCF ; 008146: provisional 68k dc.w $accf
db 0xFF, 0xFC ; 008148: provisional 68k dc.w $fffc
db 0xCF, 0xFF ; file 00814A
db 0xFC, 0xFF ; 00814C: provisional 68k dc.w $fcff
db 0xFF, 0xFC ; 00814E: provisional 68k dc.w $fffc
db 0xFF, 0xFF ; 008150: provisional 68k dc.w $ffff
db 0xFF, 0xCC ; 008152: provisional 68k dc.w $ffcc
db 0xFF, 0xFF ; 008154: provisional 68k dc.w $ffff
db 0x00, 0x18, 0x1C, 0xCC ; 008156: provisional 68k ori.b #$cc, (a0)+
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xC8 ; file 00815A
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xFF ; file 00816A
db 0xFF, 0x00 ; 008172: provisional 68k dc.w $ff00
db 0x19, 0xCC ; file 008174
db 0xCA, 0xAA, 0xAC, 0xCA ; 008176: provisional 68k and.l -$5336(a2), d5
db 0xAA, 0xAF ; 00817A: provisional 68k dc.w $aaaf
db 0xAA, 0xAA ; 00817C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00817E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008180: provisional 68k dc.w $aaaa
db 0xCA, 0xAA, 0xAA, 0xCF ; 008182: provisional 68k and.l -$5531(a2), d5
db 0xAA, 0xAA ; 008186: provisional 68k dc.w $aaaa
db 0xAF, 0xAF ; 008188: provisional 68k dc.w $afaf
db 0xAA, 0xAC ; 00818A: provisional 68k dc.w $aaac
db 0xAA, 0xAF ; 00818C: provisional 68k dc.w $aaaf
db 0xC1, 0xFF ; file 00818E
db 0xFF, 0x00 ; 008190: provisional 68k dc.w $ff00
db 0x19, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xC8, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0x8C, 0xCC ; file 008192
db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xC8, 0xCC, 0xCC, 0xCC, 0xFF ; file 0081A2
db 0xFF, 0xFF ; 0081AE: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 0081B0: provisional 68k dc.w $ff00
db 0x00, 0x07, 0x00, 0x00 ; 0081B2: provisional 68k ori.b #$0, d7
db 0x00, 0x2B, 0x00, 0x23, 0x00, 0x00 ; 0081B6: provisional 68k ori.b #$23, $0(a3)
db 0x00, 0x58, 0x00, 0x00 ; 0081BC: provisional 68k ori.w #$0, (a0)+
db 0x00, 0x00, 0x00, 0x14 ; 0081C0: provisional 68k ori.b #$14, d0
db 0x00, 0x0E ; file 0081C4
db 0x00, 0x00, 0x00, 0x08 ; 0081C6: provisional 68k ori.b #$8, d0
db 0x00, 0x05, 0x00, 0x0A ; 0081CA: provisional 68k ori.b #$a, d5
db 0x00, 0x00, 0x00, 0x00 ; 0081CE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 0081D2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x01 ; 0081D6: provisional 68k ori.b #$1, d0
db 0x00, 0x02, 0x00, 0x03 ; 0081DA: provisional 68k ori.b #$3, d2
db 0x00, 0x04, 0x00, 0x03 ; 0081DE: provisional 68k ori.b #$3, d4
db 0x00, 0x02, 0x00, 0x01 ; 0081E2: provisional 68k ori.b #$1, d2
db 0x00, 0x0A ; file 0081E6
db 0x02, 0x94, 0x05, 0x3E, 0x07, 0xF6 ; 0081E8: provisional 68k andi.l #$53e07f6, (a4)
db 0x0A, 0xB6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C ; 0081EE: provisional 68k eori.l #$0, $2c(a6, d0.w)
db 0x00, 0x23, 0x00, 0x10 ; 0081F6: provisional 68k ori.b #$10, -(a3)
db 0x08, 0x08, 0x08, 0x10 ; file 0081FA
db 0x10, 0x10 ; 0081FE: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 008200: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 008202: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 008204: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 008206: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00820A: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 00820E: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 008210: provisional 68k neg.w d4
db 0x44, 0x3C ; file 008212
db 0x34, 0xCC ; 008214: provisional 68k move.w a4, (a2)+
db 0xB8, 0x94 ; 008216: provisional 68k cmp.l (a4), d4
db 0x50, 0x00 ; 008218: provisional 68k addq.b #$8, d0
db 0x00, 0xF4, 0xEC, 0xD0 ; file 00821A
db 0x84, 0x74, 0x60, 0x8C ; 00821E: provisional 68k or.w -$74(a4, d6.w), d2
db 0x00, 0x00, 0xFC, 0xFC ; 008222: provisional 68k ori.b #$fc, d0
db 0xFC, 0x70 ; 008226: provisional 68k dc.w $fc70
db 0x00, 0x00, 0xFF, 0xFF ; 008228: provisional 68k ori.b #$ff, d0
db 0xFF, 0xFF ; 00822C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00822E: provisional 68k dc.w $ffff
db 0x0C, 0x04, 0x1A, 0xFD ; 008230: provisional 68k cmpi.b #$fd, d4
db 0xDD, 0xDD ; 008234: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xFF ; file 008236
db 0xFF, 0x0C ; 008238: provisional 68k dc.w $ff0c
db 0x07, 0x1A ; 00823A: provisional 68k btst.l d3, (a2)+
db 0xFA, 0xFF ; 00823C: provisional 68k dc.w $faff
db 0xDD, 0xDD ; 00823E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDF ; 008240: provisional 68k adda.l (a7)+, a6
db 0xA1, 0xFF ; 008242: provisional 68k dc.w $a1ff
db 0xFF, 0x0C ; 008244: provisional 68k dc.w $ff0c
db 0x08, 0x1A ; file 008246
db 0xFA, 0xAA ; 008248: provisional 68k dc.w $faaa
db 0xAA, 0xAF ; 00824A: provisional 68k dc.w $aaaf
db 0xDD, 0xDD ; 00824C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xA1 ; 00824E: provisional 68k add.l d6, -(a1)
db 0xFF, 0xFF ; 008250: provisional 68k dc.w $ffff
db 0x01, 0x04 ; 008252: provisional 68k btst.l d0, d4
db 0x1A, 0xAD, 0xDD, 0xDA ; 008254: provisional 68k move.b -$2226(a5), (a5)
db 0xAA, 0x06 ; 008258: provisional 68k dc.w $aa06
db 0x08, 0x1A ; file 00825A
db 0xFA, 0xAA ; 00825C: provisional 68k dc.w $faaa
db 0xAA, 0xAA ; 00825E: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 008260: provisional 68k dc.w $aaad
db 0xDD, 0xDD ; 008262: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 008264: provisional 68k dc.w $ffff
db 0x01, 0x06 ; 008266: provisional 68k btst.l d0, d6
db 0x1A, 0xAA, 0xDD, 0xDD ; 008268: provisional 68k move.b -$2223(a2), (a5)
db 0xDD, 0xDF ; 00826C: provisional 68k adda.l (a7)+, a6
db 0xF1, 0x04 ; 00826E: provisional 68k dc.w $f104
db 0x08, 0x18 ; file 008270
db 0xAA, 0xAA ; 008272: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008274: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008276: provisional 68k dc.w $aaaa
db 0xDD, 0xDD ; 008278: provisional 68k adda.l (a5)+, a6
db 0xFF, 0xFF ; 00827A: provisional 68k dc.w $ffff
db 0x01, 0x07 ; 00827C: provisional 68k btst.l d0, d7
db 0x1A, 0xAA, 0xDD, 0xDD ; 00827E: provisional 68k move.b -$2223(a2), (a5)
db 0xDD, 0xDF ; 008282: provisional 68k adda.l (a7)+, a6
db 0xFF, 0xA1 ; 008284: provisional 68k dc.w $ffa1
db 0x03, 0x08, 0x18, 0xAA ; 008286: provisional 68k movep.w $18aa(a0), d1
db 0xAA, 0xAA ; 00828A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00828C: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 00828E: provisional 68k dc.w $aadd
db 0xDD, 0xFF ; file 008290
db 0xFF, 0x01 ; 008292: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 008294: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 008296: provisional 68k dc.w $aaaa
db 0xAA, 0xFD ; 008298: provisional 68k dc.w $aafd
db 0xDD, 0xDD ; 00829A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00829C: provisional 68k adda.l (a5)+, a6
db 0xAA, 0xA8 ; 00829E: provisional 68k dc.w $aaa8
db 0x88, 0x8A ; file 0082A0
db 0xAA, 0xAA ; 0082A2: provisional 68k dc.w $aaaa
db 0xAF, 0xFD ; 0082A4: provisional 68k dc.w $affd
db 0xDD, 0xDD ; 0082A6: provisional 68k adda.l (a5)+, a6
db 0xFA, 0xFF ; 0082A8: provisional 68k dc.w $faff
db 0xFF, 0x01 ; 0082AA: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 0082AC: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 0082AE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0082B0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0082B2: provisional 68k dc.w $aaaa
db 0xAD, 0xDD ; 0082B4: provisional 68k dc.w $addd
db 0xDD, 0xDD ; 0082B6: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0082B8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0082BA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0082BC: provisional 68k adda.l (a5)+, a6
db 0xDF, 0xFA, 0xAA, 0xFF ; 0082BE: provisional 68k adda.l $2dbf(pc), a7
db 0xFF, 0x01 ; 0082C2: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 0082C4: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 0082C6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0082C8: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0082CA: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 0082CC: provisional 68k dc.w $aaff
db 0xFF, 0xFD ; 0082CE: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 0082D0: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0082D2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0082D4: provisional 68k adda.l (a5)+, a6
db 0xDF, 0xFA, 0xAA, 0xFF ; 0082D6: provisional 68k adda.l $2dd7(pc), a7
db 0xFF, 0x02 ; 0082DA: provisional 68k dc.w $ff02
db 0x12, 0xAA, 0xAA, 0xAA ; 0082DC: provisional 68k move.b -$5556(a2), (a1)
db 0xAA, 0xAA ; 0082E0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0082E2: provisional 68k dc.w $aaaa
db 0xFF, 0xFF ; 0082E4: provisional 68k dc.w $ffff
db 0xFD, 0xDD ; 0082E6: provisional 68k dc.w $fddd
db 0xDD, 0xDD ; 0082E8: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0082EA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDF ; 0082EC: provisional 68k adda.l (a7)+, a6
db 0xFA, 0xAA ; 0082EE: provisional 68k dc.w $faaa
db 0xFF, 0xFF ; 0082F0: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x18, 0x88 ; 0082F2: provisional 68k andi.b #$88, (a2)
db 0x8A, 0xAA, 0xAA, 0xAA ; 0082F6: provisional 68k or.l -$5556(a2), d5
db 0xAF, 0xFF ; 0082FA: provisional 68k dc.w $afff
db 0xFF, 0xFD ; 0082FC: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 0082FE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008300: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008302: provisional 68k adda.l (a5)+, a6
db 0xDF, 0xFA, 0xA1, 0xFF ; 008304: provisional 68k adda.l $2505(pc), a7
db 0xFF, 0x03 ; 008308: provisional 68k dc.w $ff03
db 0x11, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 00830A
db 0x8A, 0xAF, 0xFF, 0xFD ; 008310: provisional 68k or.l -$3(a7), d5
db 0xDD, 0xDD ; 008314: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008316: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFA, 0xAA, 0x88 ; 008318: provisional 68k adda.l $2da2(pc), a6
db 0x81, 0xFF ; file 00831C
db 0xFF, 0x03 ; 00831E: provisional 68k dc.w $ff03
db 0x11, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 008320
db 0x8A, 0xAF, 0xFF, 0xFD ; 008326: provisional 68k or.l -$3(a7), d5
db 0xDD, 0xDD ; 00832A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00832C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFA, 0xAA, 0x88 ; 00832E: provisional 68k adda.l $2db8(pc), a6
db 0x81, 0xFF ; file 008332
db 0xFF, 0x03 ; 008334: provisional 68k dc.w $ff03
db 0x11, 0x18 ; 008336: provisional 68k move.b (a0)+, -(a0)
db 0x88, 0x88, 0x88, 0x88, 0xC8, 0x8C, 0x88, 0x88, 0xC8, 0x88, 0xCC, 0x88, 0x88, 0x88, 0x88, 0xC8 ; file 008338
db 0x81, 0xFF ; file 008348
db 0xFF, 0x04 ; 00834A: provisional 68k dc.w $ff04
db 0x10, 0x18 ; 00834C: provisional 68k move.b (a0)+, d0
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xC8, 0x88, 0xCC, 0x88, 0xCC, 0xCC, 0x8C, 0xCC, 0x8C ; file 00834E
db 0xC8, 0x81 ; 00835C: provisional 68k and.l d1, d4
db 0xFF, 0xFF ; 00835E: provisional 68k dc.w $ffff
db 0x02, 0x11, 0x18, 0xC9 ; 008360: provisional 68k andi.b #$c9, (a1)
db 0xC8, 0x88, 0x88, 0x88, 0x88, 0x88, 0xC8, 0x88, 0x8C, 0x88, 0xCC, 0xC8, 0x8C, 0x88 ; file 008364
db 0x88, 0x81 ; 008372: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 008374: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x89, 0xBE ; 008376: provisional 68k andi.b #$be, (a2)
db 0xE9, 0x99 ; 00837A: provisional 68k rol.l #$4, d1
db 0xC8, 0xCC, 0x88, 0x88, 0x88, 0x88 ; file 00837C
db 0x88, 0xA8, 0x88, 0x88 ; 008382: provisional 68k or.l -$7778(a0), d4
db 0x88, 0x88, 0x88, 0x88, 0x88, 0xFF ; file 008386
db 0xFF, 0x01 ; 00838C: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 00838E: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xCB ; 008390: provisional 68k dc.w $aacb
db 0xB9, 0x9B ; 008392: provisional 68k eor.l d4, (a3)+
db 0x99, 0x99 ; 008394: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 008396: provisional 68k sub.l d4, (a1)+
db 0xB9, 0x99 ; 008398: provisional 68k eor.l d4, (a1)+
db 0xCC, 0xC8, 0xCC, 0x88, 0xC8, 0xCC, 0xC8, 0xCC, 0xCC, 0xFF ; file 00839A
db 0xFF, 0x01 ; 0083A4: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xFC, 0xC9, 0x99 ; 0083A6: provisional 68k move.b -$5504(a2), ([, a4.l])
db 0x99, 0x99 ; 0083AC: provisional 68k sub.l d4, (a1)+
db 0x99, 0x99 ; 0083AE: provisional 68k sub.l d4, (a1)+
db 0xE9, 0x9E ; 0083B0: provisional 68k rol.l #$4, d6
db 0xEE, 0xE9 ; file 0083B2
db 0xEE, 0x98 ; 0083B4: provisional 68k ror.l #$7, d0
db 0x9C, 0xCC ; 0083B6: provisional 68k suba.w a4, a6
db 0xC8, 0xCC, 0xCF, 0xFF ; file 0083B8
db 0xFF, 0x01 ; 0083BC: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xFA, 0xCC, 0x99 ; 0083BE: provisional 68k move.b -$5506(a2), -$67(a1, a4.l)
db 0x9C, 0x99 ; 0083C4: provisional 68k sub.l (a1)+, d6
db 0x99, 0x99 ; 0083C6: provisional 68k sub.l d4, (a1)+
db 0xE9, 0x9E ; 0083C8: provisional 68k rol.l #$4, d6
db 0xEE, 0xE9 ; file 0083CA
db 0xEE, 0x99 ; 0083CC: provisional 68k ror.l #$7, d1
db 0x9C, 0x8C ; 0083CE: provisional 68k sub.l a4, d6
db 0xCC, 0xCC ; file 0083D0
db 0xAF, 0xFF ; 0083D2: provisional 68k dc.w $afff
db 0xFF, 0x01 ; 0083D4: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xAA, 0xAA, 0x8C ; 0083D6: provisional 68k move.b -$5556(a2), -$74(a1, a2.l)
db 0xCC, 0x99 ; 0083DC: provisional 68k and.l (a1)+, d6
db 0x99, 0xC9 ; 0083DE: provisional 68k suba.l a1, a4
db 0xB9, 0x8B ; 0083E0: provisional 68k cmpm.l (a3)+, (a4)+
db 0xEE, 0xE9 ; file 0083E2
db 0xEE, 0x99 ; 0083E4: provisional 68k ror.l #$7, d1
db 0x9C, 0x88 ; 0083E6: provisional 68k sub.l a0, d6
db 0x8D, 0xDF ; 0083E8: provisional 68k divs.w (a7)+, d6
db 0xAA, 0xFF ; 0083EA: provisional 68k dc.w $aaff
db 0xFF, 0x01 ; 0083EC: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 0083EE: provisional 68k move.b -$5556(a2), -$56(a1, a2.l)
db 0xAA, 0xAA ; 0083F4: provisional 68k dc.w $aaaa
db 0xDD, 0xDD ; 0083F6: provisional 68k adda.l (a5)+, a6
db 0xD8, 0x8C ; 0083F8: provisional 68k add.l a4, d4
db 0x99, 0x98 ; 0083FA: provisional 68k sub.l d4, (a0)+
db 0xCC, 0xDD ; 0083FC: provisional 68k mulu.w (a5)+, d6
db 0xDD, 0xDF ; 0083FE: provisional 68k adda.l (a7)+, a6
db 0xFF, 0xAA ; 008400: provisional 68k dc.w $ffaa
db 0xAA, 0xFF ; 008402: provisional 68k dc.w $aaff
db 0xFF, 0x01 ; 008404: provisional 68k dc.w $ff01
db 0x13, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 008406: provisional 68k move.b -$5556(a2), -$56(a1, a2.l)
db 0xAA, 0xAA ; 00840C: provisional 68k dc.w $aaaa
db 0xAF, 0xFF ; 00840E: provisional 68k dc.w $afff
db 0xFF, 0xFD ; 008410: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 008412: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008414: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDF ; 008416: provisional 68k adda.l (a7)+, a6
db 0xFF, 0xAA ; 008418: provisional 68k dc.w $ffaa
db 0xAA, 0xFF ; 00841A: provisional 68k dc.w $aaff
db 0xFF, 0x01 ; 00841C: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 00841E: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 008420: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008422: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008424: provisional 68k dc.w $aaaa
db 0xAF, 0xFF ; 008426: provisional 68k dc.w $afff
db 0xFF, 0xFD ; 008428: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 00842A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 00842C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFF ; file 00842E
db 0xFF, 0xAA ; 008430: provisional 68k dc.w $ffaa
db 0xAA, 0xFF ; 008432: provisional 68k dc.w $aaff
db 0xFF, 0x03 ; 008434: provisional 68k dc.w $ff03
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 008436: provisional 68k move.b -$5556(a2), -$56(a0, a2.l)
db 0xAF, 0xFF ; 00843C: provisional 68k dc.w $afff
db 0xFF, 0xFD ; 00843E: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 008440: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008442: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFF ; file 008444
db 0xFF, 0xAA ; 008446: provisional 68k dc.w $ffaa
db 0xA1, 0xFF ; 008448: provisional 68k dc.w $a1ff
db 0xFF, 0x05 ; 00844A: provisional 68k dc.w $ff05
db 0x0E, 0xAA ; file 00844C
db 0xAA, 0xAA ; 00844E: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 008450: provisional 68k dc.w $aaff
db 0xFF, 0xFD ; 008452: provisional 68k dc.w $fffd
db 0xDD, 0xDD ; 008454: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008456: provisional 68k adda.l (a5)+, a6
db 0xFA, 0xAA ; 008458: provisional 68k dc.w $faaa
db 0xAA, 0xA1 ; 00845A: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 00845C: provisional 68k dc.w $ffff
db 0x07, 0x0A, 0xAA, 0xAF ; 00845E: provisional 68k movep.w -$5551(a2), d3
db 0xFF, 0xFF ; 008462: provisional 68k dc.w $ffff
db 0xFD, 0xDD ; 008464: provisional 68k dc.w $fddd
db 0xDD, 0xDD ; 008466: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xFA, 0xAA, 0xFF ; 008468: provisional 68k adda.l $2f69(pc), a6
db 0xFF, 0xFF ; 00846C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00846E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008470: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008472: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008474: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008476: provisional 68k dc.w $ffff
db 0xFF, 0x00 ; 008478: provisional 68k dc.w $ff00
db 0x00, 0x00, 0x00, 0x00 ; 00847A: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x23, 0x00, 0x10 ; 00847E: provisional 68k ori.b #$23, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 008484
db 0x10, 0x10 ; 008488: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 00848A: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 00848C: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 00848E: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 008490: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 008494: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 008498: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 00849A: provisional 68k neg.w d4
db 0x3C, 0x34, 0x30, 0x9C ; 00849C: provisional 68k move.w -$64(a4, d3.w), d6
db 0x8C, 0x70, 0xF8, 0xEC ; 0084A0: provisional 68k or.w -$14(a0, a7.l), d6
db 0xCC, 0x54 ; 0084A4: provisional 68k and.w (a4), d6
db 0x00, 0x00, 0xD4, 0xC0 ; 0084A6: provisional 68k ori.b #$c0, d0
db 0xA0, 0xFC ; 0084AA: provisional 68k dc.w $a0fc
db 0xFC, 0xFC ; 0084AC: provisional 68k dc.w $fcfc
db 0x68, 0x60 ; 0084AE: provisional 68k bvc.b $8510
db 0x50, 0x7C ; file 0084B0
db 0x00, 0x00, 0xFF, 0xFF ; 0084B2: provisional 68k ori.b #$ff, d0
db 0xFF, 0xFF ; 0084B6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0084B8: provisional 68k dc.w $ffff
db 0x0D, 0x04 ; 0084BA: provisional 68k btst.l d6, d4
db 0xBB, 0xFF ; file 0084BC
db 0xFB, 0xBB ; 0084BE: provisional 68k dc.w $fbbb
db 0xB1, 0xFF ; file 0084C0
db 0xFF, 0x0C ; 0084C2: provisional 68k dc.w $ff0c
db 0x08, 0x1F, 0xBF, 0xFF ; file 0084C4
db 0xFB, 0xFF ; 0084C8: provisional 68k dc.w $fbff
db 0xFF, 0xFF ; 0084CA: provisional 68k dc.w $ffff
db 0xFF, 0xB1 ; 0084CC: provisional 68k dc.w $ffb1
db 0xFF, 0xFF ; 0084CE: provisional 68k dc.w $ffff
db 0x0C, 0x08, 0x1F, 0xFB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBF, 0xFF ; file 0084D0
db 0xFB, 0xFF ; 0084DA: provisional 68k dc.w $fbff
db 0xFF, 0x02 ; 0084DC: provisional 68k dc.w $ff02
db 0x02, 0x18, 0x88, 0x81 ; 0084DE: provisional 68k andi.b #$81, (a0)+
db 0x07, 0x08, 0x1F, 0xBB ; 0084E2: provisional 68k movep.w $1fbb(a0), d3
db 0xBB, 0xBB, 0xBF, 0xFF ; file 0084E6
db 0xFF, 0xFF ; 0084EA: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 0084EC
db 0xFF, 0x01 ; 0084EE: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 0084F0: provisional 68k move.b (a3)+, -(a1)
db 0xFF, 0xFF ; 0084F2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0084F4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0084F6: provisional 68k dc.w $ffff
db 0xFF, 0xFB ; 0084F8: provisional 68k dc.w $fffb
db 0xBB, 0xBB, 0xBF, 0xFF ; file 0084FA
db 0xFF, 0xFF ; 0084FE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008500: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008502: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 008504
db 0xFF, 0x01 ; 008506: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 008508: provisional 68k move.b (a3)+, -(a1)
db 0xFF, 0xFF ; 00850A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00850C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00850E: provisional 68k dc.w $ffff
db 0xFF, 0xFB ; 008510: provisional 68k dc.w $fffb
db 0xBB, 0xBB, 0xBF, 0xFF ; file 008512
db 0xFF, 0xFF ; 008516: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008518: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00851A: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 00851C
db 0xFF, 0x01 ; 00851E: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 008520: provisional 68k move.b (a3)+, -(a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 008522
db 0xFF, 0xFF ; 008528: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00852A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00852C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00852E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008530: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008532: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 008534
db 0xFF, 0x01 ; 008536: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 008538: provisional 68k move.b (a3)+, -(a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 00853A
db 0xFF, 0xFF ; 008540: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008542: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008544: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008546: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008548: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00854A: provisional 68k dc.w $ffff
db 0xBB, 0xFF ; file 00854C
db 0xFF, 0x01 ; 00854E: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 008550: provisional 68k move.b (a3)+, -(a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 008552
db 0xFF, 0xFF ; 008558: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00855A: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00855C: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 00855E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008560: provisional 68k dc.w $ffff
db 0xFF, 0xFB ; 008562: provisional 68k dc.w $fffb
db 0xB1, 0xFF ; file 008564
db 0xFF, 0x01 ; 008566: provisional 68k dc.w $ff01
db 0x13, 0x1B ; 008568: provisional 68k move.b (a3)+, -(a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 00856A
db 0xFF, 0xFF ; 008570: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008572: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008574: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008576: provisional 68k dc.w $ffff
db 0xFF, 0xFB ; 008578: provisional 68k dc.w $fffb
db 0xB8, 0x88 ; 00857A: provisional 68k cmp.l a0, d4
db 0x81, 0xFF ; file 00857C
db 0xFF, 0x02 ; 00857E: provisional 68k dc.w $ff02
db 0x12, 0x18 ; 008580: provisional 68k move.b (a0)+, d1
db 0xB8, 0x88 ; 008582: provisional 68k cmp.l a0, d4
db 0xB8, 0xEB, 0x88, 0x8B ; 008584: provisional 68k cmpa.w -$7775(a3), a4
db 0x8E, 0xFF ; file 008588
db 0xFE, 0xEB ; 00858A: provisional 68k dc.w $feeb
db 0xFE, 0xEE ; 00858C: provisional 68k dc.w $feee
db 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xE1 ; file 00858E
db 0xFF, 0xFF ; 008594: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x18, 0x88 ; 008596: provisional 68k andi.b #$88, (a2)
db 0x88, 0x88 ; file 00859A
db 0xE8, 0x88 ; 00859C: provisional 68k lsr.l #$4, d0
db 0xE8, 0xEE ; file 00859E
db 0xE8, 0x8E ; 0085A0: provisional 68k lsr.l #$4, d6
db 0x9E, 0xEE, 0x99, 0x99 ; 0085A2: provisional 68k suba.w -$6667(a6), a7
db 0xE9, 0x99 ; 0085A6: provisional 68k rol.l #$4, d1
db 0xE9, 0x9E ; 0085A8: provisional 68k rol.l #$4, d6
db 0x81, 0xFF ; file 0085AA
db 0xFF, 0x02 ; 0085AC: provisional 68k dc.w $ff02
db 0x12, 0x18 ; 0085AE: provisional 68k move.b (a0)+, d1
db 0x88, 0x88 ; file 0085B0
db 0x88, 0xE8, 0x88, 0xE8 ; 0085B2: provisional 68k divu.w -$7718(a0), d4
db 0xEE, 0xE8 ; file 0085B6
db 0x8E, 0x9E ; 0085B8: provisional 68k or.l (a6)+, d7
db 0xEE, 0x99 ; 0085BA: provisional 68k ror.l #$7, d1
db 0x9E, 0xE9, 0x99, 0xE9 ; 0085BC: provisional 68k suba.w -$6617(a1), a7
db 0x9E, 0x81 ; 0085C0: provisional 68k sub.l d1, d7
db 0xFF, 0xFF ; 0085C2: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 0085C4: provisional 68k btst.l d1, (a0)
db 0x88, 0x88, 0x88, 0x8E ; file 0085C6
db 0x88, 0xEE, 0x8E, 0xEE ; 0085CA: provisional 68k divu.w -$7112(a6), d4
db 0xE8, 0xE9 ; file 0085CE
db 0xEE, 0x99 ; 0085D0: provisional 68k ror.l #$7, d1
db 0x9E, 0xE9, 0x99, 0x89 ; 0085D2: provisional 68k suba.w -$6677(a1), a7
db 0x88, 0xFF ; file 0085D6
db 0xFF, 0x04 ; 0085D8: provisional 68k dc.w $ff04
db 0x0E, 0x18, 0x88, 0x88, 0x88, 0x8E ; file 0085DA
db 0x88, 0xE8, 0x88, 0x99 ; 0085E0: provisional 68k divu.w -$7767(a0), d4
db 0x98, 0x9E ; 0085E4: provisional 68k sub.l (a6)+, d4
db 0xB8, 0x88 ; 0085E6: provisional 68k cmp.l a0, d4
db 0x88, 0x88 ; file 0085E8
db 0xFF, 0xFF ; 0085EA: provisional 68k dc.w $ffff
db 0x02, 0x08 ; file 0085EC
db 0x89, 0x9E ; 0085EE: provisional 68k or.l d4, (a6)+
db 0xE9, 0x88 ; 0085F0: provisional 68k lsl.l #$4, d0
db 0x88, 0x88, 0x88, 0x88 ; file 0085F2
db 0x81, 0x01 ; 0085F6: provisional 68k sbcd.b d1, d0
db 0x08, 0x1B, 0xBB, 0xBB ; file 0085F8
db 0xB8, 0x88 ; 0085FC: provisional 68k cmp.l a0, d4
db 0x88, 0x8E, 0xEE, 0xE1 ; file 0085FE
db 0xFF, 0xFF ; 008602: provisional 68k dc.w $ffff
db 0x01, 0x05 ; 008604: provisional 68k btst.l d0, d5
db 0x18, 0xBC, 0xDD, 0xDC ; 008606: provisional 68k move.b #$dc, (a4)
db 0xC9, 0xE8, 0x05, 0x08 ; 00860A: provisional 68k muls.w $508(a0), d4
db 0x1B, 0xBB, 0xBB, 0xBB, 0x88, 0xE8, 0x88, 0xE9, 0x8E, 0xFF, 0xFF, 0x01, 0x13, 0xBF, 0xFB, 0x9A, 0xA9, 0xCA, 0xCE, 0xEC, 0x9C, 0xCE ; 00860E: provisional 68k move.b ([$88e90ef9, a3.l * 2], $8effff01), ([$fb9aa9ca], d1.w * 2, $ceec9cce)
db 0xE9, 0xC9, 0x9B, 0xBF ; file 008624
db 0xFF, 0xE9 ; 008628: provisional 68k dc.w $ffe9
db 0x99, 0xCC ; 00862A: provisional 68k suba.l a4, a4
db 0xCE, 0xE9, 0x98, 0xFF ; 00862C: provisional 68k mulu.w -$6701(a1), d7
db 0xFF, 0x01 ; 008630: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBF, 0xF9, 0x99, 0xCC, 0xCC, 0xCC, 0xAC, 0xEA ; 008632: provisional 68k move.b ([$99cd5300]), -$16(a1, a2.l)
db 0xDD, 0x9C ; 00863C: provisional 68k add.l d6, (a4)+
db 0xC9, 0xCE ; file 00863E
db 0xCD, 0xAC, 0xC9, 0x99 ; 008640: provisional 68k and.l d6, -$3667(a4)
db 0x9E, 0x99 ; 008644: provisional 68k sub.l (a1)+, d7
db 0x9F, 0xFF ; file 008646
db 0xFF, 0x01 ; 008648: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBB, 0xFF, 0x99, 0xCC, 0xC9, 0xCC, 0xAC, 0xCA ; 00864A: provisional 68k move.b ([$99cd5018]), -$36(a1, a2.l)
db 0xDD, 0xCD ; 008654: provisional 68k adda.l a5, a6
db 0xAC, 0xAC ; 008656: provisional 68k dc.w $acac
db 0xDD, 0xAC, 0xC9, 0x99 ; 008658: provisional 68k add.l d6, -$3667(a4)
db 0x9E, 0x99 ; 00865C: provisional 68k sub.l (a1)+, d7
db 0xEE, 0xFF ; file 00865E
db 0xFF, 0x01 ; 008660: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBB, 0xBB, 0xBF, 0x9C, 0xC9, 0xCC, 0xCC, 0x9C, 0xDA, 0x9D, 0xDD, 0xDC ; 008662: provisional 68k move.b ([$bf9d5030, a3.l * 2], $cc9cda9d), (invalid.w)
db 0xAA, 0xCC ; 008670: provisional 68k dc.w $aacc
db 0x99, 0x99 ; 008672: provisional 68k sub.l d4, (a1)+
db 0x9E, 0x9E ; 008674: provisional 68k sub.l (a6)+, d7
db 0xBF, 0xFF ; file 008676
db 0xFF, 0x01 ; 008678: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xF9, 0x99, 0x99, 0x9C, 0xCC, 0x9D, 0xDD, 0xDC ; 00867A: provisional 68k move.b ([$bbbc8015, a3.l * 2], $999ccc9d), (invalid.w)
db 0xCC, 0xC9 ; file 008688
db 0x99, 0xEE, 0xEE, 0xBB ; 00868A: provisional 68k suba.l -$1145(a6), a4
db 0xFB, 0xFF ; 00868E: provisional 68k dc.w $fbff
db 0xFF, 0x01 ; 008690: provisional 68k dc.w $ff01
db 0x13, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xFF, 0xFE, 0xE9, 0x9A, 0xDD, 0xD9 ; 008692: provisional 68k move.b ([$bbbc424f, a3.l * 2], $fffee99a), ([])
db 0xCC, 0xC9, 0xEE, 0xFF ; file 0086A0
db 0xFF, 0xFB ; 0086A4: provisional 68k dc.w $fffb
db 0xBB, 0xFF ; file 0086A6
db 0xFF, 0x02 ; 0086A8: provisional 68k dc.w $ff02
db 0x12, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBF, 0xFF, 0xFF, 0xFF ; 0086AA: provisional 68k move.b ([$bbbc4267, a3.l * 2], $bfffffff), (a1)
db 0xFF, 0xFF ; 0086B6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0086B8: provisional 68k dc.w $ffff
db 0xBB, 0xBB, 0xBB, 0xBB ; file 0086BA
db 0xFF, 0xFF ; 0086BE: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 0086C0: provisional 68k btst.l d1, (a1)
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBF, 0xFF ; file 0086C2
db 0xFF, 0xFF ; 0086CA: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0086CC: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0086CE: provisional 68k dc.w $ffff
db 0xBB, 0xBB, 0xBB, 0xBB ; file 0086D0
db 0xFF, 0xFF ; 0086D4: provisional 68k dc.w $ffff
db 0x04, 0x10, 0x1B, 0xBB ; 0086D6: provisional 68k subi.b #$bb, (a0)
db 0xBB, 0xBB, 0xBB, 0xBF ; file 0086DA
db 0xFF, 0xFF ; 0086DE: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0086E0: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0086E2: provisional 68k dc.w $ffff
db 0xFB, 0xBB ; 0086E4: provisional 68k dc.w $fbbb
db 0xBB, 0xBB, 0xB1, 0xFF ; file 0086E6
db 0xFF, 0x05 ; 0086EA: provisional 68k dc.w $ff05
db 0x0F, 0x1B ; 0086EC: provisional 68k btst.l d7, (a3)+
db 0xBB, 0xBB, 0xBB, 0xBF ; file 0086EE
db 0xFF, 0xFF ; 0086F2: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0086F4: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0086F6: provisional 68k dc.w $ffff
db 0xFB, 0xBB ; 0086F8: provisional 68k dc.w $fbbb
db 0xBB, 0xBB, 0xB1, 0xFF ; file 0086FA
db 0xFF, 0x07 ; 0086FE: provisional 68k dc.w $ff07
db 0x0C, 0xBB ; 008700: provisional 68k dc.w $cbb
db 0xBB, 0xBF ; file 008702
db 0xFF, 0xFF ; 008704: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008706: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008708: provisional 68k dc.w $ffff
db 0xFB, 0xBB ; 00870A: provisional 68k dc.w $fbbb
db 0xBB, 0xB1, 0xFF, 0xFF, 0x0A, 0x07, 0xBB, 0xBB ; 00870C: provisional 68k eor.l d5, ([$a07bbbb])
db 0xBB, 0xBB, 0xBB, 0xBB ; file 008714
db 0xBB, 0xB1, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF ; 008718: provisional 68k eor.l d5, ([$ffffffff])
db 0xFF, 0xFF ; 008720: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008722: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 008724: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x23, 0x00, 0x10 ; 008728: provisional 68k ori.b #$23, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 00872E
db 0x10, 0x10 ; 008732: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 008734: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 008736: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 008738: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 00873A: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 00873E: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 008742: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 008744: provisional 68k neg.w d4
db 0x40, 0x3C ; file 008746
db 0x34, 0xA4 ; 008748: provisional 68k move.w -(a4), (a2)
db 0x94, 0x78, 0x50, 0x00 ; 00874A: provisional 68k sub.w $5000.w, d2
db 0x00, 0x78, 0x00, 0x00, 0xD0, 0xBC ; 00874E: provisional 68k ori.w #$0, $d0bc.w
db 0x9C, 0xAC, 0x00, 0x00 ; 008754: provisional 68k sub.l $0(a4), d6
db 0x74, 0x68 ; 008758: provisional 68k moveq #$68, d2
db 0x58, 0xF8, 0xE8, 0xC8 ; 00875A: provisional 68k svc.b $e8c8.w
db 0xFF, 0xFF ; 00875E: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008760: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008762: provisional 68k dc.w $ffff
db 0x10, 0x04 ; 008764: provisional 68k move.b d4, d0
db 0xBB, 0xBB ; file 008766
db 0xBA, 0xBB, 0xA1, 0xFF, 0xFF, 0x0C, 0x08, 0x1B ; 008768: provisional 68k cmp.l ([$ff0c8f85]), d5
db 0xAB, 0xBB ; 008770: provisional 68k dc.w $abbb
db 0xBB, 0xAB, 0xBB, 0xBB ; 008772: provisional 68k eor.l d5, -$4445(a3)
db 0xBB, 0xA1 ; 008776: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 008778: provisional 68k dc.w $ffff
db 0x0A, 0x0A ; file 00877A
db 0x1B, 0xBB, 0xBB, 0xBB, 0xBB, 0xDD, 0xDD, 0xDB, 0xBB, 0xBB, 0xA1, 0xFF, 0xFF, 0x06, 0x0E, 0x18 ; 00877C: provisional 68k move.b ([$bbde6559, a3.l * 2], $bbbba1ff), ([a5], a7.l * 8, $e18)
db 0x88, 0xAA, 0xAB, 0xBB ; 00878C: provisional 68k or.l -$5445(a2), d4
db 0xBB, 0xDD ; 008790: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 008792: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008794: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB ; file 008796
db 0xBB, 0xA1 ; 008798: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 00879A: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 00879C: provisional 68k btst.l d0, (a3)
db 0x18, 0xAA, 0xAA, 0xAA ; 00879E: provisional 68k move.b -$5556(a2), (a4)
db 0xBB, 0xBA, 0xBB, 0xBB, 0xBB, 0xBB ; file 0087A2
db 0xBB, 0xDD ; 0087A8: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 0087AA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0087AC: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB ; file 0087AE
db 0xBB, 0xA1 ; 0087B0: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 0087B2: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 0087B4: provisional 68k btst.l d0, (a3)
db 0x18, 0xAA, 0xAA, 0xAA ; 0087B6: provisional 68k move.b -$5556(a2), (a4)
db 0xBB, 0xBA, 0xBB, 0xBB, 0xBB, 0xBB ; file 0087BA
db 0xBB, 0xDD ; 0087C0: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 0087C2: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0087C4: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB ; file 0087C6
db 0xBB, 0xA1 ; 0087C8: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 0087CA: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 0087CC: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 0087CE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0087D0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0087D2: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB ; file 0087D4
db 0xBB, 0xDD ; 0087D8: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 0087DA: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 0087DC: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB ; file 0087DE
db 0xBA, 0x81 ; 0087E0: provisional 68k cmp.l d1, d5
db 0xFF, 0xFF ; 0087E2: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 0087E4: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 0087E6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0087E8: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0087EA: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB ; file 0087EC
db 0xBB, 0xDD ; 0087F0: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 0087F2: provisional 68k adda.l (a5)+, a6
db 0xDB, 0xBB, 0x88, 0x8E ; file 0087F4
db 0xEE, 0x81 ; 0087F8: provisional 68k asr.l #$7, d1
db 0xFF, 0xFF ; 0087FA: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 0087FC: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 0087FE: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008800: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008802: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB ; file 008804
db 0xEE, 0x99 ; 00880A: provisional 68k ror.l #$7, d1
db 0xE9, 0x99 ; 00880C: provisional 68k rol.l #$4, d1
db 0x99, 0x99 ; 00880E: provisional 68k sub.l d4, (a1)+
db 0x99, 0x81 ; 008810: provisional 68k subx.l d1, d4
db 0xFF, 0xFF ; 008812: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 008814: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 008816: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008818: provisional 68k dc.w $aaaa
db 0xA8, 0xAA ; 00881A: provisional 68k dc.w $a8aa
db 0xEE, 0x88 ; 00881C: provisional 68k lsr.l #$7, d0
db 0xEE, 0x8E ; 00881E: provisional 68k lsr.l #$7, d6
db 0xE9, 0x9E ; 008820: provisional 68k rol.l #$4, d6
db 0x9E, 0x99 ; 008822: provisional 68k sub.l (a1)+, d7
db 0xCE, 0x99 ; 008824: provisional 68k and.l (a1)+, d7
db 0x9E, 0xC9 ; 008826: provisional 68k suba.w a1, a7
db 0x99, 0x81 ; 008828: provisional 68k subx.l d1, d4
db 0xFF, 0xFF ; 00882A: provisional 68k dc.w $ffff
db 0x01, 0x12 ; 00882C: provisional 68k btst.l d0, (a2)
db 0x1A, 0xAA, 0xA8, 0x88 ; 00882E: provisional 68k move.b -$5778(a2), (a5)
db 0x88, 0xE8, 0x88, 0xE8 ; 008832: provisional 68k divu.w -$7718(a0), d4
db 0xE9, 0xEE ; file 008836
db 0xEE, 0x99 ; 008838: provisional 68k ror.l #$7, d1
db 0x9E, 0x99 ; 00883A: provisional 68k sub.l (a1)+, d7
db 0x98, 0x99 ; 00883C: provisional 68k sub.l (a1)+, d4
db 0x98, 0x9E ; 00883E: provisional 68k sub.l (a6)+, d4
db 0xEE, 0xFF ; file 008840
db 0xFF, 0x02 ; 008842: provisional 68k dc.w $ff02
db 0x10, 0x18 ; 008844: provisional 68k move.b (a0)+, d0
db 0x88, 0x88 ; file 008846
db 0x88, 0xE8, 0x88, 0xE8 ; 008848: provisional 68k divu.w -$7718(a0), d4
db 0x8E, 0x98 ; 00884C: provisional 68k or.l (a0)+, d7
db 0x88, 0x99 ; 00884E: provisional 68k or.l (a1)+, d4
db 0x98, 0x99 ; 008850: provisional 68k sub.l (a1)+, d4
db 0x98, 0x9E ; 008852: provisional 68k sub.l (a6)+, d4
db 0xEE, 0xE1 ; file 008854
db 0xFF, 0xFF ; 008856: provisional 68k dc.w $ffff
db 0x02, 0x0E, 0x18, 0x88, 0x88, 0x88 ; file 008858
db 0xE8, 0x88 ; 00885E: provisional 68k lsr.l #$4, d0
db 0xE8, 0x8E ; 008860: provisional 68k lsr.l #$4, d6
db 0x98, 0x88 ; 008862: provisional 68k sub.l a0, d4
db 0x99, 0x88 ; 008864: provisional 68k subx.l -(a0), -(a4)
db 0x88, 0xA8, 0x81, 0xFF ; 008866: provisional 68k or.l -$7e01(a0), d4
db 0xFF, 0x03 ; 00886A: provisional 68k dc.w $ff03
db 0x0D, 0x88, 0x88, 0x88 ; 00886C: provisional 68k movep.w d6, -$7778(a0)
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x8E ; file 008870
db 0xEA, 0xAA ; 008876: provisional 68k lsr.l d5, d2
db 0xAA, 0xA8 ; 008878: provisional 68k dc.w $aaa8
db 0x88, 0xFF ; file 00887A
db 0xFF, 0x03 ; 00887C: provisional 68k dc.w $ff03
db 0x06, 0x18, 0x88, 0x88 ; 00887E: provisional 68k addi.b #$88, (a0)+
db 0x88, 0x88 ; file 008882
db 0x88, 0xE1 ; 008884: provisional 68k divu.w -(a1), d4
db 0x02, 0x05, 0x1A, 0xAA ; 008886: provisional 68k andi.b #$aa, d5
db 0xAA, 0xA8 ; 00888A: provisional 68k dc.w $aaa8
db 0x99, 0x81 ; 00888C: provisional 68k subx.l d1, d4
db 0xFF, 0xFF ; 00888E: provisional 68k dc.w $ffff
db 0x02, 0x02, 0xEC, 0xC9 ; 008890: provisional 68k andi.b #$c9, d2
db 0x98, 0x07 ; 008894: provisional 68k sub.b d7, d4
db 0x05, 0x1A ; 008896: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 008898: provisional 68k dc.w $aaaa
db 0xA8, 0xEE ; 00889A: provisional 68k dc.w $a8ee
db 0x88, 0xFF ; file 00889C
db 0xFF, 0x01 ; 00889E: provisional 68k dc.w $ff01
db 0x05, 0xBD, 0xD9, 0xFF ; file 0088A0
db 0xFE, 0xE9 ; 0088A4: provisional 68k dc.w $fee9
db 0xE1, 0x05 ; 0088A6: provisional 68k asl.b #$8, d5
db 0x06, 0x1A, 0xAA, 0xAA ; 0088A8: provisional 68k addi.b #$aa, (a2)+
db 0xAA, 0x88 ; 0088AC: provisional 68k dc.w $aa88
db 0x88, 0x81 ; 0088AE: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 0088B0: provisional 68k dc.w $ffff
db 0x00, 0x08 ; file 0088B2
db 0x1A, 0xAA, 0xBB, 0x9F ; 0088B4: provisional 68k move.b -$4461(a2), (a5)
db 0xF9, 0xCF ; 0088B8: provisional 68k dc.w $f9cf
db 0xF9, 0xEE ; 0088BA: provisional 68k dc.w $f9ee
db 0xE1, 0x04 ; 0088BC: provisional 68k asl.b #$8, d4
db 0x06, 0xAA, 0xAA, 0xAA, 0xAA, 0x88, 0x88, 0x88 ; 0088BE: provisional 68k addi.l #$aaaaaa88, -$7778(a2)
db 0xFF, 0xFF ; 0088C6: provisional 68k dc.w $ffff
db 0x00, 0x09 ; file 0088C8
db 0x1A, 0xAA, 0xAA, 0xB9 ; 0088CA: provisional 68k move.b -$5547(a2), (a5)
db 0xF9, 0xCF ; 0088CE: provisional 68k dc.w $f9cf
db 0xCE, 0xFF ; file 0088D0
db 0x99, 0xE9, 0x03, 0x07 ; 0088D2: provisional 68k suba.l $307(a1), a4
db 0x1B, 0xAA, 0xAA, 0xAA, 0xA8, 0x88 ; 0088D6: provisional 68k move.b -$5556(a2), -$78(a5, a2.l)
db 0x99, 0xE1 ; 0088DC: provisional 68k suba.l -(a1), a4
db 0xFF, 0xFF ; 0088DE: provisional 68k dc.w $ffff
db 0x00, 0x0B ; file 0088E0
db 0x1A, 0xAA, 0xAA, 0xBA ; 0088E2: provisional 68k move.b -$5546(a2), (a5)
db 0x99, 0xCF ; 0088E6: provisional 68k suba.l a7, a4
db 0xC9, 0xFF ; file 0088E8
db 0xFF, 0x99 ; 0088EA: provisional 68k dc.w $ff99
db 0x99, 0x99 ; 0088EC: provisional 68k sub.l d4, (a1)+
db 0x02, 0x06, 0xAA, 0xAA ; 0088EE: provisional 68k andi.b #$aa, d6
db 0xAA, 0xAE ; 0088F2: provisional 68k dc.w $aaae
db 0x98, 0x99 ; 0088F4: provisional 68k sub.l (a1)+, d4
db 0xE1, 0xFF ; file 0088F6
db 0xFF, 0x00 ; 0088F8: provisional 68k dc.w $ff00
db 0x14, 0x1A ; 0088FA: provisional 68k move.b (a2)+, d2
db 0xAA, 0xAA ; 0088FC: provisional 68k dc.w $aaaa
db 0xAB, 0xB9 ; 0088FE: provisional 68k dc.w $abb9
db 0xCC, 0xC9 ; file 008900
db 0xCC, 0xFC, 0x9F, 0xFC ; 008902: provisional 68k mulu.w #$9ffc, d6
db 0xEC, 0xEE, 0xE9, 0xEE ; file 008906
db 0xE9, 0x99 ; 00890A: provisional 68k rol.l #$4, d1
db 0x99, 0x9E ; 00890C: provisional 68k sub.l d4, (a6)+
db 0xE9, 0xE1 ; file 00890E
db 0xFF, 0xFF ; 008910: provisional 68k dc.w $ffff
db 0x00, 0x14, 0x1A, 0xAA ; 008912: provisional 68k ori.b #$aa, (a4)
db 0xAA, 0xAA ; 008916: provisional 68k dc.w $aaaa
db 0xAA, 0xBD ; 008918: provisional 68k dc.w $aabd
db 0x99, 0xCC ; 00891A: provisional 68k suba.l a4, a4
db 0xCC, 0x9F ; 00891C: provisional 68k and.l (a7)+, d6
db 0xFF, 0xFF ; 00891E: provisional 68k dc.w $ffff
db 0xFC, 0xFC ; 008920: provisional 68k dc.w $fcfc
db 0xFF, 0xE9 ; 008922: provisional 68k dc.w $ffe9
db 0x9E, 0x99 ; 008924: provisional 68k sub.l (a1)+, d7
db 0x9E, 0xE9, 0xA1, 0xFF ; 008926: provisional 68k suba.w -$5e01(a1), a7
db 0xFF, 0x01 ; 00892A: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 00892C: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 00892E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008930: provisional 68k dc.w $aaaa
db 0xBB, 0x99 ; 008932: provisional 68k eor.l d5, (a1)+
db 0x99, 0x9C ; 008934: provisional 68k sub.l d4, (a4)+
db 0xCC, 0x9F ; 008936: provisional 68k and.l (a7)+, d6
db 0xFF, 0x9C ; 008938: provisional 68k dc.w $ff9c
db 0xCC, 0xE9, 0x9E, 0xE9 ; 00893A: provisional 68k mulu.w -$6117(a1), d6
db 0x8E, 0xEB, 0xA1, 0xFF ; 00893E: provisional 68k divu.w -$5e01(a3), d7
db 0xFF, 0x02 ; 008942: provisional 68k dc.w $ff02
db 0x12, 0x1A ; 008944: provisional 68k move.b (a2)+, d1
db 0xAA, 0xAA ; 008946: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008948: provisional 68k dc.w $aaaa
db 0xAA, 0xBD ; 00894A: provisional 68k dc.w $aabd
db 0xE9, 0x9C ; 00894C: provisional 68k rol.l #$4, d4
db 0xEF, 0xFF ; file 00894E
db 0x9C, 0xCC ; 008950: provisional 68k suba.w a4, a6
db 0xEC, 0xEE, 0x88, 0x88 ; file 008952
db 0xBB, 0xA1 ; 008956: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 008958: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 00895A: provisional 68k btst.l d1, (a1)
db 0xAA, 0xAA ; 00895C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00895E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008960: provisional 68k dc.w $aaaa
db 0xAB, 0xBE ; 008962: provisional 68k dc.w $abbe
db 0xE9, 0xCC ; file 008964
db 0x99, 0x99 ; 008966: provisional 68k sub.l d4, (a1)+
db 0xEE, 0x8B ; 008968: provisional 68k lsr.l #$7, d3
db 0xBB, 0xBB ; file 00896A
db 0xAA, 0xA1 ; 00896C: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 00896E: provisional 68k dc.w $ffff
db 0x04, 0x10, 0xAA, 0xAA ; 008970: provisional 68k subi.b #$aa, (a0)
db 0xAA, 0xAA ; 008974: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008976: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008978: provisional 68k dc.w $aaaa
db 0xAA, 0xBB ; 00897A: provisional 68k dc.w $aabb
db 0xBB, 0xBB ; file 00897C
db 0xBA, 0xAA, 0xAA, 0xAA ; 00897E: provisional 68k cmp.l -$5556(a2), d5
db 0xA1, 0xFF ; 008982: provisional 68k dc.w $a1ff
db 0xFF, 0x04 ; 008984: provisional 68k dc.w $ff04
db 0x10, 0x1A ; 008986: provisional 68k move.b (a2)+, d0
db 0xAA, 0xAA ; 008988: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00898A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00898C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 00898E: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBA ; file 008990
db 0xAA, 0xAA ; 008994: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 008996: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 008998: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0x1A, 0xAA ; 00899A: provisional 68k movep.w $1aaa(a7), d2
db 0xAA, 0xAA ; 00899E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089A0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089A2: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089A4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089A6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089A8: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 0089AA: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 0089AC: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0xAA, 0xAA ; 0089AE: provisional 68k movep.w -$5556(a4), d3
db 0xAA, 0xAA ; 0089B2: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089B4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089B6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089B8: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089BA: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 0089BC: provisional 68k dc.w $aaff
db 0xFF, 0x09 ; 0089BE: provisional 68k dc.w $ff09
db 0x09, 0xAA, 0xAA, 0xAA ; 0089C0: provisional 68k bclr.b d4, -$5556(a2)
db 0xAA, 0xAA ; 0089C4: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089C6: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 0089C8: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 0089CA: provisional 68k dc.w $aaff
db 0xFF, 0x0B ; 0089CC: provisional 68k dc.w $ff0b
db 0x06, 0x1A, 0xAA, 0xAA ; 0089CE: provisional 68k addi.b #$aa, (a2)+
db 0xAA, 0xAA ; 0089D2: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 0089D4: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 0089D6: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0089D8: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 0089DA: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 0089DC: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x23, 0x00, 0x10 ; 0089E0: provisional 68k ori.b #$23, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 0089E6
db 0x10, 0x10 ; 0089EA: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 0089EC: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 0089EE: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 0089F0: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 0089F2: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 0089F6: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 0089FA: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 0089FC: provisional 68k neg.w d4
db 0x40, 0x3C ; file 0089FE
db 0x34, 0xAC, 0x9C, 0x7C ; 008A00: provisional 68k move.w -$6384(a4), (a2)
db 0x5C, 0x00 ; 008A04: provisional 68k addq.b #$6, d0
db 0x00, 0xD0 ; file 008A06
db 0xBC, 0x98 ; 008A08: provisional 68k cmp.l (a0)+, d6
db 0xE8, 0xD4 ; file 008A0A
db 0xB0, 0x98 ; 008A0C: provisional 68k cmp.l (a0)+, d0
db 0x00, 0x00, 0x70, 0x68 ; 008A0E: provisional 68k ori.b #$68, d0
db 0x54, 0xFC ; 008A12: provisional 68k dc.w $54fc
db 0xF4, 0xD4 ; 008A14: provisional 68k dc.w $f4d4
db 0xFF, 0xFF ; 008A16: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008A18: provisional 68k dc.w $ffff
db 0x10, 0x03 ; 008A1A: provisional 68k move.b d3, d0
db 0x1A, 0xAA, 0xAA, 0xAA ; 008A1C: provisional 68k move.b -$5556(a2), (a5)
db 0xFF, 0xFF ; 008A20: provisional 68k dc.w $ffff
db 0x0D, 0x06 ; 008A22: provisional 68k btst.l d6, d6
db 0x1A, 0xAA, 0xDD, 0xDD ; 008A24: provisional 68k move.b -$2223(a2), (a5)
db 0xDD, 0xDD ; 008A28: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xFF ; file 008A2A
db 0xFF, 0x0A ; 008A2C: provisional 68k dc.w $ff0a
db 0x0A, 0x1A, 0xAA, 0xDD ; 008A2E: provisional 68k eori.b #$dd, (a2)+
db 0xDD, 0xDD ; 008A32: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A34: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A36: provisional 68k adda.l (a5)+, a6
db 0xDA, 0xE1 ; 008A38: provisional 68k adda.w -(a1), a5
db 0xFF, 0xFF ; 008A3A: provisional 68k dc.w $ffff
db 0x08, 0x0C ; file 008A3C
db 0x1A, 0xAD, 0xDD, 0xDD ; 008A3E: provisional 68k move.b -$2223(a5), (a5)
db 0xDD, 0xDD ; 008A42: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A44: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A46: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 008A48: provisional 68k adda.l (a2)+, a6
db 0xA1, 0xFF ; 008A4A: provisional 68k dc.w $a1ff
db 0xFF, 0x05 ; 008A4C: provisional 68k dc.w $ff05
db 0x0F, 0x1A ; 008A4E: provisional 68k btst.l d7, (a2)+
db 0xAA, 0xAA ; 008A50: provisional 68k dc.w $aaaa
db 0xDD, 0xDD ; 008A52: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A54: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A56: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A58: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A5A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xAA, 0xA1, 0xFF ; 008A5C: provisional 68k add.l d6, -$5e01(a2)
db 0xFF, 0x03 ; 008A60: provisional 68k dc.w $ff03
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 008A62: provisional 68k move.b -$5556(a2), -$56(a0, a2.l)
db 0xDD, 0xDD ; 008A68: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A6A: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A6C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A6E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0x8E ; 008A70: provisional 68k addx.l -(a6), -(a6)
db 0xEE, 0xEE, 0x81, 0xFF ; file 008A72
db 0xFF, 0x02 ; 008A76: provisional 68k dc.w $ff02
db 0x12, 0xAA, 0x8A, 0xAA ; 008A78: provisional 68k move.b -$7556(a2), (a1)
db 0xAA, 0xAA ; 008A7C: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 008A7E: provisional 68k dc.w $aadd
db 0xDD, 0xDD ; 008A80: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A82: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A84: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A86: provisional 68k adda.l (a5)+, a6
db 0x8E, 0xEE, 0xEE, 0x81 ; 008A88: provisional 68k divu.w -$117f(a6), d7
db 0xFF, 0xFF ; 008A8C: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 008A8E: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 008A90: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008A92: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008A94: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 008A96: provisional 68k dc.w $aadd
db 0xDD, 0xDD ; 008A98: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008A9A: provisional 68k adda.l (a5)+, a6
db 0xD9, 0xEE, 0xE9, 0x99 ; 008A9C: provisional 68k adda.l -$1667(a6), a4
db 0x9E, 0x99 ; 008AA0: provisional 68k sub.l (a1)+, d7
db 0x99, 0x81 ; 008AA2: provisional 68k subx.l d1, d4
db 0xFF, 0xFF ; 008AA4: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 008AA6: provisional 68k btst.l d0, (a3)
db 0xAA, 0xAA ; 008AA8: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008AAA: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008AAC: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 008AAE: provisional 68k dc.w $aadd
db 0xDD, 0xDE ; 008AB0: provisional 68k adda.l (a6)+, a6
db 0xE9, 0xEE ; file 008AB2
db 0x9E, 0xBB, 0xBE, 0xBB ; 008AB4: provisional 68k sub.l $8a71(pc, a3.l), d7
db 0xBE, 0xB9, 0x9E, 0x81, 0xFF, 0xFF ; 008AB8: provisional 68k cmp.l $9e81ffff.l, d7
db 0x01, 0x12 ; 008ABE: provisional 68k btst.l d0, (a2)
db 0xAA, 0xAA ; 008AC0: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008AC2: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008AC4: provisional 68k dc.w $aaaa
db 0xEE, 0xAE ; 008AC6: provisional 68k lsr.l d7, d6
db 0x9E, 0xEE, 0xEE, 0x99 ; 008AC8: provisional 68k suba.w -$1167(a6), a7
db 0x9E, 0xBB, 0x9E, 0x99 ; 008ACC: provisional 68k sub.l $8a67(pc, a1.l), d7
db 0xEE, 0x99 ; 008AD0: provisional 68k ror.l #$7, d1
db 0x8E, 0xFF ; file 008AD2
db 0xFF, 0x01 ; 008AD4: provisional 68k dc.w $ff01
db 0x12, 0x8A ; file 008AD6
db 0xAA, 0xAA ; 008AD8: provisional 68k dc.w $aaaa
db 0xAA, 0x8E ; 008ADA: provisional 68k dc.w $aa8e
db 0xE8, 0xEE, 0xEE, 0xE9, 0xEE, 0xEE ; file 008ADC
db 0x99, 0xEE, 0x99, 0x98 ; 008AE2: provisional 68k suba.l -$6668(a6), a4
db 0x99, 0xEE, 0xE8, 0xE1 ; 008AE6: provisional 68k suba.l -$171f(a6), a4
db 0xFF, 0xFF ; 008AEA: provisional 68k dc.w $ffff
db 0x01, 0x10 ; 008AEC: provisional 68k btst.l d0, (a0)
db 0x8A, 0xA8, 0x88, 0x88 ; 008AEE: provisional 68k or.l -$7778(a0), d5
db 0x8E, 0xE8, 0xEE, 0xE8 ; 008AF2: provisional 68k divu.w -$1118(a0), d7
db 0xE9, 0xEE ; file 008AF6
db 0xE8, 0x9E ; 008AF8: provisional 68k ror.l #$4, d6
db 0xE8, 0xEE, 0x88, 0x88, 0x88, 0xFF ; file 008AFA
db 0xFF, 0x02 ; 008B00: provisional 68k dc.w $ff02
db 0x0E, 0x88, 0x88, 0x88 ; file 008B02
db 0x88, 0xE8, 0x88, 0xEE ; 008B06: provisional 68k divu.w -$7712(a0), d4
db 0xEE, 0xEE, 0xEE, 0xE8, 0x88, 0x88 ; file 008B0A
db 0x88, 0x81 ; 008B10: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 008B12: provisional 68k dc.w $ffff
db 0x02, 0x0E, 0x88, 0x88, 0x88, 0x88 ; file 008B14
db 0xE8, 0x88 ; 008B1A: provisional 68k lsr.l #$4, d0
db 0xEE, 0xEE, 0xEE, 0xE1, 0x18, 0x88, 0x88, 0x88, 0x81, 0xFF ; file 008B1C
db 0xFF, 0x02 ; 008B26: provisional 68k dc.w $ff02
db 0x07, 0x18 ; 008B28: provisional 68k btst.l d3, (a0)+
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 008B2A
db 0xE1, 0x02 ; 008B30: provisional 68k asl.b #$8, d2
db 0x04, 0x1A, 0xAA, 0xAA ; 008B32: provisional 68k subi.b #$aa, (a2)+
db 0xAE, 0xE8 ; 008B36: provisional 68k dc.w $aee8
db 0xFF, 0xFF ; 008B38: provisional 68k dc.w $ffff
db 0x03, 0x04 ; 008B3A: provisional 68k btst.l d1, d4
db 0x88, 0x88 ; file 008B3C
db 0xE8, 0x88 ; 008B3E: provisional 68k lsr.l #$4, d0
db 0x88, 0x04 ; 008B40: provisional 68k or.b d4, d4
db 0x05, 0x1A ; 008B42: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 008B44: provisional 68k dc.w $aaaa
db 0xAE, 0x9E ; 008B46: provisional 68k dc.w $ae9e
db 0xE1, 0xFF ; file 008B48
db 0xFF, 0x01 ; 008B4A: provisional 68k dc.w $ff01
db 0x03, 0xDD ; 008B4C: provisional 68k bset.b d1, (a5)+
db 0x99, 0xC9 ; 008B4E: provisional 68k suba.l a1, a4
db 0x9E, 0x07 ; 008B50: provisional 68k sub.b d7, d7
db 0x05, 0x1A ; 008B52: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 008B54: provisional 68k dc.w $aaaa
db 0xA8, 0xEE ; 008B56: provisional 68k dc.w $a8ee
db 0xEE, 0xFF ; file 008B58
db 0xFF, 0x00 ; 008B5A: provisional 68k dc.w $ff00
db 0x06, 0x88 ; file 008B5C
db 0xAD, 0xDE ; 008B5E: provisional 68k dc.w $adde
db 0xFF, 0xF9 ; 008B60: provisional 68k dc.w $fff9
db 0xB9, 0x91 ; 008B62: provisional 68k eor.l d4, (a1)
db 0x05, 0x06 ; 008B64: provisional 68k btst.l d2, d6
db 0x1A, 0xAA, 0xAA, 0xAA ; 008B66: provisional 68k move.b -$5556(a2), (a5)
db 0xE8, 0xE8, 0xE1, 0xFF ; file 008B6A
db 0xFF, 0x00 ; 008B6E: provisional 68k dc.w $ff00
db 0x06, 0x88 ; file 008B70
db 0xAA, 0xDD ; 008B72: provisional 68k dc.w $aadd
db 0xBC, 0xC9 ; 008B74: provisional 68k cmpa.w a1, a6
db 0xCF, 0x9E ; 008B76: provisional 68k and.l d7, (a6)+
db 0x06, 0x06, 0x1A, 0xAA ; 008B78: provisional 68k addi.b #$aa, d6
db 0xAA, 0x88 ; 008B7C: provisional 68k dc.w $aa88
db 0xEE, 0x8E ; 008B7E: provisional 68k lsr.l #$7, d6
db 0xE1, 0xFF ; file 008B80
db 0xFF, 0x00 ; 008B82: provisional 68k dc.w $ff00
db 0x08, 0xAA ; file 008B84
db 0xAA, 0xAA ; 008B86: provisional 68k dc.w $aaaa
db 0xDB, 0xB9, 0xCF, 0xC9, 0x99, 0x99 ; 008B88: provisional 68k add.l d5, $cfc99999.l
db 0x05, 0x05 ; 008B8E: provisional 68k btst.l d2, d5
db 0xAA, 0xAA ; 008B90: provisional 68k dc.w $aaaa
db 0x88, 0xEE, 0xE8, 0xBE ; 008B92: provisional 68k divu.w -$1742(a6), d4
db 0xFF, 0xFF ; 008B96: provisional 68k dc.w $ffff
db 0x00, 0x09 ; file 008B98
db 0xAA, 0xAA ; 008B9A: provisional 68k dc.w $aaaa
db 0xAA, 0xDB ; 008B9C: provisional 68k dc.w $aadb
db 0xB9, 0xCF ; 008B9E: provisional 68k cmpa.l a7, a4
db 0xC9, 0xCC ; file 008BA0
db 0xBE, 0xB1, 0x04, 0x05 ; 008BA2: provisional 68k cmp.l $5(a1, d0.w), d7
db 0x1A, 0xAA, 0x88, 0xEE ; 008BA6: provisional 68k move.b -$7712(a2), (a5)
db 0xE8, 0xB9 ; 008BAA: provisional 68k ror.l d4, d1
db 0xFF, 0xFF ; 008BAC: provisional 68k dc.w $ffff
db 0x00, 0x0A ; file 008BAE
db 0x1A, 0xAA, 0xAA, 0xAD ; 008BB0: provisional 68k move.b -$5553(a2), (a5)
db 0xD9, 0xBB ; file 008BB4
db 0xB9, 0xCC ; 008BB6: provisional 68k cmpa.l a4, a4
db 0xF9, 0xB9 ; 008BB8: provisional 68k dc.w $f9b9
db 0x91, 0x04 ; 008BBA: provisional 68k subx.b d4, d0
db 0x05, 0xAA, 0x88, 0x8E ; 008BBC: provisional 68k bclr.b d2, -$7772(a2)
db 0xE9, 0xB9 ; 008BC0: provisional 68k rol.l d4, d1
db 0xE1, 0xFF ; file 008BC2
db 0xFF, 0x01 ; 008BC4: provisional 68k dc.w $ff01
db 0x0B, 0xAA, 0xAA, 0xAA ; 008BC6: provisional 68k bclr.b d5, -$5556(a2)
db 0xAA, 0x99 ; 008BCA: provisional 68k dc.w $aa99
db 0x99, 0xBB ; file 008BCC
db 0xF9, 0xFF ; 008BCE: provisional 68k dc.w $f9ff
db 0x99, 0xE9, 0x99, 0x02 ; 008BD0: provisional 68k suba.l -$66fe(a1), a4
db 0x05, 0x1A ; 008BD4: provisional 68k btst.l d2, (a2)+
db 0x88, 0x8E ; file 008BD6
db 0x9E, 0x9E ; 008BD8: provisional 68k sub.l (a6)+, d7
db 0xD1, 0xFF ; file 008BDA
db 0xFF, 0x01 ; 008BDC: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 008BDE: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 008BE0: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 008BE2: provisional 68k dc.w $aaad
db 0xE9, 0x99 ; 008BE4: provisional 68k rol.l #$4, d1
db 0xBE, 0xBF ; file 008BE6
db 0xCB, 0xEF, 0x99, 0x99 ; 008BE8: provisional 68k muls.w -$6667(a7), d5
db 0x99, 0xB9, 0x9E, 0x9E, 0xEE, 0xEE ; 008BEC: provisional 68k sub.l d4, $9e9eeeee.l
db 0xE1, 0xFF ; file 008BF2
db 0xFF, 0x02 ; 008BF4: provisional 68k dc.w $ff02
db 0x12, 0xAA, 0xAA, 0xAA ; 008BF6: provisional 68k move.b -$5556(a2), (a1)
db 0xAA, 0xAD ; 008BFA: provisional 68k dc.w $aaad
db 0xDD, 0x9E ; 008BFC: provisional 68k add.l d6, (a6)+
db 0x9B, 0xBB ; file 008BFE
db 0xBF, 0xCC ; 008C00: provisional 68k cmpa.l a4, a7
db 0xEB, 0x99 ; 008C02: provisional 68k rol.l #$5, d1
db 0xE9, 0xEE ; file 008C04
db 0x98, 0x8E ; 008C06: provisional 68k sub.l a6, d4
db 0xEE, 0xD1 ; file 008C08
db 0xFF, 0xFF ; 008C0A: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 008C0C: provisional 68k btst.l d1, (a1)
db 0xAA, 0xAA ; 008C0E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C10: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 008C12: provisional 68k dc.w $aaad
db 0x99, 0x9B ; 008C14: provisional 68k sub.l d4, (a3)+
db 0xEC, 0xCC ; file 008C16
db 0x9B, 0x99 ; 008C18: provisional 68k sub.l d5, (a1)+
db 0xEE, 0xEE, 0x88, 0x8E ; file 008C1A
db 0xEE, 0x81 ; 008C1E: provisional 68k asr.l #$7, d1
db 0xFF, 0xFF ; 008C20: provisional 68k dc.w $ffff
db 0x03, 0x10 ; 008C22: provisional 68k btst.l d1, (a0)
db 0x1A, 0xAA, 0xAA, 0xAA ; 008C24: provisional 68k move.b -$5556(a2), (a5)
db 0xAA, 0xAA ; 008C28: provisional 68k dc.w $aaaa
db 0xAD, 0xEE ; 008C2A: provisional 68k dc.w $adee
db 0xE9, 0xCB ; file 008C2C
db 0xE9, 0x99 ; 008C2E: provisional 68k rol.l #$4, d1
db 0xEE, 0xE8 ; file 008C30
db 0x8A, 0xAD, 0xDA, 0xFF ; 008C32: provisional 68k or.l -$2501(a5), d5
db 0xFF, 0x04 ; 008C36: provisional 68k dc.w $ff04
db 0x0F, 0x1A ; 008C38: provisional 68k btst.l d7, (a2)+
db 0xAA, 0xAA ; 008C3A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C3C: provisional 68k dc.w $aaaa
db 0xAA, 0xDD ; 008C3E: provisional 68k dc.w $aadd
db 0xE9, 0xCB ; file 008C40
db 0xE9, 0x99 ; 008C42: provisional 68k rol.l #$4, d1
db 0xEE, 0xE8 ; file 008C44
db 0x8A, 0xAD, 0xAA, 0xFF ; 008C46: provisional 68k or.l -$5501(a5), d5
db 0xFF, 0x05 ; 008C4A: provisional 68k dc.w $ff05
db 0x0E, 0xAA ; file 008C4C
db 0xAA, 0xAA ; 008C4E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C50: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C52: provisional 68k dc.w $aaaa
db 0xAD, 0xDD ; 008C54: provisional 68k dc.w $addd
db 0xDD, 0xDD ; 008C56: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDA ; 008C58: provisional 68k adda.l (a2)+, a6
db 0xAA, 0xAA ; 008C5A: provisional 68k dc.w $aaaa
db 0xFF, 0xFF ; 008C5C: provisional 68k dc.w $ffff
db 0x06, 0x0D ; file 008C5E
db 0xAA, 0xAA ; 008C60: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C62: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C64: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C66: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C68: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C6A: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 008C6C: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 008C6E: provisional 68k dc.w $ffff
db 0x07, 0x0C, 0x1A, 0xAA ; 008C70: provisional 68k movep.w $1aaa(a4), d3
db 0xAA, 0xAA ; 008C74: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C76: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C78: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C7A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C7C: provisional 68k dc.w $aaaa
db 0xA1, 0xFF ; 008C7E: provisional 68k dc.w $a1ff
db 0xFF, 0x09 ; 008C80: provisional 68k dc.w $ff09
db 0x09, 0xAA, 0xAA, 0xAA ; 008C82: provisional 68k bclr.b d4, -$5556(a2)
db 0xAA, 0xAA ; 008C86: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C88: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008C8A: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 008C8C: provisional 68k dc.w $aaff
db 0xFF, 0x0B ; 008C8E: provisional 68k dc.w $ff0b
db 0x06, 0x1A, 0xAA, 0xAA ; 008C90: provisional 68k addi.b #$aa, (a2)+
db 0xAA, 0xAA ; 008C94: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 008C96: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 008C98: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008C9A: provisional 68k dc.w $ffff
db 0x00, 0x00, 0x00, 0x00 ; 008C9C: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x00, 0x23, 0x00, 0x10 ; 008CA0: provisional 68k ori.b #$23, $10(a4)
db 0x08, 0x08, 0x08, 0x10 ; file 008CA6
db 0x10, 0x10 ; 008CAA: provisional 68k move.b (a0), d0
db 0x16, 0x16 ; 008CAC: provisional 68k move.b (a6), d3
db 0x16, 0x20 ; 008CAE: provisional 68k move.b -(a0), d3
db 0x20, 0x20 ; 008CB0: provisional 68k move.l -(a0), d0
db 0x2A, 0x2A, 0x2A, 0x30 ; 008CB2: provisional 68k move.l $2a30(a2), d5
db 0x30, 0x30, 0x38, 0x38 ; 008CB6: provisional 68k move.w $38(a0, d3.l), d0
db 0x38, 0x44 ; 008CBA: provisional 68k movea.w d4, a4
db 0x44, 0x44 ; 008CBC: provisional 68k neg.w d4
db 0x5C, 0x54 ; 008CBE: provisional 68k addq.w #$6, (a4)
db 0x48, 0xB4, 0xA4, 0x84, 0x50, 0x00 ; 008CC0: provisional 68k movem.w d2/d7/a2/a5/a7, (a4, d5.w)
db 0x00, 0x7C, 0x00, 0x00 ; 008CC6: provisional 68k ori.w #$0, sr
db 0xF8, 0xE8 ; 008CCA: provisional 68k dc.w $f8e8
db 0xC4, 0xB0, 0x00, 0x00 ; 008CCC: provisional 68k and.l (a0, d0.w), d2
db 0x8C, 0x7C, 0x68, 0xD8 ; 008CD0: provisional 68k or.w #$68d8, d6
db 0xC4, 0xA0 ; 008CD4: provisional 68k and.l -(a0), d2
db 0xFF, 0xFF ; 008CD6: provisional 68k dc.w $ffff
db 0x11, 0x02 ; 008CD8: provisional 68k move.b d2, -(a0)
db 0xBB, 0xBA ; file 008CDA
db 0xA1, 0xFF ; 008CDC: provisional 68k dc.w $a1ff
db 0xFF, 0x0E ; 008CDE: provisional 68k dc.w $ff0e
db 0x05, 0xBB, 0xBB, 0xBD ; file 008CE0
db 0xDD, 0xDB ; 008CE4: provisional 68k adda.l (a3)+, a6
db 0xBA, 0xFF ; file 008CE6
db 0xFF, 0x0C ; 008CE8: provisional 68k dc.w $ff0c
db 0x08, 0xBB ; file 008CEA
db 0xDD, 0xDD ; 008CEC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008CEE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 008CF0: provisional 68k adda.l (a3)+, a6
db 0xBA, 0xB1, 0xFF, 0xFF, 0x09, 0x0B, 0x1B, 0xBB ; 008CF2: provisional 68k cmp.l ([$90b1bbb]), d5
db 0xBD, 0xDD ; 008CFA: provisional 68k cmpa.l (a5)+, a6
db 0xDD, 0xDD ; 008CFC: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008CFE: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 008D00: provisional 68k adda.l (a3)+, a6
db 0xBB, 0xB1, 0xFF, 0xFF, 0x07, 0x0D, 0xAA, 0xAB ; 008D02: provisional 68k eor.l d5, ([$70daaab])
db 0xBB, 0xDD ; 008D0A: provisional 68k cmpa.l (a5)+, a5
db 0xDD, 0xDD ; 008D0C: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008D0E: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008D10: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 008D12: provisional 68k adda.l (a3)+, a6
db 0xBB, 0xA1 ; 008D14: provisional 68k eor.l d5, -(a1)
db 0xFF, 0xFF ; 008D16: provisional 68k dc.w $ffff
db 0x05, 0x0F, 0xAA, 0xAB ; 008D18: provisional 68k movep.w -$5555(a7), d2
db 0xBB, 0xBB, 0xBB, 0xBD ; file 008D1C
db 0xDD, 0xDD ; 008D20: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDD ; 008D22: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xDB ; 008D24: provisional 68k adda.l (a3)+, a6
db 0xB8, 0x88 ; 008D26: provisional 68k cmp.l a0, d4
db 0x88, 0x81 ; 008D28: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 008D2A: provisional 68k dc.w $ffff
db 0x03, 0x11 ; 008D2C: provisional 68k btst.l d1, (a1)
db 0x1A, 0xAA, 0xAA, 0xBB ; 008D2E: provisional 68k move.b -$5545(a2), (a5)
db 0xBB, 0xBB, 0xBB, 0xBD ; file 008D32
db 0xDD, 0xDD ; 008D36: provisional 68k adda.l (a5)+, a6
db 0xDD, 0xBB ; file 008D38
db 0xB9, 0xEE, 0xE9, 0x99 ; 008D3A: provisional 68k cmpa.l -$1667(a6), a4
db 0x9E, 0x81 ; 008D3E: provisional 68k sub.l d1, d7
db 0xFF, 0xFF ; 008D40: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x1A, 0xAA ; 008D42: provisional 68k andi.b #$aa, (a2)
db 0xAA, 0xAA ; 008D46: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB ; file 008D48
db 0xBD, 0xDD ; 008D4C: provisional 68k cmpa.l (a5)+, a6
db 0xDD, 0xDB ; 008D4E: provisional 68k adda.l (a3)+, a6
db 0xEE, 0xE9, 0xEE, 0xE9 ; file 008D50
db 0x99, 0x9E ; 008D54: provisional 68k sub.l d4, (a6)+
db 0x81, 0xFF ; file 008D56
db 0xFF, 0x01 ; 008D58: provisional 68k dc.w $ff01
db 0x13, 0x1A ; 008D5A: provisional 68k move.b (a2)+, -(a1)
db 0xAA, 0xAA ; 008D5C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008D5E: provisional 68k dc.w $aaaa
db 0xBB, 0xBB, 0xBB, 0xBB ; file 008D60
db 0xBB, 0xDD ; 008D64: provisional 68k cmpa.l (a5)+, a5
db 0xEE, 0x9F ; 008D66: provisional 68k ror.l #$7, d7
db 0xFF, 0x9F ; 008D68: provisional 68k dc.w $ff9f
db 0xFF, 0x9F ; 008D6A: provisional 68k dc.w $ff9f
db 0xFF, 0x9E ; 008D6C: provisional 68k dc.w $ff9e
db 0x81, 0xFF ; file 008D6E
db 0xFF, 0x01 ; 008D70: provisional 68k dc.w $ff01
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 008D72: provisional 68k move.b -$5556(a2), -$56(a0, a2.l)
db 0xAB, 0xBB ; 008D78: provisional 68k dc.w $abbb
db 0xB8, 0xE8, 0x8E, 0xE9 ; 008D7A: provisional 68k cmpa.w -$7117(a0), a4
db 0x99, 0xEF, 0xFF, 0x9F ; 008D7E: provisional 68k suba.l -$61(a7), a4
db 0xF9, 0x9E ; 008D82: provisional 68k dc.w $f99e
db 0xE1, 0xFF ; file 008D84
db 0xFF, 0x01 ; 008D86: provisional 68k dc.w $ff01
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAB ; 008D88: provisional 68k move.b -$5556(a2), -$55(a0, a2.l)
db 0xA8, 0xEE ; 008D8E: provisional 68k dc.w $a8ee
db 0x88, 0xE9, 0xE8, 0x89 ; 008D90: provisional 68k divu.w -$1777(a1), d4
db 0x99, 0xE9, 0xEE, 0xEE ; 008D94: provisional 68k suba.l -$1112(a1), a4
db 0xE8, 0x88 ; 008D98: provisional 68k lsr.l #$4, d0
db 0x81, 0xFF ; file 008D9A
db 0xFF, 0x01 ; 008D9C: provisional 68k dc.w $ff01
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0x88 ; 008D9E: provisional 68k move.b -$5556(a2), -$78(a0, a2.l)
db 0x88, 0xEE, 0xE8, 0xE9 ; 008DA4: provisional 68k divu.w -$1717(a6), d4
db 0xE8, 0x89 ; 008DA8: provisional 68k lsr.l #$4, d1
db 0xEE, 0x8E ; 008DAA: provisional 68k lsr.l #$7, d6
db 0xEE, 0x88 ; 008DAC: provisional 68k lsr.l #$7, d0
db 0x88, 0x88, 0x88, 0xFF ; file 008DAE
db 0xFF, 0x01 ; 008DB2: provisional 68k dc.w $ff01
db 0x0F, 0xAA, 0xAA, 0xA8 ; 008DB4: provisional 68k bclr.b d7, -$5558(a2)
db 0x88, 0x88, 0x88, 0x88 ; file 008DB8
db 0xE8, 0x8E ; 008DBC: provisional 68k lsr.l #$4, d6
db 0x88, 0x88 ; file 008DBE
db 0xE8, 0x88 ; 008DC0: provisional 68k lsr.l #$4, d0
db 0x88, 0x88, 0x88, 0xFF ; file 008DC2
db 0xFF, 0x01 ; 008DC6: provisional 68k dc.w $ff01
db 0x0E, 0xAA ; file 008DC8
db 0xA8, 0x88 ; 008DCA: provisional 68k dc.w $a888
db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 008DCC
db 0x88, 0xEE, 0x1A, 0xAA ; 008DD2: provisional 68k divu.w $1aaa(a6), d4
db 0xA8, 0x81 ; 008DD6: provisional 68k dc.w $a881
db 0xFF, 0xFF ; 008DD8: provisional 68k dc.w $ffff
db 0x02, 0x08, 0x18, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 ; file 008DDA
db 0x81, 0x01 ; 008DE4: provisional 68k sbcd.b d1, d0
db 0x03, 0x1A ; 008DE6: provisional 68k btst.l d1, (a2)+
db 0xAA, 0xAA ; 008DE8: provisional 68k dc.w $aaaa
db 0x88, 0xFF ; file 008DEA
db 0xFF, 0x02 ; 008DEC: provisional 68k dc.w $ff02
db 0x06, 0x18, 0x88, 0x88 ; 008DEE: provisional 68k addi.b #$88, (a0)+
db 0x88, 0x88 ; file 008DF2
db 0x88, 0x81 ; 008DF4: provisional 68k or.l d1, d4
db 0x03, 0x04 ; 008DF6: provisional 68k btst.l d1, d4
db 0x1A, 0xAA, 0xAA, 0x88 ; 008DF8: provisional 68k move.b -$5578(a2), (a5)
db 0x81, 0xFF ; file 008DFC
db 0xFF, 0x02 ; 008DFE: provisional 68k dc.w $ff02
db 0x04, 0x18, 0x88, 0x88 ; 008E00: provisional 68k subi.b #$88, (a0)+
db 0x88, 0x88 ; file 008E04
db 0x05, 0x05 ; 008E06: provisional 68k btst.l d2, d5
db 0x1A, 0xAA, 0xAA, 0xA8 ; 008E08: provisional 68k move.b -$5558(a2), (a5)
db 0x88, 0x81 ; 008E0C: provisional 68k or.l d1, d4
db 0xFF, 0xFF ; 008E0E: provisional 68k dc.w $ffff
db 0x00, 0x04, 0xAA, 0xDD ; 008E10: provisional 68k ori.b #$dd, d4
db 0xDC, 0xC9 ; 008E14: provisional 68k adda.w a1, a6
db 0x98, 0x07 ; 008E16: provisional 68k sub.b d7, d4
db 0x05, 0x1A ; 008E18: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 008E1A: provisional 68k dc.w $aaaa
db 0xA8, 0x88 ; 008E1C: provisional 68k dc.w $a888
db 0x88, 0xFF ; file 008E1E
db 0xFF, 0x00 ; 008E20: provisional 68k dc.w $ff00
db 0x06, 0xAA, 0xAB, 0xB8, 0xCC, 0xCC, 0xF9, 0xE1 ; 008E22: provisional 68k addi.l #$abb8cccc, -$61f(a2)
db 0x05, 0x06 ; 008E2A: provisional 68k btst.l d2, d6
db 0x1A, 0xAA, 0xAA, 0xAA ; 008E2C: provisional 68k move.b -$5556(a2), (a5)
db 0x88, 0x88, 0x81, 0xFF ; file 008E30
db 0xFF, 0x00 ; 008E34: provisional 68k dc.w $ff00
db 0x07, 0xAA, 0xAA, 0xBD ; 008E36: provisional 68k bclr.b d3, -$5543(a2)
db 0xFF, 0xF9 ; 008E3A: provisional 68k dc.w $fff9
db 0xCC, 0xF8, 0xF1, 0x05 ; 008E3C: provisional 68k mulu.w $f105.w, d6
db 0x06, 0x1A, 0xAA, 0xAA ; 008E40: provisional 68k addi.b #$aa, (a2)+
db 0xAA, 0x88 ; 008E44: provisional 68k dc.w $aa88
db 0x88, 0xE1 ; 008E46: provisional 68k divu.w -(a1), d4
db 0xFF, 0xFF ; 008E48: provisional 68k dc.w $ffff
db 0x00, 0x08 ; file 008E4A
db 0xAA, 0xAA ; 008E4C: provisional 68k dc.w $aaaa
db 0xAA, 0xDF ; 008E4E: provisional 68k dc.w $aadf
db 0xF9, 0xCC ; 008E50: provisional 68k dc.w $f9cc
db 0xCE, 0xEF, 0xE1, 0x05 ; 008E52: provisional 68k mulu.w -$1efb(a7), d7
db 0x05, 0xAA, 0xAA, 0xAA ; 008E56: provisional 68k bclr.b d2, -$5556(a2)
db 0xA8, 0x88 ; 008E5A: provisional 68k dc.w $a888
db 0xEE, 0xFF ; file 008E5C
db 0xFF, 0x00 ; 008E5E: provisional 68k dc.w $ff00
db 0x09, 0xAA, 0xAA, 0xAA ; 008E60: provisional 68k bclr.b d4, -$5556(a2)
db 0xDF, 0xF9, 0xCC, 0xCF, 0xCC, 0xE8 ; 008E64: provisional 68k adda.l $cccfcce8.l, a7
db 0xE1, 0x04 ; 008E6A: provisional 68k asl.b #$8, d4
db 0x05, 0x1A ; 008E6C: provisional 68k btst.l d2, (a2)+
db 0xAA, 0xAA ; 008E6E: provisional 68k dc.w $aaaa
db 0xA8, 0x88 ; 008E70: provisional 68k dc.w $a888
db 0xCE, 0xFF ; file 008E72
db 0xFF, 0x00 ; 008E74: provisional 68k dc.w $ff00
db 0x0A, 0x1A, 0xAA, 0xAA ; 008E76: provisional 68k eori.b #$aa, (a2)+
db 0xAD, 0xD9 ; 008E7A: provisional 68k dc.w $add9
db 0xFF, 0xFE ; 008E7C: provisional 68k dc.w $fffe
db 0xCC, 0xCF ; file 008E7E
db 0xE8, 0xF1, 0x04, 0x05, 0xAA, 0xAA ; 008E80: provisional 68k bftst -$56(a1, a2.l){16:5}
db 0xA8, 0x89 ; 008E86: provisional 68k dc.w $a889
db 0xFE, 0xA1 ; 008E88: provisional 68k dc.w $fea1
db 0xFF, 0xFF ; 008E8A: provisional 68k dc.w $ffff
db 0x01, 0x0B, 0xAA, 0xAA ; 008E8C: provisional 68k movep.w -$5556(a3), d0
db 0xAA, 0xAB ; 008E90: provisional 68k dc.w $aaab
db 0xE9, 0xFE ; file 008E92
db 0xFF, 0xCF ; 008E94: provisional 68k dc.w $ffcf
db 0xCF, 0x9E ; 008E96: provisional 68k and.l d7, (a6)+
db 0xEE, 0xF1 ; 008E98: provisional 68k dc.w $eef1
db 0x02, 0x05, 0x1A, 0xAA ; 008E9A: provisional 68k andi.b #$aa, d5
db 0xA8, 0xFE ; 008E9E: provisional 68k dc.w $a8fe
db 0xEE, 0xB1 ; 008EA0: provisional 68k roxr.l d7, d1
db 0xFF, 0xFF ; 008EA2: provisional 68k dc.w $ffff
db 0x01, 0x13 ; 008EA4: provisional 68k btst.l d0, (a3)
db 0x1A, 0xAA, 0xAA, 0xAA ; 008EA6: provisional 68k move.b -$5556(a2), (a5)
db 0xAD, 0xE9 ; 008EAA: provisional 68k dc.w $ade9
db 0xFF, 0xF9 ; 008EAC: provisional 68k dc.w $fff9
db 0xFC, 0xCC ; 008EAE: provisional 68k dc.w $fccc
db 0x9F, 0xE8, 0xEE, 0xEE ; 008EB0: provisional 68k suba.l -$1112(a0), a7
db 0xEE, 0x88 ; 008EB4: provisional 68k lsr.l #$7, d0
db 0x88, 0x88 ; file 008EB6
db 0xEE, 0xB1 ; 008EB8: provisional 68k roxr.l d7, d1
db 0xFF, 0xFF ; 008EBA: provisional 68k dc.w $ffff
db 0x02, 0x12, 0x1A, 0xAA ; 008EBC: provisional 68k andi.b #$aa, (a2)
db 0xAA, 0xAA ; 008EC0: provisional 68k dc.w $aaaa
db 0xAD, 0xEE ; 008EC2: provisional 68k dc.w $adee
db 0xEE, 0x9F ; 008EC4: provisional 68k ror.l #$7, d7
db 0xCC, 0x9C ; 008EC6: provisional 68k and.l (a4)+, d6
db 0xCF, 0xEF, 0xFF, 0xEE ; 008EC8: provisional 68k muls.w -$12(a7), d7
db 0xE8, 0x88 ; 008ECC: provisional 68k lsr.l #$4, d0
db 0x88, 0x8E, 0xD1, 0xFF ; file 008ECE
db 0xFF, 0x03 ; 008ED2: provisional 68k dc.w $ff03
db 0x11, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 008ED4: provisional 68k move.b -$5556(a2), -$56(a0, a2.l)
db 0xDD, 0x99 ; 008EDA: provisional 68k add.l d6, (a1)+
db 0x9F, 0x9C ; 008EDC: provisional 68k sub.l d7, (a4)+
db 0xFF, 0x9F ; 008EDE: provisional 68k dc.w $ff9f
db 0x99, 0x8E ; 008EE0: provisional 68k subx.l -(a6), -(a4)
db 0xE8, 0x88 ; 008EE2: provisional 68k lsr.l #$4, d0
db 0x88, 0x88, 0xB1, 0xFF ; file 008EE4
db 0xFF, 0x03 ; 008EE8: provisional 68k dc.w $ff03
db 0x10, 0x1A ; 008EEA: provisional 68k move.b (a2)+, d0
db 0xAA, 0xAA ; 008EEC: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008EEE: provisional 68k dc.w $aaaa
db 0xAA, 0xB9 ; 008EF0: provisional 68k dc.w $aab9
db 0xEF, 0x9F ; 008EF2: provisional 68k rol.l #$7, d7
db 0xFF, 0x99 ; 008EF4: provisional 68k dc.w $ff99
db 0x99, 0x8E ; 008EF6: provisional 68k subx.l -(a6), -(a4)
db 0xE8, 0x88 ; 008EF8: provisional 68k lsr.l #$4, d0
db 0x88, 0xBA, 0xFF, 0xFF ; 008EFA: provisional 68k or.l $8efb(pc), d4
db 0x04, 0x0F ; file 008EFE
db 0xAA, 0xAA ; 008F00: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008F02: provisional 68k dc.w $aaaa
db 0xAA, 0xAD ; 008F04: provisional 68k dc.w $aaad
db 0xEF, 0x9F ; 008F06: provisional 68k rol.l #$7, d7
db 0xFF, 0x89 ; 008F08: provisional 68k dc.w $ff89
db 0x99, 0x88 ; 008F0A: provisional 68k subx.l -(a0), -(a4)
db 0x88, 0x88 ; file 008F0C
db 0x88, 0xBA, 0xFF, 0xFF ; 008F0E: provisional 68k or.l $8f0f(pc), d4
db 0x05, 0x0E, 0xAA, 0xAA ; 008F12: provisional 68k movep.w -$5556(a6), d2
db 0xAA, 0xAA ; 008F16: provisional 68k dc.w $aaaa
db 0xAA, 0xAB ; 008F18: provisional 68k dc.w $aaab
db 0xBD, 0xE9, 0x8E, 0x88 ; 008F1A: provisional 68k cmpa.l -$7178(a1), a6
db 0x88, 0x8B ; file 008F1E
db 0xDD, 0xDB ; 008F20: provisional 68k adda.l (a3)+, a6
db 0xA1, 0xFF ; 008F22: provisional 68k dc.w $a1ff
db 0xFF, 0x06 ; 008F24: provisional 68k dc.w $ff06
db 0x0D, 0xAA, 0xAA, 0xAA ; 008F26: provisional 68k bclr.b d6, -$5556(a2)
db 0xAA, 0xAA ; 008F2A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008F2C: provisional 68k dc.w $aaaa
db 0xAB, 0xAA ; 008F2E: provisional 68k dc.w $abaa
db 0xAA, 0xAA ; 008F30: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008F32: provisional 68k dc.w $aaaa
db 0xA1, 0xFF ; 008F34: provisional 68k dc.w $a1ff
db 0xFF, 0x07 ; 008F36: provisional 68k dc.w $ff07
db 0x0C, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA ; 008F38: provisional 68k cmpi.l #$aaaaaaaa, -$5556(a2)
db 0xAA, 0xAA ; 008F40: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008F42: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 008F44: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 008F46: provisional 68k dc.w $ffff
db 0x08, 0x0A ; file 008F48
db 0x1A, 0xAA, 0xAA, 0xAA ; 008F4A: provisional 68k move.b -$5556(a2), (a5)
db 0xAA, 0xAA ; 008F4E: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008F50: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008F52: provisional 68k dc.w $aaaa
db 0xAA, 0xFF ; 008F54: provisional 68k dc.w $aaff
db 0xFF, 0x0A ; 008F56: provisional 68k dc.w $ff0a
db 0x08, 0xAA ; file 008F58
db 0xAA, 0xAA ; 008F5A: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008F5C: provisional 68k dc.w $aaaa
db 0xAA, 0xAA ; 008F5E: provisional 68k dc.w $aaaa
db 0xAA, 0xA1 ; 008F60: provisional 68k dc.w $aaa1
db 0xFF, 0xFF ; 008F62: provisional 68k dc.w $ffff
db 0xFF, 0xFF ; 008F64: provisional 68k dc.w $ffff
db 0x01, 0x00 ; 008F66: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F68: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0xA6 ; 008F6C: provisional 68k ori.b #$a6, d0
db 0x1E, 0xF0, 0x00, 0x00 ; 008F70: provisional 68k move.b (a0, d0.w), (a7)+
db 0x00, 0x00, 0x00, 0x00 ; 008F74: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F78: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F7C: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F80: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F84: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F88: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F8C: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F90: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F94: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008F98: provisional 68k ori.b #$0, d0
db 0x67, 0x75 ; 008F9C: provisional 68k beq.b $9013
db 0x30, 0x30, 0x00, 0x00 ; 008F9E: provisional 68k move.w (a0, d0.w), d0
db 0x00, 0x00, 0x00, 0x00 ; 008FA2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 008FA6: provisional 68k ori.b #$0, d0
db 0x00, 0x01, 0x00, 0x07 ; 008FAA: provisional 68k ori.b #$7, d1
db 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0A ; file 008FAE
db 0x00, 0x04, 0x00, 0x04 ; 008FB6: provisional 68k ori.b #$4, d4
db 0x00, 0x00, 0x00, 0x00 ; 008FBA: provisional 68k ori.b #$0, d0
db 0x00, 0x09, 0x00, 0x09 ; file 008FBE
db 0x00, 0x13, 0x00, 0x13 ; 008FC2: provisional 68k ori.b #$13, (a3)
db 0x00, 0x01, 0x00, 0x01 ; 008FC6: provisional 68k ori.b #$1, d1
db 0x00, 0x0B, 0x00, 0x0B ; file 008FCA
db 0x00, 0x00, 0x00, 0x00 ; 008FCE: provisional 68k ori.b #$0, d0
db 0x00, 0x0A, 0x00, 0x0A ; file 008FD2
db 0x00, 0x11, 0x00, 0x12 ; 008FD6: provisional 68k ori.b #$12, (a1)
db 0x00, 0x0D, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0E ; file 008FDA
db 0x00, 0x05, 0x00, 0x13 ; 008FE2: provisional 68k ori.b #$13, d5
db 0x00, 0x10, 0x00, 0x10 ; 008FE6: provisional 68k ori.b #$10, (a0)
db 0x00, 0x14, 0x00, 0x0F ; 008FEA: provisional 68k ori.b #$f, (a4)
db 0x00, 0x0C, 0x00, 0x0C, 0x00, 0x08, 0x00, 0x08 ; file 008FEE
db 0x00, 0x00, 0x00, 0x00 ; 008FF6: provisional 68k ori.b #$0, d0
db 0x00, 0x15, 0x00, 0x15 ; 008FFA: provisional 68k ori.b #$15, (a5)
db 0x00, 0x05, 0x00, 0x06 ; 008FFE: provisional 68k ori.b #$6, d5
db 0x00, 0x07, 0x00, 0x0F ; 009002: provisional 68k ori.b #$f, d7
db 0x00, 0x11, 0x00, 0x12 ; 009006: provisional 68k ori.b #$12, (a1)
db 0x00, 0x14, 0x00, 0x07 ; 00900A: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 00900E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009010: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009014: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009016: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x10 ; 00901A: provisional 68k ori.b #$10, d0
db 0x01, 0x18 ; 00901E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x18 ; 009020: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009022: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009024: provisional 68k ori.b #$0, d2
db 0x01, 0x07 ; 009028: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 00902A: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 00902C: provisional 68k ori.b #$0, (a7)
db 0x00, 0x08 ; file 009030
db 0x01, 0x14 ; 009032: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009034
db 0x01, 0x0D, 0x01, 0x18 ; 009036: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00903A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00903C: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009040: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009042: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009044: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 009048
db 0x01, 0x14 ; 00904A: provisional 68k btst.l d0, (a4)
db 0x00, 0x24, 0x01, 0x0D ; 00904C: provisional 68k ori.b #$d, -(a4)
db 0x01, 0x18 ; 009050: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009052: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009054: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009058: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00905A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00905C: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009060: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009064: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 009068: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00906A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00906C: provisional 68k ori.b #$0, d2
db 0x01, 0x0D, 0x01, 0x14 ; 009070: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 009074: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x04 ; 009078: provisional 68k ori.b #$4, d0
db 0x00, 0xB6, 0x00, 0x08, 0x01, 0x14, 0x00, 0x0D ; 00907C: provisional 68k ori.l #$80114, $d(a6, d0.w)
db 0x01, 0x0D, 0x01, 0x14 ; 009084: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009088: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 00908C: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00908E: provisional 68k ori.b #$0, d6
db 0x00, 0x00, 0x00, 0x10 ; 009092: provisional 68k ori.b #$10, d0
db 0x01, 0x78, 0x01, 0x18 ; 009096: provisional 68k bchg.b d0, $118.w
db 0x01, 0x14 ; 00909A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00909C: provisional 68k ori.b #$0, d2
db 0x01, 0x07 ; 0090A0: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 0090A2: provisional 68k btst.l d0, (a4)
db 0x00, 0x3A ; file 0090A4
db 0x01, 0x00 ; 0090A6: provisional 68k btst.l d0, d0
db 0x00, 0x08 ; file 0090A8
db 0x01, 0x14 ; 0090AA: provisional 68k btst.l d0, (a4)
db 0x00, 0x24, 0x01, 0x0D ; 0090AC: provisional 68k ori.b #$d, -(a4)
db 0x01, 0x18 ; 0090B0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0090B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0090B4: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0090B8: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0090BA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0090BC: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 0090C0: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 0090C4: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 0090C8: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0090CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0090CC: provisional 68k ori.b #$0, d2
db 0x01, 0x0D, 0x01, 0x14 ; 0090D0: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 0090D4: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x04 ; 0090D8: provisional 68k ori.b #$4, d0
db 0x01, 0x2E, 0x00, 0x08 ; 0090DC: provisional 68k btst.l d0, $8(a6)
db 0x01, 0x14 ; 0090E0: provisional 68k btst.l d0, (a4)
db 0x00, 0x5E, 0x01, 0x00 ; 0090E2: provisional 68k ori.w #$100, (a6)+
db 0x01, 0x14 ; 0090E6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0090E8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 0090EC: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 0090F0: provisional 68k btst.l d0, (a4)
db 0x00, 0x60, 0x01, 0x00 ; 0090F2: provisional 68k ori.w #$100, -(a0)
db 0x01, 0x14 ; 0090F6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0090F8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 0090FC: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 009100: provisional 68k btst.l d0, (a4)
db 0x00, 0x61, 0x01, 0x00 ; 009102: provisional 68k ori.w #$100, -(a1)
db 0x01, 0x13 ; 009106: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009108: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00910A: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00910E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009110: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009114: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 009116: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 00911A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 00911C
db 0x01, 0x00 ; 00911E: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 009120: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009122: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009124: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009128: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 00912A: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00912E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x1D ; 009130: provisional 68k ori.b #$1d, d0
db 0x00, 0x00, 0x00, 0x08 ; 009134: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 009138: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00913A: provisional 68k ori.b #$0, d0
db 0x01, 0x1D ; 00913E: provisional 68k btst.l d0, (a5)+
db 0x02, 0xC8 ; file 009140
db 0x00, 0x00, 0x01, 0x00 ; 009142: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 009146: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00914A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00914C: provisional 68k ori.b #$0, d1
db 0x01, 0x1D ; 009150: provisional 68k btst.l d0, (a5)+
db 0x0E, 0x44 ; file 009152
db 0x00, 0x00, 0x01, 0x00 ; 009154: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 009158: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00915C: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 00915E: provisional 68k ori.b #$0, d5
db 0x01, 0x1D ; 009162: provisional 68k btst.l d0, (a5)+
db 0x0F, 0xE6 ; 009164: provisional 68k bset.b d7, -(a6)
db 0x00, 0x00, 0x01, 0x00 ; 009166: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00916A: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00916E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009170: provisional 68k ori.b #$0, d2
db 0x01, 0x1D ; 009174: provisional 68k btst.l d0, (a5)+
db 0x1C, 0xD8 ; 009176: provisional 68k move.b (a0)+, (a6)+
db 0x00, 0x00, 0x01, 0x00 ; 009178: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00917C: provisional 68k ori.b #$f, d0
db 0x02, 0x54, 0x01, 0x1A ; 009180: provisional 68k andi.w #$11a, (a4)
db 0x01, 0x14 ; 009184: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009186: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00918A: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00918C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00918E: provisional 68k ori.b #$0, d0
db 0x00, 0x2C, 0x01, 0x29, 0x01, 0x27 ; 009192: provisional 68k ori.b #$29, $127(a4)
db 0x01, 0x14 ; 009198: provisional 68k btst.l d0, (a4)
db 0x02, 0xC0 ; file 00919A
db 0x01, 0x00 ; 00919C: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00919E: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0091A0: provisional 68k btst.l d0, (a4)
db 0x02, 0xBA ; file 0091A2
db 0x01, 0x00 ; 0091A4: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0091A6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0091A8: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 0091AC: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0091AE: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 0091B2: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0091B4: provisional 68k ori.b #$4, d0
db 0x02, 0x78, 0x00, 0x2C, 0x01, 0x29 ; 0091B8: provisional 68k andi.w #$2c, $129.w
db 0x01, 0x27 ; 0091BE: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0091C0: provisional 68k btst.l d0, (a4)
db 0x02, 0xB2, 0x01, 0x00, 0x01, 0x00, 0x01, 0x14 ; 0091C2: provisional 68k andi.l #$1000100, (a2, d0.w)
db 0x02, 0xAC, 0x01, 0x00, 0x01, 0x14, 0x00, 0x00 ; 0091CA: provisional 68k andi.l #$1000114, $0(a4)
db 0x01, 0x00 ; 0091D2: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0091D4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0091D6: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 0091DA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x10 ; 0091DC: provisional 68k ori.b #$10, d0
db 0x02, 0xAC, 0x01, 0x13, 0x01, 0x14, 0x00, 0x01 ; 0091E0: provisional 68k andi.l #$1130114, $1(a4)
db 0x01, 0x05 ; 0091E8: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0091EA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 0091EC: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 0091F0: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 0091F2: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 0091F6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0091F8: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 0091FC: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 0091FE: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009200: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 009204: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 009208: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 00920A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00920C: provisional 68k ori.b #$4, d0
db 0x02, 0x78, 0x6E, 0x6F, 0x64, 0x76 ; 009210: provisional 68k andi.w #$6e6f, $6476.w
db 0x00, 0x00, 0x72, 0x74 ; 009216: provisional 68k ori.b #$74, d0
db 0x67, 0x72 ; 00921A: provisional 68k beq.b $928e
db 0x65, 0x65 ; 00921C: provisional 68k bcs.b $9283
db 0x6E, 0x00, 0x62, 0x72 ; 00921E: provisional 68k bgt.w $f492
db 0x69, 0x61 ; 009222: provisional 68k bvs.b $9285
db 0x6E, 0x00, 0x72, 0x74 ; 009224: provisional 68k bgt.w $1049a
db 0x67, 0x72 ; 009228: provisional 68k beq.b $929c
db 0x65, 0x65 ; 00922A: provisional 68k bcs.b $9291
db 0x6E, 0x00, 0x00, 0x11 ; 00922C: provisional 68k bgt.w $923f
db 0x01, 0x14 ; 009230: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009232
db 0x01, 0x0D, 0x01, 0x14 ; 009234: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009238: provisional 68k ori.b #$0, d0
db 0x01, 0x27 ; 00923C: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00923E: provisional 68k btst.l d0, (a4)
db 0x06, 0x30, 0x01, 0x00, 0x01, 0x00 ; 009240: provisional 68k addi.b #$0, (a0, d0.w)
db 0x00, 0x00, 0x00, 0x11 ; 009246: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 00924A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00924C
db 0x01, 0x0D, 0x01, 0x14 ; 00924E: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 009252: provisional 68k ori.b #$0, d1
db 0x01, 0x27 ; 009256: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 009258: provisional 68k btst.l d0, (a4)
db 0x06, 0x2C, 0x01, 0x00, 0x01, 0x00 ; 00925A: provisional 68k addi.b #$0, $100(a4)
db 0x00, 0x00, 0x00, 0x11 ; 009260: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 009264: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009266
db 0x01, 0x0D, 0x01, 0x14 ; 009268: provisional 68k movep.w $114(a5), d0
db 0x00, 0x02, 0x01, 0x00 ; 00926C: provisional 68k ori.b #$0, d2
db 0x01, 0x27 ; 009270: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 009272: provisional 68k btst.l d0, (a4)
db 0x06, 0x28, 0x01, 0x00, 0x01, 0x00 ; 009274: provisional 68k addi.b #$0, $100(a0)
db 0x00, 0x00, 0x00, 0x11 ; 00927A: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 00927E: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009280
db 0x01, 0x0D, 0x01, 0x14 ; 009282: provisional 68k movep.w $114(a5), d0
db 0x00, 0x03, 0x01, 0x00 ; 009286: provisional 68k ori.b #$0, d3
db 0x01, 0x27 ; 00928A: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00928C: provisional 68k btst.l d0, (a4)
db 0x06, 0x24, 0x01, 0x00 ; 00928E: provisional 68k addi.b #$0, -(a4)
db 0x01, 0x00 ; 009292: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 009294: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 009298: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00929A
db 0x01, 0x0D, 0x01, 0x14 ; 00929C: provisional 68k movep.w $114(a5), d0
db 0x00, 0x04, 0x01, 0x00 ; 0092A0: provisional 68k ori.b #$0, d4
db 0x01, 0x27 ; 0092A4: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0092A6: provisional 68k btst.l d0, (a4)
db 0x06, 0x20, 0x01, 0x00 ; 0092A8: provisional 68k addi.b #$0, -(a0)
db 0x01, 0x00 ; 0092AC: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 0092AE: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0092B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0092B4
db 0x01, 0x0D, 0x01, 0x14 ; 0092B6: provisional 68k movep.w $114(a5), d0
db 0x00, 0x05, 0x01, 0x00 ; 0092BA: provisional 68k ori.b #$0, d5
db 0x01, 0x27 ; 0092BE: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0092C0: provisional 68k btst.l d0, (a4)
db 0x06, 0x1C, 0x01, 0x00 ; 0092C2: provisional 68k addi.b #$0, (a4)+
db 0x01, 0x00 ; 0092C6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 0092C8: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0092CC: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0092CE
db 0x01, 0x0D, 0x01, 0x14 ; 0092D0: provisional 68k movep.w $114(a5), d0
db 0x00, 0x06, 0x01, 0x00 ; 0092D4: provisional 68k ori.b #$0, d6
db 0x01, 0x27 ; 0092D8: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0092DA: provisional 68k btst.l d0, (a4)
db 0x06, 0x18, 0x01, 0x00 ; 0092DC: provisional 68k addi.b #$0, (a0)+
db 0x01, 0x00 ; 0092E0: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 0092E2: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 0092E6: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 0092E8
db 0x01, 0x0D, 0x01, 0x14 ; 0092EA: provisional 68k movep.w $114(a5), d0
db 0x00, 0x07, 0x01, 0x00 ; 0092EE: provisional 68k ori.b #$0, d7
db 0x01, 0x27 ; 0092F2: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0092F4: provisional 68k btst.l d0, (a4)
db 0x06, 0x14, 0x01, 0x00 ; 0092F6: provisional 68k addi.b #$0, (a4)
db 0x01, 0x00 ; 0092FA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 0092FC: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 009300: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009302
db 0x01, 0x0D, 0x01, 0x14 ; 009304: provisional 68k movep.w $114(a5), d0
db 0x00, 0x08 ; file 009308
db 0x01, 0x00 ; 00930A: provisional 68k btst.l d0, d0
db 0x01, 0x27 ; 00930C: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00930E: provisional 68k btst.l d0, (a4)
db 0x06, 0x10, 0x01, 0x00 ; 009310: provisional 68k addi.b #$0, (a0)
db 0x01, 0x00 ; 009314: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 009316: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 00931A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00931C
db 0x01, 0x0D, 0x01, 0x14 ; 00931E: provisional 68k movep.w $114(a5), d0
db 0x00, 0x09 ; file 009322
db 0x01, 0x00 ; 009324: provisional 68k btst.l d0, d0
db 0x01, 0x27 ; 009326: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 009328: provisional 68k btst.l d0, (a4)
db 0x06, 0x0C ; file 00932A
db 0x01, 0x00 ; 00932C: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00932E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 009330: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 009334: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009336
db 0x01, 0x00 ; 009338: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00933A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00933C: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x11 ; 009340: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 009344: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 009346
db 0x01, 0x00 ; 009348: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 00934A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00934C: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00934E
db 0x01, 0x0D, 0x01, 0x14 ; 009350: provisional 68k movep.w $114(a5), d0
db 0x00, 0x03, 0x01, 0x00 ; 009354: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 009358: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 00935A: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 00935E: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 009360: provisional 68k ori.b #$0, (a7)
db 0x01, 0x14 ; 009364: provisional 68k btst.l d0, (a4)
db 0x01, 0x80 ; 009366: provisional 68k bclr.b d0, d0
db 0x01, 0x00 ; 009368: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00936A: provisional 68k ori.b #$14, (a1)
db 0x00, 0x18, 0x01, 0x00 ; 00936E: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x14 ; 009372: provisional 68k btst.l d0, (a4)
db 0x01, 0x18 ; 009374: provisional 68k btst.l d0, (a0)+
db 0x01, 0x00 ; 009376: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x49 ; 009378: provisional 68k ori.b #$49, d0
db 0x01, 0x1E ; 00937C: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00937E: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 009380: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 009384: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 009386: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009388: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 00938A: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 00938E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x10 ; 009390: provisional 68k ori.b #$10, d0
db 0x06, 0x0C ; file 009394
db 0x01, 0x13 ; 009396: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009398: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00939A: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00939E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 0093A0: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 0093A4: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 0093A6: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 0093AA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0093AC: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 0093B0: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 0093B2: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 0093B4: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 0093B8: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 0093BC: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 0093BE: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 0093C0: provisional 68k ori.b #$f, d0
db 0x04, 0xBE ; file 0093C4
db 0x01, 0x18 ; 0093C6: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0093C8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0093CA: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 0093CE: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0093D0: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 0093D2: provisional 68k ori.w #$100, (a2)+
db 0x00, 0x0F ; file 0093D6
db 0x04, 0xAA, 0x01, 0x1E, 0x01, 0x14, 0x00, 0x0A ; 0093D8: provisional 68k subi.l #$11e0114, $a(a2)
db 0x01, 0x00 ; 0093E0: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 0093E2: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 0093E4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0093E6: provisional 68k ori.b #$0, d0
db 0x00, 0x18, 0x01, 0x14 ; 0093EA: provisional 68k ori.b #$14, (a0)+
db 0x00, 0x00, 0x01, 0x00 ; 0093EE: provisional 68k ori.b #$0, d0
db 0x00, 0x15, 0x01, 0x1E ; 0093F2: provisional 68k ori.b #$1e, (a5)
db 0x01, 0x14 ; 0093F6: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 0093F8
db 0x01, 0x00 ; 0093FA: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0093FC: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0093FE: provisional 68k btst.l d0, (a4)
db 0x00, 0x64, 0x01, 0x00 ; 009400: provisional 68k ori.w #$100, -(a4)
db 0x01, 0x14 ; 009404: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009406: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00940A: provisional 68k ori.b #$4, d0
db 0x04, 0xBA, 0x00, 0x08 ; file 00940E
db 0x01, 0x14 ; 009412: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 009414: provisional 68k ori.b #$0, d4
db 0x01, 0x14 ; 009418: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00941A: provisional 68k ori.b #$0, d2
db 0x00, 0x00, 0x00, 0x04 ; 00941E: provisional 68k ori.b #$4, d0
db 0x06, 0x08, 0x00, 0x0F ; file 009422
db 0x05, 0x14 ; 009426: provisional 68k btst.l d2, (a4)
db 0x01, 0x18 ; 009428: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00942A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00942C: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009430: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009432: provisional 68k btst.l d0, (a4)
db 0x00, 0x5B, 0x01, 0x00 ; 009434: provisional 68k ori.w #$100, (a3)+
db 0x00, 0x11, 0x01, 0x14 ; 009438: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0C ; file 00943C
db 0x01, 0x00 ; 00943E: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 009440: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009442: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009444: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009448: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00944A: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00944E: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009450: provisional 68k ori.b #$14, (a1)
db 0x00, 0x19, 0x01, 0x00 ; 009454: provisional 68k ori.b #$0, (a1)+
db 0x01, 0x18 ; 009458: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00945A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00945C: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009460: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009462: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1A, 0x01, 0x00 ; 009466: provisional 68k ori.b #$0, (a2)+
db 0x01, 0x19 ; 00946A: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00946C: provisional 68k btst.l d0, (a4)
db 0x00, 0x63, 0x01, 0x00 ; 00946E: provisional 68k ori.w #$100, -(a3)
db 0x01, 0x00 ; 009472: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009474: provisional 68k ori.b #$4, d0
db 0x06, 0x08, 0x00, 0x0F ; file 009478
db 0x05, 0x96 ; 00947C: provisional 68k bclr.b d2, (a6)
db 0x01, 0x18 ; 00947E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009480: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009482: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009486: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009488: provisional 68k btst.l d0, (a4)
db 0x00, 0x5C, 0x01, 0x00 ; 00948A: provisional 68k ori.w #$100, (a4)+
db 0x00, 0x0F ; file 00948E
db 0x05, 0x78, 0x01, 0x18 ; 009490: provisional 68k bchg.b d2, $118.w
db 0x01, 0x14 ; 009494: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009496: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 00949A: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00949C: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0B ; file 0094A0
db 0x01, 0x00 ; 0094A2: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 0094A4: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0094A6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0094A8: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0094AC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 0094AE: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 0094B2: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0094B4: provisional 68k ori.b #$14, (a1)
db 0x00, 0x19, 0x01, 0x00 ; 0094B8: provisional 68k ori.b #$0, (a1)+
db 0x01, 0x18 ; 0094BC: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0094BE: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0094C0: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 0094C4: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0094C6: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1A, 0x01, 0x00 ; 0094CA: provisional 68k ori.b #$0, (a2)+
db 0x01, 0x19 ; 0094CE: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 0094D0: provisional 68k btst.l d0, (a4)
db 0x00, 0x63, 0x01, 0x00 ; 0094D2: provisional 68k ori.w #$100, -(a3)
db 0x01, 0x00 ; 0094D6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0094D8: provisional 68k ori.b #$4, d0
db 0x05, 0x92 ; 0094DC: provisional 68k bclr.b d2, (a2)
db 0x00, 0x11, 0x01, 0x14 ; 0094DE: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0B ; file 0094E2
db 0x01, 0x00 ; 0094E4: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 0094E6: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0094E8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0094EA: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0094EE: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 0094F0: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 0094F4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0094F6: provisional 68k ori.b #$4, d0
db 0x06, 0x08, 0x00, 0x0F, 0x06, 0x08 ; file 0094FA
db 0x01, 0x18 ; 009500: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009502: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009504: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009508: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00950A: provisional 68k btst.l d0, (a4)
db 0x00, 0x5D, 0x01, 0x00 ; 00950C: provisional 68k ori.w #$100, (a5)+
db 0x00, 0x0F ; file 009510
db 0x05, 0xE2 ; 009512: provisional 68k bset.b d2, -(a2)
db 0x01, 0x18 ; 009514: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009516: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009518: provisional 68k ori.b #$0, d1
db 0x01, 0x06 ; 00951C: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 00951E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009520: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009524: provisional 68k ori.b #$14, (a1)
db 0x00, 0x08 ; file 009528
db 0x01, 0x00 ; 00952A: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 00952C: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00952E: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 009530
db 0x01, 0x0D, 0x01, 0x18 ; 009532: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009536: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009538: provisional 68k ori.b #$0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 00953C: provisional 68k movep.w $114(a6), d0
db 0x00, 0x01, 0x01, 0x00 ; 009540: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009544: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009546: provisional 68k ori.b #$f, d0
db 0x06, 0x08 ; file 00954A
db 0x01, 0x1E ; 00954C: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00954E: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009550
db 0x01, 0x00 ; 009552: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 009554: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009556: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009558: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00955C: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0A ; file 009560
db 0x01, 0x00 ; 009562: provisional 68k btst.l d0, d0
db 0x01, 0x1D ; 009564: provisional 68k btst.l d0, (a5)+
db 0x06, 0x34, 0x00, 0x00, 0x01, 0x00 ; 009566: provisional 68k addi.b #$0, (a4, d0.w)
db 0x00, 0x00, 0x00, 0x04 ; 00956C: provisional 68k ori.b #$4, d0
db 0x04, 0x2C, 0x63, 0x31, 0x30, 0x00 ; 009570: provisional 68k subi.b #$31, $3000(a4)
db 0x63, 0x30 ; 009576: provisional 68k bls.b $95a8
db 0x39, 0x00 ; 009578: provisional 68k move.w d0, -(a4)
db 0x63, 0x30 ; 00957A: provisional 68k bls.b $95ac
db 0x38, 0x00 ; 00957C: provisional 68k move.w d0, d4
db 0x63, 0x30 ; 00957E: provisional 68k bls.b $95b0
db 0x37, 0x00 ; 009580: provisional 68k move.w d0, -(a3)
db 0x63, 0x30 ; 009582: provisional 68k bls.b $95b4
db 0x36, 0x00 ; 009584: provisional 68k move.w d0, d3
db 0x63, 0x30 ; 009586: provisional 68k bls.b $95b8
db 0x35, 0x00 ; 009588: provisional 68k move.w d0, -(a2)
db 0x63, 0x30 ; 00958A: provisional 68k bls.b $95bc
db 0x34, 0x00 ; 00958C: provisional 68k move.w d0, d2
db 0x63, 0x30 ; 00958E: provisional 68k bls.b $95c0
db 0x33, 0x00 ; 009590: provisional 68k move.w d0, -(a1)
db 0x63, 0x30 ; 009592: provisional 68k bls.b $95c4
db 0x32, 0x00 ; 009594: provisional 68k move.w d0, d1
db 0x63, 0x30 ; 009596: provisional 68k bls.b $95c8
db 0x31, 0x00 ; 009598: provisional 68k move.w d0, -(a0)
db 0x00, 0x0F ; file 00959A
db 0x06, 0x60, 0x01, 0x27 ; 00959C: provisional 68k addi.w #$127, -(a0)
db 0x01, 0x14 ; 0095A0: provisional 68k btst.l d0, (a4)
db 0x0C, 0x4A ; file 0095A2
db 0x01, 0x00 ; 0095A4: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 0095A6: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 0095A8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0095AA: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 0095AE: provisional 68k ori.b #$14, d7
db 0x00, 0x04, 0x01, 0x00 ; 0095B2: provisional 68k ori.b #$0, d4
db 0x01, 0x36, 0x01, 0x27, 0x01, 0x14, 0x0C, 0x42, 0x01, 0x00 ; 0095B6: provisional 68k btst.l d0, ([$114, a6], d0.w, $c420100)
db 0x01, 0x00 ; 0095C0: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0095C2: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 0095C4: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 0095C8: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0095CA: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 0095CE: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0095D0: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 0095D4: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 0095D8: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 0095DC: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0095DE: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0095E2: provisional 68k ori.b #$14, (a1)
db 0x00, 0x06, 0x01, 0x00 ; 0095E6: provisional 68k ori.b #$0, d6
db 0x01, 0x14 ; 0095EA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0095EC: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 0095F0: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 0095F4: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0095F6
db 0x01, 0x00 ; 0095F8: provisional 68k btst.l d0, d0
db 0x01, 0x1D ; 0095FA: provisional 68k btst.l d0, (a5)+
db 0x0D, 0x90 ; 0095FC: provisional 68k bclr.b d6, (a0)
db 0x00, 0x01, 0x01, 0x14 ; 0095FE: provisional 68k ori.b #$14, d1
db 0x00, 0x05, 0x01, 0x00 ; 009602: provisional 68k ori.b #$0, d5
db 0x01, 0x00 ; 009606: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0B ; 009608: provisional 68k ori.b #$b, d0
db 0x0E, 0x1C ; file 00960C
db 0x00, 0x01, 0x01, 0x14 ; 00960E: provisional 68k ori.b #$14, d1
db 0x00, 0x01, 0x01, 0x00 ; 009612: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x49 ; 009616: provisional 68k ori.b #$49, d0
db 0x01, 0x1E ; 00961A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00961C: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 00961E: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 009622: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 009624: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009626: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 009628: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 00962C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x11 ; 00962E: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 009632: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 009634: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 009638: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00963A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00963E: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009642: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 009644
db 0x01, 0x00 ; 009646: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009648: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00964A: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x11 ; 00964E: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 009652: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009654
db 0x01, 0x00 ; 009656: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009658: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00965A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x10 ; 00965E: provisional 68k ori.b #$10, d0
db 0x0C, 0x3A ; 009662: provisional 68k dc.w $c3a
db 0x01, 0x13 ; 009664: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009666: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009668: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00966C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00966E: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009672: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 009674: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 009678: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00967A: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 00967E: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 009680: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009682: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 009686: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 00968A: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 00968C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00968E: provisional 68k ori.b #$f, d0
db 0x07, 0x4C, 0x01, 0x18 ; 009692: provisional 68k movep.l $118(a4), d3
db 0x01, 0x14 ; 009696: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009698: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00969C: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00969E: provisional 68k btst.l d0, (a4)
db 0x00, 0x66, 0x01, 0x00 ; 0096A0: provisional 68k ori.w #$100, -(a6)
db 0x00, 0x0B, 0x0E, 0x1C ; file 0096A4
db 0x00, 0x01, 0x01, 0x14 ; 0096A8: provisional 68k ori.b #$14, d1
db 0x00, 0x04, 0x01, 0x00 ; 0096AC: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x0F ; 0096B0: provisional 68k ori.b #$f, d0
db 0x08, 0x84 ; file 0096B4
db 0x01, 0x1E ; 0096B6: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0096B8: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 0096BA
db 0x01, 0x00 ; 0096BC: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 0096BE: provisional 68k btst.l d0, d6
db 0x01, 0x1E ; 0096C0: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0096C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0096C4
db 0x01, 0x00 ; 0096C6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0096C8: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 0096CA: provisional 68k ori.b #$14, d7
db 0x00, 0x0B ; file 0096CE
db 0x01, 0x00 ; 0096D0: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 0096D2: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0096D4: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 0096D6
db 0x01, 0x00 ; 0096D8: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 0096DA: provisional 68k movep.w $114(a6), d0
db 0x00, 0x01, 0x01, 0x00 ; 0096DE: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x0F ; 0096E2: provisional 68k ori.b #$f, d0
db 0x08, 0x80 ; file 0096E6
db 0x01, 0x18 ; 0096E8: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0096EA: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 0096EC
db 0x01, 0x00 ; 0096EE: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 0096F0: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0096F2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0096F4: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0096F8: provisional 68k ori.b #$14, (a1)
db 0x00, 0x09 ; file 0096FC
db 0x01, 0x00 ; 0096FE: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 009700: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009702: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 009704
db 0x01, 0x00 ; 009706: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009708: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x45 ; 00970A: provisional 68k ori.b #$45, d0
db 0x01, 0x1E ; 00970E: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009710: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009712
db 0x01, 0x00 ; 009714: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009716: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 009718: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00971A: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00971C: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 009720: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x4B ; 009722: provisional 68k ori.b #$4b, d0
db 0x01, 0x14 ; 009726: provisional 68k btst.l d0, (a4)
db 0x00, 0x44, 0x01, 0x00 ; 009728: provisional 68k ori.w #$100, d4
db 0x01, 0x14 ; 00972C: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x0D ; 00972E: provisional 68k ori.w #$10d, (a2)+
db 0x01, 0x40 ; 009732: provisional 68k bchg.b d0, d0
db 0x01, 0x1E ; 009734: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009736: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009738
db 0x01, 0x00 ; 00973A: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00973C: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00973E: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009740: provisional 68k btst.l d0, (a4)
db 0x02, 0x8C ; file 009742
db 0x01, 0x0E, 0x01, 0x3D ; 009744: provisional 68k movep.w $13d(a6), d0
db 0x01, 0x1E ; 009748: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00974A: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00974C
db 0x01, 0x00 ; 00974E: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009750: provisional 68k btst.l d0, d0
db 0x01, 0x0D, 0x01, 0x3F ; 009752: provisional 68k movep.w $13f(a5), d0
db 0x01, 0x1E ; 009756: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009758: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00975A
db 0x01, 0x00 ; 00975C: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00975E: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009760: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009762: provisional 68k btst.l d0, (a4)
db 0x01, 0x7E ; file 009764
db 0x01, 0x0E, 0x01, 0x3E ; 009766: provisional 68k movep.w $13e(a6), d0
db 0x01, 0x1E ; 00976A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00976C: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00976E
db 0x01, 0x00 ; 009770: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009772: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 009774: provisional 68k movep.w $114(a6), d0
db 0x00, 0x02, 0x01, 0x00 ; 009778: provisional 68k ori.b #$0, d2
db 0x00, 0x00, 0x00, 0x4C ; 00977C: provisional 68k ori.b #$4c, d0
db 0x01, 0x1E ; 009780: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009782: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009784
db 0x01, 0x00 ; 009786: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009788: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 00978A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00978C: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 00978E: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 009792: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 009794: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009796: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 009798: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 00979C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00979E: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 0097A2: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 0097A4: provisional 68k ori.b #$0, d5
db 0x01, 0x14 ; 0097A8: provisional 68k btst.l d0, (a4)
db 0x00, 0x58, 0x01, 0x0E ; 0097AA: provisional 68k ori.w #$10e, (a0)+
db 0x01, 0x40 ; 0097AE: provisional 68k bchg.b d0, d0
db 0x01, 0x1E ; 0097B0: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0097B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0097B4
db 0x01, 0x00 ; 0097B6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0097B8: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0097BA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 0097BC: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 0097C0: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 0097C2: provisional 68k ori.b #$0, d6
db 0x01, 0x3E ; file 0097C6
db 0x01, 0x1E ; 0097C8: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0097CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0097CC
db 0x01, 0x00 ; 0097CE: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0097D0: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0097D2: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 0097D4: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 0097D8: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 0097DA
db 0x01, 0x00 ; 0097DC: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0097DE: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0097E0: provisional 68k ori.b #$0, d2
db 0x00, 0x00, 0x00, 0x04 ; 0097E4: provisional 68k ori.b #$4, d0
db 0x08, 0x94, 0x00, 0x07 ; 0097E8: provisional 68k bclr.b #$7, (a4)
db 0x01, 0x14 ; 0097EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 0097EE
db 0x01, 0x00 ; 0097F0: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0097F2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0097F4: provisional 68k ori.b #$0, d2
db 0x00, 0x00, 0x00, 0x0F ; 0097F8: provisional 68k ori.b #$f, d0
db 0x0B, 0x84 ; 0097FC: provisional 68k bclr.b d5, d4
db 0x01, 0x18 ; 0097FE: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009800: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009802: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009806: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009808: provisional 68k btst.l d0, (a4)
db 0x00, 0x66, 0x01, 0x00 ; 00980A: provisional 68k ori.w #$100, -(a6)
db 0x00, 0x07, 0x01, 0x14 ; 00980E: provisional 68k ori.b #$14, d7
db 0x00, 0x0A ; file 009812
db 0x01, 0x00 ; 009814: provisional 68k btst.l d0, d0
db 0x01, 0x47 ; 009816: provisional 68k bchg.b d0, d7
db 0x01, 0x00 ; 009818: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00981A: provisional 68k ori.b #$f, d0
db 0x09, 0x1C ; 00981E: provisional 68k btst.l d4, (a4)+
db 0x01, 0x1E ; 009820: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009822: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 009824
db 0x01, 0x00 ; 009826: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009828: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00982A: provisional 68k ori.b #$14, (a1)
db 0x00, 0x17, 0x01, 0x00 ; 00982E: provisional 68k ori.b #$0, (a7)
db 0x01, 0x1E ; 009832: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009834: provisional 68k btst.l d0, (a4)
db 0x00, 0x19, 0x01, 0x00 ; 009836: provisional 68k ori.b #$0, (a1)+
db 0x01, 0x00 ; 00983A: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00983C: provisional 68k ori.b #$14, (a1)
db 0x00, 0x18, 0x01, 0x00 ; 009840: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x1E ; 009844: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009846: provisional 68k btst.l d0, (a4)
db 0x00, 0x1A, 0x01, 0x00 ; 009848: provisional 68k ori.b #$0, (a2)+
db 0x01, 0x00 ; 00984C: provisional 68k btst.l d0, d0
db 0x00, 0x49 ; file 00984E
db 0x01, 0x1E ; 009850: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009852: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 009854: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 009858: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 00985A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00985C: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 00985E: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 009862: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009864: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0C ; file 009868
db 0x01, 0x00 ; 00986A: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00986C: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00986E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009870: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009874: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009876: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00987A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00987C: provisional 68k ori.b #$4, d0
db 0x09, 0xD8 ; 009880: provisional 68k bset.b d4, (a0)+
db 0x00, 0x0F ; file 009882
db 0x09, 0x4E, 0x01, 0x18 ; 009884: provisional 68k movep.l $118(a6), d4
db 0x01, 0x14 ; 009888: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00988A
db 0x01, 0x00 ; 00988C: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00988E: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009890: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009892: provisional 68k ori.b #$0, d1
db 0x00, 0x11, 0x01, 0x14 ; 009896: provisional 68k ori.b #$14, (a1)
db 0x00, 0x17, 0x01, 0x00 ; 00989A: provisional 68k ori.b #$0, (a7)
db 0x01, 0x44 ; 00989E: provisional 68k bchg.b d0, d4
db 0x01, 0x00 ; 0098A0: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0098A2: provisional 68k ori.b #$14, (a1)
db 0x00, 0x18, 0x01, 0x00 ; 0098A6: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x45 ; 0098AA: provisional 68k bchg.b d0, d5
db 0x01, 0x00 ; 0098AC: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0098AE: provisional 68k ori.b #$4, d0
db 0x09, 0xD8 ; 0098B2: provisional 68k bset.b d4, (a0)+
db 0x00, 0x0F ; file 0098B4
db 0x09, 0x8E, 0x01, 0x18 ; 0098B6: provisional 68k movep.w d4, $118(a6)
db 0x01, 0x14 ; 0098BA: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 0098BC
db 0x01, 0x00 ; 0098BE: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 0098C0: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0098C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0098C4: provisional 68k ori.b #$0, d2
db 0x00, 0x15, 0x01, 0x19 ; 0098C8: provisional 68k ori.b #$19, (a5)
db 0x01, 0x14 ; 0098CC: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0098CE: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 0098D2: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0098D4: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 0098D6: provisional 68k ori.w #$100, (a2)+
db 0x01, 0x14 ; 0098DA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0098DC: provisional 68k ori.b #$0, d0
db 0x00, 0x18, 0x01, 0x14 ; 0098E0: provisional 68k ori.b #$14, (a0)+
db 0x00, 0x00, 0x01, 0x00 ; 0098E4: provisional 68k ori.b #$0, d0
db 0x00, 0x19, 0x0C, 0x52 ; 0098E8: provisional 68k ori.b #$52, (a1)+
db 0x00, 0x00, 0x00, 0x00 ; 0098EC: provisional 68k ori.b #$0, d0
db 0x00, 0x04, 0x09, 0xD8 ; 0098F0: provisional 68k ori.b #$d8, d4
db 0x00, 0x0F ; file 0098F4
db 0x09, 0xD8 ; 0098F6: provisional 68k bset.b d4, (a0)+
db 0x01, 0x1E ; 0098F8: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 0098FA: provisional 68k btst.l d0, (a4)
db 0x00, 0x0B ; file 0098FC
db 0x01, 0x00 ; 0098FE: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009900: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009902: provisional 68k ori.b #$14, (a1)
db 0x00, 0x17, 0x01, 0x00 ; 009906: provisional 68k ori.b #$0, (a7)
db 0x01, 0x1E ; 00990A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00990C: provisional 68k btst.l d0, (a4)
db 0x00, 0x19, 0x01, 0x00 ; 00990E: provisional 68k ori.b #$0, (a1)+
db 0x01, 0x00 ; 009912: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009914: provisional 68k ori.b #$14, (a1)
db 0x00, 0x18, 0x01, 0x00 ; 009918: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x1E ; 00991C: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00991E: provisional 68k btst.l d0, (a4)
db 0x00, 0x1A, 0x01, 0x00 ; 009920: provisional 68k ori.b #$0, (a2)+
db 0x01, 0x00 ; 009924: provisional 68k btst.l d0, d0
db 0x00, 0x49 ; file 009926
db 0x01, 0x1E ; 009928: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00992A: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 00992C: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 009930: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 009932: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009934: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 009936: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 00993A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x4C ; 00993C: provisional 68k ori.b #$4c, d0
db 0x01, 0x1E ; 009940: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009942: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009944
db 0x01, 0x00 ; 009946: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009948: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 00994A: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 00994C: provisional 68k btst.l d0, (a4)
db 0x00, 0x17, 0x01, 0x00 ; 00994E: provisional 68k ori.b #$0, (a7)
db 0x01, 0x00 ; 009952: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 009954: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009956: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 009958: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 00995C: provisional 68k btst.l d0, d0
db 0x00, 0x2C, 0x01, 0x43, 0x01, 0x00 ; 00995E: provisional 68k ori.b #$43, $100(a4)
db 0x00, 0x00, 0x00, 0x11 ; 009964: provisional 68k ori.b #$11, d0
db 0x01, 0x14 ; 009968: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 00996A: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 00996E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009970: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009974: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 009978: provisional 68k ori.b #$0, d3
db 0x01, 0x33, 0x01, 0x14 ; 00997C: provisional 68k btst.l d0, (a3, d0.w)
db 0x00, 0x03, 0x01, 0x00 ; 009980: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 009984: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009986: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 00998A: provisional 68k btst.l d0, (a4)
db 0x03, 0x00 ; 00998C: provisional 68k btst.l d1, d0
db 0x01, 0x00 ; 00998E: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 009990: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009992: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 009994: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 009998: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00999A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00999C: provisional 68k ori.b #$0, d0
db 0x01, 0x18 ; 0099A0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0099A2: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 0099A4: provisional 68k ori.b #$0, d5
db 0x01, 0x0D, 0x01, 0x1E ; 0099A8: provisional 68k movep.w $11e(a5), d0
db 0x01, 0x14 ; 0099AC: provisional 68k btst.l d0, (a4)
db 0x00, 0x18, 0x01, 0x00 ; 0099AE: provisional 68k ori.b #$0, (a0)+
db 0x01, 0x00 ; 0099B2: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0099B4: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x00 ; 0099B6: provisional 68k ori.l #$1000100, d0
db 0x00, 0x3C ; file 0099BC
db 0x01, 0x18 ; 0099BE: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0099C0: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 0099C2: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 0099C6: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 0099C8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0099CA: provisional 68k ori.b #$0, d1
db 0x00, 0x0F ; file 0099CE
db 0x0A, 0x98, 0x01, 0x27, 0x01, 0x14 ; 0099D0: provisional 68k eori.l #$1270114, (a0)+
db 0x0C, 0x3A ; 0099D6: provisional 68k dc.w $c3a
db 0x01, 0x00 ; 0099D8: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 0099DA: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 0099DC: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0099DE: provisional 68k ori.b #$0, d0
db 0x00, 0x32, 0x01, 0x18, 0x01, 0x14 ; 0099E2: provisional 68k ori.b #$18, (a2, d0.w)
db 0x00, 0x04, 0x01, 0x00 ; 0099E8: provisional 68k ori.b #$0, d4
db 0x01, 0x00 ; 0099EC: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 0099EE: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0099F0: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 0099F2: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 0099F6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0099F8: provisional 68k ori.b #$4, d0
db 0x0A, 0xAC, 0x00, 0x4F, 0x01, 0x18, 0x01, 0x14 ; 0099FC: provisional 68k eori.l #$4f0118, $114(a4)
db 0x00, 0x03, 0x01, 0x00 ; 009A04: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 009A08: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009A0A: provisional 68k btst.l d0, (a4)
db 0x11, 0x11 ; 009A0C: provisional 68k move.b (a1), -(a0)
db 0x01, 0x00 ; 009A0E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009A10: provisional 68k ori.b #$f, d0
db 0x0B, 0x1E ; 009A14: provisional 68k btst.l d5, (a6)+
db 0x01, 0x18 ; 009A16: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009A18: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009A1A: provisional 68k ori.b #$0, d2
db 0x01, 0x06 ; 009A1E: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 009A20: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009A22: provisional 68k ori.b #$0, d0
db 0x00, 0x26, 0x01, 0x14 ; 009A26: provisional 68k ori.b #$14, -(a6)
db 0x00, 0x00, 0x01, 0x00 ; 009A2A: provisional 68k ori.b #$0, d0
db 0x01, 0x18 ; 009A2E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009A30: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009A32: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009A36: provisional 68k btst.l d0, d0
db 0x00, 0x39, 0x01, 0x18, 0x01, 0x14, 0x00, 0x02 ; 009A38: provisional 68k ori.b #$18, $1140002.l
db 0x01, 0x00 ; 009A40: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009A42: provisional 68k btst.l d0, d0
db 0x00, 0x22, 0x01, 0x14 ; 009A44: provisional 68k ori.b #$14, -(a2)
db 0x00, 0x01, 0x01, 0x00 ; 009A48: provisional 68k ori.b #$0, d1
db 0x01, 0x18 ; 009A4C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009A4E: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009A50: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 009A54: provisional 68k btst.l d0, d0
db 0x00, 0x25, 0x01, 0x14 ; 009A56: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 009A5A: provisional 68k ori.b #$0, d1
db 0x00, 0x46, 0x01, 0x1E ; 009A5E: provisional 68k ori.w #$11e, d6
db 0x01, 0x14 ; 009A62: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009A64
db 0x01, 0x00 ; 009A66: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009A68: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 009A6A: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009A6C: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009A6E: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 009A72: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 009A74: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009A78: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 009A7C: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x04, 0x0B, 0x62 ; 009A80: provisional 68k ori.b #$62, d4
db 0x00, 0x22, 0x01, 0x14 ; 009A84: provisional 68k ori.b #$14, -(a2)
db 0x00, 0x01, 0x01, 0x00 ; 009A88: provisional 68k ori.b #$0, d1
db 0x01, 0x18 ; 009A8C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009A8E: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009A90: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 009A94: provisional 68k btst.l d0, d0
db 0x00, 0x25, 0x01, 0x14 ; 009A96: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 009A9A: provisional 68k ori.b #$0, d1
db 0x00, 0x46, 0x01, 0x1E ; 009A9E: provisional 68k ori.w #$11e, d6
db 0x01, 0x14 ; 009AA2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009AA4
db 0x01, 0x00 ; 009AA6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009AA8: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 009AAA: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009AAC: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009AAE: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 009AB2: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 009AB4: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009AB8: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x17 ; 009ABC: provisional 68k ori.b #$17, -(a7)
db 0x01, 0x14 ; 009AC0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009AC2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009AC6: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009ACA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009ACC: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 009AD0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009AD2: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009AD4: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 009AD8: provisional 68k btst.l d0, d0
db 0x00, 0x08 ; file 009ADA
db 0x01, 0x14 ; 009ADC: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 009ADE: provisional 68k ori.b #$0, d4
db 0x01, 0x14 ; 009AE2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009AE4: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009AE8: provisional 68k ori.b #$f, d0
db 0x0C, 0x36, 0x01, 0x18, 0x01, 0x14 ; 009AEC: provisional 68k cmpi.b #$18, (a6, d0.w)
db 0x00, 0x00, 0x01, 0x00 ; 009AF2: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009AF6: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009AF8: provisional 68k btst.l d0, (a4)
db 0x00, 0x64, 0x01, 0x00 ; 009AFA: provisional 68k ori.w #$100, -(a4)
db 0x00, 0x2D, 0x01, 0x18, 0x01, 0x14 ; 009AFE: provisional 68k ori.b #$18, $114(a5)
db 0x00, 0x09 ; file 009B04
db 0x01, 0x00 ; 009B06: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009B08: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 009B0A
db 0x0B, 0xD0 ; 009B0C: provisional 68k bset.b d5, (a0)
db 0x01, 0x18 ; 009B0E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009B10: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009B12: provisional 68k ori.b #$0, d2
db 0x01, 0x05 ; 009B16: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009B18: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009B1A: provisional 68k ori.b #$0, d0
db 0x00, 0x25, 0x01, 0x14 ; 009B1E: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 009B22: provisional 68k ori.b #$0, d1
db 0x00, 0x24, 0x01, 0x14 ; 009B26: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009B2A: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 009B2E: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x04, 0x0C, 0x16 ; 009B32: provisional 68k ori.b #$16, d4
db 0x00, 0x25, 0x01, 0x14 ; 009B36: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 009B3A: provisional 68k ori.b #$0, d1
db 0x00, 0x24, 0x01, 0x14 ; 009B3E: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009B42: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 009B46: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x26, 0x01, 0x14 ; 009B4A: provisional 68k ori.b #$14, -(a6)
db 0x00, 0x01, 0x01, 0x00 ; 009B4E: provisional 68k ori.b #$0, d1
db 0x01, 0x18 ; 009B52: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009B54: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009B56: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009B5A: provisional 68k btst.l d0, d0
db 0x00, 0x39, 0x01, 0x18, 0x01, 0x14, 0x00, 0x02 ; 009B5C: provisional 68k ori.b #$18, $1140002.l
db 0x01, 0x00 ; 009B64: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009B66: provisional 68k btst.l d0, d0
db 0x00, 0x25, 0x01, 0x14 ; 009B68: provisional 68k ori.b #$14, -(a5)
db 0x00, 0x01, 0x01, 0x00 ; 009B6C: provisional 68k ori.b #$0, d1
db 0x00, 0x24, 0x01, 0x14 ; 009B70: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009B74: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 009B78: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x11, 0x01, 0x14 ; 009B7C: provisional 68k ori.b #$14, (a1)
db 0x00, 0x0A ; file 009B80
db 0x01, 0x00 ; 009B82: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009B84: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009B86: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 009B8A
db 0x01, 0x14 ; 009B8C: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 009B8E: provisional 68k ori.b #$0, d4
db 0x01, 0x14 ; 009B92: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009B94: provisional 68k ori.b #$0, d2
db 0x00, 0x03, 0x00, 0x00 ; 009B98: provisional 68k ori.b #$0, d3
db 0x00, 0x04, 0x06, 0xFA ; 009B9C: provisional 68k ori.b #$fa, d4
db 0x71, 0x68, 0x79, 0x5F ; file 009BA0
db 0x70, 0x69 ; 009BA4: provisional 68k moveq #$69, d0
db 0x63, 0x00, 0x71, 0x68 ; 009BA6: provisional 68k bls.w $10d10
db 0x79, 0x5F ; file 009BAA
db 0x70, 0x69 ; 009BAC: provisional 68k moveq #$69, d0
db 0x63, 0x00, 0x71, 0x68 ; 009BAE: provisional 68k bls.w $10d18
db 0x79, 0x5F ; file 009BB2
db 0x70, 0x69 ; 009BB4: provisional 68k moveq #$69, d0
db 0x63, 0x00, 0x00, 0x12 ; 009BB6: provisional 68k bls.w $9bca
db 0x01, 0x14 ; 009BBA: provisional 68k btst.l d0, (a4)
db 0x00, 0x19, 0x01, 0x00 ; 009BBC: provisional 68k ori.b #$0, (a1)+
db 0x00, 0x00, 0x00, 0x3E ; 009BC0: provisional 68k ori.b #$3e, d0
db 0x01, 0x14 ; 009BC4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009BC6: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009BCA: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x14 ; 009BCC: provisional 68k ori.l #$1000114, d0
db 0x00, 0x0A ; file 009BD2
db 0x01, 0x00 ; 009BD4: provisional 68k btst.l d0, d0
db 0x00, 0x3E ; file 009BD6
db 0x01, 0x14 ; 009BD8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009BDA: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009BDE: provisional 68k btst.l d0, (a4)
db 0x00, 0x81, 0x01, 0x00, 0x01, 0x14 ; 009BE0: provisional 68k ori.l #$1000114, d1
db 0x00, 0x0A ; file 009BE6
db 0x01, 0x00 ; 009BE8: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 009BEA: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009BEE: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 009BF2: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x12, 0x01, 0x14 ; 009BF6: provisional 68k ori.b #$14, (a2)
db 0x00, 0x04, 0x01, 0x00 ; 009BFA: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x3E ; 009BFE: provisional 68k ori.b #$3e, d0
db 0x01, 0x14 ; 009C02: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C04: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009C08: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x14 ; 009C0A: provisional 68k ori.l #$1000114, d0
db 0x00, 0x0A ; file 009C10
db 0x01, 0x00 ; 009C12: provisional 68k btst.l d0, d0
db 0x00, 0x3E ; file 009C14
db 0x01, 0x14 ; 009C16: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C18: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009C1C: provisional 68k btst.l d0, (a4)
db 0x00, 0x81, 0x01, 0x00, 0x01, 0x14 ; 009C1E: provisional 68k ori.l #$1000114, d1
db 0x00, 0x0A ; file 009C24
db 0x01, 0x00 ; 009C26: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 009C28: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C2C: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 009C30: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x12, 0x01, 0x14 ; 009C34: provisional 68k ori.b #$14, (a2)
db 0x00, 0x04, 0x01, 0x00 ; 009C38: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x10 ; 009C3C: provisional 68k ori.b #$10, d0
db 0x0D, 0x90 ; 009C40: provisional 68k bclr.b d6, (a0)
db 0x01, 0x0E, 0x01, 0x14 ; 009C42: provisional 68k movep.w $114(a6), d0
db 0x00, 0x01, 0x01, 0x00 ; 009C46: provisional 68k ori.b #$0, d1
db 0x00, 0x0F ; file 009C4A
db 0x0D, 0x8C, 0x01, 0x47 ; 009C4C: provisional 68k movep.w d6, $147(a4)
db 0x01, 0x05 ; 009C50: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009C52: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C54: provisional 68k ori.b #$0, d1
db 0x00, 0x3E ; file 009C58
db 0x01, 0x14 ; 009C5A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C5C: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009C60: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x14 ; 009C62: provisional 68k ori.l #$1000114, d0
db 0x00, 0x3F ; file 009C68
db 0x01, 0x00 ; 009C6A: provisional 68k btst.l d0, d0
db 0x00, 0x3E ; file 009C6C
db 0x01, 0x14 ; 009C6E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C70: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009C74: provisional 68k btst.l d0, (a4)
db 0x00, 0x81, 0x01, 0x00, 0x01, 0x14 ; 009C76: provisional 68k ori.l #$1000114, d1
db 0x00, 0x3F ; file 009C7C
db 0x01, 0x00 ; 009C7E: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 009C80: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C84: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 009C88: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x12, 0x01, 0x14 ; 009C8C: provisional 68k ori.b #$14, (a2)
db 0x00, 0x04, 0x01, 0x00 ; 009C90: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x3E ; 009C94: provisional 68k ori.b #$3e, d0
db 0x01, 0x14 ; 009C98: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009C9A: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009C9E: provisional 68k btst.l d0, (a4)
db 0x00, 0x80, 0x01, 0x00, 0x01, 0x14 ; 009CA0: provisional 68k ori.l #$1000114, d0
db 0x00, 0x3F ; file 009CA6
db 0x01, 0x00 ; 009CA8: provisional 68k btst.l d0, d0
db 0x00, 0x3E ; file 009CAA
db 0x01, 0x14 ; 009CAC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009CAE: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009CB2: provisional 68k btst.l d0, (a4)
db 0x00, 0x81, 0x01, 0x00, 0x01, 0x14 ; 009CB4: provisional 68k ori.l #$1000114, d1
db 0x00, 0x3F ; file 009CBA
db 0x01, 0x00 ; 009CBC: provisional 68k btst.l d0, d0
db 0x00, 0x24, 0x01, 0x14 ; 009CBE: provisional 68k ori.b #$14, -(a4)
db 0x00, 0x01, 0x01, 0x00 ; 009CC2: provisional 68k ori.b #$0, d1
db 0x00, 0x27, 0x00, 0x00 ; 009CC6: provisional 68k ori.b #$0, -(a7)
db 0x00, 0x12, 0x01, 0x14 ; 009CCA: provisional 68k ori.b #$14, (a2)
db 0x00, 0x04, 0x01, 0x00 ; 009CCE: provisional 68k ori.b #$0, d4
db 0x00, 0x00, 0x00, 0x15 ; 009CD2: provisional 68k ori.b #$15, d0
db 0x01, 0x19 ; 009CD6: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009CD8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009CDA: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 009CDE: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009CE0: provisional 68k btst.l d0, (a4)
db 0x00, 0x5D, 0x01, 0x00 ; 009CE2: provisional 68k ori.w #$100, (a5)+
db 0x01, 0x14 ; 009CE6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009CE8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x03 ; 009CEC: provisional 68k ori.b #$3, d0
db 0x00, 0x00, 0x00, 0x04 ; 009CF0: provisional 68k ori.b #$4, d0
db 0x0C, 0xD8 ; file 009CF4
db 0x00, 0x10, 0x0E, 0x1C ; 009CF6: provisional 68k ori.b #$1c, (a0)
db 0x01, 0x13 ; 009CFA: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009CFC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009CFE: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009D02: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009D04: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009D08: provisional 68k btst.l d0, d0
db 0x00, 0x12, 0x01, 0x1A ; 009D0A: provisional 68k ori.b #$1a, (a2)
db 0x01, 0x14 ; 009D0E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009D10: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 009D14: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009D16: provisional 68k ori.b #$f, d0
db 0x0E, 0x18 ; file 009D1A
db 0x01, 0x1E ; 009D1C: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009D1E: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 009D20: provisional 68k ori.b #$0, d7
db 0x01, 0x05 ; 009D24: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009D26: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009D28: provisional 68k ori.b #$0, d0
db 0x00, 0x0F, 0x0E, 0x18 ; file 009D2C
db 0x01, 0x1E ; 009D30: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009D32: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009D34
db 0x01, 0x00 ; 009D36: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 009D38: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 009D3A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009D3C: provisional 68k ori.b #$0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009D40: provisional 68k ori.b #$14, (a1)
db 0x00, 0x06, 0x01, 0x00 ; 009D44: provisional 68k ori.b #$0, d6
db 0x01, 0x1E ; 009D48: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009D4A: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 009D4C: provisional 68k ori.b #$0, d6
db 0x01, 0x0D, 0x01, 0x14 ; 009D50: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 009D54: provisional 68k ori.b #$0, d1
db 0x00, 0x45, 0x01, 0x1E ; 009D58: provisional 68k ori.w #$11e, d5
db 0x01, 0x14 ; 009D5C: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009D5E
db 0x01, 0x00 ; 009D60: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009D62: provisional 68k btst.l d0, d0
db 0x01, 0x1E ; 009D64: provisional 68k btst.l d0, (a6)+
db 0x01, 0x14 ; 009D66: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 009D68: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 009D6C: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009D6E: provisional 68k ori.b #$14, (a1)
db 0x00, 0x07, 0x01, 0x00 ; 009D72: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 009D76: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009D78: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x04 ; 009D7C: provisional 68k ori.b #$4, d0
db 0x0D, 0x90 ; 009D80: provisional 68k bclr.b d6, (a0)
db 0x00, 0x12, 0x01, 0x1A ; 009D82: provisional 68k ori.b #$1a, (a2)
db 0x01, 0x14 ; 009D86: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009D88: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 009D8C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x15 ; 009D8E: provisional 68k ori.b #$15, d0
db 0x01, 0x25 ; 009D92: provisional 68k btst.l d0, -(a5)
db 0x01, 0x24 ; 009D94: provisional 68k btst.l d0, -(a4)
db 0x01, 0x00 ; 009D96: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009D98: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009D9A: provisional 68k btst.l d0, (a4)
db 0x00, 0x66, 0x01, 0x00 ; 009D9C: provisional 68k ori.w #$100, -(a6)
db 0x01, 0x14 ; 009DA0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009DA2: provisional 68k ori.b #$0, d0
db 0x00, 0x03, 0x00, 0x00 ; 009DA6: provisional 68k ori.b #$0, d3
db 0x00, 0x08 ; file 009DAA
db 0x01, 0x14 ; 009DAC: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009DAE: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 009DB2: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009DB4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009DB6: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009DBA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009DBC: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009DC0: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009DC2: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009DC6: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009DC8: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 009DCC: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009DCE: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009DD0: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009DD4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009DD6: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009DDA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x10 ; 009DDC: provisional 68k ori.b #$10, d0
db 0x0F, 0xE6 ; 009DE0: provisional 68k bset.b d7, -(a6)
db 0x01, 0x13 ; 009DE2: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009DE4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009DE6: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009DEA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009DEC: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009DF0: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 009DF2: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 009DF6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009DF8: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 009DFC: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 009DFE: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009E00: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 009E04: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 009E08: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 009E0A: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 009E0C
db 0x0F, 0x42 ; 009E0E: provisional 68k bchg.b d7, d2
db 0x01, 0x18 ; 009E10: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009E12: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009E14: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009E18: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009E1A: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 009E1C: provisional 68k ori.w #$100, (a2)+
db 0x00, 0x0F ; file 009E20
db 0x0F, 0x2E, 0x01, 0x18 ; 009E22: provisional 68k btst.l d7, $118(a6)
db 0x01, 0x14 ; 009E26: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009E28: provisional 68k ori.b #$0, d3
db 0x01, 0x05 ; 009E2C: provisional 68k btst.l d0, d5
db 0x01, 0x13 ; 009E2E: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009E30: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009E32: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009E36: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009E38: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009E3C: provisional 68k btst.l d0, d0
db 0x00, 0x20, 0x01, 0x18 ; 009E3E: provisional 68k ori.b #$18, -(a0)
db 0x01, 0x14 ; 009E42: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009E44: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009E48: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009E4A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009E4C: provisional 68k ori.b #$0, d1
db 0x00, 0x08 ; file 009E50
db 0x01, 0x14 ; 009E52: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009E54: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 009E58: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009E5A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009E5C: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009E60: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009E62: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009E66: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009E68: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 009E6C: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 009E70: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009E72: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009E74: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009E78: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009E7A: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009E7E: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009E80: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009E84: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009E88: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009E8A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009E8E: provisional 68k ori.b #$4, d0
db 0x0F, 0x42 ; 009E92: provisional 68k bchg.b d7, d2
db 0x00, 0x07, 0x01, 0x14 ; 009E94: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009E98: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 009E9C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009E9E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009EA0: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009EA4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009EA6: provisional 68k ori.b #$f, d0
db 0x0F, 0x66 ; 009EAA: provisional 68k bchg.b d7, -(a6)
db 0x01, 0x18 ; 009EAC: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009EAE: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009EB0: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009EB4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009EB6: provisional 68k btst.l d0, (a4)
db 0x00, 0x5B, 0x01, 0x00 ; 009EB8: provisional 68k ori.w #$100, (a3)+
db 0x00, 0x07, 0x01, 0x14 ; 009EBC: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009EC0: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009EC4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009EC6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009ECA: provisional 68k ori.b #$f, d0
db 0x0F, 0xE2 ; 009ECE: provisional 68k bset.b d7, -(a2)
db 0x01, 0x18 ; 009ED0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009ED2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009ED4: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009ED8: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009EDA: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009EDC
db 0x01, 0x00 ; 009EDE: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009EE0: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 009EE4: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 009EE8: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009EEA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009EEC: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009EF0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009EF2: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009EF6: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 009EF8
db 0x0F, 0xC8, 0x01, 0x18 ; 009EFA: provisional 68k movep.l d7, $118(a0)
db 0x01, 0x14 ; 009EFE: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009F00: provisional 68k ori.b #$0, d2
db 0x01, 0x06 ; 009F04: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 009F06: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009F08: provisional 68k ori.b #$0, d0
db 0x00, 0x15, 0x01, 0x19 ; 009F0C: provisional 68k ori.b #$19, (a5)
db 0x01, 0x14 ; 009F10: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009F12: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 009F16: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009F18: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 009F1A: provisional 68k ori.w #$100, (a2)+
db 0x01, 0x18 ; 009F1E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009F20: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009F22: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009F26: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009F28: provisional 68k ori.b #$4, d0
db 0x0F, 0xE2 ; 009F2C: provisional 68k bset.b d7, -(a2)
db 0x00, 0x08 ; file 009F2E
db 0x01, 0x14 ; 009F30: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009F32: provisional 68k ori.b #$0, d3
db 0x01, 0x13 ; 009F36: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009F38: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009F3A: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009F3E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009F40: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009F44: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009F46: provisional 68k ori.b #$4, d0
db 0x0E, 0x78 ; file 009F4A
db 0x00, 0x07, 0x01, 0x14 ; 009F4C: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 009F50: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009F54: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009F56: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009F5A: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009F5E: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009F60: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 009F64: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009F66: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009F6A: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009F6E: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 009F70: provisional 68k ori.b #$0, d5
db 0x01, 0x14 ; 009F74: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009F76: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x08 ; 009F7A: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 009F7E: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 009F80
db 0x01, 0x00 ; 009F82: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 009F84: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009F86: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009F88: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009F8C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009F8E: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009F92: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009F94: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009F98: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 009F9A: provisional 68k ori.b #$0, d6
db 0x01, 0x13 ; 009F9E: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009FA0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009FA2: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009FA6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009FA8: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009FAC: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x10 ; 009FAE: provisional 68k ori.b #$10, d0
db 0x1C, 0xB0, 0x01, 0x13, 0x01, 0x14, 0x00, 0x01 ; 009FB2: provisional 68k move.b ([a0, d0.w], $1140001), (a6)
db 0x01, 0x05 ; 009FBA: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009FBC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009FBE: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009FC2: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 009FC4: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 009FC8: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009FCA: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 009FCE: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 009FD0: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 009FD2: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 009FD6: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 009FDA: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 009FDC: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009FDE: provisional 68k ori.b #$f, d0
db 0x10, 0xBC, 0x01, 0x18 ; 009FE2: provisional 68k move.b #$18, (a0)
db 0x01, 0x14 ; 009FE6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009FE8: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009FEC: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009FEE: provisional 68k btst.l d0, (a4)
db 0x00, 0x5A, 0x01, 0x00 ; 009FF0: provisional 68k ori.w #$100, (a2)+
db 0x00, 0x07, 0x01, 0x14 ; 009FF4: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 009FF8: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 009FFC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009FFE: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x08 ; 00A002: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00A006: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 00A008
db 0x01, 0x00 ; 00A00A: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00A00C: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A00E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A010: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A014: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00A016: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00A01A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A01C: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 00A020: provisional 68k move.b $f(a4), (a6)
db 0x13, 0xA0, 0x01, 0x18 ; 00A024: provisional 68k move.b -(a0), (a1, d0.w)
db 0x01, 0x14 ; 00A028: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A02A: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A02E: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A030: provisional 68k btst.l d0, (a4)
db 0x00, 0x5B, 0x01, 0x00 ; 00A032: provisional 68k ori.w #$100, (a3)+
db 0x00, 0x0F ; file 00A036
db 0x13, 0x9C, 0x01, 0x18 ; 00A038: provisional 68k move.b (a4)+, (a1, d0.w)
db 0x01, 0x14 ; 00A03C: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00A03E: provisional 68k ori.b #$0, d6
db 0x01, 0x05 ; 00A042: provisional 68k btst.l d0, d5
db 0x01, 0x13 ; 00A044: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A046: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A048: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A04C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 00A04E: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00A052: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 00A054
db 0x11, 0x1A ; 00A056: provisional 68k move.b (a2)+, -(a0)
db 0x01, 0x18 ; 00A058: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A05A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A05C: provisional 68k ori.b #$0, d2
db 0x01, 0x05 ; 00A060: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A062: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A064: provisional 68k ori.b #$0, d2
db 0x00, 0x07, 0x01, 0x14 ; 00A068: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00A06C: provisional 68k ori.b #$0, d2
db 0x01, 0x19 ; 00A070: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A072: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 00A074
db 0x01, 0x00 ; 00A076: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A078: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A07A: provisional 68k ori.b #$4, d0
db 0x11, 0x66, 0x00, 0x07 ; 00A07E: provisional 68k move.b -(a6), $7(a0)
db 0x01, 0x14 ; 00A082: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A084: provisional 68k ori.b #$0, d2
db 0x01, 0x18 ; 00A088: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A08A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A08C: provisional 68k ori.b #$0, d2
db 0x01, 0x0D, 0x01, 0x14 ; 00A090: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 00A094: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x0F ; 00A098: provisional 68k ori.b #$f, d0
db 0x11, 0x66, 0x01, 0x19 ; 00A09C: provisional 68k move.b -(a6), $119(a0)
db 0x01, 0x14 ; 00A0A0: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A0A2
db 0x01, 0x0D, 0x01, 0x18 ; 00A0A4: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A0A8: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A0AA: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A0AE: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00A0B0: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A0B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A0B4: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00A0B8: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00A0BC: provisional 68k ori.b #$0, d2
db 0x01, 0x19 ; 00A0C0: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A0C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x08 ; file 00A0C4
db 0x01, 0x00 ; 00A0C6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A0C8: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A0CA: provisional 68k ori.b #$f, d0
db 0x11, 0xA8, 0x01, 0x19, 0x01, 0x14 ; 00A0CE: provisional 68k move.b $119(a0), (a0, d0.w)
db 0x00, 0x09 ; file 00A0D4
db 0x01, 0x0D, 0x01, 0x18 ; 00A0D6: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A0DA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A0DC: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A0E0: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00A0E2: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A0E4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A0E6: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00A0EA
db 0x01, 0x14 ; 00A0EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A0EE
db 0x01, 0x0D, 0x01, 0x18 ; 00A0F0: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A0F4: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A0F6: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A0FA: provisional 68k btst.l d0, d0
db 0x01, 0x19 ; 00A0FC: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A0FE: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A100
db 0x01, 0x0D, 0x01, 0x14 ; 00A102: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A106: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00A10A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A10C: provisional 68k ori.b #$f, d0
db 0x11, 0xE0, 0x01, 0x19 ; 00A110: provisional 68k move.b -(a0), $119.w
db 0x01, 0x14 ; 00A114: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A116
db 0x01, 0x0D, 0x01, 0x18 ; 00A118: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A11C: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A11E: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A122: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00A124: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A126: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A128: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00A12C
db 0x01, 0x14 ; 00A12E: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A130
db 0x01, 0x0D, 0x01, 0x18 ; 00A132: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A136: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A138: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A13C: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00A13E: provisional 68k btst.l d0, (a4)
db 0x00, 0x38, 0x01, 0x00, 0x00, 0x00 ; 00A140: provisional 68k ori.b #$0, $0.w
db 0x00, 0x0F, 0x12, 0x40 ; file 00A146
db 0x01, 0x19 ; 00A14A: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A14C: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A14E
db 0x01, 0x0D, 0x01, 0x18 ; 00A150: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A154: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A156: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A15A: provisional 68k btst.l d0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00A15C: provisional 68k movep.w $114(a0), d0
db 0x01, 0xFF ; file 00A160
db 0x01, 0x00 ; 00A162: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A164: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A168: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A16C: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A16E: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A172: provisional 68k btst.l d0, (a4)
db 0x61, 0x30 ; 00A174: provisional 68k bsr.b $a1a6
db 0x01, 0x0E, 0x01, 0x14 ; 00A176: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00A17A: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00A180: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A182: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A186: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A188: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A18A
db 0x01, 0x0D, 0x01, 0x18 ; 00A18C: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A190: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A192: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A196: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00A198: provisional 68k movep.w $114(a6), d0
db 0x02, 0x00, 0x01, 0x00 ; 00A19C: provisional 68k andi.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A1A0: provisional 68k ori.b #$4, d0
db 0x12, 0xD2 ; 00A1A4: provisional 68k move.b (a2), (a1)+
