; verified-role: Native GetCenteredDialog routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetCenteredDialog; evidence file offset 0x66a4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_centered_dialog:
db 0x4E, 0x56, 0xFF, 0xF6 ; file 006626 | 68k link.w a6, #$fff6
db 0x48, 0xE7, 0x03, 0x18 ; file 00662A | 68k movem.l d6-d7/a3-a4, -(a7)
db 0x99, 0xCC ; file 00662E | 68k suba.l a4, a4
db 0x48, 0x6E, 0xFF, 0xFE ; file 006630 | 68k pea.l -$2(a6)
db 0x3F, 0x2E, 0x00, 0x08 ; file 006634 | 68k move.w $8(a6), -(a7)
db 0x2F, 0x3C, 0x44, 0x4C, 0x4F, 0x47 ; file 006638 | 68k move.l #$444c4f47, -(a7)
db 0x4E, 0xBA, 0xFF, 0x3C ; file 00663E | 68k jsr $5514(pc)
db 0x26, 0x40 ; file 006642 | 68k movea.l d0, a3
db 0x20, 0x0B ; file 006644 | 68k move.l a3, d0
db 0x4F, 0xEF, 0x00, 0x0A ; file 006646 | 68k lea.l $a(a7), a7
db 0x67, 0x4E ; file 00664A | 68k beq.b $5632
db 0x2F, 0x0B ; file 00664C | 68k move.l a3, -(a7)
db 0x4E, 0xBA, 0x08, 0xA4 ; file 00664E | 68k jsr $5e8c(pc)
db 0x1E, 0x00 ; file 006652 | 68k move.b d0, d7
db 0x20, 0x53 ; file 006654 | 68k movea.l (a3), a0
db 0x1C, 0x28, 0x00, 0x0A ; file 006656 | 68k move.b $a(a0), d6
db 0x42, 0x28, 0x00, 0x0A ; file 00665A | 68k clr.b $a(a0)
db 0x42, 0x97 ; file 00665E | 68k clr.l (a7)
db 0x3F, 0x2E, 0x00, 0x08 ; file 006660 | 68k move.w $8(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0A ; file 006664 | 68k move.l $a(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x12 ; file 006668 | 68k move.l $12(a6), -(a7)
db 0xA9, 0x7C ; file 00666C | 68k dc.w $a97c
db 0x28, 0x5F ; file 00666E | 68k movea.l (a7)+, a4
db 0x20, 0x0C ; file 006670 | 68k move.l a4, d0
db 0x67, 0x1A ; file 006672 | 68k beq.b $5626
db 0x2F, 0x2E, 0x00, 0x0E ; file 006674 | 68k move.l $e(a6), -(a7)
db 0x2F, 0x0C ; file 006678 | 68k move.l a4, -(a7)
db 0x48, 0x6E, 0xFF, 0xF6 ; file 00667A | 68k pea.l -$a(a6)
db 0x4E, 0xBA, 0xFB, 0x34 ; file 00667E | 68k jsr $514c(pc)
db 0x4A, 0x06 ; file 006682 | 68k tst.b d6
db 0x4F, 0xEF, 0x00, 0x0C ; file 006684 | 68k lea.l $c(a7), a7
db 0x67, 0x04 ; file 006688 | 68k beq.b $5626
db 0x2F, 0x0C ; file 00668A | 68k move.l a4, -(a7)
db 0xA9, 0x15 ; file 00668C | 68k dc.w $a915
db 0x20, 0x53 ; file 00668E | 68k movea.l (a3), a0
db 0x11, 0x46, 0x00, 0x0A ; file 006690 | 68k move.b d6, $a(a0)
db 0x10, 0x07 ; file 006694 | 68k move.b d7, d0
db 0x20, 0x4B ; file 006696 | 68k movea.l a3, a0
db 0xA0, 0x6A ; file 006698 | 68k dc.w $a06a
db 0x20, 0x0C ; file 00669A | 68k move.l a4, d0
db 0x4C, 0xDF, 0x18, 0xC0 ; file 00669C | 68k movem.l (a7)+, d6-d7/a3-a4
db 0x4E, 0x5E ; file 0066A0 | 68k unlk a6
db 0x4E, 0x75 ; file 0066A2 | 68k rts 
