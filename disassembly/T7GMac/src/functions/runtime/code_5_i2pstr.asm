; verified-role: Native i2pstr routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: i2pstr; evidence file offset 0xbc80.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_i2pstr:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BC68 | 68k link.w a6, #$0
db 0x20, 0x6E, 0x00, 0x08 ; file 00BC6C | 68k movea.l $8(a6), a0
db 0x42, 0x10 ; file 00BC70 | 68k clr.b (a0)
db 0x3F, 0x2E, 0x00, 0x0C ; file 00BC72 | 68k move.w $c(a6), -(a7)
db 0x2F, 0x08 ; file 00BC76 | 68k move.l a0, -(a7)
db 0x4E, 0xBA, 0xFF, 0x3E ; file 00BC78 | 68k jsr $4452(pc)
db 0x4E, 0x5E ; file 00BC7C | 68k unlk a6
db 0x4E, 0x75 ; file 00BC7E | 68k rts 
