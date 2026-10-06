; verified-role: Native ErrorAlertMessage routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: ErrorAlertMessage; evidence file offset 0x6424.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_error_alert_message:
db 0x4E, 0x56, 0xFD, 0xFE ; file 0063AC | 68k link.w a6, #$fdfe
db 0x48, 0x6D, 0xFD, 0x50 ; file 0063B0 | 68k pea.l -$2b0(a5)
db 0xA8, 0x51 ; file 0063B4 | 68k dc.w $a851
db 0x4A, 0x6E, 0x00, 0x0A ; file 0063B6 | 68k tst.w $a(a6)
db 0x6E, 0x0C ; file 0063BA | 68k bgt.b $5360
db 0x3D, 0x7C, 0x00, 0x01, 0x00, 0x0A ; file 0063BC | 68k move.w #$1, $a(a6)
db 0x3D, 0x7C, 0x01, 0x00, 0x00, 0x08 ; file 0063C2 | 68k move.w #$100, $8(a6)
db 0x48, 0x6E, 0xFF, 0x00 ; file 0063C8 | 68k pea.l -$100(a6)
db 0x3F, 0x2E, 0x00, 0x08 ; file 0063CC | 68k move.w $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0A ; file 0063D0 | 68k move.w $a(a6), -(a7)
db 0x4E, 0xAD, 0x02, 0x92 ; file 0063D4 | 68k jsr $292(a5)
db 0x4A, 0x6E, 0x00, 0x0C ; file 0063D8 | 68k tst.w $c(a6)
db 0x66, 0x1A ; file 0063DC | 68k bne.b $5390
db 0x48, 0x6E, 0xFF, 0x00 ; file 0063DE | 68k pea.l -$100(a6)
db 0x42, 0xA7 ; file 0063E2 | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 0063E4 | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 0063E6 | 68k clr.l -(a7)
db 0xA9, 0x8B ; file 0063E8 | 68k dc.w $a98b
db 0x42, 0xA7 ; file 0063EA | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x01, 0x00 ; file 0063EC | 68k move.w #$100, -(a7)
db 0x4E, 0xBA, 0xFC, 0xCC ; file 0063F0 | 68k jsr $5056(pc)
db 0x5C, 0x8F ; file 0063F4 | 68k addq.l #$6, a7
db 0x60, 0x28 ; file 0063F6 | 68k bra.b $53b8
db 0x30, 0x6E, 0x00, 0x0C ; file 0063F8 | 68k movea.w $c(a6), a0
db 0x2F, 0x08 ; file 0063FC | 68k move.l a0, -(a7)
db 0x48, 0x6E, 0xFE, 0x00 ; file 0063FE | 68k pea.l -$200(a6)
db 0x4E, 0xAD, 0x02, 0x8A ; file 006402 | 68k jsr $28a(a5)
db 0x48, 0x6E, 0xFF, 0x00 ; file 006406 | 68k pea.l -$100(a6)
db 0x48, 0x6E, 0xFE, 0x00 ; file 00640A | 68k pea.l -$200(a6)
db 0x42, 0xA7 ; file 00640E | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 006410 | 68k clr.l -(a7)
db 0xA9, 0x8B ; file 006412 | 68k dc.w $a98b
db 0x42, 0xA7 ; file 006414 | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x01, 0x01 ; file 006416 | 68k move.w #$101, -(a7)
db 0x4E, 0xBA, 0xFC, 0xA2 ; file 00641A | 68k jsr $5056(pc)
db 0x5C, 0x8F ; file 00641E | 68k addq.l #$6, a7
db 0x4E, 0x5E ; file 006420 | 68k unlk a6
db 0x4E, 0x75 ; file 006422 | 68k rts 
