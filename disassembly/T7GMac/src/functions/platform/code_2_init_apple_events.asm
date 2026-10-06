; verified-role: Native InitAppleEvents routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: InitAppleEvents; evidence file offset 0x4f02.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_init_apple_events:
db 0x4E, 0x56, 0xFF, 0xFC ; file 004E64 | 68k link.w a6, #$fffc
db 0x48, 0xE7, 0x03, 0x08 ; file 004E68 | 68k movem.l d6-d7/a4, -(a7)
db 0x42, 0x67 ; file 004E6C | 68k clr.w -(a7)
db 0x2F, 0x3C, 0x70, 0x70, 0x63, 0x20 ; file 004E6E | 68k move.l #$70706320, -(a7)
db 0x48, 0x6E, 0xFF, 0xFC ; file 004E74 | 68k pea.l -$4(a6)
db 0x4E, 0xAD, 0x02, 0x3A ; file 004E78 | 68k jsr $23a(a5)
db 0x4A, 0x5F ; file 004E7C | 68k tst.w (a7)+
db 0x67, 0x04 ; file 004E7E | 68k beq.b $3e1c
db 0x70, 0x00 ; file 004E80 | 68k moveq #$0, d0
db 0x60, 0x0A ; file 004E82 | 68k bra.b $3e26
db 0x4A, 0xAE, 0xFF, 0xFC ; file 004E84 | 68k tst.l -$4(a6)
db 0x56, 0xC0 ; file 004E88 | 68k sne.b d0
db 0x44, 0x00 ; file 004E8A | 68k neg.b d0
db 0x49, 0xC0 ; file 004E8C | 68k extb.l d0
db 0x1B, 0x40, 0xDB, 0xCB ; file 004E8E | 68k move.b d0, -$2435(a5)
db 0x42, 0x67 ; file 004E92 | 68k clr.w -(a7)
db 0x2F, 0x3C, 0x65, 0x76, 0x6E, 0x74 ; file 004E94 | 68k move.l #$65766e74, -(a7)
db 0x48, 0x6E, 0xFF, 0xFC ; file 004E9A | 68k pea.l -$4(a6)
db 0x4E, 0xAD, 0x02, 0x3A ; file 004E9E | 68k jsr $23a(a5)
db 0x4A, 0x5F ; file 004EA2 | 68k tst.w (a7)+
db 0x67, 0x04 ; file 004EA4 | 68k beq.b $3e42
db 0x70, 0x00 ; file 004EA6 | 68k moveq #$0, d0
db 0x60, 0x0A ; file 004EA8 | 68k bra.b $3e4c
db 0x4A, 0xAE, 0xFF, 0xFC ; file 004EAA | 68k tst.l -$4(a6)
db 0x56, 0xC0 ; file 004EAE | 68k sne.b d0
db 0x44, 0x00 ; file 004EB0 | 68k neg.b d0
db 0x49, 0xC0 ; file 004EB2 | 68k extb.l d0
db 0x1B, 0x40, 0xDB, 0xCA ; file 004EB4 | 68k move.b d0, -$2436(a5)
db 0x4A, 0x00 ; file 004EB8 | 68k tst.b d0
db 0x67, 0x3C ; file 004EBA | 68k beq.b $3e90
db 0x7E, 0x00 ; file 004EBC | 68k moveq #$0, d7
db 0x49, 0xED, 0xDB, 0x9A ; file 004EBE | 68k lea.l -$2466(a5), a4
db 0x60, 0x2E ; file 004EC2 | 68k bra.b $3e8a
db 0x42, 0x67 ; file 004EC4 | 68k clr.w -(a7)
db 0x2F, 0x14 ; file 004EC6 | 68k move.l (a4), -(a7)
db 0x2F, 0x2C, 0x00, 0x04 ; file 004EC8 | 68k move.l $4(a4), -(a7)
db 0x2F, 0x2C, 0x00, 0x08 ; file 004ECC | 68k move.l $8(a4), -(a7)
db 0x42, 0xA7 ; file 004ED0 | 68k clr.l -(a7)
db 0x42, 0x27 ; file 004ED2 | 68k clr.b -(a7)
db 0x30, 0x3C, 0x09, 0x1F ; file 004ED4 | 68k move.w #$91f, d0
db 0xA8, 0x16 ; file 004ED8 | 68k dc.w $a816
db 0x3C, 0x1F ; file 004EDA | 68k move.w (a7)+, d6
db 0x4A, 0x46 ; file 004EDC | 68k tst.w d6
db 0x67, 0x0C ; file 004EDE | 68k beq.b $3e84
db 0x42, 0x67 ; file 004EE0 | 68k clr.w -(a7)
db 0x3F, 0x3C, 0x00, 0x81 ; file 004EE2 | 68k move.w #$81, -(a7)
db 0x42, 0xA7 ; file 004EE6 | 68k clr.l -(a7)
db 0xA9, 0x85 ; file 004EE8 | 68k dc.w $a985
db 0x60, 0x0C ; file 004EEA | 68k bra.b $3e90
db 0x52, 0x47 ; file 004EEC | 68k addq.w #$1, d7
db 0x49, 0xEC, 0x00, 0x0C ; file 004EEE | 68k lea.l $c(a4), a4
db 0x0C, 0x47, 0x00, 0x04 ; file 004EF2 | 68k cmpi.w #$4, d7
db 0x65, 0xCC ; file 004EF6 | 68k bcs.b $3e5c
db 0x4C, 0xEE, 0x10, 0xC0, 0xFF, 0xF0 ; file 004EF8 | 68k movem.l -$10(a6), d6-d7/a4
db 0x4E, 0x5E ; file 004EFE | 68k unlk a6
db 0x4E, 0x75 ; file 004F00 | 68k rts 
