; verified-role: Native appendi2cstr routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: appendi2cstr; evidence file offset 0xbba8.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_appendi2cstr:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BB88 | 68k link.w a6, #$0
db 0x3F, 0x2E, 0x00, 0x0C ; file 00BB8C | 68k move.w $c(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 00BB90 | 68k move.l $8(a6), -(a7)
db 0x4E, 0xAD, 0x01, 0x5A ; file 00BB94 | 68k jsr $15a(a5)
db 0x58, 0x8F ; file 00BB98 | 68k addq.l #$4, a7
db 0x48, 0x76, 0x01, 0x25, 0x00, 0x08 ; file 00BB9A | 68k pea.l ([$8, a6], d0.w)
db 0x4E, 0xBA, 0x00, 0x70 ; file 00BBA0 | 68k jsr $44ac(pc)
db 0x4E, 0x5E ; file 00BBA4 | 68k unlk a6
db 0x4E, 0x75 ; file 00BBA6 | 68k rts 
