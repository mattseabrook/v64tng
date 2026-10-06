; verified-role: Native StandardAbout routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: StandardAbout; evidence file offset 0x7300.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_standard_about:
db 0x4E, 0x56, 0xFD, 0xFE ; file 00721C | 68k link.w a6, #$fdfe
db 0x48, 0xE7, 0x01, 0x18 ; file 007220 | 68k movem.l d7/a3-a4, -(a7)
db 0x3E, 0x2E, 0x00, 0x08 ; file 007224 | 68k move.w $8(a6), d7
db 0x41, 0xEE, 0xFE, 0x00 ; file 007228 | 68k lea.l -$200(a6), a0
db 0x43, 0xED, 0xDD, 0x06 ; file 00722C | 68k lea.l -$22fa(a5), a1
db 0x70, 0x3F ; file 007230 | 68k moveq #$3f, d0
db 0x20, 0xD9 ; file 007232 | 68k move.l (a1)+, (a0)+
db 0x51, 0xC8, 0xFF, 0xFC ; file 007234 | 68k dbra d0, $61ca
db 0x4A, 0x2D, 0xDF, 0x1D ; file 007238 | 68k tst.b -$20e3(a5)
db 0x66, 0x04 ; file 00723C | 68k bne.b $61da
db 0x4E, 0xBA, 0xFB, 0x36 ; file 00723E | 68k jsr $5d0e(pc)
db 0x99, 0xCC ; file 007242 | 68k suba.l a4, a4
db 0x0C, 0x47, 0xFF, 0xFE ; file 007244 | 68k cmpi.w #$fffe, d7
db 0x67, 0x26 ; file 007248 | 68k beq.b $6208
db 0x0C, 0x47, 0xFF, 0xFF ; file 00724A | 68k cmpi.w #$ffff, d7
db 0x67, 0x08 ; file 00724E | 68k beq.b $61f0
db 0x42, 0xA7 ; file 007250 | 68k clr.l -(a7)
db 0x3F, 0x07 ; file 007252 | 68k move.w d7, -(a7)
db 0xA9, 0xBA ; file 007254 | 68k dc.w $a9ba
db 0x28, 0x5F ; file 007256 | 68k movea.l (a7)+, a4
db 0x20, 0x0C ; file 007258 | 68k move.l a4, d0
db 0x66, 0x14 ; file 00725A | 68k bne.b $6208
db 0x48, 0x6E, 0xFD, 0xFE ; file 00725C | 68k pea.l -$202(a6)
db 0x42, 0x67 ; file 007260 | 68k clr.w -(a7)
db 0x2F, 0x2D, 0xDD, 0x02 ; file 007262 | 68k move.l -$22fe(a5), -(a7)
db 0x4E, 0xBA, 0xF3, 0x14 ; file 007266 | 68k jsr $5514(pc)
db 0x28, 0x40 ; file 00726A | 68k movea.l d0, a4
db 0x4F, 0xEF, 0x00, 0x0A ; file 00726C | 68k lea.l $a(a7), a7
db 0x20, 0x0C ; file 007270 | 68k move.l a4, d0
db 0x67, 0x06 ; file 007272 | 68k beq.b $6212
db 0x0C, 0x47, 0xFF, 0xFE ; file 007274 | 68k cmpi.w #$fffe, d7
db 0x66, 0x16 ; file 007278 | 68k bne.b $6228
db 0x41, 0xEE, 0xFF, 0x00 ; file 00727A | 68k lea.l -$100(a6), a0
db 0x43, 0xEE, 0xFF, 0x00 ; file 00727E | 68k lea.l -$100(a6), a1
db 0x10, 0x2E, 0xFF, 0x00 ; file 007282 | 68k move.b -$100(a6), d0
db 0x49, 0xC0 ; file 007286 | 68k extb.l d0
db 0x52, 0x40 ; file 007288 | 68k addq.w #$1, d0
db 0x48, 0xC0 ; file 00728A | 68k ext.l d0
db 0xA0, 0x2E ; file 00728C | 68k dc.w $a02e
db 0x60, 0x12 ; file 00728E | 68k bra.b $623a
db 0x43, 0xEE, 0xFF, 0x00 ; file 007290 | 68k lea.l -$100(a6), a1
db 0x20, 0x54 ; file 007294 | 68k movea.l (a4), a0
db 0x10, 0x10 ; file 007296 | 68k move.b (a0), d0
db 0x49, 0xC0 ; file 007298 | 68k extb.l d0
db 0x52, 0x40 ; file 00729A | 68k addq.w #$1, d0
db 0x48, 0xC0 ; file 00729C | 68k ext.l d0
db 0x20, 0x54 ; file 00729E | 68k movea.l (a4), a0
db 0xA0, 0x2E ; file 0072A0 | 68k dc.w $a02e
db 0x48, 0x6E, 0xFD, 0xFE ; file 0072A2 | 68k pea.l -$202(a6)
db 0x3F, 0x3C, 0x00, 0x01 ; file 0072A6 | 68k move.w #$1, -(a7)
db 0x2F, 0x3C, 0x76, 0x65, 0x72, 0x73 ; file 0072AA | 68k move.l #$76657273, -(a7)
db 0x4E, 0xBA, 0xF2, 0xCA ; file 0072B0 | 68k jsr $5514(pc)
db 0x28, 0x40 ; file 0072B4 | 68k movea.l d0, a4
db 0x20, 0x0C ; file 0072B6 | 68k move.l a4, d0
db 0x4F, 0xEF, 0x00, 0x0A ; file 0072B8 | 68k lea.l $a(a7), a7
db 0x67, 0x20 ; file 0072BC | 68k beq.b $6276
db 0x70, 0x06 ; file 0072BE | 68k moveq #$6, d0
db 0xD0, 0x94 ; file 0072C0 | 68k add.l (a4), d0
db 0x26, 0x40 ; file 0072C2 | 68k movea.l d0, a3
db 0x70, 0x00 ; file 0072C4 | 68k moveq #$0, d0
db 0x10, 0x13 ; file 0072C6 | 68k move.b (a3), d0
db 0xD0, 0x8B ; file 0072C8 | 68k add.l a3, d0
db 0x52, 0x80 ; file 0072CA | 68k addq.l #$1, d0
db 0x28, 0x40 ; file 0072CC | 68k movea.l d0, a4
db 0x43, 0xEE, 0xFE, 0x00 ; file 0072CE | 68k lea.l -$200(a6), a1
db 0x10, 0x14 ; file 0072D2 | 68k move.b (a4), d0
db 0x49, 0xC0 ; file 0072D4 | 68k extb.l d0
db 0x52, 0x40 ; file 0072D6 | 68k addq.w #$1, d0
db 0x48, 0xC0 ; file 0072D8 | 68k ext.l d0
db 0x20, 0x4C ; file 0072DA | 68k movea.l a4, a0
db 0xA0, 0x2E ; file 0072DC | 68k dc.w $a02e
db 0x48, 0x6E, 0xFF, 0x00 ; file 0072DE | 68k pea.l -$100(a6)
db 0x48, 0x6E, 0xFE, 0x00 ; file 0072E2 | 68k pea.l -$200(a6)
db 0x42, 0xA7 ; file 0072E6 | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 0072E8 | 68k clr.l -(a7)
db 0xA9, 0x8B ; file 0072EA | 68k dc.w $a98b
db 0x42, 0xA7 ; file 0072EC | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x01, 0x02 ; file 0072EE | 68k move.w #$102, -(a7)
db 0x4E, 0xBA, 0xED, 0xCA ; file 0072F2 | 68k jsr $5056(pc)
db 0x4C, 0xEE, 0x18, 0x80, 0xFD, 0xF2 ; file 0072F6 | 68k movem.l -$20e(a6), d7/a3-a4
db 0x4E, 0x5E ; file 0072FC | 68k unlk a6
db 0x4E, 0x75 ; file 0072FE | 68k rts 
