; verified-role: Native AppNewWindow routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppNewWindow; evidence file offset 0x7656.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_new_window:
db 0x4E, 0x56, 0xFF, 0xFC ; file 0075CA | 68k link.w a6, #$fffc
db 0x48, 0xE7, 0x01, 0x08 ; file 0075CE | 68k movem.l d7/a4, -(a7)
db 0x48, 0x6E, 0xFF, 0xFC ; file 0075D2 | 68k pea.l -$4(a6)
db 0xA8, 0x74 ; file 0075D6 | 68k dc.w $a874
db 0x7E, 0x94 ; file 0075D8 | 68k moveq #$94, d7
db 0x1F, 0x3C, 0x00, 0x01 ; file 0075DA | 68k move.b #$1, -(a7)
db 0x48, 0x78, 0xFF, 0xFF ; file 0075DE | 68k pea.l $ffff.w
db 0x42, 0xA7 ; file 0075E2 | 68k clr.l -(a7)
db 0xA9, 0x24 ; file 0075E4 | 68k dc.w $a924
db 0x42, 0xA7 ; file 0075E6 | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x00, 0x80 ; file 0075E8 | 68k move.w #$80, -(a7)
db 0x4E, 0xBA, 0xF4, 0x8C ; file 0075EC | 68k jsr $5a12(pc)
db 0x28, 0x40 ; file 0075F0 | 68k movea.l d0, a4
db 0x20, 0x0C ; file 0075F2 | 68k move.l a4, d0
db 0x4F, 0xEF, 0x00, 0x10 ; file 0075F4 | 68k lea.l $10(a7), a7
db 0x67, 0x40 ; file 0075F8 | 68k beq.b $65d2
db 0x20, 0x6E, 0x00, 0x08 ; file 0075FA | 68k movea.l $8(a6), a0
db 0x20, 0x50 ; file 0075FE | 68k movea.l (a0), a0
db 0x21, 0x4C, 0x00, 0x4A ; file 007600 | 68k move.l a4, $4a(a0)
db 0x2F, 0x0C ; file 007604 | 68k move.l a4, -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 007606 | 68k move.l $8(a6), -(a7)
db 0xA9, 0x18 ; file 00760A | 68k dc.w $a918
db 0x2F, 0x0C ; file 00760C | 68k move.l a4, -(a7)
db 0x48, 0x6D, 0xDF, 0x22 ; file 00760E | 68k pea.l -$20de(a5)
db 0xA9, 0x1A ; file 007612 | 68k dc.w $a91a
db 0x2F, 0x0C ; file 007614 | 68k move.l a4, -(a7)
db 0xA9, 0x15 ; file 007616 | 68k dc.w $a915
db 0x2B, 0x4C, 0xDF, 0x1E ; file 007618 | 68k move.l a4, -$20e2(a5)
db 0x4E, 0xAD, 0x01, 0xBA ; file 00761C | 68k jsr $1ba(a5)
db 0x3F, 0x3C, 0xFF, 0xFF ; file 007620 | 68k move.w #$ffff, -(a7)
db 0x4E, 0xAD, 0x01, 0xAA ; file 007624 | 68k jsr $1aa(a5)
db 0x3E, 0xBC, 0x00, 0x01 ; file 007628 | 68k move.w #$1, (a7)
db 0xA8, 0x87 ; file 00762C | 68k dc.w $a887
db 0x3F, 0x3C, 0x00, 0x0F ; file 00762E | 68k move.w #$f, -(a7)
db 0xA8, 0x8A ; file 007632 | 68k dc.w $a88a
db 0x3F, 0x3C, 0x00, 0x01 ; file 007634 | 68k move.w #$1, -(a7)
db 0xA8, 0x88 ; file 007638 | 68k dc.w $a888
db 0x2F, 0x2E, 0xFF, 0xFC ; file 00763A | 68k move.l -$4(a6), -(a7)
db 0xA8, 0x73 ; file 00763E | 68k dc.w $a873
db 0x4A, 0xAE, 0x00, 0x0C ; file 007640 | 68k tst.l $c(a6)
db 0x67, 0x06 ; file 007644 | 68k beq.b $65e4
db 0x20, 0x6E, 0x00, 0x0C ; file 007646 | 68k movea.l $c(a6), a0
db 0x20, 0x8C ; file 00764A | 68k move.l a4, (a0)
db 0x30, 0x07 ; file 00764C | 68k move.w d7, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 00764E | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 007652 | 68k unlk a6
db 0x4E, 0x75 ; file 007654 | 68k rts 
