; verified-role: Native EnableOrDisableItem routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: EnableOrDisableItem; evidence file offset 0x5f9c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_enable_or_disable_item:
db 0x4E, 0x56, 0x00, 0x00 ; file 005F78 | 68k link.w a6, #$0
db 0x4A, 0x2E, 0x00, 0x0E ; file 005F7C | 68k tst.b $e(a6)
db 0x67, 0x0C ; file 005F80 | 68k beq.b $4f26
db 0x2F, 0x2E, 0x00, 0x08 ; file 005F82 | 68k move.l $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0C ; file 005F86 | 68k move.w $c(a6), -(a7)
db 0xA9, 0x39 ; file 005F8A | 68k dc.w $a939
db 0x60, 0x0A ; file 005F8C | 68k bra.b $4f30
db 0x2F, 0x2E, 0x00, 0x08 ; file 005F8E | 68k move.l $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0C ; file 005F92 | 68k move.w $c(a6), -(a7)
db 0xA9, 0x3A ; file 005F96 | 68k dc.w $a93a
db 0x4E, 0x5E ; file 005F98 | 68k unlk a6
db 0x4E, 0x75 ; file 005F9A | 68k rts 
