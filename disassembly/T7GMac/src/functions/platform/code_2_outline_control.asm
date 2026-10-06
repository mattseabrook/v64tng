; verified-role: Native OutlineControl routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: OutlineControl; evidence file offset 0x6ff4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_outline_control:
db 0x4E, 0x56, 0xFF, 0xE6 ; file 006F70 | 68k link.w a6, #$ffe6
db 0x48, 0xE7, 0x01, 0x08 ; file 006F74 | 68k movem.l d7/a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 006F78 | 68k movea.l $8(a6), a4
db 0x20, 0x0C ; file 006F7C | 68k move.l a4, d0
db 0x67, 0x6C ; file 006F7E | 68k beq.b $5f84
db 0x20, 0x54 ; file 006F80 | 68k movea.l (a4), a0
db 0x2F, 0x28, 0x00, 0x04 ; file 006F82 | 68k move.l $4(a0), -(a7)
db 0xA8, 0x73 ; file 006F86 | 68k dc.w $a873
db 0x48, 0x6E, 0xFF, 0xE6 ; file 006F88 | 68k pea.l -$1a(a6)
db 0xA8, 0x98 ; file 006F8C | 68k dc.w $a898
db 0xA8, 0x9E ; file 006F8E | 68k dc.w $a89e
db 0x20, 0x54 ; file 006F90 | 68k movea.l (a4), a0
db 0x2D, 0x68, 0x00, 0x08, 0xFF, 0xF8 ; file 006F92 | 68k move.l $8(a0), -$8(a6)
db 0x2D, 0x68, 0x00, 0x0C, 0xFF, 0xFC ; file 006F98 | 68k move.l $c(a0), -$4(a6)
db 0x48, 0x6E, 0xFF, 0xF8 ; file 006F9E | 68k pea.l -$8(a6)
db 0x2F, 0x3C, 0xFF, 0xFC, 0xFF, 0xFC ; file 006FA2 | 68k move.l #$fffcfffc, -(a7)
db 0xA8, 0xA9 ; file 006FA8 | 68k dc.w $a8a9
db 0x3E, 0x2E, 0xFF, 0xFC ; file 006FAA | 68k move.w -$4(a6), d7
db 0x9E, 0x6E, 0xFF, 0xF8 ; file 006FAE | 68k sub.w -$8(a6), d7
db 0x48, 0xC7 ; file 006FB2 | 68k ext.l d7
db 0x8F, 0xFC, 0x00, 0x02 ; file 006FB4 | 68k divs.w #$2, d7
db 0x54, 0x47 ; file 006FB8 | 68k addq.w #$2, d7
db 0x20, 0x54 ; file 006FBA | 68k movea.l (a4), a0
db 0x4A, 0x28, 0x00, 0x11 ; file 006FBC | 68k tst.b $11(a0)
db 0x66, 0x08 ; file 006FC0 | 68k bne.b $5f62
db 0x41, 0xED, 0xFD, 0xAC ; file 006FC2 | 68k lea.l -$254(a5), a0
db 0x20, 0x08 ; file 006FC6 | 68k move.l a0, d0
db 0x60, 0x06 ; file 006FC8 | 68k bra.b $5f68
db 0x41, 0xED, 0xFD, 0xA4 ; file 006FCA | 68k lea.l -$25c(a5), a0
db 0x20, 0x08 ; file 006FCE | 68k move.l a0, d0
db 0x2F, 0x00 ; file 006FD0 | 68k move.l d0, -(a7)
db 0xA8, 0x9D ; file 006FD2 | 68k dc.w $a89d
db 0x2F, 0x3C, 0x00, 0x03, 0x00, 0x03 ; file 006FD4 | 68k move.l #$30003, -(a7)
db 0xA8, 0x9B ; file 006FDA | 68k dc.w $a89b
db 0x48, 0x6E, 0xFF, 0xF8 ; file 006FDC | 68k pea.l -$8(a6)
db 0x3F, 0x07 ; file 006FE0 | 68k move.w d7, -(a7)
db 0x3F, 0x07 ; file 006FE2 | 68k move.w d7, -(a7)
db 0xA8, 0xB0 ; file 006FE4 | 68k dc.w $a8b0
db 0x48, 0x6E, 0xFF, 0xE6 ; file 006FE6 | 68k pea.l -$1a(a6)
db 0xA8, 0x99 ; file 006FEA | 68k dc.w $a899
db 0x4C, 0xDF, 0x10, 0x80 ; file 006FEC | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 006FF0 | 68k unlk a6
db 0x4E, 0x75 ; file 006FF2 | 68k rts 
