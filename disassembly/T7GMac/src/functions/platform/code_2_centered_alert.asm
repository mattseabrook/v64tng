; recovered-symbol-candidate: Native CenteredAlert routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: CenteredAlert; evidence file offset 0x6164.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_centered_alert:
db 0x4E, 0x56, 0xFF, 0xEE ; file 0060BE | 68k link.w a6, #$ffee
db 0x48, 0xE7, 0x03, 0x18 ; file 0060C2 | 68k movem.l d6-d7/a3-a4, -(a7)
db 0x48, 0x6E, 0xFF, 0xF6 ; file 0060C6 | 68k pea.l -$a(a6)
db 0x3F, 0x2E, 0x00, 0x08 ; file 0060CA | 68k move.w $8(a6), -(a7)
db 0x2F, 0x3C, 0x41, 0x4C, 0x52, 0x54 ; file 0060CE | 68k move.l #$414c5254, -(a7)
db 0x4E, 0xBA, 0x04, 0xA6 ; file 0060D4 | 68k jsr $5514(pc)
db 0x28, 0x40 ; file 0060D8 | 68k movea.l d0, a4
db 0x4A, 0x6E, 0xFF, 0xF6 ; file 0060DA | 68k tst.w -$a(a6)
db 0x4F, 0xEF, 0x00, 0x0A ; file 0060DE | 68k lea.l $a(a7), a7
db 0x67, 0x06 ; file 0060E2 | 68k beq.b $5082
db 0x30, 0x2E, 0xFF, 0xF6 ; file 0060E4 | 68k move.w -$a(a6), d0
db 0x60, 0x72 ; file 0060E8 | 68k bra.b $50f4
db 0x2F, 0x0C ; file 0060EA | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x0E, 0x06 ; file 0060EC | 68k jsr $5e8c(pc)
db 0x1E, 0x00 ; file 0060F0 | 68k move.b d0, d7
db 0x20, 0x54 ; file 0060F2 | 68k movea.l (a4), a0
db 0x2D, 0x50, 0xFF, 0xF8 ; file 0060F4 | 68k move.l (a0), -$8(a6)
db 0x2D, 0x68, 0x00, 0x04, 0xFF, 0xFC ; file 0060F8 | 68k move.l $4(a0), -$4(a6)
db 0x42, 0x97 ; file 0060FE | 68k clr.l (a7)
db 0x42, 0xA7 ; file 006100 | 68k clr.l -(a7)
db 0x48, 0x6E, 0xFF, 0xF8 ; file 006102 | 68k pea.l -$8(a6)
db 0x42, 0xA7 ; file 006106 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x00, 0x01, 0x00, 0x00 ; file 006108 | 68k move.l #$10000, -(a7)
db 0x42, 0xA7 ; file 00610E | 68k clr.l -(a7)
db 0x42, 0x27 ; file 006110 | 68k clr.b -(a7)
db 0x42, 0xA7 ; file 006112 | 68k clr.l -(a7)
db 0xA9, 0x13 ; file 006114 | 68k dc.w $a913
db 0x26, 0x5F ; file 006116 | 68k movea.l (a7)+, a3
db 0x20, 0x0B ; file 006118 | 68k move.l a3, d0
db 0x67, 0x20 ; file 00611A | 68k beq.b $50d4
db 0x2F, 0x2E, 0x00, 0x0A ; file 00611C | 68k move.l $a(a6), -(a7)
db 0x2F, 0x0B ; file 006120 | 68k move.l a3, -(a7)
db 0x48, 0x6E, 0xFF, 0xEE ; file 006122 | 68k pea.l -$12(a6)
db 0x4E, 0xBA, 0x00, 0x8C ; file 006126 | 68k jsr $514c(pc)
db 0x20, 0x54 ; file 00612A | 68k movea.l (a4), a0
db 0x20, 0xAE, 0xFF, 0xEE ; file 00612C | 68k move.l -$12(a6), (a0)
db 0x21, 0x6E, 0xFF, 0xF2, 0x00, 0x04 ; file 006130 | 68k move.l -$e(a6), $4(a0)
db 0x2E, 0x8B ; file 006136 | 68k move.l a3, (a7)
db 0xA9, 0x14 ; file 006138 | 68k dc.w $a914
db 0x50, 0x8F ; file 00613A | 68k addq.l #$8, a7
db 0x42, 0x67 ; file 00613C | 68k clr.w -(a7)
db 0x3F, 0x2E, 0x00, 0x08 ; file 00613E | 68k move.w $8(a6), -(a7)
db 0x42, 0xA7 ; file 006142 | 68k clr.l -(a7)
db 0xA9, 0x85 ; file 006144 | 68k dc.w $a985
db 0x3C, 0x1F ; file 006146 | 68k move.w (a7)+, d6
db 0x20, 0x54 ; file 006148 | 68k movea.l (a4), a0
db 0x20, 0xAE, 0xFF, 0xF8 ; file 00614A | 68k move.l -$8(a6), (a0)
db 0x21, 0x6E, 0xFF, 0xFC, 0x00, 0x04 ; file 00614E | 68k move.l -$4(a6), $4(a0)
db 0x10, 0x07 ; file 006154 | 68k move.b d7, d0
db 0x20, 0x4C ; file 006156 | 68k movea.l a4, a0
db 0xA0, 0x6A ; file 006158 | 68k dc.w $a06a
db 0x30, 0x06 ; file 00615A | 68k move.w d6, d0
db 0x4C, 0xDF, 0x18, 0xC0 ; file 00615C | 68k movem.l (a7)+, d6-d7/a3-a4
db 0x4E, 0x5E ; file 006160 | 68k unlk a6
db 0x4E, 0x75 ; file 006162 | 68k rts 
