; verified-role: Native GetMaxWindow routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetMaxWindow; evidence file offset 0x6a9e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_max_window:
db 0x4E, 0x56, 0x00, 0x00 ; file 006A7A | 68k link.w a6, #$0
db 0x1F, 0x2E, 0x00, 0x16 ; file 006A7E | 68k move.b $16(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x12 ; file 006A82 | 68k move.l $12(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0E ; file 006A86 | 68k move.l $e(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0A ; file 006A8A | 68k move.l $a(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x08 ; file 006A8E | 68k move.w $8(a6), -(a7)
db 0x48, 0x6D, 0x00, 0xCA ; file 006A92 | 68k pea.l $ca(a5)
db 0x4E, 0xBA, 0xFE, 0xCC ; file 006A96 | 68k jsr $58fc(pc)
db 0x4E, 0x5E ; file 006A9A | 68k unlk a6
db 0x4E, 0x75 ; file 006A9C | 68k rts 
