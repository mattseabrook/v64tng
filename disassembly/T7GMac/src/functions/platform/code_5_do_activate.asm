; recovered-symbol-candidate: Native DoActivate routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoActivate; evidence file offset 0x7a2a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_do_activate:
db 0x4E, 0x56, 0x00, 0x00 ; file 0079EE | 68k link.w a6, #$0
db 0x2F, 0x0C ; file 0079F2 | 68k move.l a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 0079F4 | 68k movea.l $8(a6), a4
db 0x4E, 0xAD, 0x00, 0x92 ; file 0079F8 | 68k jsr $92(a5)
db 0x2F, 0x0C ; file 0079FC | 68k move.l a4, -(a7)
db 0x4E, 0xAD, 0x00, 0xBA ; file 0079FE | 68k jsr $ba(a5)
db 0x4A, 0x00 ; file 007A02 | 68k tst.b d0
db 0x58, 0x8F ; file 007A04 | 68k addq.l #$4, a7
db 0x67, 0x1C ; file 007A06 | 68k beq.b $2be
db 0x2F, 0x0C ; file 007A08 | 68k move.l a4, -(a7)
db 0xA8, 0x73 ; file 007A0A | 68k dc.w $a873
db 0x42, 0xA7 ; file 007A0C | 68k clr.l -(a7)
db 0x2F, 0x0C ; file 007A0E | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x44, 0xDA ; file 007A10 | 68k jsr $4786(pc)
db 0x1E, 0xBC, 0x00, 0x01 ; file 007A14 | 68k move.b #$1, (a7)
db 0x2F, 0x0C ; file 007A18 | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x44, 0xEA ; file 007A1A | 68k jsr $47a0(pc)
db 0x42, 0x97 ; file 007A1E | 68k clr.l (a7)
db 0xA8, 0x78 ; file 007A20 | 68k dc.w $a878
db 0x50, 0x8F ; file 007A22 | 68k addq.l #$8, a7
db 0x28, 0x5F ; file 007A24 | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 007A26 | 68k unlk a6
db 0x4E, 0x75 ; file 007A28 | 68k rts 
