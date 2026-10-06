; verified-role: Native AppNewDocument routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppNewDocument; evidence file offset 0x56dc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_new_document:
db 0x4E, 0x56, 0xFF, 0x00 ; file 005660 | 68k link.w a6, #$ff00
db 0x48, 0xE7, 0x01, 0x38 ; file 005664 | 68k movem.l d7/a2-a4, -(a7)
db 0x7E, 0x94 ; file 005668 | 68k moveq #$94, d7
db 0x70, 0x50 ; file 00566A | 68k moveq #$50, d0
db 0xA1, 0x22 ; file 00566C | 68k dc.w $a122
db 0x28, 0x48 ; file 00566E | 68k movea.l a0, a4
db 0x22, 0x6E, 0x00, 0x08 ; file 005670 | 68k movea.l $8(a6), a1
db 0x22, 0x88 ; file 005674 | 68k move.l a0, (a1)
db 0x20, 0x08 ; file 005676 | 68k move.l a0, d0
db 0x67, 0x58 ; file 005678 | 68k beq.b $466a
db 0x48, 0x6E, 0xFF, 0x00 ; file 00567A | 68k pea.l -$100(a6)
db 0x2F, 0x3C, 0x00, 0x02, 0x01, 0x6E ; file 00567E | 68k move.l #$2016e, -(a7)
db 0x4E, 0xAD, 0x02, 0x92 ; file 005684 | 68k jsr $292(a5)
db 0x26, 0x54 ; file 005688 | 68k movea.l (a4), a3
db 0x42, 0x13 ; file 00568A | 68k clr.b (a3)
db 0x42, 0x2B, 0x00, 0x01 ; file 00568C | 68k clr.b $1(a3)
db 0x42, 0x6B, 0x00, 0x04 ; file 005690 | 68k clr.w $4(a3)
db 0x42, 0xAB, 0x00, 0x4A ; file 005694 | 68k clr.l $4a(a3)
db 0x45, 0xEB, 0x00, 0x0A ; file 005698 | 68k lea.l $a(a3), a2
db 0x48, 0x6E, 0xFF, 0x00 ; file 00569C | 68k pea.l -$100(a6)
db 0x2F, 0x0A ; file 0056A0 | 68k move.l a2, -(a7)
db 0x4E, 0xAD, 0x01, 0x9A ; file 0056A2 | 68k jsr $19a(a5)
db 0x4A, 0x2D, 0xDC, 0xB0 ; file 0056A6 | 68k tst.b -$2350(a5)
db 0x50, 0x8F ; file 0056AA | 68k addq.l #$8, a7
db 0x67, 0x04 ; file 0056AC | 68k beq.b $464a
db 0x52, 0x6D, 0xDC, 0xB2 ; file 0056AE | 68k addq.w #$1, -$234e(a5)
db 0x3F, 0x2D, 0xDC, 0xB2 ; file 0056B2 | 68k move.w -$234e(a5), -(a7)
db 0x2F, 0x0A ; file 0056B6 | 68k move.l a2, -(a7)
db 0x4E, 0xAD, 0x01, 0x8A ; file 0056B8 | 68k jsr $18a(a5)
db 0x2E, 0x8C ; file 0056BC | 68k move.l a4, (a7)
db 0x4E, 0xBA, 0x05, 0x98 ; file 0056BE | 68k jsr $4bf0(pc)
db 0x3E, 0x00 ; file 0056C2 | 68k move.w d0, d7
db 0x5C, 0x8F ; file 0056C4 | 68k addq.l #$6, a7
db 0x67, 0x0A ; file 0056C6 | 68k beq.b $466a
db 0x20, 0x4C ; file 0056C8 | 68k movea.l a4, a0
db 0xA0, 0x23 ; file 0056CA | 68k dc.w $a023
db 0x20, 0x6E, 0x00, 0x08 ; file 0056CC | 68k movea.l $8(a6), a0
db 0x42, 0x90 ; file 0056D0 | 68k clr.l (a0)
db 0x30, 0x07 ; file 0056D2 | 68k move.w d7, d0
db 0x4C, 0xDF, 0x1C, 0x80 ; file 0056D4 | 68k movem.l (a7)+, d7/a2-a4
db 0x4E, 0x5E ; file 0056D8 | 68k unlk a6
db 0x4E, 0x75 ; file 0056DA | 68k rts 
