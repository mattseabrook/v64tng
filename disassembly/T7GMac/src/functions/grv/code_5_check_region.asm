; verified-role: Native CheckRegion routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: CheckRegion; evidence file offset 0xb46a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_check_region:
db 0x4E, 0x56, 0x00, 0x00 ; file 00B3D4 | 68k link.w a6, #$0
db 0x2F, 0x0C ; file 00B3D8 | 68k move.l a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 00B3DA | 68k movea.l $8(a6), a4
db 0x3F, 0x14 ; file 00B3DE | 68k move.w (a4), -(a7)
db 0x4E, 0xBA, 0x07, 0x5E ; file 00B3E0 | 68k jsr $43da(pc)
db 0x32, 0x2D, 0xF5, 0x9C ; file 00B3E4 | 68k move.w -$a64(a5), d1
db 0x92, 0x6D, 0xF5, 0xB0 ; file 00B3E8 | 68k sub.w -$a50(a5), d1
db 0x50, 0x41 ; file 00B3EC | 68k addq.w #$8, d1
db 0xB2, 0x40 ; file 00B3EE | 68k cmp.w d0, d1
db 0x54, 0x8F ; file 00B3F0 | 68k addq.l #$2, a7
db 0x65, 0x6C ; file 00B3F2 | 68k bcs.b $3cfa
db 0x3F, 0x2C, 0x00, 0x04 ; file 00B3F4 | 68k move.w $4(a4), -(a7)
db 0x4E, 0xBA, 0x07, 0x46 ; file 00B3F8 | 68k jsr $43da(pc)
db 0x32, 0x2D, 0xF5, 0x9C ; file 00B3FC | 68k move.w -$a64(a5), d1
db 0x92, 0x6D, 0xF5, 0xB0 ; file 00B400 | 68k sub.w -$a50(a5), d1
db 0x50, 0x41 ; file 00B404 | 68k addq.w #$8, d1
db 0xB2, 0x40 ; file 00B406 | 68k cmp.w d0, d1
db 0x54, 0x8F ; file 00B408 | 68k addq.l #$2, a7
db 0x62, 0x54 ; file 00B40A | 68k bhi.b $3cfa
db 0x3F, 0x2C, 0x00, 0x02 ; file 00B40C | 68k move.w $2(a4), -(a7)
db 0x4E, 0xBA, 0x07, 0x2E ; file 00B410 | 68k jsr $43da(pc)
db 0x72, 0x58 ; file 00B414 | 68k moveq #$58, d1
db 0xD2, 0x6D, 0xF5, 0x9E ; file 00B416 | 68k add.w -$a62(a5), d1
db 0x92, 0x6D, 0xF5, 0xAE ; file 00B41A | 68k sub.w -$a52(a5), d1
db 0xB2, 0x40 ; file 00B41E | 68k cmp.w d0, d1
db 0x54, 0x8F ; file 00B420 | 68k addq.l #$2, a7
db 0x65, 0x3C ; file 00B422 | 68k bcs.b $3cfa
db 0x3F, 0x2C, 0x00, 0x06 ; file 00B424 | 68k move.w $6(a4), -(a7)
db 0x4E, 0xBA, 0x07, 0x16 ; file 00B428 | 68k jsr $43da(pc)
db 0x72, 0x58 ; file 00B42C | 68k moveq #$58, d1
db 0xD2, 0x6D, 0xF5, 0x9E ; file 00B42E | 68k add.w -$a62(a5), d1
db 0x92, 0x6D, 0xF5, 0xAE ; file 00B432 | 68k sub.w -$a52(a5), d1
db 0xB2, 0x40 ; file 00B436 | 68k cmp.w d0, d1
db 0x54, 0x8F ; file 00B438 | 68k addq.l #$2, a7
db 0x62, 0x24 ; file 00B43A | 68k bhi.b $3cfa
db 0x30, 0x2C, 0x00, 0x0A ; file 00B43C | 68k move.w $a(a4), d0
db 0xE0, 0x40 ; file 00B440 | 68k asr.w #$8, d0
db 0x3B, 0x40, 0xF7, 0xBA ; file 00B442 | 68k move.w d0, -$846(a5)
db 0x4A, 0x6D, 0xF5, 0xA2 ; file 00B446 | 68k tst.w -$a5e(a5)
db 0x67, 0x14 ; file 00B44A | 68k beq.b $3cfa
db 0x42, 0x6D, 0xF5, 0xA2 ; file 00B44C | 68k clr.w -$a5e(a5)
db 0x3B, 0x7C, 0xFF, 0xFE, 0xF7, 0xBA ; file 00B450 | 68k move.w #$fffe, -$846(a5)
db 0x3F, 0x2C, 0x00, 0x08 ; file 00B456 | 68k move.w $8(a4), -(a7)
db 0x4E, 0xBA, 0x06, 0xE4 ; file 00B45A | 68k jsr $43da(pc)
db 0x60, 0x02 ; file 00B45E | 68k bra.b $3cfc
db 0x70, 0x00 ; file 00B460 | 68k moveq #$0, d0
db 0x28, 0x6E, 0xFF, 0xFC ; file 00B462 | 68k movea.l -$4(a6), a4
db 0x4E, 0x5E ; file 00B466 | 68k unlk a6
db 0x4E, 0x75 ; file 00B468 | 68k rts 
