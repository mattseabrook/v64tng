; verified-role: Native CountSavedGames routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: CountSavedGames; evidence file offset 0xb65c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_count_saved_games:
db 0x4E, 0x56, 0xFE, 0xF8 ; file 00B5D8 | 68k link.w a6, #$fef8
db 0x48, 0xE7, 0x03, 0x38 ; file 00B5DC | 68k movem.l d6-d7/a2-a4, -(a7)
db 0x7E, 0x00 ; file 00B5E0 | 68k moveq #$0, d7
db 0x7C, 0x00 ; file 00B5E2 | 68k moveq #$0, d6
db 0x49, 0xED, 0xF7, 0xE4 ; file 00B5E4 | 68k lea.l -$81c(a5), a4
db 0x60, 0x62 ; file 00B5E8 | 68k bra.b $3ee6
db 0x26, 0x4C ; file 00B5EA | 68k movea.l a4, a3
db 0x42, 0x13 ; file 00B5EC | 68k clr.b (a3)
db 0x42, 0x35, 0x61, 0x25, 0xF7, 0xA0 ; file 00B5EE | 68k clr.b ([$f7a0, a5], d6.w)
db 0x42, 0xA7 ; file 00B5F4 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x54, 0x37, 0x53, 0x47 ; file 00B5F6 | 68k move.l #$54375347, -(a7)
db 0x30, 0x06 ; file 00B5FC | 68k move.w d6, d0
db 0x06, 0x40, 0x03, 0xE8 ; file 00B5FE | 68k addi.w #$3e8, d0
db 0x3F, 0x00 ; file 00B602 | 68k move.w d0, -(a7)
db 0xA9, 0xA0 ; file 00B604 | 68k dc.w $a9a0
db 0x24, 0x5F ; file 00B606 | 68k movea.l (a7)+, a2
db 0x20, 0x0A ; file 00B608 | 68k move.l a2, d0
db 0x66, 0x24 ; file 00B60A | 68k bne.b $3eca
db 0x16, 0xBC, 0x00, 0x35 ; file 00B60C | 68k move.b #$35, (a3)
db 0x19, 0x7C, 0x00, 0x3D, 0x00, 0x01 ; file 00B610 | 68k move.b #$3d, $1(a4)
db 0x19, 0x7C, 0x00, 0x40, 0x00, 0x02 ; file 00B616 | 68k move.b #$40, $2(a4)
db 0x19, 0x7C, 0x00, 0x44, 0x00, 0x03 ; file 00B61C | 68k move.b #$44, $3(a4)
db 0x19, 0x7C, 0x00, 0x49, 0x00, 0x04 ; file 00B622 | 68k move.b #$49, $4(a4)
db 0x19, 0x7C, 0x00, 0xF4, 0x00, 0x05 ; file 00B628 | 68k move.b #$f4, $5(a4)
db 0x60, 0x16 ; file 00B62E | 68k bra.b $3ee0
db 0x1B, 0xBC, 0x00, 0x01, 0x61, 0x25, 0xF7, 0xA0 ; file 00B630 | 68k move.b #$1, ([$f7a0, a5], d6.w)
db 0x52, 0x47 ; file 00B638 | 68k addq.w #$1, d7
db 0x70, 0x0E ; file 00B63A | 68k moveq #$e, d0
db 0x22, 0x4C ; file 00B63C | 68k movea.l a4, a1
db 0x20, 0x52 ; file 00B63E | 68k movea.l (a2), a0
db 0xA0, 0x2E ; file 00B640 | 68k dc.w $a02e
db 0x2F, 0x0A ; file 00B642 | 68k move.l a2, -(a7)
db 0xA9, 0xA3 ; file 00B644 | 68k dc.w $a9a3
db 0x52, 0x46 ; file 00B646 | 68k addq.w #$1, d6
db 0x49, 0xEC, 0x00, 0x0F ; file 00B648 | 68k lea.l $f(a4), a4
db 0x0C, 0x46, 0x00, 0x0A ; file 00B64C | 68k cmpi.w #$a, d6
db 0x6D, 0x98 ; file 00B650 | 68k blt.b $3e84
db 0x30, 0x07 ; file 00B652 | 68k move.w d7, d0
db 0x4C, 0xDF, 0x1C, 0xC0 ; file 00B654 | 68k movem.l (a7)+, d6-d7/a2-a4
db 0x4E, 0x5E ; file 00B658 | 68k unlk a6
db 0x4E, 0x75 ; file 00B65A | 68k rts 
