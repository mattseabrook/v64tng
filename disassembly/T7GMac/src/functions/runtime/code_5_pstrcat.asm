; verified-role: Native pstrcat routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: pstrcat; evidence file offset 0xbcc0.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_pstrcat:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BC8A | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x08 ; file 00BC8E | 68k movem.l d7/a4, -(a7)
db 0x7E, 0x00 ; file 00BC92 | 68k moveq #$0, d7
db 0x28, 0x6E, 0x00, 0x0C ; file 00BC94 | 68k movea.l $c(a6), a4
db 0x60, 0x16 ; file 00BC98 | 68k bra.b $454a
db 0x52, 0x47 ; file 00BC9A | 68k addq.w #$1, d7
db 0x20, 0x6E, 0x00, 0x08 ; file 00BC9C | 68k movea.l $8(a6), a0
db 0x52, 0x10 ; file 00BCA0 | 68k addq.b #$1, (a0)
db 0x10, 0x10 ; file 00BCA2 | 68k move.b (a0), d0
db 0x49, 0xC0 ; file 00BCA4 | 68k extb.l d0
db 0x1D, 0xB6, 0x71, 0x25, 0x00, 0x0C, 0x09, 0x25, 0x00, 0x08 ; file 00BCA6 | 68k move.b ([$c, a6], d7.w), ([$8, a6], d0.l)
db 0x10, 0x14 ; file 00BCB0 | 68k move.b (a4), d0
db 0x49, 0xC0 ; file 00BCB2 | 68k extb.l d0
db 0xB0, 0x47 ; file 00BCB4 | 68k cmp.w d7, d0
db 0x6E, 0xE2 ; file 00BCB6 | 68k bgt.b $4534
db 0x4C, 0xDF, 0x10, 0x80 ; file 00BCB8 | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 00BCBC | 68k unlk a6
db 0x4E, 0x75 ; file 00BCBE | 68k rts 
